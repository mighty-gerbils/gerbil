(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710943025)
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
      (lambda _$args94522_
        (apply make-instance gx#module-import::t _$args94522_)))
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
      (lambda _$args94519_
        (apply make-instance gx#module-export::t _$args94519_)))
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
      (lambda _$args94516_
        (apply make-instance gx#import-set::t _$args94516_)))
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
      (lambda _$args94513_
        (apply make-instance gx#export-set::t _$args94513_)))
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
      (lambda _$args94510_
        (apply make-instance gx#import-expander::t _$args94510_)))
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
      (lambda _$args94507_
        (apply make-instance gx#export-expander::t _$args94507_)))
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
      (lambda _$args94504_
        (apply make-instance gx#import-export-expander::t _$args94504_)))
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
      (lambda (_path94501_ _fun94502_)
        (call-with-input-file
         (cons 'path: (cons _path94501_ gx#source-file-settings))
         _fun94502_)))
    (define gx#module-context:::init!
      (lambda (_self94495_ _id94496_ _super94497_ _ns94498_ _path94499_)
        (if (##fx< '11 (##structure-length _self94495_))
            (begin
              (##unchecked-structure-set!
               _self94495_
               _id94496_
               '1
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               (make-hash-table-eq)
               '2
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               _super94497_
               '3
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               '#f
               '4
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               '#f
               '5
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               _ns94498_
               '6
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               _path94499_
               '7
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               '()
               '8
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               '()
               '9
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               '#f
               '10
               (##structure-type _self94495_)
               '#f)
              (##unchecked-structure-set!
               _self94495_
               '#f
               '11
               (##structure-type _self94495_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94495_
                   '11
                   (##vector-length _self94495_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self94339_ _ctx94340_ _root94341_)
        (let ((_super94349_
               (let ((_$e94343_ _root94341_))
                 (if _$e94343_
                     _$e94343_
                     (let ((_$e94346_ (gx#core-context-root__0)))
                       (if _$e94346_
                           _$e94346_
                           (let ((__obj94564
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94565
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94564
                                     ':init!)))
                               (if __constructor94565
                                   (__constructor94565 __obj94564)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94564)))))))
          (if _ctx94340_
              (let ((_id94352_
                     (##structure-ref
                      _ctx94340_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path94353_
                     (##structure-ref _ctx94340_ '7 gx#module-context::t '#f))
                    (_in94354_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx94340_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e94355_
                     (make-promise (lambda () (gx#eval-module _ctx94340_)))))
                (if (##fx< '8 (##structure-length _self94339_))
                    (begin
                      (##unchecked-structure-set!
                       _self94339_
                       _id94352_
                       '1
                       (##structure-type _self94339_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94339_
                       (make-hash-table-eq 'size: (length _in94354_))
                       '2
                       (##structure-type _self94339_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94339_
                       _super94349_
                       '3
                       (##structure-type _self94339_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94339_
                       '#f
                       '4
                       (##structure-type _self94339_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94339_
                       '#f
                       '5
                       (##structure-type _self94339_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94339_
                       _path94353_
                       '6
                       (##structure-type _self94339_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94339_
                       _in94354_
                       '7
                       (##structure-type _self94339_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94339_
                       _e94355_
                       '8
                       (##structure-type _self94339_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self94339_
                           '8
                           (##vector-length _self94339_)))
                (for-each
                 (lambda (_g9435694358_)
                   (gx#core-bind-weak-import!__% _g9435694358_ _self94339_))
                 _in94354_))
              (if (##fx< '8 (##structure-length _self94339_))
                  (begin
                    (##unchecked-structure-set!
                     _self94339_
                     '#f
                     '1
                     (##structure-type _self94339_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94339_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self94339_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94339_
                     _super94349_
                     '3
                     (##structure-type _self94339_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94339_
                     '#f
                     '4
                     (##structure-type _self94339_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94339_
                     '#f
                     '5
                     (##structure-type _self94339_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94339_
                     '#f
                     '6
                     (##structure-type _self94339_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94339_
                     '()
                     '7
                     (##structure-type _self94339_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94339_
                     '#f
                     '8
                     (##structure-type _self94339_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self94339_
                         '8
                         (##vector-length _self94339_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self94364_ _ctx94365_)
        (let ((_root94367_ '#f))
          (gx#prelude-context:::init!__% _self94364_ _ctx94365_ _root94367_))))
    (define gx#prelude-context:::init!
      (lambda _g94571_
        (let ((_g94570_ (##length _g94571_)))
          (cond ((##fx= _g94570_ 2)
                 (apply (lambda (_self94364_ _ctx94365_)
                          (gx#prelude-context:::init!__0
                           _self94364_
                           _ctx94365_))
                        _g94571_))
                ((##fx= _g94570_ 3)
                 (apply (lambda (_self94369_ _ctx94370_ _root94371_)
                          (gx#prelude-context:::init!__%
                           _self94369_
                           _ctx94370_
                           _root94371_))
                        _g94571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94571_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self94213_ _e94214_)
        (if (##fx< '3 (##structure-length _self94213_))
            (begin
              (##unchecked-structure-set!
               _self94213_
               _e94214_
               '1
               (##structure-type _self94213_)
               '#f)
              (##unchecked-structure-set!
               _self94213_
               (gx#current-expander-context)
               '2
               (##structure-type _self94213_)
               '#f)
              (##unchecked-structure-set!
               _self94213_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self94213_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94213_
                   '3
                   (##vector-length _self94213_)))))
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
      (lambda (_g9383993842_ _g9384093844_)
        (gx#core-apply-user-expander__%
         _g9383993842_
         _g9384093844_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9371093713_ _g9371193715_)
        (gx#core-apply-user-expander__%
         _g9371093713_
         _g9371193715_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93581_)
        (let* ((_path93583_
                (##structure-ref _ctx93581_ '7 gx#module-context::t '#f))
               (_path93585_
                (if (pair? _path93583_) (last _path93583_) _path93583_)))
          (if (string? _path93585_) _path93585_ '#f))))
    (define gx#import-module__%
      (lambda (_path93557_ _reload?93558_ _eval?93559_)
        (let ((_ctx93561_
               ((gx#current-expander-module-import)
                _path93557_
                _reload?93558_)))
          (if (and _ctx93561_ _eval?93559_)
              (gx#eval-module _ctx93561_)
              '#!void)
          _ctx93561_)))
    (define gx#import-module__0
      (lambda (_path93566_)
        (let* ((_reload?93568_ '#f) (_eval?93570_ '#f))
          (gx#import-module__% _path93566_ _reload?93568_ _eval?93570_))))
    (define gx#import-module__1
      (lambda (_path93572_ _reload?93573_)
        (let ((_eval?93575_ '#f))
          (gx#import-module__% _path93572_ _reload?93573_ _eval?93575_))))
    (define gx#import-module
      (lambda _g94573_
        (let ((_g94572_ (##length _g94573_)))
          (cond ((##fx= _g94572_ 1)
                 (apply (lambda (_path93566_)
                          (gx#import-module__0 _path93566_))
                        _g94573_))
                ((##fx= _g94572_ 2)
                 (apply (lambda (_path93572_ _reload?93573_)
                          (gx#import-module__1 _path93572_ _reload?93573_))
                        _g94573_))
                ((##fx= _g94572_ 3)
                 (apply (lambda (_path93577_ _reload?93578_ _eval?93579_)
                          (gx#import-module__%
                           _path93577_
                           _reload?93578_
                           _eval?93579_))
                        _g94573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94573_))))))
    (define gx#eval-module
      (lambda (_mod93554_) ((gx#current-expander-module-eval) _mod93554_)))
    (define gx#core-eval-module
      (lambda (_obj93539_)
        (letrec ((_force-e93541_
                  (lambda (_getf93550_ _e93551_)
                    (call-with-parameters
                     (lambda () (force (_getf93550_ _e93551_)))
                     gx#current-expander-context
                     _e93551_
                     gx#current-expander-phi
                     '0))))
          (let _recur93543_ ((_e93545_ _obj93539_))
            (if (##structure-instance-of? _e93545_ 'gx#module-context::t)
                (begin
                  (let ((_$e93547_ (gx#core-context-prelude__% _e93545_)))
                    (if _$e93547_ (_recur93543_ _$e93547_) '#!void))
                  (_force-e93541_ gx#module-context-e _e93545_))
                (if (##structure-instance-of? _e93545_ 'gx#prelude-context::t)
                    (_force-e93541_ gx#prelude-context-e _e93545_)
                    (if (gx#stx-string? _e93545_)
                        (_recur93543_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93545_)))
                        (if (gx#core-library-module-path? _e93545_)
                            (_recur93543_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93545_)))
                            (error '"Cannot eval module" _obj93539_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93522_)
        (let _lp93524_ ((_e93526_ _ctx93522_))
          (if (or (##structure-instance-of? _e93526_ 'gx#module-context::t)
                  (##structure-instance-of? _e93526_ 'gx#local-context::t))
              (_lp93524_
               (##unchecked-structure-ref _e93526_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93526_ 'gx#prelude-context::t)
                  _e93526_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93535_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93535_))))
    (define gx#core-context-prelude
      (lambda _g94575_
        (let ((_g94574_ (##length _g94575_)))
          (cond ((##fx= _g94574_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94575_))
                ((##fx= _g94574_ 1)
                 (apply (lambda (_ctx93537_)
                          (gx#core-context-prelude__% _ctx93537_))
                        _g94575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94575_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93514_)
        (let ((_$e93516_ (hash-get gx#__module-registry _ctx93514_)))
          (if _$e93516_
              _$e93516_
              (let ((_pre93519_
                     (let ((__obj94566
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
                       (gx#prelude-context:::init! __obj94566 _ctx93514_)
                       __obj94566)))
                (hash-put! gx#__module-registry _ctx93514_ _pre93519_)
                _pre93519_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93395_ _reload?93396_)
        (letrec ((_import-source93398_
                  (lambda (_path93483_)
                    (if (member _path93483_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93483_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94576_ (gx#core-read-module _path93483_)))
                         (begin
                           (let ((_g94577_
                                  (if (##values? _g94576_)
                                      (##vector-length _g94576_)
                                      1)))
                             (if (not (##fx= _g94577_ 4))
                                 (error "Context expects 4 values" _g94577_)))
                           (let ((_pre93486_ (##vector-ref _g94576_ 0))
                                 (_id93487_ (##vector-ref _g94576_ 1))
                                 (_ns93488_ (##vector-ref _g94576_ 2))
                                 (_body93489_ (##vector-ref _g94576_ 3)))
                             (let* ((_prelude93494_
                                     (if (##structure-instance-of?
                                          _pre93486_
                                          'gx#prelude-context::t)
                                         _pre93486_
                                         (if (##structure-instance-of?
                                              _pre93486_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93486_)
                                             (if (string? _pre93486_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93486_))
                                                 (if (not _pre93486_)
                                                     (let ((_$e93491_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93491_
                                                           _$e93491_
                                                           (let ((__obj94567
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
                     (gx#prelude-context:::init! __obj94567 '#f)
                     __obj94567)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93395_
                                                            _pre93486_))))))
                                    (_ctx93496_
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
                                        _id93487_
                                        _prelude93494_
                                        _ns93488_
                                        _path93483_)
                                       __obj94568))
                                    (_body93498_
                                     (gx#core-expand-module-begin
                                      _body93489_
                                      _ctx93496_))
                                    (_body93500_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93498_)
                                      _path93483_
                                      _ctx93496_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93496_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93500_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93496_
                                _body93500_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93483_
                                _ctx93496_)
                               (hash-put!
                                gx#__module-registry
                                _id93487_
                                _ctx93496_)
                               _ctx93496_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93483_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93399_
                  (lambda (_rpath93411_)
                    (let* ((_rpath9341293419_ _rpath93411_)
                           (_E9341493423_
                            (lambda ()
                              (error '"No clause matching" _rpath9341293419_)))
                           (_K9341593471_
                            (lambda (_refs93426_ _origin93427_)
                              (let ((_ctx93429_
                                     (if _origin93427_
                                         (gx#core-import-module__%
                                          _origin93427_
                                          _reload?93396_)
                                         (gx#current-expander-context))))
                                (let _lp93431_ ((_rest93433_ _refs93426_)
                                                (_ctx93434_ _ctx93429_))
                                  (let* ((_rest9343593443_ _rest93433_)
                                         (_else9343793451_
                                          (lambda () _ctx93434_))
                                         (_K9343993459_
                                          (lambda (_rest93454_ _id93455_)
                                            (let ((_bind93457_
                                                   (gx#resolve-identifier__%
                                                    _id93455_
                                                    '0
                                                    _ctx93434_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93457_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93457_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93431_
                                                   _rest93454_
                                                   (##unchecked-structure-ref
                                                    _bind93457_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93411_
                                                         _id93455_
                                                         _bind93457_))))))
                                    (if (##pair? _rest9343593443_)
                                        (let ((_hd9344093462_
                                               (##car _rest9343593443_))
                                              (_tl9344193464_
                                               (##cdr _rest9343593443_)))
                                          (let* ((_id93467_ _hd9344093462_)
                                                 (_rest93469_ _tl9344193464_))
                                            (_K9343993459_
                                             _rest93469_
                                             _id93467_)))
                                        (_else9343793451_))))))))
                      (if (##pair? _rpath9341293419_)
                          (let ((_hd9341693474_ (##car _rpath9341293419_))
                                (_tl9341793476_ (##cdr _rpath9341293419_)))
                            (let* ((_origin93479_ _hd9341693474_)
                                   (_refs93481_ _tl9341793476_))
                              (_K9341593471_ _refs93481_ _origin93479_)))
                          (_E9341493423_))))))
          (let ((_$e93401_
                 (if (not _reload?93396_)
                     (hash-get gx#__module-registry _rpath93395_)
                     '#f)))
            (if _$e93401_
                (values _$e93401_)
                (if (list? _rpath93395_)
                    (_import-submodule93399_ _rpath93395_)
                    (if (gx#core-library-module-path? _rpath93395_)
                        (let ((_ctx93404_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93395_)
                                _reload?93396_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93395_
                           _ctx93404_)
                          _ctx93404_)
                        (let* ((_npath93406_ (path-normalize _rpath93395_))
                               (_$e93408_
                                (if (not _reload?93396_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93406_)
                                    '#f)))
                          (if _$e93408_
                              _$e93408_
                              (_import-source93398_ _npath93406_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93507_)
        (let ((_reload?93509_ '#f))
          (gx#core-import-module__% _rpath93507_ _reload?93509_))))
    (define gx#core-import-module
      (lambda _g94579_
        (let ((_g94578_ (##length _g94579_)))
          (cond ((##fx= _g94578_ 1)
                 (apply (lambda (_rpath93507_)
                          (gx#core-import-module__0 _rpath93507_))
                        _g94579_))
                ((##fx= _g94578_ 2)
                 (apply (lambda (_rpath93511_ _reload?93512_)
                          (gx#core-import-module__%
                           _rpath93511_
                           _reload?93512_))
                        _g94579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94579_))))))
    (define gx#core-read-module
      (lambda (_path93384_)
        (with-catch
         (lambda (_exn93386_)
           (if (and (datum-parsing-exception? _exn93386_)
                    (eq? (datum-parsing-exception-filepos _exn93386_) '0))
               (gx#core-read-module/lang _path93384_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93384_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9338893390_)
                      (display-exception _exn93386_ _g9338893390_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93384_)))))
    (define gx#core-read-module/sexp
      (lambda (_path93247_)
        (let _lp93249_ ((_body93251_ (read-syntax-from-file _path93247_))
                        (_pre93252_ '#f)
                        (_ns93253_ '#f)
                        (_pkg93254_ '#f))
          (let* ((_e9325593279_ _body93251_)
                 (_E9327193301_
                  (lambda ()
                    (let ((_g94580_
                           (if _pkg93254_
                               (values _pre93252_ _ns93253_ _pkg93254_)
                               (gx#core-read-module-package
                                _path93247_
                                _pre93252_
                                _ns93253_))))
                      (begin
                        (let ((_g94581_
                               (if (##values? _g94580_)
                                   (##vector-length _g94580_)
                                   1)))
                          (if (not (##fx= _g94581_ 3))
                              (error "Context expects 3 values" _g94581_)))
                        (let ((_pre93283_ (##vector-ref _g94580_ 0))
                              (_ns93284_ (##vector-ref _g94580_ 1))
                              (_pkg93285_ (##vector-ref _g94580_ 2)))
                          (let* ((_prelude93287_
                                  (if (gx#core-bound-module-prelude?
                                       _pre93283_)
                                      (gx#syntax-local-e__0 _pre93283_)
                                      (if (gx#core-library-module-path?
                                           _pre93283_)
                                          (gx#core-resolve-library-module-path
                                           _pre93283_)
                                          (if (gx#stx-string? _pre93283_)
                                              (gx#core-resolve-module-path__%
                                               _pre93283_
                                               _path93247_)
                                              (gx#stx-e _pre93283_)))))
                                 (_path-id93289_
                                  (gx#core-module-path->namespace _path93247_))
                                 (_pkg-id93291_
                                  (if _pkg93285_
                                      (string-append
                                       _pkg93285_
                                       '"/"
                                       _path-id93289_)
                                      _path-id93289_))
                                 (_module-id93293_
                                  (string->symbol _pkg-id93291_))
                                 (_module-ns93298_
                                  (if (eq? _ns93284_ '#!void)
                                      '#f
                                      (let ((_$e93295_ _ns93284_))
                                        (if _$e93295_
                                            _$e93295_
                                            _pkg-id93291_)))))
                            (values _prelude93287_
                                    _module-id93293_
                                    _module-ns93298_
                                    _body93251_)))))))
                 (_E9326493330_
                  (lambda ()
                    (if (gx#stx-pair? _e9325593279_)
                        (let ((_e9327293305_ (gx#syntax-e _e9325593279_)))
                          (let ((_hd9327393308_ (##car _e9327293305_))
                                (_tl9327493310_ (##cdr _e9327293305_)))
                            (if (eq? (gx#stx-e _hd9327393308_) 'package:)
                                (if (gx#stx-pair? _tl9327493310_)
                                    (let ((_e9327593313_
                                           (gx#syntax-e _tl9327493310_)))
                                      (let ((_hd9327693316_
                                             (##car _e9327593313_))
                                            (_tl9327793318_
                                             (##cdr _e9327593313_)))
                                        (let* ((_pkg93321_ _hd9327693316_)
                                               (_rest93323_ _tl9327793318_))
                                          (if '#t
                                              (let ((_pkg93328_
                                                     (if (gx#identifier?
                                                          _pkg93321_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg93321_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg93321_)
                         (gx#stx-false? _pkg93321_))
                     (gx#stx-e _pkg93321_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg93321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93249_
                                                 _rest93323_
                                                 _pre93252_
                                                 _ns93253_
                                                 _pkg93328_))
                                              (_E9327193301_)))))
                                    (_E9327193301_))
                                (_E9327193301_))))
                        (_E9327193301_))))
                 (_E9325793356_
                  (lambda ()
                    (if (gx#stx-pair? _e9325593279_)
                        (let ((_e9326593334_ (gx#syntax-e _e9325593279_)))
                          (let ((_hd9326693337_ (##car _e9326593334_))
                                (_tl9326793339_ (##cdr _e9326593334_)))
                            (if (eq? (gx#stx-e _hd9326693337_) 'namespace:)
                                (if (gx#stx-pair? _tl9326793339_)
                                    (let ((_e9326893342_
                                           (gx#syntax-e _tl9326793339_)))
                                      (let ((_hd9326993345_
                                             (##car _e9326893342_))
                                            (_tl9327093347_
                                             (##cdr _e9326893342_)))
                                        (let* ((_ns93350_ _hd9326993345_)
                                               (_rest93352_ _tl9327093347_))
                                          (if '#t
                                              (let ((_ns93354_
                                                     (if (gx#identifier?
                                                          _ns93350_)
                                                         (symbol->string
                                                          (gx#stx-e _ns93350_))
                                                         (if (gx#stx-string?
                                                              _ns93350_)
                                                             (gx#stx-e
                                                              _ns93350_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns93350_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns93350_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93249_
                                                 _rest93352_
                                                 _pre93252_
                                                 _ns93354_
                                                 _pkg93254_))
                                              (_E9326493330_)))))
                                    (_E9326493330_))
                                (_E9326493330_))))
                        (_E9326493330_))))
                 (_E9325693380_
                  (lambda ()
                    (if (gx#stx-pair? _e9325593279_)
                        (let ((_e9325893360_ (gx#syntax-e _e9325593279_)))
                          (let ((_hd9325993363_ (##car _e9325893360_))
                                (_tl9326093365_ (##cdr _e9325893360_)))
                            (if (eq? (gx#stx-e _hd9325993363_) 'prelude:)
                                (if (gx#stx-pair? _tl9326093365_)
                                    (let ((_e9326193368_
                                           (gx#syntax-e _tl9326093365_)))
                                      (let ((_hd9326293371_
                                             (##car _e9326193368_))
                                            (_tl9326393373_
                                             (##cdr _e9326193368_)))
                                        (let* ((_prelude93376_ _hd9326293371_)
                                               (_rest93378_ _tl9326393373_))
                                          (if '#t
                                              (_lp93249_
                                               _rest93378_
                                               _prelude93376_
                                               _ns93253_
                                               _pkg93254_)
                                              (_E9325793356_)))))
                                    (_E9325793356_))
                                (_E9325793356_))))
                        (_E9325793356_)))))
            (_E9325693380_)))))
    (define gx#core-read-module/lang
      (lambda (_path93074_)
        (letrec ((_default-read-module-body93076_
                  (lambda (_inp93239_)
                    (let _lp93241_ ((_body93243_ '()))
                      (let ((_next93245_ (read-syntax _inp93239_)))
                        (if (eof-object? _next93245_)
                            (reverse _body93243_)
                            (_lp93241_ (cons _next93245_ _body93243_)))))))
                 (_read-body93077_
                  (lambda (_inp93158_
                           _pre93159_
                           _ns93160_
                           _pkg93161_
                           _args93162_)
                    (let ((_g94582_
                           (if _pkg93161_
                               (values _pre93159_ _ns93160_ _pkg93161_)
                               (gx#core-read-module-package
                                _path93074_
                                _pre93159_
                                _ns93160_))))
                      (begin
                        (let ((_g94583_
                               (if (##values? _g94582_)
                                   (##vector-length _g94582_)
                                   1)))
                          (if (not (##fx= _g94583_ 3))
                              (error "Context expects 3 values" _g94583_)))
                        (let ((_pre93164_ (##vector-ref _g94582_ 0))
                              (_ns93165_ (##vector-ref _g94582_ 1))
                              (_pkg93166_ (##vector-ref _g94582_ 2)))
                          (let* ((_prelude93168_
                                  (gx#import-module__0 _pre93164_))
                                 (_read-module-body93222_
                                  (let ((_$e93214_
                                         (find (lambda (_e9316993171_)
                                                 (let* ((_g9317393183_
                                                         _e9316993171_)
                                                        (_else9317593191_
                                                         (lambda () '#f))
                                                        (_K9317793195_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9317393183_
                                                        'gx#module-export::t)
                                                       (let* ((_e9317893198_
                                                               (##unchecked-structure-ref
                                                                _g9317393183_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9317993201_
                                                               (##unchecked-structure-ref
                                                                _g9317393183_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9318093204_
                                                               (##unchecked-structure-ref
                                                                _g9317393183_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9318093204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9318193207_
                            (##unchecked-structure-ref
                             _g9317393183_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9320993211_)
                              (eq? _g9320993211_ 'read-module-body))
                            _e9318193207_)
                           (_K9317793195_)
                           (_else9317593191_)))
                     (_else9317593191_)))
               (_else9317593191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude93168_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e93214_
                                        ((lambda (_xport93217_)
                                           (let ((_proc93220_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport93217_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc93220_)
                                                 _proc93220_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path93074_
                                                  _pre93164_
                                                  _proc93220_))))
                                         _$e93214_)
                                        _default-read-module-body93076_)))
                                 (_path-id93224_
                                  (gx#core-module-path->namespace _path93074_))
                                 (_pkg-id93226_
                                  (if _pkg93166_
                                      (string-append
                                       _pkg93166_
                                       '"/"
                                       _path-id93224_)
                                      _path-id93224_))
                                 (_module-id93228_
                                  (string->symbol _pkg-id93226_))
                                 (_module-ns93233_
                                  (let ((_$e93230_ _ns93165_))
                                    (if _$e93230_ _$e93230_ _pkg-id93226_)))
                                 (_body93236_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body93222_ _inp93158_))
                                   gx#current-module-reader-path
                                   _path93074_
                                   gx#current-module-reader-args
                                   _args93162_)))
                            (values _prelude93168_
                                    _module-id93228_
                                    _module-ns93233_
                                    _body93236_)))))))
                 (_string-e93078_
                  (lambda (_obj93155_ _what93156_)
                    (if (string? _obj93155_)
                        _obj93155_
                        (if (symbol? _obj93155_)
                            (symbol->string _obj93155_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what93156_)
                             _path93074_
                             _obj93155_)))))
                 (_read-lang-args93079_
                  (lambda (_inp93110_ _args93111_)
                    (let* ((_args9311293120_ _args93111_)
                           (_else9311493128_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path93074_)))
                           (_K9311693143_
                            (lambda (_args93131_ _prelude93132_)
                              (let* ((_pkg93134_
                                      (pgetq__0 'package: _args93131_))
                                     (_pkg93136_
                                      (if _pkg93134_
                                          (_string-e93078_
                                           _pkg93134_
                                           '"package")
                                          '#f))
                                     (_ns93138_
                                      (pgetq__0 'namespace: _args93131_))
                                     (_ns93140_
                                      (if _ns93138_
                                          (_string-e93078_
                                           _ns93138_
                                           '"namespace")
                                          '#f)))
                                (_read-body93077_
                                 _inp93110_
                                 _prelude93132_
                                 _ns93140_
                                 _pkg93136_
                                 _args93131_)))))
                      (if (##pair? _args9311293120_)
                          (let ((_hd9311793146_ (##car _args9311293120_))
                                (_tl9311893148_ (##cdr _args9311293120_)))
                            (let* ((_prelude93151_ _hd9311793146_)
                                   (_args93153_ _tl9311893148_))
                              (_K9311693143_ _args93153_ _prelude93151_)))
                          (_else9311493128_)))))
                 (_read-lang93080_
                  (lambda (_inp93085_)
                    (let* ((_head93087_ (read-line _inp93085_))
                           (_$e93089_ (string-index__0 _head93087_ '#\space)))
                      (if _$e93089_
                          ((lambda (_ix93092_)
                             (let ((_lang93094_
                                    (substring _head93087_ '0 _ix93092_)))
                               (if (equal? _lang93094_ '"#lang")
                                   (let* ((_rest93096_
                                           (substring
                                            _head93087_
                                            (fx+ _ix93092_ '1)
                                            (string-length _head93087_)))
                                          (_args93107_
                                           (with-catch
                                            (lambda (_g9309793099_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path93074_
                                               _g9309793099_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest93096_
                                               (lambda (_g9310293104_)
                                                 (read-all
                                                  _g9310293104_
                                                  read)))))))
                                     (_read-lang-args93079_
                                      _inp93085_
                                      _args93107_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path93074_))))
                           _$e93089_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path93074_)))))
                 (_read-e93081_
                  (lambda (_inp93083_)
                    (if (eq? (peek-char _inp93083_) '#\#)
                        (_read-lang93080_ _inp93083_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path93074_)))))
          (gx#call-with-input-source-file _path93074_ _read-e93081_))))
    (define gx#core-read-module-package
      (lambda (_path93028_ _pre93029_ _ns93030_)
        (letrec ((_string-e93032_
                  (lambda (_e93072_)
                    (if (symbol? _e93072_)
                        (symbol->string _e93072_)
                        (if (string? _e93072_)
                            _e93072_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e93072_))))))
          (let _lp93034_ ((_dir93036_ (path-directory _path93028_))
                          (_pkg-path93037_ '()))
            (let ((_gerbil.pkg93039_ (path-expand '"gerbil.pkg" _dir93036_)))
              (if (file-exists? _gerbil.pkg93039_)
                  (let ((_plist93041_
                         (gx#core-library-package-plist__% _dir93036_ '#t)))
                    (if (null? _plist93041_)
                        (let ((_pkg93043_
                               (if (not (null? _pkg-path93037_))
                                   (string-join _pkg-path93037_ '"/")
                                   '#f)))
                          (values _pre93029_ _ns93030_ _pkg93043_))
                        (if (list? _plist93041_)
                            (let* ((_root93045_
                                    (pgetq__0 'package: _plist93041_))
                                   (_pkg93049_
                                    (let ((_pkg-path93047_
                                           (if _root93045_
                                               (cons (_string-e93032_
                                                      _root93045_)
                                                     _pkg-path93037_)
                                               _pkg-path93037_)))
                                      (if (not (null? _pkg-path93047_))
                                          (string-join _pkg-path93047_ '"/")
                                          '#f)))
                                   (_ns93056_
                                    (let ((_ns93054_
                                           (let ((_$e93051_ _ns93030_))
                                             (if _$e93051_
                                                 _$e93051_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist93041_)))))
                                      (if _ns93054_
                                          (_string-e93032_ _ns93054_)
                                          '#f)))
                                   (_pre93061_
                                    (let ((_$e93058_ _pre93029_))
                                      (if _$e93058_
                                          _$e93058_
                                          (pgetq__0 'prelude: _plist93041_)))))
                              (values _pre93061_ _ns93056_ _pkg93049_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist93041_))))
                  (let ((_dir*93064_
                         (path-strip-trailing-directory-separator _dir93036_)))
                    (if (or (string-empty? _dir*93064_)
                            (equal? _dir93036_ _dir*93064_))
                        (values _pre93029_ _ns93030_ '#f)
                        (let ((_xpath93069_ (path-strip-directory _dir*93064_))
                              (_xdir93070_ (path-directory _dir*93064_)))
                          (_lp93034_
                           _xdir93070_
                           (cons _xpath93069_ _pkg-path93037_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path93026_)
        (path-strip-extension (path-strip-directory _path93026_))))
    (define gx#core-module-path->id
      (lambda (_path93024_)
        (string->symbol (gx#core-module-path->namespace _path93024_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path93003_ _rel93004_)
        (let* ((_path93006_ (gx#stx-e _stx-path93003_))
               (_path93008_
                (if (string-empty? (path-extension _path93006_))
                    (string-append _path93006_ '".ss")
                    _path93006_)))
          (gx#core-resolve-path__%
           _path93008_
           (let ((_$e93011_ (gx#stx-source _stx-path93003_)))
             (if _$e93011_ _$e93011_ _rel93004_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path93017_)
        (let ((_rel93019_ '#f))
          (gx#core-resolve-module-path__% _stx-path93017_ _rel93019_))))
    (define gx#core-resolve-module-path
      (lambda _g94585_
        (let ((_g94584_ (##length _g94585_)))
          (cond ((##fx= _g94584_ 1)
                 (apply (lambda (_stx-path93017_)
                          (gx#core-resolve-module-path__0 _stx-path93017_))
                        _g94585_))
                ((##fx= _g94584_ 2)
                 (apply (lambda (_stx-path93021_ _rel93022_)
                          (gx#core-resolve-module-path__%
                           _stx-path93021_
                           _rel93022_))
                        _g94585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94585_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92889_)
        (let* ((_spath92891_ (symbol->string (gx#stx-e _libpath92889_)))
               (_spath92893_
                (substring _spath92891_ '1 (string-length _spath92891_)))
               (_ext92895_ (path-extension _spath92893_))
               (_ssi92897_
                (if (string-empty? _ext92895_)
                    (string-append _spath92893_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92893_)
                     '".ssi")))
               (_srcs92901_
                (if (string-empty? _ext92895_)
                    (map (lambda (_ext92899_)
                           (string-append _spath92893_ _ext92899_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92893_ '()))))
          (let _lp92904_ ((_rest92906_ (load-path)))
            (let* ((_rest9290792916_ _rest92906_)
                   (_E9291092920_
                    (lambda ()
                      (error '"No clause matching" _rest9290792916_))))
              (let ((_K9291292990_
                     (lambda (_rest92931_ _dir92932_)
                       (letrec ((_resolve92934_
                                 (lambda (_ssi92946_ _srcs92947_)
                                   (let ((_compiled-path92949_
                                          (path-expand _ssi92946_ _dir92932_)))
                                     (if (file-exists? _compiled-path92949_)
                                         (path-normalize _compiled-path92949_)
                                         (let _lpr92951_ ((_rest-src92953_
                                                           _srcs92947_))
                                           (let* ((_rest-src9295492962_
                                                   _rest-src92953_)
                                                  (_else9295692970_
                                                   (lambda ()
                                                     (_lp92904_ _rest92931_)))
                                                  (_K9295892978_
                                                   (lambda (_rest-src92973_
                                                            _src92974_)
                                                     (let ((_src-path92976_
                                                            (path-expand
                                                             _src92974_
                                                             _dir92932_)))
                                                       (if (file-exists?
                                                            _src-path92976_)
                                                           (path-normalize
                                                            _src-path92976_)
                                                           (_lpr92951_
                                                            _rest-src92973_))))))
                                             (if (##pair? _rest-src9295492962_)
                                                 (let ((_hd9295992981_
                                                        (##car _rest-src9295492962_))
                                                       (_tl9296092983_
                                                        (##cdr _rest-src9295492962_)))
                                                   (let* ((_src92986_
                                                           _hd9295992981_)
                                                          (_rest-src92988_
                                                           _tl9296092983_))
                                                     (_K9295892978_
                                                      _rest-src92988_
                                                      _src92986_)))
                                                 (_else9295692970_)))))))))
                         (let ((_$e92936_
                                (gx#core-library-package-path-prefix
                                 _dir92932_)))
                           (if _$e92936_
                               ((lambda (_prefix92939_)
                                  (if (string-prefix?
                                       _prefix92939_
                                       _spath92893_)
                                      (let ((_ssi92943_
                                             (substring
                                              _ssi92897_
                                              (string-length _prefix92939_)
                                              (string-length _ssi92897_)))
                                            (_srcs92944_
                                             (map (lambda (_src92941_)
                                                    (substring
                                                     _src92941_
                                                     (string-length
                                                      _prefix92939_)
                                                     (string-length
                                                      _src92941_)))
                                                  _srcs92901_)))
                                        (_resolve92934_
                                         _ssi92943_
                                         _srcs92944_))
                                      (_lp92904_ _rest92931_)))
                                _$e92936_)
                               (_resolve92934_ _ssi92897_ _srcs92901_))))))
                    (_K9291192925_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92889_))))
                (let ((_try-match9290992928_
                       (lambda ()
                         (if (##null? _rest9290792916_)
                             (_K9291192925_)
                             (_E9291092920_)))))
                  (if (##pair? _rest9290792916_)
                      (let ((_tl9291492995_ (##cdr _rest9290792916_))
                            (_hd9291392993_ (##car _rest9290792916_)))
                        (let ((_dir92998_ _hd9291392993_)
                              (_rest93000_ _tl9291492995_))
                          (_K9291292990_ _rest93000_ _dir92998_)))
                      (_try-match9290992928_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92862_)
        (letrec ((_resolve92864_
                  (lambda (_path92881_ _base92882_)
                    (let ((_$e92884_ (string-rindex__0 _base92882_ '#\/)))
                      (if _$e92884_
                          ((lambda (_idx92887_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92882_ '0 _idx92887_)
                                '"/"
                                _path92881_))))
                           _$e92884_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92881_))))))))
          (let ((_spath92866_ (symbol->string (gx#stx-e _modpath92862_)))
                (_mod92867_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92867_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92862_))
            (let ((_mpath92869_
                   (symbol->string
                    (##structure-ref
                     _mod92867_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92871_ ((_spath92873_ _spath92866_)
                              (_mpath92874_ _mpath92869_))
                (if (string-prefix? '"../" _spath92873_)
                    (let ((_$e92876_ (string-rindex__0 _mpath92874_ '#\/)))
                      (if _$e92876_
                          ((lambda (_idx92879_)
                             (_lp92871_
                              (substring
                               _spath92873_
                               '3
                               (string-length _spath92873_))
                              (substring _mpath92874_ '0 _idx92879_)))
                           _$e92876_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92862_)))
                    (if (string-prefix? '"./" _spath92873_)
                        (_lp92871_
                         (substring
                          _spath92873_
                          '2
                          (string-length _spath92873_))
                         _mpath92874_)
                        (_resolve92864_ _spath92873_ _mpath92874_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92855_)
        (let ((_$e92857_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92855_))))
          (if _$e92857_
              ((lambda (_pkg92860_)
                 (string-append (symbol->string _pkg92860_) '"/"))
               _$e92857_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92829_ _exists?92830_)
        (let ((_$e92832_ (hash-get gx#__module-pkg-cache _dir92829_)))
          (if _$e92832_
              (values _$e92832_)
              (let* ((_gerbil.pkg92835_ (path-expand '"gerbil.pkg" _dir92829_))
                     (_plist92842_
                      (if (or _exists?92830_ (file-exists? _gerbil.pkg92835_))
                          (let ((_e92840_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92835_
                                  read)))
                            (if (eof-object? _e92840_)
                                '()
                                (if (list? _e92840_)
                                    _e92840_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92835_
                                     _e92840_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92829_ _plist92842_)
                _plist92842_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92848_)
        (let ((_exists?92850_ '#f))
          (gx#core-library-package-plist__% _dir92848_ _exists?92850_))))
    (define gx#core-library-package-plist
      (lambda _g94587_
        (let ((_g94586_ (##length _g94587_)))
          (cond ((##fx= _g94586_ 1)
                 (apply (lambda (_dir92848_)
                          (gx#core-library-package-plist__0 _dir92848_))
                        _g94587_))
                ((##fx= _g94586_ 2)
                 (apply (lambda (_dir92852_ _exists?92853_)
                          (gx#core-library-package-plist__%
                           _dir92852_
                           _exists?92853_))
                        _g94587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94587_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92826_) (gx#core-special-module-path? _stx92826_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92824_) (gx#core-special-module-path? _stx92824_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92819_ _char92820_)
        (if (gx#identifier? _stx92819_)
            (if (interned-symbol? (gx#stx-e _stx92819_))
                (let ((_str92822_ (symbol->string (gx#stx-e _stx92819_))))
                  (if (fx> (string-length _str92822_) '1)
                      (eq? (string-ref _str92822_ '0) _char92820_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92813_)
        (gx#core-bound-identifier?__%
         _stx92813_
         (lambda (_g9281492816_)
           (gx#expander-binding?__% _g9281492816_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92807_)
        (gx#core-bound-identifier?__%
         _stx92807_
         (lambda (_g9280892810_)
           (gx#expander-binding?__% _g9280892810_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92794_)
        (letrec ((_module-prelude?92796_
                  (lambda (_e92802_)
                    (let ((_$e92804_
                           (##structure-instance-of?
                            _e92802_
                            'gx#module-context::t)))
                      (if _$e92804_
                          _$e92804_
                          (##structure-instance-of?
                           _e92802_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92794_
           (lambda (_g9279792799_)
             (gx#expander-binding?__%
              _g9279792799_
              _module-prelude?92796_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92724_ _ctx92725_ _force-weak?92726_)
        (let* ((_in9272792736_ _in92724_)
               (_E9272992740_
                (lambda () (error '"No clause matching" _in9272792736_)))
               (_K9273092753_
                (lambda (_weak?92743_ _phi92744_ _key92745_ _source92746_)
                  (gx#core-bind!__%
                   _key92745_
                   (let ((_e92748_
                          (gx#core-resolve-module-export _source92746_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92748_ '1 gx#binding::t '#f)
                      _key92745_
                      _phi92744_
                      _e92748_
                      (##unchecked-structure-ref
                       _source92746_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92750_ _force-weak?92726_))
                        (if _$e92750_ _$e92750_ _weak?92743_))))
                   gx#core-context-rebind?
                   _phi92744_
                   _ctx92725_))))
          (if (##structure-direct-instance-of?
               _in9272792736_
               'gx#module-import::t)
              (let* ((_e9273192756_
                      (##unchecked-structure-ref
                       _in9272792736_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92759_ _e9273192756_)
                     (_e9273292761_
                      (##unchecked-structure-ref
                       _in9272792736_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92764_ _e9273292761_)
                     (_e9273392766_
                      (##unchecked-structure-ref
                       _in9272792736_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92769_ _e9273392766_)
                     (_e9273492771_
                      (##unchecked-structure-ref
                       _in9272792736_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92774_ _e9273492771_))
                (_K9273092753_
                 _weak?92774_
                 _phi92769_
                 _key92764_
                 _source92759_))
              (_E9272992740_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92779_)
        (let* ((_ctx92781_ (gx#current-expander-context))
               (_force-weak?92783_ '#f))
          (gx#core-bind-import!__% _in92779_ _ctx92781_ _force-weak?92783_))))
    (define gx#core-bind-import!__1
      (lambda (_in92785_ _ctx92786_)
        (let ((_force-weak?92788_ '#f))
          (gx#core-bind-import!__% _in92785_ _ctx92786_ _force-weak?92788_))))
    (define gx#core-bind-import!
      (lambda _g94589_
        (let ((_g94588_ (##length _g94589_)))
          (cond ((##fx= _g94588_ 1)
                 (apply (lambda (_in92779_)
                          (gx#core-bind-import!__0 _in92779_))
                        _g94589_))
                ((##fx= _g94588_ 2)
                 (apply (lambda (_in92785_ _ctx92786_)
                          (gx#core-bind-import!__1 _in92785_ _ctx92786_))
                        _g94589_))
                ((##fx= _g94588_ 3)
                 (apply (lambda (_in92790_ _ctx92791_ _force-weak?92792_)
                          (gx#core-bind-import!__%
                           _in92790_
                           _ctx92791_
                           _force-weak?92792_))
                        _g94589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94589_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92710_ _ctx92711_)
        (gx#core-bind-import!__% _in92710_ _ctx92711_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92716_)
        (let ((_ctx92718_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92716_ _ctx92718_))))
    (define gx#core-bind-weak-import!
      (lambda _g94591_
        (let ((_g94590_ (##length _g94591_)))
          (cond ((##fx= _g94590_ 1)
                 (apply (lambda (_in92716_)
                          (gx#core-bind-weak-import!__0 _in92716_))
                        _g94591_))
                ((##fx= _g94590_ 2)
                 (apply (lambda (_in92720_ _ctx92721_)
                          (gx#core-bind-weak-import!__% _in92720_ _ctx92721_))
                        _g94591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94591_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92601_)
        (letrec ((_subst92603_
                  (lambda (_key92649_)
                    (let* ((_key9265092658_ _key92649_)
                           (_else9265292666_ (lambda () _key92649_))
                           (_K9265492697_
                            (lambda (_mark92669_ _id92670_)
                              (let* ((_mark9267192677_ _mark92669_)
                                     (_E9267392681_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9267192677_)))
                                     (_K9267492689_
                                      (lambda (_subst92684_)
                                        (let ((_$e92686_
                                               (if _subst92684_
                                                   (hash-get
                                                    _subst92684_
                                                    _id92670_)
                                                   '#f)))
                                          (if _$e92686_
                                              _$e92686_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92649_))))))
                                (if (##structure-instance-of?
                                     _mark9267192677_
                                     'gx#expander-mark::t)
                                    (let* ((_e9267592692_
                                            (##unchecked-structure-ref
                                             _mark9267192677_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92695_ _e9267592692_))
                                      (_K9267492689_ _subst92695_))
                                    (_E9267392681_))))))
                      (if (##pair? _key9265092658_)
                          (let ((_hd9265592700_ (##car _key9265092658_))
                                (_tl9265692702_ (##cdr _key9265092658_)))
                            (let* ((_id92705_ _hd9265592700_)
                                   (_mark92707_ _tl9265692702_))
                              (_K9265492697_ _mark92707_ _id92705_)))
                          (_else9265292666_))))))
          (let* ((_out9260492614_ _out92601_)
                 (_E9260692618_
                  (lambda () (error '"No clause matching" _out9260492614_)))
                 (_K9260792625_
                  (lambda (_phi92621_ _key92622_ _ctx92623_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92623_ _phi92621_)
                     (_subst92603_ _key92622_)))))
            (if (##structure-direct-instance-of?
                 _out9260492614_
                 'gx#module-export::t)
                (let* ((_e9260892628_
                        (##unchecked-structure-ref
                         _out9260492614_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92631_ _e9260892628_)
                       (_e9260992633_
                        (##unchecked-structure-ref
                         _out9260492614_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92636_ _e9260992633_)
                       (_e9261092638_
                        (##unchecked-structure-ref
                         _out9260492614_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92641_ _e9261092638_)
                       (_e9261192643_
                        (##unchecked-structure-ref
                         _out9260492614_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9261292646_
                        (##unchecked-structure-ref
                         _out9260492614_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9260792625_ _phi92641_ _key92636_ _ctx92631_))
                (_E9260692618_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92526_ _rename92527_ _dphi92528_)
        (let* ((_out9252992539_ _out92526_)
               (_E9253192543_
                (lambda () (error '"No clause matching" _out9252992539_)))
               (_K9253292555_
                (lambda (_weak?92546_
                         _name92547_
                         _phi92548_
                         _key92549_
                         _ctx92550_)
                  (##structure
                   gx#module-import::t
                   _out92526_
                   (let ((_$e92552_ _rename92527_))
                     (if _$e92552_ _$e92552_ _name92547_))
                   (fx+ _phi92548_ _dphi92528_)
                   _weak?92546_))))
          (if (##structure-direct-instance-of?
               _out9252992539_
               'gx#module-export::t)
              (let* ((_e9253392558_
                      (##unchecked-structure-ref
                       _out9252992539_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92561_ _e9253392558_)
                     (_e9253492563_
                      (##unchecked-structure-ref
                       _out9252992539_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92566_ _e9253492563_)
                     (_e9253592568_
                      (##unchecked-structure-ref
                       _out9252992539_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92571_ _e9253592568_)
                     (_e9253692573_
                      (##unchecked-structure-ref
                       _out9252992539_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92576_ _e9253692573_)
                     (_e9253792578_
                      (##unchecked-structure-ref
                       _out9252992539_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92581_ _e9253792578_))
                (_K9253292555_
                 _weak?92581_
                 _name92576_
                 _phi92571_
                 _key92566_
                 _ctx92561_))
              (_E9253192543_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92586_)
        (let* ((_rename92588_ '#f) (_dphi92590_ '0))
          (gx#core-module-export->import__%
           _out92586_
           _rename92588_
           _dphi92590_))))
    (define gx#core-module-export->import__1
      (lambda (_out92592_ _rename92593_)
        (let ((_dphi92595_ '0))
          (gx#core-module-export->import__%
           _out92592_
           _rename92593_
           _dphi92595_))))
    (define gx#core-module-export->import
      (lambda _g94593_
        (let ((_g94592_ (##length _g94593_)))
          (cond ((##fx= _g94592_ 1)
                 (apply (lambda (_out92586_)
                          (gx#core-module-export->import__0 _out92586_))
                        _g94593_))
                ((##fx= _g94592_ 2)
                 (apply (lambda (_out92592_ _rename92593_)
                          (gx#core-module-export->import__1
                           _out92592_
                           _rename92593_))
                        _g94593_))
                ((##fx= _g94592_ 3)
                 (apply (lambda (_out92597_ _rename92598_ _dphi92599_)
                          (gx#core-module-export->import__%
                           _out92597_
                           _rename92598_
                           _dphi92599_))
                        _g94593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94593_))))))
    (define gx#core-expand-module%
      (lambda (_stx92428_)
        (letrec ((_make-context92430_
                  (lambda (_id92507_)
                    (let* ((_super92509_ (gx#current-expander-context))
                           (_bind-id92511_ (gx#stx-e _id92507_))
                           (_mod-id92513_
                            (if (##structure-instance-of?
                                 _super92509_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92509_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92511_)
                                _bind-id92511_))
                           (_ns92515_ (symbol->string _mod-id92513_))
                           (_path92522_
                            (if (##structure-instance-of?
                                 _super92509_
                                 'gx#module-context::t)
                                (let ((_path92517_
                                       (##unchecked-structure-ref
                                        _super92509_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92517_)
                                          (null? _path92517_))
                                      (cons _bind-id92511_ _path92517_)
                                      (if (not _path92517_)
                                          _bind-id92511_
                                          (cons _bind-id92511_
                                                (cons _path92517_ '())))))
                                _bind-id92511_)))
                      (let ((__obj94569
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
                         __obj94569
                         _mod-id92513_
                         _super92509_
                         _ns92515_
                         _path92522_)
                        __obj94569))))
                 (_valid-module-id?92431_
                  (lambda (_id92482_)
                    (let* ((_str92484_ (symbol->string _id92482_))
                           (_len92486_ (string-length _str92484_)))
                      (if (fx>= _len92486_ '1)
                          (let _loop92489_ ((_index92491_
                                             (fx- (string-length _str92484_)
                                                  '1)))
                            (if (fx>= _index92491_ '0)
                                (let ((_c92493_
                                       (string-ref _str92484_ _index92491_)))
                                  (if (or (and (char>=? _c92493_ '#\a)
                                               (char<=? _c92493_ '#\z))
                                          (and (char>=? _c92493_ '#\A)
                                               (char<=? _c92493_ '#\Z))
                                          (and (char>=? _c92493_ '#\0)
                                               (char<=? _c92493_ '#\9))
                                          (char=? _c92493_ '#\_)
                                          (char=? _c92493_ '#\-))
                                      (_loop92489_ (fx- _index92491_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9243292442_ _stx92428_)
                 (_E9243492446_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9243292442_)))
                 (_E9243392478_
                  (lambda ()
                    (if (gx#stx-pair? _e9243292442_)
                        (let ((_e9243592450_ (gx#syntax-e _e9243292442_)))
                          (let ((_hd9243692453_ (##car _e9243592450_))
                                (_tl9243792455_ (##cdr _e9243592450_)))
                            (if (gx#stx-pair? _tl9243792455_)
                                (let ((_e9243892458_
                                       (gx#syntax-e _tl9243792455_)))
                                  (let ((_hd9243992461_ (##car _e9243892458_))
                                        (_tl9244092463_ (##cdr _e9243892458_)))
                                    (let* ((_id92466_ _hd9243992461_)
                                           (_body92468_ _tl9244092463_))
                                      (if (and (gx#identifier? _id92466_)
                                               (gx#stx-list? _body92468_))
                                          (if (_valid-module-id?92431_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92470_
                                                      (_make-context92430_
                                                       _id92466_))
                                                     (_body92472_
                                                      (gx#core-expand-module-begin
                                                       _body92468_
                                                       _ctx92470_))
                                                     (_body92474_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92472_)
                                                       (gx#stx-source
                                                        _stx92428_))))
                                                (##unchecked-structure-set!
                                                 _ctx92470_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92474_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92470_
                                                 _body92474_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92466_
                                                 _ctx92470_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92466_)
                                                  _body92474_)
                                                 (gx#stx-source _stx92428_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92428_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9243492446_)))))
                                (_E9243492446_))))
                        (_E9243492446_)))))
            (_E9243392478_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92394_ _ctx92395_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92398_
                   (gx#core-expand-head (cons '%%begin-module _body92394_)))
                  (_e9239992406_ _stx92398_)
                  (_E9240192410_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92398_)))
                  (_E9240092424_
                   (lambda ()
                     (if (gx#stx-pair? _e9239992406_)
                         (let ((_e9240292414_ (gx#syntax-e _e9239992406_)))
                           (let ((_hd9240392417_ (##car _e9240292414_))
                                 (_tl9240492419_ (##cdr _e9240292414_)))
                             (if (and (gx#identifier? _hd9240392417_)
                                      (gx#core-identifier=?
                                       _hd9240392417_
                                       '%#begin-module))
                                 (let ((_body92422_ _tl9240492419_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92398_)
                                           _body92422_
                                           (gx#core-expand-module-body
                                            _body92422_))
                                       (_E9240192410_)))
                                 (_E9240192410_))))
                         (_E9240192410_)))))
             (_E9240092424_)))
         gx#current-expander-context
         _ctx92395_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body92190_)
        (letrec ((_expand-special92192_
                  (lambda (_hd92321_ _K92322_ _rest92323_ _r92324_)
                    (let* ((_e9232592342_ _hd92321_)
                           (_E9233792346_
                            (lambda ()
                              (_K92322_
                               _rest92323_
                               (cons (gx#core-expand-top _hd92321_)
                                     _r92324_))))
                           (_E9232792358_
                            (lambda ()
                              (if (gx#stx-pair? _e9232592342_)
                                  (let ((_e9233892350_
                                         (gx#syntax-e _e9232592342_)))
                                    (let ((_hd9233992353_
                                           (##car _e9233892350_))
                                          (_tl9234092355_
                                           (##cdr _e9233892350_)))
                                      (if (and (gx#identifier? _hd9233992353_)
                                               (gx#core-identifier=?
                                                _hd9233992353_
                                                '%#export))
                                          (if '#t
                                              (_K92322_
                                               _rest92323_
                                               (cons _hd92321_ _r92324_))
                                              (_E9233792346_))
                                          (_E9233792346_))))
                                  (_E9233792346_))))
                           (_E9232692390_
                            (lambda ()
                              (if (gx#stx-pair? _e9232592342_)
                                  (let ((_e9232892362_
                                         (gx#syntax-e _e9232592342_)))
                                    (let ((_hd9232992365_
                                           (##car _e9232892362_))
                                          (_tl9233092367_
                                           (##cdr _e9232892362_)))
                                      (if (and (gx#identifier? _hd9232992365_)
                                               (gx#core-identifier=?
                                                _hd9232992365_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9233092367_)
                                              (let ((_e9233192370_
                                                     (gx#syntax-e
                                                      _tl9233092367_)))
                                                (let ((_hd9233292373_
                                                       (##car _e9233192370_))
                                                      (_tl9233392375_
                                                       (##cdr _e9233192370_)))
                                                  (let ((_hd-bind92378_
                                                         _hd9233292373_))
                                                    (if (gx#stx-pair?
                                                         _tl9233392375_)
                                                        (let ((_e9233492380_
                                                               (gx#syntax-e
                                                                _tl9233392375_)))
                                                          (let ((_hd9233592383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9233492380_))
                        (_tl9233692385_ (##cdr _e9233492380_)))
                    (let ((_expr92388_ _hd9233592383_))
                      (if (gx#stx-null? _tl9233692385_)
                          (if (gx#core-bind-values? _hd-bind92378_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92378_)
                                (_K92322_
                                 _rest92323_
                                 (cons _hd92321_ _r92324_)))
                              (_E9232792358_))
                          (_E9232792358_)))))
                (_E9232792358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9232792358_))
                                          (_E9232792358_))))
                                  (_E9232792358_)))))
                      (_E9232692390_))))
                 (_expand-body92193_
                  (lambda (_rbody92195_)
                    (let _lp92197_ ((_rest92199_ _rbody92195_)
                                    (_body92200_ '()))
                      (let* ((_rest9220192209_ _rest92199_)
                             (_else9220392217_ (lambda () _body92200_))
                             (_K9220592309_
                              (lambda (_rest92220_ _hd92221_)
                                (let* ((_e9222292243_ _hd92221_)
                                       (_E9223892247_
                                        (lambda ()
                                          (_lp92197_
                                           _rest92220_
                                           (cons (gx#core-expand-expression
                                                  _hd92221_)
                                                 _body92200_))))
                                       (_E9223492261_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9222292243_)
                                              (let ((_e9223992251_
                                                     (gx#syntax-e
                                                      _e9222292243_)))
                                                (let ((_hd9224092254_
                                                       (##car _e9223992251_))
                                                      (_tl9224192256_
                                                       (##cdr _e9223992251_)))
                                                  (let ((_form92259_
                                                         _hd9224092254_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form92259_
                                                         gx#special-form-binding?)
                                                        (_lp92197_
                                                         _rest92220_
                                                         (cons _hd92221_
                                                               _body92200_))
                                                        (_E9223892247_)))))
                                              (_E9223892247_))))
                                       (_E9222492273_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9222292243_)
                                              (let ((_e9223592265_
                                                     (gx#syntax-e
                                                      _e9222292243_)))
                                                (let ((_hd9223692268_
                                                       (##car _e9223592265_))
                                                      (_tl9223792270_
                                                       (##cdr _e9223592265_)))
                                                  (if (and (gx#identifier?
                                                            _hd9223692268_)
                                                           (gx#core-identifier=?
                                                            _hd9223692268_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp92197_
                                                           _rest92220_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92221_)
                         _body92200_))
                  (_E9223492261_))
              (_E9223492261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9223492261_))))
                                       (_E9222392305_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9222292243_)
                                              (let ((_e9222592277_
                                                     (gx#syntax-e
                                                      _e9222292243_)))
                                                (let ((_hd9222692280_
                                                       (##car _e9222592277_))
                                                      (_tl9222792282_
                                                       (##cdr _e9222592277_)))
                                                  (if (and (gx#identifier?
                                                            _hd9222692280_)
                                                           (gx#core-identifier=?
                                                            _hd9222692280_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9222792282_)
                                                          (let ((_e9222892285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9222792282_)))
                    (let ((_hd9222992288_ (##car _e9222892285_))
                          (_tl9223092290_ (##cdr _e9222892285_)))
                      (let ((_hd-bind92293_ _hd9222992288_))
                        (if (gx#stx-pair? _tl9223092290_)
                            (let ((_e9223192295_ (gx#syntax-e _tl9223092290_)))
                              (let ((_hd9223292298_ (##car _e9223192295_))
                                    (_tl9223392300_ (##cdr _e9223192295_)))
                                (let ((_expr92303_ _hd9223292298_))
                                  (if (gx#stx-null? _tl9223392300_)
                                      (if '#t
                                          (_lp92197_
                                           _rest92220_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind92293_)
                                                   (gx#core-expand-expression
                                                    _expr92303_))
                                                  (gx#stx-source _hd92221_))
                                                 _body92200_))
                                          (_E9222492273_))
                                      (_E9222492273_)))))
                            (_E9222492273_)))))
                  (_E9222492273_))
              (_E9222492273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9222492273_)))))
                                  (_E9222392305_)))))
                        (if (##pair? _rest9220192209_)
                            (let ((_hd9220692312_ (##car _rest9220192209_))
                                  (_tl9220792314_ (##cdr _rest9220192209_)))
                              (let* ((_hd92317_ _hd9220692312_)
                                     (_rest92319_ _tl9220792314_))
                                (_K9220592309_ _rest92319_ _hd92317_)))
                            (_else9220392217_)))))))
          (_expand-body92193_
           (gx#core-expand-block__%
            (cons '%#begin-module _body92190_)
            _expand-special92192_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx92033_
               _expanded?92034_
               _method92035_
               _current-phi92036_
               _expand192037_)
        (letrec ((_K92039_
                  (lambda (_rest92157_ _r92158_)
                    (let* ((_e9215992166_ _rest92157_)
                           (_E9216192170_ (lambda () _r92158_))
                           (_E9216092186_
                            (lambda ()
                              (if (gx#stx-pair? _e9215992166_)
                                  (let ((_e9216292174_
                                         (gx#syntax-e _e9215992166_)))
                                    (let ((_hd9216392177_
                                           (##car _e9216292174_))
                                          (_tl9216492179_
                                           (##cdr _e9216292174_)))
                                      (let* ((_hd92182_ _hd9216392177_)
                                             (_rest92184_ _tl9216492179_))
                                        (if '#t
                                            (_step92040_
                                             _hd92182_
                                             _rest92184_
                                             _r92158_)
                                            (_E9216192170_)))))
                                  (_E9216192170_)))))
                      (_E9216092186_))))
                 (_step92040_
                  (lambda (_hd92071_ _rest92072_ _r92073_)
                    (let* ((_e9207492092_ _hd92071_)
                           (_E9208792096_
                            (lambda ()
                              (if (_expanded?92034_ (gx#stx-e _hd92071_))
                                  (_K92039_
                                   _rest92072_
                                   (cons (gx#stx-e _hd92071_) _r92073_))
                                  (_expand192037_
                                   _hd92071_
                                   _K92039_
                                   _rest92072_
                                   _r92073_))))
                           (_E9208392112_
                            (lambda ()
                              (if (gx#stx-pair? _e9207492092_)
                                  (let ((_e9208892100_
                                         (gx#syntax-e _e9207492092_)))
                                    (let ((_hd9208992103_
                                           (##car _e9208892100_))
                                          (_tl9209092105_
                                           (##cdr _e9208892100_)))
                                      (let* ((_macro92108_ _hd9208992103_)
                                             (_body92110_ _tl9209092105_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro92108_
                                             gx#syntax-binding?)
                                            (_K92039_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro92108_)
                                                    _hd92071_
                                                    _method92035_)
                                                   _rest92072_)
                                             _r92073_)
                                            (_E9208792096_)))))
                                  (_E9208792096_))))
                           (_E9207692126_
                            (lambda ()
                              (if (gx#stx-pair? _e9207492092_)
                                  (let ((_e9208492116_
                                         (gx#syntax-e _e9207492092_)))
                                    (let ((_hd9208592119_
                                           (##car _e9208492116_))
                                          (_tl9208692121_
                                           (##cdr _e9208492116_)))
                                      (if (eq? (gx#stx-e _hd9208592119_)
                                               'begin:)
                                          (let ((_body92124_ _tl9208692121_))
                                            (if '#t
                                                (_K92039_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest92072_
                                                  _body92124_)
                                                 _r92073_)
                                                (_E9208392112_)))
                                          (_E9208392112_))))
                                  (_E9208392112_))))
                           (_E9207592153_
                            (lambda ()
                              (if (gx#stx-pair? _e9207492092_)
                                  (let ((_e9207792130_
                                         (gx#syntax-e _e9207492092_)))
                                    (let ((_hd9207892133_
                                           (##car _e9207792130_))
                                          (_tl9207992135_
                                           (##cdr _e9207792130_)))
                                      (if (eq? (gx#stx-e _hd9207892133_) 'phi:)
                                          (if (gx#stx-pair? _tl9207992135_)
                                              (let ((_e9208092138_
                                                     (gx#syntax-e
                                                      _tl9207992135_)))
                                                (let ((_hd9208192141_
                                                       (##car _e9208092138_))
                                                      (_tl9208292143_
                                                       (##cdr _e9208092138_)))
                                                  (let* ((_dphi92146_
                                                          _hd9208192141_)
                                                         (_body92148_
                                                          _tl9208292143_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi92146_)
                                                        (let ((_rbody92151_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K92039_ _body92148_ '()))
                        _current-phi92036_
                        (fx+ (gx#stx-e _dphi92146_) (_current-phi92036_)))))
                  (_K92039_ _rest92072_ (foldr1 cons _r92073_ _rbody92151_)))
                (_E9207692126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9207692126_))
                                          (_E9207692126_))))
                                  (_E9207692126_)))))
                      (_E9207592153_)))))
          (let* ((_e9204192048_ _stx92033_)
                 (_E9204392052_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9204192048_)))
                 (_E9204292067_
                  (lambda ()
                    (if (gx#stx-pair? _e9204192048_)
                        (let ((_e9204492056_ (gx#syntax-e _e9204192048_)))
                          (let ((_hd9204592059_ (##car _e9204492056_))
                                (_tl9204692061_ (##cdr _e9204492056_)))
                            (let ((_body92064_ _tl9204692061_))
                              (if '#t
                                  (if (_current-phi92036_)
                                      (_K92039_ _body92064_ '())
                                      (call-with-parameters
                                       (lambda () (_K92039_ _body92064_ '()))
                                       _current-phi92036_
                                       (gx#current-expander-phi)))
                                  (_E9204392052_)))))
                        (_E9204392052_)))))
            (_E9204292067_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91700_ _internal-expand?91701_)
        (letrec ((_expand191703_
                  (lambda (_hd92013_ _K92014_ _rest92015_ _r92016_)
                    (if (gx#core-bound-module? _hd92013_)
                        (_import191704_
                         (gx#syntax-local-e__0 _hd92013_)
                         _K92014_
                         _rest92015_
                         _r92016_)
                        (if (gx#core-library-module-path? _hd92013_)
                            (_import191704_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd92013_))
                             _K92014_
                             _rest92015_
                             _r92016_)
                            (if (gx#core-library-relative-module-path?
                                 _hd92013_)
                                (_import191704_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd92013_))
                                 _K92014_
                                 _rest92015_
                                 _r92016_)
                                (let ((_e92018_ (gx#stx-e _hd92013_)))
                                  (if (pair? _e92018_)
                                      (let ((_$e92020_
                                             (gx#stx-e (car _e92018_))))
                                        (if (eq? 'spec: _$e92020_)
                                            (_import-spec91707_
                                             _hd92013_
                                             _K92014_
                                             _rest92015_
                                             _r92016_)
                                            (if (eq? 'in: _$e92020_)
                                                (_import-submodule91705_
                                                 _hd92013_
                                                 _K92014_
                                                 _rest92015_
                                                 _r92016_)
                                                (if (eq? 'runtime: _$e92020_)
                                                    (_import-runtime91706_
                                                     _hd92013_
                                                     _K92014_
                                                     _rest92015_
                                                     _r92016_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91700_
                                                     _hd92013_)))))
                                      (if (string? _e92018_)
                                          (_import191704_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd92013_
                                             (gx#stx-source _stx91700_)))
                                           _K92014_
                                           _rest92015_
                                           _r92016_)
                                          (if (##structure-instance-of?
                                               _e92018_
                                               'gx#module-context::t)
                                              (_K92014_
                                               _rest92015_
                                               (cons _e92018_ _r92016_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91700_
                                               _hd92013_))))))))))
                 (_import191704_
                  (lambda (_ctx92002_ _K92003_ _rest92004_ _r92005_)
                    (let ((_dphi92007_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K92003_
                       _rest92004_
                       (cons (##structure
                              gx#import-set::t
                              _ctx92002_
                              _dphi92007_
                              (map (lambda (_g9200892010_)
                                     (gx#core-module-export->import__%
                                      _g9200892010_
                                      '#f
                                      _dphi92007_))
                                   (##unchecked-structure-ref
                                    _ctx92002_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r92005_)))))
                 (_import-submodule91705_
                  (lambda (_hd91969_ _K91970_ _rest91971_ _r91972_)
                    (let* ((_e9197391980_ _hd91969_)
                           (_E9197591984_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9197391980_)))
                           (_E9197491998_
                            (lambda ()
                              (if (gx#stx-pair? _e9197391980_)
                                  (let ((_e9197691988_
                                         (gx#syntax-e _e9197391980_)))
                                    (let ((_hd9197791991_
                                           (##car _e9197691988_))
                                          (_tl9197891993_
                                           (##cdr _e9197691988_)))
                                      (let ((_spath91996_ _tl9197891993_))
                                        (if '#t
                                            (_import191704_
                                             (_import-spec-source91708_
                                              _spath91996_)
                                             _K91970_
                                             _rest91971_
                                             _r91972_)
                                            (_E9197591984_)))))
                                  (_E9197591984_)))))
                      (_E9197491998_))))
                 (_import-runtime91706_
                  (lambda (_hd91936_ _K91937_ _rest91938_ _r91939_)
                    (let* ((_e9194091947_ _hd91936_)
                           (_E9194291951_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9194091947_)))
                           (_E9194191965_
                            (lambda ()
                              (if (gx#stx-pair? _e9194091947_)
                                  (let ((_e9194391955_
                                         (gx#syntax-e _e9194091947_)))
                                    (let ((_hd9194491958_
                                           (##car _e9194391955_))
                                          (_tl9194591960_
                                           (##cdr _e9194391955_)))
                                      (let ((_spath91963_ _tl9194591960_))
                                        (if '#t
                                            (_K91937_
                                             _rest91938_
                                             (cons (_import-spec-source91708_
                                                    _spath91963_)
                                                   _r91939_))
                                            (_E9194291951_)))))
                                  (_E9194291951_)))))
                      (_E9194191965_))))
                 (_import-spec91707_
                  (lambda (_hd91775_ _K91776_ _rest91777_ _r91778_)
                    (let* ((_e9177991796_ _hd91775_)
                           (_E9178891800_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9177991796_)))
                           (_E9178191910_
                            (lambda ()
                              (if (gx#stx-pair? _e9177991796_)
                                  (let ((_e9178991804_
                                         (gx#syntax-e _e9177991796_)))
                                    (let ((_hd9179091807_
                                           (##car _e9178991804_))
                                          (_tl9179191809_
                                           (##cdr _e9178991804_)))
                                      (if (gx#stx-pair? _tl9179191809_)
                                          (let ((_e9179291812_
                                                 (gx#syntax-e _tl9179191809_)))
                                            (let ((_hd9179391815_
                                                   (##car _e9179291812_))
                                                  (_tl9179491817_
                                                   (##cdr _e9179291812_)))
                                              (let* ((_path91820_
                                                      _hd9179391815_)
                                                     (_specs91822_
                                                      _tl9179491817_))
                                                (if '#t
                                                    (let ((_src-ctx91824_
                                                           (_import-spec-source91708_
                                                            _path91820_))
                                                          (_exports91825_
                                                           (make-hash-table))
                                                          (_specs91826_
                                                           (gx#syntax->list
                                                            _specs91822_)))
                                                      (for-each
                                                       (lambda (_out91828_)
                                                         (hash-put!
                                                          _exports91825_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91828_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91828_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91828_))
               (##unchecked-structure-ref
                _src-ctx91824_
                '9
                gx#module-context::t
                '#f))
              (_K91776_
               _rest91777_
               (foldl1 (lambda (_spec91830_ _r91831_)
                         (let* ((_e9183291848_ _spec91830_)
                                (_E9183491852_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9183291848_)))
                                (_E9183391906_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9183291848_)
                                       (let ((_e9183591856_
                                              (gx#syntax-e _e9183291848_)))
                                         (let ((_hd9183691859_
                                                (##car _e9183591856_))
                                               (_tl9183791861_
                                                (##cdr _e9183591856_)))
                                           (let ((_phi91864_ _hd9183691859_))
                                             (if (gx#stx-pair? _tl9183791861_)
                                                 (let ((_e9183891866_
                                                        (gx#syntax-e
                                                         _tl9183791861_)))
                                                   (let ((_hd9183991869_
                                                          (##car _e9183891866_))
                                                         (_tl9184091871_
                                                          (##cdr _e9183891866_)))
                                                     (let ((_name91874_
                                                            _hd9183991869_))
                                                       (if (gx#stx-pair?
                                                            _tl9184091871_)
                                                           (let ((_e9184191876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9184091871_)))
                     (let ((_hd9184291879_ (##car _e9184191876_))
                           (_tl9184391881_ (##cdr _e9184191876_)))
                       (let ((_src-phi91884_ _hd9184291879_))
                         (if (gx#stx-pair? _tl9184391881_)
                             (let ((_e9184491886_
                                    (gx#syntax-e _tl9184391881_)))
                               (let ((_hd9184591889_ (##car _e9184491886_))
                                     (_tl9184691891_ (##cdr _e9184491886_)))
                                 (let ((_src-name91894_ _hd9184591889_))
                                   (if (gx#stx-null? _tl9184691891_)
                                       (if (and (gx#stx-fixnum? _src-phi91884_)
                                                (gx#identifier?
                                                 _src-name91894_)
                                                (gx#stx-fixnum? _phi91864_)
                                                (gx#identifier? _name91874_))
                                           (let ((_src-phi91896_
                                                  (gx#stx-e _src-phi91884_))
                                                 (_src-name91897_
                                                  (gx#core-identifier-key
                                                   _src-name91894_))
                                                 (_phi91898_
                                                  (gx#stx-e _phi91864_))
                                                 (_name91899_
                                                  (gx#core-identifier-key
                                                   _name91874_)))
                                             (let ((_$e91901_
                                                    (hash-get
                                                     _exports91825_
                                                     (cons _src-phi91896_
                                                           _src-name91897_))))
                                               (if _$e91901_
                                                   ((lambda (_out91904_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91904_
                                                             _name91899_
                                                             (fx- _phi91898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91896_))
                    _r91831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91901_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91700_
                                                    _hd91775_))))
                                           (_E9183491852_))
                                       (_E9183491852_)))))
                             (_E9183491852_)))))
                   (_E9183491852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9183491852_)))))
                                       (_E9183491852_)))))
                           (_E9183391906_)))
                       _r91778_
                       _specs91826_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9178891800_)))))
                                          (_E9178891800_))))
                                  (_E9178891800_))))
                           (_E9178091932_
                            (lambda ()
                              (if (gx#stx-pair? _e9177991796_)
                                  (let ((_e9178291914_
                                         (gx#syntax-e _e9177991796_)))
                                    (let ((_hd9178391917_
                                           (##car _e9178291914_))
                                          (_tl9178491919_
                                           (##cdr _e9178291914_)))
                                      (if (gx#stx-pair? _tl9178491919_)
                                          (let ((_e9178591922_
                                                 (gx#syntax-e _tl9178491919_)))
                                            (let ((_hd9178691925_
                                                   (##car _e9178591922_))
                                                  (_tl9178791927_
                                                   (##cdr _e9178591922_)))
                                              (let ((_path91930_
                                                     _hd9178691925_))
                                                (if (gx#stx-null?
                                                     _tl9178791927_)
                                                    (if '#t
                                                        (_K91776_
                                                         _rest91777_
                                                         (cons (_import-spec-source91708_
                                                                _path91930_)
                                                               _r91778_))
                                                        (_E9178191910_))
                                                    (_E9178191910_)))))
                                          (_E9178191910_))))
                                  (_E9178191910_)))))
                      (_E9178091932_))))
                 (_import-spec-source91708_
                  (lambda (_spath91773_)
                    (gx#core-import-nested-module _spath91773_ _stx91700_)))
                 (_import!91709_
                  (lambda (_rbody91722_)
                    (letrec* ((_current-ctx91724_
                               (gx#current-expander-context))
                              (_deps91725_ (make-hash-table-eq))
                              (_bind!91726_
                               (lambda (_hd91771_)
                                 (gx#core-bind-import!__1
                                  _hd91771_
                                  _current-ctx91724_))))
                      (let _lp91728_ ((_rest91730_ _rbody91722_)
                                      (_body91731_ '()))
                        (let* ((_rest9173291740_ _rest91730_)
                               (_else9173491750_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91724_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91724_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91724_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91731_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91748_ _g94594_)
                                     (gx#eval-module _ctx91748_))
                                   _deps91725_)
                                  _body91731_))
                               (_K9173691759_
                                (lambda (_rest91753_ _hd91754_)
                                  (if (##structure-direct-instance-of?
                                       _hd91754_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91726_ _hd91754_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91754_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91754_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91725_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91754_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91754_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91726_
                                             (##unchecked-structure-ref
                                              _hd91754_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91754_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91725_
                                                 (##unchecked-structure-ref
                                                  _hd91754_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91756_
                                                 (##structure-instance-of?
                                                  _hd91754_
                                                  'gx#module-context::t)))
                                            (if _$e91756_
                                                _$e91756_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91700_
                                                 _hd91754_)))))
                                  (_lp91728_
                                   _rest91753_
                                   (cons _hd91754_ _body91731_)))))
                          (if (##pair? _rest9173291740_)
                              (let ((_hd9173791762_ (##car _rest9173291740_))
                                    (_tl9173891764_ (##cdr _rest9173291740_)))
                                (let* ((_hd91767_ _hd9173791762_)
                                       (_rest91769_ _tl9173891764_))
                                  (_K9173691759_ _rest91769_ _hd91767_)))
                              (_else9173491750_)))))))
                 (_expanded-import?91710_
                  (lambda (_e91714_)
                    (let ((_$e91716_
                           (##structure-direct-instance-of?
                            _e91714_
                            'gx#import-set::t)))
                      (if _$e91716_
                          _$e91716_
                          (let ((_$e91719_
                                 (##structure-direct-instance-of?
                                  _e91714_
                                  'gx#module-import::t)))
                            (if _$e91719_
                                _$e91719_
                                (##structure-instance-of?
                                 _e91714_
                                 'gx#module-context::t))))))))
          (let ((_rbody91712_
                 (gx#core-expand-import/export
                  _stx91700_
                  _expanded-import?91710_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191703_)))
            (if _internal-expand?91701_
                (reverse _rbody91712_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91709_ _rbody91712_))
                 (gx#stx-source _stx91700_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx92026_)
        (let ((_internal-expand?92028_ '#f))
          (gx#core-expand-import%__% _stx92026_ _internal-expand?92028_))))
    (define gx#core-expand-import%
      (lambda _g94596_
        (let ((_g94595_ (##length _g94596_)))
          (cond ((##fx= _g94595_ 1)
                 (apply (lambda (_stx92026_)
                          (gx#core-expand-import%__0 _stx92026_))
                        _g94596_))
                ((##fx= _g94595_ 2)
                 (apply (lambda (_stx92030_ _internal-expand?92031_)
                          (gx#core-expand-import%__%
                           _stx92030_
                           _internal-expand?92031_))
                        _g94596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94596_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91627_ _where91628_)
        (let* ((_e9162991636_ _spath91627_)
               (_E9163191640_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9162991636_)))
               (_E9163091695_
                (lambda ()
                  (if (gx#stx-pair? _e9162991636_)
                      (let ((_e9163291644_ (gx#syntax-e _e9162991636_)))
                        (let ((_hd9163391647_ (##car _e9163291644_))
                              (_tl9163491649_ (##cdr _e9163291644_)))
                          (let* ((_origin91652_ _hd9163391647_)
                                 (_sub91654_ _tl9163491649_))
                            (if '#t
                                (let ((_origin-ctx91656_
                                       (if (gx#stx-false? _origin91652_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91652_))))
                                  (let _lp91658_ ((_rest91660_ _sub91654_)
                                                  (_ctx91661_
                                                   _origin-ctx91656_))
                                    (let* ((_e9166291669_ _rest91660_)
                                           (_E9166491673_
                                            (lambda () _ctx91661_))
                                           (_E9166391691_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9166291669_)
                                                  (let ((_e9166591677_
                                                         (gx#syntax-e
                                                          _e9166291669_)))
                                                    (let ((_hd9166691680_
                                                           (##car _e9166591677_))
                                                          (_tl9166791682_
                                                           (##cdr _e9166591677_)))
                                                      (let* ((_id91685_
                                                              _hd9166691680_)
                                                             (_rest91687_
                                                              _tl9166791682_))
                                                        (if '#t
                                                            (let ((_bind91689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91685_ '0 _ctx91661_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91689_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91689_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91628_
                           _spath91627_
                           _id91685_))
                      (_lp91658_
                       _rest91687_
                       (##unchecked-structure-ref
                        _bind91689_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9166491673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9166491673_)))))
                                      (_E9166391691_))))
                                (_E9163191640_)))))
                      (_E9163191640_)))))
          (_E9163091695_))))
    (define gx#core-expand-import-source
      (lambda (_hd91625_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91625_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx91133_ _internal-expand?91134_)
        (letrec* ((_make-export__9452594526_
                   (lambda (_bind91573_ _phi91574_ _ctx91575_ _name91576_)
                     (let* ((_key91578_
                             (##unchecked-structure-ref
                              _bind91573_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91580_
                             (if _name91576_
                                 (gx#core-identifier-key _name91576_)
                                 _key91578_)))
                       (##structure
                        gx#module-export::t
                        _ctx91575_
                        _key91578_
                        _phi91574_
                        _export-key91580_
                        (let ((_$e91583_
                               (##structure-instance-of?
                                _bind91573_
                                'gx#extern-binding::t)))
                          (if _$e91583_
                              _$e91583_
                              (##structure-direct-instance-of?
                               _bind91573_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9452794530_
                   (lambda (_bind91589_)
                     (let* ((_phi91591_ (gx#current-export-expander-phi))
                            (_ctx91593_ (gx#current-expander-context))
                            (_name91595_ '#f))
                       (_make-export__9452594526_
                        _bind91589_
                        _phi91591_
                        _ctx91593_
                        _name91595_))))
                  (_make-export__1__9452894531_
                   (lambda (_bind91597_ _phi91598_)
                     (let* ((_ctx91600_ (gx#current-expander-context))
                            (_name91602_ '#f))
                       (_make-export__9452594526_
                        _bind91597_
                        _phi91598_
                        _ctx91600_
                        _name91602_))))
                  (_make-export__2__9452994532_
                   (lambda (_bind91604_ _phi91605_ _ctx91606_)
                     (let ((_name91608_ '#f))
                       (_make-export__9452594526_
                        _bind91604_
                        _phi91605_
                        _ctx91606_
                        _name91608_))))
                  (_make-export91136_
                   (lambda _g94598_
                     (let ((_g94597_ (##length _g94598_)))
                       (cond ((##fx= _g94597_ 1)
                              (apply (lambda (_bind91589_)
                                       (_make-export__0__9452794530_
                                        _bind91589_))
                                     _g94598_))
                             ((##fx= _g94597_ 2)
                              (apply (lambda (_bind91597_ _phi91598_)
                                       (_make-export__1__9452894531_
                                        _bind91597_
                                        _phi91598_))
                                     _g94598_))
                             ((##fx= _g94597_ 3)
                              (apply (lambda (_bind91604_
                                              _phi91605_
                                              _ctx91606_)
                                       (_make-export__2__9452994532_
                                        _bind91604_
                                        _phi91605_
                                        _ctx91606_))
                                     _g94598_))
                             ((##fx= _g94597_ 4)
                              (apply (lambda (_bind91610_
                                              _phi91611_
                                              _ctx91612_
                                              _name91613_)
                                       (_make-export__9452594526_
                                        _bind91610_
                                        _phi91611_
                                        _ctx91612_
                                        _name91613_))
                                     _g94598_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94598_))))))
                  (_expand191137_
                   (lambda (_hd91286_ _K91287_ _rest91288_ _r91289_)
                     (let* ((_e9129091322_ _hd91286_)
                            (_E9131791326_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx91133_
                                _hd91286_)))
                            (_E9130791405_
                             (lambda ()
                               (if (gx#stx-pair? _e9129091322_)
                                   (let ((_e9131891330_
                                          (gx#syntax-e _e9129091322_)))
                                     (let ((_hd9131991333_
                                            (##car _e9131891330_))
                                           (_tl9132091335_
                                            (##cdr _e9131891330_)))
                                       (if (eq? (gx#stx-e _hd9131991333_)
                                                'import:)
                                           (let ((_in91338_ _tl9132091335_))
                                             (if (gx#stx-list? _in91338_)
                                                 (let _lp91340_ ((_in-rest91342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in91338_)
                         (_r91343_ _r91289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9134491351_
                                                           _in-rest91342_)
                                                          (_E9134691355_
                                                           (lambda ()
                                                             (_K91287_
                                                              _rest91288_
                                                              _r91343_)))
                                                          (_E9134591401_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9134491351_)
                         (let ((_e9134791359_ (gx#syntax-e _e9134491351_)))
                           (let ((_hd9134891362_ (##car _e9134791359_))
                                 (_tl9134991364_ (##cdr _e9134791359_)))
                             (let* ((_hd91367_ _hd9134891362_)
                                    (_in-rest91369_ _tl9134991364_))
                               (if '#t
                                   (let ((_src91399_
                                          (if (gx#core-bound-module? _hd91367_)
                                              (gx#syntax-local-e__0 _hd91367_)
                                              (if (gx#core-library-module-path?
                                                   _hd91367_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd91367_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd91367_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd91367_))
                                                      (if (gx#stx-string?
                                                           _hd91367_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd91367_
                                                            (gx#stx-source
                                                             _stx91133_)))
                                                          (let* ((_e9137091377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91367_)
                         (_E9137291381_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx91133_
                             _hd91367_)))
                         (_E9137191395_
                          (lambda ()
                            (if (gx#stx-pair? _e9137091377_)
                                (let ((_e9137391385_
                                       (gx#syntax-e _e9137091377_)))
                                  (let ((_hd9137491388_ (##car _e9137391385_))
                                        (_tl9137591390_ (##cdr _e9137391385_)))
                                    (if (eq? (gx#stx-e _hd9137491388_) 'in:)
                                        (let ((_spath91393_ _tl9137591390_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91393_
                                               _stx91133_)
                                              (_E9137291381_)))
                                        (_E9137291381_))))
                                (_E9137291381_)))))
                    (_E9137191395_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp91340_
                                      _in-rest91369_
                                      (_export-imports91138_
                                       _src91399_
                                       _r91343_)))
                                   (_E9134691355_)))))
                         (_E9134691355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9134591401_)))
                                                 (_E9131791326_)))
                                           (_E9131791326_))))
                                   (_E9131791326_))))
                            (_E9129491444_
                             (lambda ()
                               (if (gx#stx-pair? _e9129091322_)
                                   (let ((_e9130891409_
                                          (gx#syntax-e _e9129091322_)))
                                     (let ((_hd9130991412_
                                            (##car _e9130891409_))
                                           (_tl9131091414_
                                            (##cdr _e9130891409_)))
                                       (if (eq? (gx#stx-e _hd9130991412_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9131091414_)
                                               (let ((_e9131191417_
                                                      (gx#syntax-e
                                                       _tl9131091414_)))
                                                 (let ((_hd9131291420_
                                                        (##car _e9131191417_))
                                                       (_tl9131391422_
                                                        (##cdr _e9131191417_)))
                                                   (let ((_id91425_
                                                          _hd9131291420_))
                                                     (if (gx#stx-pair?
                                                          _tl9131391422_)
                                                         (let ((_e9131491427_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9131391422_)))
                   (let ((_hd9131591430_ (##car _e9131491427_))
                         (_tl9131691432_ (##cdr _e9131491427_)))
                     (let ((_name91435_ _hd9131591430_))
                       (if (gx#stx-null? _tl9131691432_)
                           (if '#t
                               (let* ((_phi91437_
                                       (gx#current-export-expander-phi))
                                      (_$e91439_
                                       (gx#core-resolve-identifier__1
                                        _id91425_
                                        _phi91437_)))
                                 (if _$e91439_
                                     ((lambda (_bind91442_)
                                        (_K91287_
                                         _rest91288_
                                         (cons (_make-export__9452594526_
                                                _bind91442_
                                                _phi91437_
                                                (gx#current-expander-context)
                                                _name91435_)
                                               _r91289_)))
                                      _$e91439_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx91133_
                                      _hd91286_
                                      _id91425_)))
                               (_E9130791405_))
                           (_E9130791405_)))))
                 (_E9130791405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9130791405_))
                                           (_E9130791405_))))
                                   (_E9130791405_))))
                            (_E9129391493_
                             (lambda ()
                               (if (gx#stx-pair? _e9129091322_)
                                   (let ((_e9129591448_
                                          (gx#syntax-e _e9129091322_)))
                                     (let ((_hd9129691451_
                                            (##car _e9129591448_))
                                           (_tl9129791453_
                                            (##cdr _e9129591448_)))
                                       (if (eq? (gx#stx-e _hd9129691451_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9129791453_)
                                               (let ((_e9129891456_
                                                      (gx#syntax-e
                                                       _tl9129791453_)))
                                                 (let ((_hd9129991459_
                                                        (##car _e9129891456_))
                                                       (_tl9130091461_
                                                        (##cdr _e9129891456_)))
                                                   (let ((_phi91464_
                                                          _hd9129991459_))
                                                     (if (gx#stx-pair?
                                                          _tl9130091461_)
                                                         (let ((_e9130191466_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9130091461_)))
                   (let ((_hd9130291469_ (##car _e9130191466_))
                         (_tl9130391471_ (##cdr _e9130191466_)))
                     (let ((_id91474_ _hd9130291469_))
                       (if (gx#stx-pair? _tl9130391471_)
                           (let ((_e9130491476_ (gx#syntax-e _tl9130391471_)))
                             (let ((_hd9130591479_ (##car _e9130491476_))
                                   (_tl9130691481_ (##cdr _e9130491476_)))
                               (let ((_name91484_ _hd9130591479_))
                                 (if (gx#stx-null? _tl9130691481_)
                                     (if (and (gx#stx-fixnum? _phi91464_)
                                              (gx#identifier? _id91474_)
                                              (gx#identifier? _name91484_))
                                         (let* ((_phi91486_
                                                 (gx#stx-e _phi91464_))
                                                (_$e91488_
                                                 (gx#core-resolve-identifier__1
                                                  _id91474_
                                                  _phi91486_)))
                                           (if _$e91488_
                                               ((lambda (_bind91491_)
                                                  (_K91287_
                                                   _rest91288_
                                                   (cons (_make-export__9452594526_
                                                          _bind91491_
                                                          _phi91486_
                                                          (gx#current-expander-context)
                                                          _name91484_)
                                                         _r91289_)))
                                                _$e91488_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx91133_
                                                _hd91286_
                                                _id91474_)))
                                         (_E9129491444_))
                                     (_E9129491444_)))))
                           (_E9129491444_)))))
                 (_E9129491444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9129491444_))
                                           (_E9129491444_))))
                                   (_E9129491444_))))
                            (_E9129291504_
                             (lambda ()
                               (let ((_id91497_ _e9129091322_))
                                 (if (gx#identifier? _id91497_)
                                     (let ((_$e91499_
                                            (gx#core-resolve-identifier__1
                                             _id91497_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91499_
                                           ((lambda (_bind91502_)
                                              (_K91287_
                                               _rest91288_
                                               (cons (_make-export__0__9452794530_
                                                      _bind91502_)
                                                     _r91289_)))
                                            _$e91499_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx91133_
                                            _hd91286_)))
                                     (_E9129391493_)))))
                            (_E9129191568_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9129091322_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91508_
                                               (gx#current-expander-context))
                                              (_current-phi91510_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91512_
                                               (gx#core-context-shift
                                                _current-ctx91508_
                                                _current-phi91510_))
                                              (_phi-bind91514_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91512_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91517_ ((_bind-rest91519_
                                                          _phi-bind91514_)
                                                         (_set91520_ '()))
                                           (let* ((_bind-rest9152191531_
                                                   _bind-rest91519_)
                                                  (_else9152391539_
                                                   (lambda ()
                                                     (_K91287_
                                                      _rest91288_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91510_
                                                             _set91520_)
                                                            _r91289_))))
                                                  (_K9152591549_
                                                   (lambda (_bind-rest91542_
                                                            _bind91543_
                                                            _key91544_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91543_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91543_))
                                                         (_lp91517_
                                                          _bind-rest91542_
                                                          _set91520_)
                                                         (_lp91517_
                                                          _bind-rest91542_
                                                          (cons (_make-export__2__9452994532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91543_
                         _current-phi91510_
                         _current-ctx91508_)
                        _set91520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9152191531_)
                                                 (let ((_hd9152691552_
                                                        (##car _bind-rest9152191531_))
                                                       (_tl9152791554_
                                                        (##cdr _bind-rest9152191531_)))
                                                   (if (##pair? _hd9152691552_)
                                                       (let ((_hd9152891557_
                                                              (##car _hd9152691552_))
                                                             (_tl9152991559_
                                                              (##cdr _hd9152691552_)))
                                                         (let* ((_key91562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9152891557_)
                        (_bind91564_ _tl9152991559_)
                        (_bind-rest91566_ _tl9152791554_))
                   (_K9152591549_ _bind-rest91566_ _bind91564_ _key91562_)))
               (_else9152391539_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9152391539_)))))
                                       (_E9129291504_))
                                   (_E9129291504_)))))
                       (_E9129191568_))))
                  (_export-imports91138_
                   (lambda (_src91162_ _r91163_)
                     (letrec* ((_current-ctx91165_
                                (gx#current-expander-context))
                               (_current-phi91166_
                                (gx#current-export-expander-phi))
                               (_import->export91167_
                                (lambda (_in91248_)
                                  (let* ((_in9124991257_ _in91248_)
                                         (_E9125191261_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9124991257_)))
                                         (_K9125291268_
                                          (lambda (_phi91264_
                                                   _key91265_
                                                   _out91266_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx91165_
                                             _key91265_
                                             _phi91264_
                                             _key91265_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9124991257_
                                         'gx#module-import::t)
                                        (let* ((_e9125391271_
                                                (##unchecked-structure-ref
                                                 _in9124991257_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out91274_ _e9125391271_)
                                               (_e9125491276_
                                                (##unchecked-structure-ref
                                                 _in9124991257_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key91279_ _e9125491276_)
                                               (_e9125591281_
                                                (##unchecked-structure-ref
                                                 _in9124991257_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi91284_ _e9125591281_))
                                          (_K9125291268_
                                           _phi91284_
                                           _key91279_
                                           _out91274_))
                                        (_E9125191261_)))))
                               (_fold-e91168_
                                (lambda (_in91170_ _r91171_)
                                  (let* ((_in9117291186_ _in91170_)
                                         (_else9117591194_
                                          (lambda () _r91171_)))
                                    (let ((_K9118191230_
                                           (lambda (_phi91226_
                                                    _key91227_
                                                    _out91228_)
                                             (if (and (fx= _phi91226_
                                                           _current-phi91166_)
                                                      (eq? _src91162_
                                                           (##unchecked-structure-ref
                                                            _out91228_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export91167_
                                                        _in91170_)
                                                       _r91171_)
                                                 _r91171_)))
                                          (_K9117791205_
                                           (lambda (_imports91198_
                                                    _phi91199_
                                                    _ctx91200_)
                                             (if (and (fx= _phi91199_
                                                           _current-phi91166_)
                                                      (eq? _src91162_
                                                           _ctx91200_))
                                                 (foldl1 (lambda (_in91202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r91203_)
                   (cons (_import->export91167_ _in91202_) _r91203_))
                 _r91171_
                 _imports91198_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r91171_))))
                                      (let ((_try-match9117491223_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9117291186_
                                                    'gx#import-set::t)
                                                   (let* ((_e9117891208_
                                                           (##unchecked-structure-ref
                                                            _in9117291186_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9117991213_
                                                           (##unchecked-structure-ref
                                                            _in9117291186_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9118091218_
                                                           (##unchecked-structure-ref
                                                            _in9117291186_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx91211_
                                                            _e9117891208_)
                                                           (_phi91216_
                                                            _e9117991213_)
                                                           (_imports91221_
                                                            _e9118091218_))
                                                       (_K9117791205_
                                                        _imports91221_
                                                        _phi91216_
                                                        _ctx91211_)))
                                                   (_else9117591194_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9117291186_
                                             'gx#module-import::t)
                                            (let* ((_e9118291233_
                                                    (##unchecked-structure-ref
                                                     _in9117291186_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9118391238_
                                                    (##unchecked-structure-ref
                                                     _in9117291186_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9118491243_
                                                    (##unchecked-structure-ref
                                                     _in9117291186_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out91236_ _e9118291233_)
                                                    (_key91241_ _e9118391238_)
                                                    (_phi91246_ _e9118491243_))
                                                (_K9118191230_
                                                 _phi91246_
                                                 _key91241_
                                                 _out91236_)))
                                            (_try-match9117491223_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src91162_
                              _current-phi91166_
                              (foldl1 _fold-e91168_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx91165_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r91163_))))
                  (_export!91139_
                   (lambda (_rbody91152_)
                     (letrec* ((_current-ctx91154_
                                (gx#current-expander-context))
                               (_fold-e91155_
                                (lambda (_out91159_ _r91160_)
                                  (if (##structure-direct-instance-of?
                                       _out91159_
                                       'gx#module-export::t)
                                      (cons _out91159_ _r91160_)
                                      (if (##structure-direct-instance-of?
                                           _out91159_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r91160_
                                                  (##unchecked-structure-ref
                                                   _out91159_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r91160_)))))
                       (let ((_body91157_ (reverse _rbody91152_)))
                         (##unchecked-structure-set!
                          _current-ctx91154_
                          (foldl1 _fold-e91155_
                                  (##unchecked-structure-ref
                                   _current-ctx91154_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body91157_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body91157_))))
                  (_expanded-export?91140_
                   (lambda (_e91147_)
                     (let ((_$e91149_
                            (##structure-direct-instance-of?
                             _e91147_
                             'gx#module-export::t)))
                       (if _$e91149_
                           _$e91149_
                           (##structure-direct-instance-of?
                            _e91147_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?91134_)
              (let ((_rbody91145_
                     (gx#core-expand-import/export
                      _stx91133_
                      _expanded-export?91140_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand191137_)))
                (if _internal-expand?91134_
                    (reverse _rbody91145_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!91139_ _rbody91145_))
                     (gx#stx-source _stx91133_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx91133_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx91133_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91618_)
        (let ((_internal-expand?91620_ '#f))
          (gx#core-expand-export%__% _stx91618_ _internal-expand?91620_))))
    (define gx#core-expand-export%
      (lambda _g94600_
        (let ((_g94599_ (##length _g94600_)))
          (cond ((##fx= _g94599_ 1)
                 (apply (lambda (_stx91618_)
                          (gx#core-expand-export%__0 _stx91618_))
                        _g94600_))
                ((##fx= _g94599_ 2)
                 (apply (lambda (_stx91622_ _internal-expand?91623_)
                          (gx#core-expand-export%__%
                           _stx91622_
                           _internal-expand?91623_))
                        _g94600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94600_))))))
    (define gx#core-expand-export-source
      (lambda (_hd91130_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd91130_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx91100_)
        (let* ((_e9110191108_ _stx91100_)
               (_E9110391112_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9110191108_)))
               (_E9110291126_
                (lambda ()
                  (if (gx#stx-pair? _e9110191108_)
                      (let ((_e9110491116_ (gx#syntax-e _e9110191108_)))
                        (let ((_hd9110591119_ (##car _e9110491116_))
                              (_tl9110691121_ (##cdr _e9110491116_)))
                          (let ((_body91124_ _tl9110691121_))
                            (if (gx#identifier-list? _body91124_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body91124_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body91124_))
                                   (gx#stx-source _stx91100_)))
                                (_E9110391112_)))))
                      (_E9110391112_)))))
          (_E9110291126_))))
    (define gx#core-bind-feature!__%
      (lambda (_id91066_ _private?91067_ _phi91068_ _ctx91069_)
        (gx#core-bind-syntax!__%
         _id91066_
         ((if _private?91067_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id91066_))
         _private?91067_
         _phi91068_
         _ctx91069_)))
    (define gx#core-bind-feature!__0
      (lambda (_id91074_)
        (let* ((_private?91076_ '#f)
               (_phi91078_ (gx#current-expander-phi))
               (_ctx91080_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91074_
           _private?91076_
           _phi91078_
           _ctx91080_))))
    (define gx#core-bind-feature!__1
      (lambda (_id91082_ _private?91083_)
        (let* ((_phi91085_ (gx#current-expander-phi))
               (_ctx91087_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91082_
           _private?91083_
           _phi91085_
           _ctx91087_))))
    (define gx#core-bind-feature!__2
      (lambda (_id91089_ _private?91090_ _phi91091_)
        (let ((_ctx91093_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91089_
           _private?91090_
           _phi91091_
           _ctx91093_))))
    (define gx#core-bind-feature!
      (lambda _g94602_
        (let ((_g94601_ (##length _g94602_)))
          (cond ((##fx= _g94601_ 1)
                 (apply (lambda (_id91074_)
                          (gx#core-bind-feature!__0 _id91074_))
                        _g94602_))
                ((##fx= _g94601_ 2)
                 (apply (lambda (_id91082_ _private?91083_)
                          (gx#core-bind-feature!__1 _id91082_ _private?91083_))
                        _g94602_))
                ((##fx= _g94601_ 3)
                 (apply (lambda (_id91089_ _private?91090_ _phi91091_)
                          (gx#core-bind-feature!__2
                           _id91089_
                           _private?91090_
                           _phi91091_))
                        _g94602_))
                ((##fx= _g94601_ 4)
                 (apply (lambda (_id91095_
                                 _private?91096_
                                 _phi91097_
                                 _ctx91098_)
                          (gx#core-bind-feature!__%
                           _id91095_
                           _private?91096_
                           _phi91097_
                           _ctx91098_))
                        _g94602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94602_))))))))
