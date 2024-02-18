(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708280334)
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
      (lambda _$args173306_
        (apply make-instance gx#module-import::t _$args173306_)))
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
      (lambda _$args173303_
        (apply make-instance gx#module-export::t _$args173303_)))
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
      (lambda _$args173300_
        (apply make-instance gx#import-set::t _$args173300_)))
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
      (lambda _$args173297_
        (apply make-instance gx#export-set::t _$args173297_)))
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
      (lambda _$args173294_
        (apply make-instance gx#import-expander::t _$args173294_)))
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
      (lambda _$args173291_
        (apply make-instance gx#export-expander::t _$args173291_)))
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
      (lambda _$args173288_
        (apply make-instance gx#import-export-expander::t _$args173288_)))
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
      (lambda (_path173285_ _fun173286_)
        (call-with-input-file
         (cons 'path: (cons _path173285_ gx#source-file-settings))
         _fun173286_)))
    (define gx#module-context:::init!
      (lambda (_self173279_ _id173280_ _super173281_ _ns173282_ _path173283_)
        (if (##fx< '11 (##structure-length _self173279_))
            (begin
              (##unchecked-structure-set!
               _self173279_
               _id173280_
               '1
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               (make-hash-table-eq)
               '2
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               _super173281_
               '3
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               '#f
               '4
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               '#f
               '5
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               _ns173282_
               '6
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               _path173283_
               '7
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               '()
               '8
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               '()
               '9
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               '#f
               '10
               (##structure-type _self173279_)
               '#f)
              (##unchecked-structure-set!
               _self173279_
               '#f
               '11
               (##structure-type _self173279_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self173279_
                   '11
                   (##vector-length _self173279_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self173123_ _ctx173124_ _root173125_)
        (let ((_super173133_
               (let ((_$e173127_ _root173125_))
                 (if _$e173127_
                     _$e173127_
                     (let ((_$e173130_ (gx#core-context-root__0)))
                       (if _$e173130_
                           _$e173130_
                           (let ((__obj177415
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor177416
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj177415
                                     ':init!)))
                               (if __constructor177416
                                   (__constructor177416 __obj177415)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj177415)))))))
          (if _ctx173124_
              (let ((_id173136_
                     (##structure-ref
                      _ctx173124_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path173137_
                     (##structure-ref _ctx173124_ '7 gx#module-context::t '#f))
                    (_in173138_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx173124_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e173139_
                     (make-promise (lambda () (gx#eval-module _ctx173124_)))))
                (if (##fx< '8 (##structure-length _self173123_))
                    (begin
                      (##unchecked-structure-set!
                       _self173123_
                       _id173136_
                       '1
                       (##structure-type _self173123_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173123_
                       (make-hash-table-eq 'size: (length _in173138_))
                       '2
                       (##structure-type _self173123_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173123_
                       _super173133_
                       '3
                       (##structure-type _self173123_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173123_
                       '#f
                       '4
                       (##structure-type _self173123_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173123_
                       '#f
                       '5
                       (##structure-type _self173123_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173123_
                       _path173137_
                       '6
                       (##structure-type _self173123_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173123_
                       _in173138_
                       '7
                       (##structure-type _self173123_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173123_
                       _e173139_
                       '8
                       (##structure-type _self173123_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self173123_
                           '8
                           (##vector-length _self173123_)))
                (for-each
                 (lambda (_g173140173142_)
                   (gx#core-bind-weak-import!__% _g173140173142_ _self173123_))
                 _in173138_))
              (if (##fx< '8 (##structure-length _self173123_))
                  (begin
                    (##unchecked-structure-set!
                     _self173123_
                     '#f
                     '1
                     (##structure-type _self173123_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173123_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self173123_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173123_
                     _super173133_
                     '3
                     (##structure-type _self173123_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173123_
                     '#f
                     '4
                     (##structure-type _self173123_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173123_
                     '#f
                     '5
                     (##structure-type _self173123_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173123_
                     '#f
                     '6
                     (##structure-type _self173123_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173123_
                     '()
                     '7
                     (##structure-type _self173123_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173123_
                     '#f
                     '8
                     (##structure-type _self173123_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self173123_
                         '8
                         (##vector-length _self173123_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self173148_ _ctx173149_)
        (let ((_root173151_ '#f))
          (gx#prelude-context:::init!__%
           _self173148_
           _ctx173149_
           _root173151_))))
    (define gx#prelude-context:::init!
      (lambda _g177422_
        (let ((_g177421_ (##length _g177422_)))
          (cond ((##fx= _g177421_ 2)
                 (apply (lambda (_self173148_ _ctx173149_)
                          (gx#prelude-context:::init!__0
                           _self173148_
                           _ctx173149_))
                        _g177422_))
                ((##fx= _g177421_ 3)
                 (apply (lambda (_self173153_ _ctx173154_ _root173155_)
                          (gx#prelude-context:::init!__%
                           _self173153_
                           _ctx173154_
                           _root173155_))
                        _g177422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g177422_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self172997_ _e172998_)
        (if (##fx< '3 (##structure-length _self172997_))
            (begin
              (##unchecked-structure-set!
               _self172997_
               _e172998_
               '1
               (##structure-type _self172997_)
               '#f)
              (##unchecked-structure-set!
               _self172997_
               (gx#current-expander-context)
               '2
               (##structure-type _self172997_)
               '#f)
              (##unchecked-structure-set!
               _self172997_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self172997_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172997_
                   '3
                   (##vector-length _self172997_)))))
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
      (lambda (_g172623172626_ _g172624172628_)
        (gx#core-apply-user-expander__%
         _g172623172626_
         _g172624172628_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g172494172497_ _g172495172499_)
        (gx#core-apply-user-expander__%
         _g172494172497_
         _g172495172499_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx172365_)
        (let* ((_path172367_
                (##structure-ref _ctx172365_ '7 gx#module-context::t '#f))
               (_path172369_
                (if (pair? _path172367_) (last _path172367_) _path172367_)))
          (if (string? _path172369_) _path172369_ '#f))))
    (define gx#import-module__%
      (lambda (_path172341_ _reload?172342_ _eval?172343_)
        (let ((_ctx172345_
               ((gx#current-expander-module-import)
                _path172341_
                _reload?172342_)))
          (if (and _ctx172345_ _eval?172343_)
              (gx#eval-module _ctx172345_)
              '#!void)
          _ctx172345_)))
    (define gx#import-module__0
      (lambda (_path172350_)
        (let* ((_reload?172352_ '#f) (_eval?172354_ '#f))
          (gx#import-module__% _path172350_ _reload?172352_ _eval?172354_))))
    (define gx#import-module__1
      (lambda (_path172356_ _reload?172357_)
        (let ((_eval?172359_ '#f))
          (gx#import-module__% _path172356_ _reload?172357_ _eval?172359_))))
    (define gx#import-module
      (lambda _g177424_
        (let ((_g177423_ (##length _g177424_)))
          (cond ((##fx= _g177423_ 1)
                 (apply (lambda (_path172350_)
                          (gx#import-module__0 _path172350_))
                        _g177424_))
                ((##fx= _g177423_ 2)
                 (apply (lambda (_path172356_ _reload?172357_)
                          (gx#import-module__1 _path172356_ _reload?172357_))
                        _g177424_))
                ((##fx= _g177423_ 3)
                 (apply (lambda (_path172361_ _reload?172362_ _eval?172363_)
                          (gx#import-module__%
                           _path172361_
                           _reload?172362_
                           _eval?172363_))
                        _g177424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g177424_))))))
    (define gx#eval-module
      (lambda (_mod172338_) ((gx#current-expander-module-eval) _mod172338_)))
    (define gx#core-eval-module
      (lambda (_obj172323_)
        (letrec ((_force-e172325_
                  (lambda (_getf172334_ _e172335_)
                    (call-with-parameters
                     (lambda () (force (_getf172334_ _e172335_)))
                     gx#current-expander-context
                     _e172335_
                     gx#current-expander-phi
                     '0))))
          (let _recur172327_ ((_e172329_ _obj172323_))
            (if (##structure-instance-of? _e172329_ 'gx#module-context::t)
                (begin
                  (let ((_$e172331_ (gx#core-context-prelude__% _e172329_)))
                    (if _$e172331_ (_recur172327_ _$e172331_) '#!void))
                  (_force-e172325_ gx#module-context-e _e172329_))
                (if (##structure-instance-of? _e172329_ 'gx#prelude-context::t)
                    (_force-e172325_ gx#prelude-context-e _e172329_)
                    (if (gx#stx-string? _e172329_)
                        (_recur172327_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e172329_)))
                        (if (gx#core-library-module-path? _e172329_)
                            (_recur172327_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e172329_)))
                            (error '"Cannot eval module" _obj172323_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx172306_)
        (let _lp172308_ ((_e172310_ _ctx172306_))
          (if (or (##structure-instance-of? _e172310_ 'gx#module-context::t)
                  (##structure-instance-of? _e172310_ 'gx#local-context::t))
              (_lp172308_
               (##unchecked-structure-ref _e172310_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e172310_ 'gx#prelude-context::t)
                  _e172310_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx172319_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx172319_))))
    (define gx#core-context-prelude
      (lambda _g177426_
        (let ((_g177425_ (##length _g177426_)))
          (cond ((##fx= _g177425_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g177426_))
                ((##fx= _g177425_ 1)
                 (apply (lambda (_ctx172321_)
                          (gx#core-context-prelude__% _ctx172321_))
                        _g177426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g177426_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx172296_)
        (let* ((_ht172298_ (gx#current-expander-module-registry))
               (_$e172300_ (hash-get _ht172298_ _ctx172296_)))
          (if _$e172300_
              (values _$e172300_)
              (let ((_pre172303_
                     (let ((__obj177417
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
                       (gx#prelude-context:::init! __obj177417 _ctx172296_)
                       __obj177417)))
                (hash-put! _ht172298_ _ctx172296_ _pre172303_)
                _pre172303_)))))
    (define gx#core-import-module__%
      (lambda (_rpath172177_ _reload?172178_)
        (letrec ((_import-source172180_
                  (lambda (_path172265_)
                    (if (member _path172265_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path172265_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g177427_ (gx#core-read-module _path172265_)))
                         (begin
                           (let ((_g177428_
                                  (if (##values? _g177427_)
                                      (##vector-length _g177427_)
                                      1)))
                             (if (not (##fx= _g177428_ 4))
                                 (error "Context expects 4 values" _g177428_)))
                           (let ((_pre172268_ (##vector-ref _g177427_ 0))
                                 (_id172269_ (##vector-ref _g177427_ 1))
                                 (_ns172270_ (##vector-ref _g177427_ 2))
                                 (_body172271_ (##vector-ref _g177427_ 3)))
                             (let* ((_prelude172276_
                                     (if (##structure-instance-of?
                                          _pre172268_
                                          'gx#prelude-context::t)
                                         _pre172268_
                                         (if (##structure-instance-of?
                                              _pre172268_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre172268_)
                                             (if (string? _pre172268_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre172268_))
                                                 (if (not _pre172268_)
                                                     (let ((_$e172273_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e172273_
                                                           _$e172273_
                                                           (let ((__obj177418
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
                     (gx#prelude-context:::init! __obj177418 '#f)
                     __obj177418)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath172177_
                                                            _pre172268_))))))
                                    (_ctx172278_
                                     (let ((__obj177419
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
                                        __obj177419
                                        _id172269_
                                        _prelude172276_
                                        _ns172270_
                                        _path172265_)
                                       __obj177419))
                                    (_body172280_
                                     (gx#core-expand-module-begin
                                      _body172271_
                                      _ctx172278_))
                                    (_body172282_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body172280_)
                                      _path172265_
                                      _ctx172278_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx172278_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body172282_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx172278_
                                _body172282_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path172265_
                                _ctx172278_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id172269_
                                _ctx172278_)
                               _ctx172278_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path172265_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule172181_
                  (lambda (_rpath172193_)
                    (let* ((_rpath172194172201_ _rpath172193_)
                           (_E172196172205_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath172194172201_)))
                           (_K172197172253_
                            (lambda (_refs172208_ _origin172209_)
                              (let ((_ctx172211_
                                     (if _origin172209_
                                         (gx#core-import-module__%
                                          _origin172209_
                                          _reload?172178_)
                                         (gx#current-expander-context))))
                                (let _lp172213_ ((_rest172215_ _refs172208_)
                                                 (_ctx172216_ _ctx172211_))
                                  (let* ((_rest172217172225_ _rest172215_)
                                         (_else172219172233_
                                          (lambda () _ctx172216_))
                                         (_K172221172241_
                                          (lambda (_rest172236_ _id172237_)
                                            (let ((_bind172239_
                                                   (gx#resolve-identifier__%
                                                    _id172237_
                                                    '0
                                                    _ctx172216_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind172239_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind172239_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp172213_
                                                   _rest172236_
                                                   (##unchecked-structure-ref
                                                    _bind172239_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath172193_
                                                         _id172237_
                                                         _bind172239_))))))
                                    (if (##pair? _rest172217172225_)
                                        (let ((_hd172222172244_
                                               (##car _rest172217172225_))
                                              (_tl172223172246_
                                               (##cdr _rest172217172225_)))
                                          (let* ((_id172249_ _hd172222172244_)
                                                 (_rest172251_
                                                  _tl172223172246_))
                                            (_K172221172241_
                                             _rest172251_
                                             _id172249_)))
                                        (_else172219172233_))))))))
                      (if (##pair? _rpath172194172201_)
                          (let ((_hd172198172256_ (##car _rpath172194172201_))
                                (_tl172199172258_ (##cdr _rpath172194172201_)))
                            (let* ((_origin172261_ _hd172198172256_)
                                   (_refs172263_ _tl172199172258_))
                              (_K172197172253_ _refs172263_ _origin172261_)))
                          (_E172196172205_))))))
          (let ((_$e172183_
                 (if (not _reload?172178_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath172177_)
                     '#f)))
            (if _$e172183_
                (values _$e172183_)
                (if (list? _rpath172177_)
                    (_import-submodule172181_ _rpath172177_)
                    (if (gx#core-library-module-path? _rpath172177_)
                        (let ((_ctx172186_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath172177_)
                                _reload?172178_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath172177_
                           _ctx172186_)
                          _ctx172186_)
                        (let* ((_npath172188_ (path-normalize _rpath172177_))
                               (_$e172190_
                                (if (not _reload?172178_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath172188_)
                                    '#f)))
                          (if _$e172190_
                              (values _$e172190_)
                              (_import-source172180_ _npath172188_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath172289_)
        (let ((_reload?172291_ '#f))
          (gx#core-import-module__% _rpath172289_ _reload?172291_))))
    (define gx#core-import-module
      (lambda _g177430_
        (let ((_g177429_ (##length _g177430_)))
          (cond ((##fx= _g177429_ 1)
                 (apply (lambda (_rpath172289_)
                          (gx#core-import-module__0 _rpath172289_))
                        _g177430_))
                ((##fx= _g177429_ 2)
                 (apply (lambda (_rpath172293_ _reload?172294_)
                          (gx#core-import-module__%
                           _rpath172293_
                           _reload?172294_))
                        _g177430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g177430_))))))
    (define gx#core-read-module
      (lambda (_path172166_)
        (with-catch
         (lambda (_exn172168_)
           (if (and (datum-parsing-exception? _exn172168_)
                    (eq? (datum-parsing-exception-filepos _exn172168_) '0))
               (gx#core-read-module/lang _path172166_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path172166_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g172170172172_)
                      (display-exception _exn172168_ _g172170172172_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path172166_)))))
    (define gx#core-read-module/sexp
      (lambda (_path172029_)
        (let _lp172031_ ((_body172033_ (read-syntax-from-file _path172029_))
                         (_pre172034_ '#f)
                         (_ns172035_ '#f)
                         (_pkg172036_ '#f))
          (let* ((_e172037172061_ _body172033_)
                 (_E172053172083_
                  (lambda ()
                    (let ((_g177431_
                           (if _pkg172036_
                               (values _pre172034_ _ns172035_ _pkg172036_)
                               (gx#core-read-module-package
                                _path172029_
                                _pre172034_
                                _ns172035_))))
                      (begin
                        (let ((_g177432_
                               (if (##values? _g177431_)
                                   (##vector-length _g177431_)
                                   1)))
                          (if (not (##fx= _g177432_ 3))
                              (error "Context expects 3 values" _g177432_)))
                        (let ((_pre172065_ (##vector-ref _g177431_ 0))
                              (_ns172066_ (##vector-ref _g177431_ 1))
                              (_pkg172067_ (##vector-ref _g177431_ 2)))
                          (let* ((_prelude172069_
                                  (if (gx#core-bound-module-prelude?
                                       _pre172065_)
                                      (gx#syntax-local-e__0 _pre172065_)
                                      (if (gx#core-library-module-path?
                                           _pre172065_)
                                          (gx#core-resolve-library-module-path
                                           _pre172065_)
                                          (if (gx#stx-string? _pre172065_)
                                              (gx#core-resolve-module-path__%
                                               _pre172065_
                                               _path172029_)
                                              (gx#stx-e _pre172065_)))))
                                 (_path-id172071_
                                  (gx#core-module-path->namespace
                                   _path172029_))
                                 (_pkg-id172073_
                                  (if _pkg172067_
                                      (string-append
                                       _pkg172067_
                                       '"/"
                                       _path-id172071_)
                                      _path-id172071_))
                                 (_module-id172075_
                                  (string->symbol _pkg-id172073_))
                                 (_module-ns172080_
                                  (if (eq? _ns172066_ '#!void)
                                      '#f
                                      (let ((_$e172077_ _ns172066_))
                                        (if _$e172077_
                                            _$e172077_
                                            _pkg-id172073_)))))
                            (values _prelude172069_
                                    _module-id172075_
                                    _module-ns172080_
                                    _body172033_)))))))
                 (_E172046172112_
                  (lambda ()
                    (if (gx#stx-pair? _e172037172061_)
                        (let ((_e172054172087_ (gx#syntax-e _e172037172061_)))
                          (let ((_hd172055172090_ (##car _e172054172087_))
                                (_tl172056172092_ (##cdr _e172054172087_)))
                            (if (eq? (gx#stx-e _hd172055172090_) 'package:)
                                (if (gx#stx-pair? _tl172056172092_)
                                    (let ((_e172057172095_
                                           (gx#syntax-e _tl172056172092_)))
                                      (let ((_hd172058172098_
                                             (##car _e172057172095_))
                                            (_tl172059172100_
                                             (##cdr _e172057172095_)))
                                        (let* ((_pkg172103_ _hd172058172098_)
                                               (_rest172105_ _tl172059172100_))
                                          (if '#t
                                              (let ((_pkg172110_
                                                     (if (gx#identifier?
                                                          _pkg172103_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg172103_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg172103_)
                         (gx#stx-false? _pkg172103_))
                     (gx#stx-e _pkg172103_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg172103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp172031_
                                                 _rest172105_
                                                 _pre172034_
                                                 _ns172035_
                                                 _pkg172110_))
                                              (_E172053172083_)))))
                                    (_E172053172083_))
                                (_E172053172083_))))
                        (_E172053172083_))))
                 (_E172039172138_
                  (lambda ()
                    (if (gx#stx-pair? _e172037172061_)
                        (let ((_e172047172116_ (gx#syntax-e _e172037172061_)))
                          (let ((_hd172048172119_ (##car _e172047172116_))
                                (_tl172049172121_ (##cdr _e172047172116_)))
                            (if (eq? (gx#stx-e _hd172048172119_) 'namespace:)
                                (if (gx#stx-pair? _tl172049172121_)
                                    (let ((_e172050172124_
                                           (gx#syntax-e _tl172049172121_)))
                                      (let ((_hd172051172127_
                                             (##car _e172050172124_))
                                            (_tl172052172129_
                                             (##cdr _e172050172124_)))
                                        (let* ((_ns172132_ _hd172051172127_)
                                               (_rest172134_ _tl172052172129_))
                                          (if '#t
                                              (let ((_ns172136_
                                                     (if (gx#identifier?
                                                          _ns172132_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns172132_))
                                                         (if (gx#stx-string?
                                                              _ns172132_)
                                                             (gx#stx-e
                                                              _ns172132_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns172132_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns172132_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp172031_
                                                 _rest172134_
                                                 _pre172034_
                                                 _ns172136_
                                                 _pkg172036_))
                                              (_E172046172112_)))))
                                    (_E172046172112_))
                                (_E172046172112_))))
                        (_E172046172112_))))
                 (_E172038172162_
                  (lambda ()
                    (if (gx#stx-pair? _e172037172061_)
                        (let ((_e172040172142_ (gx#syntax-e _e172037172061_)))
                          (let ((_hd172041172145_ (##car _e172040172142_))
                                (_tl172042172147_ (##cdr _e172040172142_)))
                            (if (eq? (gx#stx-e _hd172041172145_) 'prelude:)
                                (if (gx#stx-pair? _tl172042172147_)
                                    (let ((_e172043172150_
                                           (gx#syntax-e _tl172042172147_)))
                                      (let ((_hd172044172153_
                                             (##car _e172043172150_))
                                            (_tl172045172155_
                                             (##cdr _e172043172150_)))
                                        (let* ((_prelude172158_
                                                _hd172044172153_)
                                               (_rest172160_ _tl172045172155_))
                                          (if '#t
                                              (_lp172031_
                                               _rest172160_
                                               _prelude172158_
                                               _ns172035_
                                               _pkg172036_)
                                              (_E172039172138_)))))
                                    (_E172039172138_))
                                (_E172039172138_))))
                        (_E172039172138_)))))
            (_E172038172162_)))))
    (define gx#core-read-module/lang
      (lambda (_path171856_)
        (letrec ((_default-read-module-body171858_
                  (lambda (_inp172021_)
                    (let _lp172023_ ((_body172025_ '()))
                      (let ((_next172027_ (read-syntax _inp172021_)))
                        (if (eof-object? _next172027_)
                            (reverse _body172025_)
                            (_lp172023_ (cons _next172027_ _body172025_)))))))
                 (_read-body171859_
                  (lambda (_inp171940_
                           _pre171941_
                           _ns171942_
                           _pkg171943_
                           _args171944_)
                    (let ((_g177433_
                           (if _pkg171943_
                               (values _pre171941_ _ns171942_ _pkg171943_)
                               (gx#core-read-module-package
                                _path171856_
                                _pre171941_
                                _ns171942_))))
                      (begin
                        (let ((_g177434_
                               (if (##values? _g177433_)
                                   (##vector-length _g177433_)
                                   1)))
                          (if (not (##fx= _g177434_ 3))
                              (error "Context expects 3 values" _g177434_)))
                        (let ((_pre171946_ (##vector-ref _g177433_ 0))
                              (_ns171947_ (##vector-ref _g177433_ 1))
                              (_pkg171948_ (##vector-ref _g177433_ 2)))
                          (let* ((_prelude171950_
                                  (gx#import-module__0 _pre171946_))
                                 (_read-module-body172004_
                                  (let ((_$e171996_
                                         (find (lambda (_e171951171953_)
                                                 (let* ((_g171955171965_
                                                         _e171951171953_)
                                                        (_else171957171973_
                                                         (lambda () '#f))
                                                        (_K171959171977_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g171955171965_
                                                        'gx#module-export::t)
                                                       (let* ((_e171960171980_
                                                               (##unchecked-structure-ref
                                                                _g171955171965_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e171961171983_
                                                               (##unchecked-structure-ref
                                                                _g171955171965_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e171962171986_
                                                               (##unchecked-structure-ref
                                                                _g171955171965_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e171962171986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e171963171989_
                            (##unchecked-structure-ref
                             _g171955171965_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g171991171993_)
                              (eq? _g171991171993_ 'read-module-body))
                            _e171963171989_)
                           (_K171959171977_)
                           (_else171957171973_)))
                     (_else171957171973_)))
               (_else171957171973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude171950_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e171996_
                                        ((lambda (_xport171999_)
                                           (let ((_proc172002_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport171999_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc172002_)
                                                 _proc172002_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path171856_
                                                  _pre171946_
                                                  _proc172002_))))
                                         _$e171996_)
                                        _default-read-module-body171858_)))
                                 (_path-id172006_
                                  (gx#core-module-path->namespace
                                   _path171856_))
                                 (_pkg-id172008_
                                  (if _pkg171948_
                                      (string-append
                                       _pkg171948_
                                       '"/"
                                       _path-id172006_)
                                      _path-id172006_))
                                 (_module-id172010_
                                  (string->symbol _pkg-id172008_))
                                 (_module-ns172015_
                                  (let ((_$e172012_ _ns171947_))
                                    (if _$e172012_ _$e172012_ _pkg-id172008_)))
                                 (_body172018_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body172004_ _inp171940_))
                                   gx#current-module-reader-path
                                   _path171856_
                                   gx#current-module-reader-args
                                   _args171944_)))
                            (values _prelude171950_
                                    _module-id172010_
                                    _module-ns172015_
                                    _body172018_)))))))
                 (_string-e171860_
                  (lambda (_obj171937_ _what171938_)
                    (if (string? _obj171937_)
                        _obj171937_
                        (if (symbol? _obj171937_)
                            (symbol->string _obj171937_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what171938_)
                             _path171856_
                             _obj171937_)))))
                 (_read-lang-args171861_
                  (lambda (_inp171892_ _args171893_)
                    (let* ((_args171894171902_ _args171893_)
                           (_else171896171910_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path171856_)))
                           (_K171898171925_
                            (lambda (_args171913_ _prelude171914_)
                              (let* ((_pkg171916_
                                      (pgetq 'package: _args171913_))
                                     (_pkg171918_
                                      (if _pkg171916_
                                          (_string-e171860_
                                           _pkg171916_
                                           '"package")
                                          '#f))
                                     (_ns171920_
                                      (pgetq 'namespace: _args171913_))
                                     (_ns171922_
                                      (if _ns171920_
                                          (_string-e171860_
                                           _ns171920_
                                           '"namespace")
                                          '#f)))
                                (_read-body171859_
                                 _inp171892_
                                 _prelude171914_
                                 _ns171922_
                                 _pkg171918_
                                 _args171913_)))))
                      (if (##pair? _args171894171902_)
                          (let ((_hd171899171928_ (##car _args171894171902_))
                                (_tl171900171930_ (##cdr _args171894171902_)))
                            (let* ((_prelude171933_ _hd171899171928_)
                                   (_args171935_ _tl171900171930_))
                              (_K171898171925_ _args171935_ _prelude171933_)))
                          (_else171896171910_)))))
                 (_read-lang171862_
                  (lambda (_inp171867_)
                    (let* ((_head171869_ (read-line _inp171867_))
                           (_$e171871_ (string-index _head171869_ '#\space)))
                      (if _$e171871_
                          ((lambda (_ix171874_)
                             (let ((_lang171876_
                                    (substring _head171869_ '0 _ix171874_)))
                               (if (equal? _lang171876_ '"#lang")
                                   (let* ((_rest171878_
                                           (substring
                                            _head171869_
                                            (fx+ _ix171874_ '1)
                                            (string-length _head171869_)))
                                          (_args171889_
                                           (with-catch
                                            (lambda (_g171879171881_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path171856_
                                               _g171879171881_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest171878_
                                               (lambda (_g171884171886_)
                                                 (read-all
                                                  _g171884171886_
                                                  read)))))))
                                     (_read-lang-args171861_
                                      _inp171867_
                                      _args171889_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path171856_))))
                           _$e171871_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path171856_)))))
                 (_read-e171863_
                  (lambda (_inp171865_)
                    (if (eq? (peek-char _inp171865_) '#\#)
                        (_read-lang171862_ _inp171865_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path171856_)))))
          (gx#call-with-input-source-file _path171856_ _read-e171863_))))
    (define gx#core-read-module-package
      (lambda (_path171810_ _pre171811_ _ns171812_)
        (letrec ((_string-e171814_
                  (lambda (_e171854_)
                    (if (symbol? _e171854_)
                        (symbol->string _e171854_)
                        (if (string? _e171854_)
                            _e171854_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e171854_))))))
          (let _lp171816_ ((_dir171818_ (path-directory _path171810_))
                           (_pkg-path171819_ '()))
            (let ((_gerbil.pkg171821_ (path-expand '"gerbil.pkg" _dir171818_)))
              (if (file-exists? _gerbil.pkg171821_)
                  (let ((_plist171823_
                         (gx#core-library-package-plist__% _dir171818_ '#t)))
                    (if (null? _plist171823_)
                        (let ((_pkg171825_
                               (if (not (null? _pkg-path171819_))
                                   (string-join _pkg-path171819_ '"/")
                                   '#f)))
                          (values _pre171811_ _ns171812_ _pkg171825_))
                        (if (list? _plist171823_)
                            (let* ((_root171827_
                                    (pgetq 'package: _plist171823_))
                                   (_pkg171831_
                                    (let ((_pkg-path171829_
                                           (if _root171827_
                                               (cons (_string-e171814_
                                                      _root171827_)
                                                     _pkg-path171819_)
                                               _pkg-path171819_)))
                                      (if (not (null? _pkg-path171829_))
                                          (string-join _pkg-path171829_ '"/")
                                          '#f)))
                                   (_ns171838_
                                    (let ((_ns171836_
                                           (let ((_$e171833_ _ns171812_))
                                             (if _$e171833_
                                                 _$e171833_
                                                 (pgetq 'namespace:
                                                        _plist171823_)))))
                                      (if _ns171836_
                                          (_string-e171814_ _ns171836_)
                                          '#f)))
                                   (_pre171843_
                                    (let ((_$e171840_ _pre171811_))
                                      (if _$e171840_
                                          _$e171840_
                                          (pgetq 'prelude: _plist171823_)))))
                              (values _pre171843_ _ns171838_ _pkg171831_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist171823_))))
                  (let ((_dir*171846_
                         (path-strip-trailing-directory-separator
                          _dir171818_)))
                    (if (or (string-empty? _dir*171846_)
                            (equal? _dir171818_ _dir*171846_))
                        (values _pre171811_ _ns171812_ '#f)
                        (let ((_xpath171851_
                               (path-strip-directory _dir*171846_))
                              (_xdir171852_ (path-directory _dir*171846_)))
                          (_lp171816_
                           _xdir171852_
                           (cons _xpath171851_ _pkg-path171819_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path171808_)
        (path-strip-extension (path-strip-directory _path171808_))))
    (define gx#core-module-path->id
      (lambda (_path171806_)
        (string->symbol (gx#core-module-path->namespace _path171806_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path171785_ _rel171786_)
        (let* ((_path171788_ (gx#stx-e _stx-path171785_))
               (_path171790_
                (if (string-empty? (path-extension _path171788_))
                    (string-append _path171788_ '".ss")
                    _path171788_)))
          (gx#core-resolve-path__%
           _path171790_
           (let ((_$e171793_ (gx#stx-source _stx-path171785_)))
             (if _$e171793_ _$e171793_ _rel171786_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path171799_)
        (let ((_rel171801_ '#f))
          (gx#core-resolve-module-path__% _stx-path171799_ _rel171801_))))
    (define gx#core-resolve-module-path
      (lambda _g177436_
        (let ((_g177435_ (##length _g177436_)))
          (cond ((##fx= _g177435_ 1)
                 (apply (lambda (_stx-path171799_)
                          (gx#core-resolve-module-path__0 _stx-path171799_))
                        _g177436_))
                ((##fx= _g177435_ 2)
                 (apply (lambda (_stx-path171803_ _rel171804_)
                          (gx#core-resolve-module-path__%
                           _stx-path171803_
                           _rel171804_))
                        _g177436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g177436_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath171671_)
        (let* ((_spath171673_ (symbol->string (gx#stx-e _libpath171671_)))
               (_spath171675_
                (substring _spath171673_ '1 (string-length _spath171673_)))
               (_ext171677_ (path-extension _spath171675_))
               (_ssi171679_
                (if (string-empty? _ext171677_)
                    (string-append _spath171675_ '".ssi")
                    (string-append
                     (path-strip-extension _spath171675_)
                     '".ssi")))
               (_srcs171683_
                (if (string-empty? _ext171677_)
                    (map (lambda (_ext171681_)
                           (string-append _spath171675_ _ext171681_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath171675_ '()))))
          (let _lp171686_ ((_rest171688_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest171689171698_ _rest171688_)
                   (_E171692171702_
                    (lambda ()
                      (error '"No clause matching" _rest171689171698_))))
              (let ((_K171694171772_
                     (lambda (_rest171713_ _dir171714_)
                       (letrec ((_resolve171716_
                                 (lambda (_ssi171728_ _srcs171729_)
                                   (let ((_compiled-path171731_
                                          (path-expand
                                           _ssi171728_
                                           _dir171714_)))
                                     (if (file-exists? _compiled-path171731_)
                                         (path-normalize _compiled-path171731_)
                                         (let _lpr171733_ ((_rest-src171735_
                                                            _srcs171729_))
                                           (let* ((_rest-src171736171744_
                                                   _rest-src171735_)
                                                  (_else171738171752_
                                                   (lambda ()
                                                     (_lp171686_
                                                      _rest171713_)))
                                                  (_K171740171760_
                                                   (lambda (_rest-src171755_
                                                            _src171756_)
                                                     (let ((_src-path171758_
                                                            (path-expand
                                                             _src171756_
                                                             _dir171714_)))
                                                       (if (file-exists?
                                                            _src-path171758_)
                                                           (path-normalize
                                                            _src-path171758_)
                                                           (_lpr171733_
                                                            _rest-src171755_))))))
                                             (if (##pair? _rest-src171736171744_)
                                                 (let ((_hd171741171763_
                                                        (##car _rest-src171736171744_))
                                                       (_tl171742171765_
                                                        (##cdr _rest-src171736171744_)))
                                                   (let* ((_src171768_
                                                           _hd171741171763_)
                                                          (_rest-src171770_
                                                           _tl171742171765_))
                                                     (_K171740171760_
                                                      _rest-src171770_
                                                      _src171768_)))
                                                 (_else171738171752_)))))))))
                         (let ((_$e171718_
                                (gx#core-library-package-path-prefix
                                 _dir171714_)))
                           (if _$e171718_
                               ((lambda (_prefix171721_)
                                  (if (string-prefix?
                                       _prefix171721_
                                       _spath171675_)
                                      (let ((_ssi171725_
                                             (substring
                                              _ssi171679_
                                              (string-length _prefix171721_)
                                              (string-length _ssi171679_)))
                                            (_srcs171726_
                                             (map (lambda (_src171723_)
                                                    (substring
                                                     _src171723_
                                                     (string-length
                                                      _prefix171721_)
                                                     (string-length
                                                      _src171723_)))
                                                  _srcs171683_)))
                                        (_resolve171716_
                                         _ssi171725_
                                         _srcs171726_))
                                      (_lp171686_ _rest171713_)))
                                _$e171718_)
                               (_resolve171716_ _ssi171679_ _srcs171683_))))))
                    (_K171693171707_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath171671_))))
                (let ((_try-match171691171710_
                       (lambda ()
                         (if (##null? _rest171689171698_)
                             (_K171693171707_)
                             (_E171692171702_)))))
                  (if (##pair? _rest171689171698_)
                      (let ((_tl171696171777_ (##cdr _rest171689171698_))
                            (_hd171695171775_ (##car _rest171689171698_)))
                        (let ((_dir171780_ _hd171695171775_)
                              (_rest171782_ _tl171696171777_))
                          (_K171694171772_ _rest171782_ _dir171780_)))
                      (_try-match171691171710_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath171644_)
        (letrec ((_resolve171646_
                  (lambda (_path171663_ _base171664_)
                    (let ((_$e171666_ (string-rindex _base171664_ '#\/)))
                      (if _$e171666_
                          ((lambda (_idx171669_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base171664_ '0 _idx171669_)
                                '"/"
                                _path171663_))))
                           _$e171666_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path171663_))))))))
          (let ((_spath171648_ (symbol->string (gx#stx-e _modpath171644_)))
                (_mod171649_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod171649_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath171644_))
            (let ((_mpath171651_
                   (symbol->string
                    (##structure-ref
                     _mod171649_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp171653_ ((_spath171655_ _spath171648_)
                               (_mpath171656_ _mpath171651_))
                (if (string-prefix? '"../" _spath171655_)
                    (let ((_$e171658_ (string-rindex _mpath171656_ '#\/)))
                      (if _$e171658_
                          ((lambda (_idx171661_)
                             (_lp171653_
                              (substring
                               _spath171655_
                               '3
                               (string-length _spath171655_))
                              (substring _mpath171656_ '0 _idx171661_)))
                           _$e171658_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath171644_)))
                    (if (string-prefix? '"./" _spath171655_)
                        (_lp171653_
                         (substring
                          _spath171655_
                          '2
                          (string-length _spath171655_))
                         _mpath171656_)
                        (_resolve171646_ _spath171655_ _mpath171656_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir171637_)
        (let ((_$e171639_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir171637_))))
          (if _$e171639_
              ((lambda (_pkg171642_)
                 (string-append (symbol->string _pkg171642_) '"/"))
               _$e171639_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir171609_ _exists?171610_)
        (let* ((_cache171612_ (gx#core-library-package-cache))
               (_$e171614_ (hash-get _cache171612_ _dir171609_)))
          (if _$e171614_
              (values _$e171614_)
              (let* ((_gerbil.pkg171617_
                      (path-expand '"gerbil.pkg" _dir171609_))
                     (_plist171624_
                      (if (or _exists?171610_
                              (file-exists? _gerbil.pkg171617_))
                          (let ((_e171622_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg171617_
                                  read)))
                            (if (eof-object? _e171622_)
                                '()
                                (if (list? _e171622_)
                                    _e171622_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg171617_
                                     _e171622_))))
                          '())))
                (hash-put! _cache171612_ _dir171609_ _plist171624_)
                _plist171624_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir171630_)
        (let ((_exists?171632_ '#f))
          (gx#core-library-package-plist__% _dir171630_ _exists?171632_))))
    (define gx#core-library-package-plist
      (lambda _g177438_
        (let ((_g177437_ (##length _g177438_)))
          (cond ((##fx= _g177437_ 1)
                 (apply (lambda (_dir171630_)
                          (gx#core-library-package-plist__0 _dir171630_))
                        _g177438_))
                ((##fx= _g177437_ 2)
                 (apply (lambda (_dir171634_ _exists?171635_)
                          (gx#core-library-package-plist__%
                           _dir171634_
                           _exists?171635_))
                        _g177438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g177438_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e171603_ (gx#current-expander-module-library-package-cache)))
          (if _$e171603_
              (values _$e171603_)
              (let ((_cache171606_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache171606_)
                _cache171606_)))))
    (define gx#core-library-module-path?
      (lambda (_stx171600_) (gx#core-special-module-path? _stx171600_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx171598_) (gx#core-special-module-path? _stx171598_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx171593_ _char171594_)
        (if (gx#identifier? _stx171593_)
            (if (interned-symbol? (gx#stx-e _stx171593_))
                (let ((_str171596_ (symbol->string (gx#stx-e _stx171593_))))
                  (if (fx> (string-length _str171596_) '1)
                      (eq? (string-ref _str171596_ '0) _char171594_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx171587_)
        (gx#core-bound-identifier?__%
         _stx171587_
         (lambda (_g171588171590_)
           (gx#expander-binding?__% _g171588171590_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx171581_)
        (gx#core-bound-identifier?__%
         _stx171581_
         (lambda (_g171582171584_)
           (gx#expander-binding?__% _g171582171584_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx171568_)
        (letrec ((_module-prelude?171570_
                  (lambda (_e171576_)
                    (let ((_$e171578_
                           (##structure-instance-of?
                            _e171576_
                            'gx#module-context::t)))
                      (if _$e171578_
                          _$e171578_
                          (##structure-instance-of?
                           _e171576_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx171568_
           (lambda (_g171571171573_)
             (gx#expander-binding?__%
              _g171571171573_
              _module-prelude?171570_))))))
    (define gx#core-bind-import!__%
      (lambda (_in171498_ _ctx171499_ _force-weak?171500_)
        (let* ((_in171501171510_ _in171498_)
               (_E171503171514_
                (lambda () (error '"No clause matching" _in171501171510_)))
               (_K171504171527_
                (lambda (_weak?171517_ _phi171518_ _key171519_ _source171520_)
                  (gx#core-bind!__%
                   _key171519_
                   (let ((_e171522_
                          (gx#core-resolve-module-export _source171520_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e171522_
                       '1
                       gx#binding::t
                       '#f)
                      _key171519_
                      _phi171518_
                      _e171522_
                      (##unchecked-structure-ref
                       _source171520_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e171524_ _force-weak?171500_))
                        (if _$e171524_ _$e171524_ _weak?171517_))))
                   gx#core-context-rebind?
                   _phi171518_
                   _ctx171499_))))
          (if (##structure-direct-instance-of?
               _in171501171510_
               'gx#module-import::t)
              (let* ((_e171505171530_
                      (##unchecked-structure-ref
                       _in171501171510_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source171533_ _e171505171530_)
                     (_e171506171535_
                      (##unchecked-structure-ref
                       _in171501171510_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key171538_ _e171506171535_)
                     (_e171507171540_
                      (##unchecked-structure-ref
                       _in171501171510_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi171543_ _e171507171540_)
                     (_e171508171545_
                      (##unchecked-structure-ref
                       _in171501171510_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?171548_ _e171508171545_))
                (_K171504171527_
                 _weak?171548_
                 _phi171543_
                 _key171538_
                 _source171533_))
              (_E171503171514_)))))
    (define gx#core-bind-import!__0
      (lambda (_in171553_)
        (let* ((_ctx171555_ (gx#current-expander-context))
               (_force-weak?171557_ '#f))
          (gx#core-bind-import!__%
           _in171553_
           _ctx171555_
           _force-weak?171557_))))
    (define gx#core-bind-import!__1
      (lambda (_in171559_ _ctx171560_)
        (let ((_force-weak?171562_ '#f))
          (gx#core-bind-import!__%
           _in171559_
           _ctx171560_
           _force-weak?171562_))))
    (define gx#core-bind-import!
      (lambda _g177440_
        (let ((_g177439_ (##length _g177440_)))
          (cond ((##fx= _g177439_ 1)
                 (apply (lambda (_in171553_)
                          (gx#core-bind-import!__0 _in171553_))
                        _g177440_))
                ((##fx= _g177439_ 2)
                 (apply (lambda (_in171559_ _ctx171560_)
                          (gx#core-bind-import!__1 _in171559_ _ctx171560_))
                        _g177440_))
                ((##fx= _g177439_ 3)
                 (apply (lambda (_in171564_ _ctx171565_ _force-weak?171566_)
                          (gx#core-bind-import!__%
                           _in171564_
                           _ctx171565_
                           _force-weak?171566_))
                        _g177440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g177440_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in171484_ _ctx171485_)
        (gx#core-bind-import!__% _in171484_ _ctx171485_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in171490_)
        (let ((_ctx171492_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in171490_ _ctx171492_))))
    (define gx#core-bind-weak-import!
      (lambda _g177442_
        (let ((_g177441_ (##length _g177442_)))
          (cond ((##fx= _g177441_ 1)
                 (apply (lambda (_in171490_)
                          (gx#core-bind-weak-import!__0 _in171490_))
                        _g177442_))
                ((##fx= _g177441_ 2)
                 (apply (lambda (_in171494_ _ctx171495_)
                          (gx#core-bind-weak-import!__%
                           _in171494_
                           _ctx171495_))
                        _g177442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g177442_))))))
    (define gx#core-resolve-module-export
      (lambda (_out171375_)
        (letrec ((_subst171377_
                  (lambda (_key171423_)
                    (let* ((_key171424171432_ _key171423_)
                           (_else171426171440_ (lambda () _key171423_))
                           (_K171428171471_
                            (lambda (_mark171443_ _id171444_)
                              (let* ((_mark171445171451_ _mark171443_)
                                     (_E171447171455_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark171445171451_)))
                                     (_K171448171463_
                                      (lambda (_subst171458_)
                                        (let ((_$e171460_
                                               (if _subst171458_
                                                   (hash-get
                                                    _subst171458_
                                                    _id171444_)
                                                   '#f)))
                                          (if _$e171460_
                                              _$e171460_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key171423_))))))
                                (if (##structure-instance-of?
                                     _mark171445171451_
                                     'gx#expander-mark::t)
                                    (let* ((_e171449171466_
                                            (##unchecked-structure-ref
                                             _mark171445171451_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst171469_ _e171449171466_))
                                      (_K171448171463_ _subst171469_))
                                    (_E171447171455_))))))
                      (if (##pair? _key171424171432_)
                          (let ((_hd171429171474_ (##car _key171424171432_))
                                (_tl171430171476_ (##cdr _key171424171432_)))
                            (let* ((_id171479_ _hd171429171474_)
                                   (_mark171481_ _tl171430171476_))
                              (_K171428171471_ _mark171481_ _id171479_)))
                          (_else171426171440_))))))
          (let* ((_out171378171388_ _out171375_)
                 (_E171380171392_
                  (lambda () (error '"No clause matching" _out171378171388_)))
                 (_K171381171399_
                  (lambda (_phi171395_ _key171396_ _ctx171397_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx171397_ _phi171395_)
                     (_subst171377_ _key171396_)))))
            (if (##structure-direct-instance-of?
                 _out171378171388_
                 'gx#module-export::t)
                (let* ((_e171382171402_
                        (##unchecked-structure-ref
                         _out171378171388_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx171405_ _e171382171402_)
                       (_e171383171407_
                        (##unchecked-structure-ref
                         _out171378171388_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key171410_ _e171383171407_)
                       (_e171384171412_
                        (##unchecked-structure-ref
                         _out171378171388_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi171415_ _e171384171412_)
                       (_e171385171417_
                        (##unchecked-structure-ref
                         _out171378171388_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e171386171420_
                        (##unchecked-structure-ref
                         _out171378171388_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K171381171399_ _phi171415_ _key171410_ _ctx171405_))
                (_E171380171392_))))))
    (define gx#core-module-export->import__%
      (lambda (_out171300_ _rename171301_ _dphi171302_)
        (let* ((_out171303171313_ _out171300_)
               (_E171305171317_
                (lambda () (error '"No clause matching" _out171303171313_)))
               (_K171306171329_
                (lambda (_weak?171320_
                         _name171321_
                         _phi171322_
                         _key171323_
                         _ctx171324_)
                  (##structure
                   gx#module-import::t
                   _out171300_
                   (let ((_$e171326_ _rename171301_))
                     (if _$e171326_ _$e171326_ _name171321_))
                   (fx+ _phi171322_ _dphi171302_)
                   _weak?171320_))))
          (if (##structure-direct-instance-of?
               _out171303171313_
               'gx#module-export::t)
              (let* ((_e171307171332_
                      (##unchecked-structure-ref
                       _out171303171313_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx171335_ _e171307171332_)
                     (_e171308171337_
                      (##unchecked-structure-ref
                       _out171303171313_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key171340_ _e171308171337_)
                     (_e171309171342_
                      (##unchecked-structure-ref
                       _out171303171313_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi171345_ _e171309171342_)
                     (_e171310171347_
                      (##unchecked-structure-ref
                       _out171303171313_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name171350_ _e171310171347_)
                     (_e171311171352_
                      (##unchecked-structure-ref
                       _out171303171313_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?171355_ _e171311171352_))
                (_K171306171329_
                 _weak?171355_
                 _name171350_
                 _phi171345_
                 _key171340_
                 _ctx171335_))
              (_E171305171317_)))))
    (define gx#core-module-export->import__0
      (lambda (_out171360_)
        (let* ((_rename171362_ '#f) (_dphi171364_ '0))
          (gx#core-module-export->import__%
           _out171360_
           _rename171362_
           _dphi171364_))))
    (define gx#core-module-export->import__1
      (lambda (_out171366_ _rename171367_)
        (let ((_dphi171369_ '0))
          (gx#core-module-export->import__%
           _out171366_
           _rename171367_
           _dphi171369_))))
    (define gx#core-module-export->import
      (lambda _g177444_
        (let ((_g177443_ (##length _g177444_)))
          (cond ((##fx= _g177443_ 1)
                 (apply (lambda (_out171360_)
                          (gx#core-module-export->import__0 _out171360_))
                        _g177444_))
                ((##fx= _g177443_ 2)
                 (apply (lambda (_out171366_ _rename171367_)
                          (gx#core-module-export->import__1
                           _out171366_
                           _rename171367_))
                        _g177444_))
                ((##fx= _g177443_ 3)
                 (apply (lambda (_out171371_ _rename171372_ _dphi171373_)
                          (gx#core-module-export->import__%
                           _out171371_
                           _rename171372_
                           _dphi171373_))
                        _g177444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g177444_))))))
    (define gx#core-expand-module%
      (lambda (_stx171228_)
        (letrec ((_make-context171230_
                  (lambda (_id171281_)
                    (let* ((_super171283_ (gx#current-expander-context))
                           (_bind-id171285_ (gx#stx-e _id171281_))
                           (_mod-id171287_
                            (if (##structure-instance-of?
                                 _super171283_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super171283_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id171285_)
                                _bind-id171285_))
                           (_ns171289_ (symbol->string _mod-id171287_))
                           (_path171296_
                            (if (##structure-instance-of?
                                 _super171283_
                                 'gx#module-context::t)
                                (let ((_path171291_
                                       (##unchecked-structure-ref
                                        _super171283_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path171291_)
                                          (null? _path171291_))
                                      (cons _bind-id171285_ _path171291_)
                                      (if (not _path171291_)
                                          _bind-id171285_
                                          (cons _bind-id171285_
                                                (cons _path171291_ '())))))
                                _bind-id171285_)))
                      (let ((__obj177420
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
                         __obj177420
                         _mod-id171287_
                         _super171283_
                         _ns171289_
                         _path171296_)
                        __obj177420)))))
          (let* ((_e171231171241_ _stx171228_)
                 (_E171233171245_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e171231171241_)))
                 (_E171232171277_
                  (lambda ()
                    (if (gx#stx-pair? _e171231171241_)
                        (let ((_e171234171249_ (gx#syntax-e _e171231171241_)))
                          (let ((_hd171235171252_ (##car _e171234171249_))
                                (_tl171236171254_ (##cdr _e171234171249_)))
                            (if (gx#stx-pair? _tl171236171254_)
                                (let ((_e171237171257_
                                       (gx#syntax-e _tl171236171254_)))
                                  (let ((_hd171238171260_
                                         (##car _e171237171257_))
                                        (_tl171239171262_
                                         (##cdr _e171237171257_)))
                                    (let* ((_id171265_ _hd171238171260_)
                                           (_body171267_ _tl171239171262_))
                                      (if (and (gx#identifier? _id171265_)
                                               (gx#stx-list? _body171267_))
                                          (let* ((_ctx171269_
                                                  (_make-context171230_
                                                   _id171265_))
                                                 (_body171271_
                                                  (gx#core-expand-module-begin
                                                   _body171267_
                                                   _ctx171269_))
                                                 (_body171273_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body171271_)
                                                   (gx#stx-source
                                                    _stx171228_))))
                                            (##unchecked-structure-set!
                                             _ctx171269_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body171273_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx171269_
                                             _body171273_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id171265_
                                             _ctx171269_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id171265_)
                                              _body171273_)
                                             (gx#stx-source _stx171228_)))
                                          (_E171233171245_)))))
                                (_E171233171245_))))
                        (_E171233171245_)))))
            (_E171232171277_)))))
    (define gx#core-expand-module-begin
      (lambda (_body171194_ _ctx171195_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx171198_
                   (gx#core-expand-head (cons '%%begin-module _body171194_)))
                  (_e171199171206_ _stx171198_)
                  (_E171201171210_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx171198_)))
                  (_E171200171224_
                   (lambda ()
                     (if (gx#stx-pair? _e171199171206_)
                         (let ((_e171202171214_ (gx#syntax-e _e171199171206_)))
                           (let ((_hd171203171217_ (##car _e171202171214_))
                                 (_tl171204171219_ (##cdr _e171202171214_)))
                             (if (and (gx#identifier? _hd171203171217_)
                                      (gx#core-identifier=?
                                       _hd171203171217_
                                       '%#begin-module))
                                 (let ((_body171222_ _tl171204171219_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx171198_)
                                           _body171222_
                                           (gx#core-expand-module-body
                                            _body171222_))
                                       (_E171201171210_)))
                                 (_E171201171210_))))
                         (_E171201171210_)))))
             (_E171200171224_)))
         gx#current-expander-context
         _ctx171195_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body170990_)
        (letrec ((_expand-special170992_
                  (lambda (_hd171121_ _K171122_ _rest171123_ _r171124_)
                    (let* ((_e171125171142_ _hd171121_)
                           (_E171137171146_
                            (lambda ()
                              (_K171122_
                               _rest171123_
                               (cons (gx#core-expand-top _hd171121_)
                                     _r171124_))))
                           (_E171127171158_
                            (lambda ()
                              (if (gx#stx-pair? _e171125171142_)
                                  (let ((_e171138171150_
                                         (gx#syntax-e _e171125171142_)))
                                    (let ((_hd171139171153_
                                           (##car _e171138171150_))
                                          (_tl171140171155_
                                           (##cdr _e171138171150_)))
                                      (if (and (gx#identifier?
                                                _hd171139171153_)
                                               (gx#core-identifier=?
                                                _hd171139171153_
                                                '%#export))
                                          (if '#t
                                              (_K171122_
                                               _rest171123_
                                               (cons _hd171121_ _r171124_))
                                              (_E171137171146_))
                                          (_E171137171146_))))
                                  (_E171137171146_))))
                           (_E171126171190_
                            (lambda ()
                              (if (gx#stx-pair? _e171125171142_)
                                  (let ((_e171128171162_
                                         (gx#syntax-e _e171125171142_)))
                                    (let ((_hd171129171165_
                                           (##car _e171128171162_))
                                          (_tl171130171167_
                                           (##cdr _e171128171162_)))
                                      (if (and (gx#identifier?
                                                _hd171129171165_)
                                               (gx#core-identifier=?
                                                _hd171129171165_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl171130171167_)
                                              (let ((_e171131171170_
                                                     (gx#syntax-e
                                                      _tl171130171167_)))
                                                (let ((_hd171132171173_
                                                       (##car _e171131171170_))
                                                      (_tl171133171175_
                                                       (##cdr _e171131171170_)))
                                                  (let ((_hd-bind171178_
                                                         _hd171132171173_))
                                                    (if (gx#stx-pair?
                                                         _tl171133171175_)
                                                        (let ((_e171134171180_
                                                               (gx#syntax-e
                                                                _tl171133171175_)))
                                                          (let ((_hd171135171183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e171134171180_))
                        (_tl171136171185_ (##cdr _e171134171180_)))
                    (let ((_expr171188_ _hd171135171183_))
                      (if (gx#stx-null? _tl171136171185_)
                          (if (gx#core-bind-values? _hd-bind171178_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind171178_)
                                (_K171122_
                                 _rest171123_
                                 (cons _hd171121_ _r171124_)))
                              (_E171127171158_))
                          (_E171127171158_)))))
                (_E171127171158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E171127171158_))
                                          (_E171127171158_))))
                                  (_E171127171158_)))))
                      (_E171126171190_))))
                 (_expand-body170993_
                  (lambda (_rbody170995_)
                    (let _lp170997_ ((_rest170999_ _rbody170995_)
                                     (_body171000_ '()))
                      (let* ((_rest171001171009_ _rest170999_)
                             (_else171003171017_ (lambda () _body171000_))
                             (_K171005171109_
                              (lambda (_rest171020_ _hd171021_)
                                (let* ((_e171022171043_ _hd171021_)
                                       (_E171038171047_
                                        (lambda ()
                                          (_lp170997_
                                           _rest171020_
                                           (cons (gx#core-expand-expression
                                                  _hd171021_)
                                                 _body171000_))))
                                       (_E171034171061_
                                        (lambda ()
                                          (if (gx#stx-pair? _e171022171043_)
                                              (let ((_e171039171051_
                                                     (gx#syntax-e
                                                      _e171022171043_)))
                                                (let ((_hd171040171054_
                                                       (##car _e171039171051_))
                                                      (_tl171041171056_
                                                       (##cdr _e171039171051_)))
                                                  (let ((_form171059_
                                                         _hd171040171054_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form171059_
                                                         gx#special-form-binding?)
                                                        (_lp170997_
                                                         _rest171020_
                                                         (cons _hd171021_
                                                               _body171000_))
                                                        (_E171038171047_)))))
                                              (_E171038171047_))))
                                       (_E171024171073_
                                        (lambda ()
                                          (if (gx#stx-pair? _e171022171043_)
                                              (let ((_e171035171065_
                                                     (gx#syntax-e
                                                      _e171022171043_)))
                                                (let ((_hd171036171068_
                                                       (##car _e171035171065_))
                                                      (_tl171037171070_
                                                       (##cdr _e171035171065_)))
                                                  (if (and (gx#identifier?
                                                            _hd171036171068_)
                                                           (gx#core-identifier=?
                                                            _hd171036171068_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp170997_
                                                           _rest171020_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd171021_)
                         _body171000_))
                  (_E171034171061_))
              (_E171034171061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E171034171061_))))
                                       (_E171023171105_
                                        (lambda ()
                                          (if (gx#stx-pair? _e171022171043_)
                                              (let ((_e171025171077_
                                                     (gx#syntax-e
                                                      _e171022171043_)))
                                                (let ((_hd171026171080_
                                                       (##car _e171025171077_))
                                                      (_tl171027171082_
                                                       (##cdr _e171025171077_)))
                                                  (if (and (gx#identifier?
                                                            _hd171026171080_)
                                                           (gx#core-identifier=?
                                                            _hd171026171080_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl171027171082_)
                                                          (let ((_e171028171085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl171027171082_)))
                    (let ((_hd171029171088_ (##car _e171028171085_))
                          (_tl171030171090_ (##cdr _e171028171085_)))
                      (let ((_hd-bind171093_ _hd171029171088_))
                        (if (gx#stx-pair? _tl171030171090_)
                            (let ((_e171031171095_
                                   (gx#syntax-e _tl171030171090_)))
                              (let ((_hd171032171098_ (##car _e171031171095_))
                                    (_tl171033171100_ (##cdr _e171031171095_)))
                                (let ((_expr171103_ _hd171032171098_))
                                  (if (gx#stx-null? _tl171033171100_)
                                      (if '#t
                                          (_lp170997_
                                           _rest171020_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind171093_)
                                                   (gx#core-expand-expression
                                                    _expr171103_))
                                                  (gx#stx-source _hd171021_))
                                                 _body171000_))
                                          (_E171024171073_))
                                      (_E171024171073_)))))
                            (_E171024171073_)))))
                  (_E171024171073_))
              (_E171024171073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E171024171073_)))))
                                  (_E171023171105_)))))
                        (if (##pair? _rest171001171009_)
                            (let ((_hd171006171112_ (##car _rest171001171009_))
                                  (_tl171007171114_
                                   (##cdr _rest171001171009_)))
                              (let* ((_hd171117_ _hd171006171112_)
                                     (_rest171119_ _tl171007171114_))
                                (_K171005171109_ _rest171119_ _hd171117_)))
                            (_else171003171017_)))))))
          (_expand-body170993_
           (gx#core-expand-block__%
            (cons '%#begin-module _body170990_)
            _expand-special170992_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx170833_
               _expanded?170834_
               _method170835_
               _current-phi170836_
               _expand1170837_)
        (letrec ((_K170839_
                  (lambda (_rest170957_ _r170958_)
                    (let* ((_e170959170966_ _rest170957_)
                           (_E170961170970_ (lambda () _r170958_))
                           (_E170960170986_
                            (lambda ()
                              (if (gx#stx-pair? _e170959170966_)
                                  (let ((_e170962170974_
                                         (gx#syntax-e _e170959170966_)))
                                    (let ((_hd170963170977_
                                           (##car _e170962170974_))
                                          (_tl170964170979_
                                           (##cdr _e170962170974_)))
                                      (let* ((_hd170982_ _hd170963170977_)
                                             (_rest170984_ _tl170964170979_))
                                        (if '#t
                                            (_step170840_
                                             _hd170982_
                                             _rest170984_
                                             _r170958_)
                                            (_E170961170970_)))))
                                  (_E170961170970_)))))
                      (_E170960170986_))))
                 (_step170840_
                  (lambda (_hd170871_ _rest170872_ _r170873_)
                    (let* ((_e170874170892_ _hd170871_)
                           (_E170887170896_
                            (lambda ()
                              (if (_expanded?170834_ (gx#stx-e _hd170871_))
                                  (_K170839_
                                   _rest170872_
                                   (cons (gx#stx-e _hd170871_) _r170873_))
                                  (_expand1170837_
                                   _hd170871_
                                   _K170839_
                                   _rest170872_
                                   _r170873_))))
                           (_E170883170912_
                            (lambda ()
                              (if (gx#stx-pair? _e170874170892_)
                                  (let ((_e170888170900_
                                         (gx#syntax-e _e170874170892_)))
                                    (let ((_hd170889170903_
                                           (##car _e170888170900_))
                                          (_tl170890170905_
                                           (##cdr _e170888170900_)))
                                      (let* ((_macro170908_ _hd170889170903_)
                                             (_body170910_ _tl170890170905_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro170908_
                                             gx#syntax-binding?)
                                            (_K170839_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro170908_)
                                                    _hd170871_
                                                    _method170835_)
                                                   _rest170872_)
                                             _r170873_)
                                            (_E170887170896_)))))
                                  (_E170887170896_))))
                           (_E170876170926_
                            (lambda ()
                              (if (gx#stx-pair? _e170874170892_)
                                  (let ((_e170884170916_
                                         (gx#syntax-e _e170874170892_)))
                                    (let ((_hd170885170919_
                                           (##car _e170884170916_))
                                          (_tl170886170921_
                                           (##cdr _e170884170916_)))
                                      (if (eq? (gx#stx-e _hd170885170919_)
                                               'begin:)
                                          (let ((_body170924_
                                                 _tl170886170921_))
                                            (if '#t
                                                (_K170839_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest170872_
                                                  _body170924_)
                                                 _r170873_)
                                                (_E170883170912_)))
                                          (_E170883170912_))))
                                  (_E170883170912_))))
                           (_E170875170953_
                            (lambda ()
                              (if (gx#stx-pair? _e170874170892_)
                                  (let ((_e170877170930_
                                         (gx#syntax-e _e170874170892_)))
                                    (let ((_hd170878170933_
                                           (##car _e170877170930_))
                                          (_tl170879170935_
                                           (##cdr _e170877170930_)))
                                      (if (eq? (gx#stx-e _hd170878170933_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl170879170935_)
                                              (let ((_e170880170938_
                                                     (gx#syntax-e
                                                      _tl170879170935_)))
                                                (let ((_hd170881170941_
                                                       (##car _e170880170938_))
                                                      (_tl170882170943_
                                                       (##cdr _e170880170938_)))
                                                  (let* ((_dphi170946_
                                                          _hd170881170941_)
                                                         (_body170948_
                                                          _tl170882170943_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi170946_)
                                                        (let ((_rbody170951_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K170839_ _body170948_ '()))
                        _current-phi170836_
                        (fx+ (gx#stx-e _dphi170946_) (_current-phi170836_)))))
                  (_K170839_
                   _rest170872_
                   (foldr1 cons _r170873_ _rbody170951_)))
                (_E170876170926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E170876170926_))
                                          (_E170876170926_))))
                                  (_E170876170926_)))))
                      (_E170875170953_)))))
          (let* ((_e170841170848_ _stx170833_)
                 (_E170843170852_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e170841170848_)))
                 (_E170842170867_
                  (lambda ()
                    (if (gx#stx-pair? _e170841170848_)
                        (let ((_e170844170856_ (gx#syntax-e _e170841170848_)))
                          (let ((_hd170845170859_ (##car _e170844170856_))
                                (_tl170846170861_ (##cdr _e170844170856_)))
                            (let ((_body170864_ _tl170846170861_))
                              (if '#t
                                  (if (_current-phi170836_)
                                      (_K170839_ _body170864_ '())
                                      (call-with-parameters
                                       (lambda () (_K170839_ _body170864_ '()))
                                       _current-phi170836_
                                       (gx#current-expander-phi)))
                                  (_E170843170852_)))))
                        (_E170843170852_)))))
            (_E170842170867_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx170500_ _internal-expand?170501_)
        (letrec ((_expand1170503_
                  (lambda (_hd170813_ _K170814_ _rest170815_ _r170816_)
                    (if (gx#core-bound-module? _hd170813_)
                        (_import1170504_
                         (gx#syntax-local-e__0 _hd170813_)
                         _K170814_
                         _rest170815_
                         _r170816_)
                        (if (gx#core-library-module-path? _hd170813_)
                            (_import1170504_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd170813_))
                             _K170814_
                             _rest170815_
                             _r170816_)
                            (if (gx#core-library-relative-module-path?
                                 _hd170813_)
                                (_import1170504_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd170813_))
                                 _K170814_
                                 _rest170815_
                                 _r170816_)
                                (let ((_e170818_ (gx#stx-e _hd170813_)))
                                  (if (pair? _e170818_)
                                      (let ((_$e170820_
                                             (gx#stx-e (car _e170818_))))
                                        (if (eq? 'spec: _$e170820_)
                                            (_import-spec170507_
                                             _hd170813_
                                             _K170814_
                                             _rest170815_
                                             _r170816_)
                                            (if (eq? 'in: _$e170820_)
                                                (_import-submodule170505_
                                                 _hd170813_
                                                 _K170814_
                                                 _rest170815_
                                                 _r170816_)
                                                (if (eq? 'runtime: _$e170820_)
                                                    (_import-runtime170506_
                                                     _hd170813_
                                                     _K170814_
                                                     _rest170815_
                                                     _r170816_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx170500_
                                                     _hd170813_)))))
                                      (if (string? _e170818_)
                                          (_import1170504_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd170813_
                                             (gx#stx-source _stx170500_)))
                                           _K170814_
                                           _rest170815_
                                           _r170816_)
                                          (if (##structure-instance-of?
                                               _e170818_
                                               'gx#module-context::t)
                                              (_K170814_
                                               _rest170815_
                                               (cons _e170818_ _r170816_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx170500_
                                               _hd170813_))))))))))
                 (_import1170504_
                  (lambda (_ctx170802_ _K170803_ _rest170804_ _r170805_)
                    (let ((_dphi170807_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K170803_
                       _rest170804_
                       (cons (##structure
                              gx#import-set::t
                              _ctx170802_
                              _dphi170807_
                              (map (lambda (_g170808170810_)
                                     (gx#core-module-export->import__%
                                      _g170808170810_
                                      '#f
                                      _dphi170807_))
                                   (##unchecked-structure-ref
                                    _ctx170802_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r170805_)))))
                 (_import-submodule170505_
                  (lambda (_hd170769_ _K170770_ _rest170771_ _r170772_)
                    (let* ((_e170773170780_ _hd170769_)
                           (_E170775170784_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e170773170780_)))
                           (_E170774170798_
                            (lambda ()
                              (if (gx#stx-pair? _e170773170780_)
                                  (let ((_e170776170788_
                                         (gx#syntax-e _e170773170780_)))
                                    (let ((_hd170777170791_
                                           (##car _e170776170788_))
                                          (_tl170778170793_
                                           (##cdr _e170776170788_)))
                                      (let ((_spath170796_ _tl170778170793_))
                                        (if '#t
                                            (_import1170504_
                                             (_import-spec-source170508_
                                              _spath170796_)
                                             _K170770_
                                             _rest170771_
                                             _r170772_)
                                            (_E170775170784_)))))
                                  (_E170775170784_)))))
                      (_E170774170798_))))
                 (_import-runtime170506_
                  (lambda (_hd170736_ _K170737_ _rest170738_ _r170739_)
                    (let* ((_e170740170747_ _hd170736_)
                           (_E170742170751_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e170740170747_)))
                           (_E170741170765_
                            (lambda ()
                              (if (gx#stx-pair? _e170740170747_)
                                  (let ((_e170743170755_
                                         (gx#syntax-e _e170740170747_)))
                                    (let ((_hd170744170758_
                                           (##car _e170743170755_))
                                          (_tl170745170760_
                                           (##cdr _e170743170755_)))
                                      (let ((_spath170763_ _tl170745170760_))
                                        (if '#t
                                            (_K170737_
                                             _rest170738_
                                             (cons (_import-spec-source170508_
                                                    _spath170763_)
                                                   _r170739_))
                                            (_E170742170751_)))))
                                  (_E170742170751_)))))
                      (_E170741170765_))))
                 (_import-spec170507_
                  (lambda (_hd170575_ _K170576_ _rest170577_ _r170578_)
                    (let* ((_e170579170596_ _hd170575_)
                           (_E170588170600_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e170579170596_)))
                           (_E170581170710_
                            (lambda ()
                              (if (gx#stx-pair? _e170579170596_)
                                  (let ((_e170589170604_
                                         (gx#syntax-e _e170579170596_)))
                                    (let ((_hd170590170607_
                                           (##car _e170589170604_))
                                          (_tl170591170609_
                                           (##cdr _e170589170604_)))
                                      (if (gx#stx-pair? _tl170591170609_)
                                          (let ((_e170592170612_
                                                 (gx#syntax-e
                                                  _tl170591170609_)))
                                            (let ((_hd170593170615_
                                                   (##car _e170592170612_))
                                                  (_tl170594170617_
                                                   (##cdr _e170592170612_)))
                                              (let* ((_path170620_
                                                      _hd170593170615_)
                                                     (_specs170622_
                                                      _tl170594170617_))
                                                (if '#t
                                                    (let ((_src-ctx170624_
                                                           (_import-spec-source170508_
                                                            _path170620_))
                                                          (_exports170625_
                                                           (make-hash-table))
                                                          (_specs170626_
                                                           (gx#syntax->list
                                                            _specs170622_)))
                                                      (for-each
                                                       (lambda (_out170628_)
                                                         (hash-put!
                                                          _exports170625_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out170628_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out170628_
                         '4
                         gx#module-export::t
                         '#f))
                  _out170628_))
               (##unchecked-structure-ref
                _src-ctx170624_
                '9
                gx#module-context::t
                '#f))
              (_K170576_
               _rest170577_
               (foldl1 (lambda (_spec170630_ _r170631_)
                         (let* ((_e170632170648_ _spec170630_)
                                (_E170634170652_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e170632170648_)))
                                (_E170633170706_
                                 (lambda ()
                                   (if (gx#stx-pair? _e170632170648_)
                                       (let ((_e170635170656_
                                              (gx#syntax-e _e170632170648_)))
                                         (let ((_hd170636170659_
                                                (##car _e170635170656_))
                                               (_tl170637170661_
                                                (##cdr _e170635170656_)))
                                           (let ((_phi170664_
                                                  _hd170636170659_))
                                             (if (gx#stx-pair?
                                                  _tl170637170661_)
                                                 (let ((_e170638170666_
                                                        (gx#syntax-e
                                                         _tl170637170661_)))
                                                   (let ((_hd170639170669_
                                                          (##car _e170638170666_))
                                                         (_tl170640170671_
                                                          (##cdr _e170638170666_)))
                                                     (let ((_name170674_
                                                            _hd170639170669_))
                                                       (if (gx#stx-pair?
                                                            _tl170640170671_)
                                                           (let ((_e170641170676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl170640170671_)))
                     (let ((_hd170642170679_ (##car _e170641170676_))
                           (_tl170643170681_ (##cdr _e170641170676_)))
                       (let ((_src-phi170684_ _hd170642170679_))
                         (if (gx#stx-pair? _tl170643170681_)
                             (let ((_e170644170686_
                                    (gx#syntax-e _tl170643170681_)))
                               (let ((_hd170645170689_ (##car _e170644170686_))
                                     (_tl170646170691_
                                      (##cdr _e170644170686_)))
                                 (let ((_src-name170694_ _hd170645170689_))
                                   (if (gx#stx-null? _tl170646170691_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi170684_)
                                                (gx#identifier?
                                                 _src-name170694_)
                                                (gx#stx-fixnum? _phi170664_)
                                                (gx#identifier? _name170674_))
                                           (let ((_src-phi170696_
                                                  (gx#stx-e _src-phi170684_))
                                                 (_src-name170697_
                                                  (gx#core-identifier-key
                                                   _src-name170694_))
                                                 (_phi170698_
                                                  (gx#stx-e _phi170664_))
                                                 (_name170699_
                                                  (gx#core-identifier-key
                                                   _name170674_)))
                                             (let ((_$e170701_
                                                    (hash-get
                                                     _exports170625_
                                                     (cons _src-phi170696_
                                                           _src-name170697_))))
                                               (if _$e170701_
                                                   ((lambda (_out170704_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out170704_
                                                             _name170699_
                                                             (fx- _phi170698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi170696_))
                    _r170631_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e170701_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx170500_
                                                    _hd170575_))))
                                           (_E170634170652_))
                                       (_E170634170652_)))))
                             (_E170634170652_)))))
                   (_E170634170652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E170634170652_)))))
                                       (_E170634170652_)))))
                           (_E170633170706_)))
                       _r170578_
                       _specs170626_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E170588170600_)))))
                                          (_E170588170600_))))
                                  (_E170588170600_))))
                           (_E170580170732_
                            (lambda ()
                              (if (gx#stx-pair? _e170579170596_)
                                  (let ((_e170582170714_
                                         (gx#syntax-e _e170579170596_)))
                                    (let ((_hd170583170717_
                                           (##car _e170582170714_))
                                          (_tl170584170719_
                                           (##cdr _e170582170714_)))
                                      (if (gx#stx-pair? _tl170584170719_)
                                          (let ((_e170585170722_
                                                 (gx#syntax-e
                                                  _tl170584170719_)))
                                            (let ((_hd170586170725_
                                                   (##car _e170585170722_))
                                                  (_tl170587170727_
                                                   (##cdr _e170585170722_)))
                                              (let ((_path170730_
                                                     _hd170586170725_))
                                                (if (gx#stx-null?
                                                     _tl170587170727_)
                                                    (if '#t
                                                        (_K170576_
                                                         _rest170577_
                                                         (cons (_import-spec-source170508_
                                                                _path170730_)
                                                               _r170578_))
                                                        (_E170581170710_))
                                                    (_E170581170710_)))))
                                          (_E170581170710_))))
                                  (_E170581170710_)))))
                      (_E170580170732_))))
                 (_import-spec-source170508_
                  (lambda (_spath170573_)
                    (gx#core-import-nested-module _spath170573_ _stx170500_)))
                 (_import!170509_
                  (lambda (_rbody170522_)
                    (letrec* ((_current-ctx170524_
                               (gx#current-expander-context))
                              (_deps170525_ (make-hash-table-eq))
                              (_bind!170526_
                               (lambda (_hd170571_)
                                 (gx#core-bind-import!__1
                                  _hd170571_
                                  _current-ctx170524_))))
                      (let _lp170528_ ((_rest170530_ _rbody170522_)
                                       (_body170531_ '()))
                        (let* ((_rest170532170540_ _rest170530_)
                               (_else170534170550_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx170524_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx170524_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx170524_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body170531_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx170548_ _g177445_)
                                     (gx#eval-module _ctx170548_))
                                   _deps170525_)
                                  _body170531_))
                               (_K170536170559_
                                (lambda (_rest170553_ _hd170554_)
                                  (if (##structure-direct-instance-of?
                                       _hd170554_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!170526_ _hd170554_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd170554_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd170554_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps170525_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd170554_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd170554_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!170526_
                                             (##unchecked-structure-ref
                                              _hd170554_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd170554_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps170525_
                                                 (##unchecked-structure-ref
                                                  _hd170554_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e170556_
                                                 (##structure-instance-of?
                                                  _hd170554_
                                                  'gx#module-context::t)))
                                            (if _$e170556_
                                                _$e170556_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx170500_
                                                 _hd170554_)))))
                                  (_lp170528_
                                   _rest170553_
                                   (cons _hd170554_ _body170531_)))))
                          (if (##pair? _rest170532170540_)
                              (let ((_hd170537170562_
                                     (##car _rest170532170540_))
                                    (_tl170538170564_
                                     (##cdr _rest170532170540_)))
                                (let* ((_hd170567_ _hd170537170562_)
                                       (_rest170569_ _tl170538170564_))
                                  (_K170536170559_ _rest170569_ _hd170567_)))
                              (_else170534170550_)))))))
                 (_expanded-import?170510_
                  (lambda (_e170514_)
                    (let ((_$e170516_
                           (##structure-direct-instance-of?
                            _e170514_
                            'gx#import-set::t)))
                      (if _$e170516_
                          _$e170516_
                          (let ((_$e170519_
                                 (##structure-direct-instance-of?
                                  _e170514_
                                  'gx#module-import::t)))
                            (if _$e170519_
                                _$e170519_
                                (##structure-instance-of?
                                 _e170514_
                                 'gx#module-context::t))))))))
          (let ((_rbody170512_
                 (gx#core-expand-import/export
                  _stx170500_
                  _expanded-import?170510_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1170503_)))
            (if _internal-expand?170501_
                (reverse _rbody170512_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!170509_ _rbody170512_))
                 (gx#stx-source _stx170500_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx170826_)
        (let ((_internal-expand?170828_ '#f))
          (gx#core-expand-import%__% _stx170826_ _internal-expand?170828_))))
    (define gx#core-expand-import%
      (lambda _g177447_
        (let ((_g177446_ (##length _g177447_)))
          (cond ((##fx= _g177446_ 1)
                 (apply (lambda (_stx170826_)
                          (gx#core-expand-import%__0 _stx170826_))
                        _g177447_))
                ((##fx= _g177446_ 2)
                 (apply (lambda (_stx170830_ _internal-expand?170831_)
                          (gx#core-expand-import%__%
                           _stx170830_
                           _internal-expand?170831_))
                        _g177447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g177447_))))))
    (define gx#core-import-nested-module
      (lambda (_spath170427_ _where170428_)
        (let* ((_e170429170436_ _spath170427_)
               (_E170431170440_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170429170436_)))
               (_E170430170495_
                (lambda ()
                  (if (gx#stx-pair? _e170429170436_)
                      (let ((_e170432170444_ (gx#syntax-e _e170429170436_)))
                        (let ((_hd170433170447_ (##car _e170432170444_))
                              (_tl170434170449_ (##cdr _e170432170444_)))
                          (let* ((_origin170452_ _hd170433170447_)
                                 (_sub170454_ _tl170434170449_))
                            (if '#t
                                (let ((_origin-ctx170456_
                                       (if (gx#stx-false? _origin170452_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin170452_))))
                                  (let _lp170458_ ((_rest170460_ _sub170454_)
                                                   (_ctx170461_
                                                    _origin-ctx170456_))
                                    (let* ((_e170462170469_ _rest170460_)
                                           (_E170464170473_
                                            (lambda () _ctx170461_))
                                           (_E170463170491_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e170462170469_)
                                                  (let ((_e170465170477_
                                                         (gx#syntax-e
                                                          _e170462170469_)))
                                                    (let ((_hd170466170480_
                                                           (##car _e170465170477_))
                                                          (_tl170467170482_
                                                           (##cdr _e170465170477_)))
                                                      (let* ((_id170485_
                                                              _hd170466170480_)
                                                             (_rest170487_
                                                              _tl170467170482_))
                                                        (if '#t
                                                            (let ((_bind170489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id170485_
                            '0
                            _ctx170461_)))
                      (if (and (##structure-direct-instance-of?
                                _bind170489_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind170489_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where170428_
                           _spath170427_
                           _id170485_))
                      (_lp170458_
                       _rest170487_
                       (##unchecked-structure-ref
                        _bind170489_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E170464170473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E170464170473_)))))
                                      (_E170463170491_))))
                                (_E170431170440_)))))
                      (_E170431170440_)))))
          (_E170430170495_))))
    (define gx#core-expand-import-source
      (lambda (_hd170425_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd170425_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx169933_ _internal-expand?169934_)
        (letrec* ((_make-export__177376177377_
                   (lambda (_bind170373_ _phi170374_ _ctx170375_ _name170376_)
                     (let* ((_key170378_
                             (##unchecked-structure-ref
                              _bind170373_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key170380_
                             (if _name170376_
                                 (gx#core-identifier-key _name170376_)
                                 _key170378_)))
                       (##structure
                        gx#module-export::t
                        _ctx170375_
                        _key170378_
                        _phi170374_
                        _export-key170380_
                        (let ((_$e170383_
                               (##structure-instance-of?
                                _bind170373_
                                'gx#extern-binding::t)))
                          (if _$e170383_
                              _$e170383_
                              (##structure-direct-instance-of?
                               _bind170373_
                               'gx#import-binding::t)))))))
                  (_make-export__0__177378177381_
                   (lambda (_bind170389_)
                     (let* ((_phi170391_ (gx#current-export-expander-phi))
                            (_ctx170393_ (gx#current-expander-context))
                            (_name170395_ '#f))
                       (_make-export__177376177377_
                        _bind170389_
                        _phi170391_
                        _ctx170393_
                        _name170395_))))
                  (_make-export__1__177379177382_
                   (lambda (_bind170397_ _phi170398_)
                     (let* ((_ctx170400_ (gx#current-expander-context))
                            (_name170402_ '#f))
                       (_make-export__177376177377_
                        _bind170397_
                        _phi170398_
                        _ctx170400_
                        _name170402_))))
                  (_make-export__2__177380177383_
                   (lambda (_bind170404_ _phi170405_ _ctx170406_)
                     (let ((_name170408_ '#f))
                       (_make-export__177376177377_
                        _bind170404_
                        _phi170405_
                        _ctx170406_
                        _name170408_))))
                  (_make-export169936_
                   (lambda _g177449_
                     (let ((_g177448_ (##length _g177449_)))
                       (cond ((##fx= _g177448_ 1)
                              (apply (lambda (_bind170389_)
                                       (_make-export__0__177378177381_
                                        _bind170389_))
                                     _g177449_))
                             ((##fx= _g177448_ 2)
                              (apply (lambda (_bind170397_ _phi170398_)
                                       (_make-export__1__177379177382_
                                        _bind170397_
                                        _phi170398_))
                                     _g177449_))
                             ((##fx= _g177448_ 3)
                              (apply (lambda (_bind170404_
                                              _phi170405_
                                              _ctx170406_)
                                       (_make-export__2__177380177383_
                                        _bind170404_
                                        _phi170405_
                                        _ctx170406_))
                                     _g177449_))
                             ((##fx= _g177448_ 4)
                              (apply (lambda (_bind170410_
                                              _phi170411_
                                              _ctx170412_
                                              _name170413_)
                                       (_make-export__177376177377_
                                        _bind170410_
                                        _phi170411_
                                        _ctx170412_
                                        _name170413_))
                                     _g177449_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g177449_))))))
                  (_expand1169937_
                   (lambda (_hd170086_ _K170087_ _rest170088_ _r170089_)
                     (let* ((_e170090170122_ _hd170086_)
                            (_E170117170126_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx169933_
                                _hd170086_)))
                            (_E170107170205_
                             (lambda ()
                               (if (gx#stx-pair? _e170090170122_)
                                   (let ((_e170118170130_
                                          (gx#syntax-e _e170090170122_)))
                                     (let ((_hd170119170133_
                                            (##car _e170118170130_))
                                           (_tl170120170135_
                                            (##cdr _e170118170130_)))
                                       (if (eq? (gx#stx-e _hd170119170133_)
                                                'import:)
                                           (let ((_in170138_ _tl170120170135_))
                                             (if (gx#stx-list? _in170138_)
                                                 (let _lp170140_ ((_in-rest170142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in170138_)
                          (_r170143_ _r170089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e170144170151_
                                                           _in-rest170142_)
                                                          (_E170146170155_
                                                           (lambda ()
                                                             (_K170087_
                                                              _rest170088_
                                                              _r170143_)))
                                                          (_E170145170201_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e170144170151_)
                         (let ((_e170147170159_ (gx#syntax-e _e170144170151_)))
                           (let ((_hd170148170162_ (##car _e170147170159_))
                                 (_tl170149170164_ (##cdr _e170147170159_)))
                             (let* ((_hd170167_ _hd170148170162_)
                                    (_in-rest170169_ _tl170149170164_))
                               (if '#t
                                   (let ((_src170199_
                                          (if (gx#core-bound-module?
                                               _hd170167_)
                                              (gx#syntax-local-e__0 _hd170167_)
                                              (if (gx#core-library-module-path?
                                                   _hd170167_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd170167_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd170167_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd170167_))
                                                      (if (gx#stx-string?
                                                           _hd170167_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd170167_
                                                            (gx#stx-source
                                                             _stx169933_)))
                                                          (let* ((_e170170170177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd170167_)
                         (_E170172170181_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx169933_
                             _hd170167_)))
                         (_E170171170195_
                          (lambda ()
                            (if (gx#stx-pair? _e170170170177_)
                                (let ((_e170173170185_
                                       (gx#syntax-e _e170170170177_)))
                                  (let ((_hd170174170188_
                                         (##car _e170173170185_))
                                        (_tl170175170190_
                                         (##cdr _e170173170185_)))
                                    (if (eq? (gx#stx-e _hd170174170188_) 'in:)
                                        (let ((_spath170193_ _tl170175170190_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath170193_
                                               _stx169933_)
                                              (_E170172170181_)))
                                        (_E170172170181_))))
                                (_E170172170181_)))))
                    (_E170171170195_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp170140_
                                      _in-rest170169_
                                      (_export-imports169938_
                                       _src170199_
                                       _r170143_)))
                                   (_E170146170155_)))))
                         (_E170146170155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E170145170201_)))
                                                 (_E170117170126_)))
                                           (_E170117170126_))))
                                   (_E170117170126_))))
                            (_E170094170244_
                             (lambda ()
                               (if (gx#stx-pair? _e170090170122_)
                                   (let ((_e170108170209_
                                          (gx#syntax-e _e170090170122_)))
                                     (let ((_hd170109170212_
                                            (##car _e170108170209_))
                                           (_tl170110170214_
                                            (##cdr _e170108170209_)))
                                       (if (eq? (gx#stx-e _hd170109170212_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl170110170214_)
                                               (let ((_e170111170217_
                                                      (gx#syntax-e
                                                       _tl170110170214_)))
                                                 (let ((_hd170112170220_
                                                        (##car _e170111170217_))
                                                       (_tl170113170222_
                                                        (##cdr _e170111170217_)))
                                                   (let ((_id170225_
                                                          _hd170112170220_))
                                                     (if (gx#stx-pair?
                                                          _tl170113170222_)
                                                         (let ((_e170114170227_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl170113170222_)))
                   (let ((_hd170115170230_ (##car _e170114170227_))
                         (_tl170116170232_ (##cdr _e170114170227_)))
                     (let ((_name170235_ _hd170115170230_))
                       (if (gx#stx-null? _tl170116170232_)
                           (if '#t
                               (let* ((_phi170237_
                                       (gx#current-export-expander-phi))
                                      (_$e170239_
                                       (gx#core-resolve-identifier__1
                                        _id170225_
                                        _phi170237_)))
                                 (if _$e170239_
                                     ((lambda (_bind170242_)
                                        (_K170087_
                                         _rest170088_
                                         (cons (_make-export__177376177377_
                                                _bind170242_
                                                _phi170237_
                                                (gx#current-expander-context)
                                                _name170235_)
                                               _r170089_)))
                                      _$e170239_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx169933_
                                      _hd170086_
                                      _id170225_)))
                               (_E170107170205_))
                           (_E170107170205_)))))
                 (_E170107170205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E170107170205_))
                                           (_E170107170205_))))
                                   (_E170107170205_))))
                            (_E170093170293_
                             (lambda ()
                               (if (gx#stx-pair? _e170090170122_)
                                   (let ((_e170095170248_
                                          (gx#syntax-e _e170090170122_)))
                                     (let ((_hd170096170251_
                                            (##car _e170095170248_))
                                           (_tl170097170253_
                                            (##cdr _e170095170248_)))
                                       (if (eq? (gx#stx-e _hd170096170251_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl170097170253_)
                                               (let ((_e170098170256_
                                                      (gx#syntax-e
                                                       _tl170097170253_)))
                                                 (let ((_hd170099170259_
                                                        (##car _e170098170256_))
                                                       (_tl170100170261_
                                                        (##cdr _e170098170256_)))
                                                   (let ((_phi170264_
                                                          _hd170099170259_))
                                                     (if (gx#stx-pair?
                                                          _tl170100170261_)
                                                         (let ((_e170101170266_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl170100170261_)))
                   (let ((_hd170102170269_ (##car _e170101170266_))
                         (_tl170103170271_ (##cdr _e170101170266_)))
                     (let ((_id170274_ _hd170102170269_))
                       (if (gx#stx-pair? _tl170103170271_)
                           (let ((_e170104170276_
                                  (gx#syntax-e _tl170103170271_)))
                             (let ((_hd170105170279_ (##car _e170104170276_))
                                   (_tl170106170281_ (##cdr _e170104170276_)))
                               (let ((_name170284_ _hd170105170279_))
                                 (if (gx#stx-null? _tl170106170281_)
                                     (if (and (gx#stx-fixnum? _phi170264_)
                                              (gx#identifier? _id170274_)
                                              (gx#identifier? _name170284_))
                                         (let* ((_phi170286_
                                                 (gx#stx-e _phi170264_))
                                                (_$e170288_
                                                 (gx#core-resolve-identifier__1
                                                  _id170274_
                                                  _phi170286_)))
                                           (if _$e170288_
                                               ((lambda (_bind170291_)
                                                  (_K170087_
                                                   _rest170088_
                                                   (cons (_make-export__177376177377_
                                                          _bind170291_
                                                          _phi170286_
                                                          (gx#current-expander-context)
                                                          _name170284_)
                                                         _r170089_)))
                                                _$e170288_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx169933_
                                                _hd170086_
                                                _id170274_)))
                                         (_E170094170244_))
                                     (_E170094170244_)))))
                           (_E170094170244_)))))
                 (_E170094170244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E170094170244_))
                                           (_E170094170244_))))
                                   (_E170094170244_))))
                            (_E170092170304_
                             (lambda ()
                               (let ((_id170297_ _e170090170122_))
                                 (if (gx#identifier? _id170297_)
                                     (let ((_$e170299_
                                            (gx#core-resolve-identifier__1
                                             _id170297_
                                             (gx#current-export-expander-phi))))
                                       (if _$e170299_
                                           ((lambda (_bind170302_)
                                              (_K170087_
                                               _rest170088_
                                               (cons (_make-export__0__177378177381_
                                                      _bind170302_)
                                                     _r170089_)))
                                            _$e170299_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx169933_
                                            _hd170086_)))
                                     (_E170093170293_)))))
                            (_E170091170368_
                             (lambda ()
                               (if (eq? (gx#stx-e _e170090170122_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx170308_
                                               (gx#current-expander-context))
                                              (_current-phi170310_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx170312_
                                               (gx#core-context-shift
                                                _current-ctx170308_
                                                _current-phi170310_))
                                              (_phi-bind170314_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx170312_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp170317_ ((_bind-rest170319_
                                                           _phi-bind170314_)
                                                          (_set170320_ '()))
                                           (let* ((_bind-rest170321170331_
                                                   _bind-rest170319_)
                                                  (_else170323170339_
                                                   (lambda ()
                                                     (_K170087_
                                                      _rest170088_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi170310_
                                                             _set170320_)
                                                            _r170089_))))
                                                  (_K170325170349_
                                                   (lambda (_bind-rest170342_
                                                            _bind170343_
                                                            _key170344_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind170343_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind170343_))
                                                         (_lp170317_
                                                          _bind-rest170342_
                                                          _set170320_)
                                                         (_lp170317_
                                                          _bind-rest170342_
                                                          (cons (_make-export__2__177380177383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind170343_
                         _current-phi170310_
                         _current-ctx170308_)
                        _set170320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest170321170331_)
                                                 (let ((_hd170326170352_
                                                        (##car _bind-rest170321170331_))
                                                       (_tl170327170354_
                                                        (##cdr _bind-rest170321170331_)))
                                                   (if (##pair? _hd170326170352_)
                                                       (let ((_hd170328170357_
                                                              (##car _hd170326170352_))
                                                             (_tl170329170359_
                                                              (##cdr _hd170326170352_)))
                                                         (let* ((_key170362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd170328170357_)
                        (_bind170364_ _tl170329170359_)
                        (_bind-rest170366_ _tl170327170354_))
                   (_K170325170349_
                    _bind-rest170366_
                    _bind170364_
                    _key170362_)))
               (_else170323170339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else170323170339_)))))
                                       (_E170092170304_))
                                   (_E170092170304_)))))
                       (_E170091170368_))))
                  (_export-imports169938_
                   (lambda (_src169962_ _r169963_)
                     (letrec* ((_current-ctx169965_
                                (gx#current-expander-context))
                               (_current-phi169966_
                                (gx#current-export-expander-phi))
                               (_import->export169967_
                                (lambda (_in170048_)
                                  (let* ((_in170049170057_ _in170048_)
                                         (_E170051170061_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in170049170057_)))
                                         (_K170052170068_
                                          (lambda (_phi170064_
                                                   _key170065_
                                                   _out170066_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx169965_
                                             _key170065_
                                             _phi170064_
                                             _key170065_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in170049170057_
                                         'gx#module-import::t)
                                        (let* ((_e170053170071_
                                                (##unchecked-structure-ref
                                                 _in170049170057_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out170074_ _e170053170071_)
                                               (_e170054170076_
                                                (##unchecked-structure-ref
                                                 _in170049170057_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key170079_ _e170054170076_)
                                               (_e170055170081_
                                                (##unchecked-structure-ref
                                                 _in170049170057_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi170084_ _e170055170081_))
                                          (_K170052170068_
                                           _phi170084_
                                           _key170079_
                                           _out170074_))
                                        (_E170051170061_)))))
                               (_fold-e169968_
                                (lambda (_in169970_ _r169971_)
                                  (let* ((_in169972169986_ _in169970_)
                                         (_else169975169994_
                                          (lambda () _r169971_)))
                                    (let ((_K169981170030_
                                           (lambda (_phi170026_
                                                    _key170027_
                                                    _out170028_)
                                             (if (and (fx= _phi170026_
                                                           _current-phi169966_)
                                                      (eq? _src169962_
                                                           (##unchecked-structure-ref
                                                            _out170028_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export169967_
                                                        _in169970_)
                                                       _r169971_)
                                                 _r169971_)))
                                          (_K169977170005_
                                           (lambda (_imports169998_
                                                    _phi169999_
                                                    _ctx170000_)
                                             (if (and (fx= _phi169999_
                                                           _current-phi169966_)
                                                      (eq? _src169962_
                                                           _ctx170000_))
                                                 (foldl1 (lambda (_in170002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r170003_)
                   (cons (_import->export169967_ _in170002_) _r170003_))
                 _r169971_
                 _imports169998_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r169971_))))
                                      (let ((_try-match169974170023_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in169972169986_
                                                    'gx#import-set::t)
                                                   (let* ((_e169978170008_
                                                           (##unchecked-structure-ref
                                                            _in169972169986_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e169979170013_
                                                           (##unchecked-structure-ref
                                                            _in169972169986_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e169980170018_
                                                           (##unchecked-structure-ref
                                                            _in169972169986_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx170011_
                                                            _e169978170008_)
                                                           (_phi170016_
                                                            _e169979170013_)
                                                           (_imports170021_
                                                            _e169980170018_))
                                                       (_K169977170005_
                                                        _imports170021_
                                                        _phi170016_
                                                        _ctx170011_)))
                                                   (_else169975169994_)))))
                                        (if (##structure-direct-instance-of?
                                             _in169972169986_
                                             'gx#module-import::t)
                                            (let* ((_e169982170033_
                                                    (##unchecked-structure-ref
                                                     _in169972169986_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e169983170038_
                                                    (##unchecked-structure-ref
                                                     _in169972169986_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e169984170043_
                                                    (##unchecked-structure-ref
                                                     _in169972169986_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out170036_
                                                     _e169982170033_)
                                                    (_key170041_
                                                     _e169983170038_)
                                                    (_phi170046_
                                                     _e169984170043_))
                                                (_K169981170030_
                                                 _phi170046_
                                                 _key170041_
                                                 _out170036_)))
                                            (_try-match169974170023_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src169962_
                              _current-phi169966_
                              (foldl1 _fold-e169968_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx169965_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r169963_))))
                  (_export!169939_
                   (lambda (_rbody169952_)
                     (letrec* ((_current-ctx169954_
                                (gx#current-expander-context))
                               (_fold-e169955_
                                (lambda (_out169959_ _r169960_)
                                  (if (##structure-direct-instance-of?
                                       _out169959_
                                       'gx#module-export::t)
                                      (cons _out169959_ _r169960_)
                                      (if (##structure-direct-instance-of?
                                           _out169959_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r169960_
                                                  (##unchecked-structure-ref
                                                   _out169959_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r169960_)))))
                       (let ((_body169957_ (reverse _rbody169952_)))
                         (##unchecked-structure-set!
                          _current-ctx169954_
                          (foldl1 _fold-e169955_
                                  (##unchecked-structure-ref
                                   _current-ctx169954_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body169957_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body169957_))))
                  (_expanded-export?169940_
                   (lambda (_e169947_)
                     (let ((_$e169949_
                            (##structure-direct-instance-of?
                             _e169947_
                             'gx#module-export::t)))
                       (if _$e169949_
                           _$e169949_
                           (##structure-direct-instance-of?
                            _e169947_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?169934_)
              (let ((_rbody169945_
                     (gx#core-expand-import/export
                      _stx169933_
                      _expanded-export?169940_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1169937_)))
                (if _internal-expand?169934_
                    (reverse _rbody169945_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!169939_ _rbody169945_))
                     (gx#stx-source _stx169933_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx169933_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx169933_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx170418_)
        (let ((_internal-expand?170420_ '#f))
          (gx#core-expand-export%__% _stx170418_ _internal-expand?170420_))))
    (define gx#core-expand-export%
      (lambda _g177451_
        (let ((_g177450_ (##length _g177451_)))
          (cond ((##fx= _g177450_ 1)
                 (apply (lambda (_stx170418_)
                          (gx#core-expand-export%__0 _stx170418_))
                        _g177451_))
                ((##fx= _g177450_ 2)
                 (apply (lambda (_stx170422_ _internal-expand?170423_)
                          (gx#core-expand-export%__%
                           _stx170422_
                           _internal-expand?170423_))
                        _g177451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g177451_))))))
    (define gx#core-expand-export-source
      (lambda (_hd169930_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd169930_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx169900_)
        (let* ((_e169901169908_ _stx169900_)
               (_E169903169912_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169901169908_)))
               (_E169902169926_
                (lambda ()
                  (if (gx#stx-pair? _e169901169908_)
                      (let ((_e169904169916_ (gx#syntax-e _e169901169908_)))
                        (let ((_hd169905169919_ (##car _e169904169916_))
                              (_tl169906169921_ (##cdr _e169904169916_)))
                          (let ((_body169924_ _tl169906169921_))
                            (if (gx#identifier-list? _body169924_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body169924_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body169924_))
                                   (gx#stx-source _stx169900_)))
                                (_E169903169912_)))))
                      (_E169903169912_)))))
          (_E169902169926_))))
    (define gx#core-bind-feature!__%
      (lambda (_id169866_ _private?169867_ _phi169868_ _ctx169869_)
        (gx#core-bind-syntax!__%
         _id169866_
         ((if _private?169867_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id169866_))
         _private?169867_
         _phi169868_
         _ctx169869_)))
    (define gx#core-bind-feature!__0
      (lambda (_id169874_)
        (let* ((_private?169876_ '#f)
               (_phi169878_ (gx#current-expander-phi))
               (_ctx169880_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id169874_
           _private?169876_
           _phi169878_
           _ctx169880_))))
    (define gx#core-bind-feature!__1
      (lambda (_id169882_ _private?169883_)
        (let* ((_phi169885_ (gx#current-expander-phi))
               (_ctx169887_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id169882_
           _private?169883_
           _phi169885_
           _ctx169887_))))
    (define gx#core-bind-feature!__2
      (lambda (_id169889_ _private?169890_ _phi169891_)
        (let ((_ctx169893_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id169889_
           _private?169890_
           _phi169891_
           _ctx169893_))))
    (define gx#core-bind-feature!
      (lambda _g177453_
        (let ((_g177452_ (##length _g177453_)))
          (cond ((##fx= _g177452_ 1)
                 (apply (lambda (_id169874_)
                          (gx#core-bind-feature!__0 _id169874_))
                        _g177453_))
                ((##fx= _g177452_ 2)
                 (apply (lambda (_id169882_ _private?169883_)
                          (gx#core-bind-feature!__1
                           _id169882_
                           _private?169883_))
                        _g177453_))
                ((##fx= _g177452_ 3)
                 (apply (lambda (_id169889_ _private?169890_ _phi169891_)
                          (gx#core-bind-feature!__2
                           _id169889_
                           _private?169890_
                           _phi169891_))
                        _g177453_))
                ((##fx= _g177452_ 4)
                 (apply (lambda (_id169895_
                                 _private?169896_
                                 _phi169897_
                                 _ctx169898_)
                          (gx#core-bind-feature!__%
                           _id169895_
                           _private?169896_
                           _phi169897_
                           _ctx169898_))
                        _g177453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g177453_))))))))
