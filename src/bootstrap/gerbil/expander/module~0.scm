(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710781149)
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
      (lambda _$args94517_
        (apply make-instance gx#module-import::t _$args94517_)))
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
      (lambda _$args94514_
        (apply make-instance gx#module-export::t _$args94514_)))
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
      (lambda _$args94511_
        (apply make-instance gx#import-set::t _$args94511_)))
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
      (lambda _$args94508_
        (apply make-instance gx#export-set::t _$args94508_)))
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
      (lambda _$args94505_
        (apply make-instance gx#import-expander::t _$args94505_)))
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
      (lambda _$args94502_
        (apply make-instance gx#export-expander::t _$args94502_)))
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
      (lambda _$args94499_
        (apply make-instance gx#import-export-expander::t _$args94499_)))
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
      (lambda (_path94496_ _fun94497_)
        (call-with-input-file
         (cons 'path: (cons _path94496_ gx#source-file-settings))
         _fun94497_)))
    (define gx#module-context:::init!
      (lambda (_self94490_ _id94491_ _super94492_ _ns94493_ _path94494_)
        (if (##fx< '11 (##structure-length _self94490_))
            (begin
              (##unchecked-structure-set!
               _self94490_
               _id94491_
               '1
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               (make-hash-table-eq)
               '2
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               _super94492_
               '3
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               '#f
               '4
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               '#f
               '5
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               _ns94493_
               '6
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               _path94494_
               '7
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               '()
               '8
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               '()
               '9
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               '#f
               '10
               (##structure-type _self94490_)
               '#f)
              (##unchecked-structure-set!
               _self94490_
               '#f
               '11
               (##structure-type _self94490_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94490_
                   '11
                   (##vector-length _self94490_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self94334_ _ctx94335_ _root94336_)
        (let ((_super94344_
               (let ((_$e94338_ _root94336_))
                 (if _$e94338_
                     _$e94338_
                     (let ((_$e94341_ (gx#core-context-root__0)))
                       (if _$e94341_
                           _$e94341_
                           (let ((__obj94559
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94560
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94559
                                     ':init!)))
                               (if __constructor94560
                                   (__constructor94560 __obj94559)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94559)))))))
          (if _ctx94335_
              (let ((_id94347_
                     (##structure-ref
                      _ctx94335_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path94348_
                     (##structure-ref _ctx94335_ '7 gx#module-context::t '#f))
                    (_in94349_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx94335_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e94350_
                     (make-promise (lambda () (gx#eval-module _ctx94335_)))))
                (if (##fx< '8 (##structure-length _self94334_))
                    (begin
                      (##unchecked-structure-set!
                       _self94334_
                       _id94347_
                       '1
                       (##structure-type _self94334_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94334_
                       (make-hash-table-eq 'size: (length _in94349_))
                       '2
                       (##structure-type _self94334_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94334_
                       _super94344_
                       '3
                       (##structure-type _self94334_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94334_
                       '#f
                       '4
                       (##structure-type _self94334_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94334_
                       '#f
                       '5
                       (##structure-type _self94334_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94334_
                       _path94348_
                       '6
                       (##structure-type _self94334_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94334_
                       _in94349_
                       '7
                       (##structure-type _self94334_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94334_
                       _e94350_
                       '8
                       (##structure-type _self94334_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self94334_
                           '8
                           (##vector-length _self94334_)))
                (for-each
                 (lambda (_g9435194353_)
                   (gx#core-bind-weak-import!__% _g9435194353_ _self94334_))
                 _in94349_))
              (if (##fx< '8 (##structure-length _self94334_))
                  (begin
                    (##unchecked-structure-set!
                     _self94334_
                     '#f
                     '1
                     (##structure-type _self94334_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94334_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self94334_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94334_
                     _super94344_
                     '3
                     (##structure-type _self94334_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94334_
                     '#f
                     '4
                     (##structure-type _self94334_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94334_
                     '#f
                     '5
                     (##structure-type _self94334_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94334_
                     '#f
                     '6
                     (##structure-type _self94334_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94334_
                     '()
                     '7
                     (##structure-type _self94334_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94334_
                     '#f
                     '8
                     (##structure-type _self94334_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self94334_
                         '8
                         (##vector-length _self94334_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self94359_ _ctx94360_)
        (let ((_root94362_ '#f))
          (gx#prelude-context:::init!__% _self94359_ _ctx94360_ _root94362_))))
    (define gx#prelude-context:::init!
      (lambda _g94566_
        (let ((_g94565_ (##length _g94566_)))
          (cond ((##fx= _g94565_ 2)
                 (apply (lambda (_self94359_ _ctx94360_)
                          (gx#prelude-context:::init!__0
                           _self94359_
                           _ctx94360_))
                        _g94566_))
                ((##fx= _g94565_ 3)
                 (apply (lambda (_self94364_ _ctx94365_ _root94366_)
                          (gx#prelude-context:::init!__%
                           _self94364_
                           _ctx94365_
                           _root94366_))
                        _g94566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94566_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self94208_ _e94209_)
        (if (##fx< '3 (##structure-length _self94208_))
            (begin
              (##unchecked-structure-set!
               _self94208_
               _e94209_
               '1
               (##structure-type _self94208_)
               '#f)
              (##unchecked-structure-set!
               _self94208_
               (gx#current-expander-context)
               '2
               (##structure-type _self94208_)
               '#f)
              (##unchecked-structure-set!
               _self94208_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self94208_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94208_
                   '3
                   (##vector-length _self94208_)))))
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
      (lambda (_g9383493837_ _g9383593839_)
        (gx#core-apply-user-expander__%
         _g9383493837_
         _g9383593839_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9370593708_ _g9370693710_)
        (gx#core-apply-user-expander__%
         _g9370593708_
         _g9370693710_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93576_)
        (let* ((_path93578_
                (##structure-ref _ctx93576_ '7 gx#module-context::t '#f))
               (_path93580_
                (if (pair? _path93578_) (last _path93578_) _path93578_)))
          (if (string? _path93580_) _path93580_ '#f))))
    (define gx#import-module__%
      (lambda (_path93552_ _reload?93553_ _eval?93554_)
        (let ((_ctx93556_
               ((gx#current-expander-module-import)
                _path93552_
                _reload?93553_)))
          (if (and _ctx93556_ _eval?93554_)
              (gx#eval-module _ctx93556_)
              '#!void)
          _ctx93556_)))
    (define gx#import-module__0
      (lambda (_path93561_)
        (let* ((_reload?93563_ '#f) (_eval?93565_ '#f))
          (gx#import-module__% _path93561_ _reload?93563_ _eval?93565_))))
    (define gx#import-module__1
      (lambda (_path93567_ _reload?93568_)
        (let ((_eval?93570_ '#f))
          (gx#import-module__% _path93567_ _reload?93568_ _eval?93570_))))
    (define gx#import-module
      (lambda _g94568_
        (let ((_g94567_ (##length _g94568_)))
          (cond ((##fx= _g94567_ 1)
                 (apply (lambda (_path93561_)
                          (gx#import-module__0 _path93561_))
                        _g94568_))
                ((##fx= _g94567_ 2)
                 (apply (lambda (_path93567_ _reload?93568_)
                          (gx#import-module__1 _path93567_ _reload?93568_))
                        _g94568_))
                ((##fx= _g94567_ 3)
                 (apply (lambda (_path93572_ _reload?93573_ _eval?93574_)
                          (gx#import-module__%
                           _path93572_
                           _reload?93573_
                           _eval?93574_))
                        _g94568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94568_))))))
    (define gx#eval-module
      (lambda (_mod93549_) ((gx#current-expander-module-eval) _mod93549_)))
    (define gx#core-eval-module
      (lambda (_obj93534_)
        (letrec ((_force-e93536_
                  (lambda (_getf93545_ _e93546_)
                    (call-with-parameters
                     (lambda () (force (_getf93545_ _e93546_)))
                     gx#current-expander-context
                     _e93546_
                     gx#current-expander-phi
                     '0))))
          (let _recur93538_ ((_e93540_ _obj93534_))
            (if (##structure-instance-of? _e93540_ 'gx#module-context::t)
                (begin
                  (let ((_$e93542_ (gx#core-context-prelude__% _e93540_)))
                    (if _$e93542_ (_recur93538_ _$e93542_) '#!void))
                  (_force-e93536_ gx#module-context-e _e93540_))
                (if (##structure-instance-of? _e93540_ 'gx#prelude-context::t)
                    (_force-e93536_ gx#prelude-context-e _e93540_)
                    (if (gx#stx-string? _e93540_)
                        (_recur93538_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93540_)))
                        (if (gx#core-library-module-path? _e93540_)
                            (_recur93538_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93540_)))
                            (error '"Cannot eval module" _obj93534_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93517_)
        (let _lp93519_ ((_e93521_ _ctx93517_))
          (if (or (##structure-instance-of? _e93521_ 'gx#module-context::t)
                  (##structure-instance-of? _e93521_ 'gx#local-context::t))
              (_lp93519_
               (##unchecked-structure-ref _e93521_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93521_ 'gx#prelude-context::t)
                  _e93521_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93530_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93530_))))
    (define gx#core-context-prelude
      (lambda _g94570_
        (let ((_g94569_ (##length _g94570_)))
          (cond ((##fx= _g94569_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94570_))
                ((##fx= _g94569_ 1)
                 (apply (lambda (_ctx93532_)
                          (gx#core-context-prelude__% _ctx93532_))
                        _g94570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94570_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93509_)
        (let ((_$e93511_ (hash-get gx#__module-registry _ctx93509_)))
          (if _$e93511_
              _$e93511_
              (let ((_pre93514_
                     (let ((__obj94561
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
                       (gx#prelude-context:::init! __obj94561 _ctx93509_)
                       __obj94561)))
                (hash-put! gx#__module-registry _ctx93509_ _pre93514_)
                _pre93514_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93390_ _reload?93391_)
        (letrec ((_import-source93393_
                  (lambda (_path93478_)
                    (if (member _path93478_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93478_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94571_ (gx#core-read-module _path93478_)))
                         (begin
                           (let ((_g94572_
                                  (if (##values? _g94571_)
                                      (##vector-length _g94571_)
                                      1)))
                             (if (not (##fx= _g94572_ 4))
                                 (error "Context expects 4 values" _g94572_)))
                           (let ((_pre93481_ (##vector-ref _g94571_ 0))
                                 (_id93482_ (##vector-ref _g94571_ 1))
                                 (_ns93483_ (##vector-ref _g94571_ 2))
                                 (_body93484_ (##vector-ref _g94571_ 3)))
                             (let* ((_prelude93489_
                                     (if (##structure-instance-of?
                                          _pre93481_
                                          'gx#prelude-context::t)
                                         _pre93481_
                                         (if (##structure-instance-of?
                                              _pre93481_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93481_)
                                             (if (string? _pre93481_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93481_))
                                                 (if (not _pre93481_)
                                                     (let ((_$e93486_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93486_
                                                           _$e93486_
                                                           (let ((__obj94562
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
                     (gx#prelude-context:::init! __obj94562 '#f)
                     __obj94562)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93390_
                                                            _pre93481_))))))
                                    (_ctx93491_
                                     (let ((__obj94563
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
                                        __obj94563
                                        _id93482_
                                        _prelude93489_
                                        _ns93483_
                                        _path93478_)
                                       __obj94563))
                                    (_body93493_
                                     (gx#core-expand-module-begin
                                      _body93484_
                                      _ctx93491_))
                                    (_body93495_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93493_)
                                      _path93478_
                                      _ctx93491_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93491_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93495_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93491_
                                _body93495_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93478_
                                _ctx93491_)
                               (hash-put!
                                gx#__module-registry
                                _id93482_
                                _ctx93491_)
                               _ctx93491_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93478_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93394_
                  (lambda (_rpath93406_)
                    (let* ((_rpath9340793414_ _rpath93406_)
                           (_E9340993418_
                            (lambda ()
                              (error '"No clause matching" _rpath9340793414_)))
                           (_K9341093466_
                            (lambda (_refs93421_ _origin93422_)
                              (let ((_ctx93424_
                                     (if _origin93422_
                                         (gx#core-import-module__%
                                          _origin93422_
                                          _reload?93391_)
                                         (gx#current-expander-context))))
                                (let _lp93426_ ((_rest93428_ _refs93421_)
                                                (_ctx93429_ _ctx93424_))
                                  (let* ((_rest9343093438_ _rest93428_)
                                         (_else9343293446_
                                          (lambda () _ctx93429_))
                                         (_K9343493454_
                                          (lambda (_rest93449_ _id93450_)
                                            (let ((_bind93452_
                                                   (gx#resolve-identifier__%
                                                    _id93450_
                                                    '0
                                                    _ctx93429_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93452_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93452_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93426_
                                                   _rest93449_
                                                   (##unchecked-structure-ref
                                                    _bind93452_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93406_
                                                         _id93450_
                                                         _bind93452_))))))
                                    (if (##pair? _rest9343093438_)
                                        (let ((_hd9343593457_
                                               (##car _rest9343093438_))
                                              (_tl9343693459_
                                               (##cdr _rest9343093438_)))
                                          (let* ((_id93462_ _hd9343593457_)
                                                 (_rest93464_ _tl9343693459_))
                                            (_K9343493454_
                                             _rest93464_
                                             _id93462_)))
                                        (_else9343293446_))))))))
                      (if (##pair? _rpath9340793414_)
                          (let ((_hd9341193469_ (##car _rpath9340793414_))
                                (_tl9341293471_ (##cdr _rpath9340793414_)))
                            (let* ((_origin93474_ _hd9341193469_)
                                   (_refs93476_ _tl9341293471_))
                              (_K9341093466_ _refs93476_ _origin93474_)))
                          (_E9340993418_))))))
          (let ((_$e93396_
                 (if (not _reload?93391_)
                     (hash-get gx#__module-registry _rpath93390_)
                     '#f)))
            (if _$e93396_
                (values _$e93396_)
                (if (list? _rpath93390_)
                    (_import-submodule93394_ _rpath93390_)
                    (if (gx#core-library-module-path? _rpath93390_)
                        (let ((_ctx93399_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93390_)
                                _reload?93391_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93390_
                           _ctx93399_)
                          _ctx93399_)
                        (let* ((_npath93401_ (path-normalize _rpath93390_))
                               (_$e93403_
                                (if (not _reload?93391_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93401_)
                                    '#f)))
                          (if _$e93403_
                              _$e93403_
                              (_import-source93393_ _npath93401_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93502_)
        (let ((_reload?93504_ '#f))
          (gx#core-import-module__% _rpath93502_ _reload?93504_))))
    (define gx#core-import-module
      (lambda _g94574_
        (let ((_g94573_ (##length _g94574_)))
          (cond ((##fx= _g94573_ 1)
                 (apply (lambda (_rpath93502_)
                          (gx#core-import-module__0 _rpath93502_))
                        _g94574_))
                ((##fx= _g94573_ 2)
                 (apply (lambda (_rpath93506_ _reload?93507_)
                          (gx#core-import-module__%
                           _rpath93506_
                           _reload?93507_))
                        _g94574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94574_))))))
    (define gx#core-read-module
      (lambda (_path93379_)
        (with-catch
         (lambda (_exn93381_)
           (if (and (datum-parsing-exception? _exn93381_)
                    (eq? (datum-parsing-exception-filepos _exn93381_) '0))
               (gx#core-read-module/lang _path93379_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93379_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9338393385_)
                      (display-exception _exn93381_ _g9338393385_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93379_)))))
    (define gx#core-read-module/sexp
      (lambda (_path93242_)
        (let _lp93244_ ((_body93246_ (read-syntax-from-file _path93242_))
                        (_pre93247_ '#f)
                        (_ns93248_ '#f)
                        (_pkg93249_ '#f))
          (let* ((_e9325093274_ _body93246_)
                 (_E9326693296_
                  (lambda ()
                    (let ((_g94575_
                           (if _pkg93249_
                               (values _pre93247_ _ns93248_ _pkg93249_)
                               (gx#core-read-module-package
                                _path93242_
                                _pre93247_
                                _ns93248_))))
                      (begin
                        (let ((_g94576_
                               (if (##values? _g94575_)
                                   (##vector-length _g94575_)
                                   1)))
                          (if (not (##fx= _g94576_ 3))
                              (error "Context expects 3 values" _g94576_)))
                        (let ((_pre93278_ (##vector-ref _g94575_ 0))
                              (_ns93279_ (##vector-ref _g94575_ 1))
                              (_pkg93280_ (##vector-ref _g94575_ 2)))
                          (let* ((_prelude93282_
                                  (if (gx#core-bound-module-prelude?
                                       _pre93278_)
                                      (gx#syntax-local-e__0 _pre93278_)
                                      (if (gx#core-library-module-path?
                                           _pre93278_)
                                          (gx#core-resolve-library-module-path
                                           _pre93278_)
                                          (if (gx#stx-string? _pre93278_)
                                              (gx#core-resolve-module-path__%
                                               _pre93278_
                                               _path93242_)
                                              (gx#stx-e _pre93278_)))))
                                 (_path-id93284_
                                  (gx#core-module-path->namespace _path93242_))
                                 (_pkg-id93286_
                                  (if _pkg93280_
                                      (string-append
                                       _pkg93280_
                                       '"/"
                                       _path-id93284_)
                                      _path-id93284_))
                                 (_module-id93288_
                                  (string->symbol _pkg-id93286_))
                                 (_module-ns93293_
                                  (if (eq? _ns93279_ '#!void)
                                      '#f
                                      (let ((_$e93290_ _ns93279_))
                                        (if _$e93290_
                                            _$e93290_
                                            _pkg-id93286_)))))
                            (values _prelude93282_
                                    _module-id93288_
                                    _module-ns93293_
                                    _body93246_)))))))
                 (_E9325993325_
                  (lambda ()
                    (if (gx#stx-pair? _e9325093274_)
                        (let ((_e9326793300_ (gx#syntax-e _e9325093274_)))
                          (let ((_hd9326893303_ (##car _e9326793300_))
                                (_tl9326993305_ (##cdr _e9326793300_)))
                            (if (eq? (gx#stx-e _hd9326893303_) 'package:)
                                (if (gx#stx-pair? _tl9326993305_)
                                    (let ((_e9327093308_
                                           (gx#syntax-e _tl9326993305_)))
                                      (let ((_hd9327193311_
                                             (##car _e9327093308_))
                                            (_tl9327293313_
                                             (##cdr _e9327093308_)))
                                        (let* ((_pkg93316_ _hd9327193311_)
                                               (_rest93318_ _tl9327293313_))
                                          (if '#t
                                              (let ((_pkg93323_
                                                     (if (gx#identifier?
                                                          _pkg93316_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg93316_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg93316_)
                         (gx#stx-false? _pkg93316_))
                     (gx#stx-e _pkg93316_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg93316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93244_
                                                 _rest93318_
                                                 _pre93247_
                                                 _ns93248_
                                                 _pkg93323_))
                                              (_E9326693296_)))))
                                    (_E9326693296_))
                                (_E9326693296_))))
                        (_E9326693296_))))
                 (_E9325293351_
                  (lambda ()
                    (if (gx#stx-pair? _e9325093274_)
                        (let ((_e9326093329_ (gx#syntax-e _e9325093274_)))
                          (let ((_hd9326193332_ (##car _e9326093329_))
                                (_tl9326293334_ (##cdr _e9326093329_)))
                            (if (eq? (gx#stx-e _hd9326193332_) 'namespace:)
                                (if (gx#stx-pair? _tl9326293334_)
                                    (let ((_e9326393337_
                                           (gx#syntax-e _tl9326293334_)))
                                      (let ((_hd9326493340_
                                             (##car _e9326393337_))
                                            (_tl9326593342_
                                             (##cdr _e9326393337_)))
                                        (let* ((_ns93345_ _hd9326493340_)
                                               (_rest93347_ _tl9326593342_))
                                          (if '#t
                                              (let ((_ns93349_
                                                     (if (gx#identifier?
                                                          _ns93345_)
                                                         (symbol->string
                                                          (gx#stx-e _ns93345_))
                                                         (if (gx#stx-string?
                                                              _ns93345_)
                                                             (gx#stx-e
                                                              _ns93345_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns93345_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns93345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93244_
                                                 _rest93347_
                                                 _pre93247_
                                                 _ns93349_
                                                 _pkg93249_))
                                              (_E9325993325_)))))
                                    (_E9325993325_))
                                (_E9325993325_))))
                        (_E9325993325_))))
                 (_E9325193375_
                  (lambda ()
                    (if (gx#stx-pair? _e9325093274_)
                        (let ((_e9325393355_ (gx#syntax-e _e9325093274_)))
                          (let ((_hd9325493358_ (##car _e9325393355_))
                                (_tl9325593360_ (##cdr _e9325393355_)))
                            (if (eq? (gx#stx-e _hd9325493358_) 'prelude:)
                                (if (gx#stx-pair? _tl9325593360_)
                                    (let ((_e9325693363_
                                           (gx#syntax-e _tl9325593360_)))
                                      (let ((_hd9325793366_
                                             (##car _e9325693363_))
                                            (_tl9325893368_
                                             (##cdr _e9325693363_)))
                                        (let* ((_prelude93371_ _hd9325793366_)
                                               (_rest93373_ _tl9325893368_))
                                          (if '#t
                                              (_lp93244_
                                               _rest93373_
                                               _prelude93371_
                                               _ns93248_
                                               _pkg93249_)
                                              (_E9325293351_)))))
                                    (_E9325293351_))
                                (_E9325293351_))))
                        (_E9325293351_)))))
            (_E9325193375_)))))
    (define gx#core-read-module/lang
      (lambda (_path93069_)
        (letrec ((_default-read-module-body93071_
                  (lambda (_inp93234_)
                    (let _lp93236_ ((_body93238_ '()))
                      (let ((_next93240_ (read-syntax _inp93234_)))
                        (if (eof-object? _next93240_)
                            (reverse _body93238_)
                            (_lp93236_ (cons _next93240_ _body93238_)))))))
                 (_read-body93072_
                  (lambda (_inp93153_
                           _pre93154_
                           _ns93155_
                           _pkg93156_
                           _args93157_)
                    (let ((_g94577_
                           (if _pkg93156_
                               (values _pre93154_ _ns93155_ _pkg93156_)
                               (gx#core-read-module-package
                                _path93069_
                                _pre93154_
                                _ns93155_))))
                      (begin
                        (let ((_g94578_
                               (if (##values? _g94577_)
                                   (##vector-length _g94577_)
                                   1)))
                          (if (not (##fx= _g94578_ 3))
                              (error "Context expects 3 values" _g94578_)))
                        (let ((_pre93159_ (##vector-ref _g94577_ 0))
                              (_ns93160_ (##vector-ref _g94577_ 1))
                              (_pkg93161_ (##vector-ref _g94577_ 2)))
                          (let* ((_prelude93163_
                                  (gx#import-module__0 _pre93159_))
                                 (_read-module-body93217_
                                  (let ((_$e93209_
                                         (find (lambda (_e9316493166_)
                                                 (let* ((_g9316893178_
                                                         _e9316493166_)
                                                        (_else9317093186_
                                                         (lambda () '#f))
                                                        (_K9317293190_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9316893178_
                                                        'gx#module-export::t)
                                                       (let* ((_e9317393193_
                                                               (##unchecked-structure-ref
                                                                _g9316893178_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9317493196_
                                                               (##unchecked-structure-ref
                                                                _g9316893178_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9317593199_
                                                               (##unchecked-structure-ref
                                                                _g9316893178_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9317593199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9317693202_
                            (##unchecked-structure-ref
                             _g9316893178_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9320493206_)
                              (eq? _g9320493206_ 'read-module-body))
                            _e9317693202_)
                           (_K9317293190_)
                           (_else9317093186_)))
                     (_else9317093186_)))
               (_else9317093186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude93163_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e93209_
                                        ((lambda (_xport93212_)
                                           (let ((_proc93215_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport93212_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc93215_)
                                                 _proc93215_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path93069_
                                                  _pre93159_
                                                  _proc93215_))))
                                         _$e93209_)
                                        _default-read-module-body93071_)))
                                 (_path-id93219_
                                  (gx#core-module-path->namespace _path93069_))
                                 (_pkg-id93221_
                                  (if _pkg93161_
                                      (string-append
                                       _pkg93161_
                                       '"/"
                                       _path-id93219_)
                                      _path-id93219_))
                                 (_module-id93223_
                                  (string->symbol _pkg-id93221_))
                                 (_module-ns93228_
                                  (let ((_$e93225_ _ns93160_))
                                    (if _$e93225_ _$e93225_ _pkg-id93221_)))
                                 (_body93231_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body93217_ _inp93153_))
                                   gx#current-module-reader-path
                                   _path93069_
                                   gx#current-module-reader-args
                                   _args93157_)))
                            (values _prelude93163_
                                    _module-id93223_
                                    _module-ns93228_
                                    _body93231_)))))))
                 (_string-e93073_
                  (lambda (_obj93150_ _what93151_)
                    (if (string? _obj93150_)
                        _obj93150_
                        (if (symbol? _obj93150_)
                            (symbol->string _obj93150_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what93151_)
                             _path93069_
                             _obj93150_)))))
                 (_read-lang-args93074_
                  (lambda (_inp93105_ _args93106_)
                    (let* ((_args9310793115_ _args93106_)
                           (_else9310993123_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path93069_)))
                           (_K9311193138_
                            (lambda (_args93126_ _prelude93127_)
                              (let* ((_pkg93129_
                                      (pgetq__0 'package: _args93126_))
                                     (_pkg93131_
                                      (if _pkg93129_
                                          (_string-e93073_
                                           _pkg93129_
                                           '"package")
                                          '#f))
                                     (_ns93133_
                                      (pgetq__0 'namespace: _args93126_))
                                     (_ns93135_
                                      (if _ns93133_
                                          (_string-e93073_
                                           _ns93133_
                                           '"namespace")
                                          '#f)))
                                (_read-body93072_
                                 _inp93105_
                                 _prelude93127_
                                 _ns93135_
                                 _pkg93131_
                                 _args93126_)))))
                      (if (##pair? _args9310793115_)
                          (let ((_hd9311293141_ (##car _args9310793115_))
                                (_tl9311393143_ (##cdr _args9310793115_)))
                            (let* ((_prelude93146_ _hd9311293141_)
                                   (_args93148_ _tl9311393143_))
                              (_K9311193138_ _args93148_ _prelude93146_)))
                          (_else9310993123_)))))
                 (_read-lang93075_
                  (lambda (_inp93080_)
                    (let* ((_head93082_ (read-line _inp93080_))
                           (_$e93084_ (string-index__0 _head93082_ '#\space)))
                      (if _$e93084_
                          ((lambda (_ix93087_)
                             (let ((_lang93089_
                                    (substring _head93082_ '0 _ix93087_)))
                               (if (equal? _lang93089_ '"#lang")
                                   (let* ((_rest93091_
                                           (substring
                                            _head93082_
                                            (fx+ _ix93087_ '1)
                                            (string-length _head93082_)))
                                          (_args93102_
                                           (with-catch
                                            (lambda (_g9309293094_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path93069_
                                               _g9309293094_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest93091_
                                               (lambda (_g9309793099_)
                                                 (read-all
                                                  _g9309793099_
                                                  read)))))))
                                     (_read-lang-args93074_
                                      _inp93080_
                                      _args93102_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path93069_))))
                           _$e93084_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path93069_)))))
                 (_read-e93076_
                  (lambda (_inp93078_)
                    (if (eq? (peek-char _inp93078_) '#\#)
                        (_read-lang93075_ _inp93078_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path93069_)))))
          (gx#call-with-input-source-file _path93069_ _read-e93076_))))
    (define gx#core-read-module-package
      (lambda (_path93023_ _pre93024_ _ns93025_)
        (letrec ((_string-e93027_
                  (lambda (_e93067_)
                    (if (symbol? _e93067_)
                        (symbol->string _e93067_)
                        (if (string? _e93067_)
                            _e93067_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e93067_))))))
          (let _lp93029_ ((_dir93031_ (path-directory _path93023_))
                          (_pkg-path93032_ '()))
            (let ((_gerbil.pkg93034_ (path-expand '"gerbil.pkg" _dir93031_)))
              (if (file-exists? _gerbil.pkg93034_)
                  (let ((_plist93036_
                         (gx#core-library-package-plist__% _dir93031_ '#t)))
                    (if (null? _plist93036_)
                        (let ((_pkg93038_
                               (if (not (null? _pkg-path93032_))
                                   (string-join _pkg-path93032_ '"/")
                                   '#f)))
                          (values _pre93024_ _ns93025_ _pkg93038_))
                        (if (list? _plist93036_)
                            (let* ((_root93040_
                                    (pgetq__0 'package: _plist93036_))
                                   (_pkg93044_
                                    (let ((_pkg-path93042_
                                           (if _root93040_
                                               (cons (_string-e93027_
                                                      _root93040_)
                                                     _pkg-path93032_)
                                               _pkg-path93032_)))
                                      (if (not (null? _pkg-path93042_))
                                          (string-join _pkg-path93042_ '"/")
                                          '#f)))
                                   (_ns93051_
                                    (let ((_ns93049_
                                           (let ((_$e93046_ _ns93025_))
                                             (if _$e93046_
                                                 _$e93046_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist93036_)))))
                                      (if _ns93049_
                                          (_string-e93027_ _ns93049_)
                                          '#f)))
                                   (_pre93056_
                                    (let ((_$e93053_ _pre93024_))
                                      (if _$e93053_
                                          _$e93053_
                                          (pgetq__0 'prelude: _plist93036_)))))
                              (values _pre93056_ _ns93051_ _pkg93044_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist93036_))))
                  (let ((_dir*93059_
                         (path-strip-trailing-directory-separator _dir93031_)))
                    (if (or (string-empty? _dir*93059_)
                            (equal? _dir93031_ _dir*93059_))
                        (values _pre93024_ _ns93025_ '#f)
                        (let ((_xpath93064_ (path-strip-directory _dir*93059_))
                              (_xdir93065_ (path-directory _dir*93059_)))
                          (_lp93029_
                           _xdir93065_
                           (cons _xpath93064_ _pkg-path93032_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path93021_)
        (path-strip-extension (path-strip-directory _path93021_))))
    (define gx#core-module-path->id
      (lambda (_path93019_)
        (string->symbol (gx#core-module-path->namespace _path93019_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path92998_ _rel92999_)
        (let* ((_path93001_ (gx#stx-e _stx-path92998_))
               (_path93003_
                (if (string-empty? (path-extension _path93001_))
                    (string-append _path93001_ '".ss")
                    _path93001_)))
          (gx#core-resolve-path__%
           _path93003_
           (let ((_$e93006_ (gx#stx-source _stx-path92998_)))
             (if _$e93006_ _$e93006_ _rel92999_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path93012_)
        (let ((_rel93014_ '#f))
          (gx#core-resolve-module-path__% _stx-path93012_ _rel93014_))))
    (define gx#core-resolve-module-path
      (lambda _g94580_
        (let ((_g94579_ (##length _g94580_)))
          (cond ((##fx= _g94579_ 1)
                 (apply (lambda (_stx-path93012_)
                          (gx#core-resolve-module-path__0 _stx-path93012_))
                        _g94580_))
                ((##fx= _g94579_ 2)
                 (apply (lambda (_stx-path93016_ _rel93017_)
                          (gx#core-resolve-module-path__%
                           _stx-path93016_
                           _rel93017_))
                        _g94580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94580_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92884_)
        (let* ((_spath92886_ (symbol->string (gx#stx-e _libpath92884_)))
               (_spath92888_
                (substring _spath92886_ '1 (string-length _spath92886_)))
               (_ext92890_ (path-extension _spath92888_))
               (_ssi92892_
                (if (string-empty? _ext92890_)
                    (string-append _spath92888_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92888_)
                     '".ssi")))
               (_srcs92896_
                (if (string-empty? _ext92890_)
                    (map (lambda (_ext92894_)
                           (string-append _spath92888_ _ext92894_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92888_ '()))))
          (let _lp92899_ ((_rest92901_ (load-path)))
            (let* ((_rest9290292911_ _rest92901_)
                   (_E9290592915_
                    (lambda ()
                      (error '"No clause matching" _rest9290292911_))))
              (let ((_K9290792985_
                     (lambda (_rest92926_ _dir92927_)
                       (letrec ((_resolve92929_
                                 (lambda (_ssi92941_ _srcs92942_)
                                   (let ((_compiled-path92944_
                                          (path-expand _ssi92941_ _dir92927_)))
                                     (if (file-exists? _compiled-path92944_)
                                         (path-normalize _compiled-path92944_)
                                         (let _lpr92946_ ((_rest-src92948_
                                                           _srcs92942_))
                                           (let* ((_rest-src9294992957_
                                                   _rest-src92948_)
                                                  (_else9295192965_
                                                   (lambda ()
                                                     (_lp92899_ _rest92926_)))
                                                  (_K9295392973_
                                                   (lambda (_rest-src92968_
                                                            _src92969_)
                                                     (let ((_src-path92971_
                                                            (path-expand
                                                             _src92969_
                                                             _dir92927_)))
                                                       (if (file-exists?
                                                            _src-path92971_)
                                                           (path-normalize
                                                            _src-path92971_)
                                                           (_lpr92946_
                                                            _rest-src92968_))))))
                                             (if (##pair? _rest-src9294992957_)
                                                 (let ((_hd9295492976_
                                                        (##car _rest-src9294992957_))
                                                       (_tl9295592978_
                                                        (##cdr _rest-src9294992957_)))
                                                   (let* ((_src92981_
                                                           _hd9295492976_)
                                                          (_rest-src92983_
                                                           _tl9295592978_))
                                                     (_K9295392973_
                                                      _rest-src92983_
                                                      _src92981_)))
                                                 (_else9295192965_)))))))))
                         (let ((_$e92931_
                                (gx#core-library-package-path-prefix
                                 _dir92927_)))
                           (if _$e92931_
                               ((lambda (_prefix92934_)
                                  (if (string-prefix?
                                       _prefix92934_
                                       _spath92888_)
                                      (let ((_ssi92938_
                                             (substring
                                              _ssi92892_
                                              (string-length _prefix92934_)
                                              (string-length _ssi92892_)))
                                            (_srcs92939_
                                             (map (lambda (_src92936_)
                                                    (substring
                                                     _src92936_
                                                     (string-length
                                                      _prefix92934_)
                                                     (string-length
                                                      _src92936_)))
                                                  _srcs92896_)))
                                        (_resolve92929_
                                         _ssi92938_
                                         _srcs92939_))
                                      (_lp92899_ _rest92926_)))
                                _$e92931_)
                               (_resolve92929_ _ssi92892_ _srcs92896_))))))
                    (_K9290692920_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92884_))))
                (let ((_try-match9290492923_
                       (lambda ()
                         (if (##null? _rest9290292911_)
                             (_K9290692920_)
                             (_E9290592915_)))))
                  (if (##pair? _rest9290292911_)
                      (let ((_tl9290992990_ (##cdr _rest9290292911_))
                            (_hd9290892988_ (##car _rest9290292911_)))
                        (let ((_dir92993_ _hd9290892988_)
                              (_rest92995_ _tl9290992990_))
                          (_K9290792985_ _rest92995_ _dir92993_)))
                      (_try-match9290492923_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92857_)
        (letrec ((_resolve92859_
                  (lambda (_path92876_ _base92877_)
                    (let ((_$e92879_ (string-rindex__0 _base92877_ '#\/)))
                      (if _$e92879_
                          ((lambda (_idx92882_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92877_ '0 _idx92882_)
                                '"/"
                                _path92876_))))
                           _$e92879_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92876_))))))))
          (let ((_spath92861_ (symbol->string (gx#stx-e _modpath92857_)))
                (_mod92862_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92862_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92857_))
            (let ((_mpath92864_
                   (symbol->string
                    (##structure-ref
                     _mod92862_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92866_ ((_spath92868_ _spath92861_)
                              (_mpath92869_ _mpath92864_))
                (if (string-prefix? '"../" _spath92868_)
                    (let ((_$e92871_ (string-rindex__0 _mpath92869_ '#\/)))
                      (if _$e92871_
                          ((lambda (_idx92874_)
                             (_lp92866_
                              (substring
                               _spath92868_
                               '3
                               (string-length _spath92868_))
                              (substring _mpath92869_ '0 _idx92874_)))
                           _$e92871_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92857_)))
                    (if (string-prefix? '"./" _spath92868_)
                        (_lp92866_
                         (substring
                          _spath92868_
                          '2
                          (string-length _spath92868_))
                         _mpath92869_)
                        (_resolve92859_ _spath92868_ _mpath92869_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92850_)
        (let ((_$e92852_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92850_))))
          (if _$e92852_
              ((lambda (_pkg92855_)
                 (string-append (symbol->string _pkg92855_) '"/"))
               _$e92852_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92824_ _exists?92825_)
        (let ((_$e92827_ (hash-get gx#__module-pkg-cache _dir92824_)))
          (if _$e92827_
              (values _$e92827_)
              (let* ((_gerbil.pkg92830_ (path-expand '"gerbil.pkg" _dir92824_))
                     (_plist92837_
                      (if (or _exists?92825_ (file-exists? _gerbil.pkg92830_))
                          (let ((_e92835_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92830_
                                  read)))
                            (if (eof-object? _e92835_)
                                '()
                                (if (list? _e92835_)
                                    _e92835_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92830_
                                     _e92835_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92824_ _plist92837_)
                _plist92837_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92843_)
        (let ((_exists?92845_ '#f))
          (gx#core-library-package-plist__% _dir92843_ _exists?92845_))))
    (define gx#core-library-package-plist
      (lambda _g94582_
        (let ((_g94581_ (##length _g94582_)))
          (cond ((##fx= _g94581_ 1)
                 (apply (lambda (_dir92843_)
                          (gx#core-library-package-plist__0 _dir92843_))
                        _g94582_))
                ((##fx= _g94581_ 2)
                 (apply (lambda (_dir92847_ _exists?92848_)
                          (gx#core-library-package-plist__%
                           _dir92847_
                           _exists?92848_))
                        _g94582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94582_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92821_) (gx#core-special-module-path? _stx92821_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92819_) (gx#core-special-module-path? _stx92819_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92814_ _char92815_)
        (if (gx#identifier? _stx92814_)
            (if (interned-symbol? (gx#stx-e _stx92814_))
                (let ((_str92817_ (symbol->string (gx#stx-e _stx92814_))))
                  (if (fx> (string-length _str92817_) '1)
                      (eq? (string-ref _str92817_ '0) _char92815_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92808_)
        (gx#core-bound-identifier?__%
         _stx92808_
         (lambda (_g9280992811_)
           (gx#expander-binding?__% _g9280992811_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92802_)
        (gx#core-bound-identifier?__%
         _stx92802_
         (lambda (_g9280392805_)
           (gx#expander-binding?__% _g9280392805_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92789_)
        (letrec ((_module-prelude?92791_
                  (lambda (_e92797_)
                    (let ((_$e92799_
                           (##structure-instance-of?
                            _e92797_
                            'gx#module-context::t)))
                      (if _$e92799_
                          _$e92799_
                          (##structure-instance-of?
                           _e92797_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92789_
           (lambda (_g9279292794_)
             (gx#expander-binding?__%
              _g9279292794_
              _module-prelude?92791_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92719_ _ctx92720_ _force-weak?92721_)
        (let* ((_in9272292731_ _in92719_)
               (_E9272492735_
                (lambda () (error '"No clause matching" _in9272292731_)))
               (_K9272592748_
                (lambda (_weak?92738_ _phi92739_ _key92740_ _source92741_)
                  (gx#core-bind!__%
                   _key92740_
                   (let ((_e92743_
                          (gx#core-resolve-module-export _source92741_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92743_ '1 gx#binding::t '#f)
                      _key92740_
                      _phi92739_
                      _e92743_
                      (##unchecked-structure-ref
                       _source92741_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92745_ _force-weak?92721_))
                        (if _$e92745_ _$e92745_ _weak?92738_))))
                   gx#core-context-rebind?
                   _phi92739_
                   _ctx92720_))))
          (if (##structure-direct-instance-of?
               _in9272292731_
               'gx#module-import::t)
              (let* ((_e9272692751_
                      (##unchecked-structure-ref
                       _in9272292731_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92754_ _e9272692751_)
                     (_e9272792756_
                      (##unchecked-structure-ref
                       _in9272292731_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92759_ _e9272792756_)
                     (_e9272892761_
                      (##unchecked-structure-ref
                       _in9272292731_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92764_ _e9272892761_)
                     (_e9272992766_
                      (##unchecked-structure-ref
                       _in9272292731_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92769_ _e9272992766_))
                (_K9272592748_
                 _weak?92769_
                 _phi92764_
                 _key92759_
                 _source92754_))
              (_E9272492735_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92774_)
        (let* ((_ctx92776_ (gx#current-expander-context))
               (_force-weak?92778_ '#f))
          (gx#core-bind-import!__% _in92774_ _ctx92776_ _force-weak?92778_))))
    (define gx#core-bind-import!__1
      (lambda (_in92780_ _ctx92781_)
        (let ((_force-weak?92783_ '#f))
          (gx#core-bind-import!__% _in92780_ _ctx92781_ _force-weak?92783_))))
    (define gx#core-bind-import!
      (lambda _g94584_
        (let ((_g94583_ (##length _g94584_)))
          (cond ((##fx= _g94583_ 1)
                 (apply (lambda (_in92774_)
                          (gx#core-bind-import!__0 _in92774_))
                        _g94584_))
                ((##fx= _g94583_ 2)
                 (apply (lambda (_in92780_ _ctx92781_)
                          (gx#core-bind-import!__1 _in92780_ _ctx92781_))
                        _g94584_))
                ((##fx= _g94583_ 3)
                 (apply (lambda (_in92785_ _ctx92786_ _force-weak?92787_)
                          (gx#core-bind-import!__%
                           _in92785_
                           _ctx92786_
                           _force-weak?92787_))
                        _g94584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94584_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92705_ _ctx92706_)
        (gx#core-bind-import!__% _in92705_ _ctx92706_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92711_)
        (let ((_ctx92713_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92711_ _ctx92713_))))
    (define gx#core-bind-weak-import!
      (lambda _g94586_
        (let ((_g94585_ (##length _g94586_)))
          (cond ((##fx= _g94585_ 1)
                 (apply (lambda (_in92711_)
                          (gx#core-bind-weak-import!__0 _in92711_))
                        _g94586_))
                ((##fx= _g94585_ 2)
                 (apply (lambda (_in92715_ _ctx92716_)
                          (gx#core-bind-weak-import!__% _in92715_ _ctx92716_))
                        _g94586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94586_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92596_)
        (letrec ((_subst92598_
                  (lambda (_key92644_)
                    (let* ((_key9264592653_ _key92644_)
                           (_else9264792661_ (lambda () _key92644_))
                           (_K9264992692_
                            (lambda (_mark92664_ _id92665_)
                              (let* ((_mark9266692672_ _mark92664_)
                                     (_E9266892676_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9266692672_)))
                                     (_K9266992684_
                                      (lambda (_subst92679_)
                                        (let ((_$e92681_
                                               (if _subst92679_
                                                   (hash-get
                                                    _subst92679_
                                                    _id92665_)
                                                   '#f)))
                                          (if _$e92681_
                                              _$e92681_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92644_))))))
                                (if (##structure-instance-of?
                                     _mark9266692672_
                                     'gx#expander-mark::t)
                                    (let* ((_e9267092687_
                                            (##unchecked-structure-ref
                                             _mark9266692672_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92690_ _e9267092687_))
                                      (_K9266992684_ _subst92690_))
                                    (_E9266892676_))))))
                      (if (##pair? _key9264592653_)
                          (let ((_hd9265092695_ (##car _key9264592653_))
                                (_tl9265192697_ (##cdr _key9264592653_)))
                            (let* ((_id92700_ _hd9265092695_)
                                   (_mark92702_ _tl9265192697_))
                              (_K9264992692_ _mark92702_ _id92700_)))
                          (_else9264792661_))))))
          (let* ((_out9259992609_ _out92596_)
                 (_E9260192613_
                  (lambda () (error '"No clause matching" _out9259992609_)))
                 (_K9260292620_
                  (lambda (_phi92616_ _key92617_ _ctx92618_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92618_ _phi92616_)
                     (_subst92598_ _key92617_)))))
            (if (##structure-direct-instance-of?
                 _out9259992609_
                 'gx#module-export::t)
                (let* ((_e9260392623_
                        (##unchecked-structure-ref
                         _out9259992609_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92626_ _e9260392623_)
                       (_e9260492628_
                        (##unchecked-structure-ref
                         _out9259992609_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92631_ _e9260492628_)
                       (_e9260592633_
                        (##unchecked-structure-ref
                         _out9259992609_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92636_ _e9260592633_)
                       (_e9260692638_
                        (##unchecked-structure-ref
                         _out9259992609_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9260792641_
                        (##unchecked-structure-ref
                         _out9259992609_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9260292620_ _phi92636_ _key92631_ _ctx92626_))
                (_E9260192613_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92521_ _rename92522_ _dphi92523_)
        (let* ((_out9252492534_ _out92521_)
               (_E9252692538_
                (lambda () (error '"No clause matching" _out9252492534_)))
               (_K9252792550_
                (lambda (_weak?92541_
                         _name92542_
                         _phi92543_
                         _key92544_
                         _ctx92545_)
                  (##structure
                   gx#module-import::t
                   _out92521_
                   (let ((_$e92547_ _rename92522_))
                     (if _$e92547_ _$e92547_ _name92542_))
                   (fx+ _phi92543_ _dphi92523_)
                   _weak?92541_))))
          (if (##structure-direct-instance-of?
               _out9252492534_
               'gx#module-export::t)
              (let* ((_e9252892553_
                      (##unchecked-structure-ref
                       _out9252492534_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92556_ _e9252892553_)
                     (_e9252992558_
                      (##unchecked-structure-ref
                       _out9252492534_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92561_ _e9252992558_)
                     (_e9253092563_
                      (##unchecked-structure-ref
                       _out9252492534_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92566_ _e9253092563_)
                     (_e9253192568_
                      (##unchecked-structure-ref
                       _out9252492534_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92571_ _e9253192568_)
                     (_e9253292573_
                      (##unchecked-structure-ref
                       _out9252492534_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92576_ _e9253292573_))
                (_K9252792550_
                 _weak?92576_
                 _name92571_
                 _phi92566_
                 _key92561_
                 _ctx92556_))
              (_E9252692538_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92581_)
        (let* ((_rename92583_ '#f) (_dphi92585_ '0))
          (gx#core-module-export->import__%
           _out92581_
           _rename92583_
           _dphi92585_))))
    (define gx#core-module-export->import__1
      (lambda (_out92587_ _rename92588_)
        (let ((_dphi92590_ '0))
          (gx#core-module-export->import__%
           _out92587_
           _rename92588_
           _dphi92590_))))
    (define gx#core-module-export->import
      (lambda _g94588_
        (let ((_g94587_ (##length _g94588_)))
          (cond ((##fx= _g94587_ 1)
                 (apply (lambda (_out92581_)
                          (gx#core-module-export->import__0 _out92581_))
                        _g94588_))
                ((##fx= _g94587_ 2)
                 (apply (lambda (_out92587_ _rename92588_)
                          (gx#core-module-export->import__1
                           _out92587_
                           _rename92588_))
                        _g94588_))
                ((##fx= _g94587_ 3)
                 (apply (lambda (_out92592_ _rename92593_ _dphi92594_)
                          (gx#core-module-export->import__%
                           _out92592_
                           _rename92593_
                           _dphi92594_))
                        _g94588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94588_))))))
    (define gx#core-expand-module%
      (lambda (_stx92423_)
        (letrec ((_make-context92425_
                  (lambda (_id92502_)
                    (let* ((_super92504_ (gx#current-expander-context))
                           (_bind-id92506_ (gx#stx-e _id92502_))
                           (_mod-id92508_
                            (if (##structure-instance-of?
                                 _super92504_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92504_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92506_)
                                _bind-id92506_))
                           (_ns92510_ (symbol->string _mod-id92508_))
                           (_path92517_
                            (if (##structure-instance-of?
                                 _super92504_
                                 'gx#module-context::t)
                                (let ((_path92512_
                                       (##unchecked-structure-ref
                                        _super92504_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92512_)
                                          (null? _path92512_))
                                      (cons _bind-id92506_ _path92512_)
                                      (if (not _path92512_)
                                          _bind-id92506_
                                          (cons _bind-id92506_
                                                (cons _path92512_ '())))))
                                _bind-id92506_)))
                      (let ((__obj94564
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
                         __obj94564
                         _mod-id92508_
                         _super92504_
                         _ns92510_
                         _path92517_)
                        __obj94564))))
                 (_valid-module-id?92426_
                  (lambda (_id92477_)
                    (let* ((_str92479_ (symbol->string _id92477_))
                           (_len92481_ (string-length _str92479_)))
                      (if (fx>= _len92481_ '1)
                          (let _loop92484_ ((_index92486_
                                             (fx- (string-length _str92479_)
                                                  '1)))
                            (if (fx>= _index92486_ '0)
                                (let ((_c92488_
                                       (string-ref _str92479_ _index92486_)))
                                  (if (or (and (char>=? _c92488_ '#\a)
                                               (char<=? _c92488_ '#\z))
                                          (and (char>=? _c92488_ '#\A)
                                               (char<=? _c92488_ '#\Z))
                                          (and (char>=? _c92488_ '#\0)
                                               (char<=? _c92488_ '#\9))
                                          (char=? _c92488_ '#\_)
                                          (char=? _c92488_ '#\-))
                                      (_loop92484_ (fx- _index92486_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9242792437_ _stx92423_)
                 (_E9242992441_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9242792437_)))
                 (_E9242892473_
                  (lambda ()
                    (if (gx#stx-pair? _e9242792437_)
                        (let ((_e9243092445_ (gx#syntax-e _e9242792437_)))
                          (let ((_hd9243192448_ (##car _e9243092445_))
                                (_tl9243292450_ (##cdr _e9243092445_)))
                            (if (gx#stx-pair? _tl9243292450_)
                                (let ((_e9243392453_
                                       (gx#syntax-e _tl9243292450_)))
                                  (let ((_hd9243492456_ (##car _e9243392453_))
                                        (_tl9243592458_ (##cdr _e9243392453_)))
                                    (let* ((_id92461_ _hd9243492456_)
                                           (_body92463_ _tl9243592458_))
                                      (if (and (gx#identifier? _id92461_)
                                               (gx#stx-list? _body92463_))
                                          (if (_valid-module-id?92426_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92465_
                                                      (_make-context92425_
                                                       _id92461_))
                                                     (_body92467_
                                                      (gx#core-expand-module-begin
                                                       _body92463_
                                                       _ctx92465_))
                                                     (_body92469_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92467_)
                                                       (gx#stx-source
                                                        _stx92423_))))
                                                (##unchecked-structure-set!
                                                 _ctx92465_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92469_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92465_
                                                 _body92469_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92461_
                                                 _ctx92465_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92461_)
                                                  _body92469_)
                                                 (gx#stx-source _stx92423_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92423_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9242992441_)))))
                                (_E9242992441_))))
                        (_E9242992441_)))))
            (_E9242892473_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92389_ _ctx92390_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92393_
                   (gx#core-expand-head (cons '%%begin-module _body92389_)))
                  (_e9239492401_ _stx92393_)
                  (_E9239692405_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92393_)))
                  (_E9239592419_
                   (lambda ()
                     (if (gx#stx-pair? _e9239492401_)
                         (let ((_e9239792409_ (gx#syntax-e _e9239492401_)))
                           (let ((_hd9239892412_ (##car _e9239792409_))
                                 (_tl9239992414_ (##cdr _e9239792409_)))
                             (if (and (gx#identifier? _hd9239892412_)
                                      (gx#core-identifier=?
                                       _hd9239892412_
                                       '%#begin-module))
                                 (let ((_body92417_ _tl9239992414_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92393_)
                                           _body92417_
                                           (gx#core-expand-module-body
                                            _body92417_))
                                       (_E9239692405_)))
                                 (_E9239692405_))))
                         (_E9239692405_)))))
             (_E9239592419_)))
         gx#current-expander-context
         _ctx92390_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body92185_)
        (letrec ((_expand-special92187_
                  (lambda (_hd92316_ _K92317_ _rest92318_ _r92319_)
                    (let* ((_e9232092337_ _hd92316_)
                           (_E9233292341_
                            (lambda ()
                              (_K92317_
                               _rest92318_
                               (cons (gx#core-expand-top _hd92316_)
                                     _r92319_))))
                           (_E9232292353_
                            (lambda ()
                              (if (gx#stx-pair? _e9232092337_)
                                  (let ((_e9233392345_
                                         (gx#syntax-e _e9232092337_)))
                                    (let ((_hd9233492348_
                                           (##car _e9233392345_))
                                          (_tl9233592350_
                                           (##cdr _e9233392345_)))
                                      (if (and (gx#identifier? _hd9233492348_)
                                               (gx#core-identifier=?
                                                _hd9233492348_
                                                '%#export))
                                          (if '#t
                                              (_K92317_
                                               _rest92318_
                                               (cons _hd92316_ _r92319_))
                                              (_E9233292341_))
                                          (_E9233292341_))))
                                  (_E9233292341_))))
                           (_E9232192385_
                            (lambda ()
                              (if (gx#stx-pair? _e9232092337_)
                                  (let ((_e9232392357_
                                         (gx#syntax-e _e9232092337_)))
                                    (let ((_hd9232492360_
                                           (##car _e9232392357_))
                                          (_tl9232592362_
                                           (##cdr _e9232392357_)))
                                      (if (and (gx#identifier? _hd9232492360_)
                                               (gx#core-identifier=?
                                                _hd9232492360_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9232592362_)
                                              (let ((_e9232692365_
                                                     (gx#syntax-e
                                                      _tl9232592362_)))
                                                (let ((_hd9232792368_
                                                       (##car _e9232692365_))
                                                      (_tl9232892370_
                                                       (##cdr _e9232692365_)))
                                                  (let ((_hd-bind92373_
                                                         _hd9232792368_))
                                                    (if (gx#stx-pair?
                                                         _tl9232892370_)
                                                        (let ((_e9232992375_
                                                               (gx#syntax-e
                                                                _tl9232892370_)))
                                                          (let ((_hd9233092378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9232992375_))
                        (_tl9233192380_ (##cdr _e9232992375_)))
                    (let ((_expr92383_ _hd9233092378_))
                      (if (gx#stx-null? _tl9233192380_)
                          (if (gx#core-bind-values? _hd-bind92373_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92373_)
                                (_K92317_
                                 _rest92318_
                                 (cons _hd92316_ _r92319_)))
                              (_E9232292353_))
                          (_E9232292353_)))))
                (_E9232292353_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9232292353_))
                                          (_E9232292353_))))
                                  (_E9232292353_)))))
                      (_E9232192385_))))
                 (_expand-body92188_
                  (lambda (_rbody92190_)
                    (let _lp92192_ ((_rest92194_ _rbody92190_)
                                    (_body92195_ '()))
                      (let* ((_rest9219692204_ _rest92194_)
                             (_else9219892212_ (lambda () _body92195_))
                             (_K9220092304_
                              (lambda (_rest92215_ _hd92216_)
                                (let* ((_e9221792238_ _hd92216_)
                                       (_E9223392242_
                                        (lambda ()
                                          (_lp92192_
                                           _rest92215_
                                           (cons (gx#core-expand-expression
                                                  _hd92216_)
                                                 _body92195_))))
                                       (_E9222992256_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9221792238_)
                                              (let ((_e9223492246_
                                                     (gx#syntax-e
                                                      _e9221792238_)))
                                                (let ((_hd9223592249_
                                                       (##car _e9223492246_))
                                                      (_tl9223692251_
                                                       (##cdr _e9223492246_)))
                                                  (let ((_form92254_
                                                         _hd9223592249_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form92254_
                                                         gx#special-form-binding?)
                                                        (_lp92192_
                                                         _rest92215_
                                                         (cons _hd92216_
                                                               _body92195_))
                                                        (_E9223392242_)))))
                                              (_E9223392242_))))
                                       (_E9221992268_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9221792238_)
                                              (let ((_e9223092260_
                                                     (gx#syntax-e
                                                      _e9221792238_)))
                                                (let ((_hd9223192263_
                                                       (##car _e9223092260_))
                                                      (_tl9223292265_
                                                       (##cdr _e9223092260_)))
                                                  (if (and (gx#identifier?
                                                            _hd9223192263_)
                                                           (gx#core-identifier=?
                                                            _hd9223192263_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp92192_
                                                           _rest92215_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92216_)
                         _body92195_))
                  (_E9222992256_))
              (_E9222992256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9222992256_))))
                                       (_E9221892300_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9221792238_)
                                              (let ((_e9222092272_
                                                     (gx#syntax-e
                                                      _e9221792238_)))
                                                (let ((_hd9222192275_
                                                       (##car _e9222092272_))
                                                      (_tl9222292277_
                                                       (##cdr _e9222092272_)))
                                                  (if (and (gx#identifier?
                                                            _hd9222192275_)
                                                           (gx#core-identifier=?
                                                            _hd9222192275_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9222292277_)
                                                          (let ((_e9222392280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9222292277_)))
                    (let ((_hd9222492283_ (##car _e9222392280_))
                          (_tl9222592285_ (##cdr _e9222392280_)))
                      (let ((_hd-bind92288_ _hd9222492283_))
                        (if (gx#stx-pair? _tl9222592285_)
                            (let ((_e9222692290_ (gx#syntax-e _tl9222592285_)))
                              (let ((_hd9222792293_ (##car _e9222692290_))
                                    (_tl9222892295_ (##cdr _e9222692290_)))
                                (let ((_expr92298_ _hd9222792293_))
                                  (if (gx#stx-null? _tl9222892295_)
                                      (if '#t
                                          (_lp92192_
                                           _rest92215_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind92288_)
                                                   (gx#core-expand-expression
                                                    _expr92298_))
                                                  (gx#stx-source _hd92216_))
                                                 _body92195_))
                                          (_E9221992268_))
                                      (_E9221992268_)))))
                            (_E9221992268_)))))
                  (_E9221992268_))
              (_E9221992268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9221992268_)))))
                                  (_E9221892300_)))))
                        (if (##pair? _rest9219692204_)
                            (let ((_hd9220192307_ (##car _rest9219692204_))
                                  (_tl9220292309_ (##cdr _rest9219692204_)))
                              (let* ((_hd92312_ _hd9220192307_)
                                     (_rest92314_ _tl9220292309_))
                                (_K9220092304_ _rest92314_ _hd92312_)))
                            (_else9219892212_)))))))
          (_expand-body92188_
           (gx#core-expand-block__%
            (cons '%#begin-module _body92185_)
            _expand-special92187_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx92028_
               _expanded?92029_
               _method92030_
               _current-phi92031_
               _expand192032_)
        (letrec ((_K92034_
                  (lambda (_rest92152_ _r92153_)
                    (let* ((_e9215492161_ _rest92152_)
                           (_E9215692165_ (lambda () _r92153_))
                           (_E9215592181_
                            (lambda ()
                              (if (gx#stx-pair? _e9215492161_)
                                  (let ((_e9215792169_
                                         (gx#syntax-e _e9215492161_)))
                                    (let ((_hd9215892172_
                                           (##car _e9215792169_))
                                          (_tl9215992174_
                                           (##cdr _e9215792169_)))
                                      (let* ((_hd92177_ _hd9215892172_)
                                             (_rest92179_ _tl9215992174_))
                                        (if '#t
                                            (_step92035_
                                             _hd92177_
                                             _rest92179_
                                             _r92153_)
                                            (_E9215692165_)))))
                                  (_E9215692165_)))))
                      (_E9215592181_))))
                 (_step92035_
                  (lambda (_hd92066_ _rest92067_ _r92068_)
                    (let* ((_e9206992087_ _hd92066_)
                           (_E9208292091_
                            (lambda ()
                              (if (_expanded?92029_ (gx#stx-e _hd92066_))
                                  (_K92034_
                                   _rest92067_
                                   (cons (gx#stx-e _hd92066_) _r92068_))
                                  (_expand192032_
                                   _hd92066_
                                   _K92034_
                                   _rest92067_
                                   _r92068_))))
                           (_E9207892107_
                            (lambda ()
                              (if (gx#stx-pair? _e9206992087_)
                                  (let ((_e9208392095_
                                         (gx#syntax-e _e9206992087_)))
                                    (let ((_hd9208492098_
                                           (##car _e9208392095_))
                                          (_tl9208592100_
                                           (##cdr _e9208392095_)))
                                      (let* ((_macro92103_ _hd9208492098_)
                                             (_body92105_ _tl9208592100_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro92103_
                                             gx#syntax-binding?)
                                            (_K92034_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro92103_)
                                                    _hd92066_
                                                    _method92030_)
                                                   _rest92067_)
                                             _r92068_)
                                            (_E9208292091_)))))
                                  (_E9208292091_))))
                           (_E9207192121_
                            (lambda ()
                              (if (gx#stx-pair? _e9206992087_)
                                  (let ((_e9207992111_
                                         (gx#syntax-e _e9206992087_)))
                                    (let ((_hd9208092114_
                                           (##car _e9207992111_))
                                          (_tl9208192116_
                                           (##cdr _e9207992111_)))
                                      (if (eq? (gx#stx-e _hd9208092114_)
                                               'begin:)
                                          (let ((_body92119_ _tl9208192116_))
                                            (if '#t
                                                (_K92034_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest92067_
                                                  _body92119_)
                                                 _r92068_)
                                                (_E9207892107_)))
                                          (_E9207892107_))))
                                  (_E9207892107_))))
                           (_E9207092148_
                            (lambda ()
                              (if (gx#stx-pair? _e9206992087_)
                                  (let ((_e9207292125_
                                         (gx#syntax-e _e9206992087_)))
                                    (let ((_hd9207392128_
                                           (##car _e9207292125_))
                                          (_tl9207492130_
                                           (##cdr _e9207292125_)))
                                      (if (eq? (gx#stx-e _hd9207392128_) 'phi:)
                                          (if (gx#stx-pair? _tl9207492130_)
                                              (let ((_e9207592133_
                                                     (gx#syntax-e
                                                      _tl9207492130_)))
                                                (let ((_hd9207692136_
                                                       (##car _e9207592133_))
                                                      (_tl9207792138_
                                                       (##cdr _e9207592133_)))
                                                  (let* ((_dphi92141_
                                                          _hd9207692136_)
                                                         (_body92143_
                                                          _tl9207792138_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi92141_)
                                                        (let ((_rbody92146_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K92034_ _body92143_ '()))
                        _current-phi92031_
                        (fx+ (gx#stx-e _dphi92141_) (_current-phi92031_)))))
                  (_K92034_ _rest92067_ (foldr1 cons _r92068_ _rbody92146_)))
                (_E9207192121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9207192121_))
                                          (_E9207192121_))))
                                  (_E9207192121_)))))
                      (_E9207092148_)))))
          (let* ((_e9203692043_ _stx92028_)
                 (_E9203892047_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9203692043_)))
                 (_E9203792062_
                  (lambda ()
                    (if (gx#stx-pair? _e9203692043_)
                        (let ((_e9203992051_ (gx#syntax-e _e9203692043_)))
                          (let ((_hd9204092054_ (##car _e9203992051_))
                                (_tl9204192056_ (##cdr _e9203992051_)))
                            (let ((_body92059_ _tl9204192056_))
                              (if '#t
                                  (if (_current-phi92031_)
                                      (_K92034_ _body92059_ '())
                                      (call-with-parameters
                                       (lambda () (_K92034_ _body92059_ '()))
                                       _current-phi92031_
                                       (gx#current-expander-phi)))
                                  (_E9203892047_)))))
                        (_E9203892047_)))))
            (_E9203792062_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91695_ _internal-expand?91696_)
        (letrec ((_expand191698_
                  (lambda (_hd92008_ _K92009_ _rest92010_ _r92011_)
                    (if (gx#core-bound-module? _hd92008_)
                        (_import191699_
                         (gx#syntax-local-e__0 _hd92008_)
                         _K92009_
                         _rest92010_
                         _r92011_)
                        (if (gx#core-library-module-path? _hd92008_)
                            (_import191699_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd92008_))
                             _K92009_
                             _rest92010_
                             _r92011_)
                            (if (gx#core-library-relative-module-path?
                                 _hd92008_)
                                (_import191699_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd92008_))
                                 _K92009_
                                 _rest92010_
                                 _r92011_)
                                (let ((_e92013_ (gx#stx-e _hd92008_)))
                                  (if (pair? _e92013_)
                                      (let ((_$e92015_
                                             (gx#stx-e (car _e92013_))))
                                        (if (eq? 'spec: _$e92015_)
                                            (_import-spec91702_
                                             _hd92008_
                                             _K92009_
                                             _rest92010_
                                             _r92011_)
                                            (if (eq? 'in: _$e92015_)
                                                (_import-submodule91700_
                                                 _hd92008_
                                                 _K92009_
                                                 _rest92010_
                                                 _r92011_)
                                                (if (eq? 'runtime: _$e92015_)
                                                    (_import-runtime91701_
                                                     _hd92008_
                                                     _K92009_
                                                     _rest92010_
                                                     _r92011_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91695_
                                                     _hd92008_)))))
                                      (if (string? _e92013_)
                                          (_import191699_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd92008_
                                             (gx#stx-source _stx91695_)))
                                           _K92009_
                                           _rest92010_
                                           _r92011_)
                                          (if (##structure-instance-of?
                                               _e92013_
                                               'gx#module-context::t)
                                              (_K92009_
                                               _rest92010_
                                               (cons _e92013_ _r92011_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91695_
                                               _hd92008_))))))))))
                 (_import191699_
                  (lambda (_ctx91997_ _K91998_ _rest91999_ _r92000_)
                    (let ((_dphi92002_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K91998_
                       _rest91999_
                       (cons (##structure
                              gx#import-set::t
                              _ctx91997_
                              _dphi92002_
                              (map (lambda (_g9200392005_)
                                     (gx#core-module-export->import__%
                                      _g9200392005_
                                      '#f
                                      _dphi92002_))
                                   (##unchecked-structure-ref
                                    _ctx91997_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r92000_)))))
                 (_import-submodule91700_
                  (lambda (_hd91964_ _K91965_ _rest91966_ _r91967_)
                    (let* ((_e9196891975_ _hd91964_)
                           (_E9197091979_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9196891975_)))
                           (_E9196991993_
                            (lambda ()
                              (if (gx#stx-pair? _e9196891975_)
                                  (let ((_e9197191983_
                                         (gx#syntax-e _e9196891975_)))
                                    (let ((_hd9197291986_
                                           (##car _e9197191983_))
                                          (_tl9197391988_
                                           (##cdr _e9197191983_)))
                                      (let ((_spath91991_ _tl9197391988_))
                                        (if '#t
                                            (_import191699_
                                             (_import-spec-source91703_
                                              _spath91991_)
                                             _K91965_
                                             _rest91966_
                                             _r91967_)
                                            (_E9197091979_)))))
                                  (_E9197091979_)))))
                      (_E9196991993_))))
                 (_import-runtime91701_
                  (lambda (_hd91931_ _K91932_ _rest91933_ _r91934_)
                    (let* ((_e9193591942_ _hd91931_)
                           (_E9193791946_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9193591942_)))
                           (_E9193691960_
                            (lambda ()
                              (if (gx#stx-pair? _e9193591942_)
                                  (let ((_e9193891950_
                                         (gx#syntax-e _e9193591942_)))
                                    (let ((_hd9193991953_
                                           (##car _e9193891950_))
                                          (_tl9194091955_
                                           (##cdr _e9193891950_)))
                                      (let ((_spath91958_ _tl9194091955_))
                                        (if '#t
                                            (_K91932_
                                             _rest91933_
                                             (cons (_import-spec-source91703_
                                                    _spath91958_)
                                                   _r91934_))
                                            (_E9193791946_)))))
                                  (_E9193791946_)))))
                      (_E9193691960_))))
                 (_import-spec91702_
                  (lambda (_hd91770_ _K91771_ _rest91772_ _r91773_)
                    (let* ((_e9177491791_ _hd91770_)
                           (_E9178391795_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9177491791_)))
                           (_E9177691905_
                            (lambda ()
                              (if (gx#stx-pair? _e9177491791_)
                                  (let ((_e9178491799_
                                         (gx#syntax-e _e9177491791_)))
                                    (let ((_hd9178591802_
                                           (##car _e9178491799_))
                                          (_tl9178691804_
                                           (##cdr _e9178491799_)))
                                      (if (gx#stx-pair? _tl9178691804_)
                                          (let ((_e9178791807_
                                                 (gx#syntax-e _tl9178691804_)))
                                            (let ((_hd9178891810_
                                                   (##car _e9178791807_))
                                                  (_tl9178991812_
                                                   (##cdr _e9178791807_)))
                                              (let* ((_path91815_
                                                      _hd9178891810_)
                                                     (_specs91817_
                                                      _tl9178991812_))
                                                (if '#t
                                                    (let ((_src-ctx91819_
                                                           (_import-spec-source91703_
                                                            _path91815_))
                                                          (_exports91820_
                                                           (make-hash-table))
                                                          (_specs91821_
                                                           (gx#syntax->list
                                                            _specs91817_)))
                                                      (for-each
                                                       (lambda (_out91823_)
                                                         (hash-put!
                                                          _exports91820_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91823_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91823_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91823_))
               (##unchecked-structure-ref
                _src-ctx91819_
                '9
                gx#module-context::t
                '#f))
              (_K91771_
               _rest91772_
               (foldl1 (lambda (_spec91825_ _r91826_)
                         (let* ((_e9182791843_ _spec91825_)
                                (_E9182991847_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9182791843_)))
                                (_E9182891901_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9182791843_)
                                       (let ((_e9183091851_
                                              (gx#syntax-e _e9182791843_)))
                                         (let ((_hd9183191854_
                                                (##car _e9183091851_))
                                               (_tl9183291856_
                                                (##cdr _e9183091851_)))
                                           (let ((_phi91859_ _hd9183191854_))
                                             (if (gx#stx-pair? _tl9183291856_)
                                                 (let ((_e9183391861_
                                                        (gx#syntax-e
                                                         _tl9183291856_)))
                                                   (let ((_hd9183491864_
                                                          (##car _e9183391861_))
                                                         (_tl9183591866_
                                                          (##cdr _e9183391861_)))
                                                     (let ((_name91869_
                                                            _hd9183491864_))
                                                       (if (gx#stx-pair?
                                                            _tl9183591866_)
                                                           (let ((_e9183691871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9183591866_)))
                     (let ((_hd9183791874_ (##car _e9183691871_))
                           (_tl9183891876_ (##cdr _e9183691871_)))
                       (let ((_src-phi91879_ _hd9183791874_))
                         (if (gx#stx-pair? _tl9183891876_)
                             (let ((_e9183991881_
                                    (gx#syntax-e _tl9183891876_)))
                               (let ((_hd9184091884_ (##car _e9183991881_))
                                     (_tl9184191886_ (##cdr _e9183991881_)))
                                 (let ((_src-name91889_ _hd9184091884_))
                                   (if (gx#stx-null? _tl9184191886_)
                                       (if (and (gx#stx-fixnum? _src-phi91879_)
                                                (gx#identifier?
                                                 _src-name91889_)
                                                (gx#stx-fixnum? _phi91859_)
                                                (gx#identifier? _name91869_))
                                           (let ((_src-phi91891_
                                                  (gx#stx-e _src-phi91879_))
                                                 (_src-name91892_
                                                  (gx#core-identifier-key
                                                   _src-name91889_))
                                                 (_phi91893_
                                                  (gx#stx-e _phi91859_))
                                                 (_name91894_
                                                  (gx#core-identifier-key
                                                   _name91869_)))
                                             (let ((_$e91896_
                                                    (hash-get
                                                     _exports91820_
                                                     (cons _src-phi91891_
                                                           _src-name91892_))))
                                               (if _$e91896_
                                                   ((lambda (_out91899_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91899_
                                                             _name91894_
                                                             (fx- _phi91893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91891_))
                    _r91826_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91896_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91695_
                                                    _hd91770_))))
                                           (_E9182991847_))
                                       (_E9182991847_)))))
                             (_E9182991847_)))))
                   (_E9182991847_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9182991847_)))))
                                       (_E9182991847_)))))
                           (_E9182891901_)))
                       _r91773_
                       _specs91821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9178391795_)))))
                                          (_E9178391795_))))
                                  (_E9178391795_))))
                           (_E9177591927_
                            (lambda ()
                              (if (gx#stx-pair? _e9177491791_)
                                  (let ((_e9177791909_
                                         (gx#syntax-e _e9177491791_)))
                                    (let ((_hd9177891912_
                                           (##car _e9177791909_))
                                          (_tl9177991914_
                                           (##cdr _e9177791909_)))
                                      (if (gx#stx-pair? _tl9177991914_)
                                          (let ((_e9178091917_
                                                 (gx#syntax-e _tl9177991914_)))
                                            (let ((_hd9178191920_
                                                   (##car _e9178091917_))
                                                  (_tl9178291922_
                                                   (##cdr _e9178091917_)))
                                              (let ((_path91925_
                                                     _hd9178191920_))
                                                (if (gx#stx-null?
                                                     _tl9178291922_)
                                                    (if '#t
                                                        (_K91771_
                                                         _rest91772_
                                                         (cons (_import-spec-source91703_
                                                                _path91925_)
                                                               _r91773_))
                                                        (_E9177691905_))
                                                    (_E9177691905_)))))
                                          (_E9177691905_))))
                                  (_E9177691905_)))))
                      (_E9177591927_))))
                 (_import-spec-source91703_
                  (lambda (_spath91768_)
                    (gx#core-import-nested-module _spath91768_ _stx91695_)))
                 (_import!91704_
                  (lambda (_rbody91717_)
                    (letrec* ((_current-ctx91719_
                               (gx#current-expander-context))
                              (_deps91720_ (make-hash-table-eq))
                              (_bind!91721_
                               (lambda (_hd91766_)
                                 (gx#core-bind-import!__1
                                  _hd91766_
                                  _current-ctx91719_))))
                      (let _lp91723_ ((_rest91725_ _rbody91717_)
                                      (_body91726_ '()))
                        (let* ((_rest9172791735_ _rest91725_)
                               (_else9172991745_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91719_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91719_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91719_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91726_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91743_ _g94589_)
                                     (gx#eval-module _ctx91743_))
                                   _deps91720_)
                                  _body91726_))
                               (_K9173191754_
                                (lambda (_rest91748_ _hd91749_)
                                  (if (##structure-direct-instance-of?
                                       _hd91749_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91721_ _hd91749_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91749_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91749_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91720_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91749_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91749_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91721_
                                             (##unchecked-structure-ref
                                              _hd91749_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91749_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91720_
                                                 (##unchecked-structure-ref
                                                  _hd91749_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91751_
                                                 (##structure-instance-of?
                                                  _hd91749_
                                                  'gx#module-context::t)))
                                            (if _$e91751_
                                                _$e91751_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91695_
                                                 _hd91749_)))))
                                  (_lp91723_
                                   _rest91748_
                                   (cons _hd91749_ _body91726_)))))
                          (if (##pair? _rest9172791735_)
                              (let ((_hd9173291757_ (##car _rest9172791735_))
                                    (_tl9173391759_ (##cdr _rest9172791735_)))
                                (let* ((_hd91762_ _hd9173291757_)
                                       (_rest91764_ _tl9173391759_))
                                  (_K9173191754_ _rest91764_ _hd91762_)))
                              (_else9172991745_)))))))
                 (_expanded-import?91705_
                  (lambda (_e91709_)
                    (let ((_$e91711_
                           (##structure-direct-instance-of?
                            _e91709_
                            'gx#import-set::t)))
                      (if _$e91711_
                          _$e91711_
                          (let ((_$e91714_
                                 (##structure-direct-instance-of?
                                  _e91709_
                                  'gx#module-import::t)))
                            (if _$e91714_
                                _$e91714_
                                (##structure-instance-of?
                                 _e91709_
                                 'gx#module-context::t))))))))
          (let ((_rbody91707_
                 (gx#core-expand-import/export
                  _stx91695_
                  _expanded-import?91705_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191698_)))
            (if _internal-expand?91696_
                (reverse _rbody91707_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91704_ _rbody91707_))
                 (gx#stx-source _stx91695_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx92021_)
        (let ((_internal-expand?92023_ '#f))
          (gx#core-expand-import%__% _stx92021_ _internal-expand?92023_))))
    (define gx#core-expand-import%
      (lambda _g94591_
        (let ((_g94590_ (##length _g94591_)))
          (cond ((##fx= _g94590_ 1)
                 (apply (lambda (_stx92021_)
                          (gx#core-expand-import%__0 _stx92021_))
                        _g94591_))
                ((##fx= _g94590_ 2)
                 (apply (lambda (_stx92025_ _internal-expand?92026_)
                          (gx#core-expand-import%__%
                           _stx92025_
                           _internal-expand?92026_))
                        _g94591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94591_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91622_ _where91623_)
        (let* ((_e9162491631_ _spath91622_)
               (_E9162691635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9162491631_)))
               (_E9162591690_
                (lambda ()
                  (if (gx#stx-pair? _e9162491631_)
                      (let ((_e9162791639_ (gx#syntax-e _e9162491631_)))
                        (let ((_hd9162891642_ (##car _e9162791639_))
                              (_tl9162991644_ (##cdr _e9162791639_)))
                          (let* ((_origin91647_ _hd9162891642_)
                                 (_sub91649_ _tl9162991644_))
                            (if '#t
                                (let ((_origin-ctx91651_
                                       (if (gx#stx-false? _origin91647_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91647_))))
                                  (let _lp91653_ ((_rest91655_ _sub91649_)
                                                  (_ctx91656_
                                                   _origin-ctx91651_))
                                    (let* ((_e9165791664_ _rest91655_)
                                           (_E9165991668_
                                            (lambda () _ctx91656_))
                                           (_E9165891686_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9165791664_)
                                                  (let ((_e9166091672_
                                                         (gx#syntax-e
                                                          _e9165791664_)))
                                                    (let ((_hd9166191675_
                                                           (##car _e9166091672_))
                                                          (_tl9166291677_
                                                           (##cdr _e9166091672_)))
                                                      (let* ((_id91680_
                                                              _hd9166191675_)
                                                             (_rest91682_
                                                              _tl9166291677_))
                                                        (if '#t
                                                            (let ((_bind91684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91680_ '0 _ctx91656_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91684_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91684_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91623_
                           _spath91622_
                           _id91680_))
                      (_lp91653_
                       _rest91682_
                       (##unchecked-structure-ref
                        _bind91684_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9165991668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9165991668_)))))
                                      (_E9165891686_))))
                                (_E9162691635_)))))
                      (_E9162691635_)))))
          (_E9162591690_))))
    (define gx#core-expand-import-source
      (lambda (_hd91620_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91620_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx91128_ _internal-expand?91129_)
        (letrec* ((_make-export__9452094521_
                   (lambda (_bind91568_ _phi91569_ _ctx91570_ _name91571_)
                     (let* ((_key91573_
                             (##unchecked-structure-ref
                              _bind91568_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91575_
                             (if _name91571_
                                 (gx#core-identifier-key _name91571_)
                                 _key91573_)))
                       (##structure
                        gx#module-export::t
                        _ctx91570_
                        _key91573_
                        _phi91569_
                        _export-key91575_
                        (let ((_$e91578_
                               (##structure-instance-of?
                                _bind91568_
                                'gx#extern-binding::t)))
                          (if _$e91578_
                              _$e91578_
                              (##structure-direct-instance-of?
                               _bind91568_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9452294525_
                   (lambda (_bind91584_)
                     (let* ((_phi91586_ (gx#current-export-expander-phi))
                            (_ctx91588_ (gx#current-expander-context))
                            (_name91590_ '#f))
                       (_make-export__9452094521_
                        _bind91584_
                        _phi91586_
                        _ctx91588_
                        _name91590_))))
                  (_make-export__1__9452394526_
                   (lambda (_bind91592_ _phi91593_)
                     (let* ((_ctx91595_ (gx#current-expander-context))
                            (_name91597_ '#f))
                       (_make-export__9452094521_
                        _bind91592_
                        _phi91593_
                        _ctx91595_
                        _name91597_))))
                  (_make-export__2__9452494527_
                   (lambda (_bind91599_ _phi91600_ _ctx91601_)
                     (let ((_name91603_ '#f))
                       (_make-export__9452094521_
                        _bind91599_
                        _phi91600_
                        _ctx91601_
                        _name91603_))))
                  (_make-export91131_
                   (lambda _g94593_
                     (let ((_g94592_ (##length _g94593_)))
                       (cond ((##fx= _g94592_ 1)
                              (apply (lambda (_bind91584_)
                                       (_make-export__0__9452294525_
                                        _bind91584_))
                                     _g94593_))
                             ((##fx= _g94592_ 2)
                              (apply (lambda (_bind91592_ _phi91593_)
                                       (_make-export__1__9452394526_
                                        _bind91592_
                                        _phi91593_))
                                     _g94593_))
                             ((##fx= _g94592_ 3)
                              (apply (lambda (_bind91599_
                                              _phi91600_
                                              _ctx91601_)
                                       (_make-export__2__9452494527_
                                        _bind91599_
                                        _phi91600_
                                        _ctx91601_))
                                     _g94593_))
                             ((##fx= _g94592_ 4)
                              (apply (lambda (_bind91605_
                                              _phi91606_
                                              _ctx91607_
                                              _name91608_)
                                       (_make-export__9452094521_
                                        _bind91605_
                                        _phi91606_
                                        _ctx91607_
                                        _name91608_))
                                     _g94593_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94593_))))))
                  (_expand191132_
                   (lambda (_hd91281_ _K91282_ _rest91283_ _r91284_)
                     (let* ((_e9128591317_ _hd91281_)
                            (_E9131291321_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx91128_
                                _hd91281_)))
                            (_E9130291400_
                             (lambda ()
                               (if (gx#stx-pair? _e9128591317_)
                                   (let ((_e9131391325_
                                          (gx#syntax-e _e9128591317_)))
                                     (let ((_hd9131491328_
                                            (##car _e9131391325_))
                                           (_tl9131591330_
                                            (##cdr _e9131391325_)))
                                       (if (eq? (gx#stx-e _hd9131491328_)
                                                'import:)
                                           (let ((_in91333_ _tl9131591330_))
                                             (if (gx#stx-list? _in91333_)
                                                 (let _lp91335_ ((_in-rest91337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in91333_)
                         (_r91338_ _r91284_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9133991346_
                                                           _in-rest91337_)
                                                          (_E9134191350_
                                                           (lambda ()
                                                             (_K91282_
                                                              _rest91283_
                                                              _r91338_)))
                                                          (_E9134091396_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9133991346_)
                         (let ((_e9134291354_ (gx#syntax-e _e9133991346_)))
                           (let ((_hd9134391357_ (##car _e9134291354_))
                                 (_tl9134491359_ (##cdr _e9134291354_)))
                             (let* ((_hd91362_ _hd9134391357_)
                                    (_in-rest91364_ _tl9134491359_))
                               (if '#t
                                   (let ((_src91394_
                                          (if (gx#core-bound-module? _hd91362_)
                                              (gx#syntax-local-e__0 _hd91362_)
                                              (if (gx#core-library-module-path?
                                                   _hd91362_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd91362_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd91362_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd91362_))
                                                      (if (gx#stx-string?
                                                           _hd91362_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd91362_
                                                            (gx#stx-source
                                                             _stx91128_)))
                                                          (let* ((_e9136591372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91362_)
                         (_E9136791376_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx91128_
                             _hd91362_)))
                         (_E9136691390_
                          (lambda ()
                            (if (gx#stx-pair? _e9136591372_)
                                (let ((_e9136891380_
                                       (gx#syntax-e _e9136591372_)))
                                  (let ((_hd9136991383_ (##car _e9136891380_))
                                        (_tl9137091385_ (##cdr _e9136891380_)))
                                    (if (eq? (gx#stx-e _hd9136991383_) 'in:)
                                        (let ((_spath91388_ _tl9137091385_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91388_
                                               _stx91128_)
                                              (_E9136791376_)))
                                        (_E9136791376_))))
                                (_E9136791376_)))))
                    (_E9136691390_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp91335_
                                      _in-rest91364_
                                      (_export-imports91133_
                                       _src91394_
                                       _r91338_)))
                                   (_E9134191350_)))))
                         (_E9134191350_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9134091396_)))
                                                 (_E9131291321_)))
                                           (_E9131291321_))))
                                   (_E9131291321_))))
                            (_E9128991439_
                             (lambda ()
                               (if (gx#stx-pair? _e9128591317_)
                                   (let ((_e9130391404_
                                          (gx#syntax-e _e9128591317_)))
                                     (let ((_hd9130491407_
                                            (##car _e9130391404_))
                                           (_tl9130591409_
                                            (##cdr _e9130391404_)))
                                       (if (eq? (gx#stx-e _hd9130491407_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9130591409_)
                                               (let ((_e9130691412_
                                                      (gx#syntax-e
                                                       _tl9130591409_)))
                                                 (let ((_hd9130791415_
                                                        (##car _e9130691412_))
                                                       (_tl9130891417_
                                                        (##cdr _e9130691412_)))
                                                   (let ((_id91420_
                                                          _hd9130791415_))
                                                     (if (gx#stx-pair?
                                                          _tl9130891417_)
                                                         (let ((_e9130991422_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9130891417_)))
                   (let ((_hd9131091425_ (##car _e9130991422_))
                         (_tl9131191427_ (##cdr _e9130991422_)))
                     (let ((_name91430_ _hd9131091425_))
                       (if (gx#stx-null? _tl9131191427_)
                           (if '#t
                               (let* ((_phi91432_
                                       (gx#current-export-expander-phi))
                                      (_$e91434_
                                       (gx#core-resolve-identifier__1
                                        _id91420_
                                        _phi91432_)))
                                 (if _$e91434_
                                     ((lambda (_bind91437_)
                                        (_K91282_
                                         _rest91283_
                                         (cons (_make-export__9452094521_
                                                _bind91437_
                                                _phi91432_
                                                (gx#current-expander-context)
                                                _name91430_)
                                               _r91284_)))
                                      _$e91434_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx91128_
                                      _hd91281_
                                      _id91420_)))
                               (_E9130291400_))
                           (_E9130291400_)))))
                 (_E9130291400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9130291400_))
                                           (_E9130291400_))))
                                   (_E9130291400_))))
                            (_E9128891488_
                             (lambda ()
                               (if (gx#stx-pair? _e9128591317_)
                                   (let ((_e9129091443_
                                          (gx#syntax-e _e9128591317_)))
                                     (let ((_hd9129191446_
                                            (##car _e9129091443_))
                                           (_tl9129291448_
                                            (##cdr _e9129091443_)))
                                       (if (eq? (gx#stx-e _hd9129191446_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9129291448_)
                                               (let ((_e9129391451_
                                                      (gx#syntax-e
                                                       _tl9129291448_)))
                                                 (let ((_hd9129491454_
                                                        (##car _e9129391451_))
                                                       (_tl9129591456_
                                                        (##cdr _e9129391451_)))
                                                   (let ((_phi91459_
                                                          _hd9129491454_))
                                                     (if (gx#stx-pair?
                                                          _tl9129591456_)
                                                         (let ((_e9129691461_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9129591456_)))
                   (let ((_hd9129791464_ (##car _e9129691461_))
                         (_tl9129891466_ (##cdr _e9129691461_)))
                     (let ((_id91469_ _hd9129791464_))
                       (if (gx#stx-pair? _tl9129891466_)
                           (let ((_e9129991471_ (gx#syntax-e _tl9129891466_)))
                             (let ((_hd9130091474_ (##car _e9129991471_))
                                   (_tl9130191476_ (##cdr _e9129991471_)))
                               (let ((_name91479_ _hd9130091474_))
                                 (if (gx#stx-null? _tl9130191476_)
                                     (if (and (gx#stx-fixnum? _phi91459_)
                                              (gx#identifier? _id91469_)
                                              (gx#identifier? _name91479_))
                                         (let* ((_phi91481_
                                                 (gx#stx-e _phi91459_))
                                                (_$e91483_
                                                 (gx#core-resolve-identifier__1
                                                  _id91469_
                                                  _phi91481_)))
                                           (if _$e91483_
                                               ((lambda (_bind91486_)
                                                  (_K91282_
                                                   _rest91283_
                                                   (cons (_make-export__9452094521_
                                                          _bind91486_
                                                          _phi91481_
                                                          (gx#current-expander-context)
                                                          _name91479_)
                                                         _r91284_)))
                                                _$e91483_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx91128_
                                                _hd91281_
                                                _id91469_)))
                                         (_E9128991439_))
                                     (_E9128991439_)))))
                           (_E9128991439_)))))
                 (_E9128991439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9128991439_))
                                           (_E9128991439_))))
                                   (_E9128991439_))))
                            (_E9128791499_
                             (lambda ()
                               (let ((_id91492_ _e9128591317_))
                                 (if (gx#identifier? _id91492_)
                                     (let ((_$e91494_
                                            (gx#core-resolve-identifier__1
                                             _id91492_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91494_
                                           ((lambda (_bind91497_)
                                              (_K91282_
                                               _rest91283_
                                               (cons (_make-export__0__9452294525_
                                                      _bind91497_)
                                                     _r91284_)))
                                            _$e91494_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx91128_
                                            _hd91281_)))
                                     (_E9128891488_)))))
                            (_E9128691563_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9128591317_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91503_
                                               (gx#current-expander-context))
                                              (_current-phi91505_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91507_
                                               (gx#core-context-shift
                                                _current-ctx91503_
                                                _current-phi91505_))
                                              (_phi-bind91509_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91507_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91512_ ((_bind-rest91514_
                                                          _phi-bind91509_)
                                                         (_set91515_ '()))
                                           (let* ((_bind-rest9151691526_
                                                   _bind-rest91514_)
                                                  (_else9151891534_
                                                   (lambda ()
                                                     (_K91282_
                                                      _rest91283_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91505_
                                                             _set91515_)
                                                            _r91284_))))
                                                  (_K9152091544_
                                                   (lambda (_bind-rest91537_
                                                            _bind91538_
                                                            _key91539_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91538_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91538_))
                                                         (_lp91512_
                                                          _bind-rest91537_
                                                          _set91515_)
                                                         (_lp91512_
                                                          _bind-rest91537_
                                                          (cons (_make-export__2__9452494527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91538_
                         _current-phi91505_
                         _current-ctx91503_)
                        _set91515_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9151691526_)
                                                 (let ((_hd9152191547_
                                                        (##car _bind-rest9151691526_))
                                                       (_tl9152291549_
                                                        (##cdr _bind-rest9151691526_)))
                                                   (if (##pair? _hd9152191547_)
                                                       (let ((_hd9152391552_
                                                              (##car _hd9152191547_))
                                                             (_tl9152491554_
                                                              (##cdr _hd9152191547_)))
                                                         (let* ((_key91557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9152391552_)
                        (_bind91559_ _tl9152491554_)
                        (_bind-rest91561_ _tl9152291549_))
                   (_K9152091544_ _bind-rest91561_ _bind91559_ _key91557_)))
               (_else9151891534_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9151891534_)))))
                                       (_E9128791499_))
                                   (_E9128791499_)))))
                       (_E9128691563_))))
                  (_export-imports91133_
                   (lambda (_src91157_ _r91158_)
                     (letrec* ((_current-ctx91160_
                                (gx#current-expander-context))
                               (_current-phi91161_
                                (gx#current-export-expander-phi))
                               (_import->export91162_
                                (lambda (_in91243_)
                                  (let* ((_in9124491252_ _in91243_)
                                         (_E9124691256_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9124491252_)))
                                         (_K9124791263_
                                          (lambda (_phi91259_
                                                   _key91260_
                                                   _out91261_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx91160_
                                             _key91260_
                                             _phi91259_
                                             _key91260_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9124491252_
                                         'gx#module-import::t)
                                        (let* ((_e9124891266_
                                                (##unchecked-structure-ref
                                                 _in9124491252_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out91269_ _e9124891266_)
                                               (_e9124991271_
                                                (##unchecked-structure-ref
                                                 _in9124491252_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key91274_ _e9124991271_)
                                               (_e9125091276_
                                                (##unchecked-structure-ref
                                                 _in9124491252_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi91279_ _e9125091276_))
                                          (_K9124791263_
                                           _phi91279_
                                           _key91274_
                                           _out91269_))
                                        (_E9124691256_)))))
                               (_fold-e91163_
                                (lambda (_in91165_ _r91166_)
                                  (let* ((_in9116791181_ _in91165_)
                                         (_else9117091189_
                                          (lambda () _r91166_)))
                                    (let ((_K9117691225_
                                           (lambda (_phi91221_
                                                    _key91222_
                                                    _out91223_)
                                             (if (and (fx= _phi91221_
                                                           _current-phi91161_)
                                                      (eq? _src91157_
                                                           (##unchecked-structure-ref
                                                            _out91223_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export91162_
                                                        _in91165_)
                                                       _r91166_)
                                                 _r91166_)))
                                          (_K9117291200_
                                           (lambda (_imports91193_
                                                    _phi91194_
                                                    _ctx91195_)
                                             (if (and (fx= _phi91194_
                                                           _current-phi91161_)
                                                      (eq? _src91157_
                                                           _ctx91195_))
                                                 (foldl1 (lambda (_in91197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r91198_)
                   (cons (_import->export91162_ _in91197_) _r91198_))
                 _r91166_
                 _imports91193_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r91166_))))
                                      (let ((_try-match9116991218_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9116791181_
                                                    'gx#import-set::t)
                                                   (let* ((_e9117391203_
                                                           (##unchecked-structure-ref
                                                            _in9116791181_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9117491208_
                                                           (##unchecked-structure-ref
                                                            _in9116791181_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9117591213_
                                                           (##unchecked-structure-ref
                                                            _in9116791181_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx91206_
                                                            _e9117391203_)
                                                           (_phi91211_
                                                            _e9117491208_)
                                                           (_imports91216_
                                                            _e9117591213_))
                                                       (_K9117291200_
                                                        _imports91216_
                                                        _phi91211_
                                                        _ctx91206_)))
                                                   (_else9117091189_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9116791181_
                                             'gx#module-import::t)
                                            (let* ((_e9117791228_
                                                    (##unchecked-structure-ref
                                                     _in9116791181_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9117891233_
                                                    (##unchecked-structure-ref
                                                     _in9116791181_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9117991238_
                                                    (##unchecked-structure-ref
                                                     _in9116791181_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out91231_ _e9117791228_)
                                                    (_key91236_ _e9117891233_)
                                                    (_phi91241_ _e9117991238_))
                                                (_K9117691225_
                                                 _phi91241_
                                                 _key91236_
                                                 _out91231_)))
                                            (_try-match9116991218_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src91157_
                              _current-phi91161_
                              (foldl1 _fold-e91163_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx91160_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r91158_))))
                  (_export!91134_
                   (lambda (_rbody91147_)
                     (letrec* ((_current-ctx91149_
                                (gx#current-expander-context))
                               (_fold-e91150_
                                (lambda (_out91154_ _r91155_)
                                  (if (##structure-direct-instance-of?
                                       _out91154_
                                       'gx#module-export::t)
                                      (cons _out91154_ _r91155_)
                                      (if (##structure-direct-instance-of?
                                           _out91154_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r91155_
                                                  (##unchecked-structure-ref
                                                   _out91154_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r91155_)))))
                       (let ((_body91152_ (reverse _rbody91147_)))
                         (##unchecked-structure-set!
                          _current-ctx91149_
                          (foldl1 _fold-e91150_
                                  (##unchecked-structure-ref
                                   _current-ctx91149_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body91152_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body91152_))))
                  (_expanded-export?91135_
                   (lambda (_e91142_)
                     (let ((_$e91144_
                            (##structure-direct-instance-of?
                             _e91142_
                             'gx#module-export::t)))
                       (if _$e91144_
                           _$e91144_
                           (##structure-direct-instance-of?
                            _e91142_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?91129_)
              (let ((_rbody91140_
                     (gx#core-expand-import/export
                      _stx91128_
                      _expanded-export?91135_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand191132_)))
                (if _internal-expand?91129_
                    (reverse _rbody91140_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!91134_ _rbody91140_))
                     (gx#stx-source _stx91128_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx91128_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx91128_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91613_)
        (let ((_internal-expand?91615_ '#f))
          (gx#core-expand-export%__% _stx91613_ _internal-expand?91615_))))
    (define gx#core-expand-export%
      (lambda _g94595_
        (let ((_g94594_ (##length _g94595_)))
          (cond ((##fx= _g94594_ 1)
                 (apply (lambda (_stx91613_)
                          (gx#core-expand-export%__0 _stx91613_))
                        _g94595_))
                ((##fx= _g94594_ 2)
                 (apply (lambda (_stx91617_ _internal-expand?91618_)
                          (gx#core-expand-export%__%
                           _stx91617_
                           _internal-expand?91618_))
                        _g94595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94595_))))))
    (define gx#core-expand-export-source
      (lambda (_hd91125_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd91125_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx91095_)
        (let* ((_e9109691103_ _stx91095_)
               (_E9109891107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9109691103_)))
               (_E9109791121_
                (lambda ()
                  (if (gx#stx-pair? _e9109691103_)
                      (let ((_e9109991111_ (gx#syntax-e _e9109691103_)))
                        (let ((_hd9110091114_ (##car _e9109991111_))
                              (_tl9110191116_ (##cdr _e9109991111_)))
                          (let ((_body91119_ _tl9110191116_))
                            (if (gx#identifier-list? _body91119_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body91119_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body91119_))
                                   (gx#stx-source _stx91095_)))
                                (_E9109891107_)))))
                      (_E9109891107_)))))
          (_E9109791121_))))
    (define gx#core-bind-feature!__%
      (lambda (_id91061_ _private?91062_ _phi91063_ _ctx91064_)
        (gx#core-bind-syntax!__%
         _id91061_
         ((if _private?91062_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id91061_))
         _private?91062_
         _phi91063_
         _ctx91064_)))
    (define gx#core-bind-feature!__0
      (lambda (_id91069_)
        (let* ((_private?91071_ '#f)
               (_phi91073_ (gx#current-expander-phi))
               (_ctx91075_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91069_
           _private?91071_
           _phi91073_
           _ctx91075_))))
    (define gx#core-bind-feature!__1
      (lambda (_id91077_ _private?91078_)
        (let* ((_phi91080_ (gx#current-expander-phi))
               (_ctx91082_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91077_
           _private?91078_
           _phi91080_
           _ctx91082_))))
    (define gx#core-bind-feature!__2
      (lambda (_id91084_ _private?91085_ _phi91086_)
        (let ((_ctx91088_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91084_
           _private?91085_
           _phi91086_
           _ctx91088_))))
    (define gx#core-bind-feature!
      (lambda _g94597_
        (let ((_g94596_ (##length _g94597_)))
          (cond ((##fx= _g94596_ 1)
                 (apply (lambda (_id91069_)
                          (gx#core-bind-feature!__0 _id91069_))
                        _g94597_))
                ((##fx= _g94596_ 2)
                 (apply (lambda (_id91077_ _private?91078_)
                          (gx#core-bind-feature!__1 _id91077_ _private?91078_))
                        _g94597_))
                ((##fx= _g94596_ 3)
                 (apply (lambda (_id91084_ _private?91085_ _phi91086_)
                          (gx#core-bind-feature!__2
                           _id91084_
                           _private?91085_
                           _phi91086_))
                        _g94597_))
                ((##fx= _g94596_ 4)
                 (apply (lambda (_id91090_
                                 _private?91091_
                                 _phi91092_
                                 _ctx91093_)
                          (gx#core-bind-feature!__%
                           _id91090_
                           _private?91091_
                           _phi91092_
                           _ctx91093_))
                        _g94597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94597_))))))))
