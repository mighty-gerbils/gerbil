(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1711108655)
  (begin
    (declare (not safe))
    (define gx#__module-registry (make-hash-table))
    (define gx#__module-pkg-cache (make-hash-table))
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
      (lambda _$args94512_
        (apply make-instance gx#module-import::t _$args94512_)))
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
      (lambda _$args94509_
        (apply make-instance gx#module-export::t _$args94509_)))
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
      (lambda _$args94506_
        (apply make-instance gx#import-set::t _$args94506_)))
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
      (lambda _$args94503_
        (apply make-instance gx#export-set::t _$args94503_)))
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
      (lambda _$args94500_
        (apply make-instance gx#import-expander::t _$args94500_)))
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
      (lambda _$args94497_
        (apply make-instance gx#export-expander::t _$args94497_)))
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
      (lambda _$args94494_
        (apply make-instance gx#import-export-expander::t _$args94494_)))
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
      (lambda (_path94491_ _fun94492_)
        (call-with-input-file
         (cons 'path: (cons _path94491_ gx#source-file-settings))
         _fun94492_)))
    (define gx#module-context:::init!
      (lambda (_self94485_ _id94486_ _super94487_ _ns94488_ _path94489_)
        (if (##fx< '11 (##structure-length _self94485_))
            (begin
              (##unchecked-structure-set!
               _self94485_
               _id94486_
               '1
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               (make-hash-table-eq)
               '2
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               _super94487_
               '3
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               '#f
               '4
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               '#f
               '5
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               _ns94488_
               '6
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               _path94489_
               '7
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               '()
               '8
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               '()
               '9
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               '#f
               '10
               (##structure-type _self94485_)
               '#f)
              (##unchecked-structure-set!
               _self94485_
               '#f
               '11
               (##structure-type _self94485_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94485_
                   '11
                   (##vector-length _self94485_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self94329_ _ctx94330_ _root94331_)
        (let ((_super94339_
               (let ((_$e94333_ _root94331_))
                 (if _$e94333_
                     _$e94333_
                     (let ((_$e94336_ (gx#core-context-root__0)))
                       (if _$e94336_
                           _$e94336_
                           (let ((__obj94554
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94555
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94554
                                     ':init!)))
                               (if __constructor94555
                                   (__constructor94555 __obj94554)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94554)))))))
          (if _ctx94330_
              (let ((_id94342_
                     (##structure-ref
                      _ctx94330_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path94343_
                     (##structure-ref _ctx94330_ '7 gx#module-context::t '#f))
                    (_in94344_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx94330_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e94345_
                     (make-promise (lambda () (gx#eval-module _ctx94330_)))))
                (if (##fx< '8 (##structure-length _self94329_))
                    (begin
                      (##unchecked-structure-set!
                       _self94329_
                       _id94342_
                       '1
                       (##structure-type _self94329_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94329_
                       (make-hash-table-eq 'size: (length _in94344_))
                       '2
                       (##structure-type _self94329_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94329_
                       _super94339_
                       '3
                       (##structure-type _self94329_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94329_
                       '#f
                       '4
                       (##structure-type _self94329_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94329_
                       '#f
                       '5
                       (##structure-type _self94329_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94329_
                       _path94343_
                       '6
                       (##structure-type _self94329_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94329_
                       _in94344_
                       '7
                       (##structure-type _self94329_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94329_
                       _e94345_
                       '8
                       (##structure-type _self94329_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self94329_
                           '8
                           (##vector-length _self94329_)))
                (for-each
                 (lambda (_g9434694348_)
                   (gx#core-bind-weak-import!__% _g9434694348_ _self94329_))
                 _in94344_))
              (if (##fx< '8 (##structure-length _self94329_))
                  (begin
                    (##unchecked-structure-set!
                     _self94329_
                     '#f
                     '1
                     (##structure-type _self94329_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94329_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self94329_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94329_
                     _super94339_
                     '3
                     (##structure-type _self94329_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94329_
                     '#f
                     '4
                     (##structure-type _self94329_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94329_
                     '#f
                     '5
                     (##structure-type _self94329_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94329_
                     '#f
                     '6
                     (##structure-type _self94329_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94329_
                     '()
                     '7
                     (##structure-type _self94329_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94329_
                     '#f
                     '8
                     (##structure-type _self94329_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self94329_
                         '8
                         (##vector-length _self94329_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self94354_ _ctx94355_)
        (let ((_root94357_ '#f))
          (gx#prelude-context:::init!__% _self94354_ _ctx94355_ _root94357_))))
    (define gx#prelude-context:::init!
      (lambda _g94561_
        (let ((_g94560_ (##length _g94561_)))
          (cond ((##fx= _g94560_ 2)
                 (apply (lambda (_self94354_ _ctx94355_)
                          (gx#prelude-context:::init!__0
                           _self94354_
                           _ctx94355_))
                        _g94561_))
                ((##fx= _g94560_ 3)
                 (apply (lambda (_self94359_ _ctx94360_ _root94361_)
                          (gx#prelude-context:::init!__%
                           _self94359_
                           _ctx94360_
                           _root94361_))
                        _g94561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94561_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self94203_ _e94204_)
        (if (##fx< '3 (##structure-length _self94203_))
            (begin
              (##unchecked-structure-set!
               _self94203_
               _e94204_
               '1
               (##structure-type _self94203_)
               '#f)
              (##unchecked-structure-set!
               _self94203_
               (gx#current-expander-context)
               '2
               (##structure-type _self94203_)
               '#f)
              (##unchecked-structure-set!
               _self94203_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self94203_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94203_
                   '3
                   (##vector-length _self94203_)))))
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
      (lambda (_g9382993832_ _g9383093834_)
        (gx#core-apply-user-expander__%
         _g9382993832_
         _g9383093834_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9370093703_ _g9370193705_)
        (gx#core-apply-user-expander__%
         _g9370093703_
         _g9370193705_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93571_)
        (let* ((_path93573_
                (##structure-ref _ctx93571_ '7 gx#module-context::t '#f))
               (_path93575_
                (if (pair? _path93573_) (last _path93573_) _path93573_)))
          (if (string? _path93575_) _path93575_ '#f))))
    (define gx#import-module__%
      (lambda (_path93547_ _reload?93548_ _eval?93549_)
        (let ((_ctx93551_
               ((gx#current-expander-module-import)
                _path93547_
                _reload?93548_)))
          (if (and _ctx93551_ _eval?93549_)
              (gx#eval-module _ctx93551_)
              '#!void)
          _ctx93551_)))
    (define gx#import-module__0
      (lambda (_path93556_)
        (let* ((_reload?93558_ '#f) (_eval?93560_ '#f))
          (gx#import-module__% _path93556_ _reload?93558_ _eval?93560_))))
    (define gx#import-module__1
      (lambda (_path93562_ _reload?93563_)
        (let ((_eval?93565_ '#f))
          (gx#import-module__% _path93562_ _reload?93563_ _eval?93565_))))
    (define gx#import-module
      (lambda _g94563_
        (let ((_g94562_ (##length _g94563_)))
          (cond ((##fx= _g94562_ 1)
                 (apply (lambda (_path93556_)
                          (gx#import-module__0 _path93556_))
                        _g94563_))
                ((##fx= _g94562_ 2)
                 (apply (lambda (_path93562_ _reload?93563_)
                          (gx#import-module__1 _path93562_ _reload?93563_))
                        _g94563_))
                ((##fx= _g94562_ 3)
                 (apply (lambda (_path93567_ _reload?93568_ _eval?93569_)
                          (gx#import-module__%
                           _path93567_
                           _reload?93568_
                           _eval?93569_))
                        _g94563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94563_))))))
    (define gx#eval-module
      (lambda (_mod93544_) ((gx#current-expander-module-eval) _mod93544_)))
    (define gx#core-eval-module
      (lambda (_obj93529_)
        (letrec ((_force-e93531_
                  (lambda (_getf93540_ _e93541_)
                    (call-with-parameters
                     (lambda () (force (_getf93540_ _e93541_)))
                     gx#current-expander-context
                     _e93541_
                     gx#current-expander-phi
                     '0))))
          (let _recur93533_ ((_e93535_ _obj93529_))
            (if (##structure-instance-of? _e93535_ 'gx#module-context::t)
                (begin
                  (let ((_$e93537_ (gx#core-context-prelude__% _e93535_)))
                    (if _$e93537_ (_recur93533_ _$e93537_) '#!void))
                  (_force-e93531_ gx#module-context-e _e93535_))
                (if (##structure-instance-of? _e93535_ 'gx#prelude-context::t)
                    (_force-e93531_ gx#prelude-context-e _e93535_)
                    (if (gx#stx-string? _e93535_)
                        (_recur93533_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93535_)))
                        (if (gx#core-library-module-path? _e93535_)
                            (_recur93533_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93535_)))
                            (error '"Cannot eval module" _obj93529_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93512_)
        (let _lp93514_ ((_e93516_ _ctx93512_))
          (if (or (##structure-instance-of? _e93516_ 'gx#module-context::t)
                  (##structure-instance-of? _e93516_ 'gx#local-context::t))
              (_lp93514_
               (##unchecked-structure-ref _e93516_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93516_ 'gx#prelude-context::t)
                  _e93516_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93525_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93525_))))
    (define gx#core-context-prelude
      (lambda _g94565_
        (let ((_g94564_ (##length _g94565_)))
          (cond ((##fx= _g94564_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94565_))
                ((##fx= _g94564_ 1)
                 (apply (lambda (_ctx93527_)
                          (gx#core-context-prelude__% _ctx93527_))
                        _g94565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94565_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93504_)
        (let ((_$e93506_ (hash-get gx#__module-registry _ctx93504_)))
          (if _$e93506_
              _$e93506_
              (let ((_pre93509_
                     (let ((__obj94556
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
                       (gx#prelude-context:::init! __obj94556 _ctx93504_)
                       __obj94556)))
                (hash-put! gx#__module-registry _ctx93504_ _pre93509_)
                _pre93509_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93385_ _reload?93386_)
        (letrec ((_import-source93388_
                  (lambda (_path93473_)
                    (if (member _path93473_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93473_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94566_ (gx#core-read-module _path93473_)))
                         (begin
                           (let ((_g94567_
                                  (if (##values? _g94566_)
                                      (##vector-length _g94566_)
                                      1)))
                             (if (not (##fx= _g94567_ 4))
                                 (error "Context expects 4 values" _g94567_)))
                           (let ((_pre93476_ (##vector-ref _g94566_ 0))
                                 (_id93477_ (##vector-ref _g94566_ 1))
                                 (_ns93478_ (##vector-ref _g94566_ 2))
                                 (_body93479_ (##vector-ref _g94566_ 3)))
                             (let* ((_prelude93484_
                                     (if (##structure-instance-of?
                                          _pre93476_
                                          'gx#prelude-context::t)
                                         _pre93476_
                                         (if (##structure-instance-of?
                                              _pre93476_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93476_)
                                             (if (string? _pre93476_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93476_))
                                                 (if (not _pre93476_)
                                                     (let ((_$e93481_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93481_
                                                           _$e93481_
                                                           (let ((__obj94557
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
                     (gx#prelude-context:::init! __obj94557 '#f)
                     __obj94557)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93385_
                                                            _pre93476_))))))
                                    (_ctx93486_
                                     (let ((__obj94558
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
                                        __obj94558
                                        _id93477_
                                        _prelude93484_
                                        _ns93478_
                                        _path93473_)
                                       __obj94558))
                                    (_body93488_
                                     (gx#core-expand-module-begin
                                      _body93479_
                                      _ctx93486_))
                                    (_body93490_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93488_)
                                      _path93473_
                                      _ctx93486_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93486_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93490_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93486_
                                _body93490_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93473_
                                _ctx93486_)
                               (hash-put!
                                gx#__module-registry
                                _id93477_
                                _ctx93486_)
                               _ctx93486_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93473_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93389_
                  (lambda (_rpath93401_)
                    (let* ((_rpath9340293409_ _rpath93401_)
                           (_E9340493413_
                            (lambda ()
                              (error '"No clause matching" _rpath9340293409_)))
                           (_K9340593461_
                            (lambda (_refs93416_ _origin93417_)
                              (let ((_ctx93419_
                                     (if _origin93417_
                                         (gx#core-import-module__%
                                          _origin93417_
                                          _reload?93386_)
                                         (gx#current-expander-context))))
                                (let _lp93421_ ((_rest93423_ _refs93416_)
                                                (_ctx93424_ _ctx93419_))
                                  (let* ((_rest9342593433_ _rest93423_)
                                         (_else9342793441_
                                          (lambda () _ctx93424_))
                                         (_K9342993449_
                                          (lambda (_rest93444_ _id93445_)
                                            (let ((_bind93447_
                                                   (gx#resolve-identifier__%
                                                    _id93445_
                                                    '0
                                                    _ctx93424_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93447_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93447_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93421_
                                                   _rest93444_
                                                   (##unchecked-structure-ref
                                                    _bind93447_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93401_
                                                         _id93445_
                                                         _bind93447_))))))
                                    (if (##pair? _rest9342593433_)
                                        (let ((_hd9343093452_
                                               (##car _rest9342593433_))
                                              (_tl9343193454_
                                               (##cdr _rest9342593433_)))
                                          (let* ((_id93457_ _hd9343093452_)
                                                 (_rest93459_ _tl9343193454_))
                                            (_K9342993449_
                                             _rest93459_
                                             _id93457_)))
                                        (_else9342793441_))))))))
                      (if (##pair? _rpath9340293409_)
                          (let ((_hd9340693464_ (##car _rpath9340293409_))
                                (_tl9340793466_ (##cdr _rpath9340293409_)))
                            (let* ((_origin93469_ _hd9340693464_)
                                   (_refs93471_ _tl9340793466_))
                              (_K9340593461_ _refs93471_ _origin93469_)))
                          (_E9340493413_))))))
          (let ((_$e93391_
                 (if (not _reload?93386_)
                     (hash-get gx#__module-registry _rpath93385_)
                     '#f)))
            (if _$e93391_
                (values _$e93391_)
                (if (list? _rpath93385_)
                    (_import-submodule93389_ _rpath93385_)
                    (if (gx#core-library-module-path? _rpath93385_)
                        (let ((_ctx93394_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93385_)
                                _reload?93386_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93385_
                           _ctx93394_)
                          _ctx93394_)
                        (let* ((_npath93396_ (path-normalize _rpath93385_))
                               (_$e93398_
                                (if (not _reload?93386_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93396_)
                                    '#f)))
                          (if _$e93398_
                              _$e93398_
                              (_import-source93388_ _npath93396_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93497_)
        (let ((_reload?93499_ '#f))
          (gx#core-import-module__% _rpath93497_ _reload?93499_))))
    (define gx#core-import-module
      (lambda _g94569_
        (let ((_g94568_ (##length _g94569_)))
          (cond ((##fx= _g94568_ 1)
                 (apply (lambda (_rpath93497_)
                          (gx#core-import-module__0 _rpath93497_))
                        _g94569_))
                ((##fx= _g94568_ 2)
                 (apply (lambda (_rpath93501_ _reload?93502_)
                          (gx#core-import-module__%
                           _rpath93501_
                           _reload?93502_))
                        _g94569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94569_))))))
    (define gx#core-read-module
      (lambda (_path93374_)
        (with-catch
         (lambda (_exn93376_)
           (if (and (datum-parsing-exception? _exn93376_)
                    (eq? (datum-parsing-exception-filepos _exn93376_) '0))
               (gx#core-read-module/lang _path93374_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93374_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9337893380_)
                      (display-exception _exn93376_ _g9337893380_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93374_)))))
    (define gx#core-read-module/sexp
      (lambda (_path93237_)
        (let _lp93239_ ((_body93241_ (read-syntax-from-file _path93237_))
                        (_pre93242_ '#f)
                        (_ns93243_ '#f)
                        (_pkg93244_ '#f))
          (let* ((_e9324593269_ _body93241_)
                 (_E9326193291_
                  (lambda ()
                    (let ((_g94570_
                           (if _pkg93244_
                               (values _pre93242_ _ns93243_ _pkg93244_)
                               (gx#core-read-module-package
                                _path93237_
                                _pre93242_
                                _ns93243_))))
                      (begin
                        (let ((_g94571_
                               (if (##values? _g94570_)
                                   (##vector-length _g94570_)
                                   1)))
                          (if (not (##fx= _g94571_ 3))
                              (error "Context expects 3 values" _g94571_)))
                        (let ((_pre93273_ (##vector-ref _g94570_ 0))
                              (_ns93274_ (##vector-ref _g94570_ 1))
                              (_pkg93275_ (##vector-ref _g94570_ 2)))
                          (let* ((_prelude93277_
                                  (if (gx#core-bound-module-prelude?
                                       _pre93273_)
                                      (gx#syntax-local-e__0 _pre93273_)
                                      (if (gx#core-library-module-path?
                                           _pre93273_)
                                          (gx#core-resolve-library-module-path
                                           _pre93273_)
                                          (if (gx#stx-string? _pre93273_)
                                              (gx#core-resolve-module-path__%
                                               _pre93273_
                                               _path93237_)
                                              (gx#stx-e _pre93273_)))))
                                 (_path-id93279_
                                  (gx#core-module-path->namespace _path93237_))
                                 (_pkg-id93281_
                                  (if _pkg93275_
                                      (string-append
                                       _pkg93275_
                                       '"/"
                                       _path-id93279_)
                                      _path-id93279_))
                                 (_module-id93283_
                                  (string->symbol _pkg-id93281_))
                                 (_module-ns93288_
                                  (if (eq? _ns93274_ '#!void)
                                      '#f
                                      (let ((_$e93285_ _ns93274_))
                                        (if _$e93285_
                                            _$e93285_
                                            _pkg-id93281_)))))
                            (values _prelude93277_
                                    _module-id93283_
                                    _module-ns93288_
                                    _body93241_)))))))
                 (_E9325493320_
                  (lambda ()
                    (if (gx#stx-pair? _e9324593269_)
                        (let ((_e9326293295_ (gx#syntax-e _e9324593269_)))
                          (let ((_hd9326393298_ (##car _e9326293295_))
                                (_tl9326493300_ (##cdr _e9326293295_)))
                            (if (eq? (gx#stx-e _hd9326393298_) 'package:)
                                (if (gx#stx-pair? _tl9326493300_)
                                    (let ((_e9326593303_
                                           (gx#syntax-e _tl9326493300_)))
                                      (let ((_hd9326693306_
                                             (##car _e9326593303_))
                                            (_tl9326793308_
                                             (##cdr _e9326593303_)))
                                        (let* ((_pkg93311_ _hd9326693306_)
                                               (_rest93313_ _tl9326793308_))
                                          (if '#t
                                              (let ((_pkg93318_
                                                     (if (gx#identifier?
                                                          _pkg93311_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg93311_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg93311_)
                         (gx#stx-false? _pkg93311_))
                     (gx#stx-e _pkg93311_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg93311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93239_
                                                 _rest93313_
                                                 _pre93242_
                                                 _ns93243_
                                                 _pkg93318_))
                                              (_E9326193291_)))))
                                    (_E9326193291_))
                                (_E9326193291_))))
                        (_E9326193291_))))
                 (_E9324793346_
                  (lambda ()
                    (if (gx#stx-pair? _e9324593269_)
                        (let ((_e9325593324_ (gx#syntax-e _e9324593269_)))
                          (let ((_hd9325693327_ (##car _e9325593324_))
                                (_tl9325793329_ (##cdr _e9325593324_)))
                            (if (eq? (gx#stx-e _hd9325693327_) 'namespace:)
                                (if (gx#stx-pair? _tl9325793329_)
                                    (let ((_e9325893332_
                                           (gx#syntax-e _tl9325793329_)))
                                      (let ((_hd9325993335_
                                             (##car _e9325893332_))
                                            (_tl9326093337_
                                             (##cdr _e9325893332_)))
                                        (let* ((_ns93340_ _hd9325993335_)
                                               (_rest93342_ _tl9326093337_))
                                          (if '#t
                                              (let ((_ns93344_
                                                     (if (gx#identifier?
                                                          _ns93340_)
                                                         (symbol->string
                                                          (gx#stx-e _ns93340_))
                                                         (if (gx#stx-string?
                                                              _ns93340_)
                                                             (gx#stx-e
                                                              _ns93340_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns93340_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns93340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93239_
                                                 _rest93342_
                                                 _pre93242_
                                                 _ns93344_
                                                 _pkg93244_))
                                              (_E9325493320_)))))
                                    (_E9325493320_))
                                (_E9325493320_))))
                        (_E9325493320_))))
                 (_E9324693370_
                  (lambda ()
                    (if (gx#stx-pair? _e9324593269_)
                        (let ((_e9324893350_ (gx#syntax-e _e9324593269_)))
                          (let ((_hd9324993353_ (##car _e9324893350_))
                                (_tl9325093355_ (##cdr _e9324893350_)))
                            (if (eq? (gx#stx-e _hd9324993353_) 'prelude:)
                                (if (gx#stx-pair? _tl9325093355_)
                                    (let ((_e9325193358_
                                           (gx#syntax-e _tl9325093355_)))
                                      (let ((_hd9325293361_
                                             (##car _e9325193358_))
                                            (_tl9325393363_
                                             (##cdr _e9325193358_)))
                                        (let* ((_prelude93366_ _hd9325293361_)
                                               (_rest93368_ _tl9325393363_))
                                          (if '#t
                                              (_lp93239_
                                               _rest93368_
                                               _prelude93366_
                                               _ns93243_
                                               _pkg93244_)
                                              (_E9324793346_)))))
                                    (_E9324793346_))
                                (_E9324793346_))))
                        (_E9324793346_)))))
            (_E9324693370_)))))
    (define gx#core-read-module/lang
      (lambda (_path93064_)
        (letrec ((_default-read-module-body93066_
                  (lambda (_inp93229_)
                    (let _lp93231_ ((_body93233_ '()))
                      (let ((_next93235_ (read-syntax _inp93229_)))
                        (if (eof-object? _next93235_)
                            (reverse _body93233_)
                            (_lp93231_ (cons _next93235_ _body93233_)))))))
                 (_read-body93067_
                  (lambda (_inp93148_
                           _pre93149_
                           _ns93150_
                           _pkg93151_
                           _args93152_)
                    (let ((_g94572_
                           (if _pkg93151_
                               (values _pre93149_ _ns93150_ _pkg93151_)
                               (gx#core-read-module-package
                                _path93064_
                                _pre93149_
                                _ns93150_))))
                      (begin
                        (let ((_g94573_
                               (if (##values? _g94572_)
                                   (##vector-length _g94572_)
                                   1)))
                          (if (not (##fx= _g94573_ 3))
                              (error "Context expects 3 values" _g94573_)))
                        (let ((_pre93154_ (##vector-ref _g94572_ 0))
                              (_ns93155_ (##vector-ref _g94572_ 1))
                              (_pkg93156_ (##vector-ref _g94572_ 2)))
                          (let* ((_prelude93158_
                                  (gx#import-module__0 _pre93154_))
                                 (_read-module-body93212_
                                  (let ((_$e93204_
                                         (find (lambda (_e9315993161_)
                                                 (let* ((_g9316393173_
                                                         _e9315993161_)
                                                        (_else9316593181_
                                                         (lambda () '#f))
                                                        (_K9316793185_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9316393173_
                                                        'gx#module-export::t)
                                                       (let* ((_e9316893188_
                                                               (##unchecked-structure-ref
                                                                _g9316393173_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9316993191_
                                                               (##unchecked-structure-ref
                                                                _g9316393173_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9317093194_
                                                               (##unchecked-structure-ref
                                                                _g9316393173_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9317093194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9317193197_
                            (##unchecked-structure-ref
                             _g9316393173_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9319993201_)
                              (eq? _g9319993201_ 'read-module-body))
                            _e9317193197_)
                           (_K9316793185_)
                           (_else9316593181_)))
                     (_else9316593181_)))
               (_else9316593181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude93158_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e93204_
                                        ((lambda (_xport93207_)
                                           (let ((_proc93210_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport93207_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc93210_)
                                                 _proc93210_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path93064_
                                                  _pre93154_
                                                  _proc93210_))))
                                         _$e93204_)
                                        _default-read-module-body93066_)))
                                 (_path-id93214_
                                  (gx#core-module-path->namespace _path93064_))
                                 (_pkg-id93216_
                                  (if _pkg93156_
                                      (string-append
                                       _pkg93156_
                                       '"/"
                                       _path-id93214_)
                                      _path-id93214_))
                                 (_module-id93218_
                                  (string->symbol _pkg-id93216_))
                                 (_module-ns93223_
                                  (let ((_$e93220_ _ns93155_))
                                    (if _$e93220_ _$e93220_ _pkg-id93216_)))
                                 (_body93226_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body93212_ _inp93148_))
                                   gx#current-module-reader-path
                                   _path93064_
                                   gx#current-module-reader-args
                                   _args93152_)))
                            (values _prelude93158_
                                    _module-id93218_
                                    _module-ns93223_
                                    _body93226_)))))))
                 (_string-e93068_
                  (lambda (_obj93145_ _what93146_)
                    (if (string? _obj93145_)
                        _obj93145_
                        (if (symbol? _obj93145_)
                            (symbol->string _obj93145_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what93146_)
                             _path93064_
                             _obj93145_)))))
                 (_read-lang-args93069_
                  (lambda (_inp93100_ _args93101_)
                    (let* ((_args9310293110_ _args93101_)
                           (_else9310493118_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path93064_)))
                           (_K9310693133_
                            (lambda (_args93121_ _prelude93122_)
                              (let* ((_pkg93124_
                                      (pgetq__0 'package: _args93121_))
                                     (_pkg93126_
                                      (if _pkg93124_
                                          (_string-e93068_
                                           _pkg93124_
                                           '"package")
                                          '#f))
                                     (_ns93128_
                                      (pgetq__0 'namespace: _args93121_))
                                     (_ns93130_
                                      (if _ns93128_
                                          (_string-e93068_
                                           _ns93128_
                                           '"namespace")
                                          '#f)))
                                (_read-body93067_
                                 _inp93100_
                                 _prelude93122_
                                 _ns93130_
                                 _pkg93126_
                                 _args93121_)))))
                      (if (##pair? _args9310293110_)
                          (let ((_hd9310793136_ (##car _args9310293110_))
                                (_tl9310893138_ (##cdr _args9310293110_)))
                            (let* ((_prelude93141_ _hd9310793136_)
                                   (_args93143_ _tl9310893138_))
                              (_K9310693133_ _args93143_ _prelude93141_)))
                          (_else9310493118_)))))
                 (_read-lang93070_
                  (lambda (_inp93075_)
                    (let* ((_head93077_ (read-line _inp93075_))
                           (_$e93079_ (string-index__0 _head93077_ '#\space)))
                      (if _$e93079_
                          ((lambda (_ix93082_)
                             (let ((_lang93084_
                                    (substring _head93077_ '0 _ix93082_)))
                               (if (equal? _lang93084_ '"#lang")
                                   (let* ((_rest93086_
                                           (substring
                                            _head93077_
                                            (fx+ _ix93082_ '1)
                                            (string-length _head93077_)))
                                          (_args93097_
                                           (with-catch
                                            (lambda (_g9308793089_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path93064_
                                               _g9308793089_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest93086_
                                               (lambda (_g9309293094_)
                                                 (read-all
                                                  _g9309293094_
                                                  read)))))))
                                     (_read-lang-args93069_
                                      _inp93075_
                                      _args93097_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path93064_))))
                           _$e93079_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path93064_)))))
                 (_read-e93071_
                  (lambda (_inp93073_)
                    (if (eq? (peek-char _inp93073_) '#\#)
                        (_read-lang93070_ _inp93073_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path93064_)))))
          (gx#call-with-input-source-file _path93064_ _read-e93071_))))
    (define gx#core-read-module-package
      (lambda (_path93018_ _pre93019_ _ns93020_)
        (letrec ((_string-e93022_
                  (lambda (_e93062_)
                    (if (symbol? _e93062_)
                        (symbol->string _e93062_)
                        (if (string? _e93062_)
                            _e93062_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e93062_))))))
          (let _lp93024_ ((_dir93026_ (path-directory _path93018_))
                          (_pkg-path93027_ '()))
            (let ((_gerbil.pkg93029_ (path-expand '"gerbil.pkg" _dir93026_)))
              (if (file-exists? _gerbil.pkg93029_)
                  (let ((_plist93031_
                         (gx#core-library-package-plist__% _dir93026_ '#t)))
                    (if (null? _plist93031_)
                        (let ((_pkg93033_
                               (if (not (null? _pkg-path93027_))
                                   (string-join _pkg-path93027_ '"/")
                                   '#f)))
                          (values _pre93019_ _ns93020_ _pkg93033_))
                        (if (list? _plist93031_)
                            (let* ((_root93035_
                                    (pgetq__0 'package: _plist93031_))
                                   (_pkg93039_
                                    (let ((_pkg-path93037_
                                           (if _root93035_
                                               (cons (_string-e93022_
                                                      _root93035_)
                                                     _pkg-path93027_)
                                               _pkg-path93027_)))
                                      (if (not (null? _pkg-path93037_))
                                          (string-join _pkg-path93037_ '"/")
                                          '#f)))
                                   (_ns93046_
                                    (let ((_ns93044_
                                           (let ((_$e93041_ _ns93020_))
                                             (if _$e93041_
                                                 _$e93041_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist93031_)))))
                                      (if _ns93044_
                                          (_string-e93022_ _ns93044_)
                                          '#f)))
                                   (_pre93051_
                                    (let ((_$e93048_ _pre93019_))
                                      (if _$e93048_
                                          _$e93048_
                                          (pgetq__0 'prelude: _plist93031_)))))
                              (values _pre93051_ _ns93046_ _pkg93039_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist93031_))))
                  (let ((_dir*93054_
                         (path-strip-trailing-directory-separator _dir93026_)))
                    (if (or (string-empty? _dir*93054_)
                            (equal? _dir93026_ _dir*93054_))
                        (values _pre93019_ _ns93020_ '#f)
                        (let ((_xpath93059_ (path-strip-directory _dir*93054_))
                              (_xdir93060_ (path-directory _dir*93054_)))
                          (_lp93024_
                           _xdir93060_
                           (cons _xpath93059_ _pkg-path93027_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path93016_)
        (path-strip-extension (path-strip-directory _path93016_))))
    (define gx#core-module-path->id
      (lambda (_path93014_)
        (string->symbol (gx#core-module-path->namespace _path93014_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path92993_ _rel92994_)
        (let* ((_path92996_ (gx#stx-e _stx-path92993_))
               (_path92998_
                (if (string-empty? (path-extension _path92996_))
                    (string-append _path92996_ '".ss")
                    _path92996_)))
          (gx#core-resolve-path__%
           _path92998_
           (let ((_$e93001_ (gx#stx-source _stx-path92993_)))
             (if _$e93001_ _$e93001_ _rel92994_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path93007_)
        (let ((_rel93009_ '#f))
          (gx#core-resolve-module-path__% _stx-path93007_ _rel93009_))))
    (define gx#core-resolve-module-path
      (lambda _g94575_
        (let ((_g94574_ (##length _g94575_)))
          (cond ((##fx= _g94574_ 1)
                 (apply (lambda (_stx-path93007_)
                          (gx#core-resolve-module-path__0 _stx-path93007_))
                        _g94575_))
                ((##fx= _g94574_ 2)
                 (apply (lambda (_stx-path93011_ _rel93012_)
                          (gx#core-resolve-module-path__%
                           _stx-path93011_
                           _rel93012_))
                        _g94575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94575_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92879_)
        (let* ((_spath92881_ (symbol->string (gx#stx-e _libpath92879_)))
               (_spath92883_
                (substring _spath92881_ '1 (string-length _spath92881_)))
               (_ext92885_ (path-extension _spath92883_))
               (_ssi92887_
                (if (string-empty? _ext92885_)
                    (string-append _spath92883_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92883_)
                     '".ssi")))
               (_srcs92891_
                (if (string-empty? _ext92885_)
                    (map (lambda (_ext92889_)
                           (string-append _spath92883_ _ext92889_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92883_ '()))))
          (let _lp92894_ ((_rest92896_ (load-path)))
            (let* ((_rest9289792906_ _rest92896_)
                   (_E9290092910_
                    (lambda ()
                      (error '"No clause matching" _rest9289792906_))))
              (let ((_K9290292980_
                     (lambda (_rest92921_ _dir92922_)
                       (letrec ((_resolve92924_
                                 (lambda (_ssi92936_ _srcs92937_)
                                   (let ((_compiled-path92939_
                                          (path-expand _ssi92936_ _dir92922_)))
                                     (if (file-exists? _compiled-path92939_)
                                         (path-normalize _compiled-path92939_)
                                         (let _lpr92941_ ((_rest-src92943_
                                                           _srcs92937_))
                                           (let* ((_rest-src9294492952_
                                                   _rest-src92943_)
                                                  (_else9294692960_
                                                   (lambda ()
                                                     (_lp92894_ _rest92921_)))
                                                  (_K9294892968_
                                                   (lambda (_rest-src92963_
                                                            _src92964_)
                                                     (let ((_src-path92966_
                                                            (path-expand
                                                             _src92964_
                                                             _dir92922_)))
                                                       (if (file-exists?
                                                            _src-path92966_)
                                                           (path-normalize
                                                            _src-path92966_)
                                                           (_lpr92941_
                                                            _rest-src92963_))))))
                                             (if (##pair? _rest-src9294492952_)
                                                 (let ((_hd9294992971_
                                                        (##car _rest-src9294492952_))
                                                       (_tl9295092973_
                                                        (##cdr _rest-src9294492952_)))
                                                   (let* ((_src92976_
                                                           _hd9294992971_)
                                                          (_rest-src92978_
                                                           _tl9295092973_))
                                                     (_K9294892968_
                                                      _rest-src92978_
                                                      _src92976_)))
                                                 (_else9294692960_)))))))))
                         (let ((_$e92926_
                                (gx#core-library-package-path-prefix
                                 _dir92922_)))
                           (if _$e92926_
                               ((lambda (_prefix92929_)
                                  (if (string-prefix?
                                       _prefix92929_
                                       _spath92883_)
                                      (let ((_ssi92933_
                                             (substring
                                              _ssi92887_
                                              (string-length _prefix92929_)
                                              (string-length _ssi92887_)))
                                            (_srcs92934_
                                             (map (lambda (_src92931_)
                                                    (substring
                                                     _src92931_
                                                     (string-length
                                                      _prefix92929_)
                                                     (string-length
                                                      _src92931_)))
                                                  _srcs92891_)))
                                        (_resolve92924_
                                         _ssi92933_
                                         _srcs92934_))
                                      (_lp92894_ _rest92921_)))
                                _$e92926_)
                               (_resolve92924_ _ssi92887_ _srcs92891_))))))
                    (_K9290192915_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92879_))))
                (let ((_try-match9289992918_
                       (lambda ()
                         (if (##null? _rest9289792906_)
                             (_K9290192915_)
                             (_E9290092910_)))))
                  (if (##pair? _rest9289792906_)
                      (let ((_tl9290492985_ (##cdr _rest9289792906_))
                            (_hd9290392983_ (##car _rest9289792906_)))
                        (let ((_dir92988_ _hd9290392983_)
                              (_rest92990_ _tl9290492985_))
                          (_K9290292980_ _rest92990_ _dir92988_)))
                      (_try-match9289992918_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92852_)
        (letrec ((_resolve92854_
                  (lambda (_path92871_ _base92872_)
                    (let ((_$e92874_ (string-rindex__0 _base92872_ '#\/)))
                      (if _$e92874_
                          ((lambda (_idx92877_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92872_ '0 _idx92877_)
                                '"/"
                                _path92871_))))
                           _$e92874_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92871_))))))))
          (let ((_spath92856_ (symbol->string (gx#stx-e _modpath92852_)))
                (_mod92857_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92857_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92852_))
            (let ((_mpath92859_
                   (symbol->string
                    (##structure-ref
                     _mod92857_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92861_ ((_spath92863_ _spath92856_)
                              (_mpath92864_ _mpath92859_))
                (if (string-prefix? '"../" _spath92863_)
                    (let ((_$e92866_ (string-rindex__0 _mpath92864_ '#\/)))
                      (if _$e92866_
                          ((lambda (_idx92869_)
                             (_lp92861_
                              (substring
                               _spath92863_
                               '3
                               (string-length _spath92863_))
                              (substring _mpath92864_ '0 _idx92869_)))
                           _$e92866_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92852_)))
                    (if (string-prefix? '"./" _spath92863_)
                        (_lp92861_
                         (substring
                          _spath92863_
                          '2
                          (string-length _spath92863_))
                         _mpath92864_)
                        (_resolve92854_ _spath92863_ _mpath92864_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92845_)
        (let ((_$e92847_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92845_))))
          (if _$e92847_
              ((lambda (_pkg92850_)
                 (string-append (symbol->string _pkg92850_) '"/"))
               _$e92847_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92819_ _exists?92820_)
        (let ((_$e92822_ (hash-get gx#__module-pkg-cache _dir92819_)))
          (if _$e92822_
              (values _$e92822_)
              (let* ((_gerbil.pkg92825_ (path-expand '"gerbil.pkg" _dir92819_))
                     (_plist92832_
                      (if (or _exists?92820_ (file-exists? _gerbil.pkg92825_))
                          (let ((_e92830_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92825_
                                  read)))
                            (if (eof-object? _e92830_)
                                '()
                                (if (list? _e92830_)
                                    _e92830_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92825_
                                     _e92830_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92819_ _plist92832_)
                _plist92832_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92838_)
        (let ((_exists?92840_ '#f))
          (gx#core-library-package-plist__% _dir92838_ _exists?92840_))))
    (define gx#core-library-package-plist
      (lambda _g94577_
        (let ((_g94576_ (##length _g94577_)))
          (cond ((##fx= _g94576_ 1)
                 (apply (lambda (_dir92838_)
                          (gx#core-library-package-plist__0 _dir92838_))
                        _g94577_))
                ((##fx= _g94576_ 2)
                 (apply (lambda (_dir92842_ _exists?92843_)
                          (gx#core-library-package-plist__%
                           _dir92842_
                           _exists?92843_))
                        _g94577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94577_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92816_) (gx#core-special-module-path? _stx92816_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92814_) (gx#core-special-module-path? _stx92814_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92809_ _char92810_)
        (if (gx#identifier? _stx92809_)
            (if (interned-symbol? (gx#stx-e _stx92809_))
                (let ((_str92812_ (symbol->string (gx#stx-e _stx92809_))))
                  (if (fx> (string-length _str92812_) '1)
                      (eq? (string-ref _str92812_ '0) _char92810_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92803_)
        (gx#core-bound-identifier?__%
         _stx92803_
         (lambda (_g9280492806_)
           (gx#expander-binding?__% _g9280492806_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92797_)
        (gx#core-bound-identifier?__%
         _stx92797_
         (lambda (_g9279892800_)
           (gx#expander-binding?__% _g9279892800_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92784_)
        (letrec ((_module-prelude?92786_
                  (lambda (_e92792_)
                    (let ((_$e92794_
                           (##structure-instance-of?
                            _e92792_
                            'gx#module-context::t)))
                      (if _$e92794_
                          _$e92794_
                          (##structure-instance-of?
                           _e92792_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92784_
           (lambda (_g9278792789_)
             (gx#expander-binding?__%
              _g9278792789_
              _module-prelude?92786_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92714_ _ctx92715_ _force-weak?92716_)
        (let* ((_in9271792726_ _in92714_)
               (_E9271992730_
                (lambda () (error '"No clause matching" _in9271792726_)))
               (_K9272092743_
                (lambda (_weak?92733_ _phi92734_ _key92735_ _source92736_)
                  (gx#core-bind!__%
                   _key92735_
                   (let ((_e92738_
                          (gx#core-resolve-module-export _source92736_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92738_ '1 gx#binding::t '#f)
                      _key92735_
                      _phi92734_
                      _e92738_
                      (##unchecked-structure-ref
                       _source92736_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92740_ _force-weak?92716_))
                        (if _$e92740_ _$e92740_ _weak?92733_))))
                   gx#core-context-rebind?
                   _phi92734_
                   _ctx92715_))))
          (if (##structure-direct-instance-of?
               _in9271792726_
               'gx#module-import::t)
              (let* ((_e9272192746_
                      (##unchecked-structure-ref
                       _in9271792726_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92749_ _e9272192746_)
                     (_e9272292751_
                      (##unchecked-structure-ref
                       _in9271792726_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92754_ _e9272292751_)
                     (_e9272392756_
                      (##unchecked-structure-ref
                       _in9271792726_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92759_ _e9272392756_)
                     (_e9272492761_
                      (##unchecked-structure-ref
                       _in9271792726_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92764_ _e9272492761_))
                (_K9272092743_
                 _weak?92764_
                 _phi92759_
                 _key92754_
                 _source92749_))
              (_E9271992730_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92769_)
        (let* ((_ctx92771_ (gx#current-expander-context))
               (_force-weak?92773_ '#f))
          (gx#core-bind-import!__% _in92769_ _ctx92771_ _force-weak?92773_))))
    (define gx#core-bind-import!__1
      (lambda (_in92775_ _ctx92776_)
        (let ((_force-weak?92778_ '#f))
          (gx#core-bind-import!__% _in92775_ _ctx92776_ _force-weak?92778_))))
    (define gx#core-bind-import!
      (lambda _g94579_
        (let ((_g94578_ (##length _g94579_)))
          (cond ((##fx= _g94578_ 1)
                 (apply (lambda (_in92769_)
                          (gx#core-bind-import!__0 _in92769_))
                        _g94579_))
                ((##fx= _g94578_ 2)
                 (apply (lambda (_in92775_ _ctx92776_)
                          (gx#core-bind-import!__1 _in92775_ _ctx92776_))
                        _g94579_))
                ((##fx= _g94578_ 3)
                 (apply (lambda (_in92780_ _ctx92781_ _force-weak?92782_)
                          (gx#core-bind-import!__%
                           _in92780_
                           _ctx92781_
                           _force-weak?92782_))
                        _g94579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94579_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92700_ _ctx92701_)
        (gx#core-bind-import!__% _in92700_ _ctx92701_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92706_)
        (let ((_ctx92708_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92706_ _ctx92708_))))
    (define gx#core-bind-weak-import!
      (lambda _g94581_
        (let ((_g94580_ (##length _g94581_)))
          (cond ((##fx= _g94580_ 1)
                 (apply (lambda (_in92706_)
                          (gx#core-bind-weak-import!__0 _in92706_))
                        _g94581_))
                ((##fx= _g94580_ 2)
                 (apply (lambda (_in92710_ _ctx92711_)
                          (gx#core-bind-weak-import!__% _in92710_ _ctx92711_))
                        _g94581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94581_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92591_)
        (letrec ((_subst92593_
                  (lambda (_key92639_)
                    (let* ((_key9264092648_ _key92639_)
                           (_else9264292656_ (lambda () _key92639_))
                           (_K9264492687_
                            (lambda (_mark92659_ _id92660_)
                              (let* ((_mark9266192667_ _mark92659_)
                                     (_E9266392671_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9266192667_)))
                                     (_K9266492679_
                                      (lambda (_subst92674_)
                                        (let ((_$e92676_
                                               (if _subst92674_
                                                   (hash-get
                                                    _subst92674_
                                                    _id92660_)
                                                   '#f)))
                                          (if _$e92676_
                                              _$e92676_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92639_))))))
                                (if (##structure-instance-of?
                                     _mark9266192667_
                                     'gx#expander-mark::t)
                                    (let* ((_e9266592682_
                                            (##unchecked-structure-ref
                                             _mark9266192667_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92685_ _e9266592682_))
                                      (_K9266492679_ _subst92685_))
                                    (_E9266392671_))))))
                      (if (##pair? _key9264092648_)
                          (let ((_hd9264592690_ (##car _key9264092648_))
                                (_tl9264692692_ (##cdr _key9264092648_)))
                            (let* ((_id92695_ _hd9264592690_)
                                   (_mark92697_ _tl9264692692_))
                              (_K9264492687_ _mark92697_ _id92695_)))
                          (_else9264292656_))))))
          (let* ((_out9259492604_ _out92591_)
                 (_E9259692608_
                  (lambda () (error '"No clause matching" _out9259492604_)))
                 (_K9259792615_
                  (lambda (_phi92611_ _key92612_ _ctx92613_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92613_ _phi92611_)
                     (_subst92593_ _key92612_)))))
            (if (##structure-direct-instance-of?
                 _out9259492604_
                 'gx#module-export::t)
                (let* ((_e9259892618_
                        (##unchecked-structure-ref
                         _out9259492604_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92621_ _e9259892618_)
                       (_e9259992623_
                        (##unchecked-structure-ref
                         _out9259492604_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92626_ _e9259992623_)
                       (_e9260092628_
                        (##unchecked-structure-ref
                         _out9259492604_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92631_ _e9260092628_)
                       (_e9260192633_
                        (##unchecked-structure-ref
                         _out9259492604_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9260292636_
                        (##unchecked-structure-ref
                         _out9259492604_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9259792615_ _phi92631_ _key92626_ _ctx92621_))
                (_E9259692608_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92516_ _rename92517_ _dphi92518_)
        (let* ((_out9251992529_ _out92516_)
               (_E9252192533_
                (lambda () (error '"No clause matching" _out9251992529_)))
               (_K9252292545_
                (lambda (_weak?92536_
                         _name92537_
                         _phi92538_
                         _key92539_
                         _ctx92540_)
                  (##structure
                   gx#module-import::t
                   _out92516_
                   (let ((_$e92542_ _rename92517_))
                     (if _$e92542_ _$e92542_ _name92537_))
                   (fx+ _phi92538_ _dphi92518_)
                   _weak?92536_))))
          (if (##structure-direct-instance-of?
               _out9251992529_
               'gx#module-export::t)
              (let* ((_e9252392548_
                      (##unchecked-structure-ref
                       _out9251992529_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92551_ _e9252392548_)
                     (_e9252492553_
                      (##unchecked-structure-ref
                       _out9251992529_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92556_ _e9252492553_)
                     (_e9252592558_
                      (##unchecked-structure-ref
                       _out9251992529_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92561_ _e9252592558_)
                     (_e9252692563_
                      (##unchecked-structure-ref
                       _out9251992529_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92566_ _e9252692563_)
                     (_e9252792568_
                      (##unchecked-structure-ref
                       _out9251992529_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92571_ _e9252792568_))
                (_K9252292545_
                 _weak?92571_
                 _name92566_
                 _phi92561_
                 _key92556_
                 _ctx92551_))
              (_E9252192533_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92576_)
        (let* ((_rename92578_ '#f) (_dphi92580_ '0))
          (gx#core-module-export->import__%
           _out92576_
           _rename92578_
           _dphi92580_))))
    (define gx#core-module-export->import__1
      (lambda (_out92582_ _rename92583_)
        (let ((_dphi92585_ '0))
          (gx#core-module-export->import__%
           _out92582_
           _rename92583_
           _dphi92585_))))
    (define gx#core-module-export->import
      (lambda _g94583_
        (let ((_g94582_ (##length _g94583_)))
          (cond ((##fx= _g94582_ 1)
                 (apply (lambda (_out92576_)
                          (gx#core-module-export->import__0 _out92576_))
                        _g94583_))
                ((##fx= _g94582_ 2)
                 (apply (lambda (_out92582_ _rename92583_)
                          (gx#core-module-export->import__1
                           _out92582_
                           _rename92583_))
                        _g94583_))
                ((##fx= _g94582_ 3)
                 (apply (lambda (_out92587_ _rename92588_ _dphi92589_)
                          (gx#core-module-export->import__%
                           _out92587_
                           _rename92588_
                           _dphi92589_))
                        _g94583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94583_))))))
    (define gx#core-expand-module%
      (lambda (_stx92418_)
        (letrec ((_make-context92420_
                  (lambda (_id92497_)
                    (let* ((_super92499_ (gx#current-expander-context))
                           (_bind-id92501_ (gx#stx-e _id92497_))
                           (_mod-id92503_
                            (if (##structure-instance-of?
                                 _super92499_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92499_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92501_)
                                _bind-id92501_))
                           (_ns92505_ (symbol->string _mod-id92503_))
                           (_path92512_
                            (if (##structure-instance-of?
                                 _super92499_
                                 'gx#module-context::t)
                                (let ((_path92507_
                                       (##unchecked-structure-ref
                                        _super92499_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92507_)
                                          (null? _path92507_))
                                      (cons _bind-id92501_ _path92507_)
                                      (if (not _path92507_)
                                          _bind-id92501_
                                          (cons _bind-id92501_
                                                (cons _path92507_ '())))))
                                _bind-id92501_)))
                      (let ((__obj94559
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
                         __obj94559
                         _mod-id92503_
                         _super92499_
                         _ns92505_
                         _path92512_)
                        __obj94559))))
                 (_valid-module-id?92421_
                  (lambda (_id92472_)
                    (let* ((_str92474_ (symbol->string _id92472_))
                           (_len92476_ (string-length _str92474_)))
                      (if (fx>= _len92476_ '1)
                          (let _loop92479_ ((_index92481_
                                             (fx- (string-length _str92474_)
                                                  '1)))
                            (if (fx>= _index92481_ '0)
                                (let ((_c92483_
                                       (string-ref _str92474_ _index92481_)))
                                  (if (or (and (char>=? _c92483_ '#\a)
                                               (char<=? _c92483_ '#\z))
                                          (and (char>=? _c92483_ '#\A)
                                               (char<=? _c92483_ '#\Z))
                                          (and (char>=? _c92483_ '#\0)
                                               (char<=? _c92483_ '#\9))
                                          (char=? _c92483_ '#\_)
                                          (char=? _c92483_ '#\-))
                                      (_loop92479_ (fx- _index92481_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9242292432_ _stx92418_)
                 (_E9242492436_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9242292432_)))
                 (_E9242392468_
                  (lambda ()
                    (if (gx#stx-pair? _e9242292432_)
                        (let ((_e9242592440_ (gx#syntax-e _e9242292432_)))
                          (let ((_hd9242692443_ (##car _e9242592440_))
                                (_tl9242792445_ (##cdr _e9242592440_)))
                            (if (gx#stx-pair? _tl9242792445_)
                                (let ((_e9242892448_
                                       (gx#syntax-e _tl9242792445_)))
                                  (let ((_hd9242992451_ (##car _e9242892448_))
                                        (_tl9243092453_ (##cdr _e9242892448_)))
                                    (let* ((_id92456_ _hd9242992451_)
                                           (_body92458_ _tl9243092453_))
                                      (if (and (gx#identifier? _id92456_)
                                               (gx#stx-list? _body92458_))
                                          (if (_valid-module-id?92421_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92460_
                                                      (_make-context92420_
                                                       _id92456_))
                                                     (_body92462_
                                                      (gx#core-expand-module-begin
                                                       _body92458_
                                                       _ctx92460_))
                                                     (_body92464_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92462_)
                                                       (gx#stx-source
                                                        _stx92418_))))
                                                (##unchecked-structure-set!
                                                 _ctx92460_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92464_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92460_
                                                 _body92464_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92456_
                                                 _ctx92460_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92456_)
                                                  _body92464_)
                                                 (gx#stx-source _stx92418_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92418_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9242492436_)))))
                                (_E9242492436_))))
                        (_E9242492436_)))))
            (_E9242392468_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92384_ _ctx92385_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92388_
                   (gx#core-expand-head (cons '%%begin-module _body92384_)))
                  (_e9238992396_ _stx92388_)
                  (_E9239192400_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92388_)))
                  (_E9239092414_
                   (lambda ()
                     (if (gx#stx-pair? _e9238992396_)
                         (let ((_e9239292404_ (gx#syntax-e _e9238992396_)))
                           (let ((_hd9239392407_ (##car _e9239292404_))
                                 (_tl9239492409_ (##cdr _e9239292404_)))
                             (if (and (gx#identifier? _hd9239392407_)
                                      (gx#core-identifier=?
                                       _hd9239392407_
                                       '%#begin-module))
                                 (let ((_body92412_ _tl9239492409_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92388_)
                                           _body92412_
                                           (gx#core-expand-module-body
                                            _body92412_))
                                       (_E9239192400_)))
                                 (_E9239192400_))))
                         (_E9239192400_)))))
             (_E9239092414_)))
         gx#current-expander-context
         _ctx92385_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body92180_)
        (letrec ((_expand-special92182_
                  (lambda (_hd92311_ _K92312_ _rest92313_ _r92314_)
                    (let* ((_e9231592332_ _hd92311_)
                           (_E9232792336_
                            (lambda ()
                              (_K92312_
                               _rest92313_
                               (cons (gx#core-expand-top _hd92311_)
                                     _r92314_))))
                           (_E9231792348_
                            (lambda ()
                              (if (gx#stx-pair? _e9231592332_)
                                  (let ((_e9232892340_
                                         (gx#syntax-e _e9231592332_)))
                                    (let ((_hd9232992343_
                                           (##car _e9232892340_))
                                          (_tl9233092345_
                                           (##cdr _e9232892340_)))
                                      (if (and (gx#identifier? _hd9232992343_)
                                               (gx#core-identifier=?
                                                _hd9232992343_
                                                '%#export))
                                          (if '#t
                                              (_K92312_
                                               _rest92313_
                                               (cons _hd92311_ _r92314_))
                                              (_E9232792336_))
                                          (_E9232792336_))))
                                  (_E9232792336_))))
                           (_E9231692380_
                            (lambda ()
                              (if (gx#stx-pair? _e9231592332_)
                                  (let ((_e9231892352_
                                         (gx#syntax-e _e9231592332_)))
                                    (let ((_hd9231992355_
                                           (##car _e9231892352_))
                                          (_tl9232092357_
                                           (##cdr _e9231892352_)))
                                      (if (and (gx#identifier? _hd9231992355_)
                                               (gx#core-identifier=?
                                                _hd9231992355_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9232092357_)
                                              (let ((_e9232192360_
                                                     (gx#syntax-e
                                                      _tl9232092357_)))
                                                (let ((_hd9232292363_
                                                       (##car _e9232192360_))
                                                      (_tl9232392365_
                                                       (##cdr _e9232192360_)))
                                                  (let ((_hd-bind92368_
                                                         _hd9232292363_))
                                                    (if (gx#stx-pair?
                                                         _tl9232392365_)
                                                        (let ((_e9232492370_
                                                               (gx#syntax-e
                                                                _tl9232392365_)))
                                                          (let ((_hd9232592373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9232492370_))
                        (_tl9232692375_ (##cdr _e9232492370_)))
                    (let ((_expr92378_ _hd9232592373_))
                      (if (gx#stx-null? _tl9232692375_)
                          (if (gx#core-bind-values? _hd-bind92368_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92368_)
                                (_K92312_
                                 _rest92313_
                                 (cons _hd92311_ _r92314_)))
                              (_E9231792348_))
                          (_E9231792348_)))))
                (_E9231792348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9231792348_))
                                          (_E9231792348_))))
                                  (_E9231792348_)))))
                      (_E9231692380_))))
                 (_expand-body92183_
                  (lambda (_rbody92185_)
                    (let _lp92187_ ((_rest92189_ _rbody92185_)
                                    (_body92190_ '()))
                      (let* ((_rest9219192199_ _rest92189_)
                             (_else9219392207_ (lambda () _body92190_))
                             (_K9219592299_
                              (lambda (_rest92210_ _hd92211_)
                                (let* ((_e9221292233_ _hd92211_)
                                       (_E9222892237_
                                        (lambda ()
                                          (_lp92187_
                                           _rest92210_
                                           (cons (gx#core-expand-expression
                                                  _hd92211_)
                                                 _body92190_))))
                                       (_E9222492251_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9221292233_)
                                              (let ((_e9222992241_
                                                     (gx#syntax-e
                                                      _e9221292233_)))
                                                (let ((_hd9223092244_
                                                       (##car _e9222992241_))
                                                      (_tl9223192246_
                                                       (##cdr _e9222992241_)))
                                                  (let ((_form92249_
                                                         _hd9223092244_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form92249_
                                                         gx#special-form-binding?)
                                                        (_lp92187_
                                                         _rest92210_
                                                         (cons _hd92211_
                                                               _body92190_))
                                                        (_E9222892237_)))))
                                              (_E9222892237_))))
                                       (_E9221492263_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9221292233_)
                                              (let ((_e9222592255_
                                                     (gx#syntax-e
                                                      _e9221292233_)))
                                                (let ((_hd9222692258_
                                                       (##car _e9222592255_))
                                                      (_tl9222792260_
                                                       (##cdr _e9222592255_)))
                                                  (if (and (gx#identifier?
                                                            _hd9222692258_)
                                                           (gx#core-identifier=?
                                                            _hd9222692258_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp92187_
                                                           _rest92210_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92211_)
                         _body92190_))
                  (_E9222492251_))
              (_E9222492251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9222492251_))))
                                       (_E9221392295_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9221292233_)
                                              (let ((_e9221592267_
                                                     (gx#syntax-e
                                                      _e9221292233_)))
                                                (let ((_hd9221692270_
                                                       (##car _e9221592267_))
                                                      (_tl9221792272_
                                                       (##cdr _e9221592267_)))
                                                  (if (and (gx#identifier?
                                                            _hd9221692270_)
                                                           (gx#core-identifier=?
                                                            _hd9221692270_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9221792272_)
                                                          (let ((_e9221892275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9221792272_)))
                    (let ((_hd9221992278_ (##car _e9221892275_))
                          (_tl9222092280_ (##cdr _e9221892275_)))
                      (let ((_hd-bind92283_ _hd9221992278_))
                        (if (gx#stx-pair? _tl9222092280_)
                            (let ((_e9222192285_ (gx#syntax-e _tl9222092280_)))
                              (let ((_hd9222292288_ (##car _e9222192285_))
                                    (_tl9222392290_ (##cdr _e9222192285_)))
                                (let ((_expr92293_ _hd9222292288_))
                                  (if (gx#stx-null? _tl9222392290_)
                                      (if '#t
                                          (_lp92187_
                                           _rest92210_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind92283_)
                                                   (gx#core-expand-expression
                                                    _expr92293_))
                                                  (gx#stx-source _hd92211_))
                                                 _body92190_))
                                          (_E9221492263_))
                                      (_E9221492263_)))))
                            (_E9221492263_)))))
                  (_E9221492263_))
              (_E9221492263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9221492263_)))))
                                  (_E9221392295_)))))
                        (if (##pair? _rest9219192199_)
                            (let ((_hd9219692302_ (##car _rest9219192199_))
                                  (_tl9219792304_ (##cdr _rest9219192199_)))
                              (let* ((_hd92307_ _hd9219692302_)
                                     (_rest92309_ _tl9219792304_))
                                (_K9219592299_ _rest92309_ _hd92307_)))
                            (_else9219392207_)))))))
          (_expand-body92183_
           (gx#core-expand-block__%
            (cons '%#begin-module _body92180_)
            _expand-special92182_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx92023_
               _expanded?92024_
               _method92025_
               _current-phi92026_
               _expand192027_)
        (letrec ((_K92029_
                  (lambda (_rest92147_ _r92148_)
                    (let* ((_e9214992156_ _rest92147_)
                           (_E9215192160_ (lambda () _r92148_))
                           (_E9215092176_
                            (lambda ()
                              (if (gx#stx-pair? _e9214992156_)
                                  (let ((_e9215292164_
                                         (gx#syntax-e _e9214992156_)))
                                    (let ((_hd9215392167_
                                           (##car _e9215292164_))
                                          (_tl9215492169_
                                           (##cdr _e9215292164_)))
                                      (let* ((_hd92172_ _hd9215392167_)
                                             (_rest92174_ _tl9215492169_))
                                        (if '#t
                                            (_step92030_
                                             _hd92172_
                                             _rest92174_
                                             _r92148_)
                                            (_E9215192160_)))))
                                  (_E9215192160_)))))
                      (_E9215092176_))))
                 (_step92030_
                  (lambda (_hd92061_ _rest92062_ _r92063_)
                    (let* ((_e9206492082_ _hd92061_)
                           (_E9207792086_
                            (lambda ()
                              (if (_expanded?92024_ (gx#stx-e _hd92061_))
                                  (_K92029_
                                   _rest92062_
                                   (cons (gx#stx-e _hd92061_) _r92063_))
                                  (_expand192027_
                                   _hd92061_
                                   _K92029_
                                   _rest92062_
                                   _r92063_))))
                           (_E9207392102_
                            (lambda ()
                              (if (gx#stx-pair? _e9206492082_)
                                  (let ((_e9207892090_
                                         (gx#syntax-e _e9206492082_)))
                                    (let ((_hd9207992093_
                                           (##car _e9207892090_))
                                          (_tl9208092095_
                                           (##cdr _e9207892090_)))
                                      (let* ((_macro92098_ _hd9207992093_)
                                             (_body92100_ _tl9208092095_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro92098_
                                             gx#syntax-binding?)
                                            (_K92029_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro92098_)
                                                    _hd92061_
                                                    _method92025_)
                                                   _rest92062_)
                                             _r92063_)
                                            (_E9207792086_)))))
                                  (_E9207792086_))))
                           (_E9206692116_
                            (lambda ()
                              (if (gx#stx-pair? _e9206492082_)
                                  (let ((_e9207492106_
                                         (gx#syntax-e _e9206492082_)))
                                    (let ((_hd9207592109_
                                           (##car _e9207492106_))
                                          (_tl9207692111_
                                           (##cdr _e9207492106_)))
                                      (if (eq? (gx#stx-e _hd9207592109_)
                                               'begin:)
                                          (let ((_body92114_ _tl9207692111_))
                                            (if '#t
                                                (_K92029_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest92062_
                                                  _body92114_)
                                                 _r92063_)
                                                (_E9207392102_)))
                                          (_E9207392102_))))
                                  (_E9207392102_))))
                           (_E9206592143_
                            (lambda ()
                              (if (gx#stx-pair? _e9206492082_)
                                  (let ((_e9206792120_
                                         (gx#syntax-e _e9206492082_)))
                                    (let ((_hd9206892123_
                                           (##car _e9206792120_))
                                          (_tl9206992125_
                                           (##cdr _e9206792120_)))
                                      (if (eq? (gx#stx-e _hd9206892123_) 'phi:)
                                          (if (gx#stx-pair? _tl9206992125_)
                                              (let ((_e9207092128_
                                                     (gx#syntax-e
                                                      _tl9206992125_)))
                                                (let ((_hd9207192131_
                                                       (##car _e9207092128_))
                                                      (_tl9207292133_
                                                       (##cdr _e9207092128_)))
                                                  (let* ((_dphi92136_
                                                          _hd9207192131_)
                                                         (_body92138_
                                                          _tl9207292133_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi92136_)
                                                        (let ((_rbody92141_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K92029_ _body92138_ '()))
                        _current-phi92026_
                        (fx+ (gx#stx-e _dphi92136_) (_current-phi92026_)))))
                  (_K92029_ _rest92062_ (foldr1 cons _r92063_ _rbody92141_)))
                (_E9206692116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9206692116_))
                                          (_E9206692116_))))
                                  (_E9206692116_)))))
                      (_E9206592143_)))))
          (let* ((_e9203192038_ _stx92023_)
                 (_E9203392042_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9203192038_)))
                 (_E9203292057_
                  (lambda ()
                    (if (gx#stx-pair? _e9203192038_)
                        (let ((_e9203492046_ (gx#syntax-e _e9203192038_)))
                          (let ((_hd9203592049_ (##car _e9203492046_))
                                (_tl9203692051_ (##cdr _e9203492046_)))
                            (let ((_body92054_ _tl9203692051_))
                              (if '#t
                                  (if (_current-phi92026_)
                                      (_K92029_ _body92054_ '())
                                      (call-with-parameters
                                       (lambda () (_K92029_ _body92054_ '()))
                                       _current-phi92026_
                                       (gx#current-expander-phi)))
                                  (_E9203392042_)))))
                        (_E9203392042_)))))
            (_E9203292057_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91690_ _internal-expand?91691_)
        (letrec ((_expand191693_
                  (lambda (_hd92003_ _K92004_ _rest92005_ _r92006_)
                    (if (gx#core-bound-module? _hd92003_)
                        (_import191694_
                         (gx#syntax-local-e__0 _hd92003_)
                         _K92004_
                         _rest92005_
                         _r92006_)
                        (if (gx#core-library-module-path? _hd92003_)
                            (_import191694_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd92003_))
                             _K92004_
                             _rest92005_
                             _r92006_)
                            (if (gx#core-library-relative-module-path?
                                 _hd92003_)
                                (_import191694_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd92003_))
                                 _K92004_
                                 _rest92005_
                                 _r92006_)
                                (let ((_e92008_ (gx#stx-e _hd92003_)))
                                  (if (pair? _e92008_)
                                      (let ((_$e92010_
                                             (gx#stx-e (car _e92008_))))
                                        (if (eq? 'spec: _$e92010_)
                                            (_import-spec91697_
                                             _hd92003_
                                             _K92004_
                                             _rest92005_
                                             _r92006_)
                                            (if (eq? 'in: _$e92010_)
                                                (_import-submodule91695_
                                                 _hd92003_
                                                 _K92004_
                                                 _rest92005_
                                                 _r92006_)
                                                (if (eq? 'runtime: _$e92010_)
                                                    (_import-runtime91696_
                                                     _hd92003_
                                                     _K92004_
                                                     _rest92005_
                                                     _r92006_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91690_
                                                     _hd92003_)))))
                                      (if (string? _e92008_)
                                          (_import191694_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd92003_
                                             (gx#stx-source _stx91690_)))
                                           _K92004_
                                           _rest92005_
                                           _r92006_)
                                          (if (##structure-instance-of?
                                               _e92008_
                                               'gx#module-context::t)
                                              (_K92004_
                                               _rest92005_
                                               (cons _e92008_ _r92006_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91690_
                                               _hd92003_))))))))))
                 (_import191694_
                  (lambda (_ctx91992_ _K91993_ _rest91994_ _r91995_)
                    (let ((_dphi91997_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K91993_
                       _rest91994_
                       (cons (##structure
                              gx#import-set::t
                              _ctx91992_
                              _dphi91997_
                              (map (lambda (_g9199892000_)
                                     (gx#core-module-export->import__%
                                      _g9199892000_
                                      '#f
                                      _dphi91997_))
                                   (##unchecked-structure-ref
                                    _ctx91992_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r91995_)))))
                 (_import-submodule91695_
                  (lambda (_hd91959_ _K91960_ _rest91961_ _r91962_)
                    (let* ((_e9196391970_ _hd91959_)
                           (_E9196591974_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9196391970_)))
                           (_E9196491988_
                            (lambda ()
                              (if (gx#stx-pair? _e9196391970_)
                                  (let ((_e9196691978_
                                         (gx#syntax-e _e9196391970_)))
                                    (let ((_hd9196791981_
                                           (##car _e9196691978_))
                                          (_tl9196891983_
                                           (##cdr _e9196691978_)))
                                      (let ((_spath91986_ _tl9196891983_))
                                        (if '#t
                                            (_import191694_
                                             (_import-spec-source91698_
                                              _spath91986_)
                                             _K91960_
                                             _rest91961_
                                             _r91962_)
                                            (_E9196591974_)))))
                                  (_E9196591974_)))))
                      (_E9196491988_))))
                 (_import-runtime91696_
                  (lambda (_hd91926_ _K91927_ _rest91928_ _r91929_)
                    (let* ((_e9193091937_ _hd91926_)
                           (_E9193291941_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9193091937_)))
                           (_E9193191955_
                            (lambda ()
                              (if (gx#stx-pair? _e9193091937_)
                                  (let ((_e9193391945_
                                         (gx#syntax-e _e9193091937_)))
                                    (let ((_hd9193491948_
                                           (##car _e9193391945_))
                                          (_tl9193591950_
                                           (##cdr _e9193391945_)))
                                      (let ((_spath91953_ _tl9193591950_))
                                        (if '#t
                                            (_K91927_
                                             _rest91928_
                                             (cons (_import-spec-source91698_
                                                    _spath91953_)
                                                   _r91929_))
                                            (_E9193291941_)))))
                                  (_E9193291941_)))))
                      (_E9193191955_))))
                 (_import-spec91697_
                  (lambda (_hd91765_ _K91766_ _rest91767_ _r91768_)
                    (let* ((_e9176991786_ _hd91765_)
                           (_E9177891790_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9176991786_)))
                           (_E9177191900_
                            (lambda ()
                              (if (gx#stx-pair? _e9176991786_)
                                  (let ((_e9177991794_
                                         (gx#syntax-e _e9176991786_)))
                                    (let ((_hd9178091797_
                                           (##car _e9177991794_))
                                          (_tl9178191799_
                                           (##cdr _e9177991794_)))
                                      (if (gx#stx-pair? _tl9178191799_)
                                          (let ((_e9178291802_
                                                 (gx#syntax-e _tl9178191799_)))
                                            (let ((_hd9178391805_
                                                   (##car _e9178291802_))
                                                  (_tl9178491807_
                                                   (##cdr _e9178291802_)))
                                              (let* ((_path91810_
                                                      _hd9178391805_)
                                                     (_specs91812_
                                                      _tl9178491807_))
                                                (if '#t
                                                    (let ((_src-ctx91814_
                                                           (_import-spec-source91698_
                                                            _path91810_))
                                                          (_exports91815_
                                                           (make-hash-table))
                                                          (_specs91816_
                                                           (gx#syntax->list
                                                            _specs91812_)))
                                                      (for-each
                                                       (lambda (_out91818_)
                                                         (hash-put!
                                                          _exports91815_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91818_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91818_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91818_))
               (##unchecked-structure-ref
                _src-ctx91814_
                '9
                gx#module-context::t
                '#f))
              (_K91766_
               _rest91767_
               (foldl1 (lambda (_spec91820_ _r91821_)
                         (let* ((_e9182291838_ _spec91820_)
                                (_E9182491842_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9182291838_)))
                                (_E9182391896_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9182291838_)
                                       (let ((_e9182591846_
                                              (gx#syntax-e _e9182291838_)))
                                         (let ((_hd9182691849_
                                                (##car _e9182591846_))
                                               (_tl9182791851_
                                                (##cdr _e9182591846_)))
                                           (let ((_phi91854_ _hd9182691849_))
                                             (if (gx#stx-pair? _tl9182791851_)
                                                 (let ((_e9182891856_
                                                        (gx#syntax-e
                                                         _tl9182791851_)))
                                                   (let ((_hd9182991859_
                                                          (##car _e9182891856_))
                                                         (_tl9183091861_
                                                          (##cdr _e9182891856_)))
                                                     (let ((_name91864_
                                                            _hd9182991859_))
                                                       (if (gx#stx-pair?
                                                            _tl9183091861_)
                                                           (let ((_e9183191866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9183091861_)))
                     (let ((_hd9183291869_ (##car _e9183191866_))
                           (_tl9183391871_ (##cdr _e9183191866_)))
                       (let ((_src-phi91874_ _hd9183291869_))
                         (if (gx#stx-pair? _tl9183391871_)
                             (let ((_e9183491876_
                                    (gx#syntax-e _tl9183391871_)))
                               (let ((_hd9183591879_ (##car _e9183491876_))
                                     (_tl9183691881_ (##cdr _e9183491876_)))
                                 (let ((_src-name91884_ _hd9183591879_))
                                   (if (gx#stx-null? _tl9183691881_)
                                       (if (and (gx#stx-fixnum? _src-phi91874_)
                                                (gx#identifier?
                                                 _src-name91884_)
                                                (gx#stx-fixnum? _phi91854_)
                                                (gx#identifier? _name91864_))
                                           (let ((_src-phi91886_
                                                  (gx#stx-e _src-phi91874_))
                                                 (_src-name91887_
                                                  (gx#core-identifier-key
                                                   _src-name91884_))
                                                 (_phi91888_
                                                  (gx#stx-e _phi91854_))
                                                 (_name91889_
                                                  (gx#core-identifier-key
                                                   _name91864_)))
                                             (let ((_$e91891_
                                                    (hash-get
                                                     _exports91815_
                                                     (cons _src-phi91886_
                                                           _src-name91887_))))
                                               (if _$e91891_
                                                   ((lambda (_out91894_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91894_
                                                             _name91889_
                                                             (fx- _phi91888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91886_))
                    _r91821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91891_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91690_
                                                    _hd91765_))))
                                           (_E9182491842_))
                                       (_E9182491842_)))))
                             (_E9182491842_)))))
                   (_E9182491842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9182491842_)))))
                                       (_E9182491842_)))))
                           (_E9182391896_)))
                       _r91768_
                       _specs91816_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9177891790_)))))
                                          (_E9177891790_))))
                                  (_E9177891790_))))
                           (_E9177091922_
                            (lambda ()
                              (if (gx#stx-pair? _e9176991786_)
                                  (let ((_e9177291904_
                                         (gx#syntax-e _e9176991786_)))
                                    (let ((_hd9177391907_
                                           (##car _e9177291904_))
                                          (_tl9177491909_
                                           (##cdr _e9177291904_)))
                                      (if (gx#stx-pair? _tl9177491909_)
                                          (let ((_e9177591912_
                                                 (gx#syntax-e _tl9177491909_)))
                                            (let ((_hd9177691915_
                                                   (##car _e9177591912_))
                                                  (_tl9177791917_
                                                   (##cdr _e9177591912_)))
                                              (let ((_path91920_
                                                     _hd9177691915_))
                                                (if (gx#stx-null?
                                                     _tl9177791917_)
                                                    (if '#t
                                                        (_K91766_
                                                         _rest91767_
                                                         (cons (_import-spec-source91698_
                                                                _path91920_)
                                                               _r91768_))
                                                        (_E9177191900_))
                                                    (_E9177191900_)))))
                                          (_E9177191900_))))
                                  (_E9177191900_)))))
                      (_E9177091922_))))
                 (_import-spec-source91698_
                  (lambda (_spath91763_)
                    (gx#core-import-nested-module _spath91763_ _stx91690_)))
                 (_import!91699_
                  (lambda (_rbody91712_)
                    (letrec* ((_current-ctx91714_
                               (gx#current-expander-context))
                              (_deps91715_ (make-hash-table-eq))
                              (_bind!91716_
                               (lambda (_hd91761_)
                                 (gx#core-bind-import!__1
                                  _hd91761_
                                  _current-ctx91714_))))
                      (let _lp91718_ ((_rest91720_ _rbody91712_)
                                      (_body91721_ '()))
                        (let* ((_rest9172291730_ _rest91720_)
                               (_else9172491740_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91714_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91714_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91714_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91721_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91738_ _g94584_)
                                     (gx#eval-module _ctx91738_))
                                   _deps91715_)
                                  _body91721_))
                               (_K9172691749_
                                (lambda (_rest91743_ _hd91744_)
                                  (if (##structure-direct-instance-of?
                                       _hd91744_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91716_ _hd91744_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91744_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91744_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91715_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91744_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91744_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91716_
                                             (##unchecked-structure-ref
                                              _hd91744_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91744_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91715_
                                                 (##unchecked-structure-ref
                                                  _hd91744_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91746_
                                                 (##structure-instance-of?
                                                  _hd91744_
                                                  'gx#module-context::t)))
                                            (if _$e91746_
                                                _$e91746_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91690_
                                                 _hd91744_)))))
                                  (_lp91718_
                                   _rest91743_
                                   (cons _hd91744_ _body91721_)))))
                          (if (##pair? _rest9172291730_)
                              (let ((_hd9172791752_ (##car _rest9172291730_))
                                    (_tl9172891754_ (##cdr _rest9172291730_)))
                                (let* ((_hd91757_ _hd9172791752_)
                                       (_rest91759_ _tl9172891754_))
                                  (_K9172691749_ _rest91759_ _hd91757_)))
                              (_else9172491740_)))))))
                 (_expanded-import?91700_
                  (lambda (_e91704_)
                    (let ((_$e91706_
                           (##structure-direct-instance-of?
                            _e91704_
                            'gx#import-set::t)))
                      (if _$e91706_
                          _$e91706_
                          (let ((_$e91709_
                                 (##structure-direct-instance-of?
                                  _e91704_
                                  'gx#module-import::t)))
                            (if _$e91709_
                                _$e91709_
                                (##structure-instance-of?
                                 _e91704_
                                 'gx#module-context::t))))))))
          (let ((_rbody91702_
                 (gx#core-expand-import/export
                  _stx91690_
                  _expanded-import?91700_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191693_)))
            (if _internal-expand?91691_
                (reverse _rbody91702_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91699_ _rbody91702_))
                 (gx#stx-source _stx91690_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx92016_)
        (let ((_internal-expand?92018_ '#f))
          (gx#core-expand-import%__% _stx92016_ _internal-expand?92018_))))
    (define gx#core-expand-import%
      (lambda _g94586_
        (let ((_g94585_ (##length _g94586_)))
          (cond ((##fx= _g94585_ 1)
                 (apply (lambda (_stx92016_)
                          (gx#core-expand-import%__0 _stx92016_))
                        _g94586_))
                ((##fx= _g94585_ 2)
                 (apply (lambda (_stx92020_ _internal-expand?92021_)
                          (gx#core-expand-import%__%
                           _stx92020_
                           _internal-expand?92021_))
                        _g94586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94586_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91617_ _where91618_)
        (let* ((_e9161991626_ _spath91617_)
               (_E9162191630_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9161991626_)))
               (_E9162091685_
                (lambda ()
                  (if (gx#stx-pair? _e9161991626_)
                      (let ((_e9162291634_ (gx#syntax-e _e9161991626_)))
                        (let ((_hd9162391637_ (##car _e9162291634_))
                              (_tl9162491639_ (##cdr _e9162291634_)))
                          (let* ((_origin91642_ _hd9162391637_)
                                 (_sub91644_ _tl9162491639_))
                            (if '#t
                                (let ((_origin-ctx91646_
                                       (if (gx#stx-false? _origin91642_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91642_))))
                                  (let _lp91648_ ((_rest91650_ _sub91644_)
                                                  (_ctx91651_
                                                   _origin-ctx91646_))
                                    (let* ((_e9165291659_ _rest91650_)
                                           (_E9165491663_
                                            (lambda () _ctx91651_))
                                           (_E9165391681_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9165291659_)
                                                  (let ((_e9165591667_
                                                         (gx#syntax-e
                                                          _e9165291659_)))
                                                    (let ((_hd9165691670_
                                                           (##car _e9165591667_))
                                                          (_tl9165791672_
                                                           (##cdr _e9165591667_)))
                                                      (let* ((_id91675_
                                                              _hd9165691670_)
                                                             (_rest91677_
                                                              _tl9165791672_))
                                                        (if '#t
                                                            (let ((_bind91679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91675_ '0 _ctx91651_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91679_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91679_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91618_
                           _spath91617_
                           _id91675_))
                      (_lp91648_
                       _rest91677_
                       (##unchecked-structure-ref
                        _bind91679_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9165491663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9165491663_)))))
                                      (_E9165391681_))))
                                (_E9162191630_)))))
                      (_E9162191630_)))))
          (_E9162091685_))))
    (define gx#core-expand-import-source
      (lambda (_hd91615_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91615_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx91123_ _internal-expand?91124_)
        (letrec* ((_make-export__9451594516_
                   (lambda (_bind91563_ _phi91564_ _ctx91565_ _name91566_)
                     (let* ((_key91568_
                             (##unchecked-structure-ref
                              _bind91563_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91570_
                             (if _name91566_
                                 (gx#core-identifier-key _name91566_)
                                 _key91568_)))
                       (##structure
                        gx#module-export::t
                        _ctx91565_
                        _key91568_
                        _phi91564_
                        _export-key91570_
                        (let ((_$e91573_
                               (##structure-instance-of?
                                _bind91563_
                                'gx#extern-binding::t)))
                          (if _$e91573_
                              _$e91573_
                              (##structure-direct-instance-of?
                               _bind91563_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9451794520_
                   (lambda (_bind91579_)
                     (let* ((_phi91581_ (gx#current-export-expander-phi))
                            (_ctx91583_ (gx#current-expander-context))
                            (_name91585_ '#f))
                       (_make-export__9451594516_
                        _bind91579_
                        _phi91581_
                        _ctx91583_
                        _name91585_))))
                  (_make-export__1__9451894521_
                   (lambda (_bind91587_ _phi91588_)
                     (let* ((_ctx91590_ (gx#current-expander-context))
                            (_name91592_ '#f))
                       (_make-export__9451594516_
                        _bind91587_
                        _phi91588_
                        _ctx91590_
                        _name91592_))))
                  (_make-export__2__9451994522_
                   (lambda (_bind91594_ _phi91595_ _ctx91596_)
                     (let ((_name91598_ '#f))
                       (_make-export__9451594516_
                        _bind91594_
                        _phi91595_
                        _ctx91596_
                        _name91598_))))
                  (_make-export91126_
                   (lambda _g94588_
                     (let ((_g94587_ (##length _g94588_)))
                       (cond ((##fx= _g94587_ 1)
                              (apply (lambda (_bind91579_)
                                       (_make-export__0__9451794520_
                                        _bind91579_))
                                     _g94588_))
                             ((##fx= _g94587_ 2)
                              (apply (lambda (_bind91587_ _phi91588_)
                                       (_make-export__1__9451894521_
                                        _bind91587_
                                        _phi91588_))
                                     _g94588_))
                             ((##fx= _g94587_ 3)
                              (apply (lambda (_bind91594_
                                              _phi91595_
                                              _ctx91596_)
                                       (_make-export__2__9451994522_
                                        _bind91594_
                                        _phi91595_
                                        _ctx91596_))
                                     _g94588_))
                             ((##fx= _g94587_ 4)
                              (apply (lambda (_bind91600_
                                              _phi91601_
                                              _ctx91602_
                                              _name91603_)
                                       (_make-export__9451594516_
                                        _bind91600_
                                        _phi91601_
                                        _ctx91602_
                                        _name91603_))
                                     _g94588_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94588_))))))
                  (_expand191127_
                   (lambda (_hd91276_ _K91277_ _rest91278_ _r91279_)
                     (let* ((_e9128091312_ _hd91276_)
                            (_E9130791316_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx91123_
                                _hd91276_)))
                            (_E9129791395_
                             (lambda ()
                               (if (gx#stx-pair? _e9128091312_)
                                   (let ((_e9130891320_
                                          (gx#syntax-e _e9128091312_)))
                                     (let ((_hd9130991323_
                                            (##car _e9130891320_))
                                           (_tl9131091325_
                                            (##cdr _e9130891320_)))
                                       (if (eq? (gx#stx-e _hd9130991323_)
                                                'import:)
                                           (let ((_in91328_ _tl9131091325_))
                                             (if (gx#stx-list? _in91328_)
                                                 (let _lp91330_ ((_in-rest91332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in91328_)
                         (_r91333_ _r91279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9133491341_
                                                           _in-rest91332_)
                                                          (_E9133691345_
                                                           (lambda ()
                                                             (_K91277_
                                                              _rest91278_
                                                              _r91333_)))
                                                          (_E9133591391_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9133491341_)
                         (let ((_e9133791349_ (gx#syntax-e _e9133491341_)))
                           (let ((_hd9133891352_ (##car _e9133791349_))
                                 (_tl9133991354_ (##cdr _e9133791349_)))
                             (let* ((_hd91357_ _hd9133891352_)
                                    (_in-rest91359_ _tl9133991354_))
                               (if '#t
                                   (let ((_src91389_
                                          (if (gx#core-bound-module? _hd91357_)
                                              (gx#syntax-local-e__0 _hd91357_)
                                              (if (gx#core-library-module-path?
                                                   _hd91357_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd91357_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd91357_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd91357_))
                                                      (if (gx#stx-string?
                                                           _hd91357_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd91357_
                                                            (gx#stx-source
                                                             _stx91123_)))
                                                          (let* ((_e9136091367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91357_)
                         (_E9136291371_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx91123_
                             _hd91357_)))
                         (_E9136191385_
                          (lambda ()
                            (if (gx#stx-pair? _e9136091367_)
                                (let ((_e9136391375_
                                       (gx#syntax-e _e9136091367_)))
                                  (let ((_hd9136491378_ (##car _e9136391375_))
                                        (_tl9136591380_ (##cdr _e9136391375_)))
                                    (if (eq? (gx#stx-e _hd9136491378_) 'in:)
                                        (let ((_spath91383_ _tl9136591380_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91383_
                                               _stx91123_)
                                              (_E9136291371_)))
                                        (_E9136291371_))))
                                (_E9136291371_)))))
                    (_E9136191385_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp91330_
                                      _in-rest91359_
                                      (_export-imports91128_
                                       _src91389_
                                       _r91333_)))
                                   (_E9133691345_)))))
                         (_E9133691345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9133591391_)))
                                                 (_E9130791316_)))
                                           (_E9130791316_))))
                                   (_E9130791316_))))
                            (_E9128491434_
                             (lambda ()
                               (if (gx#stx-pair? _e9128091312_)
                                   (let ((_e9129891399_
                                          (gx#syntax-e _e9128091312_)))
                                     (let ((_hd9129991402_
                                            (##car _e9129891399_))
                                           (_tl9130091404_
                                            (##cdr _e9129891399_)))
                                       (if (eq? (gx#stx-e _hd9129991402_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9130091404_)
                                               (let ((_e9130191407_
                                                      (gx#syntax-e
                                                       _tl9130091404_)))
                                                 (let ((_hd9130291410_
                                                        (##car _e9130191407_))
                                                       (_tl9130391412_
                                                        (##cdr _e9130191407_)))
                                                   (let ((_id91415_
                                                          _hd9130291410_))
                                                     (if (gx#stx-pair?
                                                          _tl9130391412_)
                                                         (let ((_e9130491417_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9130391412_)))
                   (let ((_hd9130591420_ (##car _e9130491417_))
                         (_tl9130691422_ (##cdr _e9130491417_)))
                     (let ((_name91425_ _hd9130591420_))
                       (if (gx#stx-null? _tl9130691422_)
                           (if '#t
                               (let* ((_phi91427_
                                       (gx#current-export-expander-phi))
                                      (_$e91429_
                                       (gx#core-resolve-identifier__1
                                        _id91415_
                                        _phi91427_)))
                                 (if _$e91429_
                                     ((lambda (_bind91432_)
                                        (_K91277_
                                         _rest91278_
                                         (cons (_make-export__9451594516_
                                                _bind91432_
                                                _phi91427_
                                                (gx#current-expander-context)
                                                _name91425_)
                                               _r91279_)))
                                      _$e91429_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx91123_
                                      _hd91276_
                                      _id91415_)))
                               (_E9129791395_))
                           (_E9129791395_)))))
                 (_E9129791395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9129791395_))
                                           (_E9129791395_))))
                                   (_E9129791395_))))
                            (_E9128391483_
                             (lambda ()
                               (if (gx#stx-pair? _e9128091312_)
                                   (let ((_e9128591438_
                                          (gx#syntax-e _e9128091312_)))
                                     (let ((_hd9128691441_
                                            (##car _e9128591438_))
                                           (_tl9128791443_
                                            (##cdr _e9128591438_)))
                                       (if (eq? (gx#stx-e _hd9128691441_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9128791443_)
                                               (let ((_e9128891446_
                                                      (gx#syntax-e
                                                       _tl9128791443_)))
                                                 (let ((_hd9128991449_
                                                        (##car _e9128891446_))
                                                       (_tl9129091451_
                                                        (##cdr _e9128891446_)))
                                                   (let ((_phi91454_
                                                          _hd9128991449_))
                                                     (if (gx#stx-pair?
                                                          _tl9129091451_)
                                                         (let ((_e9129191456_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9129091451_)))
                   (let ((_hd9129291459_ (##car _e9129191456_))
                         (_tl9129391461_ (##cdr _e9129191456_)))
                     (let ((_id91464_ _hd9129291459_))
                       (if (gx#stx-pair? _tl9129391461_)
                           (let ((_e9129491466_ (gx#syntax-e _tl9129391461_)))
                             (let ((_hd9129591469_ (##car _e9129491466_))
                                   (_tl9129691471_ (##cdr _e9129491466_)))
                               (let ((_name91474_ _hd9129591469_))
                                 (if (gx#stx-null? _tl9129691471_)
                                     (if (and (gx#stx-fixnum? _phi91454_)
                                              (gx#identifier? _id91464_)
                                              (gx#identifier? _name91474_))
                                         (let* ((_phi91476_
                                                 (gx#stx-e _phi91454_))
                                                (_$e91478_
                                                 (gx#core-resolve-identifier__1
                                                  _id91464_
                                                  _phi91476_)))
                                           (if _$e91478_
                                               ((lambda (_bind91481_)
                                                  (_K91277_
                                                   _rest91278_
                                                   (cons (_make-export__9451594516_
                                                          _bind91481_
                                                          _phi91476_
                                                          (gx#current-expander-context)
                                                          _name91474_)
                                                         _r91279_)))
                                                _$e91478_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx91123_
                                                _hd91276_
                                                _id91464_)))
                                         (_E9128491434_))
                                     (_E9128491434_)))))
                           (_E9128491434_)))))
                 (_E9128491434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9128491434_))
                                           (_E9128491434_))))
                                   (_E9128491434_))))
                            (_E9128291494_
                             (lambda ()
                               (let ((_id91487_ _e9128091312_))
                                 (if (gx#identifier? _id91487_)
                                     (let ((_$e91489_
                                            (gx#core-resolve-identifier__1
                                             _id91487_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91489_
                                           ((lambda (_bind91492_)
                                              (_K91277_
                                               _rest91278_
                                               (cons (_make-export__0__9451794520_
                                                      _bind91492_)
                                                     _r91279_)))
                                            _$e91489_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx91123_
                                            _hd91276_)))
                                     (_E9128391483_)))))
                            (_E9128191558_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9128091312_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91498_
                                               (gx#current-expander-context))
                                              (_current-phi91500_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91502_
                                               (gx#core-context-shift
                                                _current-ctx91498_
                                                _current-phi91500_))
                                              (_phi-bind91504_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91502_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91507_ ((_bind-rest91509_
                                                          _phi-bind91504_)
                                                         (_set91510_ '()))
                                           (let* ((_bind-rest9151191521_
                                                   _bind-rest91509_)
                                                  (_else9151391529_
                                                   (lambda ()
                                                     (_K91277_
                                                      _rest91278_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91500_
                                                             _set91510_)
                                                            _r91279_))))
                                                  (_K9151591539_
                                                   (lambda (_bind-rest91532_
                                                            _bind91533_
                                                            _key91534_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91533_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91533_))
                                                         (_lp91507_
                                                          _bind-rest91532_
                                                          _set91510_)
                                                         (_lp91507_
                                                          _bind-rest91532_
                                                          (cons (_make-export__2__9451994522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91533_
                         _current-phi91500_
                         _current-ctx91498_)
                        _set91510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9151191521_)
                                                 (let ((_hd9151691542_
                                                        (##car _bind-rest9151191521_))
                                                       (_tl9151791544_
                                                        (##cdr _bind-rest9151191521_)))
                                                   (if (##pair? _hd9151691542_)
                                                       (let ((_hd9151891547_
                                                              (##car _hd9151691542_))
                                                             (_tl9151991549_
                                                              (##cdr _hd9151691542_)))
                                                         (let* ((_key91552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9151891547_)
                        (_bind91554_ _tl9151991549_)
                        (_bind-rest91556_ _tl9151791544_))
                   (_K9151591539_ _bind-rest91556_ _bind91554_ _key91552_)))
               (_else9151391529_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9151391529_)))))
                                       (_E9128291494_))
                                   (_E9128291494_)))))
                       (_E9128191558_))))
                  (_export-imports91128_
                   (lambda (_src91152_ _r91153_)
                     (letrec* ((_current-ctx91155_
                                (gx#current-expander-context))
                               (_current-phi91156_
                                (gx#current-export-expander-phi))
                               (_import->export91157_
                                (lambda (_in91238_)
                                  (let* ((_in9123991247_ _in91238_)
                                         (_E9124191251_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9123991247_)))
                                         (_K9124291258_
                                          (lambda (_phi91254_
                                                   _key91255_
                                                   _out91256_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx91155_
                                             _key91255_
                                             _phi91254_
                                             _key91255_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9123991247_
                                         'gx#module-import::t)
                                        (let* ((_e9124391261_
                                                (##unchecked-structure-ref
                                                 _in9123991247_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out91264_ _e9124391261_)
                                               (_e9124491266_
                                                (##unchecked-structure-ref
                                                 _in9123991247_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key91269_ _e9124491266_)
                                               (_e9124591271_
                                                (##unchecked-structure-ref
                                                 _in9123991247_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi91274_ _e9124591271_))
                                          (_K9124291258_
                                           _phi91274_
                                           _key91269_
                                           _out91264_))
                                        (_E9124191251_)))))
                               (_fold-e91158_
                                (lambda (_in91160_ _r91161_)
                                  (let* ((_in9116291176_ _in91160_)
                                         (_else9116591184_
                                          (lambda () _r91161_)))
                                    (let ((_K9117191220_
                                           (lambda (_phi91216_
                                                    _key91217_
                                                    _out91218_)
                                             (if (and (fx= _phi91216_
                                                           _current-phi91156_)
                                                      (eq? _src91152_
                                                           (##unchecked-structure-ref
                                                            _out91218_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export91157_
                                                        _in91160_)
                                                       _r91161_)
                                                 _r91161_)))
                                          (_K9116791195_
                                           (lambda (_imports91188_
                                                    _phi91189_
                                                    _ctx91190_)
                                             (if (and (fx= _phi91189_
                                                           _current-phi91156_)
                                                      (eq? _src91152_
                                                           _ctx91190_))
                                                 (foldl1 (lambda (_in91192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r91193_)
                   (cons (_import->export91157_ _in91192_) _r91193_))
                 _r91161_
                 _imports91188_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r91161_))))
                                      (let ((_try-match9116491213_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9116291176_
                                                    'gx#import-set::t)
                                                   (let* ((_e9116891198_
                                                           (##unchecked-structure-ref
                                                            _in9116291176_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9116991203_
                                                           (##unchecked-structure-ref
                                                            _in9116291176_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9117091208_
                                                           (##unchecked-structure-ref
                                                            _in9116291176_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx91201_
                                                            _e9116891198_)
                                                           (_phi91206_
                                                            _e9116991203_)
                                                           (_imports91211_
                                                            _e9117091208_))
                                                       (_K9116791195_
                                                        _imports91211_
                                                        _phi91206_
                                                        _ctx91201_)))
                                                   (_else9116591184_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9116291176_
                                             'gx#module-import::t)
                                            (let* ((_e9117291223_
                                                    (##unchecked-structure-ref
                                                     _in9116291176_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9117391228_
                                                    (##unchecked-structure-ref
                                                     _in9116291176_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9117491233_
                                                    (##unchecked-structure-ref
                                                     _in9116291176_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out91226_ _e9117291223_)
                                                    (_key91231_ _e9117391228_)
                                                    (_phi91236_ _e9117491233_))
                                                (_K9117191220_
                                                 _phi91236_
                                                 _key91231_
                                                 _out91226_)))
                                            (_try-match9116491213_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src91152_
                              _current-phi91156_
                              (foldl1 _fold-e91158_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx91155_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r91153_))))
                  (_export!91129_
                   (lambda (_rbody91142_)
                     (letrec* ((_current-ctx91144_
                                (gx#current-expander-context))
                               (_fold-e91145_
                                (lambda (_out91149_ _r91150_)
                                  (if (##structure-direct-instance-of?
                                       _out91149_
                                       'gx#module-export::t)
                                      (cons _out91149_ _r91150_)
                                      (if (##structure-direct-instance-of?
                                           _out91149_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r91150_
                                                  (##unchecked-structure-ref
                                                   _out91149_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r91150_)))))
                       (let ((_body91147_ (reverse _rbody91142_)))
                         (##unchecked-structure-set!
                          _current-ctx91144_
                          (foldl1 _fold-e91145_
                                  (##unchecked-structure-ref
                                   _current-ctx91144_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body91147_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body91147_))))
                  (_expanded-export?91130_
                   (lambda (_e91137_)
                     (let ((_$e91139_
                            (##structure-direct-instance-of?
                             _e91137_
                             'gx#module-export::t)))
                       (if _$e91139_
                           _$e91139_
                           (##structure-direct-instance-of?
                            _e91137_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?91124_)
              (let ((_rbody91135_
                     (gx#core-expand-import/export
                      _stx91123_
                      _expanded-export?91130_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand191127_)))
                (if _internal-expand?91124_
                    (reverse _rbody91135_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!91129_ _rbody91135_))
                     (gx#stx-source _stx91123_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx91123_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx91123_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91608_)
        (let ((_internal-expand?91610_ '#f))
          (gx#core-expand-export%__% _stx91608_ _internal-expand?91610_))))
    (define gx#core-expand-export%
      (lambda _g94590_
        (let ((_g94589_ (##length _g94590_)))
          (cond ((##fx= _g94589_ 1)
                 (apply (lambda (_stx91608_)
                          (gx#core-expand-export%__0 _stx91608_))
                        _g94590_))
                ((##fx= _g94589_ 2)
                 (apply (lambda (_stx91612_ _internal-expand?91613_)
                          (gx#core-expand-export%__%
                           _stx91612_
                           _internal-expand?91613_))
                        _g94590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94590_))))))
    (define gx#core-expand-export-source
      (lambda (_hd91120_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd91120_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx91090_)
        (let* ((_e9109191098_ _stx91090_)
               (_E9109391102_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9109191098_)))
               (_E9109291116_
                (lambda ()
                  (if (gx#stx-pair? _e9109191098_)
                      (let ((_e9109491106_ (gx#syntax-e _e9109191098_)))
                        (let ((_hd9109591109_ (##car _e9109491106_))
                              (_tl9109691111_ (##cdr _e9109491106_)))
                          (let ((_body91114_ _tl9109691111_))
                            (if (gx#identifier-list? _body91114_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body91114_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body91114_))
                                   (gx#stx-source _stx91090_)))
                                (_E9109391102_)))))
                      (_E9109391102_)))))
          (_E9109291116_))))
    (define gx#core-bind-feature!__%
      (lambda (_id91056_ _private?91057_ _phi91058_ _ctx91059_)
        (gx#core-bind-syntax!__%
         _id91056_
         ((if _private?91057_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id91056_))
         _private?91057_
         _phi91058_
         _ctx91059_)))
    (define gx#core-bind-feature!__0
      (lambda (_id91064_)
        (let* ((_private?91066_ '#f)
               (_phi91068_ (gx#current-expander-phi))
               (_ctx91070_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91064_
           _private?91066_
           _phi91068_
           _ctx91070_))))
    (define gx#core-bind-feature!__1
      (lambda (_id91072_ _private?91073_)
        (let* ((_phi91075_ (gx#current-expander-phi))
               (_ctx91077_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91072_
           _private?91073_
           _phi91075_
           _ctx91077_))))
    (define gx#core-bind-feature!__2
      (lambda (_id91079_ _private?91080_ _phi91081_)
        (let ((_ctx91083_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91079_
           _private?91080_
           _phi91081_
           _ctx91083_))))
    (define gx#core-bind-feature!
      (lambda _g94592_
        (let ((_g94591_ (##length _g94592_)))
          (cond ((##fx= _g94591_ 1)
                 (apply (lambda (_id91064_)
                          (gx#core-bind-feature!__0 _id91064_))
                        _g94592_))
                ((##fx= _g94591_ 2)
                 (apply (lambda (_id91072_ _private?91073_)
                          (gx#core-bind-feature!__1 _id91072_ _private?91073_))
                        _g94592_))
                ((##fx= _g94591_ 3)
                 (apply (lambda (_id91079_ _private?91080_ _phi91081_)
                          (gx#core-bind-feature!__2
                           _id91079_
                           _private?91080_
                           _phi91081_))
                        _g94592_))
                ((##fx= _g94591_ 4)
                 (apply (lambda (_id91085_
                                 _private?91086_
                                 _phi91087_
                                 _ctx91088_)
                          (gx#core-bind-feature!__%
                           _id91085_
                           _private?91086_
                           _phi91087_
                           _ctx91088_))
                        _g94592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94592_))))))))
