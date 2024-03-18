(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710770269)
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
      (lambda _$args94470_
        (apply make-instance gx#module-import::t _$args94470_)))
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
      (lambda _$args94467_
        (apply make-instance gx#module-export::t _$args94467_)))
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
      (lambda _$args94464_
        (apply make-instance gx#import-set::t _$args94464_)))
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
      (lambda _$args94461_
        (apply make-instance gx#export-set::t _$args94461_)))
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
      (lambda _$args94458_
        (apply make-instance gx#import-expander::t _$args94458_)))
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
      (lambda _$args94455_
        (apply make-instance gx#export-expander::t _$args94455_)))
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
      (lambda _$args94452_
        (apply make-instance gx#import-export-expander::t _$args94452_)))
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
      (lambda (_path94449_ _fun94450_)
        (call-with-input-file
         (cons 'path: (cons _path94449_ gx#source-file-settings))
         _fun94450_)))
    (define gx#module-context:::init!
      (lambda (_self94443_ _id94444_ _super94445_ _ns94446_ _path94447_)
        (if (##fx< '11 (##structure-length _self94443_))
            (begin
              (##unchecked-structure-set!
               _self94443_
               _id94444_
               '1
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               (make-hash-table-eq)
               '2
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               _super94445_
               '3
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               '#f
               '4
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               '#f
               '5
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               _ns94446_
               '6
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               _path94447_
               '7
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               '()
               '8
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               '()
               '9
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               '#f
               '10
               (##structure-type _self94443_)
               '#f)
              (##unchecked-structure-set!
               _self94443_
               '#f
               '11
               (##structure-type _self94443_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94443_
                   '11
                   (##vector-length _self94443_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self94287_ _ctx94288_ _root94289_)
        (let ((_super94297_
               (let ((_$e94291_ _root94289_))
                 (if _$e94291_
                     _$e94291_
                     (let ((_$e94294_ (gx#core-context-root__0)))
                       (if _$e94294_
                           _$e94294_
                           (let ((__obj94512
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94513
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94512
                                     ':init!)))
                               (if __constructor94513
                                   (__constructor94513 __obj94512)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94512)))))))
          (if _ctx94288_
              (let ((_id94300_
                     (##structure-ref
                      _ctx94288_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path94301_
                     (##structure-ref _ctx94288_ '7 gx#module-context::t '#f))
                    (_in94302_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx94288_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e94303_
                     (make-promise (lambda () (gx#eval-module _ctx94288_)))))
                (if (##fx< '8 (##structure-length _self94287_))
                    (begin
                      (##unchecked-structure-set!
                       _self94287_
                       _id94300_
                       '1
                       (##structure-type _self94287_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94287_
                       (make-hash-table-eq 'size: (length _in94302_))
                       '2
                       (##structure-type _self94287_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94287_
                       _super94297_
                       '3
                       (##structure-type _self94287_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94287_
                       '#f
                       '4
                       (##structure-type _self94287_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94287_
                       '#f
                       '5
                       (##structure-type _self94287_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94287_
                       _path94301_
                       '6
                       (##structure-type _self94287_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94287_
                       _in94302_
                       '7
                       (##structure-type _self94287_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94287_
                       _e94303_
                       '8
                       (##structure-type _self94287_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self94287_
                           '8
                           (##vector-length _self94287_)))
                (for-each
                 (lambda (_g9430494306_)
                   (gx#core-bind-weak-import!__% _g9430494306_ _self94287_))
                 _in94302_))
              (if (##fx< '8 (##structure-length _self94287_))
                  (begin
                    (##unchecked-structure-set!
                     _self94287_
                     '#f
                     '1
                     (##structure-type _self94287_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94287_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self94287_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94287_
                     _super94297_
                     '3
                     (##structure-type _self94287_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94287_
                     '#f
                     '4
                     (##structure-type _self94287_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94287_
                     '#f
                     '5
                     (##structure-type _self94287_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94287_
                     '#f
                     '6
                     (##structure-type _self94287_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94287_
                     '()
                     '7
                     (##structure-type _self94287_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94287_
                     '#f
                     '8
                     (##structure-type _self94287_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self94287_
                         '8
                         (##vector-length _self94287_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self94312_ _ctx94313_)
        (let ((_root94315_ '#f))
          (gx#prelude-context:::init!__% _self94312_ _ctx94313_ _root94315_))))
    (define gx#prelude-context:::init!
      (lambda _g94519_
        (let ((_g94518_ (##length _g94519_)))
          (cond ((##fx= _g94518_ 2)
                 (apply (lambda (_self94312_ _ctx94313_)
                          (gx#prelude-context:::init!__0
                           _self94312_
                           _ctx94313_))
                        _g94519_))
                ((##fx= _g94518_ 3)
                 (apply (lambda (_self94317_ _ctx94318_ _root94319_)
                          (gx#prelude-context:::init!__%
                           _self94317_
                           _ctx94318_
                           _root94319_))
                        _g94519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94519_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self94161_ _e94162_)
        (if (##fx< '3 (##structure-length _self94161_))
            (begin
              (##unchecked-structure-set!
               _self94161_
               _e94162_
               '1
               (##structure-type _self94161_)
               '#f)
              (##unchecked-structure-set!
               _self94161_
               (gx#current-expander-context)
               '2
               (##structure-type _self94161_)
               '#f)
              (##unchecked-structure-set!
               _self94161_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self94161_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94161_
                   '3
                   (##vector-length _self94161_)))))
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
      (lambda (_g9378793790_ _g9378893792_)
        (gx#core-apply-user-expander__%
         _g9378793790_
         _g9378893792_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9365893661_ _g9365993663_)
        (gx#core-apply-user-expander__%
         _g9365893661_
         _g9365993663_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93529_)
        (let* ((_path93531_
                (##structure-ref _ctx93529_ '7 gx#module-context::t '#f))
               (_path93533_
                (if (pair? _path93531_) (last _path93531_) _path93531_)))
          (if (string? _path93533_) _path93533_ '#f))))
    (define gx#import-module__%
      (lambda (_path93505_ _reload?93506_ _eval?93507_)
        (let ((_ctx93509_
               ((gx#current-expander-module-import)
                _path93505_
                _reload?93506_)))
          (if (and _ctx93509_ _eval?93507_)
              (gx#eval-module _ctx93509_)
              '#!void)
          _ctx93509_)))
    (define gx#import-module__0
      (lambda (_path93514_)
        (let* ((_reload?93516_ '#f) (_eval?93518_ '#f))
          (gx#import-module__% _path93514_ _reload?93516_ _eval?93518_))))
    (define gx#import-module__1
      (lambda (_path93520_ _reload?93521_)
        (let ((_eval?93523_ '#f))
          (gx#import-module__% _path93520_ _reload?93521_ _eval?93523_))))
    (define gx#import-module
      (lambda _g94521_
        (let ((_g94520_ (##length _g94521_)))
          (cond ((##fx= _g94520_ 1)
                 (apply (lambda (_path93514_)
                          (gx#import-module__0 _path93514_))
                        _g94521_))
                ((##fx= _g94520_ 2)
                 (apply (lambda (_path93520_ _reload?93521_)
                          (gx#import-module__1 _path93520_ _reload?93521_))
                        _g94521_))
                ((##fx= _g94520_ 3)
                 (apply (lambda (_path93525_ _reload?93526_ _eval?93527_)
                          (gx#import-module__%
                           _path93525_
                           _reload?93526_
                           _eval?93527_))
                        _g94521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94521_))))))
    (define gx#eval-module
      (lambda (_mod93502_) ((gx#current-expander-module-eval) _mod93502_)))
    (define gx#core-eval-module
      (lambda (_obj93487_)
        (letrec ((_force-e93489_
                  (lambda (_getf93498_ _e93499_)
                    (call-with-parameters
                     (lambda () (force (_getf93498_ _e93499_)))
                     gx#current-expander-context
                     _e93499_
                     gx#current-expander-phi
                     '0))))
          (let _recur93491_ ((_e93493_ _obj93487_))
            (if (##structure-instance-of? _e93493_ 'gx#module-context::t)
                (begin
                  (let ((_$e93495_ (gx#core-context-prelude__% _e93493_)))
                    (if _$e93495_ (_recur93491_ _$e93495_) '#!void))
                  (_force-e93489_ gx#module-context-e _e93493_))
                (if (##structure-instance-of? _e93493_ 'gx#prelude-context::t)
                    (_force-e93489_ gx#prelude-context-e _e93493_)
                    (if (gx#stx-string? _e93493_)
                        (_recur93491_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93493_)))
                        (if (gx#core-library-module-path? _e93493_)
                            (_recur93491_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93493_)))
                            (error '"Cannot eval module" _obj93487_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93470_)
        (let _lp93472_ ((_e93474_ _ctx93470_))
          (if (or (##structure-instance-of? _e93474_ 'gx#module-context::t)
                  (##structure-instance-of? _e93474_ 'gx#local-context::t))
              (_lp93472_
               (##unchecked-structure-ref _e93474_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93474_ 'gx#prelude-context::t)
                  _e93474_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93483_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93483_))))
    (define gx#core-context-prelude
      (lambda _g94523_
        (let ((_g94522_ (##length _g94523_)))
          (cond ((##fx= _g94522_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94523_))
                ((##fx= _g94522_ 1)
                 (apply (lambda (_ctx93485_)
                          (gx#core-context-prelude__% _ctx93485_))
                        _g94523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94523_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93462_)
        (let ((_$e93464_ (hash-get gx#__module-registry _ctx93462_)))
          (if _$e93464_
              _$e93464_
              (let ((_pre93467_
                     (let ((__obj94514
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
                       (gx#prelude-context:::init! __obj94514 _ctx93462_)
                       __obj94514)))
                (hash-put! gx#__module-registry _ctx93462_ _pre93467_)
                _pre93467_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93343_ _reload?93344_)
        (letrec ((_import-source93346_
                  (lambda (_path93431_)
                    (if (member _path93431_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93431_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94524_ (gx#core-read-module _path93431_)))
                         (begin
                           (let ((_g94525_
                                  (if (##values? _g94524_)
                                      (##vector-length _g94524_)
                                      1)))
                             (if (not (##fx= _g94525_ 4))
                                 (error "Context expects 4 values" _g94525_)))
                           (let ((_pre93434_ (##vector-ref _g94524_ 0))
                                 (_id93435_ (##vector-ref _g94524_ 1))
                                 (_ns93436_ (##vector-ref _g94524_ 2))
                                 (_body93437_ (##vector-ref _g94524_ 3)))
                             (let* ((_prelude93442_
                                     (if (##structure-instance-of?
                                          _pre93434_
                                          'gx#prelude-context::t)
                                         _pre93434_
                                         (if (##structure-instance-of?
                                              _pre93434_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93434_)
                                             (if (string? _pre93434_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93434_))
                                                 (if (not _pre93434_)
                                                     (let ((_$e93439_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93439_
                                                           _$e93439_
                                                           (let ((__obj94515
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
                     (gx#prelude-context:::init! __obj94515 '#f)
                     __obj94515)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93343_
                                                            _pre93434_))))))
                                    (_ctx93444_
                                     (let ((__obj94516
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
                                        __obj94516
                                        _id93435_
                                        _prelude93442_
                                        _ns93436_
                                        _path93431_)
                                       __obj94516))
                                    (_body93446_
                                     (gx#core-expand-module-begin
                                      _body93437_
                                      _ctx93444_))
                                    (_body93448_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93446_)
                                      _path93431_
                                      _ctx93444_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93444_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93448_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93444_
                                _body93448_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93431_
                                _ctx93444_)
                               (hash-put!
                                gx#__module-registry
                                _id93435_
                                _ctx93444_)
                               _ctx93444_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93431_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93347_
                  (lambda (_rpath93359_)
                    (let* ((_rpath9336093367_ _rpath93359_)
                           (_E9336293371_
                            (lambda ()
                              (error '"No clause matching" _rpath9336093367_)))
                           (_K9336393419_
                            (lambda (_refs93374_ _origin93375_)
                              (let ((_ctx93377_
                                     (if _origin93375_
                                         (gx#core-import-module__%
                                          _origin93375_
                                          _reload?93344_)
                                         (gx#current-expander-context))))
                                (let _lp93379_ ((_rest93381_ _refs93374_)
                                                (_ctx93382_ _ctx93377_))
                                  (let* ((_rest9338393391_ _rest93381_)
                                         (_else9338593399_
                                          (lambda () _ctx93382_))
                                         (_K9338793407_
                                          (lambda (_rest93402_ _id93403_)
                                            (let ((_bind93405_
                                                   (gx#resolve-identifier__%
                                                    _id93403_
                                                    '0
                                                    _ctx93382_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93405_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93405_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93379_
                                                   _rest93402_
                                                   (##unchecked-structure-ref
                                                    _bind93405_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93359_
                                                         _id93403_
                                                         _bind93405_))))))
                                    (if (##pair? _rest9338393391_)
                                        (let ((_hd9338893410_
                                               (##car _rest9338393391_))
                                              (_tl9338993412_
                                               (##cdr _rest9338393391_)))
                                          (let* ((_id93415_ _hd9338893410_)
                                                 (_rest93417_ _tl9338993412_))
                                            (_K9338793407_
                                             _rest93417_
                                             _id93415_)))
                                        (_else9338593399_))))))))
                      (if (##pair? _rpath9336093367_)
                          (let ((_hd9336493422_ (##car _rpath9336093367_))
                                (_tl9336593424_ (##cdr _rpath9336093367_)))
                            (let* ((_origin93427_ _hd9336493422_)
                                   (_refs93429_ _tl9336593424_))
                              (_K9336393419_ _refs93429_ _origin93427_)))
                          (_E9336293371_))))))
          (let ((_$e93349_
                 (if (not _reload?93344_)
                     (hash-get gx#__module-registry _rpath93343_)
                     '#f)))
            (if _$e93349_
                (values _$e93349_)
                (if (list? _rpath93343_)
                    (_import-submodule93347_ _rpath93343_)
                    (if (gx#core-library-module-path? _rpath93343_)
                        (let ((_ctx93352_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93343_)
                                _reload?93344_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93343_
                           _ctx93352_)
                          _ctx93352_)
                        (let* ((_npath93354_ (path-normalize _rpath93343_))
                               (_$e93356_
                                (if (not _reload?93344_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93354_)
                                    '#f)))
                          (if _$e93356_
                              _$e93356_
                              (_import-source93346_ _npath93354_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93455_)
        (let ((_reload?93457_ '#f))
          (gx#core-import-module__% _rpath93455_ _reload?93457_))))
    (define gx#core-import-module
      (lambda _g94527_
        (let ((_g94526_ (##length _g94527_)))
          (cond ((##fx= _g94526_ 1)
                 (apply (lambda (_rpath93455_)
                          (gx#core-import-module__0 _rpath93455_))
                        _g94527_))
                ((##fx= _g94526_ 2)
                 (apply (lambda (_rpath93459_ _reload?93460_)
                          (gx#core-import-module__%
                           _rpath93459_
                           _reload?93460_))
                        _g94527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94527_))))))
    (define gx#core-read-module
      (lambda (_path93332_)
        (with-catch
         (lambda (_exn93334_)
           (if (and (datum-parsing-exception? _exn93334_)
                    (eq? (datum-parsing-exception-filepos _exn93334_) '0))
               (gx#core-read-module/lang _path93332_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93332_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9333693338_)
                      (display-exception _exn93334_ _g9333693338_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93332_)))))
    (define gx#core-read-module/sexp
      (lambda (_path93195_)
        (let _lp93197_ ((_body93199_ (read-syntax-from-file _path93195_))
                        (_pre93200_ '#f)
                        (_ns93201_ '#f)
                        (_pkg93202_ '#f))
          (let* ((_e9320393227_ _body93199_)
                 (_E9321993249_
                  (lambda ()
                    (let ((_g94528_
                           (if _pkg93202_
                               (values _pre93200_ _ns93201_ _pkg93202_)
                               (gx#core-read-module-package
                                _path93195_
                                _pre93200_
                                _ns93201_))))
                      (begin
                        (let ((_g94529_
                               (if (##values? _g94528_)
                                   (##vector-length _g94528_)
                                   1)))
                          (if (not (##fx= _g94529_ 3))
                              (error "Context expects 3 values" _g94529_)))
                        (let ((_pre93231_ (##vector-ref _g94528_ 0))
                              (_ns93232_ (##vector-ref _g94528_ 1))
                              (_pkg93233_ (##vector-ref _g94528_ 2)))
                          (let* ((_prelude93235_
                                  (if (gx#core-bound-module-prelude?
                                       _pre93231_)
                                      (gx#syntax-local-e__0 _pre93231_)
                                      (if (gx#core-library-module-path?
                                           _pre93231_)
                                          (gx#core-resolve-library-module-path
                                           _pre93231_)
                                          (if (gx#stx-string? _pre93231_)
                                              (gx#core-resolve-module-path__%
                                               _pre93231_
                                               _path93195_)
                                              (gx#stx-e _pre93231_)))))
                                 (_path-id93237_
                                  (gx#core-module-path->namespace _path93195_))
                                 (_pkg-id93239_
                                  (if _pkg93233_
                                      (string-append
                                       _pkg93233_
                                       '"/"
                                       _path-id93237_)
                                      _path-id93237_))
                                 (_module-id93241_
                                  (string->symbol _pkg-id93239_))
                                 (_module-ns93246_
                                  (if (eq? _ns93232_ '#!void)
                                      '#f
                                      (let ((_$e93243_ _ns93232_))
                                        (if _$e93243_
                                            _$e93243_
                                            _pkg-id93239_)))))
                            (values _prelude93235_
                                    _module-id93241_
                                    _module-ns93246_
                                    _body93199_)))))))
                 (_E9321293278_
                  (lambda ()
                    (if (gx#stx-pair? _e9320393227_)
                        (let ((_e9322093253_ (gx#syntax-e _e9320393227_)))
                          (let ((_hd9322193256_ (##car _e9322093253_))
                                (_tl9322293258_ (##cdr _e9322093253_)))
                            (if (eq? (gx#stx-e _hd9322193256_) 'package:)
                                (if (gx#stx-pair? _tl9322293258_)
                                    (let ((_e9322393261_
                                           (gx#syntax-e _tl9322293258_)))
                                      (let ((_hd9322493264_
                                             (##car _e9322393261_))
                                            (_tl9322593266_
                                             (##cdr _e9322393261_)))
                                        (let* ((_pkg93269_ _hd9322493264_)
                                               (_rest93271_ _tl9322593266_))
                                          (if '#t
                                              (let ((_pkg93276_
                                                     (if (gx#identifier?
                                                          _pkg93269_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg93269_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg93269_)
                         (gx#stx-false? _pkg93269_))
                     (gx#stx-e _pkg93269_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg93269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93197_
                                                 _rest93271_
                                                 _pre93200_
                                                 _ns93201_
                                                 _pkg93276_))
                                              (_E9321993249_)))))
                                    (_E9321993249_))
                                (_E9321993249_))))
                        (_E9321993249_))))
                 (_E9320593304_
                  (lambda ()
                    (if (gx#stx-pair? _e9320393227_)
                        (let ((_e9321393282_ (gx#syntax-e _e9320393227_)))
                          (let ((_hd9321493285_ (##car _e9321393282_))
                                (_tl9321593287_ (##cdr _e9321393282_)))
                            (if (eq? (gx#stx-e _hd9321493285_) 'namespace:)
                                (if (gx#stx-pair? _tl9321593287_)
                                    (let ((_e9321693290_
                                           (gx#syntax-e _tl9321593287_)))
                                      (let ((_hd9321793293_
                                             (##car _e9321693290_))
                                            (_tl9321893295_
                                             (##cdr _e9321693290_)))
                                        (let* ((_ns93298_ _hd9321793293_)
                                               (_rest93300_ _tl9321893295_))
                                          (if '#t
                                              (let ((_ns93302_
                                                     (if (gx#identifier?
                                                          _ns93298_)
                                                         (symbol->string
                                                          (gx#stx-e _ns93298_))
                                                         (if (gx#stx-string?
                                                              _ns93298_)
                                                             (gx#stx-e
                                                              _ns93298_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns93298_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns93298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp93197_
                                                 _rest93300_
                                                 _pre93200_
                                                 _ns93302_
                                                 _pkg93202_))
                                              (_E9321293278_)))))
                                    (_E9321293278_))
                                (_E9321293278_))))
                        (_E9321293278_))))
                 (_E9320493328_
                  (lambda ()
                    (if (gx#stx-pair? _e9320393227_)
                        (let ((_e9320693308_ (gx#syntax-e _e9320393227_)))
                          (let ((_hd9320793311_ (##car _e9320693308_))
                                (_tl9320893313_ (##cdr _e9320693308_)))
                            (if (eq? (gx#stx-e _hd9320793311_) 'prelude:)
                                (if (gx#stx-pair? _tl9320893313_)
                                    (let ((_e9320993316_
                                           (gx#syntax-e _tl9320893313_)))
                                      (let ((_hd9321093319_
                                             (##car _e9320993316_))
                                            (_tl9321193321_
                                             (##cdr _e9320993316_)))
                                        (let* ((_prelude93324_ _hd9321093319_)
                                               (_rest93326_ _tl9321193321_))
                                          (if '#t
                                              (_lp93197_
                                               _rest93326_
                                               _prelude93324_
                                               _ns93201_
                                               _pkg93202_)
                                              (_E9320593304_)))))
                                    (_E9320593304_))
                                (_E9320593304_))))
                        (_E9320593304_)))))
            (_E9320493328_)))))
    (define gx#core-read-module/lang
      (lambda (_path93022_)
        (letrec ((_default-read-module-body93024_
                  (lambda (_inp93187_)
                    (let _lp93189_ ((_body93191_ '()))
                      (let ((_next93193_ (read-syntax _inp93187_)))
                        (if (eof-object? _next93193_)
                            (reverse _body93191_)
                            (_lp93189_ (cons _next93193_ _body93191_)))))))
                 (_read-body93025_
                  (lambda (_inp93106_
                           _pre93107_
                           _ns93108_
                           _pkg93109_
                           _args93110_)
                    (let ((_g94530_
                           (if _pkg93109_
                               (values _pre93107_ _ns93108_ _pkg93109_)
                               (gx#core-read-module-package
                                _path93022_
                                _pre93107_
                                _ns93108_))))
                      (begin
                        (let ((_g94531_
                               (if (##values? _g94530_)
                                   (##vector-length _g94530_)
                                   1)))
                          (if (not (##fx= _g94531_ 3))
                              (error "Context expects 3 values" _g94531_)))
                        (let ((_pre93112_ (##vector-ref _g94530_ 0))
                              (_ns93113_ (##vector-ref _g94530_ 1))
                              (_pkg93114_ (##vector-ref _g94530_ 2)))
                          (let* ((_prelude93116_
                                  (gx#import-module__0 _pre93112_))
                                 (_read-module-body93170_
                                  (let ((_$e93162_
                                         (find (lambda (_e9311793119_)
                                                 (let* ((_g9312193131_
                                                         _e9311793119_)
                                                        (_else9312393139_
                                                         (lambda () '#f))
                                                        (_K9312593143_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9312193131_
                                                        'gx#module-export::t)
                                                       (let* ((_e9312693146_
                                                               (##unchecked-structure-ref
                                                                _g9312193131_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9312793149_
                                                               (##unchecked-structure-ref
                                                                _g9312193131_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9312893152_
                                                               (##unchecked-structure-ref
                                                                _g9312193131_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9312893152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9312993155_
                            (##unchecked-structure-ref
                             _g9312193131_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9315793159_)
                              (eq? _g9315793159_ 'read-module-body))
                            _e9312993155_)
                           (_K9312593143_)
                           (_else9312393139_)))
                     (_else9312393139_)))
               (_else9312393139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude93116_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e93162_
                                        ((lambda (_xport93165_)
                                           (let ((_proc93168_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport93165_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc93168_)
                                                 _proc93168_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path93022_
                                                  _pre93112_
                                                  _proc93168_))))
                                         _$e93162_)
                                        _default-read-module-body93024_)))
                                 (_path-id93172_
                                  (gx#core-module-path->namespace _path93022_))
                                 (_pkg-id93174_
                                  (if _pkg93114_
                                      (string-append
                                       _pkg93114_
                                       '"/"
                                       _path-id93172_)
                                      _path-id93172_))
                                 (_module-id93176_
                                  (string->symbol _pkg-id93174_))
                                 (_module-ns93181_
                                  (let ((_$e93178_ _ns93113_))
                                    (if _$e93178_ _$e93178_ _pkg-id93174_)))
                                 (_body93184_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body93170_ _inp93106_))
                                   gx#current-module-reader-path
                                   _path93022_
                                   gx#current-module-reader-args
                                   _args93110_)))
                            (values _prelude93116_
                                    _module-id93176_
                                    _module-ns93181_
                                    _body93184_)))))))
                 (_string-e93026_
                  (lambda (_obj93103_ _what93104_)
                    (if (string? _obj93103_)
                        _obj93103_
                        (if (symbol? _obj93103_)
                            (symbol->string _obj93103_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what93104_)
                             _path93022_
                             _obj93103_)))))
                 (_read-lang-args93027_
                  (lambda (_inp93058_ _args93059_)
                    (let* ((_args9306093068_ _args93059_)
                           (_else9306293076_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path93022_)))
                           (_K9306493091_
                            (lambda (_args93079_ _prelude93080_)
                              (let* ((_pkg93082_
                                      (pgetq__0 'package: _args93079_))
                                     (_pkg93084_
                                      (if _pkg93082_
                                          (_string-e93026_
                                           _pkg93082_
                                           '"package")
                                          '#f))
                                     (_ns93086_
                                      (pgetq__0 'namespace: _args93079_))
                                     (_ns93088_
                                      (if _ns93086_
                                          (_string-e93026_
                                           _ns93086_
                                           '"namespace")
                                          '#f)))
                                (_read-body93025_
                                 _inp93058_
                                 _prelude93080_
                                 _ns93088_
                                 _pkg93084_
                                 _args93079_)))))
                      (if (##pair? _args9306093068_)
                          (let ((_hd9306593094_ (##car _args9306093068_))
                                (_tl9306693096_ (##cdr _args9306093068_)))
                            (let* ((_prelude93099_ _hd9306593094_)
                                   (_args93101_ _tl9306693096_))
                              (_K9306493091_ _args93101_ _prelude93099_)))
                          (_else9306293076_)))))
                 (_read-lang93028_
                  (lambda (_inp93033_)
                    (let* ((_head93035_ (read-line _inp93033_))
                           (_$e93037_ (string-index__0 _head93035_ '#\space)))
                      (if _$e93037_
                          ((lambda (_ix93040_)
                             (let ((_lang93042_
                                    (substring _head93035_ '0 _ix93040_)))
                               (if (equal? _lang93042_ '"#lang")
                                   (let* ((_rest93044_
                                           (substring
                                            _head93035_
                                            (fx+ _ix93040_ '1)
                                            (string-length _head93035_)))
                                          (_args93055_
                                           (with-catch
                                            (lambda (_g9304593047_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path93022_
                                               _g9304593047_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest93044_
                                               (lambda (_g9305093052_)
                                                 (read-all
                                                  _g9305093052_
                                                  read)))))))
                                     (_read-lang-args93027_
                                      _inp93033_
                                      _args93055_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path93022_))))
                           _$e93037_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path93022_)))))
                 (_read-e93029_
                  (lambda (_inp93031_)
                    (if (eq? (peek-char _inp93031_) '#\#)
                        (_read-lang93028_ _inp93031_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path93022_)))))
          (gx#call-with-input-source-file _path93022_ _read-e93029_))))
    (define gx#core-read-module-package
      (lambda (_path92976_ _pre92977_ _ns92978_)
        (letrec ((_string-e92980_
                  (lambda (_e93020_)
                    (if (symbol? _e93020_)
                        (symbol->string _e93020_)
                        (if (string? _e93020_)
                            _e93020_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e93020_))))))
          (let _lp92982_ ((_dir92984_ (path-directory _path92976_))
                          (_pkg-path92985_ '()))
            (let ((_gerbil.pkg92987_ (path-expand '"gerbil.pkg" _dir92984_)))
              (if (file-exists? _gerbil.pkg92987_)
                  (let ((_plist92989_
                         (gx#core-library-package-plist__% _dir92984_ '#t)))
                    (if (null? _plist92989_)
                        (let ((_pkg92991_
                               (if (not (null? _pkg-path92985_))
                                   (string-join _pkg-path92985_ '"/")
                                   '#f)))
                          (values _pre92977_ _ns92978_ _pkg92991_))
                        (if (list? _plist92989_)
                            (let* ((_root92993_
                                    (pgetq__0 'package: _plist92989_))
                                   (_pkg92997_
                                    (let ((_pkg-path92995_
                                           (if _root92993_
                                               (cons (_string-e92980_
                                                      _root92993_)
                                                     _pkg-path92985_)
                                               _pkg-path92985_)))
                                      (if (not (null? _pkg-path92995_))
                                          (string-join _pkg-path92995_ '"/")
                                          '#f)))
                                   (_ns93004_
                                    (let ((_ns93002_
                                           (let ((_$e92999_ _ns92978_))
                                             (if _$e92999_
                                                 _$e92999_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist92989_)))))
                                      (if _ns93002_
                                          (_string-e92980_ _ns93002_)
                                          '#f)))
                                   (_pre93009_
                                    (let ((_$e93006_ _pre92977_))
                                      (if _$e93006_
                                          _$e93006_
                                          (pgetq__0 'prelude: _plist92989_)))))
                              (values _pre93009_ _ns93004_ _pkg92997_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist92989_))))
                  (let ((_dir*93012_
                         (path-strip-trailing-directory-separator _dir92984_)))
                    (if (or (string-empty? _dir*93012_)
                            (equal? _dir92984_ _dir*93012_))
                        (values _pre92977_ _ns92978_ '#f)
                        (let ((_xpath93017_ (path-strip-directory _dir*93012_))
                              (_xdir93018_ (path-directory _dir*93012_)))
                          (_lp92982_
                           _xdir93018_
                           (cons _xpath93017_ _pkg-path92985_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path92974_)
        (path-strip-extension (path-strip-directory _path92974_))))
    (define gx#core-module-path->id
      (lambda (_path92972_)
        (string->symbol (gx#core-module-path->namespace _path92972_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path92951_ _rel92952_)
        (let* ((_path92954_ (gx#stx-e _stx-path92951_))
               (_path92956_
                (if (string-empty? (path-extension _path92954_))
                    (string-append _path92954_ '".ss")
                    _path92954_)))
          (gx#core-resolve-path__%
           _path92956_
           (let ((_$e92959_ (gx#stx-source _stx-path92951_)))
             (if _$e92959_ _$e92959_ _rel92952_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path92965_)
        (let ((_rel92967_ '#f))
          (gx#core-resolve-module-path__% _stx-path92965_ _rel92967_))))
    (define gx#core-resolve-module-path
      (lambda _g94533_
        (let ((_g94532_ (##length _g94533_)))
          (cond ((##fx= _g94532_ 1)
                 (apply (lambda (_stx-path92965_)
                          (gx#core-resolve-module-path__0 _stx-path92965_))
                        _g94533_))
                ((##fx= _g94532_ 2)
                 (apply (lambda (_stx-path92969_ _rel92970_)
                          (gx#core-resolve-module-path__%
                           _stx-path92969_
                           _rel92970_))
                        _g94533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94533_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92837_)
        (let* ((_spath92839_ (symbol->string (gx#stx-e _libpath92837_)))
               (_spath92841_
                (substring _spath92839_ '1 (string-length _spath92839_)))
               (_ext92843_ (path-extension _spath92841_))
               (_ssi92845_
                (if (string-empty? _ext92843_)
                    (string-append _spath92841_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92841_)
                     '".ssi")))
               (_srcs92849_
                (if (string-empty? _ext92843_)
                    (map (lambda (_ext92847_)
                           (string-append _spath92841_ _ext92847_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92841_ '()))))
          (let _lp92852_ ((_rest92854_ (load-path)))
            (let* ((_rest9285592864_ _rest92854_)
                   (_E9285892868_
                    (lambda ()
                      (error '"No clause matching" _rest9285592864_))))
              (let ((_K9286092938_
                     (lambda (_rest92879_ _dir92880_)
                       (letrec ((_resolve92882_
                                 (lambda (_ssi92894_ _srcs92895_)
                                   (let ((_compiled-path92897_
                                          (path-expand _ssi92894_ _dir92880_)))
                                     (if (file-exists? _compiled-path92897_)
                                         (path-normalize _compiled-path92897_)
                                         (let _lpr92899_ ((_rest-src92901_
                                                           _srcs92895_))
                                           (let* ((_rest-src9290292910_
                                                   _rest-src92901_)
                                                  (_else9290492918_
                                                   (lambda ()
                                                     (_lp92852_ _rest92879_)))
                                                  (_K9290692926_
                                                   (lambda (_rest-src92921_
                                                            _src92922_)
                                                     (let ((_src-path92924_
                                                            (path-expand
                                                             _src92922_
                                                             _dir92880_)))
                                                       (if (file-exists?
                                                            _src-path92924_)
                                                           (path-normalize
                                                            _src-path92924_)
                                                           (_lpr92899_
                                                            _rest-src92921_))))))
                                             (if (##pair? _rest-src9290292910_)
                                                 (let ((_hd9290792929_
                                                        (##car _rest-src9290292910_))
                                                       (_tl9290892931_
                                                        (##cdr _rest-src9290292910_)))
                                                   (let* ((_src92934_
                                                           _hd9290792929_)
                                                          (_rest-src92936_
                                                           _tl9290892931_))
                                                     (_K9290692926_
                                                      _rest-src92936_
                                                      _src92934_)))
                                                 (_else9290492918_)))))))))
                         (let ((_$e92884_
                                (gx#core-library-package-path-prefix
                                 _dir92880_)))
                           (if _$e92884_
                               ((lambda (_prefix92887_)
                                  (if (string-prefix?
                                       _prefix92887_
                                       _spath92841_)
                                      (let ((_ssi92891_
                                             (substring
                                              _ssi92845_
                                              (string-length _prefix92887_)
                                              (string-length _ssi92845_)))
                                            (_srcs92892_
                                             (map (lambda (_src92889_)
                                                    (substring
                                                     _src92889_
                                                     (string-length
                                                      _prefix92887_)
                                                     (string-length
                                                      _src92889_)))
                                                  _srcs92849_)))
                                        (_resolve92882_
                                         _ssi92891_
                                         _srcs92892_))
                                      (_lp92852_ _rest92879_)))
                                _$e92884_)
                               (_resolve92882_ _ssi92845_ _srcs92849_))))))
                    (_K9285992873_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92837_))))
                (let ((_try-match9285792876_
                       (lambda ()
                         (if (##null? _rest9285592864_)
                             (_K9285992873_)
                             (_E9285892868_)))))
                  (if (##pair? _rest9285592864_)
                      (let ((_tl9286292943_ (##cdr _rest9285592864_))
                            (_hd9286192941_ (##car _rest9285592864_)))
                        (let ((_dir92946_ _hd9286192941_)
                              (_rest92948_ _tl9286292943_))
                          (_K9286092938_ _rest92948_ _dir92946_)))
                      (_try-match9285792876_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92810_)
        (letrec ((_resolve92812_
                  (lambda (_path92829_ _base92830_)
                    (let ((_$e92832_ (string-rindex__0 _base92830_ '#\/)))
                      (if _$e92832_
                          ((lambda (_idx92835_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92830_ '0 _idx92835_)
                                '"/"
                                _path92829_))))
                           _$e92832_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92829_))))))))
          (let ((_spath92814_ (symbol->string (gx#stx-e _modpath92810_)))
                (_mod92815_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92815_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92810_))
            (let ((_mpath92817_
                   (symbol->string
                    (##structure-ref
                     _mod92815_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92819_ ((_spath92821_ _spath92814_)
                              (_mpath92822_ _mpath92817_))
                (if (string-prefix? '"../" _spath92821_)
                    (let ((_$e92824_ (string-rindex__0 _mpath92822_ '#\/)))
                      (if _$e92824_
                          ((lambda (_idx92827_)
                             (_lp92819_
                              (substring
                               _spath92821_
                               '3
                               (string-length _spath92821_))
                              (substring _mpath92822_ '0 _idx92827_)))
                           _$e92824_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92810_)))
                    (if (string-prefix? '"./" _spath92821_)
                        (_lp92819_
                         (substring
                          _spath92821_
                          '2
                          (string-length _spath92821_))
                         _mpath92822_)
                        (_resolve92812_ _spath92821_ _mpath92822_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92803_)
        (let ((_$e92805_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92803_))))
          (if _$e92805_
              ((lambda (_pkg92808_)
                 (string-append (symbol->string _pkg92808_) '"/"))
               _$e92805_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92777_ _exists?92778_)
        (let ((_$e92780_ (hash-get gx#__module-pkg-cache _dir92777_)))
          (if _$e92780_
              (values _$e92780_)
              (let* ((_gerbil.pkg92783_ (path-expand '"gerbil.pkg" _dir92777_))
                     (_plist92790_
                      (if (or _exists?92778_ (file-exists? _gerbil.pkg92783_))
                          (let ((_e92788_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92783_
                                  read)))
                            (if (eof-object? _e92788_)
                                '()
                                (if (list? _e92788_)
                                    _e92788_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92783_
                                     _e92788_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92777_ _plist92790_)
                _plist92790_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92796_)
        (let ((_exists?92798_ '#f))
          (gx#core-library-package-plist__% _dir92796_ _exists?92798_))))
    (define gx#core-library-package-plist
      (lambda _g94535_
        (let ((_g94534_ (##length _g94535_)))
          (cond ((##fx= _g94534_ 1)
                 (apply (lambda (_dir92796_)
                          (gx#core-library-package-plist__0 _dir92796_))
                        _g94535_))
                ((##fx= _g94534_ 2)
                 (apply (lambda (_dir92800_ _exists?92801_)
                          (gx#core-library-package-plist__%
                           _dir92800_
                           _exists?92801_))
                        _g94535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94535_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92774_) (gx#core-special-module-path? _stx92774_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92772_) (gx#core-special-module-path? _stx92772_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92767_ _char92768_)
        (if (gx#identifier? _stx92767_)
            (if (interned-symbol? (gx#stx-e _stx92767_))
                (let ((_str92770_ (symbol->string (gx#stx-e _stx92767_))))
                  (if (fx> (string-length _str92770_) '1)
                      (eq? (string-ref _str92770_ '0) _char92768_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92761_)
        (gx#core-bound-identifier?__%
         _stx92761_
         (lambda (_g9276292764_)
           (gx#expander-binding?__% _g9276292764_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92755_)
        (gx#core-bound-identifier?__%
         _stx92755_
         (lambda (_g9275692758_)
           (gx#expander-binding?__% _g9275692758_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92742_)
        (letrec ((_module-prelude?92744_
                  (lambda (_e92750_)
                    (let ((_$e92752_
                           (##structure-instance-of?
                            _e92750_
                            'gx#module-context::t)))
                      (if _$e92752_
                          _$e92752_
                          (##structure-instance-of?
                           _e92750_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92742_
           (lambda (_g9274592747_)
             (gx#expander-binding?__%
              _g9274592747_
              _module-prelude?92744_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92672_ _ctx92673_ _force-weak?92674_)
        (let* ((_in9267592684_ _in92672_)
               (_E9267792688_
                (lambda () (error '"No clause matching" _in9267592684_)))
               (_K9267892701_
                (lambda (_weak?92691_ _phi92692_ _key92693_ _source92694_)
                  (gx#core-bind!__%
                   _key92693_
                   (let ((_e92696_
                          (gx#core-resolve-module-export _source92694_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92696_ '1 gx#binding::t '#f)
                      _key92693_
                      _phi92692_
                      _e92696_
                      (##unchecked-structure-ref
                       _source92694_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92698_ _force-weak?92674_))
                        (if _$e92698_ _$e92698_ _weak?92691_))))
                   gx#core-context-rebind?
                   _phi92692_
                   _ctx92673_))))
          (if (##structure-direct-instance-of?
               _in9267592684_
               'gx#module-import::t)
              (let* ((_e9267992704_
                      (##unchecked-structure-ref
                       _in9267592684_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92707_ _e9267992704_)
                     (_e9268092709_
                      (##unchecked-structure-ref
                       _in9267592684_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92712_ _e9268092709_)
                     (_e9268192714_
                      (##unchecked-structure-ref
                       _in9267592684_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92717_ _e9268192714_)
                     (_e9268292719_
                      (##unchecked-structure-ref
                       _in9267592684_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92722_ _e9268292719_))
                (_K9267892701_
                 _weak?92722_
                 _phi92717_
                 _key92712_
                 _source92707_))
              (_E9267792688_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92727_)
        (let* ((_ctx92729_ (gx#current-expander-context))
               (_force-weak?92731_ '#f))
          (gx#core-bind-import!__% _in92727_ _ctx92729_ _force-weak?92731_))))
    (define gx#core-bind-import!__1
      (lambda (_in92733_ _ctx92734_)
        (let ((_force-weak?92736_ '#f))
          (gx#core-bind-import!__% _in92733_ _ctx92734_ _force-weak?92736_))))
    (define gx#core-bind-import!
      (lambda _g94537_
        (let ((_g94536_ (##length _g94537_)))
          (cond ((##fx= _g94536_ 1)
                 (apply (lambda (_in92727_)
                          (gx#core-bind-import!__0 _in92727_))
                        _g94537_))
                ((##fx= _g94536_ 2)
                 (apply (lambda (_in92733_ _ctx92734_)
                          (gx#core-bind-import!__1 _in92733_ _ctx92734_))
                        _g94537_))
                ((##fx= _g94536_ 3)
                 (apply (lambda (_in92738_ _ctx92739_ _force-weak?92740_)
                          (gx#core-bind-import!__%
                           _in92738_
                           _ctx92739_
                           _force-weak?92740_))
                        _g94537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94537_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92658_ _ctx92659_)
        (gx#core-bind-import!__% _in92658_ _ctx92659_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92664_)
        (let ((_ctx92666_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92664_ _ctx92666_))))
    (define gx#core-bind-weak-import!
      (lambda _g94539_
        (let ((_g94538_ (##length _g94539_)))
          (cond ((##fx= _g94538_ 1)
                 (apply (lambda (_in92664_)
                          (gx#core-bind-weak-import!__0 _in92664_))
                        _g94539_))
                ((##fx= _g94538_ 2)
                 (apply (lambda (_in92668_ _ctx92669_)
                          (gx#core-bind-weak-import!__% _in92668_ _ctx92669_))
                        _g94539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94539_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92549_)
        (letrec ((_subst92551_
                  (lambda (_key92597_)
                    (let* ((_key9259892606_ _key92597_)
                           (_else9260092614_ (lambda () _key92597_))
                           (_K9260292645_
                            (lambda (_mark92617_ _id92618_)
                              (let* ((_mark9261992625_ _mark92617_)
                                     (_E9262192629_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9261992625_)))
                                     (_K9262292637_
                                      (lambda (_subst92632_)
                                        (let ((_$e92634_
                                               (if _subst92632_
                                                   (hash-get
                                                    _subst92632_
                                                    _id92618_)
                                                   '#f)))
                                          (if _$e92634_
                                              _$e92634_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92597_))))))
                                (if (##structure-instance-of?
                                     _mark9261992625_
                                     'gx#expander-mark::t)
                                    (let* ((_e9262392640_
                                            (##unchecked-structure-ref
                                             _mark9261992625_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92643_ _e9262392640_))
                                      (_K9262292637_ _subst92643_))
                                    (_E9262192629_))))))
                      (if (##pair? _key9259892606_)
                          (let ((_hd9260392648_ (##car _key9259892606_))
                                (_tl9260492650_ (##cdr _key9259892606_)))
                            (let* ((_id92653_ _hd9260392648_)
                                   (_mark92655_ _tl9260492650_))
                              (_K9260292645_ _mark92655_ _id92653_)))
                          (_else9260092614_))))))
          (let* ((_out9255292562_ _out92549_)
                 (_E9255492566_
                  (lambda () (error '"No clause matching" _out9255292562_)))
                 (_K9255592573_
                  (lambda (_phi92569_ _key92570_ _ctx92571_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92571_ _phi92569_)
                     (_subst92551_ _key92570_)))))
            (if (##structure-direct-instance-of?
                 _out9255292562_
                 'gx#module-export::t)
                (let* ((_e9255692576_
                        (##unchecked-structure-ref
                         _out9255292562_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92579_ _e9255692576_)
                       (_e9255792581_
                        (##unchecked-structure-ref
                         _out9255292562_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92584_ _e9255792581_)
                       (_e9255892586_
                        (##unchecked-structure-ref
                         _out9255292562_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92589_ _e9255892586_)
                       (_e9255992591_
                        (##unchecked-structure-ref
                         _out9255292562_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9256092594_
                        (##unchecked-structure-ref
                         _out9255292562_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9255592573_ _phi92589_ _key92584_ _ctx92579_))
                (_E9255492566_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92474_ _rename92475_ _dphi92476_)
        (let* ((_out9247792487_ _out92474_)
               (_E9247992491_
                (lambda () (error '"No clause matching" _out9247792487_)))
               (_K9248092503_
                (lambda (_weak?92494_
                         _name92495_
                         _phi92496_
                         _key92497_
                         _ctx92498_)
                  (##structure
                   gx#module-import::t
                   _out92474_
                   (let ((_$e92500_ _rename92475_))
                     (if _$e92500_ _$e92500_ _name92495_))
                   (fx+ _phi92496_ _dphi92476_)
                   _weak?92494_))))
          (if (##structure-direct-instance-of?
               _out9247792487_
               'gx#module-export::t)
              (let* ((_e9248192506_
                      (##unchecked-structure-ref
                       _out9247792487_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92509_ _e9248192506_)
                     (_e9248292511_
                      (##unchecked-structure-ref
                       _out9247792487_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92514_ _e9248292511_)
                     (_e9248392516_
                      (##unchecked-structure-ref
                       _out9247792487_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92519_ _e9248392516_)
                     (_e9248492521_
                      (##unchecked-structure-ref
                       _out9247792487_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92524_ _e9248492521_)
                     (_e9248592526_
                      (##unchecked-structure-ref
                       _out9247792487_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92529_ _e9248592526_))
                (_K9248092503_
                 _weak?92529_
                 _name92524_
                 _phi92519_
                 _key92514_
                 _ctx92509_))
              (_E9247992491_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92534_)
        (let* ((_rename92536_ '#f) (_dphi92538_ '0))
          (gx#core-module-export->import__%
           _out92534_
           _rename92536_
           _dphi92538_))))
    (define gx#core-module-export->import__1
      (lambda (_out92540_ _rename92541_)
        (let ((_dphi92543_ '0))
          (gx#core-module-export->import__%
           _out92540_
           _rename92541_
           _dphi92543_))))
    (define gx#core-module-export->import
      (lambda _g94541_
        (let ((_g94540_ (##length _g94541_)))
          (cond ((##fx= _g94540_ 1)
                 (apply (lambda (_out92534_)
                          (gx#core-module-export->import__0 _out92534_))
                        _g94541_))
                ((##fx= _g94540_ 2)
                 (apply (lambda (_out92540_ _rename92541_)
                          (gx#core-module-export->import__1
                           _out92540_
                           _rename92541_))
                        _g94541_))
                ((##fx= _g94540_ 3)
                 (apply (lambda (_out92545_ _rename92546_ _dphi92547_)
                          (gx#core-module-export->import__%
                           _out92545_
                           _rename92546_
                           _dphi92547_))
                        _g94541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94541_))))))
    (define gx#core-expand-module%
      (lambda (_stx92376_)
        (letrec ((_make-context92378_
                  (lambda (_id92455_)
                    (let* ((_super92457_ (gx#current-expander-context))
                           (_bind-id92459_ (gx#stx-e _id92455_))
                           (_mod-id92461_
                            (if (##structure-instance-of?
                                 _super92457_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92457_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92459_)
                                _bind-id92459_))
                           (_ns92463_ (symbol->string _mod-id92461_))
                           (_path92470_
                            (if (##structure-instance-of?
                                 _super92457_
                                 'gx#module-context::t)
                                (let ((_path92465_
                                       (##unchecked-structure-ref
                                        _super92457_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92465_)
                                          (null? _path92465_))
                                      (cons _bind-id92459_ _path92465_)
                                      (if (not _path92465_)
                                          _bind-id92459_
                                          (cons _bind-id92459_
                                                (cons _path92465_ '())))))
                                _bind-id92459_)))
                      (let ((__obj94517
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
                         __obj94517
                         _mod-id92461_
                         _super92457_
                         _ns92463_
                         _path92470_)
                        __obj94517))))
                 (_valid-module-id?92379_
                  (lambda (_id92430_)
                    (let* ((_str92432_ (symbol->string _id92430_))
                           (_len92434_ (string-length _str92432_)))
                      (if (fx>= _len92434_ '1)
                          (let _loop92437_ ((_index92439_
                                             (fx- (string-length _str92432_)
                                                  '1)))
                            (if (fx>= _index92439_ '0)
                                (let ((_c92441_
                                       (string-ref _str92432_ _index92439_)))
                                  (if (or (and (char>=? _c92441_ '#\a)
                                               (char<=? _c92441_ '#\z))
                                          (and (char>=? _c92441_ '#\A)
                                               (char<=? _c92441_ '#\Z))
                                          (and (char>=? _c92441_ '#\0)
                                               (char<=? _c92441_ '#\9))
                                          (char=? _c92441_ '#\_)
                                          (char=? _c92441_ '#\-))
                                      (_loop92437_ (fx- _index92439_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9238092390_ _stx92376_)
                 (_E9238292394_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9238092390_)))
                 (_E9238192426_
                  (lambda ()
                    (if (gx#stx-pair? _e9238092390_)
                        (let ((_e9238392398_ (gx#syntax-e _e9238092390_)))
                          (let ((_hd9238492401_ (##car _e9238392398_))
                                (_tl9238592403_ (##cdr _e9238392398_)))
                            (if (gx#stx-pair? _tl9238592403_)
                                (let ((_e9238692406_
                                       (gx#syntax-e _tl9238592403_)))
                                  (let ((_hd9238792409_ (##car _e9238692406_))
                                        (_tl9238892411_ (##cdr _e9238692406_)))
                                    (let* ((_id92414_ _hd9238792409_)
                                           (_body92416_ _tl9238892411_))
                                      (if (and (gx#identifier? _id92414_)
                                               (gx#stx-list? _body92416_))
                                          (if (_valid-module-id?92379_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92418_
                                                      (_make-context92378_
                                                       _id92414_))
                                                     (_body92420_
                                                      (gx#core-expand-module-begin
                                                       _body92416_
                                                       _ctx92418_))
                                                     (_body92422_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92420_)
                                                       (gx#stx-source
                                                        _stx92376_))))
                                                (##unchecked-structure-set!
                                                 _ctx92418_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92422_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92418_
                                                 _body92422_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92414_
                                                 _ctx92418_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92414_)
                                                  _body92422_)
                                                 (gx#stx-source _stx92376_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92376_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9238292394_)))))
                                (_E9238292394_))))
                        (_E9238292394_)))))
            (_E9238192426_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92342_ _ctx92343_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92346_
                   (gx#core-expand-head (cons '%%begin-module _body92342_)))
                  (_e9234792354_ _stx92346_)
                  (_E9234992358_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92346_)))
                  (_E9234892372_
                   (lambda ()
                     (if (gx#stx-pair? _e9234792354_)
                         (let ((_e9235092362_ (gx#syntax-e _e9234792354_)))
                           (let ((_hd9235192365_ (##car _e9235092362_))
                                 (_tl9235292367_ (##cdr _e9235092362_)))
                             (if (and (gx#identifier? _hd9235192365_)
                                      (gx#core-identifier=?
                                       _hd9235192365_
                                       '%#begin-module))
                                 (let ((_body92370_ _tl9235292367_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92346_)
                                           _body92370_
                                           (gx#core-expand-module-body
                                            _body92370_))
                                       (_E9234992358_)))
                                 (_E9234992358_))))
                         (_E9234992358_)))))
             (_E9234892372_)))
         gx#current-expander-context
         _ctx92343_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body92138_)
        (letrec ((_expand-special92140_
                  (lambda (_hd92269_ _K92270_ _rest92271_ _r92272_)
                    (let* ((_e9227392290_ _hd92269_)
                           (_E9228592294_
                            (lambda ()
                              (_K92270_
                               _rest92271_
                               (cons (gx#core-expand-top _hd92269_)
                                     _r92272_))))
                           (_E9227592306_
                            (lambda ()
                              (if (gx#stx-pair? _e9227392290_)
                                  (let ((_e9228692298_
                                         (gx#syntax-e _e9227392290_)))
                                    (let ((_hd9228792301_
                                           (##car _e9228692298_))
                                          (_tl9228892303_
                                           (##cdr _e9228692298_)))
                                      (if (and (gx#identifier? _hd9228792301_)
                                               (gx#core-identifier=?
                                                _hd9228792301_
                                                '%#export))
                                          (if '#t
                                              (_K92270_
                                               _rest92271_
                                               (cons _hd92269_ _r92272_))
                                              (_E9228592294_))
                                          (_E9228592294_))))
                                  (_E9228592294_))))
                           (_E9227492338_
                            (lambda ()
                              (if (gx#stx-pair? _e9227392290_)
                                  (let ((_e9227692310_
                                         (gx#syntax-e _e9227392290_)))
                                    (let ((_hd9227792313_
                                           (##car _e9227692310_))
                                          (_tl9227892315_
                                           (##cdr _e9227692310_)))
                                      (if (and (gx#identifier? _hd9227792313_)
                                               (gx#core-identifier=?
                                                _hd9227792313_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9227892315_)
                                              (let ((_e9227992318_
                                                     (gx#syntax-e
                                                      _tl9227892315_)))
                                                (let ((_hd9228092321_
                                                       (##car _e9227992318_))
                                                      (_tl9228192323_
                                                       (##cdr _e9227992318_)))
                                                  (let ((_hd-bind92326_
                                                         _hd9228092321_))
                                                    (if (gx#stx-pair?
                                                         _tl9228192323_)
                                                        (let ((_e9228292328_
                                                               (gx#syntax-e
                                                                _tl9228192323_)))
                                                          (let ((_hd9228392331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9228292328_))
                        (_tl9228492333_ (##cdr _e9228292328_)))
                    (let ((_expr92336_ _hd9228392331_))
                      (if (gx#stx-null? _tl9228492333_)
                          (if (gx#core-bind-values? _hd-bind92326_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92326_)
                                (_K92270_
                                 _rest92271_
                                 (cons _hd92269_ _r92272_)))
                              (_E9227592306_))
                          (_E9227592306_)))))
                (_E9227592306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9227592306_))
                                          (_E9227592306_))))
                                  (_E9227592306_)))))
                      (_E9227492338_))))
                 (_expand-body92141_
                  (lambda (_rbody92143_)
                    (let _lp92145_ ((_rest92147_ _rbody92143_)
                                    (_body92148_ '()))
                      (let* ((_rest9214992157_ _rest92147_)
                             (_else9215192165_ (lambda () _body92148_))
                             (_K9215392257_
                              (lambda (_rest92168_ _hd92169_)
                                (let* ((_e9217092191_ _hd92169_)
                                       (_E9218692195_
                                        (lambda ()
                                          (_lp92145_
                                           _rest92168_
                                           (cons (gx#core-expand-expression
                                                  _hd92169_)
                                                 _body92148_))))
                                       (_E9218292209_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9217092191_)
                                              (let ((_e9218792199_
                                                     (gx#syntax-e
                                                      _e9217092191_)))
                                                (let ((_hd9218892202_
                                                       (##car _e9218792199_))
                                                      (_tl9218992204_
                                                       (##cdr _e9218792199_)))
                                                  (let ((_form92207_
                                                         _hd9218892202_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form92207_
                                                         gx#special-form-binding?)
                                                        (_lp92145_
                                                         _rest92168_
                                                         (cons _hd92169_
                                                               _body92148_))
                                                        (_E9218692195_)))))
                                              (_E9218692195_))))
                                       (_E9217292221_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9217092191_)
                                              (let ((_e9218392213_
                                                     (gx#syntax-e
                                                      _e9217092191_)))
                                                (let ((_hd9218492216_
                                                       (##car _e9218392213_))
                                                      (_tl9218592218_
                                                       (##cdr _e9218392213_)))
                                                  (if (and (gx#identifier?
                                                            _hd9218492216_)
                                                           (gx#core-identifier=?
                                                            _hd9218492216_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp92145_
                                                           _rest92168_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92169_)
                         _body92148_))
                  (_E9218292209_))
              (_E9218292209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9218292209_))))
                                       (_E9217192253_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9217092191_)
                                              (let ((_e9217392225_
                                                     (gx#syntax-e
                                                      _e9217092191_)))
                                                (let ((_hd9217492228_
                                                       (##car _e9217392225_))
                                                      (_tl9217592230_
                                                       (##cdr _e9217392225_)))
                                                  (if (and (gx#identifier?
                                                            _hd9217492228_)
                                                           (gx#core-identifier=?
                                                            _hd9217492228_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9217592230_)
                                                          (let ((_e9217692233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9217592230_)))
                    (let ((_hd9217792236_ (##car _e9217692233_))
                          (_tl9217892238_ (##cdr _e9217692233_)))
                      (let ((_hd-bind92241_ _hd9217792236_))
                        (if (gx#stx-pair? _tl9217892238_)
                            (let ((_e9217992243_ (gx#syntax-e _tl9217892238_)))
                              (let ((_hd9218092246_ (##car _e9217992243_))
                                    (_tl9218192248_ (##cdr _e9217992243_)))
                                (let ((_expr92251_ _hd9218092246_))
                                  (if (gx#stx-null? _tl9218192248_)
                                      (if '#t
                                          (_lp92145_
                                           _rest92168_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind92241_)
                                                   (gx#core-expand-expression
                                                    _expr92251_))
                                                  (gx#stx-source _hd92169_))
                                                 _body92148_))
                                          (_E9217292221_))
                                      (_E9217292221_)))))
                            (_E9217292221_)))))
                  (_E9217292221_))
              (_E9217292221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9217292221_)))))
                                  (_E9217192253_)))))
                        (if (##pair? _rest9214992157_)
                            (let ((_hd9215492260_ (##car _rest9214992157_))
                                  (_tl9215592262_ (##cdr _rest9214992157_)))
                              (let* ((_hd92265_ _hd9215492260_)
                                     (_rest92267_ _tl9215592262_))
                                (_K9215392257_ _rest92267_ _hd92265_)))
                            (_else9215192165_)))))))
          (_expand-body92141_
           (gx#core-expand-block__%
            (cons '%#begin-module _body92138_)
            _expand-special92140_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx91981_
               _expanded?91982_
               _method91983_
               _current-phi91984_
               _expand191985_)
        (letrec ((_K91987_
                  (lambda (_rest92105_ _r92106_)
                    (let* ((_e9210792114_ _rest92105_)
                           (_E9210992118_ (lambda () _r92106_))
                           (_E9210892134_
                            (lambda ()
                              (if (gx#stx-pair? _e9210792114_)
                                  (let ((_e9211092122_
                                         (gx#syntax-e _e9210792114_)))
                                    (let ((_hd9211192125_
                                           (##car _e9211092122_))
                                          (_tl9211292127_
                                           (##cdr _e9211092122_)))
                                      (let* ((_hd92130_ _hd9211192125_)
                                             (_rest92132_ _tl9211292127_))
                                        (if '#t
                                            (_step91988_
                                             _hd92130_
                                             _rest92132_
                                             _r92106_)
                                            (_E9210992118_)))))
                                  (_E9210992118_)))))
                      (_E9210892134_))))
                 (_step91988_
                  (lambda (_hd92019_ _rest92020_ _r92021_)
                    (let* ((_e9202292040_ _hd92019_)
                           (_E9203592044_
                            (lambda ()
                              (if (_expanded?91982_ (gx#stx-e _hd92019_))
                                  (_K91987_
                                   _rest92020_
                                   (cons (gx#stx-e _hd92019_) _r92021_))
                                  (_expand191985_
                                   _hd92019_
                                   _K91987_
                                   _rest92020_
                                   _r92021_))))
                           (_E9203192060_
                            (lambda ()
                              (if (gx#stx-pair? _e9202292040_)
                                  (let ((_e9203692048_
                                         (gx#syntax-e _e9202292040_)))
                                    (let ((_hd9203792051_
                                           (##car _e9203692048_))
                                          (_tl9203892053_
                                           (##cdr _e9203692048_)))
                                      (let* ((_macro92056_ _hd9203792051_)
                                             (_body92058_ _tl9203892053_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro92056_
                                             gx#syntax-binding?)
                                            (_K91987_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro92056_)
                                                    _hd92019_
                                                    _method91983_)
                                                   _rest92020_)
                                             _r92021_)
                                            (_E9203592044_)))))
                                  (_E9203592044_))))
                           (_E9202492074_
                            (lambda ()
                              (if (gx#stx-pair? _e9202292040_)
                                  (let ((_e9203292064_
                                         (gx#syntax-e _e9202292040_)))
                                    (let ((_hd9203392067_
                                           (##car _e9203292064_))
                                          (_tl9203492069_
                                           (##cdr _e9203292064_)))
                                      (if (eq? (gx#stx-e _hd9203392067_)
                                               'begin:)
                                          (let ((_body92072_ _tl9203492069_))
                                            (if '#t
                                                (_K91987_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest92020_
                                                  _body92072_)
                                                 _r92021_)
                                                (_E9203192060_)))
                                          (_E9203192060_))))
                                  (_E9203192060_))))
                           (_E9202392101_
                            (lambda ()
                              (if (gx#stx-pair? _e9202292040_)
                                  (let ((_e9202592078_
                                         (gx#syntax-e _e9202292040_)))
                                    (let ((_hd9202692081_
                                           (##car _e9202592078_))
                                          (_tl9202792083_
                                           (##cdr _e9202592078_)))
                                      (if (eq? (gx#stx-e _hd9202692081_) 'phi:)
                                          (if (gx#stx-pair? _tl9202792083_)
                                              (let ((_e9202892086_
                                                     (gx#syntax-e
                                                      _tl9202792083_)))
                                                (let ((_hd9202992089_
                                                       (##car _e9202892086_))
                                                      (_tl9203092091_
                                                       (##cdr _e9202892086_)))
                                                  (let* ((_dphi92094_
                                                          _hd9202992089_)
                                                         (_body92096_
                                                          _tl9203092091_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi92094_)
                                                        (let ((_rbody92099_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K91987_ _body92096_ '()))
                        _current-phi91984_
                        (fx+ (gx#stx-e _dphi92094_) (_current-phi91984_)))))
                  (_K91987_ _rest92020_ (foldr1 cons _r92021_ _rbody92099_)))
                (_E9202492074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9202492074_))
                                          (_E9202492074_))))
                                  (_E9202492074_)))))
                      (_E9202392101_)))))
          (let* ((_e9198991996_ _stx91981_)
                 (_E9199192000_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9198991996_)))
                 (_E9199092015_
                  (lambda ()
                    (if (gx#stx-pair? _e9198991996_)
                        (let ((_e9199292004_ (gx#syntax-e _e9198991996_)))
                          (let ((_hd9199392007_ (##car _e9199292004_))
                                (_tl9199492009_ (##cdr _e9199292004_)))
                            (let ((_body92012_ _tl9199492009_))
                              (if '#t
                                  (if (_current-phi91984_)
                                      (_K91987_ _body92012_ '())
                                      (call-with-parameters
                                       (lambda () (_K91987_ _body92012_ '()))
                                       _current-phi91984_
                                       (gx#current-expander-phi)))
                                  (_E9199192000_)))))
                        (_E9199192000_)))))
            (_E9199092015_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91648_ _internal-expand?91649_)
        (letrec ((_expand191651_
                  (lambda (_hd91961_ _K91962_ _rest91963_ _r91964_)
                    (if (gx#core-bound-module? _hd91961_)
                        (_import191652_
                         (gx#syntax-local-e__0 _hd91961_)
                         _K91962_
                         _rest91963_
                         _r91964_)
                        (if (gx#core-library-module-path? _hd91961_)
                            (_import191652_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd91961_))
                             _K91962_
                             _rest91963_
                             _r91964_)
                            (if (gx#core-library-relative-module-path?
                                 _hd91961_)
                                (_import191652_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd91961_))
                                 _K91962_
                                 _rest91963_
                                 _r91964_)
                                (let ((_e91966_ (gx#stx-e _hd91961_)))
                                  (if (pair? _e91966_)
                                      (let ((_$e91968_
                                             (gx#stx-e (car _e91966_))))
                                        (if (eq? 'spec: _$e91968_)
                                            (_import-spec91655_
                                             _hd91961_
                                             _K91962_
                                             _rest91963_
                                             _r91964_)
                                            (if (eq? 'in: _$e91968_)
                                                (_import-submodule91653_
                                                 _hd91961_
                                                 _K91962_
                                                 _rest91963_
                                                 _r91964_)
                                                (if (eq? 'runtime: _$e91968_)
                                                    (_import-runtime91654_
                                                     _hd91961_
                                                     _K91962_
                                                     _rest91963_
                                                     _r91964_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91648_
                                                     _hd91961_)))))
                                      (if (string? _e91966_)
                                          (_import191652_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd91961_
                                             (gx#stx-source _stx91648_)))
                                           _K91962_
                                           _rest91963_
                                           _r91964_)
                                          (if (##structure-instance-of?
                                               _e91966_
                                               'gx#module-context::t)
                                              (_K91962_
                                               _rest91963_
                                               (cons _e91966_ _r91964_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91648_
                                               _hd91961_))))))))))
                 (_import191652_
                  (lambda (_ctx91950_ _K91951_ _rest91952_ _r91953_)
                    (let ((_dphi91955_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K91951_
                       _rest91952_
                       (cons (##structure
                              gx#import-set::t
                              _ctx91950_
                              _dphi91955_
                              (map (lambda (_g9195691958_)
                                     (gx#core-module-export->import__%
                                      _g9195691958_
                                      '#f
                                      _dphi91955_))
                                   (##unchecked-structure-ref
                                    _ctx91950_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r91953_)))))
                 (_import-submodule91653_
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
                                            (_import191652_
                                             (_import-spec-source91656_
                                              _spath91944_)
                                             _K91918_
                                             _rest91919_
                                             _r91920_)
                                            (_E9192391932_)))))
                                  (_E9192391932_)))))
                      (_E9192291946_))))
                 (_import-runtime91654_
                  (lambda (_hd91884_ _K91885_ _rest91886_ _r91887_)
                    (let* ((_e9188891895_ _hd91884_)
                           (_E9189091899_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9188891895_)))
                           (_E9188991913_
                            (lambda ()
                              (if (gx#stx-pair? _e9188891895_)
                                  (let ((_e9189191903_
                                         (gx#syntax-e _e9188891895_)))
                                    (let ((_hd9189291906_
                                           (##car _e9189191903_))
                                          (_tl9189391908_
                                           (##cdr _e9189191903_)))
                                      (let ((_spath91911_ _tl9189391908_))
                                        (if '#t
                                            (_K91885_
                                             _rest91886_
                                             (cons (_import-spec-source91656_
                                                    _spath91911_)
                                                   _r91887_))
                                            (_E9189091899_)))))
                                  (_E9189091899_)))))
                      (_E9188991913_))))
                 (_import-spec91655_
                  (lambda (_hd91723_ _K91724_ _rest91725_ _r91726_)
                    (let* ((_e9172791744_ _hd91723_)
                           (_E9173691748_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9172791744_)))
                           (_E9172991858_
                            (lambda ()
                              (if (gx#stx-pair? _e9172791744_)
                                  (let ((_e9173791752_
                                         (gx#syntax-e _e9172791744_)))
                                    (let ((_hd9173891755_
                                           (##car _e9173791752_))
                                          (_tl9173991757_
                                           (##cdr _e9173791752_)))
                                      (if (gx#stx-pair? _tl9173991757_)
                                          (let ((_e9174091760_
                                                 (gx#syntax-e _tl9173991757_)))
                                            (let ((_hd9174191763_
                                                   (##car _e9174091760_))
                                                  (_tl9174291765_
                                                   (##cdr _e9174091760_)))
                                              (let* ((_path91768_
                                                      _hd9174191763_)
                                                     (_specs91770_
                                                      _tl9174291765_))
                                                (if '#t
                                                    (let ((_src-ctx91772_
                                                           (_import-spec-source91656_
                                                            _path91768_))
                                                          (_exports91773_
                                                           (make-hash-table))
                                                          (_specs91774_
                                                           (gx#syntax->list
                                                            _specs91770_)))
                                                      (for-each
                                                       (lambda (_out91776_)
                                                         (hash-put!
                                                          _exports91773_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91776_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91776_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91776_))
               (##unchecked-structure-ref
                _src-ctx91772_
                '9
                gx#module-context::t
                '#f))
              (_K91724_
               _rest91725_
               (foldl1 (lambda (_spec91778_ _r91779_)
                         (let* ((_e9178091796_ _spec91778_)
                                (_E9178291800_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9178091796_)))
                                (_E9178191854_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9178091796_)
                                       (let ((_e9178391804_
                                              (gx#syntax-e _e9178091796_)))
                                         (let ((_hd9178491807_
                                                (##car _e9178391804_))
                                               (_tl9178591809_
                                                (##cdr _e9178391804_)))
                                           (let ((_phi91812_ _hd9178491807_))
                                             (if (gx#stx-pair? _tl9178591809_)
                                                 (let ((_e9178691814_
                                                        (gx#syntax-e
                                                         _tl9178591809_)))
                                                   (let ((_hd9178791817_
                                                          (##car _e9178691814_))
                                                         (_tl9178891819_
                                                          (##cdr _e9178691814_)))
                                                     (let ((_name91822_
                                                            _hd9178791817_))
                                                       (if (gx#stx-pair?
                                                            _tl9178891819_)
                                                           (let ((_e9178991824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9178891819_)))
                     (let ((_hd9179091827_ (##car _e9178991824_))
                           (_tl9179191829_ (##cdr _e9178991824_)))
                       (let ((_src-phi91832_ _hd9179091827_))
                         (if (gx#stx-pair? _tl9179191829_)
                             (let ((_e9179291834_
                                    (gx#syntax-e _tl9179191829_)))
                               (let ((_hd9179391837_ (##car _e9179291834_))
                                     (_tl9179491839_ (##cdr _e9179291834_)))
                                 (let ((_src-name91842_ _hd9179391837_))
                                   (if (gx#stx-null? _tl9179491839_)
                                       (if (and (gx#stx-fixnum? _src-phi91832_)
                                                (gx#identifier?
                                                 _src-name91842_)
                                                (gx#stx-fixnum? _phi91812_)
                                                (gx#identifier? _name91822_))
                                           (let ((_src-phi91844_
                                                  (gx#stx-e _src-phi91832_))
                                                 (_src-name91845_
                                                  (gx#core-identifier-key
                                                   _src-name91842_))
                                                 (_phi91846_
                                                  (gx#stx-e _phi91812_))
                                                 (_name91847_
                                                  (gx#core-identifier-key
                                                   _name91822_)))
                                             (let ((_$e91849_
                                                    (hash-get
                                                     _exports91773_
                                                     (cons _src-phi91844_
                                                           _src-name91845_))))
                                               (if _$e91849_
                                                   ((lambda (_out91852_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91852_
                                                             _name91847_
                                                             (fx- _phi91846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91844_))
                    _r91779_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91849_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91648_
                                                    _hd91723_))))
                                           (_E9178291800_))
                                       (_E9178291800_)))))
                             (_E9178291800_)))))
                   (_E9178291800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9178291800_)))))
                                       (_E9178291800_)))))
                           (_E9178191854_)))
                       _r91726_
                       _specs91774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9173691748_)))))
                                          (_E9173691748_))))
                                  (_E9173691748_))))
                           (_E9172891880_
                            (lambda ()
                              (if (gx#stx-pair? _e9172791744_)
                                  (let ((_e9173091862_
                                         (gx#syntax-e _e9172791744_)))
                                    (let ((_hd9173191865_
                                           (##car _e9173091862_))
                                          (_tl9173291867_
                                           (##cdr _e9173091862_)))
                                      (if (gx#stx-pair? _tl9173291867_)
                                          (let ((_e9173391870_
                                                 (gx#syntax-e _tl9173291867_)))
                                            (let ((_hd9173491873_
                                                   (##car _e9173391870_))
                                                  (_tl9173591875_
                                                   (##cdr _e9173391870_)))
                                              (let ((_path91878_
                                                     _hd9173491873_))
                                                (if (gx#stx-null?
                                                     _tl9173591875_)
                                                    (if '#t
                                                        (_K91724_
                                                         _rest91725_
                                                         (cons (_import-spec-source91656_
                                                                _path91878_)
                                                               _r91726_))
                                                        (_E9172991858_))
                                                    (_E9172991858_)))))
                                          (_E9172991858_))))
                                  (_E9172991858_)))))
                      (_E9172891880_))))
                 (_import-spec-source91656_
                  (lambda (_spath91721_)
                    (gx#core-import-nested-module _spath91721_ _stx91648_)))
                 (_import!91657_
                  (lambda (_rbody91670_)
                    (letrec* ((_current-ctx91672_
                               (gx#current-expander-context))
                              (_deps91673_ (make-hash-table-eq))
                              (_bind!91674_
                               (lambda (_hd91719_)
                                 (gx#core-bind-import!__1
                                  _hd91719_
                                  _current-ctx91672_))))
                      (let _lp91676_ ((_rest91678_ _rbody91670_)
                                      (_body91679_ '()))
                        (let* ((_rest9168091688_ _rest91678_)
                               (_else9168291698_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91672_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91672_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91672_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91679_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91696_ _g94542_)
                                     (gx#eval-module _ctx91696_))
                                   _deps91673_)
                                  _body91679_))
                               (_K9168491707_
                                (lambda (_rest91701_ _hd91702_)
                                  (if (##structure-direct-instance-of?
                                       _hd91702_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91674_ _hd91702_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91702_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91702_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91673_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91702_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91702_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91674_
                                             (##unchecked-structure-ref
                                              _hd91702_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91702_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91673_
                                                 (##unchecked-structure-ref
                                                  _hd91702_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91704_
                                                 (##structure-instance-of?
                                                  _hd91702_
                                                  'gx#module-context::t)))
                                            (if _$e91704_
                                                _$e91704_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91648_
                                                 _hd91702_)))))
                                  (_lp91676_
                                   _rest91701_
                                   (cons _hd91702_ _body91679_)))))
                          (if (##pair? _rest9168091688_)
                              (let ((_hd9168591710_ (##car _rest9168091688_))
                                    (_tl9168691712_ (##cdr _rest9168091688_)))
                                (let* ((_hd91715_ _hd9168591710_)
                                       (_rest91717_ _tl9168691712_))
                                  (_K9168491707_ _rest91717_ _hd91715_)))
                              (_else9168291698_)))))))
                 (_expanded-import?91658_
                  (lambda (_e91662_)
                    (let ((_$e91664_
                           (##structure-direct-instance-of?
                            _e91662_
                            'gx#import-set::t)))
                      (if _$e91664_
                          _$e91664_
                          (let ((_$e91667_
                                 (##structure-direct-instance-of?
                                  _e91662_
                                  'gx#module-import::t)))
                            (if _$e91667_
                                _$e91667_
                                (##structure-instance-of?
                                 _e91662_
                                 'gx#module-context::t))))))))
          (let ((_rbody91660_
                 (gx#core-expand-import/export
                  _stx91648_
                  _expanded-import?91658_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191651_)))
            (if _internal-expand?91649_
                (reverse _rbody91660_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91657_ _rbody91660_))
                 (gx#stx-source _stx91648_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx91974_)
        (let ((_internal-expand?91976_ '#f))
          (gx#core-expand-import%__% _stx91974_ _internal-expand?91976_))))
    (define gx#core-expand-import%
      (lambda _g94544_
        (let ((_g94543_ (##length _g94544_)))
          (cond ((##fx= _g94543_ 1)
                 (apply (lambda (_stx91974_)
                          (gx#core-expand-import%__0 _stx91974_))
                        _g94544_))
                ((##fx= _g94543_ 2)
                 (apply (lambda (_stx91978_ _internal-expand?91979_)
                          (gx#core-expand-import%__%
                           _stx91978_
                           _internal-expand?91979_))
                        _g94544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94544_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91575_ _where91576_)
        (let* ((_e9157791584_ _spath91575_)
               (_E9157991588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9157791584_)))
               (_E9157891643_
                (lambda ()
                  (if (gx#stx-pair? _e9157791584_)
                      (let ((_e9158091592_ (gx#syntax-e _e9157791584_)))
                        (let ((_hd9158191595_ (##car _e9158091592_))
                              (_tl9158291597_ (##cdr _e9158091592_)))
                          (let* ((_origin91600_ _hd9158191595_)
                                 (_sub91602_ _tl9158291597_))
                            (if '#t
                                (let ((_origin-ctx91604_
                                       (if (gx#stx-false? _origin91600_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91600_))))
                                  (let _lp91606_ ((_rest91608_ _sub91602_)
                                                  (_ctx91609_
                                                   _origin-ctx91604_))
                                    (let* ((_e9161091617_ _rest91608_)
                                           (_E9161291621_
                                            (lambda () _ctx91609_))
                                           (_E9161191639_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9161091617_)
                                                  (let ((_e9161391625_
                                                         (gx#syntax-e
                                                          _e9161091617_)))
                                                    (let ((_hd9161491628_
                                                           (##car _e9161391625_))
                                                          (_tl9161591630_
                                                           (##cdr _e9161391625_)))
                                                      (let* ((_id91633_
                                                              _hd9161491628_)
                                                             (_rest91635_
                                                              _tl9161591630_))
                                                        (if '#t
                                                            (let ((_bind91637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91633_ '0 _ctx91609_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91637_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91637_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91576_
                           _spath91575_
                           _id91633_))
                      (_lp91606_
                       _rest91635_
                       (##unchecked-structure-ref
                        _bind91637_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9161291621_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9161291621_)))))
                                      (_E9161191639_))))
                                (_E9157991588_)))))
                      (_E9157991588_)))))
          (_E9157891643_))))
    (define gx#core-expand-import-source
      (lambda (_hd91573_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91573_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx91081_ _internal-expand?91082_)
        (letrec* ((_make-export__9447394474_
                   (lambda (_bind91521_ _phi91522_ _ctx91523_ _name91524_)
                     (let* ((_key91526_
                             (##unchecked-structure-ref
                              _bind91521_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91528_
                             (if _name91524_
                                 (gx#core-identifier-key _name91524_)
                                 _key91526_)))
                       (##structure
                        gx#module-export::t
                        _ctx91523_
                        _key91526_
                        _phi91522_
                        _export-key91528_
                        (let ((_$e91531_
                               (##structure-instance-of?
                                _bind91521_
                                'gx#extern-binding::t)))
                          (if _$e91531_
                              _$e91531_
                              (##structure-direct-instance-of?
                               _bind91521_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9447594478_
                   (lambda (_bind91537_)
                     (let* ((_phi91539_ (gx#current-export-expander-phi))
                            (_ctx91541_ (gx#current-expander-context))
                            (_name91543_ '#f))
                       (_make-export__9447394474_
                        _bind91537_
                        _phi91539_
                        _ctx91541_
                        _name91543_))))
                  (_make-export__1__9447694479_
                   (lambda (_bind91545_ _phi91546_)
                     (let* ((_ctx91548_ (gx#current-expander-context))
                            (_name91550_ '#f))
                       (_make-export__9447394474_
                        _bind91545_
                        _phi91546_
                        _ctx91548_
                        _name91550_))))
                  (_make-export__2__9447794480_
                   (lambda (_bind91552_ _phi91553_ _ctx91554_)
                     (let ((_name91556_ '#f))
                       (_make-export__9447394474_
                        _bind91552_
                        _phi91553_
                        _ctx91554_
                        _name91556_))))
                  (_make-export91084_
                   (lambda _g94546_
                     (let ((_g94545_ (##length _g94546_)))
                       (cond ((##fx= _g94545_ 1)
                              (apply (lambda (_bind91537_)
                                       (_make-export__0__9447594478_
                                        _bind91537_))
                                     _g94546_))
                             ((##fx= _g94545_ 2)
                              (apply (lambda (_bind91545_ _phi91546_)
                                       (_make-export__1__9447694479_
                                        _bind91545_
                                        _phi91546_))
                                     _g94546_))
                             ((##fx= _g94545_ 3)
                              (apply (lambda (_bind91552_
                                              _phi91553_
                                              _ctx91554_)
                                       (_make-export__2__9447794480_
                                        _bind91552_
                                        _phi91553_
                                        _ctx91554_))
                                     _g94546_))
                             ((##fx= _g94545_ 4)
                              (apply (lambda (_bind91558_
                                              _phi91559_
                                              _ctx91560_
                                              _name91561_)
                                       (_make-export__9447394474_
                                        _bind91558_
                                        _phi91559_
                                        _ctx91560_
                                        _name91561_))
                                     _g94546_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94546_))))))
                  (_expand191085_
                   (lambda (_hd91234_ _K91235_ _rest91236_ _r91237_)
                     (let* ((_e9123891270_ _hd91234_)
                            (_E9126591274_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx91081_
                                _hd91234_)))
                            (_E9125591353_
                             (lambda ()
                               (if (gx#stx-pair? _e9123891270_)
                                   (let ((_e9126691278_
                                          (gx#syntax-e _e9123891270_)))
                                     (let ((_hd9126791281_
                                            (##car _e9126691278_))
                                           (_tl9126891283_
                                            (##cdr _e9126691278_)))
                                       (if (eq? (gx#stx-e _hd9126791281_)
                                                'import:)
                                           (let ((_in91286_ _tl9126891283_))
                                             (if (gx#stx-list? _in91286_)
                                                 (let _lp91288_ ((_in-rest91290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in91286_)
                         (_r91291_ _r91237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9129291299_
                                                           _in-rest91290_)
                                                          (_E9129491303_
                                                           (lambda ()
                                                             (_K91235_
                                                              _rest91236_
                                                              _r91291_)))
                                                          (_E9129391349_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9129291299_)
                         (let ((_e9129591307_ (gx#syntax-e _e9129291299_)))
                           (let ((_hd9129691310_ (##car _e9129591307_))
                                 (_tl9129791312_ (##cdr _e9129591307_)))
                             (let* ((_hd91315_ _hd9129691310_)
                                    (_in-rest91317_ _tl9129791312_))
                               (if '#t
                                   (let ((_src91347_
                                          (if (gx#core-bound-module? _hd91315_)
                                              (gx#syntax-local-e__0 _hd91315_)
                                              (if (gx#core-library-module-path?
                                                   _hd91315_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd91315_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd91315_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd91315_))
                                                      (if (gx#stx-string?
                                                           _hd91315_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd91315_
                                                            (gx#stx-source
                                                             _stx91081_)))
                                                          (let* ((_e9131891325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91315_)
                         (_E9132091329_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx91081_
                             _hd91315_)))
                         (_E9131991343_
                          (lambda ()
                            (if (gx#stx-pair? _e9131891325_)
                                (let ((_e9132191333_
                                       (gx#syntax-e _e9131891325_)))
                                  (let ((_hd9132291336_ (##car _e9132191333_))
                                        (_tl9132391338_ (##cdr _e9132191333_)))
                                    (if (eq? (gx#stx-e _hd9132291336_) 'in:)
                                        (let ((_spath91341_ _tl9132391338_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91341_
                                               _stx91081_)
                                              (_E9132091329_)))
                                        (_E9132091329_))))
                                (_E9132091329_)))))
                    (_E9131991343_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp91288_
                                      _in-rest91317_
                                      (_export-imports91086_
                                       _src91347_
                                       _r91291_)))
                                   (_E9129491303_)))))
                         (_E9129491303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9129391349_)))
                                                 (_E9126591274_)))
                                           (_E9126591274_))))
                                   (_E9126591274_))))
                            (_E9124291392_
                             (lambda ()
                               (if (gx#stx-pair? _e9123891270_)
                                   (let ((_e9125691357_
                                          (gx#syntax-e _e9123891270_)))
                                     (let ((_hd9125791360_
                                            (##car _e9125691357_))
                                           (_tl9125891362_
                                            (##cdr _e9125691357_)))
                                       (if (eq? (gx#stx-e _hd9125791360_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9125891362_)
                                               (let ((_e9125991365_
                                                      (gx#syntax-e
                                                       _tl9125891362_)))
                                                 (let ((_hd9126091368_
                                                        (##car _e9125991365_))
                                                       (_tl9126191370_
                                                        (##cdr _e9125991365_)))
                                                   (let ((_id91373_
                                                          _hd9126091368_))
                                                     (if (gx#stx-pair?
                                                          _tl9126191370_)
                                                         (let ((_e9126291375_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9126191370_)))
                   (let ((_hd9126391378_ (##car _e9126291375_))
                         (_tl9126491380_ (##cdr _e9126291375_)))
                     (let ((_name91383_ _hd9126391378_))
                       (if (gx#stx-null? _tl9126491380_)
                           (if '#t
                               (let* ((_phi91385_
                                       (gx#current-export-expander-phi))
                                      (_$e91387_
                                       (gx#core-resolve-identifier__1
                                        _id91373_
                                        _phi91385_)))
                                 (if _$e91387_
                                     ((lambda (_bind91390_)
                                        (_K91235_
                                         _rest91236_
                                         (cons (_make-export__9447394474_
                                                _bind91390_
                                                _phi91385_
                                                (gx#current-expander-context)
                                                _name91383_)
                                               _r91237_)))
                                      _$e91387_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx91081_
                                      _hd91234_
                                      _id91373_)))
                               (_E9125591353_))
                           (_E9125591353_)))))
                 (_E9125591353_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9125591353_))
                                           (_E9125591353_))))
                                   (_E9125591353_))))
                            (_E9124191441_
                             (lambda ()
                               (if (gx#stx-pair? _e9123891270_)
                                   (let ((_e9124391396_
                                          (gx#syntax-e _e9123891270_)))
                                     (let ((_hd9124491399_
                                            (##car _e9124391396_))
                                           (_tl9124591401_
                                            (##cdr _e9124391396_)))
                                       (if (eq? (gx#stx-e _hd9124491399_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9124591401_)
                                               (let ((_e9124691404_
                                                      (gx#syntax-e
                                                       _tl9124591401_)))
                                                 (let ((_hd9124791407_
                                                        (##car _e9124691404_))
                                                       (_tl9124891409_
                                                        (##cdr _e9124691404_)))
                                                   (let ((_phi91412_
                                                          _hd9124791407_))
                                                     (if (gx#stx-pair?
                                                          _tl9124891409_)
                                                         (let ((_e9124991414_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9124891409_)))
                   (let ((_hd9125091417_ (##car _e9124991414_))
                         (_tl9125191419_ (##cdr _e9124991414_)))
                     (let ((_id91422_ _hd9125091417_))
                       (if (gx#stx-pair? _tl9125191419_)
                           (let ((_e9125291424_ (gx#syntax-e _tl9125191419_)))
                             (let ((_hd9125391427_ (##car _e9125291424_))
                                   (_tl9125491429_ (##cdr _e9125291424_)))
                               (let ((_name91432_ _hd9125391427_))
                                 (if (gx#stx-null? _tl9125491429_)
                                     (if (and (gx#stx-fixnum? _phi91412_)
                                              (gx#identifier? _id91422_)
                                              (gx#identifier? _name91432_))
                                         (let* ((_phi91434_
                                                 (gx#stx-e _phi91412_))
                                                (_$e91436_
                                                 (gx#core-resolve-identifier__1
                                                  _id91422_
                                                  _phi91434_)))
                                           (if _$e91436_
                                               ((lambda (_bind91439_)
                                                  (_K91235_
                                                   _rest91236_
                                                   (cons (_make-export__9447394474_
                                                          _bind91439_
                                                          _phi91434_
                                                          (gx#current-expander-context)
                                                          _name91432_)
                                                         _r91237_)))
                                                _$e91436_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx91081_
                                                _hd91234_
                                                _id91422_)))
                                         (_E9124291392_))
                                     (_E9124291392_)))))
                           (_E9124291392_)))))
                 (_E9124291392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9124291392_))
                                           (_E9124291392_))))
                                   (_E9124291392_))))
                            (_E9124091452_
                             (lambda ()
                               (let ((_id91445_ _e9123891270_))
                                 (if (gx#identifier? _id91445_)
                                     (let ((_$e91447_
                                            (gx#core-resolve-identifier__1
                                             _id91445_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91447_
                                           ((lambda (_bind91450_)
                                              (_K91235_
                                               _rest91236_
                                               (cons (_make-export__0__9447594478_
                                                      _bind91450_)
                                                     _r91237_)))
                                            _$e91447_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx91081_
                                            _hd91234_)))
                                     (_E9124191441_)))))
                            (_E9123991516_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9123891270_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91456_
                                               (gx#current-expander-context))
                                              (_current-phi91458_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91460_
                                               (gx#core-context-shift
                                                _current-ctx91456_
                                                _current-phi91458_))
                                              (_phi-bind91462_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91460_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91465_ ((_bind-rest91467_
                                                          _phi-bind91462_)
                                                         (_set91468_ '()))
                                           (let* ((_bind-rest9146991479_
                                                   _bind-rest91467_)
                                                  (_else9147191487_
                                                   (lambda ()
                                                     (_K91235_
                                                      _rest91236_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91458_
                                                             _set91468_)
                                                            _r91237_))))
                                                  (_K9147391497_
                                                   (lambda (_bind-rest91490_
                                                            _bind91491_
                                                            _key91492_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91491_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91491_))
                                                         (_lp91465_
                                                          _bind-rest91490_
                                                          _set91468_)
                                                         (_lp91465_
                                                          _bind-rest91490_
                                                          (cons (_make-export__2__9447794480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91491_
                         _current-phi91458_
                         _current-ctx91456_)
                        _set91468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9146991479_)
                                                 (let ((_hd9147491500_
                                                        (##car _bind-rest9146991479_))
                                                       (_tl9147591502_
                                                        (##cdr _bind-rest9146991479_)))
                                                   (if (##pair? _hd9147491500_)
                                                       (let ((_hd9147691505_
                                                              (##car _hd9147491500_))
                                                             (_tl9147791507_
                                                              (##cdr _hd9147491500_)))
                                                         (let* ((_key91510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9147691505_)
                        (_bind91512_ _tl9147791507_)
                        (_bind-rest91514_ _tl9147591502_))
                   (_K9147391497_ _bind-rest91514_ _bind91512_ _key91510_)))
               (_else9147191487_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9147191487_)))))
                                       (_E9124091452_))
                                   (_E9124091452_)))))
                       (_E9123991516_))))
                  (_export-imports91086_
                   (lambda (_src91110_ _r91111_)
                     (letrec* ((_current-ctx91113_
                                (gx#current-expander-context))
                               (_current-phi91114_
                                (gx#current-export-expander-phi))
                               (_import->export91115_
                                (lambda (_in91196_)
                                  (let* ((_in9119791205_ _in91196_)
                                         (_E9119991209_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9119791205_)))
                                         (_K9120091216_
                                          (lambda (_phi91212_
                                                   _key91213_
                                                   _out91214_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx91113_
                                             _key91213_
                                             _phi91212_
                                             _key91213_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9119791205_
                                         'gx#module-import::t)
                                        (let* ((_e9120191219_
                                                (##unchecked-structure-ref
                                                 _in9119791205_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out91222_ _e9120191219_)
                                               (_e9120291224_
                                                (##unchecked-structure-ref
                                                 _in9119791205_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key91227_ _e9120291224_)
                                               (_e9120391229_
                                                (##unchecked-structure-ref
                                                 _in9119791205_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi91232_ _e9120391229_))
                                          (_K9120091216_
                                           _phi91232_
                                           _key91227_
                                           _out91222_))
                                        (_E9119991209_)))))
                               (_fold-e91116_
                                (lambda (_in91118_ _r91119_)
                                  (let* ((_in9112091134_ _in91118_)
                                         (_else9112391142_
                                          (lambda () _r91119_)))
                                    (let ((_K9112991178_
                                           (lambda (_phi91174_
                                                    _key91175_
                                                    _out91176_)
                                             (if (and (fx= _phi91174_
                                                           _current-phi91114_)
                                                      (eq? _src91110_
                                                           (##unchecked-structure-ref
                                                            _out91176_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export91115_
                                                        _in91118_)
                                                       _r91119_)
                                                 _r91119_)))
                                          (_K9112591153_
                                           (lambda (_imports91146_
                                                    _phi91147_
                                                    _ctx91148_)
                                             (if (and (fx= _phi91147_
                                                           _current-phi91114_)
                                                      (eq? _src91110_
                                                           _ctx91148_))
                                                 (foldl1 (lambda (_in91150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r91151_)
                   (cons (_import->export91115_ _in91150_) _r91151_))
                 _r91119_
                 _imports91146_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r91119_))))
                                      (let ((_try-match9112291171_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9112091134_
                                                    'gx#import-set::t)
                                                   (let* ((_e9112691156_
                                                           (##unchecked-structure-ref
                                                            _in9112091134_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9112791161_
                                                           (##unchecked-structure-ref
                                                            _in9112091134_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9112891166_
                                                           (##unchecked-structure-ref
                                                            _in9112091134_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx91159_
                                                            _e9112691156_)
                                                           (_phi91164_
                                                            _e9112791161_)
                                                           (_imports91169_
                                                            _e9112891166_))
                                                       (_K9112591153_
                                                        _imports91169_
                                                        _phi91164_
                                                        _ctx91159_)))
                                                   (_else9112391142_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9112091134_
                                             'gx#module-import::t)
                                            (let* ((_e9113091181_
                                                    (##unchecked-structure-ref
                                                     _in9112091134_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9113191186_
                                                    (##unchecked-structure-ref
                                                     _in9112091134_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9113291191_
                                                    (##unchecked-structure-ref
                                                     _in9112091134_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out91184_ _e9113091181_)
                                                    (_key91189_ _e9113191186_)
                                                    (_phi91194_ _e9113291191_))
                                                (_K9112991178_
                                                 _phi91194_
                                                 _key91189_
                                                 _out91184_)))
                                            (_try-match9112291171_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src91110_
                              _current-phi91114_
                              (foldl1 _fold-e91116_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx91113_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r91111_))))
                  (_export!91087_
                   (lambda (_rbody91100_)
                     (letrec* ((_current-ctx91102_
                                (gx#current-expander-context))
                               (_fold-e91103_
                                (lambda (_out91107_ _r91108_)
                                  (if (##structure-direct-instance-of?
                                       _out91107_
                                       'gx#module-export::t)
                                      (cons _out91107_ _r91108_)
                                      (if (##structure-direct-instance-of?
                                           _out91107_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r91108_
                                                  (##unchecked-structure-ref
                                                   _out91107_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r91108_)))))
                       (let ((_body91105_ (reverse _rbody91100_)))
                         (##unchecked-structure-set!
                          _current-ctx91102_
                          (foldl1 _fold-e91103_
                                  (##unchecked-structure-ref
                                   _current-ctx91102_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body91105_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body91105_))))
                  (_expanded-export?91088_
                   (lambda (_e91095_)
                     (let ((_$e91097_
                            (##structure-direct-instance-of?
                             _e91095_
                             'gx#module-export::t)))
                       (if _$e91097_
                           _$e91097_
                           (##structure-direct-instance-of?
                            _e91095_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?91082_)
              (let ((_rbody91093_
                     (gx#core-expand-import/export
                      _stx91081_
                      _expanded-export?91088_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand191085_)))
                (if _internal-expand?91082_
                    (reverse _rbody91093_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!91087_ _rbody91093_))
                     (gx#stx-source _stx91081_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx91081_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx91081_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91566_)
        (let ((_internal-expand?91568_ '#f))
          (gx#core-expand-export%__% _stx91566_ _internal-expand?91568_))))
    (define gx#core-expand-export%
      (lambda _g94548_
        (let ((_g94547_ (##length _g94548_)))
          (cond ((##fx= _g94547_ 1)
                 (apply (lambda (_stx91566_)
                          (gx#core-expand-export%__0 _stx91566_))
                        _g94548_))
                ((##fx= _g94547_ 2)
                 (apply (lambda (_stx91570_ _internal-expand?91571_)
                          (gx#core-expand-export%__%
                           _stx91570_
                           _internal-expand?91571_))
                        _g94548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94548_))))))
    (define gx#core-expand-export-source
      (lambda (_hd91078_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd91078_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx91048_)
        (let* ((_e9104991056_ _stx91048_)
               (_E9105191060_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9104991056_)))
               (_E9105091074_
                (lambda ()
                  (if (gx#stx-pair? _e9104991056_)
                      (let ((_e9105291064_ (gx#syntax-e _e9104991056_)))
                        (let ((_hd9105391067_ (##car _e9105291064_))
                              (_tl9105491069_ (##cdr _e9105291064_)))
                          (let ((_body91072_ _tl9105491069_))
                            (if (gx#identifier-list? _body91072_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body91072_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body91072_))
                                   (gx#stx-source _stx91048_)))
                                (_E9105191060_)))))
                      (_E9105191060_)))))
          (_E9105091074_))))
    (define gx#core-bind-feature!__%
      (lambda (_id91014_ _private?91015_ _phi91016_ _ctx91017_)
        (gx#core-bind-syntax!__%
         _id91014_
         ((if _private?91015_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id91014_))
         _private?91015_
         _phi91016_
         _ctx91017_)))
    (define gx#core-bind-feature!__0
      (lambda (_id91022_)
        (let* ((_private?91024_ '#f)
               (_phi91026_ (gx#current-expander-phi))
               (_ctx91028_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91022_
           _private?91024_
           _phi91026_
           _ctx91028_))))
    (define gx#core-bind-feature!__1
      (lambda (_id91030_ _private?91031_)
        (let* ((_phi91033_ (gx#current-expander-phi))
               (_ctx91035_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91030_
           _private?91031_
           _phi91033_
           _ctx91035_))))
    (define gx#core-bind-feature!__2
      (lambda (_id91037_ _private?91038_ _phi91039_)
        (let ((_ctx91041_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id91037_
           _private?91038_
           _phi91039_
           _ctx91041_))))
    (define gx#core-bind-feature!
      (lambda _g94550_
        (let ((_g94549_ (##length _g94550_)))
          (cond ((##fx= _g94549_ 1)
                 (apply (lambda (_id91022_)
                          (gx#core-bind-feature!__0 _id91022_))
                        _g94550_))
                ((##fx= _g94549_ 2)
                 (apply (lambda (_id91030_ _private?91031_)
                          (gx#core-bind-feature!__1 _id91030_ _private?91031_))
                        _g94550_))
                ((##fx= _g94549_ 3)
                 (apply (lambda (_id91037_ _private?91038_ _phi91039_)
                          (gx#core-bind-feature!__2
                           _id91037_
                           _private?91038_
                           _phi91039_))
                        _g94550_))
                ((##fx= _g94549_ 4)
                 (apply (lambda (_id91043_
                                 _private?91044_
                                 _phi91045_
                                 _ctx91046_)
                          (gx#core-bind-feature!__%
                           _id91043_
                           _private?91044_
                           _phi91045_
                           _ctx91046_))
                        _g94550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94550_))))))))
