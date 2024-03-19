(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710833424)
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
      (lambda _$args94521_
        (apply make-instance gx#module-import::t _$args94521_)))
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
      (lambda _$args94518_
        (apply make-instance gx#module-export::t _$args94518_)))
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
      (lambda _$args94515_
        (apply make-instance gx#import-set::t _$args94515_)))
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
      (lambda _$args94512_
        (apply make-instance gx#export-set::t _$args94512_)))
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
      (lambda _$args94509_
        (apply make-instance gx#import-expander::t _$args94509_)))
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
      (lambda _$args94506_
        (apply make-instance gx#export-expander::t _$args94506_)))
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
      (lambda _$args94503_
        (apply make-instance gx#import-export-expander::t _$args94503_)))
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
      (lambda (_path94500_ _fun94501_)
        (call-with-input-file
         (cons 'path: (cons _path94500_ gx#source-file-settings))
         _fun94501_)))
    (define gx#module-context:::init!
      (lambda (_self94494_ _id94495_ _super94496_ _ns94497_ _path94498_)
        (if (##fx< '11 (##structure-length _self94494_))
            (begin
              (##unchecked-structure-set!
               _self94494_
               _id94495_
               '1
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               (make-hash-table-eq)
               '2
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               _super94496_
               '3
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               '#f
               '4
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               '#f
               '5
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               _ns94497_
               '6
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               _path94498_
               '7
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               '()
               '8
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               '()
               '9
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               '#f
               '10
               (##structure-type _self94494_)
               '#f)
              (##unchecked-structure-set!
               _self94494_
               '#f
               '11
               (##structure-type _self94494_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94494_
                   '11
                   (##vector-length _self94494_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self94338_ _ctx94339_ _root94340_)
        (let ((_super94348_
               (let ((_$e94342_ _root94340_))
                 (if _$e94342_
                     _$e94342_
                     (let ((_$e94345_ (gx#core-context-root__0)))
                       (if _$e94345_
                           _$e94345_
                           (let ((__obj94563
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94564
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94563
                                     ':init!)))
                               (if __constructor94564
                                   (__constructor94564 __obj94563)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94563)))))))
          (if _ctx94339_
              (let ((_id94351_
                     (##structure-ref
                      _ctx94339_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path94352_
                     (##structure-ref _ctx94339_ '7 gx#module-context::t '#f))
                    (_in94353_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx94339_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e94354_
                     (make-promise (lambda () (gx#eval-module _ctx94339_)))))
                (if (##fx< '8 (##structure-length _self94338_))
                    (begin
                      (##unchecked-structure-set!
                       _self94338_
                       _id94351_
                       '1
                       (##structure-type _self94338_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94338_
                       (make-hash-table-eq 'size: (length _in94353_))
                       '2
                       (##structure-type _self94338_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94338_
                       _super94348_
                       '3
                       (##structure-type _self94338_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94338_
                       '#f
                       '4
                       (##structure-type _self94338_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94338_
                       '#f
                       '5
                       (##structure-type _self94338_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94338_
                       _path94352_
                       '6
                       (##structure-type _self94338_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94338_
                       _in94353_
                       '7
                       (##structure-type _self94338_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94338_
                       _e94354_
                       '8
                       (##structure-type _self94338_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self94338_
                           '8
                           (##vector-length _self94338_)))
                (for-each
                 (lambda (_g9435594357_)
                   (gx#core-bind-weak-import!__% _g9435594357_ _self94338_))
                 _in94353_))
              (if (##fx< '8 (##structure-length _self94338_))
                  (begin
                    (##unchecked-structure-set!
                     _self94338_
                     '#f
                     '1
                     (##structure-type _self94338_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94338_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self94338_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94338_
                     _super94348_
                     '3
                     (##structure-type _self94338_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94338_
                     '#f
                     '4
                     (##structure-type _self94338_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94338_
                     '#f
                     '5
                     (##structure-type _self94338_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94338_
                     '#f
                     '6
                     (##structure-type _self94338_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94338_
                     '()
                     '7
                     (##structure-type _self94338_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94338_
                     '#f
                     '8
                     (##structure-type _self94338_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self94338_
                         '8
                         (##vector-length _self94338_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self94363_ _ctx94364_)
        (let ((_root94366_ '#f))
          (gx#prelude-context:::init!__% _self94363_ _ctx94364_ _root94366_))))
    (define gx#prelude-context:::init!
      (lambda _g94570_
        (let ((_g94569_ (##length _g94570_)))
          (cond ((##fx= _g94569_ 2)
                 (apply (lambda (_self94363_ _ctx94364_)
                          (gx#prelude-context:::init!__0
                           _self94363_
                           _ctx94364_))
                        _g94570_))
                ((##fx= _g94569_ 3)
                 (apply (lambda (_self94368_ _ctx94369_ _root94370_)
                          (gx#prelude-context:::init!__%
                           _self94368_
                           _ctx94369_
                           _root94370_))
                        _g94570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94570_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self94212_ _e94213_)
        (if (##fx< '3 (##structure-length _self94212_))
            (begin
              (##unchecked-structure-set!
               _self94212_
               _e94213_
               '1
               (##structure-type _self94212_)
               '#f)
              (##unchecked-structure-set!
               _self94212_
               (gx#current-expander-context)
               '2
               (##structure-type _self94212_)
               '#f)
              (##unchecked-structure-set!
               _self94212_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self94212_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94212_
                   '3
                   (##vector-length _self94212_)))))
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
      (lambda (_g9383893841_ _g9383993843_)
        (gx#core-apply-user-expander__%
         _g9383893841_
         _g9383993843_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9370993712_ _g9371093714_)
        (gx#core-apply-user-expander__%
         _g9370993712_
         _g9371093714_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93580_)
        (let* ((_path93582_
                (##structure-ref _ctx93580_ '7 gx#module-context::t '#f))
               (_path93584_
                (if (pair? _path93582_) (last _path93582_) _path93582_)))
          (if (string? _path93584_) _path93584_ '#f))))
    (define gx#import-module__%
      (lambda (_path93556_ _reload?93557_ _eval?93558_)
        (let ((_ctx93560_
               ((gx#current-expander-module-import)
                _path93556_
                _reload?93557_)))
          (if (and _ctx93560_ _eval?93558_)
              (gx#eval-module _ctx93560_)
              '#!void)
          _ctx93560_)))
    (define gx#import-module__0
      (lambda (_path93565_)
        (let* ((_reload?93567_ '#f) (_eval?93569_ '#f))
          (gx#import-module__% _path93565_ _reload?93567_ _eval?93569_))))
    (define gx#import-module__1
      (lambda (_path93571_ _reload?93572_)
        (let ((_eval?93574_ '#f))
          (gx#import-module__% _path93571_ _reload?93572_ _eval?93574_))))
    (define gx#import-module
      (lambda _g94572_
        (let ((_g94571_ (##length _g94572_)))
          (cond ((##fx= _g94571_ 1)
                 (apply (lambda (_path93565_)
                          (gx#import-module__0 _path93565_))
                        _g94572_))
                ((##fx= _g94571_ 2)
                 (apply (lambda (_path93571_ _reload?93572_)
                          (gx#import-module__1 _path93571_ _reload?93572_))
                        _g94572_))
                ((##fx= _g94571_ 3)
                 (apply (lambda (_path93576_ _reload?93577_ _eval?93578_)
                          (gx#import-module__%
                           _path93576_
                           _reload?93577_
                           _eval?93578_))
                        _g94572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94572_))))))
    (define gx#eval-module
      (lambda (_mod93553_) ((gx#current-expander-module-eval) _mod93553_)))
    (define gx#core-eval-module
      (lambda (_obj93538_)
        (letrec ((_force-e93540_
                  (lambda (_getf93549_ _e93550_)
                    (call-with-parameters
                     (lambda () (force (_getf93549_ _e93550_)))
                     gx#current-expander-context
                     _e93550_
                     gx#current-expander-phi
                     '0))))
          (let _recur93542_ ((_e93544_ _obj93538_))
            (if (##structure-instance-of? _e93544_ 'gx#module-context::t)
                (begin
                  (let ((_$e93546_ (gx#core-context-prelude__% _e93544_)))
                    (if _$e93546_ (_recur93542_ _$e93546_) '#!void))
                  (_force-e93540_ gx#module-context-e _e93544_))
                (if (##structure-instance-of? _e93544_ 'gx#prelude-context::t)
                    (_force-e93540_ gx#prelude-context-e _e93544_)
                    (if (gx#stx-string? _e93544_)
                        (_recur93542_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93544_)))
                        (if (gx#core-library-module-path? _e93544_)
                            (_recur93542_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93544_)))
                            (error '"Cannot eval module" _obj93538_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93521_)
        (let _lp93523_ ((_e93525_ _ctx93521_))
          (if (or (##structure-instance-of? _e93525_ 'gx#module-context::t)
                  (##structure-instance-of? _e93525_ 'gx#local-context::t))
              (_lp93523_
               (##unchecked-structure-ref _e93525_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93525_ 'gx#prelude-context::t)
                  _e93525_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93534_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93534_))))
    (define gx#core-context-prelude
      (lambda _g94574_
        (let ((_g94573_ (##length _g94574_)))
          (cond ((##fx= _g94573_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94574_))
                ((##fx= _g94573_ 1)
                 (apply (lambda (_ctx93536_)
                          (gx#core-context-prelude__% _ctx93536_))
                        _g94574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94574_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93513_)
        (let ((_$e93515_ (hash-get gx#__module-registry _ctx93513_)))
          (if _$e93515_
              _$e93515_
              (let ((_pre93518_
                     (let ((__obj94565
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
                       (gx#prelude-context:::init! __obj94565 _ctx93513_)
                       __obj94565)))
                (hash-put! gx#__module-registry _ctx93513_ _pre93518_)
                _pre93518_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93394_ _reload?93395_)
        (letrec ((_import-source93397_
                  (lambda (_path93482_)
                    (if (member _path93482_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93482_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94575_ (gx#core-read-module _path93482_)))
                         (begin
                           (let ((_g94576_
                                  (if (##values? _g94575_)
                                      (##vector-length _g94575_)
                                      1)))
                             (if (not (##fx= _g94576_ 4))
                                 (error "Context expects 4 values" _g94576_)))
                           (let ((_pre93485_ (##vector-ref _g94575_ 0))
                                 (_id93486_ (##vector-ref _g94575_ 1))
                                 (_ns93487_ (##vector-ref _g94575_ 2))
                                 (_body93488_ (##vector-ref _g94575_ 3)))
                             (let* ((_prelude93493_
                                     (if (##structure-instance-of?
                                          _pre93485_
                                          'gx#prelude-context::t)
                                         _pre93485_
                                         (if (##structure-instance-of?
                                              _pre93485_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93485_)
                                             (if (string? _pre93485_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93485_))
                                                 (if (not _pre93485_)
                                                     (let ((_$e93490_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93490_
                                                           _$e93490_
                                                           (let ((__obj94566
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
                     (gx#prelude-context:::init! __obj94566 '#f)
                     __obj94566)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93394_
                                                            _pre93485_))))))
                                    (_ctx93495_
                                     (let ((__obj94567
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
                                        __obj94567
                                        _id93486_
                                        _prelude93493_
                                        _ns93487_
                                        _path93482_)
                                       __obj94567))
                                    (_body93497_
                                     (gx#core-expand-module-begin
                                      _body93488_
                                      _ctx93495_))
                                    (_body93499_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93497_)
                                      _path93482_
                                      _ctx93495_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93495_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93499_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93495_
                                _body93499_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93482_
                                _ctx93495_)
                               (hash-put!
                                gx#__module-registry
                                _id93486_
                                _ctx93495_)
                               _ctx93495_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93482_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93398_
                  (lambda (_rpath93410_)
                    (let* ((_rpath9341193418_ _rpath93410_)
                           (_E9341393422_
                            (lambda ()
                              (error '"No clause matching" _rpath9341193418_)))
                           (_K9341493470_
                            (lambda (_refs93425_ _origin93426_)
                              (let ((_ctx93428_
                                     (if _origin93426_
                                         (gx#core-import-module__%
                                          _origin93426_
                                          _reload?93395_)
                                         (gx#current-expander-context))))
                                (let _lp93430_ ((_rest93432_ _refs93425_)
                                                (_ctx93433_ _ctx93428_))
                                  (let* ((_rest9343493442_ _rest93432_)
                                         (_else9343693450_
                                          (lambda () _ctx93433_))
                                         (_K9343893458_
                                          (lambda (_rest93453_ _id93454_)
                                            (let ((_bind93456_
                                                   (gx#resolve-identifier__%
                                                    _id93454_
                                                    '0
                                                    _ctx93433_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93456_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93456_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93430_
                                                   _rest93453_
                                                   (##unchecked-structure-ref
                                                    _bind93456_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93410_
                                                         _id93454_
                                                         _bind93456_))))))
                                    (if (##pair? _rest9343493442_)
                                        (let ((_hd9343993461_
                                               (##car _rest9343493442_))
                                              (_tl9344093463_
                                               (##cdr _rest9343493442_)))
                                          (let* ((_id93466_ _hd9343993461_)
                                                 (_rest93468_ _tl9344093463_))
                                            (_K9343893458_
                                             _rest93468_
                                             _id93466_)))
                                        (_else9343693450_))))))))
                      (if (##pair? _rpath9341193418_)
                          (let ((_hd9341593473_ (##car _rpath9341193418_))
                                (_tl9341693475_ (##cdr _rpath9341193418_)))
                            (let* ((_origin93478_ _hd9341593473_)
                                   (_refs93480_ _tl9341693475_))
                              (_K9341493470_ _refs93480_ _origin93478_)))
                          (_E9341393422_))))))
          (let ((_$e93400_
                 (if (not _reload?93395_)
                     (hash-get gx#__module-registry _rpath93394_)
                     '#f)))
            (if _$e93400_
                (values _$e93400_)
                (if (list? _rpath93394_)
                    (_import-submodule93398_ _rpath93394_)
                    (if (gx#core-library-module-path? _rpath93394_)
                        (let ((_ctx93403_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93394_)
                                _reload?93395_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93394_
                           _ctx93403_)
                          _ctx93403_)
                        (let* ((_npath93405_ (path-normalize _rpath93394_))
                               (_$e93407_
                                (if (not _reload?93395_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93405_)
                                    '#f)))
                          (if _$e93407_
                              _$e93407_
                              (_import-source93397_ _npath93405_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93506_)
        (let ((_reload?93508_ '#f))
          (gx#core-import-module__% _rpath93506_ _reload?93508_))))
    (define gx#core-import-module
      (lambda _g94578_
        (let ((_g94577_ (##length _g94578_)))
          (cond ((##fx= _g94577_ 1)
                 (apply (lambda (_rpath93506_)
                          (gx#core-import-module__0 _rpath93506_))
                        _g94578_))
                ((##fx= _g94577_ 2)
                 (apply (lambda (_rpath93510_ _reload?93511_)
                          (gx#core-import-module__%
                           _rpath93510_
                           _reload?93511_))
                        _g94578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94578_))))))
    (define gx#core-read-module
      (lambda (_path93383_)
        (with-catch
         (lambda (_exn93385_)
           (if (and (datum-parsing-exception? _exn93385_)
                    (eq? (datum-parsing-exception-filepos _exn93385_) '0))
               (gx#core-read-module/lang _path93383_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93383_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9338793389_)
                      (display-exception _exn93385_ _g9338793389_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93383_)))))
    (define gx#core-read-module/sexp
      (lambda (_path93246_)
        (let _lp93248_ ((_body93250_ (read-syntax-from-file _path93246_))
                        (_pre93251_ '#f)
                        (_ns93252_ '#f)
                        (_pkg93253_ '#f))
          (let* ((_e9325493278_ _body93250_)
                 (_E9327093300_
                  (lambda ()
                    (let ((_g94579_
                           (if _pkg93253_
                               (values _pre93251_ _ns93252_ _pkg93253_)
                               (gx#core-read-module-package
                                _path93246_
                                _pre93251_
                                _ns93252_))))
                      (begin
                        (let ((_g94580_
                               (if (##values? _g94579_)
                                   (##vector-length _g94579_)
                                   1)))
                          (if (not (##fx= _g94580_ 3))
                              (error "Context expects 3 values" _g94580_)))
                        (let ((_pre93282_ (##vector-ref _g94579_ 0))
                              (_ns93283_ (##vector-ref _g94579_ 1))
                              (_pkg93284_ (##vector-ref _g94579_ 2)))
                          (let* ((_prelude93286_
                                  (if (gx#core-bound-module-prelude?
                                       _pre93282_)
                                      (gx#syntax-local-e__0 _pre93282_)
                                      (if (gx#core-library-module-path?
                                           _pre93282_)
                                          (gx#core-resolve-library-module-path
                                           _pre93282_)
                                          (if (gx#stx-string? _pre93282_)
                                              (gx#core-resolve-module-path__%
                                               _pre93282_
                                               _path93246_)
                                              (gx#stx-e _pre93282_)))))
                                 (_path-id93288_
                                  (gx#core-module-path->namespace _path93246_))
                                 (_pkg-id93290_
                                  (if _pkg93284_
                                      (string-append
                                       _pkg93284_
                                       '"/"
                                       _path-id93288_)
                                      _path-id93288_))
                                 (_module-id93292_
                                  (string->symbol _pkg-id93290_))
                                 (_module-ns93297_
                                  (if (eq? _ns93283_ '#!void)
                                      '#f
                                      (let ((_$e93294_ _ns93283_))
                                        (if _$e93294_
                                            _$e93294_
                                            _pkg-id93290_)))))
                            (values _prelude93286_
                                    _module-id93292_
                                    _module-ns93297_
                                    _body93250_)))))))
                 (_E9326393329_
                  (lambda ()
                    (if (gx#stx-pair? _e9325493278_)
                        (let ((_e9327193304_ (gx#syntax-e _e9325493278_)))
                          (let ((_hd9327293307_ (##car _e9327193304_))
                                (_tl9327393309_ (##cdr _e9327193304_)))
                            (if (eq? (gx#stx-e _hd9327293307_) 'package:)
                                (if (gx#stx-pair? _tl9327393309_)
                                    (let ((_e9327493312_
                                           (gx#syntax-e _tl9327393309_)))
                                      (let ((_hd9327593315_
                                             (##car _e9327493312_))
                                            (_tl9327693317_
                                             (##cdr _e9327493312_)))
                                        (let* ((_pkg93320_ _hd9327593315_)
                                               (_rest93322_ _tl9327693317_))
                                          (if '#t
                                              (let ((_pkg93327_
                                                     (if (gx#identifier?
                                                          _pkg93320_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg93320_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg93320_)
                         (gx#stx-false? _pkg93320_))
                     (gx#stx-e _pkg93320_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg93320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93248_
                                                 _rest93322_
                                                 _pre93251_
                                                 _ns93252_
                                                 _pkg93327_))
                                              (_E9327093300_)))))
                                    (_E9327093300_))
                                (_E9327093300_))))
                        (_E9327093300_))))
                 (_E9325693355_
                  (lambda ()
                    (if (gx#stx-pair? _e9325493278_)
                        (let ((_e9326493333_ (gx#syntax-e _e9325493278_)))
                          (let ((_hd9326593336_ (##car _e9326493333_))
                                (_tl9326693338_ (##cdr _e9326493333_)))
                            (if (eq? (gx#stx-e _hd9326593336_) 'namespace:)
                                (if (gx#stx-pair? _tl9326693338_)
                                    (let ((_e9326793341_
                                           (gx#syntax-e _tl9326693338_)))
                                      (let ((_hd9326893344_
                                             (##car _e9326793341_))
                                            (_tl9326993346_
                                             (##cdr _e9326793341_)))
                                        (let* ((_ns93349_ _hd9326893344_)
                                               (_rest93351_ _tl9326993346_))
                                          (if '#t
                                              (let ((_ns93353_
                                                     (if (gx#identifier?
                                                          _ns93349_)
                                                         (symbol->string
                                                          (gx#stx-e _ns93349_))
                                                         (if (gx#stx-string?
                                                              _ns93349_)
                                                             (gx#stx-e
                                                              _ns93349_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns93349_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns93349_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93248_
                                                 _rest93351_
                                                 _pre93251_
                                                 _ns93353_
                                                 _pkg93253_))
                                              (_E9326393329_)))))
                                    (_E9326393329_))
                                (_E9326393329_))))
                        (_E9326393329_))))
                 (_E9325593379_
                  (lambda ()
                    (if (gx#stx-pair? _e9325493278_)
                        (let ((_e9325793359_ (gx#syntax-e _e9325493278_)))
                          (let ((_hd9325893362_ (##car _e9325793359_))
                                (_tl9325993364_ (##cdr _e9325793359_)))
                            (if (eq? (gx#stx-e _hd9325893362_) 'prelude:)
                                (if (gx#stx-pair? _tl9325993364_)
                                    (let ((_e9326093367_
                                           (gx#syntax-e _tl9325993364_)))
                                      (let ((_hd9326193370_
                                             (##car _e9326093367_))
                                            (_tl9326293372_
                                             (##cdr _e9326093367_)))
                                        (let* ((_prelude93375_ _hd9326193370_)
                                               (_rest93377_ _tl9326293372_))
                                          (if '#t
                                              (_lp93248_
                                               _rest93377_
                                               _prelude93375_
                                               _ns93252_
                                               _pkg93253_)
                                              (_E9325693355_)))))
                                    (_E9325693355_))
                                (_E9325693355_))))
                        (_E9325693355_)))))
            (_E9325593379_)))))
    (define gx#core-read-module/lang
      (lambda (_path93073_)
        (letrec ((_default-read-module-body93075_
                  (lambda (_inp93238_)
                    (let _lp93240_ ((_body93242_ '()))
                      (let ((_next93244_ (read-syntax _inp93238_)))
                        (if (eof-object? _next93244_)
                            (reverse _body93242_)
                            (_lp93240_ (cons _next93244_ _body93242_)))))))
                 (_read-body93076_
                  (lambda (_inp93157_
                           _pre93158_
                           _ns93159_
                           _pkg93160_
                           _args93161_)
                    (let ((_g94581_
                           (if _pkg93160_
                               (values _pre93158_ _ns93159_ _pkg93160_)
                               (gx#core-read-module-package
                                _path93073_
                                _pre93158_
                                _ns93159_))))
                      (begin
                        (let ((_g94582_
                               (if (##values? _g94581_)
                                   (##vector-length _g94581_)
                                   1)))
                          (if (not (##fx= _g94582_ 3))
                              (error "Context expects 3 values" _g94582_)))
                        (let ((_pre93163_ (##vector-ref _g94581_ 0))
                              (_ns93164_ (##vector-ref _g94581_ 1))
                              (_pkg93165_ (##vector-ref _g94581_ 2)))
                          (let* ((_prelude93167_
                                  (gx#import-module__0 _pre93163_))
                                 (_read-module-body93221_
                                  (let ((_$e93213_
                                         (find (lambda (_e9316893170_)
                                                 (let* ((_g9317293182_
                                                         _e9316893170_)
                                                        (_else9317493190_
                                                         (lambda () '#f))
                                                        (_K9317693194_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9317293182_
                                                        'gx#module-export::t)
                                                       (let* ((_e9317793197_
                                                               (##unchecked-structure-ref
                                                                _g9317293182_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9317893200_
                                                               (##unchecked-structure-ref
                                                                _g9317293182_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9317993203_
                                                               (##unchecked-structure-ref
                                                                _g9317293182_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9317993203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9318093206_
                            (##unchecked-structure-ref
                             _g9317293182_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9320893210_)
                              (eq? _g9320893210_ 'read-module-body))
                            _e9318093206_)
                           (_K9317693194_)
                           (_else9317493190_)))
                     (_else9317493190_)))
               (_else9317493190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude93167_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e93213_
                                        ((lambda (_xport93216_)
                                           (let ((_proc93219_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport93216_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc93219_)
                                                 _proc93219_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path93073_
                                                  _pre93163_
                                                  _proc93219_))))
                                         _$e93213_)
                                        _default-read-module-body93075_)))
                                 (_path-id93223_
                                  (gx#core-module-path->namespace _path93073_))
                                 (_pkg-id93225_
                                  (if _pkg93165_
                                      (string-append
                                       _pkg93165_
                                       '"/"
                                       _path-id93223_)
                                      _path-id93223_))
                                 (_module-id93227_
                                  (string->symbol _pkg-id93225_))
                                 (_module-ns93232_
                                  (let ((_$e93229_ _ns93164_))
                                    (if _$e93229_ _$e93229_ _pkg-id93225_)))
                                 (_body93235_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body93221_ _inp93157_))
                                   gx#current-module-reader-path
                                   _path93073_
                                   gx#current-module-reader-args
                                   _args93161_)))
                            (values _prelude93167_
                                    _module-id93227_
                                    _module-ns93232_
                                    _body93235_)))))))
                 (_string-e93077_
                  (lambda (_obj93154_ _what93155_)
                    (if (string? _obj93154_)
                        _obj93154_
                        (if (symbol? _obj93154_)
                            (symbol->string _obj93154_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what93155_)
                             _path93073_
                             _obj93154_)))))
                 (_read-lang-args93078_
                  (lambda (_inp93109_ _args93110_)
                    (let* ((_args9311193119_ _args93110_)
                           (_else9311393127_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path93073_)))
                           (_K9311593142_
                            (lambda (_args93130_ _prelude93131_)
                              (let* ((_pkg93133_
                                      (pgetq__0 'package: _args93130_))
                                     (_pkg93135_
                                      (if _pkg93133_
                                          (_string-e93077_
                                           _pkg93133_
                                           '"package")
                                          '#f))
                                     (_ns93137_
                                      (pgetq__0 'namespace: _args93130_))
                                     (_ns93139_
                                      (if _ns93137_
                                          (_string-e93077_
                                           _ns93137_
                                           '"namespace")
                                          '#f)))
                                (_read-body93076_
                                 _inp93109_
                                 _prelude93131_
                                 _ns93139_
                                 _pkg93135_
                                 _args93130_)))))
                      (if (##pair? _args9311193119_)
                          (let ((_hd9311693145_ (##car _args9311193119_))
                                (_tl9311793147_ (##cdr _args9311193119_)))
                            (let* ((_prelude93150_ _hd9311693145_)
                                   (_args93152_ _tl9311793147_))
                              (_K9311593142_ _args93152_ _prelude93150_)))
                          (_else9311393127_)))))
                 (_read-lang93079_
                  (lambda (_inp93084_)
                    (let* ((_head93086_ (read-line _inp93084_))
                           (_$e93088_ (string-index__0 _head93086_ '#\space)))
                      (if _$e93088_
                          ((lambda (_ix93091_)
                             (let ((_lang93093_
                                    (substring _head93086_ '0 _ix93091_)))
                               (if (equal? _lang93093_ '"#lang")
                                   (let* ((_rest93095_
                                           (substring
                                            _head93086_
                                            (fx+ _ix93091_ '1)
                                            (string-length _head93086_)))
                                          (_args93106_
                                           (with-catch
                                            (lambda (_g9309693098_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path93073_
                                               _g9309693098_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest93095_
                                               (lambda (_g9310193103_)
                                                 (read-all
                                                  _g9310193103_
                                                  read)))))))
                                     (_read-lang-args93078_
                                      _inp93084_
                                      _args93106_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path93073_))))
                           _$e93088_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path93073_)))))
                 (_read-e93080_
                  (lambda (_inp93082_)
                    (if (eq? (peek-char _inp93082_) '#\#)
                        (_read-lang93079_ _inp93082_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path93073_)))))
          (gx#call-with-input-source-file _path93073_ _read-e93080_))))
    (define gx#core-read-module-package
      (lambda (_path93027_ _pre93028_ _ns93029_)
        (letrec ((_string-e93031_
                  (lambda (_e93071_)
                    (if (symbol? _e93071_)
                        (symbol->string _e93071_)
                        (if (string? _e93071_)
                            _e93071_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e93071_))))))
          (let _lp93033_ ((_dir93035_ (path-directory _path93027_))
                          (_pkg-path93036_ '()))
            (let ((_gerbil.pkg93038_ (path-expand '"gerbil.pkg" _dir93035_)))
              (if (file-exists? _gerbil.pkg93038_)
                  (let ((_plist93040_
                         (gx#core-library-package-plist__% _dir93035_ '#t)))
                    (if (null? _plist93040_)
                        (let ((_pkg93042_
                               (if (not (null? _pkg-path93036_))
                                   (string-join _pkg-path93036_ '"/")
                                   '#f)))
                          (values _pre93028_ _ns93029_ _pkg93042_))
                        (if (list? _plist93040_)
                            (let* ((_root93044_
                                    (pgetq__0 'package: _plist93040_))
                                   (_pkg93048_
                                    (let ((_pkg-path93046_
                                           (if _root93044_
                                               (cons (_string-e93031_
                                                      _root93044_)
                                                     _pkg-path93036_)
                                               _pkg-path93036_)))
                                      (if (not (null? _pkg-path93046_))
                                          (string-join _pkg-path93046_ '"/")
                                          '#f)))
                                   (_ns93055_
                                    (let ((_ns93053_
                                           (let ((_$e93050_ _ns93029_))
                                             (if _$e93050_
                                                 _$e93050_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist93040_)))))
                                      (if _ns93053_
                                          (_string-e93031_ _ns93053_)
                                          '#f)))
                                   (_pre93060_
                                    (let ((_$e93057_ _pre93028_))
                                      (if _$e93057_
                                          _$e93057_
                                          (pgetq__0 'prelude: _plist93040_)))))
                              (values _pre93060_ _ns93055_ _pkg93048_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist93040_))))
                  (let ((_dir*93063_
                         (path-strip-trailing-directory-separator _dir93035_)))
                    (if (or (string-empty? _dir*93063_)
                            (equal? _dir93035_ _dir*93063_))
                        (values _pre93028_ _ns93029_ '#f)
                        (let ((_xpath93068_ (path-strip-directory _dir*93063_))
                              (_xdir93069_ (path-directory _dir*93063_)))
                          (_lp93033_
                           _xdir93069_
                           (cons _xpath93068_ _pkg-path93036_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path93025_)
        (path-strip-extension (path-strip-directory _path93025_))))
    (define gx#core-module-path->id
      (lambda (_path93023_)
        (string->symbol (gx#core-module-path->namespace _path93023_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path93002_ _rel93003_)
        (let* ((_path93005_ (gx#stx-e _stx-path93002_))
               (_path93007_
                (if (string-empty? (path-extension _path93005_))
                    (string-append _path93005_ '".ss")
                    _path93005_)))
          (gx#core-resolve-path__%
           _path93007_
           (let ((_$e93010_ (gx#stx-source _stx-path93002_)))
             (if _$e93010_ _$e93010_ _rel93003_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path93016_)
        (let ((_rel93018_ '#f))
          (gx#core-resolve-module-path__% _stx-path93016_ _rel93018_))))
    (define gx#core-resolve-module-path
      (lambda _g94584_
        (let ((_g94583_ (##length _g94584_)))
          (cond ((##fx= _g94583_ 1)
                 (apply (lambda (_stx-path93016_)
                          (gx#core-resolve-module-path__0 _stx-path93016_))
                        _g94584_))
                ((##fx= _g94583_ 2)
                 (apply (lambda (_stx-path93020_ _rel93021_)
                          (gx#core-resolve-module-path__%
                           _stx-path93020_
                           _rel93021_))
                        _g94584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94584_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92888_)
        (let* ((_spath92890_ (symbol->string (gx#stx-e _libpath92888_)))
               (_spath92892_
                (substring _spath92890_ '1 (string-length _spath92890_)))
               (_ext92894_ (path-extension _spath92892_))
               (_ssi92896_
                (if (string-empty? _ext92894_)
                    (string-append _spath92892_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92892_)
                     '".ssi")))
               (_srcs92900_
                (if (string-empty? _ext92894_)
                    (map (lambda (_ext92898_)
                           (string-append _spath92892_ _ext92898_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92892_ '()))))
          (let _lp92903_ ((_rest92905_ (load-path)))
            (let* ((_rest9290692915_ _rest92905_)
                   (_E9290992919_
                    (lambda ()
                      (error '"No clause matching" _rest9290692915_))))
              (let ((_K9291192989_
                     (lambda (_rest92930_ _dir92931_)
                       (letrec ((_resolve92933_
                                 (lambda (_ssi92945_ _srcs92946_)
                                   (let ((_compiled-path92948_
                                          (path-expand _ssi92945_ _dir92931_)))
                                     (if (file-exists? _compiled-path92948_)
                                         (path-normalize _compiled-path92948_)
                                         (let _lpr92950_ ((_rest-src92952_
                                                           _srcs92946_))
                                           (let* ((_rest-src9295392961_
                                                   _rest-src92952_)
                                                  (_else9295592969_
                                                   (lambda ()
                                                     (_lp92903_ _rest92930_)))
                                                  (_K9295792977_
                                                   (lambda (_rest-src92972_
                                                            _src92973_)
                                                     (let ((_src-path92975_
                                                            (path-expand
                                                             _src92973_
                                                             _dir92931_)))
                                                       (if (file-exists?
                                                            _src-path92975_)
                                                           (path-normalize
                                                            _src-path92975_)
                                                           (_lpr92950_
                                                            _rest-src92972_))))))
                                             (if (##pair? _rest-src9295392961_)
                                                 (let ((_hd9295892980_
                                                        (##car _rest-src9295392961_))
                                                       (_tl9295992982_
                                                        (##cdr _rest-src9295392961_)))
                                                   (let* ((_src92985_
                                                           _hd9295892980_)
                                                          (_rest-src92987_
                                                           _tl9295992982_))
                                                     (_K9295792977_
                                                      _rest-src92987_
                                                      _src92985_)))
                                                 (_else9295592969_)))))))))
                         (let ((_$e92935_
                                (gx#core-library-package-path-prefix
                                 _dir92931_)))
                           (if _$e92935_
                               ((lambda (_prefix92938_)
                                  (if (string-prefix?
                                       _prefix92938_
                                       _spath92892_)
                                      (let ((_ssi92942_
                                             (substring
                                              _ssi92896_
                                              (string-length _prefix92938_)
                                              (string-length _ssi92896_)))
                                            (_srcs92943_
                                             (map (lambda (_src92940_)
                                                    (substring
                                                     _src92940_
                                                     (string-length
                                                      _prefix92938_)
                                                     (string-length
                                                      _src92940_)))
                                                  _srcs92900_)))
                                        (_resolve92933_
                                         _ssi92942_
                                         _srcs92943_))
                                      (_lp92903_ _rest92930_)))
                                _$e92935_)
                               (_resolve92933_ _ssi92896_ _srcs92900_))))))
                    (_K9291092924_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92888_))))
                (let ((_try-match9290892927_
                       (lambda ()
                         (if (##null? _rest9290692915_)
                             (_K9291092924_)
                             (_E9290992919_)))))
                  (if (##pair? _rest9290692915_)
                      (let ((_tl9291392994_ (##cdr _rest9290692915_))
                            (_hd9291292992_ (##car _rest9290692915_)))
                        (let ((_dir92997_ _hd9291292992_)
                              (_rest92999_ _tl9291392994_))
                          (_K9291192989_ _rest92999_ _dir92997_)))
                      (_try-match9290892927_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92861_)
        (letrec ((_resolve92863_
                  (lambda (_path92880_ _base92881_)
                    (let ((_$e92883_ (string-rindex__0 _base92881_ '#\/)))
                      (if _$e92883_
                          ((lambda (_idx92886_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92881_ '0 _idx92886_)
                                '"/"
                                _path92880_))))
                           _$e92883_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92880_))))))))
          (let ((_spath92865_ (symbol->string (gx#stx-e _modpath92861_)))
                (_mod92866_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92866_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92861_))
            (let ((_mpath92868_
                   (symbol->string
                    (##structure-ref
                     _mod92866_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92870_ ((_spath92872_ _spath92865_)
                              (_mpath92873_ _mpath92868_))
                (if (string-prefix? '"../" _spath92872_)
                    (let ((_$e92875_ (string-rindex__0 _mpath92873_ '#\/)))
                      (if _$e92875_
                          ((lambda (_idx92878_)
                             (_lp92870_
                              (substring
                               _spath92872_
                               '3
                               (string-length _spath92872_))
                              (substring _mpath92873_ '0 _idx92878_)))
                           _$e92875_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92861_)))
                    (if (string-prefix? '"./" _spath92872_)
                        (_lp92870_
                         (substring
                          _spath92872_
                          '2
                          (string-length _spath92872_))
                         _mpath92873_)
                        (_resolve92863_ _spath92872_ _mpath92873_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92854_)
        (let ((_$e92856_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92854_))))
          (if _$e92856_
              ((lambda (_pkg92859_)
                 (string-append (symbol->string _pkg92859_) '"/"))
               _$e92856_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92828_ _exists?92829_)
        (let ((_$e92831_ (hash-get gx#__module-pkg-cache _dir92828_)))
          (if _$e92831_
              (values _$e92831_)
              (let* ((_gerbil.pkg92834_ (path-expand '"gerbil.pkg" _dir92828_))
                     (_plist92841_
                      (if (or _exists?92829_ (file-exists? _gerbil.pkg92834_))
                          (let ((_e92839_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92834_
                                  read)))
                            (if (eof-object? _e92839_)
                                '()
                                (if (list? _e92839_)
                                    _e92839_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92834_
                                     _e92839_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92828_ _plist92841_)
                _plist92841_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92847_)
        (let ((_exists?92849_ '#f))
          (gx#core-library-package-plist__% _dir92847_ _exists?92849_))))
    (define gx#core-library-package-plist
      (lambda _g94586_
        (let ((_g94585_ (##length _g94586_)))
          (cond ((##fx= _g94585_ 1)
                 (apply (lambda (_dir92847_)
                          (gx#core-library-package-plist__0 _dir92847_))
                        _g94586_))
                ((##fx= _g94585_ 2)
                 (apply (lambda (_dir92851_ _exists?92852_)
                          (gx#core-library-package-plist__%
                           _dir92851_
                           _exists?92852_))
                        _g94586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94586_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92825_) (gx#core-special-module-path? _stx92825_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92823_) (gx#core-special-module-path? _stx92823_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92818_ _char92819_)
        (if (gx#identifier? _stx92818_)
            (if (interned-symbol? (gx#stx-e _stx92818_))
                (let ((_str92821_ (symbol->string (gx#stx-e _stx92818_))))
                  (if (fx> (string-length _str92821_) '1)
                      (eq? (string-ref _str92821_ '0) _char92819_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92812_)
        (gx#core-bound-identifier?__%
         _stx92812_
         (lambda (_g9281392815_)
           (gx#expander-binding?__% _g9281392815_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92806_)
        (gx#core-bound-identifier?__%
         _stx92806_
         (lambda (_g9280792809_)
           (gx#expander-binding?__% _g9280792809_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92793_)
        (letrec ((_module-prelude?92795_
                  (lambda (_e92801_)
                    (let ((_$e92803_
                           (##structure-instance-of?
                            _e92801_
                            'gx#module-context::t)))
                      (if _$e92803_
                          _$e92803_
                          (##structure-instance-of?
                           _e92801_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92793_
           (lambda (_g9279692798_)
             (gx#expander-binding?__%
              _g9279692798_
              _module-prelude?92795_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92723_ _ctx92724_ _force-weak?92725_)
        (let* ((_in9272692735_ _in92723_)
               (_E9272892739_
                (lambda () (error '"No clause matching" _in9272692735_)))
               (_K9272992752_
                (lambda (_weak?92742_ _phi92743_ _key92744_ _source92745_)
                  (gx#core-bind!__%
                   _key92744_
                   (let ((_e92747_
                          (gx#core-resolve-module-export _source92745_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92747_ '1 gx#binding::t '#f)
                      _key92744_
                      _phi92743_
                      _e92747_
                      (##unchecked-structure-ref
                       _source92745_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92749_ _force-weak?92725_))
                        (if _$e92749_ _$e92749_ _weak?92742_))))
                   gx#core-context-rebind?
                   _phi92743_
                   _ctx92724_))))
          (if (##structure-direct-instance-of?
               _in9272692735_
               'gx#module-import::t)
              (let* ((_e9273092755_
                      (##unchecked-structure-ref
                       _in9272692735_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92758_ _e9273092755_)
                     (_e9273192760_
                      (##unchecked-structure-ref
                       _in9272692735_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92763_ _e9273192760_)
                     (_e9273292765_
                      (##unchecked-structure-ref
                       _in9272692735_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92768_ _e9273292765_)
                     (_e9273392770_
                      (##unchecked-structure-ref
                       _in9272692735_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92773_ _e9273392770_))
                (_K9272992752_
                 _weak?92773_
                 _phi92768_
                 _key92763_
                 _source92758_))
              (_E9272892739_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92778_)
        (let* ((_ctx92780_ (gx#current-expander-context))
               (_force-weak?92782_ '#f))
          (gx#core-bind-import!__% _in92778_ _ctx92780_ _force-weak?92782_))))
    (define gx#core-bind-import!__1
      (lambda (_in92784_ _ctx92785_)
        (let ((_force-weak?92787_ '#f))
          (gx#core-bind-import!__% _in92784_ _ctx92785_ _force-weak?92787_))))
    (define gx#core-bind-import!
      (lambda _g94588_
        (let ((_g94587_ (##length _g94588_)))
          (cond ((##fx= _g94587_ 1)
                 (apply (lambda (_in92778_)
                          (gx#core-bind-import!__0 _in92778_))
                        _g94588_))
                ((##fx= _g94587_ 2)
                 (apply (lambda (_in92784_ _ctx92785_)
                          (gx#core-bind-import!__1 _in92784_ _ctx92785_))
                        _g94588_))
                ((##fx= _g94587_ 3)
                 (apply (lambda (_in92789_ _ctx92790_ _force-weak?92791_)
                          (gx#core-bind-import!__%
                           _in92789_
                           _ctx92790_
                           _force-weak?92791_))
                        _g94588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94588_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92709_ _ctx92710_)
        (gx#core-bind-import!__% _in92709_ _ctx92710_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92715_)
        (let ((_ctx92717_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92715_ _ctx92717_))))
    (define gx#core-bind-weak-import!
      (lambda _g94590_
        (let ((_g94589_ (##length _g94590_)))
          (cond ((##fx= _g94589_ 1)
                 (apply (lambda (_in92715_)
                          (gx#core-bind-weak-import!__0 _in92715_))
                        _g94590_))
                ((##fx= _g94589_ 2)
                 (apply (lambda (_in92719_ _ctx92720_)
                          (gx#core-bind-weak-import!__% _in92719_ _ctx92720_))
                        _g94590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94590_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92600_)
        (letrec ((_subst92602_
                  (lambda (_key92648_)
                    (let* ((_key9264992657_ _key92648_)
                           (_else9265192665_ (lambda () _key92648_))
                           (_K9265392696_
                            (lambda (_mark92668_ _id92669_)
                              (let* ((_mark9267092676_ _mark92668_)
                                     (_E9267292680_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9267092676_)))
                                     (_K9267392688_
                                      (lambda (_subst92683_)
                                        (let ((_$e92685_
                                               (if _subst92683_
                                                   (hash-get
                                                    _subst92683_
                                                    _id92669_)
                                                   '#f)))
                                          (if _$e92685_
                                              _$e92685_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92648_))))))
                                (if (##structure-instance-of?
                                     _mark9267092676_
                                     'gx#expander-mark::t)
                                    (let* ((_e9267492691_
                                            (##unchecked-structure-ref
                                             _mark9267092676_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92694_ _e9267492691_))
                                      (_K9267392688_ _subst92694_))
                                    (_E9267292680_))))))
                      (if (##pair? _key9264992657_)
                          (let ((_hd9265492699_ (##car _key9264992657_))
                                (_tl9265592701_ (##cdr _key9264992657_)))
                            (let* ((_id92704_ _hd9265492699_)
                                   (_mark92706_ _tl9265592701_))
                              (_K9265392696_ _mark92706_ _id92704_)))
                          (_else9265192665_))))))
          (let* ((_out9260392613_ _out92600_)
                 (_E9260592617_
                  (lambda () (error '"No clause matching" _out9260392613_)))
                 (_K9260692624_
                  (lambda (_phi92620_ _key92621_ _ctx92622_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92622_ _phi92620_)
                     (_subst92602_ _key92621_)))))
            (if (##structure-direct-instance-of?
                 _out9260392613_
                 'gx#module-export::t)
                (let* ((_e9260792627_
                        (##unchecked-structure-ref
                         _out9260392613_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92630_ _e9260792627_)
                       (_e9260892632_
                        (##unchecked-structure-ref
                         _out9260392613_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92635_ _e9260892632_)
                       (_e9260992637_
                        (##unchecked-structure-ref
                         _out9260392613_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92640_ _e9260992637_)
                       (_e9261092642_
                        (##unchecked-structure-ref
                         _out9260392613_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9261192645_
                        (##unchecked-structure-ref
                         _out9260392613_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9260692624_ _phi92640_ _key92635_ _ctx92630_))
                (_E9260592617_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92525_ _rename92526_ _dphi92527_)
        (let* ((_out9252892538_ _out92525_)
               (_E9253092542_
                (lambda () (error '"No clause matching" _out9252892538_)))
               (_K9253192554_
                (lambda (_weak?92545_
                         _name92546_
                         _phi92547_
                         _key92548_
                         _ctx92549_)
                  (##structure
                   gx#module-import::t
                   _out92525_
                   (let ((_$e92551_ _rename92526_))
                     (if _$e92551_ _$e92551_ _name92546_))
                   (fx+ _phi92547_ _dphi92527_)
                   _weak?92545_))))
          (if (##structure-direct-instance-of?
               _out9252892538_
               'gx#module-export::t)
              (let* ((_e9253292557_
                      (##unchecked-structure-ref
                       _out9252892538_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92560_ _e9253292557_)
                     (_e9253392562_
                      (##unchecked-structure-ref
                       _out9252892538_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92565_ _e9253392562_)
                     (_e9253492567_
                      (##unchecked-structure-ref
                       _out9252892538_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92570_ _e9253492567_)
                     (_e9253592572_
                      (##unchecked-structure-ref
                       _out9252892538_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92575_ _e9253592572_)
                     (_e9253692577_
                      (##unchecked-structure-ref
                       _out9252892538_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92580_ _e9253692577_))
                (_K9253192554_
                 _weak?92580_
                 _name92575_
                 _phi92570_
                 _key92565_
                 _ctx92560_))
              (_E9253092542_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92585_)
        (let* ((_rename92587_ '#f) (_dphi92589_ '0))
          (gx#core-module-export->import__%
           _out92585_
           _rename92587_
           _dphi92589_))))
    (define gx#core-module-export->import__1
      (lambda (_out92591_ _rename92592_)
        (let ((_dphi92594_ '0))
          (gx#core-module-export->import__%
           _out92591_
           _rename92592_
           _dphi92594_))))
    (define gx#core-module-export->import
      (lambda _g94592_
        (let ((_g94591_ (##length _g94592_)))
          (cond ((##fx= _g94591_ 1)
                 (apply (lambda (_out92585_)
                          (gx#core-module-export->import__0 _out92585_))
                        _g94592_))
                ((##fx= _g94591_ 2)
                 (apply (lambda (_out92591_ _rename92592_)
                          (gx#core-module-export->import__1
                           _out92591_
                           _rename92592_))
                        _g94592_))
                ((##fx= _g94591_ 3)
                 (apply (lambda (_out92596_ _rename92597_ _dphi92598_)
                          (gx#core-module-export->import__%
                           _out92596_
                           _rename92597_
                           _dphi92598_))
                        _g94592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94592_))))))
    (define gx#core-expand-module%
      (lambda (_stx92427_)
        (letrec ((_make-context92429_
                  (lambda (_id92506_)
                    (let* ((_super92508_ (gx#current-expander-context))
                           (_bind-id92510_ (gx#stx-e _id92506_))
                           (_mod-id92512_
                            (if (##structure-instance-of?
                                 _super92508_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92508_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92510_)
                                _bind-id92510_))
                           (_ns92514_ (symbol->string _mod-id92512_))
                           (_path92521_
                            (if (##structure-instance-of?
                                 _super92508_
                                 'gx#module-context::t)
                                (let ((_path92516_
                                       (##unchecked-structure-ref
                                        _super92508_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92516_)
                                          (null? _path92516_))
                                      (cons _bind-id92510_ _path92516_)
                                      (if (not _path92516_)
                                          _bind-id92510_
                                          (cons _bind-id92510_
                                                (cons _path92516_ '())))))
                                _bind-id92510_)))
                      (let ((__obj94568
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
                         __obj94568
                         _mod-id92512_
                         _super92508_
                         _ns92514_
                         _path92521_)
                        __obj94568))))
                 (_valid-module-id?92430_
                  (lambda (_id92481_)
                    (let* ((_str92483_ (symbol->string _id92481_))
                           (_len92485_ (string-length _str92483_)))
                      (if (fx>= _len92485_ '1)
                          (let _loop92488_ ((_index92490_
                                             (fx- (string-length _str92483_)
                                                  '1)))
                            (if (fx>= _index92490_ '0)
                                (let ((_c92492_
                                       (string-ref _str92483_ _index92490_)))
                                  (if (or (and (char>=? _c92492_ '#\a)
                                               (char<=? _c92492_ '#\z))
                                          (and (char>=? _c92492_ '#\A)
                                               (char<=? _c92492_ '#\Z))
                                          (and (char>=? _c92492_ '#\0)
                                               (char<=? _c92492_ '#\9))
                                          (char=? _c92492_ '#\_)
                                          (char=? _c92492_ '#\-))
                                      (_loop92488_ (fx- _index92490_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9243192441_ _stx92427_)
                 (_E9243392445_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9243192441_)))
                 (_E9243292477_
                  (lambda ()
                    (if (gx#stx-pair? _e9243192441_)
                        (let ((_e9243492449_ (gx#syntax-e _e9243192441_)))
                          (let ((_hd9243592452_ (##car _e9243492449_))
                                (_tl9243692454_ (##cdr _e9243492449_)))
                            (if (gx#stx-pair? _tl9243692454_)
                                (let ((_e9243792457_
                                       (gx#syntax-e _tl9243692454_)))
                                  (let ((_hd9243892460_ (##car _e9243792457_))
                                        (_tl9243992462_ (##cdr _e9243792457_)))
                                    (let* ((_id92465_ _hd9243892460_)
                                           (_body92467_ _tl9243992462_))
                                      (if (and (gx#identifier? _id92465_)
                                               (gx#stx-list? _body92467_))
                                          (if (_valid-module-id?92430_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92469_
                                                      (_make-context92429_
                                                       _id92465_))
                                                     (_body92471_
                                                      (gx#core-expand-module-begin
                                                       _body92467_
                                                       _ctx92469_))
                                                     (_body92473_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92471_)
                                                       (gx#stx-source
                                                        _stx92427_))))
                                                (##unchecked-structure-set!
                                                 _ctx92469_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92473_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92469_
                                                 _body92473_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92465_
                                                 _ctx92469_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92465_)
                                                  _body92473_)
                                                 (gx#stx-source _stx92427_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92427_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9243392445_)))))
                                (_E9243392445_))))
                        (_E9243392445_)))))
            (_E9243292477_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92393_ _ctx92394_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92397_
                   (gx#core-expand-head (cons '%%begin-module _body92393_)))
                  (_e9239892405_ _stx92397_)
                  (_E9240092409_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92397_)))
                  (_E9239992423_
                   (lambda ()
                     (if (gx#stx-pair? _e9239892405_)
                         (let ((_e9240192413_ (gx#syntax-e _e9239892405_)))
                           (let ((_hd9240292416_ (##car _e9240192413_))
                                 (_tl9240392418_ (##cdr _e9240192413_)))
                             (if (and (gx#identifier? _hd9240292416_)
                                      (gx#core-identifier=?
                                       _hd9240292416_
                                       '%#begin-module))
                                 (let ((_body92421_ _tl9240392418_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92397_)
                                           _body92421_
                                           (gx#core-expand-module-body
                                            _body92421_))
                                       (_E9240092409_)))
                                 (_E9240092409_))))
                         (_E9240092409_)))))
             (_E9239992423_)))
         gx#current-expander-context
         _ctx92394_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body92189_)
        (letrec ((_expand-special92191_
                  (lambda (_hd92320_ _K92321_ _rest92322_ _r92323_)
                    (let* ((_e9232492341_ _hd92320_)
                           (_E9233692345_
                            (lambda ()
                              (_K92321_
                               _rest92322_
                               (cons (gx#core-expand-top _hd92320_)
                                     _r92323_))))
                           (_E9232692357_
                            (lambda ()
                              (if (gx#stx-pair? _e9232492341_)
                                  (let ((_e9233792349_
                                         (gx#syntax-e _e9232492341_)))
                                    (let ((_hd9233892352_
                                           (##car _e9233792349_))
                                          (_tl9233992354_
                                           (##cdr _e9233792349_)))
                                      (if (and (gx#identifier? _hd9233892352_)
                                               (gx#core-identifier=?
                                                _hd9233892352_
                                                '%#export))
                                          (if '#t
                                              (_K92321_
                                               _rest92322_
                                               (cons _hd92320_ _r92323_))
                                              (_E9233692345_))
                                          (_E9233692345_))))
                                  (_E9233692345_))))
                           (_E9232592389_
                            (lambda ()
                              (if (gx#stx-pair? _e9232492341_)
                                  (let ((_e9232792361_
                                         (gx#syntax-e _e9232492341_)))
                                    (let ((_hd9232892364_
                                           (##car _e9232792361_))
                                          (_tl9232992366_
                                           (##cdr _e9232792361_)))
                                      (if (and (gx#identifier? _hd9232892364_)
                                               (gx#core-identifier=?
                                                _hd9232892364_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9232992366_)
                                              (let ((_e9233092369_
                                                     (gx#syntax-e
                                                      _tl9232992366_)))
                                                (let ((_hd9233192372_
                                                       (##car _e9233092369_))
                                                      (_tl9233292374_
                                                       (##cdr _e9233092369_)))
                                                  (let ((_hd-bind92377_
                                                         _hd9233192372_))
                                                    (if (gx#stx-pair?
                                                         _tl9233292374_)
                                                        (let ((_e9233392379_
                                                               (gx#syntax-e
                                                                _tl9233292374_)))
                                                          (let ((_hd9233492382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9233392379_))
                        (_tl9233592384_ (##cdr _e9233392379_)))
                    (let ((_expr92387_ _hd9233492382_))
                      (if (gx#stx-null? _tl9233592384_)
                          (if (gx#core-bind-values? _hd-bind92377_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92377_)
                                (_K92321_
                                 _rest92322_
                                 (cons _hd92320_ _r92323_)))
                              (_E9232692357_))
                          (_E9232692357_)))))
                (_E9232692357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9232692357_))
                                          (_E9232692357_))))
                                  (_E9232692357_)))))
                      (_E9232592389_))))
                 (_expand-body92192_
                  (lambda (_rbody92194_)
                    (let _lp92196_ ((_rest92198_ _rbody92194_)
                                    (_body92199_ '()))
                      (let* ((_rest9220092208_ _rest92198_)
                             (_else9220292216_ (lambda () _body92199_))
                             (_K9220492308_
                              (lambda (_rest92219_ _hd92220_)
                                (let* ((_e9222192242_ _hd92220_)
                                       (_E9223792246_
                                        (lambda ()
                                          (_lp92196_
                                           _rest92219_
                                           (cons (gx#core-expand-expression
                                                  _hd92220_)
                                                 _body92199_))))
                                       (_E9223392260_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9222192242_)
                                              (let ((_e9223892250_
                                                     (gx#syntax-e
                                                      _e9222192242_)))
                                                (let ((_hd9223992253_
                                                       (##car _e9223892250_))
                                                      (_tl9224092255_
                                                       (##cdr _e9223892250_)))
                                                  (let ((_form92258_
                                                         _hd9223992253_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form92258_
                                                         gx#special-form-binding?)
                                                        (_lp92196_
                                                         _rest92219_
                                                         (cons _hd92220_
                                                               _body92199_))
                                                        (_E9223792246_)))))
                                              (_E9223792246_))))
                                       (_E9222392272_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9222192242_)
                                              (let ((_e9223492264_
                                                     (gx#syntax-e
                                                      _e9222192242_)))
                                                (let ((_hd9223592267_
                                                       (##car _e9223492264_))
                                                      (_tl9223692269_
                                                       (##cdr _e9223492264_)))
                                                  (if (and (gx#identifier?
                                                            _hd9223592267_)
                                                           (gx#core-identifier=?
                                                            _hd9223592267_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp92196_
                                                           _rest92219_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92220_)
                         _body92199_))
                  (_E9223392260_))
              (_E9223392260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9223392260_))))
                                       (_E9222292304_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9222192242_)
                                              (let ((_e9222492276_
                                                     (gx#syntax-e
                                                      _e9222192242_)))
                                                (let ((_hd9222592279_
                                                       (##car _e9222492276_))
                                                      (_tl9222692281_
                                                       (##cdr _e9222492276_)))
                                                  (if (and (gx#identifier?
                                                            _hd9222592279_)
                                                           (gx#core-identifier=?
                                                            _hd9222592279_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9222692281_)
                                                          (let ((_e9222792284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9222692281_)))
                    (let ((_hd9222892287_ (##car _e9222792284_))
                          (_tl9222992289_ (##cdr _e9222792284_)))
                      (let ((_hd-bind92292_ _hd9222892287_))
                        (if (gx#stx-pair? _tl9222992289_)
                            (let ((_e9223092294_ (gx#syntax-e _tl9222992289_)))
                              (let ((_hd9223192297_ (##car _e9223092294_))
                                    (_tl9223292299_ (##cdr _e9223092294_)))
                                (let ((_expr92302_ _hd9223192297_))
                                  (if (gx#stx-null? _tl9223292299_)
                                      (if '#t
                                          (_lp92196_
                                           _rest92219_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind92292_)
                                                   (gx#core-expand-expression
                                                    _expr92302_))
                                                  (gx#stx-source _hd92220_))
                                                 _body92199_))
                                          (_E9222392272_))
                                      (_E9222392272_)))))
                            (_E9222392272_)))))
                  (_E9222392272_))
              (_E9222392272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9222392272_)))))
                                  (_E9222292304_)))))
                        (if (##pair? _rest9220092208_)
                            (let ((_hd9220592311_ (##car _rest9220092208_))
                                  (_tl9220692313_ (##cdr _rest9220092208_)))
                              (let* ((_hd92316_ _hd9220592311_)
                                     (_rest92318_ _tl9220692313_))
                                (_K9220492308_ _rest92318_ _hd92316_)))
                            (_else9220292216_)))))))
          (_expand-body92192_
           (gx#core-expand-block__%
            (cons '%#begin-module _body92189_)
            _expand-special92191_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx92032_
               _expanded?92033_
               _method92034_
               _current-phi92035_
               _expand192036_)
        (letrec ((_K92038_
                  (lambda (_rest92156_ _r92157_)
                    (let* ((_e9215892165_ _rest92156_)
                           (_E9216092169_ (lambda () _r92157_))
                           (_E9215992185_
                            (lambda ()
                              (if (gx#stx-pair? _e9215892165_)
                                  (let ((_e9216192173_
                                         (gx#syntax-e _e9215892165_)))
                                    (let ((_hd9216292176_
                                           (##car _e9216192173_))
                                          (_tl9216392178_
                                           (##cdr _e9216192173_)))
                                      (let* ((_hd92181_ _hd9216292176_)
                                             (_rest92183_ _tl9216392178_))
                                        (if '#t
                                            (_step92039_
                                             _hd92181_
                                             _rest92183_
                                             _r92157_)
                                            (_E9216092169_)))))
                                  (_E9216092169_)))))
                      (_E9215992185_))))
                 (_step92039_
                  (lambda (_hd92070_ _rest92071_ _r92072_)
                    (let* ((_e9207392091_ _hd92070_)
                           (_E9208692095_
                            (lambda ()
                              (if (_expanded?92033_ (gx#stx-e _hd92070_))
                                  (_K92038_
                                   _rest92071_
                                   (cons (gx#stx-e _hd92070_) _r92072_))
                                  (_expand192036_
                                   _hd92070_
                                   _K92038_
                                   _rest92071_
                                   _r92072_))))
                           (_E9208292111_
                            (lambda ()
                              (if (gx#stx-pair? _e9207392091_)
                                  (let ((_e9208792099_
                                         (gx#syntax-e _e9207392091_)))
                                    (let ((_hd9208892102_
                                           (##car _e9208792099_))
                                          (_tl9208992104_
                                           (##cdr _e9208792099_)))
                                      (let* ((_macro92107_ _hd9208892102_)
                                             (_body92109_ _tl9208992104_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro92107_
                                             gx#syntax-binding?)
                                            (_K92038_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro92107_)
                                                    _hd92070_
                                                    _method92034_)
                                                   _rest92071_)
                                             _r92072_)
                                            (_E9208692095_)))))
                                  (_E9208692095_))))
                           (_E9207592125_
                            (lambda ()
                              (if (gx#stx-pair? _e9207392091_)
                                  (let ((_e9208392115_
                                         (gx#syntax-e _e9207392091_)))
                                    (let ((_hd9208492118_
                                           (##car _e9208392115_))
                                          (_tl9208592120_
                                           (##cdr _e9208392115_)))
                                      (if (eq? (gx#stx-e _hd9208492118_)
                                               'begin:)
                                          (let ((_body92123_ _tl9208592120_))
                                            (if '#t
                                                (_K92038_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest92071_
                                                  _body92123_)
                                                 _r92072_)
                                                (_E9208292111_)))
                                          (_E9208292111_))))
                                  (_E9208292111_))))
                           (_E9207492152_
                            (lambda ()
                              (if (gx#stx-pair? _e9207392091_)
                                  (let ((_e9207692129_
                                         (gx#syntax-e _e9207392091_)))
                                    (let ((_hd9207792132_
                                           (##car _e9207692129_))
                                          (_tl9207892134_
                                           (##cdr _e9207692129_)))
                                      (if (eq? (gx#stx-e _hd9207792132_) 'phi:)
                                          (if (gx#stx-pair? _tl9207892134_)
                                              (let ((_e9207992137_
                                                     (gx#syntax-e
                                                      _tl9207892134_)))
                                                (let ((_hd9208092140_
                                                       (##car _e9207992137_))
                                                      (_tl9208192142_
                                                       (##cdr _e9207992137_)))
                                                  (let* ((_dphi92145_
                                                          _hd9208092140_)
                                                         (_body92147_
                                                          _tl9208192142_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi92145_)
                                                        (let ((_rbody92150_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K92038_ _body92147_ '()))
                        _current-phi92035_
                        (fx+ (gx#stx-e _dphi92145_) (_current-phi92035_)))))
                  (_K92038_ _rest92071_ (foldr1 cons _r92072_ _rbody92150_)))
                (_E9207592125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9207592125_))
                                          (_E9207592125_))))
                                  (_E9207592125_)))))
                      (_E9207492152_)))))
          (let* ((_e9204092047_ _stx92032_)
                 (_E9204292051_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9204092047_)))
                 (_E9204192066_
                  (lambda ()
                    (if (gx#stx-pair? _e9204092047_)
                        (let ((_e9204392055_ (gx#syntax-e _e9204092047_)))
                          (let ((_hd9204492058_ (##car _e9204392055_))
                                (_tl9204592060_ (##cdr _e9204392055_)))
                            (let ((_body92063_ _tl9204592060_))
                              (if '#t
                                  (if (_current-phi92035_)
                                      (_K92038_ _body92063_ '())
                                      (call-with-parameters
                                       (lambda () (_K92038_ _body92063_ '()))
                                       _current-phi92035_
                                       (gx#current-expander-phi)))
                                  (_E9204292051_)))))
                        (_E9204292051_)))))
            (_E9204192066_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91699_ _internal-expand?91700_)
        (letrec ((_expand191702_
                  (lambda (_hd92012_ _K92013_ _rest92014_ _r92015_)
                    (if (gx#core-bound-module? _hd92012_)
                        (_import191703_
                         (gx#syntax-local-e__0 _hd92012_)
                         _K92013_
                         _rest92014_
                         _r92015_)
                        (if (gx#core-library-module-path? _hd92012_)
                            (_import191703_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd92012_))
                             _K92013_
                             _rest92014_
                             _r92015_)
                            (if (gx#core-library-relative-module-path?
                                 _hd92012_)
                                (_import191703_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd92012_))
                                 _K92013_
                                 _rest92014_
                                 _r92015_)
                                (let ((_e92017_ (gx#stx-e _hd92012_)))
                                  (if (pair? _e92017_)
                                      (let ((_$e92019_
                                             (gx#stx-e (car _e92017_))))
                                        (if (eq? 'spec: _$e92019_)
                                            (_import-spec91706_
                                             _hd92012_
                                             _K92013_
                                             _rest92014_
                                             _r92015_)
                                            (if (eq? 'in: _$e92019_)
                                                (_import-submodule91704_
                                                 _hd92012_
                                                 _K92013_
                                                 _rest92014_
                                                 _r92015_)
                                                (if (eq? 'runtime: _$e92019_)
                                                    (_import-runtime91705_
                                                     _hd92012_
                                                     _K92013_
                                                     _rest92014_
                                                     _r92015_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91699_
                                                     _hd92012_)))))
                                      (if (string? _e92017_)
                                          (_import191703_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd92012_
                                             (gx#stx-source _stx91699_)))
                                           _K92013_
                                           _rest92014_
                                           _r92015_)
                                          (if (##structure-instance-of?
                                               _e92017_
                                               'gx#module-context::t)
                                              (_K92013_
                                               _rest92014_
                                               (cons _e92017_ _r92015_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91699_
                                               _hd92012_))))))))))
                 (_import191703_
                  (lambda (_ctx92001_ _K92002_ _rest92003_ _r92004_)
                    (let ((_dphi92006_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K92002_
                       _rest92003_
                       (cons (##structure
                              gx#import-set::t
                              _ctx92001_
                              _dphi92006_
                              (map (lambda (_g9200792009_)
                                     (gx#core-module-export->import__%
                                      _g9200792009_
                                      '#f
                                      _dphi92006_))
                                   (##unchecked-structure-ref
                                    _ctx92001_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r92004_)))))
                 (_import-submodule91704_
                  (lambda (_hd91968_ _K91969_ _rest91970_ _r91971_)
                    (let* ((_e9197291979_ _hd91968_)
                           (_E9197491983_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9197291979_)))
                           (_E9197391997_
                            (lambda ()
                              (if (gx#stx-pair? _e9197291979_)
                                  (let ((_e9197591987_
                                         (gx#syntax-e _e9197291979_)))
                                    (let ((_hd9197691990_
                                           (##car _e9197591987_))
                                          (_tl9197791992_
                                           (##cdr _e9197591987_)))
                                      (let ((_spath91995_ _tl9197791992_))
                                        (if '#t
                                            (_import191703_
                                             (_import-spec-source91707_
                                              _spath91995_)
                                             _K91969_
                                             _rest91970_
                                             _r91971_)
                                            (_E9197491983_)))))
                                  (_E9197491983_)))))
                      (_E9197391997_))))
                 (_import-runtime91705_
                  (lambda (_hd91935_ _K91936_ _rest91937_ _r91938_)
                    (let* ((_e9193991946_ _hd91935_)
                           (_E9194191950_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9193991946_)))
                           (_E9194091964_
                            (lambda ()
                              (if (gx#stx-pair? _e9193991946_)
                                  (let ((_e9194291954_
                                         (gx#syntax-e _e9193991946_)))
                                    (let ((_hd9194391957_
                                           (##car _e9194291954_))
                                          (_tl9194491959_
                                           (##cdr _e9194291954_)))
                                      (let ((_spath91962_ _tl9194491959_))
                                        (if '#t
                                            (_K91936_
                                             _rest91937_
                                             (cons (_import-spec-source91707_
                                                    _spath91962_)
                                                   _r91938_))
                                            (_E9194191950_)))))
                                  (_E9194191950_)))))
                      (_E9194091964_))))
                 (_import-spec91706_
                  (lambda (_hd91774_ _K91775_ _rest91776_ _r91777_)
                    (let* ((_e9177891795_ _hd91774_)
                           (_E9178791799_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9177891795_)))
                           (_E9178091909_
                            (lambda ()
                              (if (gx#stx-pair? _e9177891795_)
                                  (let ((_e9178891803_
                                         (gx#syntax-e _e9177891795_)))
                                    (let ((_hd9178991806_
                                           (##car _e9178891803_))
                                          (_tl9179091808_
                                           (##cdr _e9178891803_)))
                                      (if (gx#stx-pair? _tl9179091808_)
                                          (let ((_e9179191811_
                                                 (gx#syntax-e _tl9179091808_)))
                                            (let ((_hd9179291814_
                                                   (##car _e9179191811_))
                                                  (_tl9179391816_
                                                   (##cdr _e9179191811_)))
                                              (let* ((_path91819_
                                                      _hd9179291814_)
                                                     (_specs91821_
                                                      _tl9179391816_))
                                                (if '#t
                                                    (let ((_src-ctx91823_
                                                           (_import-spec-source91707_
                                                            _path91819_))
                                                          (_exports91824_
                                                           (make-hash-table))
                                                          (_specs91825_
                                                           (gx#syntax->list
                                                            _specs91821_)))
                                                      (for-each
                                                       (lambda (_out91827_)
                                                         (hash-put!
                                                          _exports91824_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91827_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91827_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91827_))
               (##unchecked-structure-ref
                _src-ctx91823_
                '9
                gx#module-context::t
                '#f))
              (_K91775_
               _rest91776_
               (foldl1 (lambda (_spec91829_ _r91830_)
                         (let* ((_e9183191847_ _spec91829_)
                                (_E9183391851_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9183191847_)))
                                (_E9183291905_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9183191847_)
                                       (let ((_e9183491855_
                                              (gx#syntax-e _e9183191847_)))
                                         (let ((_hd9183591858_
                                                (##car _e9183491855_))
                                               (_tl9183691860_
                                                (##cdr _e9183491855_)))
                                           (let ((_phi91863_ _hd9183591858_))
                                             (if (gx#stx-pair? _tl9183691860_)
                                                 (let ((_e9183791865_
                                                        (gx#syntax-e
                                                         _tl9183691860_)))
                                                   (let ((_hd9183891868_
                                                          (##car _e9183791865_))
                                                         (_tl9183991870_
                                                          (##cdr _e9183791865_)))
                                                     (let ((_name91873_
                                                            _hd9183891868_))
                                                       (if (gx#stx-pair?
                                                            _tl9183991870_)
                                                           (let ((_e9184091875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9183991870_)))
                     (let ((_hd9184191878_ (##car _e9184091875_))
                           (_tl9184291880_ (##cdr _e9184091875_)))
                       (let ((_src-phi91883_ _hd9184191878_))
                         (if (gx#stx-pair? _tl9184291880_)
                             (let ((_e9184391885_
                                    (gx#syntax-e _tl9184291880_)))
                               (let ((_hd9184491888_ (##car _e9184391885_))
                                     (_tl9184591890_ (##cdr _e9184391885_)))
                                 (let ((_src-name91893_ _hd9184491888_))
                                   (if (gx#stx-null? _tl9184591890_)
                                       (if (and (gx#stx-fixnum? _src-phi91883_)
                                                (gx#identifier?
                                                 _src-name91893_)
                                                (gx#stx-fixnum? _phi91863_)
                                                (gx#identifier? _name91873_))
                                           (let ((_src-phi91895_
                                                  (gx#stx-e _src-phi91883_))
                                                 (_src-name91896_
                                                  (gx#core-identifier-key
                                                   _src-name91893_))
                                                 (_phi91897_
                                                  (gx#stx-e _phi91863_))
                                                 (_name91898_
                                                  (gx#core-identifier-key
                                                   _name91873_)))
                                             (let ((_$e91900_
                                                    (hash-get
                                                     _exports91824_
                                                     (cons _src-phi91895_
                                                           _src-name91896_))))
                                               (if _$e91900_
                                                   ((lambda (_out91903_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91903_
                                                             _name91898_
                                                             (fx- _phi91897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91895_))
                    _r91830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91900_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91699_
                                                    _hd91774_))))
                                           (_E9183391851_))
                                       (_E9183391851_)))))
                             (_E9183391851_)))))
                   (_E9183391851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9183391851_)))))
                                       (_E9183391851_)))))
                           (_E9183291905_)))
                       _r91777_
                       _specs91825_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9178791799_)))))
                                          (_E9178791799_))))
                                  (_E9178791799_))))
                           (_E9177991931_
                            (lambda ()
                              (if (gx#stx-pair? _e9177891795_)
                                  (let ((_e9178191913_
                                         (gx#syntax-e _e9177891795_)))
                                    (let ((_hd9178291916_
                                           (##car _e9178191913_))
                                          (_tl9178391918_
                                           (##cdr _e9178191913_)))
                                      (if (gx#stx-pair? _tl9178391918_)
                                          (let ((_e9178491921_
                                                 (gx#syntax-e _tl9178391918_)))
                                            (let ((_hd9178591924_
                                                   (##car _e9178491921_))
                                                  (_tl9178691926_
                                                   (##cdr _e9178491921_)))
                                              (let ((_path91929_
                                                     _hd9178591924_))
                                                (if (gx#stx-null?
                                                     _tl9178691926_)
                                                    (if '#t
                                                        (_K91775_
                                                         _rest91776_
                                                         (cons (_import-spec-source91707_
                                                                _path91929_)
                                                               _r91777_))
                                                        (_E9178091909_))
                                                    (_E9178091909_)))))
                                          (_E9178091909_))))
                                  (_E9178091909_)))))
                      (_E9177991931_))))
                 (_import-spec-source91707_
                  (lambda (_spath91772_)
                    (gx#core-import-nested-module _spath91772_ _stx91699_)))
                 (_import!91708_
                  (lambda (_rbody91721_)
                    (letrec* ((_current-ctx91723_
                               (gx#current-expander-context))
                              (_deps91724_ (make-hash-table-eq))
                              (_bind!91725_
                               (lambda (_hd91770_)
                                 (gx#core-bind-import!__1
                                  _hd91770_
                                  _current-ctx91723_))))
                      (let _lp91727_ ((_rest91729_ _rbody91721_)
                                      (_body91730_ '()))
                        (let* ((_rest9173191739_ _rest91729_)
                               (_else9173391749_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91723_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91723_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91723_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91730_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91747_ _g94593_)
                                     (gx#eval-module _ctx91747_))
                                   _deps91724_)
                                  _body91730_))
                               (_K9173591758_
                                (lambda (_rest91752_ _hd91753_)
                                  (if (##structure-direct-instance-of?
                                       _hd91753_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91725_ _hd91753_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91753_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91753_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91724_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91753_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91753_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91725_
                                             (##unchecked-structure-ref
                                              _hd91753_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91753_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91724_
                                                 (##unchecked-structure-ref
                                                  _hd91753_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91755_
                                                 (##structure-instance-of?
                                                  _hd91753_
                                                  'gx#module-context::t)))
                                            (if _$e91755_
                                                _$e91755_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91699_
                                                 _hd91753_)))))
                                  (_lp91727_
                                   _rest91752_
                                   (cons _hd91753_ _body91730_)))))
                          (if (##pair? _rest9173191739_)
                              (let ((_hd9173691761_ (##car _rest9173191739_))
                                    (_tl9173791763_ (##cdr _rest9173191739_)))
                                (let* ((_hd91766_ _hd9173691761_)
                                       (_rest91768_ _tl9173791763_))
                                  (_K9173591758_ _rest91768_ _hd91766_)))
                              (_else9173391749_)))))))
                 (_expanded-import?91709_
                  (lambda (_e91713_)
                    (let ((_$e91715_
                           (##structure-direct-instance-of?
                            _e91713_
                            'gx#import-set::t)))
                      (if _$e91715_
                          _$e91715_
                          (let ((_$e91718_
                                 (##structure-direct-instance-of?
                                  _e91713_
                                  'gx#module-import::t)))
                            (if _$e91718_
                                _$e91718_
                                (##structure-instance-of?
                                 _e91713_
                                 'gx#module-context::t))))))))
          (let ((_rbody91711_
                 (gx#core-expand-import/export
                  _stx91699_
                  _expanded-import?91709_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191702_)))
            (if _internal-expand?91700_
                (reverse _rbody91711_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91708_ _rbody91711_))
                 (gx#stx-source _stx91699_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx92025_)
        (let ((_internal-expand?92027_ '#f))
          (gx#core-expand-import%__% _stx92025_ _internal-expand?92027_))))
    (define gx#core-expand-import%
      (lambda _g94595_
        (let ((_g94594_ (##length _g94595_)))
          (cond ((##fx= _g94594_ 1)
                 (apply (lambda (_stx92025_)
                          (gx#core-expand-import%__0 _stx92025_))
                        _g94595_))
                ((##fx= _g94594_ 2)
                 (apply (lambda (_stx92029_ _internal-expand?92030_)
                          (gx#core-expand-import%__%
                           _stx92029_
                           _internal-expand?92030_))
                        _g94595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94595_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91626_ _where91627_)
        (let* ((_e9162891635_ _spath91626_)
               (_E9163091639_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9162891635_)))
               (_E9162991694_
                (lambda ()
                  (if (gx#stx-pair? _e9162891635_)
                      (let ((_e9163191643_ (gx#syntax-e _e9162891635_)))
                        (let ((_hd9163291646_ (##car _e9163191643_))
                              (_tl9163391648_ (##cdr _e9163191643_)))
                          (let* ((_origin91651_ _hd9163291646_)
                                 (_sub91653_ _tl9163391648_))
                            (if '#t
                                (let ((_origin-ctx91655_
                                       (if (gx#stx-false? _origin91651_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91651_))))
                                  (let _lp91657_ ((_rest91659_ _sub91653_)
                                                  (_ctx91660_
                                                   _origin-ctx91655_))
                                    (let* ((_e9166191668_ _rest91659_)
                                           (_E9166391672_
                                            (lambda () _ctx91660_))
                                           (_E9166291690_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9166191668_)
                                                  (let ((_e9166491676_
                                                         (gx#syntax-e
                                                          _e9166191668_)))
                                                    (let ((_hd9166591679_
                                                           (##car _e9166491676_))
                                                          (_tl9166691681_
                                                           (##cdr _e9166491676_)))
                                                      (let* ((_id91684_
                                                              _hd9166591679_)
                                                             (_rest91686_
                                                              _tl9166691681_))
                                                        (if '#t
                                                            (let ((_bind91688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91684_ '0 _ctx91660_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91688_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91688_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91627_
                           _spath91626_
                           _id91684_))
                      (_lp91657_
                       _rest91686_
                       (##unchecked-structure-ref
                        _bind91688_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9166391672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9166391672_)))))
                                      (_E9166291690_))))
                                (_E9163091639_)))))
                      (_E9163091639_)))))
          (_E9162991694_))))
    (define gx#core-expand-import-source
      (lambda (_hd91624_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91624_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx91132_ _internal-expand?91133_)
        (letrec* ((_make-export__9452494525_
                   (lambda (_bind91572_ _phi91573_ _ctx91574_ _name91575_)
                     (let* ((_key91577_
                             (##unchecked-structure-ref
                              _bind91572_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91579_
                             (if _name91575_
                                 (gx#core-identifier-key _name91575_)
                                 _key91577_)))
                       (##structure
                        gx#module-export::t
                        _ctx91574_
                        _key91577_
                        _phi91573_
                        _export-key91579_
                        (let ((_$e91582_
                               (##structure-instance-of?
                                _bind91572_
                                'gx#extern-binding::t)))
                          (if _$e91582_
                              _$e91582_
                              (##structure-direct-instance-of?
                               _bind91572_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9452694529_
                   (lambda (_bind91588_)
                     (let* ((_phi91590_ (gx#current-export-expander-phi))
                            (_ctx91592_ (gx#current-expander-context))
                            (_name91594_ '#f))
                       (_make-export__9452494525_
                        _bind91588_
                        _phi91590_
                        _ctx91592_
                        _name91594_))))
                  (_make-export__1__9452794530_
                   (lambda (_bind91596_ _phi91597_)
                     (let* ((_ctx91599_ (gx#current-expander-context))
                            (_name91601_ '#f))
                       (_make-export__9452494525_
                        _bind91596_
                        _phi91597_
                        _ctx91599_
                        _name91601_))))
                  (_make-export__2__9452894531_
                   (lambda (_bind91603_ _phi91604_ _ctx91605_)
                     (let ((_name91607_ '#f))
                       (_make-export__9452494525_
                        _bind91603_
                        _phi91604_
                        _ctx91605_
                        _name91607_))))
                  (_make-export91135_
                   (lambda _g94597_
                     (let ((_g94596_ (##length _g94597_)))
                       (cond ((##fx= _g94596_ 1)
                              (apply (lambda (_bind91588_)
                                       (_make-export__0__9452694529_
                                        _bind91588_))
                                     _g94597_))
                             ((##fx= _g94596_ 2)
                              (apply (lambda (_bind91596_ _phi91597_)
                                       (_make-export__1__9452794530_
                                        _bind91596_
                                        _phi91597_))
                                     _g94597_))
                             ((##fx= _g94596_ 3)
                              (apply (lambda (_bind91603_
                                              _phi91604_
                                              _ctx91605_)
                                       (_make-export__2__9452894531_
                                        _bind91603_
                                        _phi91604_
                                        _ctx91605_))
                                     _g94597_))
                             ((##fx= _g94596_ 4)
                              (apply (lambda (_bind91609_
                                              _phi91610_
                                              _ctx91611_
                                              _name91612_)
                                       (_make-export__9452494525_
                                        _bind91609_
                                        _phi91610_
                                        _ctx91611_
                                        _name91612_))
                                     _g94597_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94597_))))))
                  (_expand191136_
                   (lambda (_hd91285_ _K91286_ _rest91287_ _r91288_)
                     (let* ((_e9128991321_ _hd91285_)
                            (_E9131691325_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx91132_
                                _hd91285_)))
                            (_E9130691404_
                             (lambda ()
                               (if (gx#stx-pair? _e9128991321_)
                                   (let ((_e9131791329_
                                          (gx#syntax-e _e9128991321_)))
                                     (let ((_hd9131891332_
                                            (##car _e9131791329_))
                                           (_tl9131991334_
                                            (##cdr _e9131791329_)))
                                       (if (eq? (gx#stx-e _hd9131891332_)
                                                'import:)
                                           (let ((_in91337_ _tl9131991334_))
                                             (if (gx#stx-list? _in91337_)
                                                 (let _lp91339_ ((_in-rest91341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in91337_)
                         (_r91342_ _r91288_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9134391350_
                                                           _in-rest91341_)
                                                          (_E9134591354_
                                                           (lambda ()
                                                             (_K91286_
                                                              _rest91287_
                                                              _r91342_)))
                                                          (_E9134491400_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9134391350_)
                         (let ((_e9134691358_ (gx#syntax-e _e9134391350_)))
                           (let ((_hd9134791361_ (##car _e9134691358_))
                                 (_tl9134891363_ (##cdr _e9134691358_)))
                             (let* ((_hd91366_ _hd9134791361_)
                                    (_in-rest91368_ _tl9134891363_))
                               (if '#t
                                   (let ((_src91398_
                                          (if (gx#core-bound-module? _hd91366_)
                                              (gx#syntax-local-e__0 _hd91366_)
                                              (if (gx#core-library-module-path?
                                                   _hd91366_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd91366_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd91366_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd91366_))
                                                      (if (gx#stx-string?
                                                           _hd91366_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd91366_
                                                            (gx#stx-source
                                                             _stx91132_)))
                                                          (let* ((_e9136991376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91366_)
                         (_E9137191380_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx91132_
                             _hd91366_)))
                         (_E9137091394_
                          (lambda ()
                            (if (gx#stx-pair? _e9136991376_)
                                (let ((_e9137291384_
                                       (gx#syntax-e _e9136991376_)))
                                  (let ((_hd9137391387_ (##car _e9137291384_))
                                        (_tl9137491389_ (##cdr _e9137291384_)))
                                    (if (eq? (gx#stx-e _hd9137391387_) 'in:)
                                        (let ((_spath91392_ _tl9137491389_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91392_
                                               _stx91132_)
                                              (_E9137191380_)))
                                        (_E9137191380_))))
                                (_E9137191380_)))))
                    (_E9137091394_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp91339_
                                      _in-rest91368_
                                      (_export-imports91137_
                                       _src91398_
                                       _r91342_)))
                                   (_E9134591354_)))))
                         (_E9134591354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9134491400_)))
                                                 (_E9131691325_)))
                                           (_E9131691325_))))
                                   (_E9131691325_))))
                            (_E9129391443_
                             (lambda ()
                               (if (gx#stx-pair? _e9128991321_)
                                   (let ((_e9130791408_
                                          (gx#syntax-e _e9128991321_)))
                                     (let ((_hd9130891411_
                                            (##car _e9130791408_))
                                           (_tl9130991413_
                                            (##cdr _e9130791408_)))
                                       (if (eq? (gx#stx-e _hd9130891411_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9130991413_)
                                               (let ((_e9131091416_
                                                      (gx#syntax-e
                                                       _tl9130991413_)))
                                                 (let ((_hd9131191419_
                                                        (##car _e9131091416_))
                                                       (_tl9131291421_
                                                        (##cdr _e9131091416_)))
                                                   (let ((_id91424_
                                                          _hd9131191419_))
                                                     (if (gx#stx-pair?
                                                          _tl9131291421_)
                                                         (let ((_e9131391426_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9131291421_)))
                   (let ((_hd9131491429_ (##car _e9131391426_))
                         (_tl9131591431_ (##cdr _e9131391426_)))
                     (let ((_name91434_ _hd9131491429_))
                       (if (gx#stx-null? _tl9131591431_)
                           (if '#t
                               (let* ((_phi91436_
                                       (gx#current-export-expander-phi))
                                      (_$e91438_
                                       (gx#core-resolve-identifier__1
                                        _id91424_
                                        _phi91436_)))
                                 (if _$e91438_
                                     ((lambda (_bind91441_)
                                        (_K91286_
                                         _rest91287_
                                         (cons (_make-export__9452494525_
                                                _bind91441_
                                                _phi91436_
                                                (gx#current-expander-context)
                                                _name91434_)
                                               _r91288_)))
                                      _$e91438_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx91132_
                                      _hd91285_
                                      _id91424_)))
                               (_E9130691404_))
                           (_E9130691404_)))))
                 (_E9130691404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9130691404_))
                                           (_E9130691404_))))
                                   (_E9130691404_))))
                            (_E9129291492_
                             (lambda ()
                               (if (gx#stx-pair? _e9128991321_)
                                   (let ((_e9129491447_
                                          (gx#syntax-e _e9128991321_)))
                                     (let ((_hd9129591450_
                                            (##car _e9129491447_))
                                           (_tl9129691452_
                                            (##cdr _e9129491447_)))
                                       (if (eq? (gx#stx-e _hd9129591450_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9129691452_)
                                               (let ((_e9129791455_
                                                      (gx#syntax-e
                                                       _tl9129691452_)))
                                                 (let ((_hd9129891458_
                                                        (##car _e9129791455_))
                                                       (_tl9129991460_
                                                        (##cdr _e9129791455_)))
                                                   (let ((_phi91463_
                                                          _hd9129891458_))
                                                     (if (gx#stx-pair?
                                                          _tl9129991460_)
                                                         (let ((_e9130091465_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9129991460_)))
                   (let ((_hd9130191468_ (##car _e9130091465_))
                         (_tl9130291470_ (##cdr _e9130091465_)))
                     (let ((_id91473_ _hd9130191468_))
                       (if (gx#stx-pair? _tl9130291470_)
                           (let ((_e9130391475_ (gx#syntax-e _tl9130291470_)))
                             (let ((_hd9130491478_ (##car _e9130391475_))
                                   (_tl9130591480_ (##cdr _e9130391475_)))
                               (let ((_name91483_ _hd9130491478_))
                                 (if (gx#stx-null? _tl9130591480_)
                                     (if (and (gx#stx-fixnum? _phi91463_)
                                              (gx#identifier? _id91473_)
                                              (gx#identifier? _name91483_))
                                         (let* ((_phi91485_
                                                 (gx#stx-e _phi91463_))
                                                (_$e91487_
                                                 (gx#core-resolve-identifier__1
                                                  _id91473_
                                                  _phi91485_)))
                                           (if _$e91487_
                                               ((lambda (_bind91490_)
                                                  (_K91286_
                                                   _rest91287_
                                                   (cons (_make-export__9452494525_
                                                          _bind91490_
                                                          _phi91485_
                                                          (gx#current-expander-context)
                                                          _name91483_)
                                                         _r91288_)))
                                                _$e91487_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx91132_
                                                _hd91285_
                                                _id91473_)))
                                         (_E9129391443_))
                                     (_E9129391443_)))))
                           (_E9129391443_)))))
                 (_E9129391443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9129391443_))
                                           (_E9129391443_))))
                                   (_E9129391443_))))
                            (_E9129191503_
                             (lambda ()
                               (let ((_id91496_ _e9128991321_))
                                 (if (gx#identifier? _id91496_)
                                     (let ((_$e91498_
                                            (gx#core-resolve-identifier__1
                                             _id91496_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91498_
                                           ((lambda (_bind91501_)
                                              (_K91286_
                                               _rest91287_
                                               (cons (_make-export__0__9452694529_
                                                      _bind91501_)
                                                     _r91288_)))
                                            _$e91498_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx91132_
                                            _hd91285_)))
                                     (_E9129291492_)))))
                            (_E9129091567_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9128991321_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91507_
                                               (gx#current-expander-context))
                                              (_current-phi91509_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91511_
                                               (gx#core-context-shift
                                                _current-ctx91507_
                                                _current-phi91509_))
                                              (_phi-bind91513_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91511_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91516_ ((_bind-rest91518_
                                                          _phi-bind91513_)
                                                         (_set91519_ '()))
                                           (let* ((_bind-rest9152091530_
                                                   _bind-rest91518_)
                                                  (_else9152291538_
                                                   (lambda ()
                                                     (_K91286_
                                                      _rest91287_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91509_
                                                             _set91519_)
                                                            _r91288_))))
                                                  (_K9152491548_
                                                   (lambda (_bind-rest91541_
                                                            _bind91542_
                                                            _key91543_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91542_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91542_))
                                                         (_lp91516_
                                                          _bind-rest91541_
                                                          _set91519_)
                                                         (_lp91516_
                                                          _bind-rest91541_
                                                          (cons (_make-export__2__9452894531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91542_
                         _current-phi91509_
                         _current-ctx91507_)
                        _set91519_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9152091530_)
                                                 (let ((_hd9152591551_
                                                        (##car _bind-rest9152091530_))
                                                       (_tl9152691553_
                                                        (##cdr _bind-rest9152091530_)))
                                                   (if (##pair? _hd9152591551_)
                                                       (let ((_hd9152791556_
                                                              (##car _hd9152591551_))
                                                             (_tl9152891558_
                                                              (##cdr _hd9152591551_)))
                                                         (let* ((_key91561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9152791556_)
                        (_bind91563_ _tl9152891558_)
                        (_bind-rest91565_ _tl9152691553_))
                   (_K9152491548_ _bind-rest91565_ _bind91563_ _key91561_)))
               (_else9152291538_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9152291538_)))))
                                       (_E9129191503_))
                                   (_E9129191503_)))))
                       (_E9129091567_))))
                  (_export-imports91137_
                   (lambda (_src91161_ _r91162_)
                     (letrec* ((_current-ctx91164_
                                (gx#current-expander-context))
                               (_current-phi91165_
                                (gx#current-export-expander-phi))
                               (_import->export91166_
                                (lambda (_in91247_)
                                  (let* ((_in9124891256_ _in91247_)
                                         (_E9125091260_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9124891256_)))
                                         (_K9125191267_
                                          (lambda (_phi91263_
                                                   _key91264_
                                                   _out91265_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx91164_
                                             _key91264_
                                             _phi91263_
                                             _key91264_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9124891256_
                                         'gx#module-import::t)
                                        (let* ((_e9125291270_
                                                (##unchecked-structure-ref
                                                 _in9124891256_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out91273_ _e9125291270_)
                                               (_e9125391275_
                                                (##unchecked-structure-ref
                                                 _in9124891256_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key91278_ _e9125391275_)
                                               (_e9125491280_
                                                (##unchecked-structure-ref
                                                 _in9124891256_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi91283_ _e9125491280_))
                                          (_K9125191267_
                                           _phi91283_
                                           _key91278_
                                           _out91273_))
                                        (_E9125091260_)))))
                               (_fold-e91167_
                                (lambda (_in91169_ _r91170_)
                                  (let* ((_in9117191185_ _in91169_)
                                         (_else9117491193_
                                          (lambda () _r91170_)))
                                    (let ((_K9118091229_
                                           (lambda (_phi91225_
                                                    _key91226_
                                                    _out91227_)
                                             (if (and (fx= _phi91225_
                                                           _current-phi91165_)
                                                      (eq? _src91161_
                                                           (##unchecked-structure-ref
                                                            _out91227_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export91166_
                                                        _in91169_)
                                                       _r91170_)
                                                 _r91170_)))
                                          (_K9117691204_
                                           (lambda (_imports91197_
                                                    _phi91198_
                                                    _ctx91199_)
                                             (if (and (fx= _phi91198_
                                                           _current-phi91165_)
                                                      (eq? _src91161_
                                                           _ctx91199_))
                                                 (foldl1 (lambda (_in91201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r91202_)
                   (cons (_import->export91166_ _in91201_) _r91202_))
                 _r91170_
                 _imports91197_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r91170_))))
                                      (let ((_try-match9117391222_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9117191185_
                                                    'gx#import-set::t)
                                                   (let* ((_e9117791207_
                                                           (##unchecked-structure-ref
                                                            _in9117191185_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9117891212_
                                                           (##unchecked-structure-ref
                                                            _in9117191185_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9117991217_
                                                           (##unchecked-structure-ref
                                                            _in9117191185_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx91210_
                                                            _e9117791207_)
                                                           (_phi91215_
                                                            _e9117891212_)
                                                           (_imports91220_
                                                            _e9117991217_))
                                                       (_K9117691204_
                                                        _imports91220_
                                                        _phi91215_
                                                        _ctx91210_)))
                                                   (_else9117491193_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9117191185_
                                             'gx#module-import::t)
                                            (let* ((_e9118191232_
                                                    (##unchecked-structure-ref
                                                     _in9117191185_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9118291237_
                                                    (##unchecked-structure-ref
                                                     _in9117191185_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9118391242_
                                                    (##unchecked-structure-ref
                                                     _in9117191185_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out91235_ _e9118191232_)
                                                    (_key91240_ _e9118291237_)
                                                    (_phi91245_ _e9118391242_))
                                                (_K9118091229_
                                                 _phi91245_
                                                 _key91240_
                                                 _out91235_)))
                                            (_try-match9117391222_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src91161_
                              _current-phi91165_
                              (foldl1 _fold-e91167_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx91164_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r91162_))))
                  (_export!91138_
                   (lambda (_rbody91151_)
                     (letrec* ((_current-ctx91153_
                                (gx#current-expander-context))
                               (_fold-e91154_
                                (lambda (_out91158_ _r91159_)
                                  (if (##structure-direct-instance-of?
                                       _out91158_
                                       'gx#module-export::t)
                                      (cons _out91158_ _r91159_)
                                      (if (##structure-direct-instance-of?
                                           _out91158_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r91159_
                                                  (##unchecked-structure-ref
                                                   _out91158_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r91159_)))))
                       (let ((_body91156_ (reverse _rbody91151_)))
                         (##unchecked-structure-set!
                          _current-ctx91153_
                          (foldl1 _fold-e91154_
                                  (##unchecked-structure-ref
                                   _current-ctx91153_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body91156_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body91156_))))
                  (_expanded-export?91139_
                   (lambda (_e91146_)
                     (let ((_$e91148_
                            (##structure-direct-instance-of?
                             _e91146_
                             'gx#module-export::t)))
                       (if _$e91148_
                           _$e91148_
                           (##structure-direct-instance-of?
                            _e91146_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?91133_)
              (let ((_rbody91144_
                     (gx#core-expand-import/export
                      _stx91132_
                      _expanded-export?91139_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand191136_)))
                (if _internal-expand?91133_
                    (reverse _rbody91144_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!91138_ _rbody91144_))
                     (gx#stx-source _stx91132_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx91132_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx91132_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91617_)
        (let ((_internal-expand?91619_ '#f))
          (gx#core-expand-export%__% _stx91617_ _internal-expand?91619_))))
    (define gx#core-expand-export%
      (lambda _g94599_
        (let ((_g94598_ (##length _g94599_)))
          (cond ((##fx= _g94598_ 1)
                 (apply (lambda (_stx91617_)
                          (gx#core-expand-export%__0 _stx91617_))
                        _g94599_))
                ((##fx= _g94598_ 2)
                 (apply (lambda (_stx91621_ _internal-expand?91622_)
                          (gx#core-expand-export%__%
                           _stx91621_
                           _internal-expand?91622_))
                        _g94599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94599_))))))
    (define gx#core-expand-export-source
      (lambda (_hd91129_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd91129_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx91099_)
        (let* ((_e9110091107_ _stx91099_)
               (_E9110291111_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9110091107_)))
               (_E9110191125_
                (lambda ()
                  (if (gx#stx-pair? _e9110091107_)
                      (let ((_e9110391115_ (gx#syntax-e _e9110091107_)))
                        (let ((_hd9110491118_ (##car _e9110391115_))
                              (_tl9110591120_ (##cdr _e9110391115_)))
                          (let ((_body91123_ _tl9110591120_))
                            (if (gx#identifier-list? _body91123_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body91123_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body91123_))
                                   (gx#stx-source _stx91099_)))
                                (_E9110291111_)))))
                      (_E9110291111_)))))
          (_E9110191125_))))
    (define gx#core-bind-feature!__%
      (lambda (_id91065_ _private?91066_ _phi91067_ _ctx91068_)
        (gx#core-bind-syntax!__%
         _id91065_
         ((if _private?91066_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id91065_))
         _private?91066_
         _phi91067_
         _ctx91068_)))
    (define gx#core-bind-feature!__0
      (lambda (_id91073_)
        (let* ((_private?91075_ '#f)
               (_phi91077_ (gx#current-expander-phi))
               (_ctx91079_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91073_
           _private?91075_
           _phi91077_
           _ctx91079_))))
    (define gx#core-bind-feature!__1
      (lambda (_id91081_ _private?91082_)
        (let* ((_phi91084_ (gx#current-expander-phi))
               (_ctx91086_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91081_
           _private?91082_
           _phi91084_
           _ctx91086_))))
    (define gx#core-bind-feature!__2
      (lambda (_id91088_ _private?91089_ _phi91090_)
        (let ((_ctx91092_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91088_
           _private?91089_
           _phi91090_
           _ctx91092_))))
    (define gx#core-bind-feature!
      (lambda _g94601_
        (let ((_g94600_ (##length _g94601_)))
          (cond ((##fx= _g94600_ 1)
                 (apply (lambda (_id91073_)
                          (gx#core-bind-feature!__0 _id91073_))
                        _g94601_))
                ((##fx= _g94600_ 2)
                 (apply (lambda (_id91081_ _private?91082_)
                          (gx#core-bind-feature!__1 _id91081_ _private?91082_))
                        _g94601_))
                ((##fx= _g94600_ 3)
                 (apply (lambda (_id91088_ _private?91089_ _phi91090_)
                          (gx#core-bind-feature!__2
                           _id91088_
                           _private?91089_
                           _phi91090_))
                        _g94601_))
                ((##fx= _g94600_ 4)
                 (apply (lambda (_id91094_
                                 _private?91095_
                                 _phi91096_
                                 _ctx91097_)
                          (gx#core-bind-feature!__%
                           _id91094_
                           _private?91095_
                           _phi91096_
                           _ctx91097_))
                        _g94601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94601_))))))))
