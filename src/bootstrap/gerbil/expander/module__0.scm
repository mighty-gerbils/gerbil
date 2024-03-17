(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710699091)
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
      (lambda _$args94150_
        (apply make-instance gx#module-import::t _$args94150_)))
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
      (lambda _$args94147_
        (apply make-instance gx#module-export::t _$args94147_)))
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
      (lambda _$args94144_
        (apply make-instance gx#import-set::t _$args94144_)))
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
      (lambda _$args94141_
        (apply make-instance gx#export-set::t _$args94141_)))
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
      (lambda _$args94138_
        (apply make-instance gx#import-expander::t _$args94138_)))
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
      (lambda _$args94135_
        (apply make-instance gx#export-expander::t _$args94135_)))
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
      (lambda _$args94132_
        (apply make-instance gx#import-export-expander::t _$args94132_)))
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
      (lambda (_path94129_ _fun94130_)
        (call-with-input-file
         (cons 'path: (cons _path94129_ gx#source-file-settings))
         _fun94130_)))
    (define gx#module-context:::init!
      (lambda (_self94123_ _id94124_ _super94125_ _ns94126_ _path94127_)
        (if (##fx< '11 (##structure-length _self94123_))
            (begin
              (##unchecked-structure-set!
               _self94123_
               _id94124_
               '1
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               (make-hash-table-eq)
               '2
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               _super94125_
               '3
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               '#f
               '4
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               '#f
               '5
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               _ns94126_
               '6
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               _path94127_
               '7
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               '()
               '8
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               '()
               '9
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               '#f
               '10
               (##structure-type _self94123_)
               '#f)
              (##unchecked-structure-set!
               _self94123_
               '#f
               '11
               (##structure-type _self94123_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94123_
                   '11
                   (##vector-length _self94123_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93967_ _ctx93968_ _root93969_)
        (let ((_super93977_
               (let ((_$e93971_ _root93969_))
                 (if _$e93971_
                     _$e93971_
                     (let ((_$e93974_ (gx#core-context-root__0)))
                       (if _$e93974_
                           _$e93974_
                           (let ((__obj94192
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94193
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94192
                                     ':init!)))
                               (if __constructor94193
                                   (__constructor94193 __obj94192)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94192)))))))
          (if _ctx93968_
              (let ((_id93980_
                     (##structure-ref
                      _ctx93968_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93981_
                     (##structure-ref _ctx93968_ '7 gx#module-context::t '#f))
                    (_in93982_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93968_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93983_
                     (make-promise (lambda () (gx#eval-module _ctx93968_)))))
                (if (##fx< '8 (##structure-length _self93967_))
                    (begin
                      (##unchecked-structure-set!
                       _self93967_
                       _id93980_
                       '1
                       (##structure-type _self93967_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93967_
                       (make-hash-table-eq 'size: (length _in93982_))
                       '2
                       (##structure-type _self93967_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93967_
                       _super93977_
                       '3
                       (##structure-type _self93967_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93967_
                       '#f
                       '4
                       (##structure-type _self93967_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93967_
                       '#f
                       '5
                       (##structure-type _self93967_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93967_
                       _path93981_
                       '6
                       (##structure-type _self93967_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93967_
                       _in93982_
                       '7
                       (##structure-type _self93967_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93967_
                       _e93983_
                       '8
                       (##structure-type _self93967_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93967_
                           '8
                           (##vector-length _self93967_)))
                (for-each
                 (lambda (_g9398493986_)
                   (gx#core-bind-weak-import!__% _g9398493986_ _self93967_))
                 _in93982_))
              (if (##fx< '8 (##structure-length _self93967_))
                  (begin
                    (##unchecked-structure-set!
                     _self93967_
                     '#f
                     '1
                     (##structure-type _self93967_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93967_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93967_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93967_
                     _super93977_
                     '3
                     (##structure-type _self93967_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93967_
                     '#f
                     '4
                     (##structure-type _self93967_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93967_
                     '#f
                     '5
                     (##structure-type _self93967_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93967_
                     '#f
                     '6
                     (##structure-type _self93967_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93967_
                     '()
                     '7
                     (##structure-type _self93967_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93967_
                     '#f
                     '8
                     (##structure-type _self93967_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93967_
                         '8
                         (##vector-length _self93967_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93992_ _ctx93993_)
        (let ((_root93995_ '#f))
          (gx#prelude-context:::init!__% _self93992_ _ctx93993_ _root93995_))))
    (define gx#prelude-context:::init!
      (lambda _g94199_
        (let ((_g94198_ (##length _g94199_)))
          (cond ((##fx= _g94198_ 2)
                 (apply (lambda (_self93992_ _ctx93993_)
                          (gx#prelude-context:::init!__0
                           _self93992_
                           _ctx93993_))
                        _g94199_))
                ((##fx= _g94198_ 3)
                 (apply (lambda (_self93997_ _ctx93998_ _root93999_)
                          (gx#prelude-context:::init!__%
                           _self93997_
                           _ctx93998_
                           _root93999_))
                        _g94199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94199_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self93841_ _e93842_)
        (if (##fx< '3 (##structure-length _self93841_))
            (begin
              (##unchecked-structure-set!
               _self93841_
               _e93842_
               '1
               (##structure-type _self93841_)
               '#f)
              (##unchecked-structure-set!
               _self93841_
               (gx#current-expander-context)
               '2
               (##structure-type _self93841_)
               '#f)
              (##unchecked-structure-set!
               _self93841_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self93841_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93841_
                   '3
                   (##vector-length _self93841_)))))
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
      (lambda (_g9346793470_ _g9346893472_)
        (gx#core-apply-user-expander__%
         _g9346793470_
         _g9346893472_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9333893341_ _g9333993343_)
        (gx#core-apply-user-expander__%
         _g9333893341_
         _g9333993343_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93209_)
        (let* ((_path93211_
                (##structure-ref _ctx93209_ '7 gx#module-context::t '#f))
               (_path93213_
                (if (pair? _path93211_) (last _path93211_) _path93211_)))
          (if (string? _path93213_) _path93213_ '#f))))
    (define gx#import-module__%
      (lambda (_path93185_ _reload?93186_ _eval?93187_)
        (let ((_ctx93189_
               ((gx#current-expander-module-import)
                _path93185_
                _reload?93186_)))
          (if (and _ctx93189_ _eval?93187_)
              (gx#eval-module _ctx93189_)
              '#!void)
          _ctx93189_)))
    (define gx#import-module__0
      (lambda (_path93194_)
        (let* ((_reload?93196_ '#f) (_eval?93198_ '#f))
          (gx#import-module__% _path93194_ _reload?93196_ _eval?93198_))))
    (define gx#import-module__1
      (lambda (_path93200_ _reload?93201_)
        (let ((_eval?93203_ '#f))
          (gx#import-module__% _path93200_ _reload?93201_ _eval?93203_))))
    (define gx#import-module
      (lambda _g94201_
        (let ((_g94200_ (##length _g94201_)))
          (cond ((##fx= _g94200_ 1)
                 (apply (lambda (_path93194_)
                          (gx#import-module__0 _path93194_))
                        _g94201_))
                ((##fx= _g94200_ 2)
                 (apply (lambda (_path93200_ _reload?93201_)
                          (gx#import-module__1 _path93200_ _reload?93201_))
                        _g94201_))
                ((##fx= _g94200_ 3)
                 (apply (lambda (_path93205_ _reload?93206_ _eval?93207_)
                          (gx#import-module__%
                           _path93205_
                           _reload?93206_
                           _eval?93207_))
                        _g94201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94201_))))))
    (define gx#eval-module
      (lambda (_mod93182_) ((gx#current-expander-module-eval) _mod93182_)))
    (define gx#core-eval-module
      (lambda (_obj93167_)
        (letrec ((_force-e93169_
                  (lambda (_getf93178_ _e93179_)
                    (call-with-parameters
                     (lambda () (force (_getf93178_ _e93179_)))
                     gx#current-expander-context
                     _e93179_
                     gx#current-expander-phi
                     '0))))
          (let _recur93171_ ((_e93173_ _obj93167_))
            (if (##structure-instance-of? _e93173_ 'gx#module-context::t)
                (begin
                  (let ((_$e93175_ (gx#core-context-prelude__% _e93173_)))
                    (if _$e93175_ (_recur93171_ _$e93175_) '#!void))
                  (_force-e93169_ gx#module-context-e _e93173_))
                (if (##structure-instance-of? _e93173_ 'gx#prelude-context::t)
                    (_force-e93169_ gx#prelude-context-e _e93173_)
                    (if (gx#stx-string? _e93173_)
                        (_recur93171_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93173_)))
                        (if (gx#core-library-module-path? _e93173_)
                            (_recur93171_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93173_)))
                            (error '"Cannot eval module" _obj93167_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93150_)
        (let _lp93152_ ((_e93154_ _ctx93150_))
          (if (or (##structure-instance-of? _e93154_ 'gx#module-context::t)
                  (##structure-instance-of? _e93154_ 'gx#local-context::t))
              (_lp93152_
               (##unchecked-structure-ref _e93154_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93154_ 'gx#prelude-context::t)
                  _e93154_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93163_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93163_))))
    (define gx#core-context-prelude
      (lambda _g94203_
        (let ((_g94202_ (##length _g94203_)))
          (cond ((##fx= _g94202_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94203_))
                ((##fx= _g94202_ 1)
                 (apply (lambda (_ctx93165_)
                          (gx#core-context-prelude__% _ctx93165_))
                        _g94203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94203_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93142_)
        (let ((_$e93144_ (hash-get gx#__module-registry _ctx93142_)))
          (if _$e93144_
              _$e93144_
              (let ((_pre93147_
                     (let ((__obj94194
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
                       (gx#prelude-context:::init! __obj94194 _ctx93142_)
                       __obj94194)))
                (hash-put! gx#__module-registry _ctx93142_ _pre93147_)
                _pre93147_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93023_ _reload?93024_)
        (letrec ((_import-source93026_
                  (lambda (_path93111_)
                    (if (member _path93111_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93111_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94204_ (gx#core-read-module _path93111_)))
                         (begin
                           (let ((_g94205_
                                  (if (##values? _g94204_)
                                      (##vector-length _g94204_)
                                      1)))
                             (if (not (##fx= _g94205_ 4))
                                 (error "Context expects 4 values" _g94205_)))
                           (let ((_pre93114_ (##vector-ref _g94204_ 0))
                                 (_id93115_ (##vector-ref _g94204_ 1))
                                 (_ns93116_ (##vector-ref _g94204_ 2))
                                 (_body93117_ (##vector-ref _g94204_ 3)))
                             (let* ((_prelude93122_
                                     (if (##structure-instance-of?
                                          _pre93114_
                                          'gx#prelude-context::t)
                                         _pre93114_
                                         (if (##structure-instance-of?
                                              _pre93114_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93114_)
                                             (if (string? _pre93114_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93114_))
                                                 (if (not _pre93114_)
                                                     (let ((_$e93119_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93119_
                                                           _$e93119_
                                                           (let ((__obj94195
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
                     (gx#prelude-context:::init! __obj94195 '#f)
                     __obj94195)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93023_
                                                            _pre93114_))))))
                                    (_ctx93124_
                                     (let ((__obj94196
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
                                        __obj94196
                                        _id93115_
                                        _prelude93122_
                                        _ns93116_
                                        _path93111_)
                                       __obj94196))
                                    (_body93126_
                                     (gx#core-expand-module-begin
                                      _body93117_
                                      _ctx93124_))
                                    (_body93128_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93126_)
                                      _path93111_
                                      _ctx93124_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93124_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93128_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93124_
                                _body93128_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93111_
                                _ctx93124_)
                               (hash-put!
                                gx#__module-registry
                                _id93115_
                                _ctx93124_)
                               _ctx93124_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93111_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93027_
                  (lambda (_rpath93039_)
                    (let* ((_rpath9304093047_ _rpath93039_)
                           (_E9304293051_
                            (lambda ()
                              (error '"No clause matching" _rpath9304093047_)))
                           (_K9304393099_
                            (lambda (_refs93054_ _origin93055_)
                              (let ((_ctx93057_
                                     (if _origin93055_
                                         (gx#core-import-module__%
                                          _origin93055_
                                          _reload?93024_)
                                         (gx#current-expander-context))))
                                (let _lp93059_ ((_rest93061_ _refs93054_)
                                                (_ctx93062_ _ctx93057_))
                                  (let* ((_rest9306393071_ _rest93061_)
                                         (_else9306593079_
                                          (lambda () _ctx93062_))
                                         (_K9306793087_
                                          (lambda (_rest93082_ _id93083_)
                                            (let ((_bind93085_
                                                   (gx#resolve-identifier__%
                                                    _id93083_
                                                    '0
                                                    _ctx93062_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93085_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93085_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93059_
                                                   _rest93082_
                                                   (##unchecked-structure-ref
                                                    _bind93085_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93039_
                                                         _id93083_
                                                         _bind93085_))))))
                                    (if (##pair? _rest9306393071_)
                                        (let ((_hd9306893090_
                                               (##car _rest9306393071_))
                                              (_tl9306993092_
                                               (##cdr _rest9306393071_)))
                                          (let* ((_id93095_ _hd9306893090_)
                                                 (_rest93097_ _tl9306993092_))
                                            (_K9306793087_
                                             _rest93097_
                                             _id93095_)))
                                        (_else9306593079_))))))))
                      (if (##pair? _rpath9304093047_)
                          (let ((_hd9304493102_ (##car _rpath9304093047_))
                                (_tl9304593104_ (##cdr _rpath9304093047_)))
                            (let* ((_origin93107_ _hd9304493102_)
                                   (_refs93109_ _tl9304593104_))
                              (_K9304393099_ _refs93109_ _origin93107_)))
                          (_E9304293051_))))))
          (let ((_$e93029_
                 (if (not _reload?93024_)
                     (hash-get gx#__module-registry _rpath93023_)
                     '#f)))
            (if _$e93029_
                (values _$e93029_)
                (if (list? _rpath93023_)
                    (_import-submodule93027_ _rpath93023_)
                    (if (gx#core-library-module-path? _rpath93023_)
                        (let ((_ctx93032_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93023_)
                                _reload?93024_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93023_
                           _ctx93032_)
                          _ctx93032_)
                        (let* ((_npath93034_ (path-normalize _rpath93023_))
                               (_$e93036_
                                (if (not _reload?93024_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93034_)
                                    '#f)))
                          (if _$e93036_
                              _$e93036_
                              (_import-source93026_ _npath93034_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93135_)
        (let ((_reload?93137_ '#f))
          (gx#core-import-module__% _rpath93135_ _reload?93137_))))
    (define gx#core-import-module
      (lambda _g94207_
        (let ((_g94206_ (##length _g94207_)))
          (cond ((##fx= _g94206_ 1)
                 (apply (lambda (_rpath93135_)
                          (gx#core-import-module__0 _rpath93135_))
                        _g94207_))
                ((##fx= _g94206_ 2)
                 (apply (lambda (_rpath93139_ _reload?93140_)
                          (gx#core-import-module__%
                           _rpath93139_
                           _reload?93140_))
                        _g94207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94207_))))))
    (define gx#core-read-module
      (lambda (_path93012_)
        (with-catch
         (lambda (_exn93014_)
           (if (and (datum-parsing-exception? _exn93014_)
                    (eq? (datum-parsing-exception-filepos _exn93014_) '0))
               (gx#core-read-module/lang _path93012_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93012_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9301693018_)
                      (display-exception _exn93014_ _g9301693018_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93012_)))))
    (define gx#core-read-module/sexp
      (lambda (_path92875_)
        (let _lp92877_ ((_body92879_ (read-syntax-from-file _path92875_))
                        (_pre92880_ '#f)
                        (_ns92881_ '#f)
                        (_pkg92882_ '#f))
          (let* ((_e9288392907_ _body92879_)
                 (_E9289992929_
                  (lambda ()
                    (let ((_g94208_
                           (if _pkg92882_
                               (values _pre92880_ _ns92881_ _pkg92882_)
                               (gx#core-read-module-package
                                _path92875_
                                _pre92880_
                                _ns92881_))))
                      (begin
                        (let ((_g94209_
                               (if (##values? _g94208_)
                                   (##vector-length _g94208_)
                                   1)))
                          (if (not (##fx= _g94209_ 3))
                              (error "Context expects 3 values" _g94209_)))
                        (let ((_pre92911_ (##vector-ref _g94208_ 0))
                              (_ns92912_ (##vector-ref _g94208_ 1))
                              (_pkg92913_ (##vector-ref _g94208_ 2)))
                          (let* ((_prelude92915_
                                  (if (gx#core-bound-module-prelude?
                                       _pre92911_)
                                      (gx#syntax-local-e__0 _pre92911_)
                                      (if (gx#core-library-module-path?
                                           _pre92911_)
                                          (gx#core-resolve-library-module-path
                                           _pre92911_)
                                          (if (gx#stx-string? _pre92911_)
                                              (gx#core-resolve-module-path__%
                                               _pre92911_
                                               _path92875_)
                                              (gx#stx-e _pre92911_)))))
                                 (_path-id92917_
                                  (gx#core-module-path->namespace _path92875_))
                                 (_pkg-id92919_
                                  (if _pkg92913_
                                      (string-append
                                       _pkg92913_
                                       '"/"
                                       _path-id92917_)
                                      _path-id92917_))
                                 (_module-id92921_
                                  (string->symbol _pkg-id92919_))
                                 (_module-ns92926_
                                  (if (eq? _ns92912_ '#!void)
                                      '#f
                                      (let ((_$e92923_ _ns92912_))
                                        (if _$e92923_
                                            _$e92923_
                                            _pkg-id92919_)))))
                            (values _prelude92915_
                                    _module-id92921_
                                    _module-ns92926_
                                    _body92879_)))))))
                 (_E9289292958_
                  (lambda ()
                    (if (gx#stx-pair? _e9288392907_)
                        (let ((_e9290092933_ (gx#syntax-e _e9288392907_)))
                          (let ((_hd9290192936_ (##car _e9290092933_))
                                (_tl9290292938_ (##cdr _e9290092933_)))
                            (if (eq? (gx#stx-e _hd9290192936_) 'package:)
                                (if (gx#stx-pair? _tl9290292938_)
                                    (let ((_e9290392941_
                                           (gx#syntax-e _tl9290292938_)))
                                      (let ((_hd9290492944_
                                             (##car _e9290392941_))
                                            (_tl9290592946_
                                             (##cdr _e9290392941_)))
                                        (let* ((_pkg92949_ _hd9290492944_)
                                               (_rest92951_ _tl9290592946_))
                                          (if '#t
                                              (let ((_pkg92956_
                                                     (if (gx#identifier?
                                                          _pkg92949_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg92949_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg92949_)
                         (gx#stx-false? _pkg92949_))
                     (gx#stx-e _pkg92949_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg92949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92877_
                                                 _rest92951_
                                                 _pre92880_
                                                 _ns92881_
                                                 _pkg92956_))
                                              (_E9289992929_)))))
                                    (_E9289992929_))
                                (_E9289992929_))))
                        (_E9289992929_))))
                 (_E9288592984_
                  (lambda ()
                    (if (gx#stx-pair? _e9288392907_)
                        (let ((_e9289392962_ (gx#syntax-e _e9288392907_)))
                          (let ((_hd9289492965_ (##car _e9289392962_))
                                (_tl9289592967_ (##cdr _e9289392962_)))
                            (if (eq? (gx#stx-e _hd9289492965_) 'namespace:)
                                (if (gx#stx-pair? _tl9289592967_)
                                    (let ((_e9289692970_
                                           (gx#syntax-e _tl9289592967_)))
                                      (let ((_hd9289792973_
                                             (##car _e9289692970_))
                                            (_tl9289892975_
                                             (##cdr _e9289692970_)))
                                        (let* ((_ns92978_ _hd9289792973_)
                                               (_rest92980_ _tl9289892975_))
                                          (if '#t
                                              (let ((_ns92982_
                                                     (if (gx#identifier?
                                                          _ns92978_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92978_))
                                                         (if (gx#stx-string?
                                                              _ns92978_)
                                                             (gx#stx-e
                                                              _ns92978_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92978_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92978_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92877_
                                                 _rest92980_
                                                 _pre92880_
                                                 _ns92982_
                                                 _pkg92882_))
                                              (_E9289292958_)))))
                                    (_E9289292958_))
                                (_E9289292958_))))
                        (_E9289292958_))))
                 (_E9288493008_
                  (lambda ()
                    (if (gx#stx-pair? _e9288392907_)
                        (let ((_e9288692988_ (gx#syntax-e _e9288392907_)))
                          (let ((_hd9288792991_ (##car _e9288692988_))
                                (_tl9288892993_ (##cdr _e9288692988_)))
                            (if (eq? (gx#stx-e _hd9288792991_) 'prelude:)
                                (if (gx#stx-pair? _tl9288892993_)
                                    (let ((_e9288992996_
                                           (gx#syntax-e _tl9288892993_)))
                                      (let ((_hd9289092999_
                                             (##car _e9288992996_))
                                            (_tl9289193001_
                                             (##cdr _e9288992996_)))
                                        (let* ((_prelude93004_ _hd9289092999_)
                                               (_rest93006_ _tl9289193001_))
                                          (if '#t
                                              (_lp92877_
                                               _rest93006_
                                               _prelude93004_
                                               _ns92881_
                                               _pkg92882_)
                                              (_E9288592984_)))))
                                    (_E9288592984_))
                                (_E9288592984_))))
                        (_E9288592984_)))))
            (_E9288493008_)))))
    (define gx#core-read-module/lang
      (lambda (_path92702_)
        (letrec ((_default-read-module-body92704_
                  (lambda (_inp92867_)
                    (let _lp92869_ ((_body92871_ '()))
                      (let ((_next92873_ (read-syntax _inp92867_)))
                        (if (eof-object? _next92873_)
                            (reverse _body92871_)
                            (_lp92869_ (cons _next92873_ _body92871_)))))))
                 (_read-body92705_
                  (lambda (_inp92786_
                           _pre92787_
                           _ns92788_
                           _pkg92789_
                           _args92790_)
                    (let ((_g94210_
                           (if _pkg92789_
                               (values _pre92787_ _ns92788_ _pkg92789_)
                               (gx#core-read-module-package
                                _path92702_
                                _pre92787_
                                _ns92788_))))
                      (begin
                        (let ((_g94211_
                               (if (##values? _g94210_)
                                   (##vector-length _g94210_)
                                   1)))
                          (if (not (##fx= _g94211_ 3))
                              (error "Context expects 3 values" _g94211_)))
                        (let ((_pre92792_ (##vector-ref _g94210_ 0))
                              (_ns92793_ (##vector-ref _g94210_ 1))
                              (_pkg92794_ (##vector-ref _g94210_ 2)))
                          (let* ((_prelude92796_
                                  (gx#import-module__0 _pre92792_))
                                 (_read-module-body92850_
                                  (let ((_$e92842_
                                         (find (lambda (_e9279792799_)
                                                 (let* ((_g9280192811_
                                                         _e9279792799_)
                                                        (_else9280392819_
                                                         (lambda () '#f))
                                                        (_K9280592823_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9280192811_
                                                        'gx#module-export::t)
                                                       (let* ((_e9280692826_
                                                               (##unchecked-structure-ref
                                                                _g9280192811_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9280792829_
                                                               (##unchecked-structure-ref
                                                                _g9280192811_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9280892832_
                                                               (##unchecked-structure-ref
                                                                _g9280192811_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9280892832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9280992835_
                            (##unchecked-structure-ref
                             _g9280192811_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9283792839_)
                              (eq? _g9283792839_ 'read-module-body))
                            _e9280992835_)
                           (_K9280592823_)
                           (_else9280392819_)))
                     (_else9280392819_)))
               (_else9280392819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude92796_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e92842_
                                        ((lambda (_xport92845_)
                                           (let ((_proc92848_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport92845_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc92848_)
                                                 _proc92848_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path92702_
                                                  _pre92792_
                                                  _proc92848_))))
                                         _$e92842_)
                                        _default-read-module-body92704_)))
                                 (_path-id92852_
                                  (gx#core-module-path->namespace _path92702_))
                                 (_pkg-id92854_
                                  (if _pkg92794_
                                      (string-append
                                       _pkg92794_
                                       '"/"
                                       _path-id92852_)
                                      _path-id92852_))
                                 (_module-id92856_
                                  (string->symbol _pkg-id92854_))
                                 (_module-ns92861_
                                  (let ((_$e92858_ _ns92793_))
                                    (if _$e92858_ _$e92858_ _pkg-id92854_)))
                                 (_body92864_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body92850_ _inp92786_))
                                   gx#current-module-reader-path
                                   _path92702_
                                   gx#current-module-reader-args
                                   _args92790_)))
                            (values _prelude92796_
                                    _module-id92856_
                                    _module-ns92861_
                                    _body92864_)))))))
                 (_string-e92706_
                  (lambda (_obj92783_ _what92784_)
                    (if (string? _obj92783_)
                        _obj92783_
                        (if (symbol? _obj92783_)
                            (symbol->string _obj92783_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what92784_)
                             _path92702_
                             _obj92783_)))))
                 (_read-lang-args92707_
                  (lambda (_inp92738_ _args92739_)
                    (let* ((_args9274092748_ _args92739_)
                           (_else9274292756_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path92702_)))
                           (_K9274492771_
                            (lambda (_args92759_ _prelude92760_)
                              (let* ((_pkg92762_
                                      (pgetq__0 'package: _args92759_))
                                     (_pkg92764_
                                      (if _pkg92762_
                                          (_string-e92706_
                                           _pkg92762_
                                           '"package")
                                          '#f))
                                     (_ns92766_
                                      (pgetq__0 'namespace: _args92759_))
                                     (_ns92768_
                                      (if _ns92766_
                                          (_string-e92706_
                                           _ns92766_
                                           '"namespace")
                                          '#f)))
                                (_read-body92705_
                                 _inp92738_
                                 _prelude92760_
                                 _ns92768_
                                 _pkg92764_
                                 _args92759_)))))
                      (if (##pair? _args9274092748_)
                          (let ((_hd9274592774_ (##car _args9274092748_))
                                (_tl9274692776_ (##cdr _args9274092748_)))
                            (let* ((_prelude92779_ _hd9274592774_)
                                   (_args92781_ _tl9274692776_))
                              (_K9274492771_ _args92781_ _prelude92779_)))
                          (_else9274292756_)))))
                 (_read-lang92708_
                  (lambda (_inp92713_)
                    (let* ((_head92715_ (read-line _inp92713_))
                           (_$e92717_ (string-index__0 _head92715_ '#\space)))
                      (if _$e92717_
                          ((lambda (_ix92720_)
                             (let ((_lang92722_
                                    (substring _head92715_ '0 _ix92720_)))
                               (if (equal? _lang92722_ '"#lang")
                                   (let* ((_rest92724_
                                           (substring
                                            _head92715_
                                            (fx+ _ix92720_ '1)
                                            (string-length _head92715_)))
                                          (_args92735_
                                           (with-catch
                                            (lambda (_g9272592727_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path92702_
                                               _g9272592727_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest92724_
                                               (lambda (_g9273092732_)
                                                 (read-all
                                                  _g9273092732_
                                                  read)))))))
                                     (_read-lang-args92707_
                                      _inp92713_
                                      _args92735_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path92702_))))
                           _$e92717_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path92702_)))))
                 (_read-e92709_
                  (lambda (_inp92711_)
                    (if (eq? (peek-char _inp92711_) '#\#)
                        (_read-lang92708_ _inp92711_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path92702_)))))
          (gx#call-with-input-source-file _path92702_ _read-e92709_))))
    (define gx#core-read-module-package
      (lambda (_path92656_ _pre92657_ _ns92658_)
        (letrec ((_string-e92660_
                  (lambda (_e92700_)
                    (if (symbol? _e92700_)
                        (symbol->string _e92700_)
                        (if (string? _e92700_)
                            _e92700_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e92700_))))))
          (let _lp92662_ ((_dir92664_ (path-directory _path92656_))
                          (_pkg-path92665_ '()))
            (let ((_gerbil.pkg92667_ (path-expand '"gerbil.pkg" _dir92664_)))
              (if (file-exists? _gerbil.pkg92667_)
                  (let ((_plist92669_
                         (gx#core-library-package-plist__% _dir92664_ '#t)))
                    (if (null? _plist92669_)
                        (let ((_pkg92671_
                               (if (not (null? _pkg-path92665_))
                                   (string-join _pkg-path92665_ '"/")
                                   '#f)))
                          (values _pre92657_ _ns92658_ _pkg92671_))
                        (if (list? _plist92669_)
                            (let* ((_root92673_
                                    (pgetq__0 'package: _plist92669_))
                                   (_pkg92677_
                                    (let ((_pkg-path92675_
                                           (if _root92673_
                                               (cons (_string-e92660_
                                                      _root92673_)
                                                     _pkg-path92665_)
                                               _pkg-path92665_)))
                                      (if (not (null? _pkg-path92675_))
                                          (string-join _pkg-path92675_ '"/")
                                          '#f)))
                                   (_ns92684_
                                    (let ((_ns92682_
                                           (let ((_$e92679_ _ns92658_))
                                             (if _$e92679_
                                                 _$e92679_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist92669_)))))
                                      (if _ns92682_
                                          (_string-e92660_ _ns92682_)
                                          '#f)))
                                   (_pre92689_
                                    (let ((_$e92686_ _pre92657_))
                                      (if _$e92686_
                                          _$e92686_
                                          (pgetq__0 'prelude: _plist92669_)))))
                              (values _pre92689_ _ns92684_ _pkg92677_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist92669_))))
                  (let ((_dir*92692_
                         (path-strip-trailing-directory-separator _dir92664_)))
                    (if (or (string-empty? _dir*92692_)
                            (equal? _dir92664_ _dir*92692_))
                        (values _pre92657_ _ns92658_ '#f)
                        (let ((_xpath92697_ (path-strip-directory _dir*92692_))
                              (_xdir92698_ (path-directory _dir*92692_)))
                          (_lp92662_
                           _xdir92698_
                           (cons _xpath92697_ _pkg-path92665_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path92654_)
        (path-strip-extension (path-strip-directory _path92654_))))
    (define gx#core-module-path->id
      (lambda (_path92652_)
        (string->symbol (gx#core-module-path->namespace _path92652_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path92631_ _rel92632_)
        (let* ((_path92634_ (gx#stx-e _stx-path92631_))
               (_path92636_
                (if (string-empty? (path-extension _path92634_))
                    (string-append _path92634_ '".ss")
                    _path92634_)))
          (gx#core-resolve-path__%
           _path92636_
           (let ((_$e92639_ (gx#stx-source _stx-path92631_)))
             (if _$e92639_ _$e92639_ _rel92632_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path92645_)
        (let ((_rel92647_ '#f))
          (gx#core-resolve-module-path__% _stx-path92645_ _rel92647_))))
    (define gx#core-resolve-module-path
      (lambda _g94213_
        (let ((_g94212_ (##length _g94213_)))
          (cond ((##fx= _g94212_ 1)
                 (apply (lambda (_stx-path92645_)
                          (gx#core-resolve-module-path__0 _stx-path92645_))
                        _g94213_))
                ((##fx= _g94212_ 2)
                 (apply (lambda (_stx-path92649_ _rel92650_)
                          (gx#core-resolve-module-path__%
                           _stx-path92649_
                           _rel92650_))
                        _g94213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94213_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92517_)
        (let* ((_spath92519_ (symbol->string (gx#stx-e _libpath92517_)))
               (_spath92521_
                (substring _spath92519_ '1 (string-length _spath92519_)))
               (_ext92523_ (path-extension _spath92521_))
               (_ssi92525_
                (if (string-empty? _ext92523_)
                    (string-append _spath92521_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92521_)
                     '".ssi")))
               (_srcs92529_
                (if (string-empty? _ext92523_)
                    (map (lambda (_ext92527_)
                           (string-append _spath92521_ _ext92527_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92521_ '()))))
          (let _lp92532_ ((_rest92534_ (load-path)))
            (let* ((_rest9253592544_ _rest92534_)
                   (_E9253892548_
                    (lambda ()
                      (error '"No clause matching" _rest9253592544_))))
              (let ((_K9254092618_
                     (lambda (_rest92559_ _dir92560_)
                       (letrec ((_resolve92562_
                                 (lambda (_ssi92574_ _srcs92575_)
                                   (let ((_compiled-path92577_
                                          (path-expand _ssi92574_ _dir92560_)))
                                     (if (file-exists? _compiled-path92577_)
                                         (path-normalize _compiled-path92577_)
                                         (let _lpr92579_ ((_rest-src92581_
                                                           _srcs92575_))
                                           (let* ((_rest-src9258292590_
                                                   _rest-src92581_)
                                                  (_else9258492598_
                                                   (lambda ()
                                                     (_lp92532_ _rest92559_)))
                                                  (_K9258692606_
                                                   (lambda (_rest-src92601_
                                                            _src92602_)
                                                     (let ((_src-path92604_
                                                            (path-expand
                                                             _src92602_
                                                             _dir92560_)))
                                                       (if (file-exists?
                                                            _src-path92604_)
                                                           (path-normalize
                                                            _src-path92604_)
                                                           (_lpr92579_
                                                            _rest-src92601_))))))
                                             (if (##pair? _rest-src9258292590_)
                                                 (let ((_hd9258792609_
                                                        (##car _rest-src9258292590_))
                                                       (_tl9258892611_
                                                        (##cdr _rest-src9258292590_)))
                                                   (let* ((_src92614_
                                                           _hd9258792609_)
                                                          (_rest-src92616_
                                                           _tl9258892611_))
                                                     (_K9258692606_
                                                      _rest-src92616_
                                                      _src92614_)))
                                                 (_else9258492598_)))))))))
                         (let ((_$e92564_
                                (gx#core-library-package-path-prefix
                                 _dir92560_)))
                           (if _$e92564_
                               ((lambda (_prefix92567_)
                                  (if (string-prefix?
                                       _prefix92567_
                                       _spath92521_)
                                      (let ((_ssi92571_
                                             (substring
                                              _ssi92525_
                                              (string-length _prefix92567_)
                                              (string-length _ssi92525_)))
                                            (_srcs92572_
                                             (map (lambda (_src92569_)
                                                    (substring
                                                     _src92569_
                                                     (string-length
                                                      _prefix92567_)
                                                     (string-length
                                                      _src92569_)))
                                                  _srcs92529_)))
                                        (_resolve92562_
                                         _ssi92571_
                                         _srcs92572_))
                                      (_lp92532_ _rest92559_)))
                                _$e92564_)
                               (_resolve92562_ _ssi92525_ _srcs92529_))))))
                    (_K9253992553_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92517_))))
                (let ((_try-match9253792556_
                       (lambda ()
                         (if (##null? _rest9253592544_)
                             (_K9253992553_)
                             (_E9253892548_)))))
                  (if (##pair? _rest9253592544_)
                      (let ((_tl9254292623_ (##cdr _rest9253592544_))
                            (_hd9254192621_ (##car _rest9253592544_)))
                        (let ((_dir92626_ _hd9254192621_)
                              (_rest92628_ _tl9254292623_))
                          (_K9254092618_ _rest92628_ _dir92626_)))
                      (_try-match9253792556_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92490_)
        (letrec ((_resolve92492_
                  (lambda (_path92509_ _base92510_)
                    (let ((_$e92512_ (string-rindex__0 _base92510_ '#\/)))
                      (if _$e92512_
                          ((lambda (_idx92515_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92510_ '0 _idx92515_)
                                '"/"
                                _path92509_))))
                           _$e92512_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92509_))))))))
          (let ((_spath92494_ (symbol->string (gx#stx-e _modpath92490_)))
                (_mod92495_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92495_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92490_))
            (let ((_mpath92497_
                   (symbol->string
                    (##structure-ref
                     _mod92495_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92499_ ((_spath92501_ _spath92494_)
                              (_mpath92502_ _mpath92497_))
                (if (string-prefix? '"../" _spath92501_)
                    (let ((_$e92504_ (string-rindex__0 _mpath92502_ '#\/)))
                      (if _$e92504_
                          ((lambda (_idx92507_)
                             (_lp92499_
                              (substring
                               _spath92501_
                               '3
                               (string-length _spath92501_))
                              (substring _mpath92502_ '0 _idx92507_)))
                           _$e92504_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92490_)))
                    (if (string-prefix? '"./" _spath92501_)
                        (_lp92499_
                         (substring
                          _spath92501_
                          '2
                          (string-length _spath92501_))
                         _mpath92502_)
                        (_resolve92492_ _spath92501_ _mpath92502_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92483_)
        (let ((_$e92485_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92483_))))
          (if _$e92485_
              ((lambda (_pkg92488_)
                 (string-append (symbol->string _pkg92488_) '"/"))
               _$e92485_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92457_ _exists?92458_)
        (let ((_$e92460_ (hash-get gx#__module-pkg-cache _dir92457_)))
          (if _$e92460_
              (values _$e92460_)
              (let* ((_gerbil.pkg92463_ (path-expand '"gerbil.pkg" _dir92457_))
                     (_plist92470_
                      (if (or _exists?92458_ (file-exists? _gerbil.pkg92463_))
                          (let ((_e92468_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92463_
                                  read)))
                            (if (eof-object? _e92468_)
                                '()
                                (if (list? _e92468_)
                                    _e92468_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92463_
                                     _e92468_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92457_ _plist92470_)
                _plist92470_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92476_)
        (let ((_exists?92478_ '#f))
          (gx#core-library-package-plist__% _dir92476_ _exists?92478_))))
    (define gx#core-library-package-plist
      (lambda _g94215_
        (let ((_g94214_ (##length _g94215_)))
          (cond ((##fx= _g94214_ 1)
                 (apply (lambda (_dir92476_)
                          (gx#core-library-package-plist__0 _dir92476_))
                        _g94215_))
                ((##fx= _g94214_ 2)
                 (apply (lambda (_dir92480_ _exists?92481_)
                          (gx#core-library-package-plist__%
                           _dir92480_
                           _exists?92481_))
                        _g94215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94215_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92454_) (gx#core-special-module-path? _stx92454_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92452_) (gx#core-special-module-path? _stx92452_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92447_ _char92448_)
        (if (gx#identifier? _stx92447_)
            (if (interned-symbol? (gx#stx-e _stx92447_))
                (let ((_str92450_ (symbol->string (gx#stx-e _stx92447_))))
                  (if (fx> (string-length _str92450_) '1)
                      (eq? (string-ref _str92450_ '0) _char92448_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92441_)
        (gx#core-bound-identifier?__%
         _stx92441_
         (lambda (_g9244292444_)
           (gx#expander-binding?__% _g9244292444_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92435_)
        (gx#core-bound-identifier?__%
         _stx92435_
         (lambda (_g9243692438_)
           (gx#expander-binding?__% _g9243692438_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92422_)
        (letrec ((_module-prelude?92424_
                  (lambda (_e92430_)
                    (let ((_$e92432_
                           (##structure-instance-of?
                            _e92430_
                            'gx#module-context::t)))
                      (if _$e92432_
                          _$e92432_
                          (##structure-instance-of?
                           _e92430_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92422_
           (lambda (_g9242592427_)
             (gx#expander-binding?__%
              _g9242592427_
              _module-prelude?92424_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92352_ _ctx92353_ _force-weak?92354_)
        (let* ((_in9235592364_ _in92352_)
               (_E9235792368_
                (lambda () (error '"No clause matching" _in9235592364_)))
               (_K9235892381_
                (lambda (_weak?92371_ _phi92372_ _key92373_ _source92374_)
                  (gx#core-bind!__%
                   _key92373_
                   (let ((_e92376_
                          (gx#core-resolve-module-export _source92374_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92376_ '1 gx#binding::t '#f)
                      _key92373_
                      _phi92372_
                      _e92376_
                      (##unchecked-structure-ref
                       _source92374_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92378_ _force-weak?92354_))
                        (if _$e92378_ _$e92378_ _weak?92371_))))
                   gx#core-context-rebind?
                   _phi92372_
                   _ctx92353_))))
          (if (##structure-direct-instance-of?
               _in9235592364_
               'gx#module-import::t)
              (let* ((_e9235992384_
                      (##unchecked-structure-ref
                       _in9235592364_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92387_ _e9235992384_)
                     (_e9236092389_
                      (##unchecked-structure-ref
                       _in9235592364_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92392_ _e9236092389_)
                     (_e9236192394_
                      (##unchecked-structure-ref
                       _in9235592364_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92397_ _e9236192394_)
                     (_e9236292399_
                      (##unchecked-structure-ref
                       _in9235592364_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92402_ _e9236292399_))
                (_K9235892381_
                 _weak?92402_
                 _phi92397_
                 _key92392_
                 _source92387_))
              (_E9235792368_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92407_)
        (let* ((_ctx92409_ (gx#current-expander-context))
               (_force-weak?92411_ '#f))
          (gx#core-bind-import!__% _in92407_ _ctx92409_ _force-weak?92411_))))
    (define gx#core-bind-import!__1
      (lambda (_in92413_ _ctx92414_)
        (let ((_force-weak?92416_ '#f))
          (gx#core-bind-import!__% _in92413_ _ctx92414_ _force-weak?92416_))))
    (define gx#core-bind-import!
      (lambda _g94217_
        (let ((_g94216_ (##length _g94217_)))
          (cond ((##fx= _g94216_ 1)
                 (apply (lambda (_in92407_)
                          (gx#core-bind-import!__0 _in92407_))
                        _g94217_))
                ((##fx= _g94216_ 2)
                 (apply (lambda (_in92413_ _ctx92414_)
                          (gx#core-bind-import!__1 _in92413_ _ctx92414_))
                        _g94217_))
                ((##fx= _g94216_ 3)
                 (apply (lambda (_in92418_ _ctx92419_ _force-weak?92420_)
                          (gx#core-bind-import!__%
                           _in92418_
                           _ctx92419_
                           _force-weak?92420_))
                        _g94217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94217_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92338_ _ctx92339_)
        (gx#core-bind-import!__% _in92338_ _ctx92339_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92344_)
        (let ((_ctx92346_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92344_ _ctx92346_))))
    (define gx#core-bind-weak-import!
      (lambda _g94219_
        (let ((_g94218_ (##length _g94219_)))
          (cond ((##fx= _g94218_ 1)
                 (apply (lambda (_in92344_)
                          (gx#core-bind-weak-import!__0 _in92344_))
                        _g94219_))
                ((##fx= _g94218_ 2)
                 (apply (lambda (_in92348_ _ctx92349_)
                          (gx#core-bind-weak-import!__% _in92348_ _ctx92349_))
                        _g94219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94219_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92229_)
        (letrec ((_subst92231_
                  (lambda (_key92277_)
                    (let* ((_key9227892286_ _key92277_)
                           (_else9228092294_ (lambda () _key92277_))
                           (_K9228292325_
                            (lambda (_mark92297_ _id92298_)
                              (let* ((_mark9229992305_ _mark92297_)
                                     (_E9230192309_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9229992305_)))
                                     (_K9230292317_
                                      (lambda (_subst92312_)
                                        (let ((_$e92314_
                                               (if _subst92312_
                                                   (hash-get
                                                    _subst92312_
                                                    _id92298_)
                                                   '#f)))
                                          (if _$e92314_
                                              _$e92314_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92277_))))))
                                (if (##structure-instance-of?
                                     _mark9229992305_
                                     'gx#expander-mark::t)
                                    (let* ((_e9230392320_
                                            (##unchecked-structure-ref
                                             _mark9229992305_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92323_ _e9230392320_))
                                      (_K9230292317_ _subst92323_))
                                    (_E9230192309_))))))
                      (if (##pair? _key9227892286_)
                          (let ((_hd9228392328_ (##car _key9227892286_))
                                (_tl9228492330_ (##cdr _key9227892286_)))
                            (let* ((_id92333_ _hd9228392328_)
                                   (_mark92335_ _tl9228492330_))
                              (_K9228292325_ _mark92335_ _id92333_)))
                          (_else9228092294_))))))
          (let* ((_out9223292242_ _out92229_)
                 (_E9223492246_
                  (lambda () (error '"No clause matching" _out9223292242_)))
                 (_K9223592253_
                  (lambda (_phi92249_ _key92250_ _ctx92251_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92251_ _phi92249_)
                     (_subst92231_ _key92250_)))))
            (if (##structure-direct-instance-of?
                 _out9223292242_
                 'gx#module-export::t)
                (let* ((_e9223692256_
                        (##unchecked-structure-ref
                         _out9223292242_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92259_ _e9223692256_)
                       (_e9223792261_
                        (##unchecked-structure-ref
                         _out9223292242_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92264_ _e9223792261_)
                       (_e9223892266_
                        (##unchecked-structure-ref
                         _out9223292242_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92269_ _e9223892266_)
                       (_e9223992271_
                        (##unchecked-structure-ref
                         _out9223292242_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9224092274_
                        (##unchecked-structure-ref
                         _out9223292242_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9223592253_ _phi92269_ _key92264_ _ctx92259_))
                (_E9223492246_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92154_ _rename92155_ _dphi92156_)
        (let* ((_out9215792167_ _out92154_)
               (_E9215992171_
                (lambda () (error '"No clause matching" _out9215792167_)))
               (_K9216092183_
                (lambda (_weak?92174_
                         _name92175_
                         _phi92176_
                         _key92177_
                         _ctx92178_)
                  (##structure
                   gx#module-import::t
                   _out92154_
                   (let ((_$e92180_ _rename92155_))
                     (if _$e92180_ _$e92180_ _name92175_))
                   (fx+ _phi92176_ _dphi92156_)
                   _weak?92174_))))
          (if (##structure-direct-instance-of?
               _out9215792167_
               'gx#module-export::t)
              (let* ((_e9216192186_
                      (##unchecked-structure-ref
                       _out9215792167_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92189_ _e9216192186_)
                     (_e9216292191_
                      (##unchecked-structure-ref
                       _out9215792167_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92194_ _e9216292191_)
                     (_e9216392196_
                      (##unchecked-structure-ref
                       _out9215792167_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92199_ _e9216392196_)
                     (_e9216492201_
                      (##unchecked-structure-ref
                       _out9215792167_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92204_ _e9216492201_)
                     (_e9216592206_
                      (##unchecked-structure-ref
                       _out9215792167_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92209_ _e9216592206_))
                (_K9216092183_
                 _weak?92209_
                 _name92204_
                 _phi92199_
                 _key92194_
                 _ctx92189_))
              (_E9215992171_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92214_)
        (let* ((_rename92216_ '#f) (_dphi92218_ '0))
          (gx#core-module-export->import__%
           _out92214_
           _rename92216_
           _dphi92218_))))
    (define gx#core-module-export->import__1
      (lambda (_out92220_ _rename92221_)
        (let ((_dphi92223_ '0))
          (gx#core-module-export->import__%
           _out92220_
           _rename92221_
           _dphi92223_))))
    (define gx#core-module-export->import
      (lambda _g94221_
        (let ((_g94220_ (##length _g94221_)))
          (cond ((##fx= _g94220_ 1)
                 (apply (lambda (_out92214_)
                          (gx#core-module-export->import__0 _out92214_))
                        _g94221_))
                ((##fx= _g94220_ 2)
                 (apply (lambda (_out92220_ _rename92221_)
                          (gx#core-module-export->import__1
                           _out92220_
                           _rename92221_))
                        _g94221_))
                ((##fx= _g94220_ 3)
                 (apply (lambda (_out92225_ _rename92226_ _dphi92227_)
                          (gx#core-module-export->import__%
                           _out92225_
                           _rename92226_
                           _dphi92227_))
                        _g94221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94221_))))))
    (define gx#core-expand-module%
      (lambda (_stx92056_)
        (letrec ((_make-context92058_
                  (lambda (_id92135_)
                    (let* ((_super92137_ (gx#current-expander-context))
                           (_bind-id92139_ (gx#stx-e _id92135_))
                           (_mod-id92141_
                            (if (##structure-instance-of?
                                 _super92137_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92137_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92139_)
                                _bind-id92139_))
                           (_ns92143_ (symbol->string _mod-id92141_))
                           (_path92150_
                            (if (##structure-instance-of?
                                 _super92137_
                                 'gx#module-context::t)
                                (let ((_path92145_
                                       (##unchecked-structure-ref
                                        _super92137_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92145_)
                                          (null? _path92145_))
                                      (cons _bind-id92139_ _path92145_)
                                      (if (not _path92145_)
                                          _bind-id92139_
                                          (cons _bind-id92139_
                                                (cons _path92145_ '())))))
                                _bind-id92139_)))
                      (let ((__obj94197
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
                         __obj94197
                         _mod-id92141_
                         _super92137_
                         _ns92143_
                         _path92150_)
                        __obj94197))))
                 (_valid-module-id?92059_
                  (lambda (_id92110_)
                    (let* ((_str92112_ (symbol->string _id92110_))
                           (_len92114_ (string-length _str92112_)))
                      (if (fx>= _len92114_ '1)
                          (let _loop92117_ ((_index92119_
                                             (fx- (string-length _str92112_)
                                                  '1)))
                            (if (fx>= _index92119_ '0)
                                (let ((_c92121_
                                       (string-ref _str92112_ _index92119_)))
                                  (if (or (and (char>=? _c92121_ '#\a)
                                               (char<=? _c92121_ '#\z))
                                          (and (char>=? _c92121_ '#\A)
                                               (char<=? _c92121_ '#\Z))
                                          (and (char>=? _c92121_ '#\0)
                                               (char<=? _c92121_ '#\9))
                                          (char=? _c92121_ '#\_)
                                          (char=? _c92121_ '#\-))
                                      (_loop92117_ (fx- _index92119_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9206092070_ _stx92056_)
                 (_E9206292074_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9206092070_)))
                 (_E9206192106_
                  (lambda ()
                    (if (gx#stx-pair? _e9206092070_)
                        (let ((_e9206392078_ (gx#syntax-e _e9206092070_)))
                          (let ((_hd9206492081_ (##car _e9206392078_))
                                (_tl9206592083_ (##cdr _e9206392078_)))
                            (if (gx#stx-pair? _tl9206592083_)
                                (let ((_e9206692086_
                                       (gx#syntax-e _tl9206592083_)))
                                  (let ((_hd9206792089_ (##car _e9206692086_))
                                        (_tl9206892091_ (##cdr _e9206692086_)))
                                    (let* ((_id92094_ _hd9206792089_)
                                           (_body92096_ _tl9206892091_))
                                      (if (and (gx#identifier? _id92094_)
                                               (gx#stx-list? _body92096_))
                                          (if (_valid-module-id?92059_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92098_
                                                      (_make-context92058_
                                                       _id92094_))
                                                     (_body92100_
                                                      (gx#core-expand-module-begin
                                                       _body92096_
                                                       _ctx92098_))
                                                     (_body92102_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92100_)
                                                       (gx#stx-source
                                                        _stx92056_))))
                                                (##unchecked-structure-set!
                                                 _ctx92098_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92102_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92098_
                                                 _body92102_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92094_
                                                 _ctx92098_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92094_)
                                                  _body92102_)
                                                 (gx#stx-source _stx92056_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92056_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9206292074_)))))
                                (_E9206292074_))))
                        (_E9206292074_)))))
            (_E9206192106_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92022_ _ctx92023_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92026_
                   (gx#core-expand-head (cons '%%begin-module _body92022_)))
                  (_e9202792034_ _stx92026_)
                  (_E9202992038_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92026_)))
                  (_E9202892052_
                   (lambda ()
                     (if (gx#stx-pair? _e9202792034_)
                         (let ((_e9203092042_ (gx#syntax-e _e9202792034_)))
                           (let ((_hd9203192045_ (##car _e9203092042_))
                                 (_tl9203292047_ (##cdr _e9203092042_)))
                             (if (and (gx#identifier? _hd9203192045_)
                                      (gx#core-identifier=?
                                       _hd9203192045_
                                       '%#begin-module))
                                 (let ((_body92050_ _tl9203292047_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92026_)
                                           _body92050_
                                           (gx#core-expand-module-body
                                            _body92050_))
                                       (_E9202992038_)))
                                 (_E9202992038_))))
                         (_E9202992038_)))))
             (_E9202892052_)))
         gx#current-expander-context
         _ctx92023_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body91818_)
        (letrec ((_expand-special91820_
                  (lambda (_hd91949_ _K91950_ _rest91951_ _r91952_)
                    (let* ((_e9195391970_ _hd91949_)
                           (_E9196591974_
                            (lambda ()
                              (_K91950_
                               _rest91951_
                               (cons (gx#core-expand-top _hd91949_)
                                     _r91952_))))
                           (_E9195591986_
                            (lambda ()
                              (if (gx#stx-pair? _e9195391970_)
                                  (let ((_e9196691978_
                                         (gx#syntax-e _e9195391970_)))
                                    (let ((_hd9196791981_
                                           (##car _e9196691978_))
                                          (_tl9196891983_
                                           (##cdr _e9196691978_)))
                                      (if (and (gx#identifier? _hd9196791981_)
                                               (gx#core-identifier=?
                                                _hd9196791981_
                                                '%#export))
                                          (if '#t
                                              (_K91950_
                                               _rest91951_
                                               (cons _hd91949_ _r91952_))
                                              (_E9196591974_))
                                          (_E9196591974_))))
                                  (_E9196591974_))))
                           (_E9195492018_
                            (lambda ()
                              (if (gx#stx-pair? _e9195391970_)
                                  (let ((_e9195691990_
                                         (gx#syntax-e _e9195391970_)))
                                    (let ((_hd9195791993_
                                           (##car _e9195691990_))
                                          (_tl9195891995_
                                           (##cdr _e9195691990_)))
                                      (if (and (gx#identifier? _hd9195791993_)
                                               (gx#core-identifier=?
                                                _hd9195791993_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9195891995_)
                                              (let ((_e9195991998_
                                                     (gx#syntax-e
                                                      _tl9195891995_)))
                                                (let ((_hd9196092001_
                                                       (##car _e9195991998_))
                                                      (_tl9196192003_
                                                       (##cdr _e9195991998_)))
                                                  (let ((_hd-bind92006_
                                                         _hd9196092001_))
                                                    (if (gx#stx-pair?
                                                         _tl9196192003_)
                                                        (let ((_e9196292008_
                                                               (gx#syntax-e
                                                                _tl9196192003_)))
                                                          (let ((_hd9196392011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9196292008_))
                        (_tl9196492013_ (##cdr _e9196292008_)))
                    (let ((_expr92016_ _hd9196392011_))
                      (if (gx#stx-null? _tl9196492013_)
                          (if (gx#core-bind-values? _hd-bind92006_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92006_)
                                (_K91950_
                                 _rest91951_
                                 (cons _hd91949_ _r91952_)))
                              (_E9195591986_))
                          (_E9195591986_)))))
                (_E9195591986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9195591986_))
                                          (_E9195591986_))))
                                  (_E9195591986_)))))
                      (_E9195492018_))))
                 (_expand-body91821_
                  (lambda (_rbody91823_)
                    (let _lp91825_ ((_rest91827_ _rbody91823_)
                                    (_body91828_ '()))
                      (let* ((_rest9182991837_ _rest91827_)
                             (_else9183191845_ (lambda () _body91828_))
                             (_K9183391937_
                              (lambda (_rest91848_ _hd91849_)
                                (let* ((_e9185091871_ _hd91849_)
                                       (_E9186691875_
                                        (lambda ()
                                          (_lp91825_
                                           _rest91848_
                                           (cons (gx#core-expand-expression
                                                  _hd91849_)
                                                 _body91828_))))
                                       (_E9186291889_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9185091871_)
                                              (let ((_e9186791879_
                                                     (gx#syntax-e
                                                      _e9185091871_)))
                                                (let ((_hd9186891882_
                                                       (##car _e9186791879_))
                                                      (_tl9186991884_
                                                       (##cdr _e9186791879_)))
                                                  (let ((_form91887_
                                                         _hd9186891882_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form91887_
                                                         gx#special-form-binding?)
                                                        (_lp91825_
                                                         _rest91848_
                                                         (cons _hd91849_
                                                               _body91828_))
                                                        (_E9186691875_)))))
                                              (_E9186691875_))))
                                       (_E9185291901_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9185091871_)
                                              (let ((_e9186391893_
                                                     (gx#syntax-e
                                                      _e9185091871_)))
                                                (let ((_hd9186491896_
                                                       (##car _e9186391893_))
                                                      (_tl9186591898_
                                                       (##cdr _e9186391893_)))
                                                  (if (and (gx#identifier?
                                                            _hd9186491896_)
                                                           (gx#core-identifier=?
                                                            _hd9186491896_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp91825_
                                                           _rest91848_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91849_)
                         _body91828_))
                  (_E9186291889_))
              (_E9186291889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9186291889_))))
                                       (_E9185191933_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9185091871_)
                                              (let ((_e9185391905_
                                                     (gx#syntax-e
                                                      _e9185091871_)))
                                                (let ((_hd9185491908_
                                                       (##car _e9185391905_))
                                                      (_tl9185591910_
                                                       (##cdr _e9185391905_)))
                                                  (if (and (gx#identifier?
                                                            _hd9185491908_)
                                                           (gx#core-identifier=?
                                                            _hd9185491908_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9185591910_)
                                                          (let ((_e9185691913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9185591910_)))
                    (let ((_hd9185791916_ (##car _e9185691913_))
                          (_tl9185891918_ (##cdr _e9185691913_)))
                      (let ((_hd-bind91921_ _hd9185791916_))
                        (if (gx#stx-pair? _tl9185891918_)
                            (let ((_e9185991923_ (gx#syntax-e _tl9185891918_)))
                              (let ((_hd9186091926_ (##car _e9185991923_))
                                    (_tl9186191928_ (##cdr _e9185991923_)))
                                (let ((_expr91931_ _hd9186091926_))
                                  (if (gx#stx-null? _tl9186191928_)
                                      (if '#t
                                          (_lp91825_
                                           _rest91848_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind91921_)
                                                   (gx#core-expand-expression
                                                    _expr91931_))
                                                  (gx#stx-source _hd91849_))
                                                 _body91828_))
                                          (_E9185291901_))
                                      (_E9185291901_)))))
                            (_E9185291901_)))))
                  (_E9185291901_))
              (_E9185291901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9185291901_)))))
                                  (_E9185191933_)))))
                        (if (##pair? _rest9182991837_)
                            (let ((_hd9183491940_ (##car _rest9182991837_))
                                  (_tl9183591942_ (##cdr _rest9182991837_)))
                              (let* ((_hd91945_ _hd9183491940_)
                                     (_rest91947_ _tl9183591942_))
                                (_K9183391937_ _rest91947_ _hd91945_)))
                            (_else9183191845_)))))))
          (_expand-body91821_
           (gx#core-expand-block__%
            (cons '%#begin-module _body91818_)
            _expand-special91820_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx91661_
               _expanded?91662_
               _method91663_
               _current-phi91664_
               _expand191665_)
        (letrec ((_K91667_
                  (lambda (_rest91785_ _r91786_)
                    (let* ((_e9178791794_ _rest91785_)
                           (_E9178991798_ (lambda () _r91786_))
                           (_E9178891814_
                            (lambda ()
                              (if (gx#stx-pair? _e9178791794_)
                                  (let ((_e9179091802_
                                         (gx#syntax-e _e9178791794_)))
                                    (let ((_hd9179191805_
                                           (##car _e9179091802_))
                                          (_tl9179291807_
                                           (##cdr _e9179091802_)))
                                      (let* ((_hd91810_ _hd9179191805_)
                                             (_rest91812_ _tl9179291807_))
                                        (if '#t
                                            (_step91668_
                                             _hd91810_
                                             _rest91812_
                                             _r91786_)
                                            (_E9178991798_)))))
                                  (_E9178991798_)))))
                      (_E9178891814_))))
                 (_step91668_
                  (lambda (_hd91699_ _rest91700_ _r91701_)
                    (let* ((_e9170291720_ _hd91699_)
                           (_E9171591724_
                            (lambda ()
                              (if (_expanded?91662_ (gx#stx-e _hd91699_))
                                  (_K91667_
                                   _rest91700_
                                   (cons (gx#stx-e _hd91699_) _r91701_))
                                  (_expand191665_
                                   _hd91699_
                                   _K91667_
                                   _rest91700_
                                   _r91701_))))
                           (_E9171191740_
                            (lambda ()
                              (if (gx#stx-pair? _e9170291720_)
                                  (let ((_e9171691728_
                                         (gx#syntax-e _e9170291720_)))
                                    (let ((_hd9171791731_
                                           (##car _e9171691728_))
                                          (_tl9171891733_
                                           (##cdr _e9171691728_)))
                                      (let* ((_macro91736_ _hd9171791731_)
                                             (_body91738_ _tl9171891733_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro91736_
                                             gx#syntax-binding?)
                                            (_K91667_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro91736_)
                                                    _hd91699_
                                                    _method91663_)
                                                   _rest91700_)
                                             _r91701_)
                                            (_E9171591724_)))))
                                  (_E9171591724_))))
                           (_E9170491754_
                            (lambda ()
                              (if (gx#stx-pair? _e9170291720_)
                                  (let ((_e9171291744_
                                         (gx#syntax-e _e9170291720_)))
                                    (let ((_hd9171391747_
                                           (##car _e9171291744_))
                                          (_tl9171491749_
                                           (##cdr _e9171291744_)))
                                      (if (eq? (gx#stx-e _hd9171391747_)
                                               'begin:)
                                          (let ((_body91752_ _tl9171491749_))
                                            (if '#t
                                                (_K91667_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest91700_
                                                  _body91752_)
                                                 _r91701_)
                                                (_E9171191740_)))
                                          (_E9171191740_))))
                                  (_E9171191740_))))
                           (_E9170391781_
                            (lambda ()
                              (if (gx#stx-pair? _e9170291720_)
                                  (let ((_e9170591758_
                                         (gx#syntax-e _e9170291720_)))
                                    (let ((_hd9170691761_
                                           (##car _e9170591758_))
                                          (_tl9170791763_
                                           (##cdr _e9170591758_)))
                                      (if (eq? (gx#stx-e _hd9170691761_) 'phi:)
                                          (if (gx#stx-pair? _tl9170791763_)
                                              (let ((_e9170891766_
                                                     (gx#syntax-e
                                                      _tl9170791763_)))
                                                (let ((_hd9170991769_
                                                       (##car _e9170891766_))
                                                      (_tl9171091771_
                                                       (##cdr _e9170891766_)))
                                                  (let* ((_dphi91774_
                                                          _hd9170991769_)
                                                         (_body91776_
                                                          _tl9171091771_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi91774_)
                                                        (let ((_rbody91779_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K91667_ _body91776_ '()))
                        _current-phi91664_
                        (fx+ (gx#stx-e _dphi91774_) (_current-phi91664_)))))
                  (_K91667_ _rest91700_ (foldr1 cons _r91701_ _rbody91779_)))
                (_E9170491754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9170491754_))
                                          (_E9170491754_))))
                                  (_E9170491754_)))))
                      (_E9170391781_)))))
          (let* ((_e9166991676_ _stx91661_)
                 (_E9167191680_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9166991676_)))
                 (_E9167091695_
                  (lambda ()
                    (if (gx#stx-pair? _e9166991676_)
                        (let ((_e9167291684_ (gx#syntax-e _e9166991676_)))
                          (let ((_hd9167391687_ (##car _e9167291684_))
                                (_tl9167491689_ (##cdr _e9167291684_)))
                            (let ((_body91692_ _tl9167491689_))
                              (if '#t
                                  (if (_current-phi91664_)
                                      (_K91667_ _body91692_ '())
                                      (call-with-parameters
                                       (lambda () (_K91667_ _body91692_ '()))
                                       _current-phi91664_
                                       (gx#current-expander-phi)))
                                  (_E9167191680_)))))
                        (_E9167191680_)))))
            (_E9167091695_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91328_ _internal-expand?91329_)
        (letrec ((_expand191331_
                  (lambda (_hd91641_ _K91642_ _rest91643_ _r91644_)
                    (if (gx#core-bound-module? _hd91641_)
                        (_import191332_
                         (gx#syntax-local-e__0 _hd91641_)
                         _K91642_
                         _rest91643_
                         _r91644_)
                        (if (gx#core-library-module-path? _hd91641_)
                            (_import191332_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd91641_))
                             _K91642_
                             _rest91643_
                             _r91644_)
                            (if (gx#core-library-relative-module-path?
                                 _hd91641_)
                                (_import191332_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd91641_))
                                 _K91642_
                                 _rest91643_
                                 _r91644_)
                                (let ((_e91646_ (gx#stx-e _hd91641_)))
                                  (if (pair? _e91646_)
                                      (let ((_$e91648_
                                             (gx#stx-e (car _e91646_))))
                                        (if (eq? 'spec: _$e91648_)
                                            (_import-spec91335_
                                             _hd91641_
                                             _K91642_
                                             _rest91643_
                                             _r91644_)
                                            (if (eq? 'in: _$e91648_)
                                                (_import-submodule91333_
                                                 _hd91641_
                                                 _K91642_
                                                 _rest91643_
                                                 _r91644_)
                                                (if (eq? 'runtime: _$e91648_)
                                                    (_import-runtime91334_
                                                     _hd91641_
                                                     _K91642_
                                                     _rest91643_
                                                     _r91644_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91328_
                                                     _hd91641_)))))
                                      (if (string? _e91646_)
                                          (_import191332_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd91641_
                                             (gx#stx-source _stx91328_)))
                                           _K91642_
                                           _rest91643_
                                           _r91644_)
                                          (if (##structure-instance-of?
                                               _e91646_
                                               'gx#module-context::t)
                                              (_K91642_
                                               _rest91643_
                                               (cons _e91646_ _r91644_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91328_
                                               _hd91641_))))))))))
                 (_import191332_
                  (lambda (_ctx91630_ _K91631_ _rest91632_ _r91633_)
                    (let ((_dphi91635_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K91631_
                       _rest91632_
                       (cons (##structure
                              gx#import-set::t
                              _ctx91630_
                              _dphi91635_
                              (map (lambda (_g9163691638_)
                                     (gx#core-module-export->import__%
                                      _g9163691638_
                                      '#f
                                      _dphi91635_))
                                   (##unchecked-structure-ref
                                    _ctx91630_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r91633_)))))
                 (_import-submodule91333_
                  (lambda (_hd91597_ _K91598_ _rest91599_ _r91600_)
                    (let* ((_e9160191608_ _hd91597_)
                           (_E9160391612_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9160191608_)))
                           (_E9160291626_
                            (lambda ()
                              (if (gx#stx-pair? _e9160191608_)
                                  (let ((_e9160491616_
                                         (gx#syntax-e _e9160191608_)))
                                    (let ((_hd9160591619_
                                           (##car _e9160491616_))
                                          (_tl9160691621_
                                           (##cdr _e9160491616_)))
                                      (let ((_spath91624_ _tl9160691621_))
                                        (if '#t
                                            (_import191332_
                                             (_import-spec-source91336_
                                              _spath91624_)
                                             _K91598_
                                             _rest91599_
                                             _r91600_)
                                            (_E9160391612_)))))
                                  (_E9160391612_)))))
                      (_E9160291626_))))
                 (_import-runtime91334_
                  (lambda (_hd91564_ _K91565_ _rest91566_ _r91567_)
                    (let* ((_e9156891575_ _hd91564_)
                           (_E9157091579_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9156891575_)))
                           (_E9156991593_
                            (lambda ()
                              (if (gx#stx-pair? _e9156891575_)
                                  (let ((_e9157191583_
                                         (gx#syntax-e _e9156891575_)))
                                    (let ((_hd9157291586_
                                           (##car _e9157191583_))
                                          (_tl9157391588_
                                           (##cdr _e9157191583_)))
                                      (let ((_spath91591_ _tl9157391588_))
                                        (if '#t
                                            (_K91565_
                                             _rest91566_
                                             (cons (_import-spec-source91336_
                                                    _spath91591_)
                                                   _r91567_))
                                            (_E9157091579_)))))
                                  (_E9157091579_)))))
                      (_E9156991593_))))
                 (_import-spec91335_
                  (lambda (_hd91403_ _K91404_ _rest91405_ _r91406_)
                    (let* ((_e9140791424_ _hd91403_)
                           (_E9141691428_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9140791424_)))
                           (_E9140991538_
                            (lambda ()
                              (if (gx#stx-pair? _e9140791424_)
                                  (let ((_e9141791432_
                                         (gx#syntax-e _e9140791424_)))
                                    (let ((_hd9141891435_
                                           (##car _e9141791432_))
                                          (_tl9141991437_
                                           (##cdr _e9141791432_)))
                                      (if (gx#stx-pair? _tl9141991437_)
                                          (let ((_e9142091440_
                                                 (gx#syntax-e _tl9141991437_)))
                                            (let ((_hd9142191443_
                                                   (##car _e9142091440_))
                                                  (_tl9142291445_
                                                   (##cdr _e9142091440_)))
                                              (let* ((_path91448_
                                                      _hd9142191443_)
                                                     (_specs91450_
                                                      _tl9142291445_))
                                                (if '#t
                                                    (let ((_src-ctx91452_
                                                           (_import-spec-source91336_
                                                            _path91448_))
                                                          (_exports91453_
                                                           (make-hash-table))
                                                          (_specs91454_
                                                           (gx#syntax->list
                                                            _specs91450_)))
                                                      (for-each
                                                       (lambda (_out91456_)
                                                         (hash-put!
                                                          _exports91453_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91456_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91456_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91456_))
               (##unchecked-structure-ref
                _src-ctx91452_
                '9
                gx#module-context::t
                '#f))
              (_K91404_
               _rest91405_
               (foldl1 (lambda (_spec91458_ _r91459_)
                         (let* ((_e9146091476_ _spec91458_)
                                (_E9146291480_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9146091476_)))
                                (_E9146191534_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9146091476_)
                                       (let ((_e9146391484_
                                              (gx#syntax-e _e9146091476_)))
                                         (let ((_hd9146491487_
                                                (##car _e9146391484_))
                                               (_tl9146591489_
                                                (##cdr _e9146391484_)))
                                           (let ((_phi91492_ _hd9146491487_))
                                             (if (gx#stx-pair? _tl9146591489_)
                                                 (let ((_e9146691494_
                                                        (gx#syntax-e
                                                         _tl9146591489_)))
                                                   (let ((_hd9146791497_
                                                          (##car _e9146691494_))
                                                         (_tl9146891499_
                                                          (##cdr _e9146691494_)))
                                                     (let ((_name91502_
                                                            _hd9146791497_))
                                                       (if (gx#stx-pair?
                                                            _tl9146891499_)
                                                           (let ((_e9146991504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9146891499_)))
                     (let ((_hd9147091507_ (##car _e9146991504_))
                           (_tl9147191509_ (##cdr _e9146991504_)))
                       (let ((_src-phi91512_ _hd9147091507_))
                         (if (gx#stx-pair? _tl9147191509_)
                             (let ((_e9147291514_
                                    (gx#syntax-e _tl9147191509_)))
                               (let ((_hd9147391517_ (##car _e9147291514_))
                                     (_tl9147491519_ (##cdr _e9147291514_)))
                                 (let ((_src-name91522_ _hd9147391517_))
                                   (if (gx#stx-null? _tl9147491519_)
                                       (if (and (gx#stx-fixnum? _src-phi91512_)
                                                (gx#identifier?
                                                 _src-name91522_)
                                                (gx#stx-fixnum? _phi91492_)
                                                (gx#identifier? _name91502_))
                                           (let ((_src-phi91524_
                                                  (gx#stx-e _src-phi91512_))
                                                 (_src-name91525_
                                                  (gx#core-identifier-key
                                                   _src-name91522_))
                                                 (_phi91526_
                                                  (gx#stx-e _phi91492_))
                                                 (_name91527_
                                                  (gx#core-identifier-key
                                                   _name91502_)))
                                             (let ((_$e91529_
                                                    (hash-get
                                                     _exports91453_
                                                     (cons _src-phi91524_
                                                           _src-name91525_))))
                                               (if _$e91529_
                                                   ((lambda (_out91532_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91532_
                                                             _name91527_
                                                             (fx- _phi91526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91524_))
                    _r91459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91529_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91328_
                                                    _hd91403_))))
                                           (_E9146291480_))
                                       (_E9146291480_)))))
                             (_E9146291480_)))))
                   (_E9146291480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9146291480_)))))
                                       (_E9146291480_)))))
                           (_E9146191534_)))
                       _r91406_
                       _specs91454_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9141691428_)))))
                                          (_E9141691428_))))
                                  (_E9141691428_))))
                           (_E9140891560_
                            (lambda ()
                              (if (gx#stx-pair? _e9140791424_)
                                  (let ((_e9141091542_
                                         (gx#syntax-e _e9140791424_)))
                                    (let ((_hd9141191545_
                                           (##car _e9141091542_))
                                          (_tl9141291547_
                                           (##cdr _e9141091542_)))
                                      (if (gx#stx-pair? _tl9141291547_)
                                          (let ((_e9141391550_
                                                 (gx#syntax-e _tl9141291547_)))
                                            (let ((_hd9141491553_
                                                   (##car _e9141391550_))
                                                  (_tl9141591555_
                                                   (##cdr _e9141391550_)))
                                              (let ((_path91558_
                                                     _hd9141491553_))
                                                (if (gx#stx-null?
                                                     _tl9141591555_)
                                                    (if '#t
                                                        (_K91404_
                                                         _rest91405_
                                                         (cons (_import-spec-source91336_
                                                                _path91558_)
                                                               _r91406_))
                                                        (_E9140991538_))
                                                    (_E9140991538_)))))
                                          (_E9140991538_))))
                                  (_E9140991538_)))))
                      (_E9140891560_))))
                 (_import-spec-source91336_
                  (lambda (_spath91401_)
                    (gx#core-import-nested-module _spath91401_ _stx91328_)))
                 (_import!91337_
                  (lambda (_rbody91350_)
                    (letrec* ((_current-ctx91352_
                               (gx#current-expander-context))
                              (_deps91353_ (make-hash-table-eq))
                              (_bind!91354_
                               (lambda (_hd91399_)
                                 (gx#core-bind-import!__1
                                  _hd91399_
                                  _current-ctx91352_))))
                      (let _lp91356_ ((_rest91358_ _rbody91350_)
                                      (_body91359_ '()))
                        (let* ((_rest9136091368_ _rest91358_)
                               (_else9136291378_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91352_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91352_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91352_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91359_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91376_ _g94222_)
                                     (gx#eval-module _ctx91376_))
                                   _deps91353_)
                                  _body91359_))
                               (_K9136491387_
                                (lambda (_rest91381_ _hd91382_)
                                  (if (##structure-direct-instance-of?
                                       _hd91382_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91354_ _hd91382_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91382_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91382_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91353_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91382_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91382_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91354_
                                             (##unchecked-structure-ref
                                              _hd91382_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91382_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91353_
                                                 (##unchecked-structure-ref
                                                  _hd91382_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91384_
                                                 (##structure-instance-of?
                                                  _hd91382_
                                                  'gx#module-context::t)))
                                            (if _$e91384_
                                                _$e91384_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91328_
                                                 _hd91382_)))))
                                  (_lp91356_
                                   _rest91381_
                                   (cons _hd91382_ _body91359_)))))
                          (if (##pair? _rest9136091368_)
                              (let ((_hd9136591390_ (##car _rest9136091368_))
                                    (_tl9136691392_ (##cdr _rest9136091368_)))
                                (let* ((_hd91395_ _hd9136591390_)
                                       (_rest91397_ _tl9136691392_))
                                  (_K9136491387_ _rest91397_ _hd91395_)))
                              (_else9136291378_)))))))
                 (_expanded-import?91338_
                  (lambda (_e91342_)
                    (let ((_$e91344_
                           (##structure-direct-instance-of?
                            _e91342_
                            'gx#import-set::t)))
                      (if _$e91344_
                          _$e91344_
                          (let ((_$e91347_
                                 (##structure-direct-instance-of?
                                  _e91342_
                                  'gx#module-import::t)))
                            (if _$e91347_
                                _$e91347_
                                (##structure-instance-of?
                                 _e91342_
                                 'gx#module-context::t))))))))
          (let ((_rbody91340_
                 (gx#core-expand-import/export
                  _stx91328_
                  _expanded-import?91338_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191331_)))
            (if _internal-expand?91329_
                (reverse _rbody91340_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91337_ _rbody91340_))
                 (gx#stx-source _stx91328_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx91654_)
        (let ((_internal-expand?91656_ '#f))
          (gx#core-expand-import%__% _stx91654_ _internal-expand?91656_))))
    (define gx#core-expand-import%
      (lambda _g94224_
        (let ((_g94223_ (##length _g94224_)))
          (cond ((##fx= _g94223_ 1)
                 (apply (lambda (_stx91654_)
                          (gx#core-expand-import%__0 _stx91654_))
                        _g94224_))
                ((##fx= _g94223_ 2)
                 (apply (lambda (_stx91658_ _internal-expand?91659_)
                          (gx#core-expand-import%__%
                           _stx91658_
                           _internal-expand?91659_))
                        _g94224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94224_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91255_ _where91256_)
        (let* ((_e9125791264_ _spath91255_)
               (_E9125991268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9125791264_)))
               (_E9125891323_
                (lambda ()
                  (if (gx#stx-pair? _e9125791264_)
                      (let ((_e9126091272_ (gx#syntax-e _e9125791264_)))
                        (let ((_hd9126191275_ (##car _e9126091272_))
                              (_tl9126291277_ (##cdr _e9126091272_)))
                          (let* ((_origin91280_ _hd9126191275_)
                                 (_sub91282_ _tl9126291277_))
                            (if '#t
                                (let ((_origin-ctx91284_
                                       (if (gx#stx-false? _origin91280_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91280_))))
                                  (let _lp91286_ ((_rest91288_ _sub91282_)
                                                  (_ctx91289_
                                                   _origin-ctx91284_))
                                    (let* ((_e9129091297_ _rest91288_)
                                           (_E9129291301_
                                            (lambda () _ctx91289_))
                                           (_E9129191319_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9129091297_)
                                                  (let ((_e9129391305_
                                                         (gx#syntax-e
                                                          _e9129091297_)))
                                                    (let ((_hd9129491308_
                                                           (##car _e9129391305_))
                                                          (_tl9129591310_
                                                           (##cdr _e9129391305_)))
                                                      (let* ((_id91313_
                                                              _hd9129491308_)
                                                             (_rest91315_
                                                              _tl9129591310_))
                                                        (if '#t
                                                            (let ((_bind91317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91313_ '0 _ctx91289_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91317_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91317_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91256_
                           _spath91255_
                           _id91313_))
                      (_lp91286_
                       _rest91315_
                       (##unchecked-structure-ref
                        _bind91317_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9129291301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9129291301_)))))
                                      (_E9129191319_))))
                                (_E9125991268_)))))
                      (_E9125991268_)))))
          (_E9125891323_))))
    (define gx#core-expand-import-source
      (lambda (_hd91253_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91253_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx90761_ _internal-expand?90762_)
        (letrec* ((_make-export__9415394154_
                   (lambda (_bind91201_ _phi91202_ _ctx91203_ _name91204_)
                     (let* ((_key91206_
                             (##unchecked-structure-ref
                              _bind91201_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91208_
                             (if _name91204_
                                 (gx#core-identifier-key _name91204_)
                                 _key91206_)))
                       (##structure
                        gx#module-export::t
                        _ctx91203_
                        _key91206_
                        _phi91202_
                        _export-key91208_
                        (let ((_$e91211_
                               (##structure-instance-of?
                                _bind91201_
                                'gx#extern-binding::t)))
                          (if _$e91211_
                              _$e91211_
                              (##structure-direct-instance-of?
                               _bind91201_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9415594158_
                   (lambda (_bind91217_)
                     (let* ((_phi91219_ (gx#current-export-expander-phi))
                            (_ctx91221_ (gx#current-expander-context))
                            (_name91223_ '#f))
                       (_make-export__9415394154_
                        _bind91217_
                        _phi91219_
                        _ctx91221_
                        _name91223_))))
                  (_make-export__1__9415694159_
                   (lambda (_bind91225_ _phi91226_)
                     (let* ((_ctx91228_ (gx#current-expander-context))
                            (_name91230_ '#f))
                       (_make-export__9415394154_
                        _bind91225_
                        _phi91226_
                        _ctx91228_
                        _name91230_))))
                  (_make-export__2__9415794160_
                   (lambda (_bind91232_ _phi91233_ _ctx91234_)
                     (let ((_name91236_ '#f))
                       (_make-export__9415394154_
                        _bind91232_
                        _phi91233_
                        _ctx91234_
                        _name91236_))))
                  (_make-export90764_
                   (lambda _g94226_
                     (let ((_g94225_ (##length _g94226_)))
                       (cond ((##fx= _g94225_ 1)
                              (apply (lambda (_bind91217_)
                                       (_make-export__0__9415594158_
                                        _bind91217_))
                                     _g94226_))
                             ((##fx= _g94225_ 2)
                              (apply (lambda (_bind91225_ _phi91226_)
                                       (_make-export__1__9415694159_
                                        _bind91225_
                                        _phi91226_))
                                     _g94226_))
                             ((##fx= _g94225_ 3)
                              (apply (lambda (_bind91232_
                                              _phi91233_
                                              _ctx91234_)
                                       (_make-export__2__9415794160_
                                        _bind91232_
                                        _phi91233_
                                        _ctx91234_))
                                     _g94226_))
                             ((##fx= _g94225_ 4)
                              (apply (lambda (_bind91238_
                                              _phi91239_
                                              _ctx91240_
                                              _name91241_)
                                       (_make-export__9415394154_
                                        _bind91238_
                                        _phi91239_
                                        _ctx91240_
                                        _name91241_))
                                     _g94226_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94226_))))))
                  (_expand190765_
                   (lambda (_hd90914_ _K90915_ _rest90916_ _r90917_)
                     (let* ((_e9091890950_ _hd90914_)
                            (_E9094590954_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx90761_
                                _hd90914_)))
                            (_E9093591033_
                             (lambda ()
                               (if (gx#stx-pair? _e9091890950_)
                                   (let ((_e9094690958_
                                          (gx#syntax-e _e9091890950_)))
                                     (let ((_hd9094790961_
                                            (##car _e9094690958_))
                                           (_tl9094890963_
                                            (##cdr _e9094690958_)))
                                       (if (eq? (gx#stx-e _hd9094790961_)
                                                'import:)
                                           (let ((_in90966_ _tl9094890963_))
                                             (if (gx#stx-list? _in90966_)
                                                 (let _lp90968_ ((_in-rest90970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90966_)
                         (_r90971_ _r90917_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9097290979_
                                                           _in-rest90970_)
                                                          (_E9097490983_
                                                           (lambda ()
                                                             (_K90915_
                                                              _rest90916_
                                                              _r90971_)))
                                                          (_E9097391029_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9097290979_)
                         (let ((_e9097590987_ (gx#syntax-e _e9097290979_)))
                           (let ((_hd9097690990_ (##car _e9097590987_))
                                 (_tl9097790992_ (##cdr _e9097590987_)))
                             (let* ((_hd90995_ _hd9097690990_)
                                    (_in-rest90997_ _tl9097790992_))
                               (if '#t
                                   (let ((_src91027_
                                          (if (gx#core-bound-module? _hd90995_)
                                              (gx#syntax-local-e__0 _hd90995_)
                                              (if (gx#core-library-module-path?
                                                   _hd90995_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90995_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90995_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90995_))
                                                      (if (gx#stx-string?
                                                           _hd90995_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90995_
                                                            (gx#stx-source
                                                             _stx90761_)))
                                                          (let* ((_e9099891005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90995_)
                         (_E9100091009_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx90761_
                             _hd90995_)))
                         (_E9099991023_
                          (lambda ()
                            (if (gx#stx-pair? _e9099891005_)
                                (let ((_e9100191013_
                                       (gx#syntax-e _e9099891005_)))
                                  (let ((_hd9100291016_ (##car _e9100191013_))
                                        (_tl9100391018_ (##cdr _e9100191013_)))
                                    (if (eq? (gx#stx-e _hd9100291016_) 'in:)
                                        (let ((_spath91021_ _tl9100391018_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91021_
                                               _stx90761_)
                                              (_E9100091009_)))
                                        (_E9100091009_))))
                                (_E9100091009_)))))
                    (_E9099991023_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90968_
                                      _in-rest90997_
                                      (_export-imports90766_
                                       _src91027_
                                       _r90971_)))
                                   (_E9097490983_)))))
                         (_E9097490983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9097391029_)))
                                                 (_E9094590954_)))
                                           (_E9094590954_))))
                                   (_E9094590954_))))
                            (_E9092291072_
                             (lambda ()
                               (if (gx#stx-pair? _e9091890950_)
                                   (let ((_e9093691037_
                                          (gx#syntax-e _e9091890950_)))
                                     (let ((_hd9093791040_
                                            (##car _e9093691037_))
                                           (_tl9093891042_
                                            (##cdr _e9093691037_)))
                                       (if (eq? (gx#stx-e _hd9093791040_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9093891042_)
                                               (let ((_e9093991045_
                                                      (gx#syntax-e
                                                       _tl9093891042_)))
                                                 (let ((_hd9094091048_
                                                        (##car _e9093991045_))
                                                       (_tl9094191050_
                                                        (##cdr _e9093991045_)))
                                                   (let ((_id91053_
                                                          _hd9094091048_))
                                                     (if (gx#stx-pair?
                                                          _tl9094191050_)
                                                         (let ((_e9094291055_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9094191050_)))
                   (let ((_hd9094391058_ (##car _e9094291055_))
                         (_tl9094491060_ (##cdr _e9094291055_)))
                     (let ((_name91063_ _hd9094391058_))
                       (if (gx#stx-null? _tl9094491060_)
                           (if '#t
                               (let* ((_phi91065_
                                       (gx#current-export-expander-phi))
                                      (_$e91067_
                                       (gx#core-resolve-identifier__1
                                        _id91053_
                                        _phi91065_)))
                                 (if _$e91067_
                                     ((lambda (_bind91070_)
                                        (_K90915_
                                         _rest90916_
                                         (cons (_make-export__9415394154_
                                                _bind91070_
                                                _phi91065_
                                                (gx#current-expander-context)
                                                _name91063_)
                                               _r90917_)))
                                      _$e91067_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx90761_
                                      _hd90914_
                                      _id91053_)))
                               (_E9093591033_))
                           (_E9093591033_)))))
                 (_E9093591033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9093591033_))
                                           (_E9093591033_))))
                                   (_E9093591033_))))
                            (_E9092191121_
                             (lambda ()
                               (if (gx#stx-pair? _e9091890950_)
                                   (let ((_e9092391076_
                                          (gx#syntax-e _e9091890950_)))
                                     (let ((_hd9092491079_
                                            (##car _e9092391076_))
                                           (_tl9092591081_
                                            (##cdr _e9092391076_)))
                                       (if (eq? (gx#stx-e _hd9092491079_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9092591081_)
                                               (let ((_e9092691084_
                                                      (gx#syntax-e
                                                       _tl9092591081_)))
                                                 (let ((_hd9092791087_
                                                        (##car _e9092691084_))
                                                       (_tl9092891089_
                                                        (##cdr _e9092691084_)))
                                                   (let ((_phi91092_
                                                          _hd9092791087_))
                                                     (if (gx#stx-pair?
                                                          _tl9092891089_)
                                                         (let ((_e9092991094_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9092891089_)))
                   (let ((_hd9093091097_ (##car _e9092991094_))
                         (_tl9093191099_ (##cdr _e9092991094_)))
                     (let ((_id91102_ _hd9093091097_))
                       (if (gx#stx-pair? _tl9093191099_)
                           (let ((_e9093291104_ (gx#syntax-e _tl9093191099_)))
                             (let ((_hd9093391107_ (##car _e9093291104_))
                                   (_tl9093491109_ (##cdr _e9093291104_)))
                               (let ((_name91112_ _hd9093391107_))
                                 (if (gx#stx-null? _tl9093491109_)
                                     (if (and (gx#stx-fixnum? _phi91092_)
                                              (gx#identifier? _id91102_)
                                              (gx#identifier? _name91112_))
                                         (let* ((_phi91114_
                                                 (gx#stx-e _phi91092_))
                                                (_$e91116_
                                                 (gx#core-resolve-identifier__1
                                                  _id91102_
                                                  _phi91114_)))
                                           (if _$e91116_
                                               ((lambda (_bind91119_)
                                                  (_K90915_
                                                   _rest90916_
                                                   (cons (_make-export__9415394154_
                                                          _bind91119_
                                                          _phi91114_
                                                          (gx#current-expander-context)
                                                          _name91112_)
                                                         _r90917_)))
                                                _$e91116_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx90761_
                                                _hd90914_
                                                _id91102_)))
                                         (_E9092291072_))
                                     (_E9092291072_)))))
                           (_E9092291072_)))))
                 (_E9092291072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9092291072_))
                                           (_E9092291072_))))
                                   (_E9092291072_))))
                            (_E9092091132_
                             (lambda ()
                               (let ((_id91125_ _e9091890950_))
                                 (if (gx#identifier? _id91125_)
                                     (let ((_$e91127_
                                            (gx#core-resolve-identifier__1
                                             _id91125_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91127_
                                           ((lambda (_bind91130_)
                                              (_K90915_
                                               _rest90916_
                                               (cons (_make-export__0__9415594158_
                                                      _bind91130_)
                                                     _r90917_)))
                                            _$e91127_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx90761_
                                            _hd90914_)))
                                     (_E9092191121_)))))
                            (_E9091991196_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9091890950_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91136_
                                               (gx#current-expander-context))
                                              (_current-phi91138_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91140_
                                               (gx#core-context-shift
                                                _current-ctx91136_
                                                _current-phi91138_))
                                              (_phi-bind91142_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91140_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91145_ ((_bind-rest91147_
                                                          _phi-bind91142_)
                                                         (_set91148_ '()))
                                           (let* ((_bind-rest9114991159_
                                                   _bind-rest91147_)
                                                  (_else9115191167_
                                                   (lambda ()
                                                     (_K90915_
                                                      _rest90916_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91138_
                                                             _set91148_)
                                                            _r90917_))))
                                                  (_K9115391177_
                                                   (lambda (_bind-rest91170_
                                                            _bind91171_
                                                            _key91172_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91171_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91171_))
                                                         (_lp91145_
                                                          _bind-rest91170_
                                                          _set91148_)
                                                         (_lp91145_
                                                          _bind-rest91170_
                                                          (cons (_make-export__2__9415794160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91171_
                         _current-phi91138_
                         _current-ctx91136_)
                        _set91148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9114991159_)
                                                 (let ((_hd9115491180_
                                                        (##car _bind-rest9114991159_))
                                                       (_tl9115591182_
                                                        (##cdr _bind-rest9114991159_)))
                                                   (if (##pair? _hd9115491180_)
                                                       (let ((_hd9115691185_
                                                              (##car _hd9115491180_))
                                                             (_tl9115791187_
                                                              (##cdr _hd9115491180_)))
                                                         (let* ((_key91190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9115691185_)
                        (_bind91192_ _tl9115791187_)
                        (_bind-rest91194_ _tl9115591182_))
                   (_K9115391177_ _bind-rest91194_ _bind91192_ _key91190_)))
               (_else9115191167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9115191167_)))))
                                       (_E9092091132_))
                                   (_E9092091132_)))))
                       (_E9091991196_))))
                  (_export-imports90766_
                   (lambda (_src90790_ _r90791_)
                     (letrec* ((_current-ctx90793_
                                (gx#current-expander-context))
                               (_current-phi90794_
                                (gx#current-export-expander-phi))
                               (_import->export90795_
                                (lambda (_in90876_)
                                  (let* ((_in9087790885_ _in90876_)
                                         (_E9087990889_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9087790885_)))
                                         (_K9088090896_
                                          (lambda (_phi90892_
                                                   _key90893_
                                                   _out90894_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx90793_
                                             _key90893_
                                             _phi90892_
                                             _key90893_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9087790885_
                                         'gx#module-import::t)
                                        (let* ((_e9088190899_
                                                (##unchecked-structure-ref
                                                 _in9087790885_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out90902_ _e9088190899_)
                                               (_e9088290904_
                                                (##unchecked-structure-ref
                                                 _in9087790885_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key90907_ _e9088290904_)
                                               (_e9088390909_
                                                (##unchecked-structure-ref
                                                 _in9087790885_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi90912_ _e9088390909_))
                                          (_K9088090896_
                                           _phi90912_
                                           _key90907_
                                           _out90902_))
                                        (_E9087990889_)))))
                               (_fold-e90796_
                                (lambda (_in90798_ _r90799_)
                                  (let* ((_in9080090814_ _in90798_)
                                         (_else9080390822_
                                          (lambda () _r90799_)))
                                    (let ((_K9080990858_
                                           (lambda (_phi90854_
                                                    _key90855_
                                                    _out90856_)
                                             (if (and (fx= _phi90854_
                                                           _current-phi90794_)
                                                      (eq? _src90790_
                                                           (##unchecked-structure-ref
                                                            _out90856_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export90795_
                                                        _in90798_)
                                                       _r90799_)
                                                 _r90799_)))
                                          (_K9080590833_
                                           (lambda (_imports90826_
                                                    _phi90827_
                                                    _ctx90828_)
                                             (if (and (fx= _phi90827_
                                                           _current-phi90794_)
                                                      (eq? _src90790_
                                                           _ctx90828_))
                                                 (foldl1 (lambda (_in90830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r90831_)
                   (cons (_import->export90795_ _in90830_) _r90831_))
                 _r90799_
                 _imports90826_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r90799_))))
                                      (let ((_try-match9080290851_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9080090814_
                                                    'gx#import-set::t)
                                                   (let* ((_e9080690836_
                                                           (##unchecked-structure-ref
                                                            _in9080090814_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9080790841_
                                                           (##unchecked-structure-ref
                                                            _in9080090814_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9080890846_
                                                           (##unchecked-structure-ref
                                                            _in9080090814_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx90839_
                                                            _e9080690836_)
                                                           (_phi90844_
                                                            _e9080790841_)
                                                           (_imports90849_
                                                            _e9080890846_))
                                                       (_K9080590833_
                                                        _imports90849_
                                                        _phi90844_
                                                        _ctx90839_)))
                                                   (_else9080390822_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9080090814_
                                             'gx#module-import::t)
                                            (let* ((_e9081090861_
                                                    (##unchecked-structure-ref
                                                     _in9080090814_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9081190866_
                                                    (##unchecked-structure-ref
                                                     _in9080090814_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9081290871_
                                                    (##unchecked-structure-ref
                                                     _in9080090814_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out90864_ _e9081090861_)
                                                    (_key90869_ _e9081190866_)
                                                    (_phi90874_ _e9081290871_))
                                                (_K9080990858_
                                                 _phi90874_
                                                 _key90869_
                                                 _out90864_)))
                                            (_try-match9080290851_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src90790_
                              _current-phi90794_
                              (foldl1 _fold-e90796_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx90793_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r90791_))))
                  (_export!90767_
                   (lambda (_rbody90780_)
                     (letrec* ((_current-ctx90782_
                                (gx#current-expander-context))
                               (_fold-e90783_
                                (lambda (_out90787_ _r90788_)
                                  (if (##structure-direct-instance-of?
                                       _out90787_
                                       'gx#module-export::t)
                                      (cons _out90787_ _r90788_)
                                      (if (##structure-direct-instance-of?
                                           _out90787_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r90788_
                                                  (##unchecked-structure-ref
                                                   _out90787_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r90788_)))))
                       (let ((_body90785_ (reverse _rbody90780_)))
                         (##unchecked-structure-set!
                          _current-ctx90782_
                          (foldl1 _fold-e90783_
                                  (##unchecked-structure-ref
                                   _current-ctx90782_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body90785_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body90785_))))
                  (_expanded-export?90768_
                   (lambda (_e90775_)
                     (let ((_$e90777_
                            (##structure-direct-instance-of?
                             _e90775_
                             'gx#module-export::t)))
                       (if _$e90777_
                           _$e90777_
                           (##structure-direct-instance-of?
                            _e90775_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?90762_)
              (let ((_rbody90773_
                     (gx#core-expand-import/export
                      _stx90761_
                      _expanded-export?90768_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand190765_)))
                (if _internal-expand?90762_
                    (reverse _rbody90773_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!90767_ _rbody90773_))
                     (gx#stx-source _stx90761_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx90761_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx90761_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91246_)
        (let ((_internal-expand?91248_ '#f))
          (gx#core-expand-export%__% _stx91246_ _internal-expand?91248_))))
    (define gx#core-expand-export%
      (lambda _g94228_
        (let ((_g94227_ (##length _g94228_)))
          (cond ((##fx= _g94227_ 1)
                 (apply (lambda (_stx91246_)
                          (gx#core-expand-export%__0 _stx91246_))
                        _g94228_))
                ((##fx= _g94227_ 2)
                 (apply (lambda (_stx91250_ _internal-expand?91251_)
                          (gx#core-expand-export%__%
                           _stx91250_
                           _internal-expand?91251_))
                        _g94228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94228_))))))
    (define gx#core-expand-export-source
      (lambda (_hd90758_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd90758_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx90728_)
        (let* ((_e9072990736_ _stx90728_)
               (_E9073190740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9072990736_)))
               (_E9073090754_
                (lambda ()
                  (if (gx#stx-pair? _e9072990736_)
                      (let ((_e9073290744_ (gx#syntax-e _e9072990736_)))
                        (let ((_hd9073390747_ (##car _e9073290744_))
                              (_tl9073490749_ (##cdr _e9073290744_)))
                          (let ((_body90752_ _tl9073490749_))
                            (if (gx#identifier-list? _body90752_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body90752_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body90752_))
                                   (gx#stx-source _stx90728_)))
                                (_E9073190740_)))))
                      (_E9073190740_)))))
          (_E9073090754_))))
    (define gx#core-bind-feature!__%
      (lambda (_id90694_ _private?90695_ _phi90696_ _ctx90697_)
        (gx#core-bind-syntax!__%
         _id90694_
         ((if _private?90695_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id90694_))
         _private?90695_
         _phi90696_
         _ctx90697_)))
    (define gx#core-bind-feature!__0
      (lambda (_id90702_)
        (let* ((_private?90704_ '#f)
               (_phi90706_ (gx#current-expander-phi))
               (_ctx90708_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90702_
           _private?90704_
           _phi90706_
           _ctx90708_))))
    (define gx#core-bind-feature!__1
      (lambda (_id90710_ _private?90711_)
        (let* ((_phi90713_ (gx#current-expander-phi))
               (_ctx90715_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90710_
           _private?90711_
           _phi90713_
           _ctx90715_))))
    (define gx#core-bind-feature!__2
      (lambda (_id90717_ _private?90718_ _phi90719_)
        (let ((_ctx90721_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90717_
           _private?90718_
           _phi90719_
           _ctx90721_))))
    (define gx#core-bind-feature!
      (lambda _g94230_
        (let ((_g94229_ (##length _g94230_)))
          (cond ((##fx= _g94229_ 1)
                 (apply (lambda (_id90702_)
                          (gx#core-bind-feature!__0 _id90702_))
                        _g94230_))
                ((##fx= _g94229_ 2)
                 (apply (lambda (_id90710_ _private?90711_)
                          (gx#core-bind-feature!__1 _id90710_ _private?90711_))
                        _g94230_))
                ((##fx= _g94229_ 3)
                 (apply (lambda (_id90717_ _private?90718_ _phi90719_)
                          (gx#core-bind-feature!__2
                           _id90717_
                           _private?90718_
                           _phi90719_))
                        _g94230_))
                ((##fx= _g94229_ 4)
                 (apply (lambda (_id90723_
                                 _private?90724_
                                 _phi90725_
                                 _ctx90726_)
                          (gx#core-bind-feature!__%
                           _id90723_
                           _private?90724_
                           _phi90725_
                           _ctx90726_))
                        _g94230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94230_))))))))
