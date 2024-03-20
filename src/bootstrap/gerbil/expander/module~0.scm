(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710943498)
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
      (lambda _$args94503_
        (apply make-instance gx#module-import::t _$args94503_)))
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
      (lambda _$args94500_
        (apply make-instance gx#module-export::t _$args94500_)))
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
      (lambda _$args94497_
        (apply make-instance gx#import-set::t _$args94497_)))
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
      (lambda _$args94494_
        (apply make-instance gx#export-set::t _$args94494_)))
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
      (lambda _$args94491_
        (apply make-instance gx#import-expander::t _$args94491_)))
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
      (lambda _$args94488_
        (apply make-instance gx#export-expander::t _$args94488_)))
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
      (lambda _$args94485_
        (apply make-instance gx#import-export-expander::t _$args94485_)))
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
      (lambda (_path94482_ _fun94483_)
        (call-with-input-file
         (cons 'path: (cons _path94482_ gx#source-file-settings))
         _fun94483_)))
    (define gx#module-context:::init!
      (lambda (_self94476_ _id94477_ _super94478_ _ns94479_ _path94480_)
        (if (##fx< '11 (##structure-length _self94476_))
            (begin
              (##unchecked-structure-set!
               _self94476_
               _id94477_
               '1
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               (make-hash-table-eq)
               '2
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               _super94478_
               '3
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               '#f
               '4
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               '#f
               '5
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               _ns94479_
               '6
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               _path94480_
               '7
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               '()
               '8
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               '()
               '9
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               '#f
               '10
               (##structure-type _self94476_)
               '#f)
              (##unchecked-structure-set!
               _self94476_
               '#f
               '11
               (##structure-type _self94476_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94476_
                   '11
                   (##vector-length _self94476_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self94320_ _ctx94321_ _root94322_)
        (let ((_super94330_
               (let ((_$e94324_ _root94322_))
                 (if _$e94324_
                     _$e94324_
                     (let ((_$e94327_ (gx#core-context-root__0)))
                       (if _$e94327_
                           _$e94327_
                           (let ((__obj94545
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94546
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94545
                                     ':init!)))
                               (if __constructor94546
                                   (__constructor94546 __obj94545)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94545)))))))
          (if _ctx94321_
              (let ((_id94333_
                     (##structure-ref
                      _ctx94321_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path94334_
                     (##structure-ref _ctx94321_ '7 gx#module-context::t '#f))
                    (_in94335_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx94321_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e94336_
                     (make-promise (lambda () (gx#eval-module _ctx94321_)))))
                (if (##fx< '8 (##structure-length _self94320_))
                    (begin
                      (##unchecked-structure-set!
                       _self94320_
                       _id94333_
                       '1
                       (##structure-type _self94320_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94320_
                       (make-hash-table-eq 'size: (length _in94335_))
                       '2
                       (##structure-type _self94320_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94320_
                       _super94330_
                       '3
                       (##structure-type _self94320_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94320_
                       '#f
                       '4
                       (##structure-type _self94320_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94320_
                       '#f
                       '5
                       (##structure-type _self94320_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94320_
                       _path94334_
                       '6
                       (##structure-type _self94320_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94320_
                       _in94335_
                       '7
                       (##structure-type _self94320_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94320_
                       _e94336_
                       '8
                       (##structure-type _self94320_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self94320_
                           '8
                           (##vector-length _self94320_)))
                (for-each
                 (lambda (_g9433794339_)
                   (gx#core-bind-weak-import!__% _g9433794339_ _self94320_))
                 _in94335_))
              (if (##fx< '8 (##structure-length _self94320_))
                  (begin
                    (##unchecked-structure-set!
                     _self94320_
                     '#f
                     '1
                     (##structure-type _self94320_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94320_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self94320_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94320_
                     _super94330_
                     '3
                     (##structure-type _self94320_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94320_
                     '#f
                     '4
                     (##structure-type _self94320_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94320_
                     '#f
                     '5
                     (##structure-type _self94320_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94320_
                     '#f
                     '6
                     (##structure-type _self94320_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94320_
                     '()
                     '7
                     (##structure-type _self94320_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94320_
                     '#f
                     '8
                     (##structure-type _self94320_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self94320_
                         '8
                         (##vector-length _self94320_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self94345_ _ctx94346_)
        (let ((_root94348_ '#f))
          (gx#prelude-context:::init!__% _self94345_ _ctx94346_ _root94348_))))
    (define gx#prelude-context:::init!
      (lambda _g94552_
        (let ((_g94551_ (##length _g94552_)))
          (cond ((##fx= _g94551_ 2)
                 (apply (lambda (_self94345_ _ctx94346_)
                          (gx#prelude-context:::init!__0
                           _self94345_
                           _ctx94346_))
                        _g94552_))
                ((##fx= _g94551_ 3)
                 (apply (lambda (_self94350_ _ctx94351_ _root94352_)
                          (gx#prelude-context:::init!__%
                           _self94350_
                           _ctx94351_
                           _root94352_))
                        _g94552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94552_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self94194_ _e94195_)
        (if (##fx< '3 (##structure-length _self94194_))
            (begin
              (##unchecked-structure-set!
               _self94194_
               _e94195_
               '1
               (##structure-type _self94194_)
               '#f)
              (##unchecked-structure-set!
               _self94194_
               (gx#current-expander-context)
               '2
               (##structure-type _self94194_)
               '#f)
              (##unchecked-structure-set!
               _self94194_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self94194_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94194_
                   '3
                   (##vector-length _self94194_)))))
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
      (lambda (_g9382093823_ _g9382193825_)
        (gx#core-apply-user-expander__%
         _g9382093823_
         _g9382193825_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9369193694_ _g9369293696_)
        (gx#core-apply-user-expander__%
         _g9369193694_
         _g9369293696_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93562_)
        (let* ((_path93564_
                (##structure-ref _ctx93562_ '7 gx#module-context::t '#f))
               (_path93566_
                (if (pair? _path93564_) (last _path93564_) _path93564_)))
          (if (string? _path93566_) _path93566_ '#f))))
    (define gx#import-module__%
      (lambda (_path93538_ _reload?93539_ _eval?93540_)
        (let ((_ctx93542_
               ((gx#current-expander-module-import)
                _path93538_
                _reload?93539_)))
          (if (and _ctx93542_ _eval?93540_)
              (gx#eval-module _ctx93542_)
              '#!void)
          _ctx93542_)))
    (define gx#import-module__0
      (lambda (_path93547_)
        (let* ((_reload?93549_ '#f) (_eval?93551_ '#f))
          (gx#import-module__% _path93547_ _reload?93549_ _eval?93551_))))
    (define gx#import-module__1
      (lambda (_path93553_ _reload?93554_)
        (let ((_eval?93556_ '#f))
          (gx#import-module__% _path93553_ _reload?93554_ _eval?93556_))))
    (define gx#import-module
      (lambda _g94554_
        (let ((_g94553_ (##length _g94554_)))
          (cond ((##fx= _g94553_ 1)
                 (apply (lambda (_path93547_)
                          (gx#import-module__0 _path93547_))
                        _g94554_))
                ((##fx= _g94553_ 2)
                 (apply (lambda (_path93553_ _reload?93554_)
                          (gx#import-module__1 _path93553_ _reload?93554_))
                        _g94554_))
                ((##fx= _g94553_ 3)
                 (apply (lambda (_path93558_ _reload?93559_ _eval?93560_)
                          (gx#import-module__%
                           _path93558_
                           _reload?93559_
                           _eval?93560_))
                        _g94554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94554_))))))
    (define gx#eval-module
      (lambda (_mod93535_) ((gx#current-expander-module-eval) _mod93535_)))
    (define gx#core-eval-module
      (lambda (_obj93520_)
        (letrec ((_force-e93522_
                  (lambda (_getf93531_ _e93532_)
                    (call-with-parameters
                     (lambda () (force (_getf93531_ _e93532_)))
                     gx#current-expander-context
                     _e93532_
                     gx#current-expander-phi
                     '0))))
          (let _recur93524_ ((_e93526_ _obj93520_))
            (if (##structure-instance-of? _e93526_ 'gx#module-context::t)
                (begin
                  (let ((_$e93528_ (gx#core-context-prelude__% _e93526_)))
                    (if _$e93528_ (_recur93524_ _$e93528_) '#!void))
                  (_force-e93522_ gx#module-context-e _e93526_))
                (if (##structure-instance-of? _e93526_ 'gx#prelude-context::t)
                    (_force-e93522_ gx#prelude-context-e _e93526_)
                    (if (gx#stx-string? _e93526_)
                        (_recur93524_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93526_)))
                        (if (gx#core-library-module-path? _e93526_)
                            (_recur93524_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93526_)))
                            (error '"Cannot eval module" _obj93520_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93503_)
        (let _lp93505_ ((_e93507_ _ctx93503_))
          (if (or (##structure-instance-of? _e93507_ 'gx#module-context::t)
                  (##structure-instance-of? _e93507_ 'gx#local-context::t))
              (_lp93505_
               (##unchecked-structure-ref _e93507_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93507_ 'gx#prelude-context::t)
                  _e93507_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93516_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93516_))))
    (define gx#core-context-prelude
      (lambda _g94556_
        (let ((_g94555_ (##length _g94556_)))
          (cond ((##fx= _g94555_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94556_))
                ((##fx= _g94555_ 1)
                 (apply (lambda (_ctx93518_)
                          (gx#core-context-prelude__% _ctx93518_))
                        _g94556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94556_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93495_)
        (let ((_$e93497_ (hash-get gx#__module-registry _ctx93495_)))
          (if _$e93497_
              _$e93497_
              (let ((_pre93500_
                     (let ((__obj94547
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
                       (gx#prelude-context:::init! __obj94547 _ctx93495_)
                       __obj94547)))
                (hash-put! gx#__module-registry _ctx93495_ _pre93500_)
                _pre93500_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93376_ _reload?93377_)
        (letrec ((_import-source93379_
                  (lambda (_path93464_)
                    (if (member _path93464_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93464_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94557_ (gx#core-read-module _path93464_)))
                         (begin
                           (let ((_g94558_
                                  (if (##values? _g94557_)
                                      (##vector-length _g94557_)
                                      1)))
                             (if (not (##fx= _g94558_ 4))
                                 (error "Context expects 4 values" _g94558_)))
                           (let ((_pre93467_ (##vector-ref _g94557_ 0))
                                 (_id93468_ (##vector-ref _g94557_ 1))
                                 (_ns93469_ (##vector-ref _g94557_ 2))
                                 (_body93470_ (##vector-ref _g94557_ 3)))
                             (let* ((_prelude93475_
                                     (if (##structure-instance-of?
                                          _pre93467_
                                          'gx#prelude-context::t)
                                         _pre93467_
                                         (if (##structure-instance-of?
                                              _pre93467_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93467_)
                                             (if (string? _pre93467_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93467_))
                                                 (if (not _pre93467_)
                                                     (let ((_$e93472_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93472_
                                                           _$e93472_
                                                           (let ((__obj94548
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
                     (gx#prelude-context:::init! __obj94548 '#f)
                     __obj94548)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93376_
                                                            _pre93467_))))))
                                    (_ctx93477_
                                     (let ((__obj94549
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
                                        __obj94549
                                        _id93468_
                                        _prelude93475_
                                        _ns93469_
                                        _path93464_)
                                       __obj94549))
                                    (_body93479_
                                     (gx#core-expand-module-begin
                                      _body93470_
                                      _ctx93477_))
                                    (_body93481_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93479_)
                                      _path93464_
                                      _ctx93477_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93477_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93481_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93477_
                                _body93481_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93464_
                                _ctx93477_)
                               (hash-put!
                                gx#__module-registry
                                _id93468_
                                _ctx93477_)
                               _ctx93477_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93464_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93380_
                  (lambda (_rpath93392_)
                    (let* ((_rpath9339393400_ _rpath93392_)
                           (_E9339593404_
                            (lambda ()
                              (error '"No clause matching" _rpath9339393400_)))
                           (_K9339693452_
                            (lambda (_refs93407_ _origin93408_)
                              (let ((_ctx93410_
                                     (if _origin93408_
                                         (gx#core-import-module__%
                                          _origin93408_
                                          _reload?93377_)
                                         (gx#current-expander-context))))
                                (let _lp93412_ ((_rest93414_ _refs93407_)
                                                (_ctx93415_ _ctx93410_))
                                  (let* ((_rest9341693424_ _rest93414_)
                                         (_else9341893432_
                                          (lambda () _ctx93415_))
                                         (_K9342093440_
                                          (lambda (_rest93435_ _id93436_)
                                            (let ((_bind93438_
                                                   (gx#resolve-identifier__%
                                                    _id93436_
                                                    '0
                                                    _ctx93415_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93438_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93438_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93412_
                                                   _rest93435_
                                                   (##unchecked-structure-ref
                                                    _bind93438_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93392_
                                                         _id93436_
                                                         _bind93438_))))))
                                    (if (##pair? _rest9341693424_)
                                        (let ((_hd9342193443_
                                               (##car _rest9341693424_))
                                              (_tl9342293445_
                                               (##cdr _rest9341693424_)))
                                          (let* ((_id93448_ _hd9342193443_)
                                                 (_rest93450_ _tl9342293445_))
                                            (_K9342093440_
                                             _rest93450_
                                             _id93448_)))
                                        (_else9341893432_))))))))
                      (if (##pair? _rpath9339393400_)
                          (let ((_hd9339793455_ (##car _rpath9339393400_))
                                (_tl9339893457_ (##cdr _rpath9339393400_)))
                            (let* ((_origin93460_ _hd9339793455_)
                                   (_refs93462_ _tl9339893457_))
                              (_K9339693452_ _refs93462_ _origin93460_)))
                          (_E9339593404_))))))
          (let ((_$e93382_
                 (if (not _reload?93377_)
                     (hash-get gx#__module-registry _rpath93376_)
                     '#f)))
            (if _$e93382_
                (values _$e93382_)
                (if (list? _rpath93376_)
                    (_import-submodule93380_ _rpath93376_)
                    (if (gx#core-library-module-path? _rpath93376_)
                        (let ((_ctx93385_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93376_)
                                _reload?93377_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93376_
                           _ctx93385_)
                          _ctx93385_)
                        (let* ((_npath93387_ (path-normalize _rpath93376_))
                               (_$e93389_
                                (if (not _reload?93377_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93387_)
                                    '#f)))
                          (if _$e93389_
                              _$e93389_
                              (_import-source93379_ _npath93387_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93488_)
        (let ((_reload?93490_ '#f))
          (gx#core-import-module__% _rpath93488_ _reload?93490_))))
    (define gx#core-import-module
      (lambda _g94560_
        (let ((_g94559_ (##length _g94560_)))
          (cond ((##fx= _g94559_ 1)
                 (apply (lambda (_rpath93488_)
                          (gx#core-import-module__0 _rpath93488_))
                        _g94560_))
                ((##fx= _g94559_ 2)
                 (apply (lambda (_rpath93492_ _reload?93493_)
                          (gx#core-import-module__%
                           _rpath93492_
                           _reload?93493_))
                        _g94560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94560_))))))
    (define gx#core-read-module
      (lambda (_path93365_)
        (with-catch
         (lambda (_exn93367_)
           (if (and (datum-parsing-exception? _exn93367_)
                    (eq? (datum-parsing-exception-filepos _exn93367_) '0))
               (gx#core-read-module/lang _path93365_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93365_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9336993371_)
                      (display-exception _exn93367_ _g9336993371_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93365_)))))
    (define gx#core-read-module/sexp
      (lambda (_path93228_)
        (let _lp93230_ ((_body93232_ (read-syntax-from-file _path93228_))
                        (_pre93233_ '#f)
                        (_ns93234_ '#f)
                        (_pkg93235_ '#f))
          (let* ((_e9323693260_ _body93232_)
                 (_E9325293282_
                  (lambda ()
                    (let ((_g94561_
                           (if _pkg93235_
                               (values _pre93233_ _ns93234_ _pkg93235_)
                               (gx#core-read-module-package
                                _path93228_
                                _pre93233_
                                _ns93234_))))
                      (begin
                        (let ((_g94562_
                               (if (##values? _g94561_)
                                   (##vector-length _g94561_)
                                   1)))
                          (if (not (##fx= _g94562_ 3))
                              (error "Context expects 3 values" _g94562_)))
                        (let ((_pre93264_ (##vector-ref _g94561_ 0))
                              (_ns93265_ (##vector-ref _g94561_ 1))
                              (_pkg93266_ (##vector-ref _g94561_ 2)))
                          (let* ((_prelude93268_
                                  (if (gx#core-bound-module-prelude?
                                       _pre93264_)
                                      (gx#syntax-local-e__0 _pre93264_)
                                      (if (gx#core-library-module-path?
                                           _pre93264_)
                                          (gx#core-resolve-library-module-path
                                           _pre93264_)
                                          (if (gx#stx-string? _pre93264_)
                                              (gx#core-resolve-module-path__%
                                               _pre93264_
                                               _path93228_)
                                              (gx#stx-e _pre93264_)))))
                                 (_path-id93270_
                                  (gx#core-module-path->namespace _path93228_))
                                 (_pkg-id93272_
                                  (if _pkg93266_
                                      (string-append
                                       _pkg93266_
                                       '"/"
                                       _path-id93270_)
                                      _path-id93270_))
                                 (_module-id93274_
                                  (string->symbol _pkg-id93272_))
                                 (_module-ns93279_
                                  (if (eq? _ns93265_ '#!void)
                                      '#f
                                      (let ((_$e93276_ _ns93265_))
                                        (if _$e93276_
                                            _$e93276_
                                            _pkg-id93272_)))))
                            (values _prelude93268_
                                    _module-id93274_
                                    _module-ns93279_
                                    _body93232_)))))))
                 (_E9324593311_
                  (lambda ()
                    (if (gx#stx-pair? _e9323693260_)
                        (let ((_e9325393286_ (gx#syntax-e _e9323693260_)))
                          (let ((_hd9325493289_ (##car _e9325393286_))
                                (_tl9325593291_ (##cdr _e9325393286_)))
                            (if (eq? (gx#stx-e _hd9325493289_) 'package:)
                                (if (gx#stx-pair? _tl9325593291_)
                                    (let ((_e9325693294_
                                           (gx#syntax-e _tl9325593291_)))
                                      (let ((_hd9325793297_
                                             (##car _e9325693294_))
                                            (_tl9325893299_
                                             (##cdr _e9325693294_)))
                                        (let* ((_pkg93302_ _hd9325793297_)
                                               (_rest93304_ _tl9325893299_))
                                          (if '#t
                                              (let ((_pkg93309_
                                                     (if (gx#identifier?
                                                          _pkg93302_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg93302_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg93302_)
                         (gx#stx-false? _pkg93302_))
                     (gx#stx-e _pkg93302_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg93302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93230_
                                                 _rest93304_
                                                 _pre93233_
                                                 _ns93234_
                                                 _pkg93309_))
                                              (_E9325293282_)))))
                                    (_E9325293282_))
                                (_E9325293282_))))
                        (_E9325293282_))))
                 (_E9323893337_
                  (lambda ()
                    (if (gx#stx-pair? _e9323693260_)
                        (let ((_e9324693315_ (gx#syntax-e _e9323693260_)))
                          (let ((_hd9324793318_ (##car _e9324693315_))
                                (_tl9324893320_ (##cdr _e9324693315_)))
                            (if (eq? (gx#stx-e _hd9324793318_) 'namespace:)
                                (if (gx#stx-pair? _tl9324893320_)
                                    (let ((_e9324993323_
                                           (gx#syntax-e _tl9324893320_)))
                                      (let ((_hd9325093326_
                                             (##car _e9324993323_))
                                            (_tl9325193328_
                                             (##cdr _e9324993323_)))
                                        (let* ((_ns93331_ _hd9325093326_)
                                               (_rest93333_ _tl9325193328_))
                                          (if '#t
                                              (let ((_ns93335_
                                                     (if (gx#identifier?
                                                          _ns93331_)
                                                         (symbol->string
                                                          (gx#stx-e _ns93331_))
                                                         (if (gx#stx-string?
                                                              _ns93331_)
                                                             (gx#stx-e
                                                              _ns93331_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns93331_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns93331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93230_
                                                 _rest93333_
                                                 _pre93233_
                                                 _ns93335_
                                                 _pkg93235_))
                                              (_E9324593311_)))))
                                    (_E9324593311_))
                                (_E9324593311_))))
                        (_E9324593311_))))
                 (_E9323793361_
                  (lambda ()
                    (if (gx#stx-pair? _e9323693260_)
                        (let ((_e9323993341_ (gx#syntax-e _e9323693260_)))
                          (let ((_hd9324093344_ (##car _e9323993341_))
                                (_tl9324193346_ (##cdr _e9323993341_)))
                            (if (eq? (gx#stx-e _hd9324093344_) 'prelude:)
                                (if (gx#stx-pair? _tl9324193346_)
                                    (let ((_e9324293349_
                                           (gx#syntax-e _tl9324193346_)))
                                      (let ((_hd9324393352_
                                             (##car _e9324293349_))
                                            (_tl9324493354_
                                             (##cdr _e9324293349_)))
                                        (let* ((_prelude93357_ _hd9324393352_)
                                               (_rest93359_ _tl9324493354_))
                                          (if '#t
                                              (_lp93230_
                                               _rest93359_
                                               _prelude93357_
                                               _ns93234_
                                               _pkg93235_)
                                              (_E9323893337_)))))
                                    (_E9323893337_))
                                (_E9323893337_))))
                        (_E9323893337_)))))
            (_E9323793361_)))))
    (define gx#core-read-module/lang
      (lambda (_path93055_)
        (letrec ((_default-read-module-body93057_
                  (lambda (_inp93220_)
                    (let _lp93222_ ((_body93224_ '()))
                      (let ((_next93226_ (read-syntax _inp93220_)))
                        (if (eof-object? _next93226_)
                            (reverse _body93224_)
                            (_lp93222_ (cons _next93226_ _body93224_)))))))
                 (_read-body93058_
                  (lambda (_inp93139_
                           _pre93140_
                           _ns93141_
                           _pkg93142_
                           _args93143_)
                    (let ((_g94563_
                           (if _pkg93142_
                               (values _pre93140_ _ns93141_ _pkg93142_)
                               (gx#core-read-module-package
                                _path93055_
                                _pre93140_
                                _ns93141_))))
                      (begin
                        (let ((_g94564_
                               (if (##values? _g94563_)
                                   (##vector-length _g94563_)
                                   1)))
                          (if (not (##fx= _g94564_ 3))
                              (error "Context expects 3 values" _g94564_)))
                        (let ((_pre93145_ (##vector-ref _g94563_ 0))
                              (_ns93146_ (##vector-ref _g94563_ 1))
                              (_pkg93147_ (##vector-ref _g94563_ 2)))
                          (let* ((_prelude93149_
                                  (gx#import-module__0 _pre93145_))
                                 (_read-module-body93203_
                                  (let ((_$e93195_
                                         (find (lambda (_e9315093152_)
                                                 (let* ((_g9315493164_
                                                         _e9315093152_)
                                                        (_else9315693172_
                                                         (lambda () '#f))
                                                        (_K9315893176_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9315493164_
                                                        'gx#module-export::t)
                                                       (let* ((_e9315993179_
                                                               (##unchecked-structure-ref
                                                                _g9315493164_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9316093182_
                                                               (##unchecked-structure-ref
                                                                _g9315493164_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9316193185_
                                                               (##unchecked-structure-ref
                                                                _g9315493164_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9316193185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9316293188_
                            (##unchecked-structure-ref
                             _g9315493164_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9319093192_)
                              (eq? _g9319093192_ 'read-module-body))
                            _e9316293188_)
                           (_K9315893176_)
                           (_else9315693172_)))
                     (_else9315693172_)))
               (_else9315693172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude93149_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e93195_
                                        ((lambda (_xport93198_)
                                           (let ((_proc93201_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport93198_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc93201_)
                                                 _proc93201_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path93055_
                                                  _pre93145_
                                                  _proc93201_))))
                                         _$e93195_)
                                        _default-read-module-body93057_)))
                                 (_path-id93205_
                                  (gx#core-module-path->namespace _path93055_))
                                 (_pkg-id93207_
                                  (if _pkg93147_
                                      (string-append
                                       _pkg93147_
                                       '"/"
                                       _path-id93205_)
                                      _path-id93205_))
                                 (_module-id93209_
                                  (string->symbol _pkg-id93207_))
                                 (_module-ns93214_
                                  (let ((_$e93211_ _ns93146_))
                                    (if _$e93211_ _$e93211_ _pkg-id93207_)))
                                 (_body93217_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body93203_ _inp93139_))
                                   gx#current-module-reader-path
                                   _path93055_
                                   gx#current-module-reader-args
                                   _args93143_)))
                            (values _prelude93149_
                                    _module-id93209_
                                    _module-ns93214_
                                    _body93217_)))))))
                 (_string-e93059_
                  (lambda (_obj93136_ _what93137_)
                    (if (string? _obj93136_)
                        _obj93136_
                        (if (symbol? _obj93136_)
                            (symbol->string _obj93136_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what93137_)
                             _path93055_
                             _obj93136_)))))
                 (_read-lang-args93060_
                  (lambda (_inp93091_ _args93092_)
                    (let* ((_args9309393101_ _args93092_)
                           (_else9309593109_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path93055_)))
                           (_K9309793124_
                            (lambda (_args93112_ _prelude93113_)
                              (let* ((_pkg93115_
                                      (pgetq__0 'package: _args93112_))
                                     (_pkg93117_
                                      (if _pkg93115_
                                          (_string-e93059_
                                           _pkg93115_
                                           '"package")
                                          '#f))
                                     (_ns93119_
                                      (pgetq__0 'namespace: _args93112_))
                                     (_ns93121_
                                      (if _ns93119_
                                          (_string-e93059_
                                           _ns93119_
                                           '"namespace")
                                          '#f)))
                                (_read-body93058_
                                 _inp93091_
                                 _prelude93113_
                                 _ns93121_
                                 _pkg93117_
                                 _args93112_)))))
                      (if (##pair? _args9309393101_)
                          (let ((_hd9309893127_ (##car _args9309393101_))
                                (_tl9309993129_ (##cdr _args9309393101_)))
                            (let* ((_prelude93132_ _hd9309893127_)
                                   (_args93134_ _tl9309993129_))
                              (_K9309793124_ _args93134_ _prelude93132_)))
                          (_else9309593109_)))))
                 (_read-lang93061_
                  (lambda (_inp93066_)
                    (let* ((_head93068_ (read-line _inp93066_))
                           (_$e93070_ (string-index__0 _head93068_ '#\space)))
                      (if _$e93070_
                          ((lambda (_ix93073_)
                             (let ((_lang93075_
                                    (substring _head93068_ '0 _ix93073_)))
                               (if (equal? _lang93075_ '"#lang")
                                   (let* ((_rest93077_
                                           (substring
                                            _head93068_
                                            (fx+ _ix93073_ '1)
                                            (string-length _head93068_)))
                                          (_args93088_
                                           (with-catch
                                            (lambda (_g9307893080_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path93055_
                                               _g9307893080_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest93077_
                                               (lambda (_g9308393085_)
                                                 (read-all
                                                  _g9308393085_
                                                  read)))))))
                                     (_read-lang-args93060_
                                      _inp93066_
                                      _args93088_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path93055_))))
                           _$e93070_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path93055_)))))
                 (_read-e93062_
                  (lambda (_inp93064_)
                    (if (eq? (peek-char _inp93064_) '#\#)
                        (_read-lang93061_ _inp93064_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path93055_)))))
          (gx#call-with-input-source-file _path93055_ _read-e93062_))))
    (define gx#core-read-module-package
      (lambda (_path93009_ _pre93010_ _ns93011_)
        (letrec ((_string-e93013_
                  (lambda (_e93053_)
                    (if (symbol? _e93053_)
                        (symbol->string _e93053_)
                        (if (string? _e93053_)
                            _e93053_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e93053_))))))
          (let _lp93015_ ((_dir93017_ (path-directory _path93009_))
                          (_pkg-path93018_ '()))
            (let ((_gerbil.pkg93020_ (path-expand '"gerbil.pkg" _dir93017_)))
              (if (file-exists? _gerbil.pkg93020_)
                  (let ((_plist93022_
                         (gx#core-library-package-plist__% _dir93017_ '#t)))
                    (if (null? _plist93022_)
                        (let ((_pkg93024_
                               (if (not (null? _pkg-path93018_))
                                   (string-join _pkg-path93018_ '"/")
                                   '#f)))
                          (values _pre93010_ _ns93011_ _pkg93024_))
                        (if (list? _plist93022_)
                            (let* ((_root93026_
                                    (pgetq__0 'package: _plist93022_))
                                   (_pkg93030_
                                    (let ((_pkg-path93028_
                                           (if _root93026_
                                               (cons (_string-e93013_
                                                      _root93026_)
                                                     _pkg-path93018_)
                                               _pkg-path93018_)))
                                      (if (not (null? _pkg-path93028_))
                                          (string-join _pkg-path93028_ '"/")
                                          '#f)))
                                   (_ns93037_
                                    (let ((_ns93035_
                                           (let ((_$e93032_ _ns93011_))
                                             (if _$e93032_
                                                 _$e93032_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist93022_)))))
                                      (if _ns93035_
                                          (_string-e93013_ _ns93035_)
                                          '#f)))
                                   (_pre93042_
                                    (let ((_$e93039_ _pre93010_))
                                      (if _$e93039_
                                          _$e93039_
                                          (pgetq__0 'prelude: _plist93022_)))))
                              (values _pre93042_ _ns93037_ _pkg93030_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist93022_))))
                  (let ((_dir*93045_
                         (path-strip-trailing-directory-separator _dir93017_)))
                    (if (or (string-empty? _dir*93045_)
                            (equal? _dir93017_ _dir*93045_))
                        (values _pre93010_ _ns93011_ '#f)
                        (let ((_xpath93050_ (path-strip-directory _dir*93045_))
                              (_xdir93051_ (path-directory _dir*93045_)))
                          (_lp93015_
                           _xdir93051_
                           (cons _xpath93050_ _pkg-path93018_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path93007_)
        (path-strip-extension (path-strip-directory _path93007_))))
    (define gx#core-module-path->id
      (lambda (_path93005_)
        (string->symbol (gx#core-module-path->namespace _path93005_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path92984_ _rel92985_)
        (let* ((_path92987_ (gx#stx-e _stx-path92984_))
               (_path92989_
                (if (string-empty? (path-extension _path92987_))
                    (string-append _path92987_ '".ss")
                    _path92987_)))
          (gx#core-resolve-path__%
           _path92989_
           (let ((_$e92992_ (gx#stx-source _stx-path92984_)))
             (if _$e92992_ _$e92992_ _rel92985_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path92998_)
        (let ((_rel93000_ '#f))
          (gx#core-resolve-module-path__% _stx-path92998_ _rel93000_))))
    (define gx#core-resolve-module-path
      (lambda _g94566_
        (let ((_g94565_ (##length _g94566_)))
          (cond ((##fx= _g94565_ 1)
                 (apply (lambda (_stx-path92998_)
                          (gx#core-resolve-module-path__0 _stx-path92998_))
                        _g94566_))
                ((##fx= _g94565_ 2)
                 (apply (lambda (_stx-path93002_ _rel93003_)
                          (gx#core-resolve-module-path__%
                           _stx-path93002_
                           _rel93003_))
                        _g94566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94566_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92870_)
        (let* ((_spath92872_ (symbol->string (gx#stx-e _libpath92870_)))
               (_spath92874_
                (substring _spath92872_ '1 (string-length _spath92872_)))
               (_ext92876_ (path-extension _spath92874_))
               (_ssi92878_
                (if (string-empty? _ext92876_)
                    (string-append _spath92874_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92874_)
                     '".ssi")))
               (_srcs92882_
                (if (string-empty? _ext92876_)
                    (map (lambda (_ext92880_)
                           (string-append _spath92874_ _ext92880_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92874_ '()))))
          (let _lp92885_ ((_rest92887_ (load-path)))
            (let* ((_rest9288892897_ _rest92887_)
                   (_E9289192901_
                    (lambda ()
                      (error '"No clause matching" _rest9288892897_))))
              (let ((_K9289392971_
                     (lambda (_rest92912_ _dir92913_)
                       (letrec ((_resolve92915_
                                 (lambda (_ssi92927_ _srcs92928_)
                                   (let ((_compiled-path92930_
                                          (path-expand _ssi92927_ _dir92913_)))
                                     (if (file-exists? _compiled-path92930_)
                                         (path-normalize _compiled-path92930_)
                                         (let _lpr92932_ ((_rest-src92934_
                                                           _srcs92928_))
                                           (let* ((_rest-src9293592943_
                                                   _rest-src92934_)
                                                  (_else9293792951_
                                                   (lambda ()
                                                     (_lp92885_ _rest92912_)))
                                                  (_K9293992959_
                                                   (lambda (_rest-src92954_
                                                            _src92955_)
                                                     (let ((_src-path92957_
                                                            (path-expand
                                                             _src92955_
                                                             _dir92913_)))
                                                       (if (file-exists?
                                                            _src-path92957_)
                                                           (path-normalize
                                                            _src-path92957_)
                                                           (_lpr92932_
                                                            _rest-src92954_))))))
                                             (if (##pair? _rest-src9293592943_)
                                                 (let ((_hd9294092962_
                                                        (##car _rest-src9293592943_))
                                                       (_tl9294192964_
                                                        (##cdr _rest-src9293592943_)))
                                                   (let* ((_src92967_
                                                           _hd9294092962_)
                                                          (_rest-src92969_
                                                           _tl9294192964_))
                                                     (_K9293992959_
                                                      _rest-src92969_
                                                      _src92967_)))
                                                 (_else9293792951_)))))))))
                         (let ((_$e92917_
                                (gx#core-library-package-path-prefix
                                 _dir92913_)))
                           (if _$e92917_
                               ((lambda (_prefix92920_)
                                  (if (string-prefix?
                                       _prefix92920_
                                       _spath92874_)
                                      (let ((_ssi92924_
                                             (substring
                                              _ssi92878_
                                              (string-length _prefix92920_)
                                              (string-length _ssi92878_)))
                                            (_srcs92925_
                                             (map (lambda (_src92922_)
                                                    (substring
                                                     _src92922_
                                                     (string-length
                                                      _prefix92920_)
                                                     (string-length
                                                      _src92922_)))
                                                  _srcs92882_)))
                                        (_resolve92915_
                                         _ssi92924_
                                         _srcs92925_))
                                      (_lp92885_ _rest92912_)))
                                _$e92917_)
                               (_resolve92915_ _ssi92878_ _srcs92882_))))))
                    (_K9289292906_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92870_))))
                (let ((_try-match9289092909_
                       (lambda ()
                         (if (##null? _rest9288892897_)
                             (_K9289292906_)
                             (_E9289192901_)))))
                  (if (##pair? _rest9288892897_)
                      (let ((_tl9289592976_ (##cdr _rest9288892897_))
                            (_hd9289492974_ (##car _rest9288892897_)))
                        (let ((_dir92979_ _hd9289492974_)
                              (_rest92981_ _tl9289592976_))
                          (_K9289392971_ _rest92981_ _dir92979_)))
                      (_try-match9289092909_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92843_)
        (letrec ((_resolve92845_
                  (lambda (_path92862_ _base92863_)
                    (let ((_$e92865_ (string-rindex__0 _base92863_ '#\/)))
                      (if _$e92865_
                          ((lambda (_idx92868_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92863_ '0 _idx92868_)
                                '"/"
                                _path92862_))))
                           _$e92865_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92862_))))))))
          (let ((_spath92847_ (symbol->string (gx#stx-e _modpath92843_)))
                (_mod92848_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92848_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92843_))
            (let ((_mpath92850_
                   (symbol->string
                    (##structure-ref
                     _mod92848_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92852_ ((_spath92854_ _spath92847_)
                              (_mpath92855_ _mpath92850_))
                (if (string-prefix? '"../" _spath92854_)
                    (let ((_$e92857_ (string-rindex__0 _mpath92855_ '#\/)))
                      (if _$e92857_
                          ((lambda (_idx92860_)
                             (_lp92852_
                              (substring
                               _spath92854_
                               '3
                               (string-length _spath92854_))
                              (substring _mpath92855_ '0 _idx92860_)))
                           _$e92857_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92843_)))
                    (if (string-prefix? '"./" _spath92854_)
                        (_lp92852_
                         (substring
                          _spath92854_
                          '2
                          (string-length _spath92854_))
                         _mpath92855_)
                        (_resolve92845_ _spath92854_ _mpath92855_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92836_)
        (let ((_$e92838_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92836_))))
          (if _$e92838_
              ((lambda (_pkg92841_)
                 (string-append (symbol->string _pkg92841_) '"/"))
               _$e92838_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92810_ _exists?92811_)
        (let ((_$e92813_ (hash-get gx#__module-pkg-cache _dir92810_)))
          (if _$e92813_
              (values _$e92813_)
              (let* ((_gerbil.pkg92816_ (path-expand '"gerbil.pkg" _dir92810_))
                     (_plist92823_
                      (if (or _exists?92811_ (file-exists? _gerbil.pkg92816_))
                          (let ((_e92821_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92816_
                                  read)))
                            (if (eof-object? _e92821_)
                                '()
                                (if (list? _e92821_)
                                    _e92821_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92816_
                                     _e92821_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92810_ _plist92823_)
                _plist92823_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92829_)
        (let ((_exists?92831_ '#f))
          (gx#core-library-package-plist__% _dir92829_ _exists?92831_))))
    (define gx#core-library-package-plist
      (lambda _g94568_
        (let ((_g94567_ (##length _g94568_)))
          (cond ((##fx= _g94567_ 1)
                 (apply (lambda (_dir92829_)
                          (gx#core-library-package-plist__0 _dir92829_))
                        _g94568_))
                ((##fx= _g94567_ 2)
                 (apply (lambda (_dir92833_ _exists?92834_)
                          (gx#core-library-package-plist__%
                           _dir92833_
                           _exists?92834_))
                        _g94568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94568_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92807_) (gx#core-special-module-path? _stx92807_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92805_) (gx#core-special-module-path? _stx92805_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92800_ _char92801_)
        (if (gx#identifier? _stx92800_)
            (if (interned-symbol? (gx#stx-e _stx92800_))
                (let ((_str92803_ (symbol->string (gx#stx-e _stx92800_))))
                  (if (fx> (string-length _str92803_) '1)
                      (eq? (string-ref _str92803_ '0) _char92801_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92794_)
        (gx#core-bound-identifier?__%
         _stx92794_
         (lambda (_g9279592797_)
           (gx#expander-binding?__% _g9279592797_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92788_)
        (gx#core-bound-identifier?__%
         _stx92788_
         (lambda (_g9278992791_)
           (gx#expander-binding?__% _g9278992791_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92775_)
        (letrec ((_module-prelude?92777_
                  (lambda (_e92783_)
                    (let ((_$e92785_
                           (##structure-instance-of?
                            _e92783_
                            'gx#module-context::t)))
                      (if _$e92785_
                          _$e92785_
                          (##structure-instance-of?
                           _e92783_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92775_
           (lambda (_g9277892780_)
             (gx#expander-binding?__%
              _g9277892780_
              _module-prelude?92777_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92705_ _ctx92706_ _force-weak?92707_)
        (let* ((_in9270892717_ _in92705_)
               (_E9271092721_
                (lambda () (error '"No clause matching" _in9270892717_)))
               (_K9271192734_
                (lambda (_weak?92724_ _phi92725_ _key92726_ _source92727_)
                  (gx#core-bind!__%
                   _key92726_
                   (let ((_e92729_
                          (gx#core-resolve-module-export _source92727_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92729_ '1 gx#binding::t '#f)
                      _key92726_
                      _phi92725_
                      _e92729_
                      (##unchecked-structure-ref
                       _source92727_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92731_ _force-weak?92707_))
                        (if _$e92731_ _$e92731_ _weak?92724_))))
                   gx#core-context-rebind?
                   _phi92725_
                   _ctx92706_))))
          (if (##structure-direct-instance-of?
               _in9270892717_
               'gx#module-import::t)
              (let* ((_e9271292737_
                      (##unchecked-structure-ref
                       _in9270892717_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92740_ _e9271292737_)
                     (_e9271392742_
                      (##unchecked-structure-ref
                       _in9270892717_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92745_ _e9271392742_)
                     (_e9271492747_
                      (##unchecked-structure-ref
                       _in9270892717_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92750_ _e9271492747_)
                     (_e9271592752_
                      (##unchecked-structure-ref
                       _in9270892717_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92755_ _e9271592752_))
                (_K9271192734_
                 _weak?92755_
                 _phi92750_
                 _key92745_
                 _source92740_))
              (_E9271092721_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92760_)
        (let* ((_ctx92762_ (gx#current-expander-context))
               (_force-weak?92764_ '#f))
          (gx#core-bind-import!__% _in92760_ _ctx92762_ _force-weak?92764_))))
    (define gx#core-bind-import!__1
      (lambda (_in92766_ _ctx92767_)
        (let ((_force-weak?92769_ '#f))
          (gx#core-bind-import!__% _in92766_ _ctx92767_ _force-weak?92769_))))
    (define gx#core-bind-import!
      (lambda _g94570_
        (let ((_g94569_ (##length _g94570_)))
          (cond ((##fx= _g94569_ 1)
                 (apply (lambda (_in92760_)
                          (gx#core-bind-import!__0 _in92760_))
                        _g94570_))
                ((##fx= _g94569_ 2)
                 (apply (lambda (_in92766_ _ctx92767_)
                          (gx#core-bind-import!__1 _in92766_ _ctx92767_))
                        _g94570_))
                ((##fx= _g94569_ 3)
                 (apply (lambda (_in92771_ _ctx92772_ _force-weak?92773_)
                          (gx#core-bind-import!__%
                           _in92771_
                           _ctx92772_
                           _force-weak?92773_))
                        _g94570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94570_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92691_ _ctx92692_)
        (gx#core-bind-import!__% _in92691_ _ctx92692_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92697_)
        (let ((_ctx92699_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92697_ _ctx92699_))))
    (define gx#core-bind-weak-import!
      (lambda _g94572_
        (let ((_g94571_ (##length _g94572_)))
          (cond ((##fx= _g94571_ 1)
                 (apply (lambda (_in92697_)
                          (gx#core-bind-weak-import!__0 _in92697_))
                        _g94572_))
                ((##fx= _g94571_ 2)
                 (apply (lambda (_in92701_ _ctx92702_)
                          (gx#core-bind-weak-import!__% _in92701_ _ctx92702_))
                        _g94572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94572_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92582_)
        (letrec ((_subst92584_
                  (lambda (_key92630_)
                    (let* ((_key9263192639_ _key92630_)
                           (_else9263392647_ (lambda () _key92630_))
                           (_K9263592678_
                            (lambda (_mark92650_ _id92651_)
                              (let* ((_mark9265292658_ _mark92650_)
                                     (_E9265492662_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9265292658_)))
                                     (_K9265592670_
                                      (lambda (_subst92665_)
                                        (let ((_$e92667_
                                               (if _subst92665_
                                                   (hash-get
                                                    _subst92665_
                                                    _id92651_)
                                                   '#f)))
                                          (if _$e92667_
                                              _$e92667_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92630_))))))
                                (if (##structure-instance-of?
                                     _mark9265292658_
                                     'gx#expander-mark::t)
                                    (let* ((_e9265692673_
                                            (##unchecked-structure-ref
                                             _mark9265292658_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92676_ _e9265692673_))
                                      (_K9265592670_ _subst92676_))
                                    (_E9265492662_))))))
                      (if (##pair? _key9263192639_)
                          (let ((_hd9263692681_ (##car _key9263192639_))
                                (_tl9263792683_ (##cdr _key9263192639_)))
                            (let* ((_id92686_ _hd9263692681_)
                                   (_mark92688_ _tl9263792683_))
                              (_K9263592678_ _mark92688_ _id92686_)))
                          (_else9263392647_))))))
          (let* ((_out9258592595_ _out92582_)
                 (_E9258792599_
                  (lambda () (error '"No clause matching" _out9258592595_)))
                 (_K9258892606_
                  (lambda (_phi92602_ _key92603_ _ctx92604_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92604_ _phi92602_)
                     (_subst92584_ _key92603_)))))
            (if (##structure-direct-instance-of?
                 _out9258592595_
                 'gx#module-export::t)
                (let* ((_e9258992609_
                        (##unchecked-structure-ref
                         _out9258592595_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92612_ _e9258992609_)
                       (_e9259092614_
                        (##unchecked-structure-ref
                         _out9258592595_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92617_ _e9259092614_)
                       (_e9259192619_
                        (##unchecked-structure-ref
                         _out9258592595_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92622_ _e9259192619_)
                       (_e9259292624_
                        (##unchecked-structure-ref
                         _out9258592595_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9259392627_
                        (##unchecked-structure-ref
                         _out9258592595_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9258892606_ _phi92622_ _key92617_ _ctx92612_))
                (_E9258792599_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92507_ _rename92508_ _dphi92509_)
        (let* ((_out9251092520_ _out92507_)
               (_E9251292524_
                (lambda () (error '"No clause matching" _out9251092520_)))
               (_K9251392536_
                (lambda (_weak?92527_
                         _name92528_
                         _phi92529_
                         _key92530_
                         _ctx92531_)
                  (##structure
                   gx#module-import::t
                   _out92507_
                   (let ((_$e92533_ _rename92508_))
                     (if _$e92533_ _$e92533_ _name92528_))
                   (fx+ _phi92529_ _dphi92509_)
                   _weak?92527_))))
          (if (##structure-direct-instance-of?
               _out9251092520_
               'gx#module-export::t)
              (let* ((_e9251492539_
                      (##unchecked-structure-ref
                       _out9251092520_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92542_ _e9251492539_)
                     (_e9251592544_
                      (##unchecked-structure-ref
                       _out9251092520_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92547_ _e9251592544_)
                     (_e9251692549_
                      (##unchecked-structure-ref
                       _out9251092520_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92552_ _e9251692549_)
                     (_e9251792554_
                      (##unchecked-structure-ref
                       _out9251092520_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92557_ _e9251792554_)
                     (_e9251892559_
                      (##unchecked-structure-ref
                       _out9251092520_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92562_ _e9251892559_))
                (_K9251392536_
                 _weak?92562_
                 _name92557_
                 _phi92552_
                 _key92547_
                 _ctx92542_))
              (_E9251292524_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92567_)
        (let* ((_rename92569_ '#f) (_dphi92571_ '0))
          (gx#core-module-export->import__%
           _out92567_
           _rename92569_
           _dphi92571_))))
    (define gx#core-module-export->import__1
      (lambda (_out92573_ _rename92574_)
        (let ((_dphi92576_ '0))
          (gx#core-module-export->import__%
           _out92573_
           _rename92574_
           _dphi92576_))))
    (define gx#core-module-export->import
      (lambda _g94574_
        (let ((_g94573_ (##length _g94574_)))
          (cond ((##fx= _g94573_ 1)
                 (apply (lambda (_out92567_)
                          (gx#core-module-export->import__0 _out92567_))
                        _g94574_))
                ((##fx= _g94573_ 2)
                 (apply (lambda (_out92573_ _rename92574_)
                          (gx#core-module-export->import__1
                           _out92573_
                           _rename92574_))
                        _g94574_))
                ((##fx= _g94573_ 3)
                 (apply (lambda (_out92578_ _rename92579_ _dphi92580_)
                          (gx#core-module-export->import__%
                           _out92578_
                           _rename92579_
                           _dphi92580_))
                        _g94574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94574_))))))
    (define gx#core-expand-module%
      (lambda (_stx92409_)
        (letrec ((_make-context92411_
                  (lambda (_id92488_)
                    (let* ((_super92490_ (gx#current-expander-context))
                           (_bind-id92492_ (gx#stx-e _id92488_))
                           (_mod-id92494_
                            (if (##structure-instance-of?
                                 _super92490_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92490_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92492_)
                                _bind-id92492_))
                           (_ns92496_ (symbol->string _mod-id92494_))
                           (_path92503_
                            (if (##structure-instance-of?
                                 _super92490_
                                 'gx#module-context::t)
                                (let ((_path92498_
                                       (##unchecked-structure-ref
                                        _super92490_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92498_)
                                          (null? _path92498_))
                                      (cons _bind-id92492_ _path92498_)
                                      (if (not _path92498_)
                                          _bind-id92492_
                                          (cons _bind-id92492_
                                                (cons _path92498_ '())))))
                                _bind-id92492_)))
                      (let ((__obj94550
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
                         __obj94550
                         _mod-id92494_
                         _super92490_
                         _ns92496_
                         _path92503_)
                        __obj94550))))
                 (_valid-module-id?92412_
                  (lambda (_id92463_)
                    (let* ((_str92465_ (symbol->string _id92463_))
                           (_len92467_ (string-length _str92465_)))
                      (if (fx>= _len92467_ '1)
                          (let _loop92470_ ((_index92472_
                                             (fx- (string-length _str92465_)
                                                  '1)))
                            (if (fx>= _index92472_ '0)
                                (let ((_c92474_
                                       (string-ref _str92465_ _index92472_)))
                                  (if (or (and (char>=? _c92474_ '#\a)
                                               (char<=? _c92474_ '#\z))
                                          (and (char>=? _c92474_ '#\A)
                                               (char<=? _c92474_ '#\Z))
                                          (and (char>=? _c92474_ '#\0)
                                               (char<=? _c92474_ '#\9))
                                          (char=? _c92474_ '#\_)
                                          (char=? _c92474_ '#\-))
                                      (_loop92470_ (fx- _index92472_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9241392423_ _stx92409_)
                 (_E9241592427_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9241392423_)))
                 (_E9241492459_
                  (lambda ()
                    (if (gx#stx-pair? _e9241392423_)
                        (let ((_e9241692431_ (gx#syntax-e _e9241392423_)))
                          (let ((_hd9241792434_ (##car _e9241692431_))
                                (_tl9241892436_ (##cdr _e9241692431_)))
                            (if (gx#stx-pair? _tl9241892436_)
                                (let ((_e9241992439_
                                       (gx#syntax-e _tl9241892436_)))
                                  (let ((_hd9242092442_ (##car _e9241992439_))
                                        (_tl9242192444_ (##cdr _e9241992439_)))
                                    (let* ((_id92447_ _hd9242092442_)
                                           (_body92449_ _tl9242192444_))
                                      (if (and (gx#identifier? _id92447_)
                                               (gx#stx-list? _body92449_))
                                          (if (_valid-module-id?92412_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92451_
                                                      (_make-context92411_
                                                       _id92447_))
                                                     (_body92453_
                                                      (gx#core-expand-module-begin
                                                       _body92449_
                                                       _ctx92451_))
                                                     (_body92455_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92453_)
                                                       (gx#stx-source
                                                        _stx92409_))))
                                                (##unchecked-structure-set!
                                                 _ctx92451_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92455_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92451_
                                                 _body92455_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92447_
                                                 _ctx92451_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92447_)
                                                  _body92455_)
                                                 (gx#stx-source _stx92409_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92409_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9241592427_)))))
                                (_E9241592427_))))
                        (_E9241592427_)))))
            (_E9241492459_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92375_ _ctx92376_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92379_
                   (gx#core-expand-head (cons '%%begin-module _body92375_)))
                  (_e9238092387_ _stx92379_)
                  (_E9238292391_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92379_)))
                  (_E9238192405_
                   (lambda ()
                     (if (gx#stx-pair? _e9238092387_)
                         (let ((_e9238392395_ (gx#syntax-e _e9238092387_)))
                           (let ((_hd9238492398_ (##car _e9238392395_))
                                 (_tl9238592400_ (##cdr _e9238392395_)))
                             (if (and (gx#identifier? _hd9238492398_)
                                      (gx#core-identifier=?
                                       _hd9238492398_
                                       '%#begin-module))
                                 (let ((_body92403_ _tl9238592400_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92379_)
                                           _body92403_
                                           (gx#core-expand-module-body
                                            _body92403_))
                                       (_E9238292391_)))
                                 (_E9238292391_))))
                         (_E9238292391_)))))
             (_E9238192405_)))
         gx#current-expander-context
         _ctx92376_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body92171_)
        (letrec ((_expand-special92173_
                  (lambda (_hd92302_ _K92303_ _rest92304_ _r92305_)
                    (let* ((_e9230692323_ _hd92302_)
                           (_E9231892327_
                            (lambda ()
                              (_K92303_
                               _rest92304_
                               (cons (gx#core-expand-top _hd92302_)
                                     _r92305_))))
                           (_E9230892339_
                            (lambda ()
                              (if (gx#stx-pair? _e9230692323_)
                                  (let ((_e9231992331_
                                         (gx#syntax-e _e9230692323_)))
                                    (let ((_hd9232092334_
                                           (##car _e9231992331_))
                                          (_tl9232192336_
                                           (##cdr _e9231992331_)))
                                      (if (and (gx#identifier? _hd9232092334_)
                                               (gx#core-identifier=?
                                                _hd9232092334_
                                                '%#export))
                                          (if '#t
                                              (_K92303_
                                               _rest92304_
                                               (cons _hd92302_ _r92305_))
                                              (_E9231892327_))
                                          (_E9231892327_))))
                                  (_E9231892327_))))
                           (_E9230792371_
                            (lambda ()
                              (if (gx#stx-pair? _e9230692323_)
                                  (let ((_e9230992343_
                                         (gx#syntax-e _e9230692323_)))
                                    (let ((_hd9231092346_
                                           (##car _e9230992343_))
                                          (_tl9231192348_
                                           (##cdr _e9230992343_)))
                                      (if (and (gx#identifier? _hd9231092346_)
                                               (gx#core-identifier=?
                                                _hd9231092346_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9231192348_)
                                              (let ((_e9231292351_
                                                     (gx#syntax-e
                                                      _tl9231192348_)))
                                                (let ((_hd9231392354_
                                                       (##car _e9231292351_))
                                                      (_tl9231492356_
                                                       (##cdr _e9231292351_)))
                                                  (let ((_hd-bind92359_
                                                         _hd9231392354_))
                                                    (if (gx#stx-pair?
                                                         _tl9231492356_)
                                                        (let ((_e9231592361_
                                                               (gx#syntax-e
                                                                _tl9231492356_)))
                                                          (let ((_hd9231692364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9231592361_))
                        (_tl9231792366_ (##cdr _e9231592361_)))
                    (let ((_expr92369_ _hd9231692364_))
                      (if (gx#stx-null? _tl9231792366_)
                          (if (gx#core-bind-values? _hd-bind92359_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92359_)
                                (_K92303_
                                 _rest92304_
                                 (cons _hd92302_ _r92305_)))
                              (_E9230892339_))
                          (_E9230892339_)))))
                (_E9230892339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9230892339_))
                                          (_E9230892339_))))
                                  (_E9230892339_)))))
                      (_E9230792371_))))
                 (_expand-body92174_
                  (lambda (_rbody92176_)
                    (let _lp92178_ ((_rest92180_ _rbody92176_)
                                    (_body92181_ '()))
                      (let* ((_rest9218292190_ _rest92180_)
                             (_else9218492198_ (lambda () _body92181_))
                             (_K9218692290_
                              (lambda (_rest92201_ _hd92202_)
                                (let* ((_e9220392224_ _hd92202_)
                                       (_E9221992228_
                                        (lambda ()
                                          (_lp92178_
                                           _rest92201_
                                           (cons (gx#core-expand-expression
                                                  _hd92202_)
                                                 _body92181_))))
                                       (_E9221592242_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9220392224_)
                                              (let ((_e9222092232_
                                                     (gx#syntax-e
                                                      _e9220392224_)))
                                                (let ((_hd9222192235_
                                                       (##car _e9222092232_))
                                                      (_tl9222292237_
                                                       (##cdr _e9222092232_)))
                                                  (let ((_form92240_
                                                         _hd9222192235_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form92240_
                                                         gx#special-form-binding?)
                                                        (_lp92178_
                                                         _rest92201_
                                                         (cons _hd92202_
                                                               _body92181_))
                                                        (_E9221992228_)))))
                                              (_E9221992228_))))
                                       (_E9220592254_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9220392224_)
                                              (let ((_e9221692246_
                                                     (gx#syntax-e
                                                      _e9220392224_)))
                                                (let ((_hd9221792249_
                                                       (##car _e9221692246_))
                                                      (_tl9221892251_
                                                       (##cdr _e9221692246_)))
                                                  (if (and (gx#identifier?
                                                            _hd9221792249_)
                                                           (gx#core-identifier=?
                                                            _hd9221792249_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp92178_
                                                           _rest92201_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92202_)
                         _body92181_))
                  (_E9221592242_))
              (_E9221592242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9221592242_))))
                                       (_E9220492286_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9220392224_)
                                              (let ((_e9220692258_
                                                     (gx#syntax-e
                                                      _e9220392224_)))
                                                (let ((_hd9220792261_
                                                       (##car _e9220692258_))
                                                      (_tl9220892263_
                                                       (##cdr _e9220692258_)))
                                                  (if (and (gx#identifier?
                                                            _hd9220792261_)
                                                           (gx#core-identifier=?
                                                            _hd9220792261_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9220892263_)
                                                          (let ((_e9220992266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9220892263_)))
                    (let ((_hd9221092269_ (##car _e9220992266_))
                          (_tl9221192271_ (##cdr _e9220992266_)))
                      (let ((_hd-bind92274_ _hd9221092269_))
                        (if (gx#stx-pair? _tl9221192271_)
                            (let ((_e9221292276_ (gx#syntax-e _tl9221192271_)))
                              (let ((_hd9221392279_ (##car _e9221292276_))
                                    (_tl9221492281_ (##cdr _e9221292276_)))
                                (let ((_expr92284_ _hd9221392279_))
                                  (if (gx#stx-null? _tl9221492281_)
                                      (if '#t
                                          (_lp92178_
                                           _rest92201_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind92274_)
                                                   (gx#core-expand-expression
                                                    _expr92284_))
                                                  (gx#stx-source _hd92202_))
                                                 _body92181_))
                                          (_E9220592254_))
                                      (_E9220592254_)))))
                            (_E9220592254_)))))
                  (_E9220592254_))
              (_E9220592254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9220592254_)))))
                                  (_E9220492286_)))))
                        (if (##pair? _rest9218292190_)
                            (let ((_hd9218792293_ (##car _rest9218292190_))
                                  (_tl9218892295_ (##cdr _rest9218292190_)))
                              (let* ((_hd92298_ _hd9218792293_)
                                     (_rest92300_ _tl9218892295_))
                                (_K9218692290_ _rest92300_ _hd92298_)))
                            (_else9218492198_)))))))
          (_expand-body92174_
           (gx#core-expand-block__%
            (cons '%#begin-module _body92171_)
            _expand-special92173_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx92014_
               _expanded?92015_
               _method92016_
               _current-phi92017_
               _expand192018_)
        (letrec ((_K92020_
                  (lambda (_rest92138_ _r92139_)
                    (let* ((_e9214092147_ _rest92138_)
                           (_E9214292151_ (lambda () _r92139_))
                           (_E9214192167_
                            (lambda ()
                              (if (gx#stx-pair? _e9214092147_)
                                  (let ((_e9214392155_
                                         (gx#syntax-e _e9214092147_)))
                                    (let ((_hd9214492158_
                                           (##car _e9214392155_))
                                          (_tl9214592160_
                                           (##cdr _e9214392155_)))
                                      (let* ((_hd92163_ _hd9214492158_)
                                             (_rest92165_ _tl9214592160_))
                                        (if '#t
                                            (_step92021_
                                             _hd92163_
                                             _rest92165_
                                             _r92139_)
                                            (_E9214292151_)))))
                                  (_E9214292151_)))))
                      (_E9214192167_))))
                 (_step92021_
                  (lambda (_hd92052_ _rest92053_ _r92054_)
                    (let* ((_e9205592073_ _hd92052_)
                           (_E9206892077_
                            (lambda ()
                              (if (_expanded?92015_ (gx#stx-e _hd92052_))
                                  (_K92020_
                                   _rest92053_
                                   (cons (gx#stx-e _hd92052_) _r92054_))
                                  (_expand192018_
                                   _hd92052_
                                   _K92020_
                                   _rest92053_
                                   _r92054_))))
                           (_E9206492093_
                            (lambda ()
                              (if (gx#stx-pair? _e9205592073_)
                                  (let ((_e9206992081_
                                         (gx#syntax-e _e9205592073_)))
                                    (let ((_hd9207092084_
                                           (##car _e9206992081_))
                                          (_tl9207192086_
                                           (##cdr _e9206992081_)))
                                      (let* ((_macro92089_ _hd9207092084_)
                                             (_body92091_ _tl9207192086_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro92089_
                                             gx#syntax-binding?)
                                            (_K92020_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro92089_)
                                                    _hd92052_
                                                    _method92016_)
                                                   _rest92053_)
                                             _r92054_)
                                            (_E9206892077_)))))
                                  (_E9206892077_))))
                           (_E9205792107_
                            (lambda ()
                              (if (gx#stx-pair? _e9205592073_)
                                  (let ((_e9206592097_
                                         (gx#syntax-e _e9205592073_)))
                                    (let ((_hd9206692100_
                                           (##car _e9206592097_))
                                          (_tl9206792102_
                                           (##cdr _e9206592097_)))
                                      (if (eq? (gx#stx-e _hd9206692100_)
                                               'begin:)
                                          (let ((_body92105_ _tl9206792102_))
                                            (if '#t
                                                (_K92020_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest92053_
                                                  _body92105_)
                                                 _r92054_)
                                                (_E9206492093_)))
                                          (_E9206492093_))))
                                  (_E9206492093_))))
                           (_E9205692134_
                            (lambda ()
                              (if (gx#stx-pair? _e9205592073_)
                                  (let ((_e9205892111_
                                         (gx#syntax-e _e9205592073_)))
                                    (let ((_hd9205992114_
                                           (##car _e9205892111_))
                                          (_tl9206092116_
                                           (##cdr _e9205892111_)))
                                      (if (eq? (gx#stx-e _hd9205992114_) 'phi:)
                                          (if (gx#stx-pair? _tl9206092116_)
                                              (let ((_e9206192119_
                                                     (gx#syntax-e
                                                      _tl9206092116_)))
                                                (let ((_hd9206292122_
                                                       (##car _e9206192119_))
                                                      (_tl9206392124_
                                                       (##cdr _e9206192119_)))
                                                  (let* ((_dphi92127_
                                                          _hd9206292122_)
                                                         (_body92129_
                                                          _tl9206392124_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi92127_)
                                                        (let ((_rbody92132_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K92020_ _body92129_ '()))
                        _current-phi92017_
                        (fx+ (gx#stx-e _dphi92127_) (_current-phi92017_)))))
                  (_K92020_ _rest92053_ (foldr1 cons _r92054_ _rbody92132_)))
                (_E9205792107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9205792107_))
                                          (_E9205792107_))))
                                  (_E9205792107_)))))
                      (_E9205692134_)))))
          (let* ((_e9202292029_ _stx92014_)
                 (_E9202492033_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9202292029_)))
                 (_E9202392048_
                  (lambda ()
                    (if (gx#stx-pair? _e9202292029_)
                        (let ((_e9202592037_ (gx#syntax-e _e9202292029_)))
                          (let ((_hd9202692040_ (##car _e9202592037_))
                                (_tl9202792042_ (##cdr _e9202592037_)))
                            (let ((_body92045_ _tl9202792042_))
                              (if '#t
                                  (if (_current-phi92017_)
                                      (_K92020_ _body92045_ '())
                                      (call-with-parameters
                                       (lambda () (_K92020_ _body92045_ '()))
                                       _current-phi92017_
                                       (gx#current-expander-phi)))
                                  (_E9202492033_)))))
                        (_E9202492033_)))))
            (_E9202392048_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91681_ _internal-expand?91682_)
        (letrec ((_expand191684_
                  (lambda (_hd91994_ _K91995_ _rest91996_ _r91997_)
                    (if (gx#core-bound-module? _hd91994_)
                        (_import191685_
                         (gx#syntax-local-e__0 _hd91994_)
                         _K91995_
                         _rest91996_
                         _r91997_)
                        (if (gx#core-library-module-path? _hd91994_)
                            (_import191685_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd91994_))
                             _K91995_
                             _rest91996_
                             _r91997_)
                            (if (gx#core-library-relative-module-path?
                                 _hd91994_)
                                (_import191685_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd91994_))
                                 _K91995_
                                 _rest91996_
                                 _r91997_)
                                (let ((_e91999_ (gx#stx-e _hd91994_)))
                                  (if (pair? _e91999_)
                                      (let ((_$e92001_
                                             (gx#stx-e (car _e91999_))))
                                        (if (eq? 'spec: _$e92001_)
                                            (_import-spec91688_
                                             _hd91994_
                                             _K91995_
                                             _rest91996_
                                             _r91997_)
                                            (if (eq? 'in: _$e92001_)
                                                (_import-submodule91686_
                                                 _hd91994_
                                                 _K91995_
                                                 _rest91996_
                                                 _r91997_)
                                                (if (eq? 'runtime: _$e92001_)
                                                    (_import-runtime91687_
                                                     _hd91994_
                                                     _K91995_
                                                     _rest91996_
                                                     _r91997_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91681_
                                                     _hd91994_)))))
                                      (if (string? _e91999_)
                                          (_import191685_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd91994_
                                             (gx#stx-source _stx91681_)))
                                           _K91995_
                                           _rest91996_
                                           _r91997_)
                                          (if (##structure-instance-of?
                                               _e91999_
                                               'gx#module-context::t)
                                              (_K91995_
                                               _rest91996_
                                               (cons _e91999_ _r91997_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91681_
                                               _hd91994_))))))))))
                 (_import191685_
                  (lambda (_ctx91983_ _K91984_ _rest91985_ _r91986_)
                    (let ((_dphi91988_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K91984_
                       _rest91985_
                       (cons (##structure
                              gx#import-set::t
                              _ctx91983_
                              _dphi91988_
                              (map (lambda (_g9198991991_)
                                     (gx#core-module-export->import__%
                                      _g9198991991_
                                      '#f
                                      _dphi91988_))
                                   (##unchecked-structure-ref
                                    _ctx91983_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r91986_)))))
                 (_import-submodule91686_
                  (lambda (_hd91950_ _K91951_ _rest91952_ _r91953_)
                    (let* ((_e9195491961_ _hd91950_)
                           (_E9195691965_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9195491961_)))
                           (_E9195591979_
                            (lambda ()
                              (if (gx#stx-pair? _e9195491961_)
                                  (let ((_e9195791969_
                                         (gx#syntax-e _e9195491961_)))
                                    (let ((_hd9195891972_
                                           (##car _e9195791969_))
                                          (_tl9195991974_
                                           (##cdr _e9195791969_)))
                                      (let ((_spath91977_ _tl9195991974_))
                                        (if '#t
                                            (_import191685_
                                             (_import-spec-source91689_
                                              _spath91977_)
                                             _K91951_
                                             _rest91952_
                                             _r91953_)
                                            (_E9195691965_)))))
                                  (_E9195691965_)))))
                      (_E9195591979_))))
                 (_import-runtime91687_
                  (lambda (_hd91917_ _K91918_ _rest91919_ _r91920_)
                    (let* ((_e9192191928_ _hd91917_)
                           (_E9192391932_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9192191928_)))
                           (_E9192291946_
                            (lambda ()
                              (if (gx#stx-pair? _e9192191928_)
                                  (let ((_e9192491936_
                                         (gx#syntax-e _e9192191928_)))
                                    (let ((_hd9192591939_
                                           (##car _e9192491936_))
                                          (_tl9192691941_
                                           (##cdr _e9192491936_)))
                                      (let ((_spath91944_ _tl9192691941_))
                                        (if '#t
                                            (_K91918_
                                             _rest91919_
                                             (cons (_import-spec-source91689_
                                                    _spath91944_)
                                                   _r91920_))
                                            (_E9192391932_)))))
                                  (_E9192391932_)))))
                      (_E9192291946_))))
                 (_import-spec91688_
                  (lambda (_hd91756_ _K91757_ _rest91758_ _r91759_)
                    (let* ((_e9176091777_ _hd91756_)
                           (_E9176991781_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9176091777_)))
                           (_E9176291891_
                            (lambda ()
                              (if (gx#stx-pair? _e9176091777_)
                                  (let ((_e9177091785_
                                         (gx#syntax-e _e9176091777_)))
                                    (let ((_hd9177191788_
                                           (##car _e9177091785_))
                                          (_tl9177291790_
                                           (##cdr _e9177091785_)))
                                      (if (gx#stx-pair? _tl9177291790_)
                                          (let ((_e9177391793_
                                                 (gx#syntax-e _tl9177291790_)))
                                            (let ((_hd9177491796_
                                                   (##car _e9177391793_))
                                                  (_tl9177591798_
                                                   (##cdr _e9177391793_)))
                                              (let* ((_path91801_
                                                      _hd9177491796_)
                                                     (_specs91803_
                                                      _tl9177591798_))
                                                (if '#t
                                                    (let ((_src-ctx91805_
                                                           (_import-spec-source91689_
                                                            _path91801_))
                                                          (_exports91806_
                                                           (make-hash-table))
                                                          (_specs91807_
                                                           (gx#syntax->list
                                                            _specs91803_)))
                                                      (for-each
                                                       (lambda (_out91809_)
                                                         (hash-put!
                                                          _exports91806_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91809_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91809_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91809_))
               (##unchecked-structure-ref
                _src-ctx91805_
                '9
                gx#module-context::t
                '#f))
              (_K91757_
               _rest91758_
               (foldl1 (lambda (_spec91811_ _r91812_)
                         (let* ((_e9181391829_ _spec91811_)
                                (_E9181591833_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9181391829_)))
                                (_E9181491887_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9181391829_)
                                       (let ((_e9181691837_
                                              (gx#syntax-e _e9181391829_)))
                                         (let ((_hd9181791840_
                                                (##car _e9181691837_))
                                               (_tl9181891842_
                                                (##cdr _e9181691837_)))
                                           (let ((_phi91845_ _hd9181791840_))
                                             (if (gx#stx-pair? _tl9181891842_)
                                                 (let ((_e9181991847_
                                                        (gx#syntax-e
                                                         _tl9181891842_)))
                                                   (let ((_hd9182091850_
                                                          (##car _e9181991847_))
                                                         (_tl9182191852_
                                                          (##cdr _e9181991847_)))
                                                     (let ((_name91855_
                                                            _hd9182091850_))
                                                       (if (gx#stx-pair?
                                                            _tl9182191852_)
                                                           (let ((_e9182291857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9182191852_)))
                     (let ((_hd9182391860_ (##car _e9182291857_))
                           (_tl9182491862_ (##cdr _e9182291857_)))
                       (let ((_src-phi91865_ _hd9182391860_))
                         (if (gx#stx-pair? _tl9182491862_)
                             (let ((_e9182591867_
                                    (gx#syntax-e _tl9182491862_)))
                               (let ((_hd9182691870_ (##car _e9182591867_))
                                     (_tl9182791872_ (##cdr _e9182591867_)))
                                 (let ((_src-name91875_ _hd9182691870_))
                                   (if (gx#stx-null? _tl9182791872_)
                                       (if (and (gx#stx-fixnum? _src-phi91865_)
                                                (gx#identifier?
                                                 _src-name91875_)
                                                (gx#stx-fixnum? _phi91845_)
                                                (gx#identifier? _name91855_))
                                           (let ((_src-phi91877_
                                                  (gx#stx-e _src-phi91865_))
                                                 (_src-name91878_
                                                  (gx#core-identifier-key
                                                   _src-name91875_))
                                                 (_phi91879_
                                                  (gx#stx-e _phi91845_))
                                                 (_name91880_
                                                  (gx#core-identifier-key
                                                   _name91855_)))
                                             (let ((_$e91882_
                                                    (hash-get
                                                     _exports91806_
                                                     (cons _src-phi91877_
                                                           _src-name91878_))))
                                               (if _$e91882_
                                                   ((lambda (_out91885_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91885_
                                                             _name91880_
                                                             (fx- _phi91879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91877_))
                    _r91812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91882_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91681_
                                                    _hd91756_))))
                                           (_E9181591833_))
                                       (_E9181591833_)))))
                             (_E9181591833_)))))
                   (_E9181591833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9181591833_)))))
                                       (_E9181591833_)))))
                           (_E9181491887_)))
                       _r91759_
                       _specs91807_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9176991781_)))))
                                          (_E9176991781_))))
                                  (_E9176991781_))))
                           (_E9176191913_
                            (lambda ()
                              (if (gx#stx-pair? _e9176091777_)
                                  (let ((_e9176391895_
                                         (gx#syntax-e _e9176091777_)))
                                    (let ((_hd9176491898_
                                           (##car _e9176391895_))
                                          (_tl9176591900_
                                           (##cdr _e9176391895_)))
                                      (if (gx#stx-pair? _tl9176591900_)
                                          (let ((_e9176691903_
                                                 (gx#syntax-e _tl9176591900_)))
                                            (let ((_hd9176791906_
                                                   (##car _e9176691903_))
                                                  (_tl9176891908_
                                                   (##cdr _e9176691903_)))
                                              (let ((_path91911_
                                                     _hd9176791906_))
                                                (if (gx#stx-null?
                                                     _tl9176891908_)
                                                    (if '#t
                                                        (_K91757_
                                                         _rest91758_
                                                         (cons (_import-spec-source91689_
                                                                _path91911_)
                                                               _r91759_))
                                                        (_E9176291891_))
                                                    (_E9176291891_)))))
                                          (_E9176291891_))))
                                  (_E9176291891_)))))
                      (_E9176191913_))))
                 (_import-spec-source91689_
                  (lambda (_spath91754_)
                    (gx#core-import-nested-module _spath91754_ _stx91681_)))
                 (_import!91690_
                  (lambda (_rbody91703_)
                    (letrec* ((_current-ctx91705_
                               (gx#current-expander-context))
                              (_deps91706_ (make-hash-table-eq))
                              (_bind!91707_
                               (lambda (_hd91752_)
                                 (gx#core-bind-import!__1
                                  _hd91752_
                                  _current-ctx91705_))))
                      (let _lp91709_ ((_rest91711_ _rbody91703_)
                                      (_body91712_ '()))
                        (let* ((_rest9171391721_ _rest91711_)
                               (_else9171591731_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91705_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91705_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91705_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91712_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91729_ _g94575_)
                                     (gx#eval-module _ctx91729_))
                                   _deps91706_)
                                  _body91712_))
                               (_K9171791740_
                                (lambda (_rest91734_ _hd91735_)
                                  (if (##structure-direct-instance-of?
                                       _hd91735_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91707_ _hd91735_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91735_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91735_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91706_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91735_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91735_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91707_
                                             (##unchecked-structure-ref
                                              _hd91735_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91735_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91706_
                                                 (##unchecked-structure-ref
                                                  _hd91735_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91737_
                                                 (##structure-instance-of?
                                                  _hd91735_
                                                  'gx#module-context::t)))
                                            (if _$e91737_
                                                _$e91737_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91681_
                                                 _hd91735_)))))
                                  (_lp91709_
                                   _rest91734_
                                   (cons _hd91735_ _body91712_)))))
                          (if (##pair? _rest9171391721_)
                              (let ((_hd9171891743_ (##car _rest9171391721_))
                                    (_tl9171991745_ (##cdr _rest9171391721_)))
                                (let* ((_hd91748_ _hd9171891743_)
                                       (_rest91750_ _tl9171991745_))
                                  (_K9171791740_ _rest91750_ _hd91748_)))
                              (_else9171591731_)))))))
                 (_expanded-import?91691_
                  (lambda (_e91695_)
                    (let ((_$e91697_
                           (##structure-direct-instance-of?
                            _e91695_
                            'gx#import-set::t)))
                      (if _$e91697_
                          _$e91697_
                          (let ((_$e91700_
                                 (##structure-direct-instance-of?
                                  _e91695_
                                  'gx#module-import::t)))
                            (if _$e91700_
                                _$e91700_
                                (##structure-instance-of?
                                 _e91695_
                                 'gx#module-context::t))))))))
          (let ((_rbody91693_
                 (gx#core-expand-import/export
                  _stx91681_
                  _expanded-import?91691_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191684_)))
            (if _internal-expand?91682_
                (reverse _rbody91693_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91690_ _rbody91693_))
                 (gx#stx-source _stx91681_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx92007_)
        (let ((_internal-expand?92009_ '#f))
          (gx#core-expand-import%__% _stx92007_ _internal-expand?92009_))))
    (define gx#core-expand-import%
      (lambda _g94577_
        (let ((_g94576_ (##length _g94577_)))
          (cond ((##fx= _g94576_ 1)
                 (apply (lambda (_stx92007_)
                          (gx#core-expand-import%__0 _stx92007_))
                        _g94577_))
                ((##fx= _g94576_ 2)
                 (apply (lambda (_stx92011_ _internal-expand?92012_)
                          (gx#core-expand-import%__%
                           _stx92011_
                           _internal-expand?92012_))
                        _g94577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94577_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91608_ _where91609_)
        (let* ((_e9161091617_ _spath91608_)
               (_E9161291621_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9161091617_)))
               (_E9161191676_
                (lambda ()
                  (if (gx#stx-pair? _e9161091617_)
                      (let ((_e9161391625_ (gx#syntax-e _e9161091617_)))
                        (let ((_hd9161491628_ (##car _e9161391625_))
                              (_tl9161591630_ (##cdr _e9161391625_)))
                          (let* ((_origin91633_ _hd9161491628_)
                                 (_sub91635_ _tl9161591630_))
                            (if '#t
                                (let ((_origin-ctx91637_
                                       (if (gx#stx-false? _origin91633_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91633_))))
                                  (let _lp91639_ ((_rest91641_ _sub91635_)
                                                  (_ctx91642_
                                                   _origin-ctx91637_))
                                    (let* ((_e9164391650_ _rest91641_)
                                           (_E9164591654_
                                            (lambda () _ctx91642_))
                                           (_E9164491672_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9164391650_)
                                                  (let ((_e9164691658_
                                                         (gx#syntax-e
                                                          _e9164391650_)))
                                                    (let ((_hd9164791661_
                                                           (##car _e9164691658_))
                                                          (_tl9164891663_
                                                           (##cdr _e9164691658_)))
                                                      (let* ((_id91666_
                                                              _hd9164791661_)
                                                             (_rest91668_
                                                              _tl9164891663_))
                                                        (if '#t
                                                            (let ((_bind91670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91666_ '0 _ctx91642_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91670_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91670_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91609_
                           _spath91608_
                           _id91666_))
                      (_lp91639_
                       _rest91668_
                       (##unchecked-structure-ref
                        _bind91670_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9164591654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9164591654_)))))
                                      (_E9164491672_))))
                                (_E9161291621_)))))
                      (_E9161291621_)))))
          (_E9161191676_))))
    (define gx#core-expand-import-source
      (lambda (_hd91606_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91606_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx91114_ _internal-expand?91115_)
        (letrec* ((_make-export__9450694507_
                   (lambda (_bind91554_ _phi91555_ _ctx91556_ _name91557_)
                     (let* ((_key91559_
                             (##unchecked-structure-ref
                              _bind91554_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91561_
                             (if _name91557_
                                 (gx#core-identifier-key _name91557_)
                                 _key91559_)))
                       (##structure
                        gx#module-export::t
                        _ctx91556_
                        _key91559_
                        _phi91555_
                        _export-key91561_
                        (let ((_$e91564_
                               (##structure-instance-of?
                                _bind91554_
                                'gx#extern-binding::t)))
                          (if _$e91564_
                              _$e91564_
                              (##structure-direct-instance-of?
                               _bind91554_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9450894511_
                   (lambda (_bind91570_)
                     (let* ((_phi91572_ (gx#current-export-expander-phi))
                            (_ctx91574_ (gx#current-expander-context))
                            (_name91576_ '#f))
                       (_make-export__9450694507_
                        _bind91570_
                        _phi91572_
                        _ctx91574_
                        _name91576_))))
                  (_make-export__1__9450994512_
                   (lambda (_bind91578_ _phi91579_)
                     (let* ((_ctx91581_ (gx#current-expander-context))
                            (_name91583_ '#f))
                       (_make-export__9450694507_
                        _bind91578_
                        _phi91579_
                        _ctx91581_
                        _name91583_))))
                  (_make-export__2__9451094513_
                   (lambda (_bind91585_ _phi91586_ _ctx91587_)
                     (let ((_name91589_ '#f))
                       (_make-export__9450694507_
                        _bind91585_
                        _phi91586_
                        _ctx91587_
                        _name91589_))))
                  (_make-export91117_
                   (lambda _g94579_
                     (let ((_g94578_ (##length _g94579_)))
                       (cond ((##fx= _g94578_ 1)
                              (apply (lambda (_bind91570_)
                                       (_make-export__0__9450894511_
                                        _bind91570_))
                                     _g94579_))
                             ((##fx= _g94578_ 2)
                              (apply (lambda (_bind91578_ _phi91579_)
                                       (_make-export__1__9450994512_
                                        _bind91578_
                                        _phi91579_))
                                     _g94579_))
                             ((##fx= _g94578_ 3)
                              (apply (lambda (_bind91585_
                                              _phi91586_
                                              _ctx91587_)
                                       (_make-export__2__9451094513_
                                        _bind91585_
                                        _phi91586_
                                        _ctx91587_))
                                     _g94579_))
                             ((##fx= _g94578_ 4)
                              (apply (lambda (_bind91591_
                                              _phi91592_
                                              _ctx91593_
                                              _name91594_)
                                       (_make-export__9450694507_
                                        _bind91591_
                                        _phi91592_
                                        _ctx91593_
                                        _name91594_))
                                     _g94579_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94579_))))))
                  (_expand191118_
                   (lambda (_hd91267_ _K91268_ _rest91269_ _r91270_)
                     (let* ((_e9127191303_ _hd91267_)
                            (_E9129891307_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx91114_
                                _hd91267_)))
                            (_E9128891386_
                             (lambda ()
                               (if (gx#stx-pair? _e9127191303_)
                                   (let ((_e9129991311_
                                          (gx#syntax-e _e9127191303_)))
                                     (let ((_hd9130091314_
                                            (##car _e9129991311_))
                                           (_tl9130191316_
                                            (##cdr _e9129991311_)))
                                       (if (eq? (gx#stx-e _hd9130091314_)
                                                'import:)
                                           (let ((_in91319_ _tl9130191316_))
                                             (if (gx#stx-list? _in91319_)
                                                 (let _lp91321_ ((_in-rest91323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in91319_)
                         (_r91324_ _r91270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9132591332_
                                                           _in-rest91323_)
                                                          (_E9132791336_
                                                           (lambda ()
                                                             (_K91268_
                                                              _rest91269_
                                                              _r91324_)))
                                                          (_E9132691382_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9132591332_)
                         (let ((_e9132891340_ (gx#syntax-e _e9132591332_)))
                           (let ((_hd9132991343_ (##car _e9132891340_))
                                 (_tl9133091345_ (##cdr _e9132891340_)))
                             (let* ((_hd91348_ _hd9132991343_)
                                    (_in-rest91350_ _tl9133091345_))
                               (if '#t
                                   (let ((_src91380_
                                          (if (gx#core-bound-module? _hd91348_)
                                              (gx#syntax-local-e__0 _hd91348_)
                                              (if (gx#core-library-module-path?
                                                   _hd91348_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd91348_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd91348_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd91348_))
                                                      (if (gx#stx-string?
                                                           _hd91348_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd91348_
                                                            (gx#stx-source
                                                             _stx91114_)))
                                                          (let* ((_e9135191358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91348_)
                         (_E9135391362_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx91114_
                             _hd91348_)))
                         (_E9135291376_
                          (lambda ()
                            (if (gx#stx-pair? _e9135191358_)
                                (let ((_e9135491366_
                                       (gx#syntax-e _e9135191358_)))
                                  (let ((_hd9135591369_ (##car _e9135491366_))
                                        (_tl9135691371_ (##cdr _e9135491366_)))
                                    (if (eq? (gx#stx-e _hd9135591369_) 'in:)
                                        (let ((_spath91374_ _tl9135691371_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91374_
                                               _stx91114_)
                                              (_E9135391362_)))
                                        (_E9135391362_))))
                                (_E9135391362_)))))
                    (_E9135291376_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp91321_
                                      _in-rest91350_
                                      (_export-imports91119_
                                       _src91380_
                                       _r91324_)))
                                   (_E9132791336_)))))
                         (_E9132791336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9132691382_)))
                                                 (_E9129891307_)))
                                           (_E9129891307_))))
                                   (_E9129891307_))))
                            (_E9127591425_
                             (lambda ()
                               (if (gx#stx-pair? _e9127191303_)
                                   (let ((_e9128991390_
                                          (gx#syntax-e _e9127191303_)))
                                     (let ((_hd9129091393_
                                            (##car _e9128991390_))
                                           (_tl9129191395_
                                            (##cdr _e9128991390_)))
                                       (if (eq? (gx#stx-e _hd9129091393_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9129191395_)
                                               (let ((_e9129291398_
                                                      (gx#syntax-e
                                                       _tl9129191395_)))
                                                 (let ((_hd9129391401_
                                                        (##car _e9129291398_))
                                                       (_tl9129491403_
                                                        (##cdr _e9129291398_)))
                                                   (let ((_id91406_
                                                          _hd9129391401_))
                                                     (if (gx#stx-pair?
                                                          _tl9129491403_)
                                                         (let ((_e9129591408_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9129491403_)))
                   (let ((_hd9129691411_ (##car _e9129591408_))
                         (_tl9129791413_ (##cdr _e9129591408_)))
                     (let ((_name91416_ _hd9129691411_))
                       (if (gx#stx-null? _tl9129791413_)
                           (if '#t
                               (let* ((_phi91418_
                                       (gx#current-export-expander-phi))
                                      (_$e91420_
                                       (gx#core-resolve-identifier__1
                                        _id91406_
                                        _phi91418_)))
                                 (if _$e91420_
                                     ((lambda (_bind91423_)
                                        (_K91268_
                                         _rest91269_
                                         (cons (_make-export__9450694507_
                                                _bind91423_
                                                _phi91418_
                                                (gx#current-expander-context)
                                                _name91416_)
                                               _r91270_)))
                                      _$e91420_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx91114_
                                      _hd91267_
                                      _id91406_)))
                               (_E9128891386_))
                           (_E9128891386_)))))
                 (_E9128891386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9128891386_))
                                           (_E9128891386_))))
                                   (_E9128891386_))))
                            (_E9127491474_
                             (lambda ()
                               (if (gx#stx-pair? _e9127191303_)
                                   (let ((_e9127691429_
                                          (gx#syntax-e _e9127191303_)))
                                     (let ((_hd9127791432_
                                            (##car _e9127691429_))
                                           (_tl9127891434_
                                            (##cdr _e9127691429_)))
                                       (if (eq? (gx#stx-e _hd9127791432_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9127891434_)
                                               (let ((_e9127991437_
                                                      (gx#syntax-e
                                                       _tl9127891434_)))
                                                 (let ((_hd9128091440_
                                                        (##car _e9127991437_))
                                                       (_tl9128191442_
                                                        (##cdr _e9127991437_)))
                                                   (let ((_phi91445_
                                                          _hd9128091440_))
                                                     (if (gx#stx-pair?
                                                          _tl9128191442_)
                                                         (let ((_e9128291447_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9128191442_)))
                   (let ((_hd9128391450_ (##car _e9128291447_))
                         (_tl9128491452_ (##cdr _e9128291447_)))
                     (let ((_id91455_ _hd9128391450_))
                       (if (gx#stx-pair? _tl9128491452_)
                           (let ((_e9128591457_ (gx#syntax-e _tl9128491452_)))
                             (let ((_hd9128691460_ (##car _e9128591457_))
                                   (_tl9128791462_ (##cdr _e9128591457_)))
                               (let ((_name91465_ _hd9128691460_))
                                 (if (gx#stx-null? _tl9128791462_)
                                     (if (and (gx#stx-fixnum? _phi91445_)
                                              (gx#identifier? _id91455_)
                                              (gx#identifier? _name91465_))
                                         (let* ((_phi91467_
                                                 (gx#stx-e _phi91445_))
                                                (_$e91469_
                                                 (gx#core-resolve-identifier__1
                                                  _id91455_
                                                  _phi91467_)))
                                           (if _$e91469_
                                               ((lambda (_bind91472_)
                                                  (_K91268_
                                                   _rest91269_
                                                   (cons (_make-export__9450694507_
                                                          _bind91472_
                                                          _phi91467_
                                                          (gx#current-expander-context)
                                                          _name91465_)
                                                         _r91270_)))
                                                _$e91469_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx91114_
                                                _hd91267_
                                                _id91455_)))
                                         (_E9127591425_))
                                     (_E9127591425_)))))
                           (_E9127591425_)))))
                 (_E9127591425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9127591425_))
                                           (_E9127591425_))))
                                   (_E9127591425_))))
                            (_E9127391485_
                             (lambda ()
                               (let ((_id91478_ _e9127191303_))
                                 (if (gx#identifier? _id91478_)
                                     (let ((_$e91480_
                                            (gx#core-resolve-identifier__1
                                             _id91478_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91480_
                                           ((lambda (_bind91483_)
                                              (_K91268_
                                               _rest91269_
                                               (cons (_make-export__0__9450894511_
                                                      _bind91483_)
                                                     _r91270_)))
                                            _$e91480_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx91114_
                                            _hd91267_)))
                                     (_E9127491474_)))))
                            (_E9127291549_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9127191303_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91489_
                                               (gx#current-expander-context))
                                              (_current-phi91491_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91493_
                                               (gx#core-context-shift
                                                _current-ctx91489_
                                                _current-phi91491_))
                                              (_phi-bind91495_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91493_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91498_ ((_bind-rest91500_
                                                          _phi-bind91495_)
                                                         (_set91501_ '()))
                                           (let* ((_bind-rest9150291512_
                                                   _bind-rest91500_)
                                                  (_else9150491520_
                                                   (lambda ()
                                                     (_K91268_
                                                      _rest91269_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91491_
                                                             _set91501_)
                                                            _r91270_))))
                                                  (_K9150691530_
                                                   (lambda (_bind-rest91523_
                                                            _bind91524_
                                                            _key91525_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91524_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91524_))
                                                         (_lp91498_
                                                          _bind-rest91523_
                                                          _set91501_)
                                                         (_lp91498_
                                                          _bind-rest91523_
                                                          (cons (_make-export__2__9451094513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91524_
                         _current-phi91491_
                         _current-ctx91489_)
                        _set91501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9150291512_)
                                                 (let ((_hd9150791533_
                                                        (##car _bind-rest9150291512_))
                                                       (_tl9150891535_
                                                        (##cdr _bind-rest9150291512_)))
                                                   (if (##pair? _hd9150791533_)
                                                       (let ((_hd9150991538_
                                                              (##car _hd9150791533_))
                                                             (_tl9151091540_
                                                              (##cdr _hd9150791533_)))
                                                         (let* ((_key91543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9150991538_)
                        (_bind91545_ _tl9151091540_)
                        (_bind-rest91547_ _tl9150891535_))
                   (_K9150691530_ _bind-rest91547_ _bind91545_ _key91543_)))
               (_else9150491520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9150491520_)))))
                                       (_E9127391485_))
                                   (_E9127391485_)))))
                       (_E9127291549_))))
                  (_export-imports91119_
                   (lambda (_src91143_ _r91144_)
                     (letrec* ((_current-ctx91146_
                                (gx#current-expander-context))
                               (_current-phi91147_
                                (gx#current-export-expander-phi))
                               (_import->export91148_
                                (lambda (_in91229_)
                                  (let* ((_in9123091238_ _in91229_)
                                         (_E9123291242_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9123091238_)))
                                         (_K9123391249_
                                          (lambda (_phi91245_
                                                   _key91246_
                                                   _out91247_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx91146_
                                             _key91246_
                                             _phi91245_
                                             _key91246_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9123091238_
                                         'gx#module-import::t)
                                        (let* ((_e9123491252_
                                                (##unchecked-structure-ref
                                                 _in9123091238_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out91255_ _e9123491252_)
                                               (_e9123591257_
                                                (##unchecked-structure-ref
                                                 _in9123091238_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key91260_ _e9123591257_)
                                               (_e9123691262_
                                                (##unchecked-structure-ref
                                                 _in9123091238_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi91265_ _e9123691262_))
                                          (_K9123391249_
                                           _phi91265_
                                           _key91260_
                                           _out91255_))
                                        (_E9123291242_)))))
                               (_fold-e91149_
                                (lambda (_in91151_ _r91152_)
                                  (let* ((_in9115391167_ _in91151_)
                                         (_else9115691175_
                                          (lambda () _r91152_)))
                                    (let ((_K9116291211_
                                           (lambda (_phi91207_
                                                    _key91208_
                                                    _out91209_)
                                             (if (and (fx= _phi91207_
                                                           _current-phi91147_)
                                                      (eq? _src91143_
                                                           (##unchecked-structure-ref
                                                            _out91209_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export91148_
                                                        _in91151_)
                                                       _r91152_)
                                                 _r91152_)))
                                          (_K9115891186_
                                           (lambda (_imports91179_
                                                    _phi91180_
                                                    _ctx91181_)
                                             (if (and (fx= _phi91180_
                                                           _current-phi91147_)
                                                      (eq? _src91143_
                                                           _ctx91181_))
                                                 (foldl1 (lambda (_in91183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r91184_)
                   (cons (_import->export91148_ _in91183_) _r91184_))
                 _r91152_
                 _imports91179_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r91152_))))
                                      (let ((_try-match9115591204_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9115391167_
                                                    'gx#import-set::t)
                                                   (let* ((_e9115991189_
                                                           (##unchecked-structure-ref
                                                            _in9115391167_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9116091194_
                                                           (##unchecked-structure-ref
                                                            _in9115391167_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9116191199_
                                                           (##unchecked-structure-ref
                                                            _in9115391167_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx91192_
                                                            _e9115991189_)
                                                           (_phi91197_
                                                            _e9116091194_)
                                                           (_imports91202_
                                                            _e9116191199_))
                                                       (_K9115891186_
                                                        _imports91202_
                                                        _phi91197_
                                                        _ctx91192_)))
                                                   (_else9115691175_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9115391167_
                                             'gx#module-import::t)
                                            (let* ((_e9116391214_
                                                    (##unchecked-structure-ref
                                                     _in9115391167_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9116491219_
                                                    (##unchecked-structure-ref
                                                     _in9115391167_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9116591224_
                                                    (##unchecked-structure-ref
                                                     _in9115391167_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out91217_ _e9116391214_)
                                                    (_key91222_ _e9116491219_)
                                                    (_phi91227_ _e9116591224_))
                                                (_K9116291211_
                                                 _phi91227_
                                                 _key91222_
                                                 _out91217_)))
                                            (_try-match9115591204_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src91143_
                              _current-phi91147_
                              (foldl1 _fold-e91149_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx91146_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r91144_))))
                  (_export!91120_
                   (lambda (_rbody91133_)
                     (letrec* ((_current-ctx91135_
                                (gx#current-expander-context))
                               (_fold-e91136_
                                (lambda (_out91140_ _r91141_)
                                  (if (##structure-direct-instance-of?
                                       _out91140_
                                       'gx#module-export::t)
                                      (cons _out91140_ _r91141_)
                                      (if (##structure-direct-instance-of?
                                           _out91140_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r91141_
                                                  (##unchecked-structure-ref
                                                   _out91140_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r91141_)))))
                       (let ((_body91138_ (reverse _rbody91133_)))
                         (##unchecked-structure-set!
                          _current-ctx91135_
                          (foldl1 _fold-e91136_
                                  (##unchecked-structure-ref
                                   _current-ctx91135_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body91138_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body91138_))))
                  (_expanded-export?91121_
                   (lambda (_e91128_)
                     (let ((_$e91130_
                            (##structure-direct-instance-of?
                             _e91128_
                             'gx#module-export::t)))
                       (if _$e91130_
                           _$e91130_
                           (##structure-direct-instance-of?
                            _e91128_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?91115_)
              (let ((_rbody91126_
                     (gx#core-expand-import/export
                      _stx91114_
                      _expanded-export?91121_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand191118_)))
                (if _internal-expand?91115_
                    (reverse _rbody91126_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!91120_ _rbody91126_))
                     (gx#stx-source _stx91114_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx91114_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx91114_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91599_)
        (let ((_internal-expand?91601_ '#f))
          (gx#core-expand-export%__% _stx91599_ _internal-expand?91601_))))
    (define gx#core-expand-export%
      (lambda _g94581_
        (let ((_g94580_ (##length _g94581_)))
          (cond ((##fx= _g94580_ 1)
                 (apply (lambda (_stx91599_)
                          (gx#core-expand-export%__0 _stx91599_))
                        _g94581_))
                ((##fx= _g94580_ 2)
                 (apply (lambda (_stx91603_ _internal-expand?91604_)
                          (gx#core-expand-export%__%
                           _stx91603_
                           _internal-expand?91604_))
                        _g94581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94581_))))))
    (define gx#core-expand-export-source
      (lambda (_hd91111_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd91111_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx91081_)
        (let* ((_e9108291089_ _stx91081_)
               (_E9108491093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9108291089_)))
               (_E9108391107_
                (lambda ()
                  (if (gx#stx-pair? _e9108291089_)
                      (let ((_e9108591097_ (gx#syntax-e _e9108291089_)))
                        (let ((_hd9108691100_ (##car _e9108591097_))
                              (_tl9108791102_ (##cdr _e9108591097_)))
                          (let ((_body91105_ _tl9108791102_))
                            (if (gx#identifier-list? _body91105_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body91105_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body91105_))
                                   (gx#stx-source _stx91081_)))
                                (_E9108491093_)))))
                      (_E9108491093_)))))
          (_E9108391107_))))
    (define gx#core-bind-feature!__%
      (lambda (_id91047_ _private?91048_ _phi91049_ _ctx91050_)
        (gx#core-bind-syntax!__%
         _id91047_
         ((if _private?91048_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id91047_))
         _private?91048_
         _phi91049_
         _ctx91050_)))
    (define gx#core-bind-feature!__0
      (lambda (_id91055_)
        (let* ((_private?91057_ '#f)
               (_phi91059_ (gx#current-expander-phi))
               (_ctx91061_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91055_
           _private?91057_
           _phi91059_
           _ctx91061_))))
    (define gx#core-bind-feature!__1
      (lambda (_id91063_ _private?91064_)
        (let* ((_phi91066_ (gx#current-expander-phi))
               (_ctx91068_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91063_
           _private?91064_
           _phi91066_
           _ctx91068_))))
    (define gx#core-bind-feature!__2
      (lambda (_id91070_ _private?91071_ _phi91072_)
        (let ((_ctx91074_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91070_
           _private?91071_
           _phi91072_
           _ctx91074_))))
    (define gx#core-bind-feature!
      (lambda _g94583_
        (let ((_g94582_ (##length _g94583_)))
          (cond ((##fx= _g94582_ 1)
                 (apply (lambda (_id91055_)
                          (gx#core-bind-feature!__0 _id91055_))
                        _g94583_))
                ((##fx= _g94582_ 2)
                 (apply (lambda (_id91063_ _private?91064_)
                          (gx#core-bind-feature!__1 _id91063_ _private?91064_))
                        _g94583_))
                ((##fx= _g94582_ 3)
                 (apply (lambda (_id91070_ _private?91071_ _phi91072_)
                          (gx#core-bind-feature!__2
                           _id91070_
                           _private?91071_
                           _phi91072_))
                        _g94583_))
                ((##fx= _g94582_ 4)
                 (apply (lambda (_id91076_
                                 _private?91077_
                                 _phi91078_
                                 _ctx91079_)
                          (gx#core-bind-feature!__%
                           _id91076_
                           _private?91077_
                           _phi91078_
                           _ctx91079_))
                        _g94583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94583_))))))))
