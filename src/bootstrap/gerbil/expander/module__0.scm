(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709127356)
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
      (lambda _$args93198_
        (apply make-instance gx#module-import::t _$args93198_)))
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
      (lambda _$args93195_
        (apply make-instance gx#module-export::t _$args93195_)))
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
      (lambda _$args93192_
        (apply make-instance gx#import-set::t _$args93192_)))
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
      (lambda _$args93189_
        (apply make-instance gx#export-set::t _$args93189_)))
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
      (lambda _$args93186_
        (apply make-instance gx#import-expander::t _$args93186_)))
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
      (lambda _$args93183_
        (apply make-instance gx#export-expander::t _$args93183_)))
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
      (lambda _$args93180_
        (apply make-instance gx#import-export-expander::t _$args93180_)))
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
      (lambda (_path93177_ _fun93178_)
        (call-with-input-file
         (cons 'path: (cons _path93177_ gx#source-file-settings))
         _fun93178_)))
    (define gx#module-context:::init!
      (lambda (_self93171_ _id93172_ _super93173_ _ns93174_ _path93175_)
        (if (##fx< '11 (##structure-length _self93171_))
            (begin
              (##unchecked-structure-set!
               _self93171_
               _id93172_
               '1
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               (make-hash-table-eq)
               '2
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               _super93173_
               '3
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               '#f
               '4
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               '#f
               '5
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               _ns93174_
               '6
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               _path93175_
               '7
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               '()
               '8
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               '()
               '9
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               '#f
               '10
               (##structure-type _self93171_)
               '#f)
              (##unchecked-structure-set!
               _self93171_
               '#f
               '11
               (##structure-type _self93171_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93171_
                   '11
                   (##vector-length _self93171_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93015_ _ctx93016_ _root93017_)
        (let ((_super93025_
               (let ((_$e93019_ _root93017_))
                 (if _$e93019_
                     _$e93019_
                     (let ((_$e93022_ (gx#core-context-root__0)))
                       (if _$e93022_
                           _$e93022_
                           (let ((__obj93240
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor93241
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj93240
                                     ':init!)))
                               (if __constructor93241
                                   (__constructor93241 __obj93240)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj93240)))))))
          (if _ctx93016_
              (let ((_id93028_
                     (##structure-ref
                      _ctx93016_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93029_
                     (##structure-ref _ctx93016_ '7 gx#module-context::t '#f))
                    (_in93030_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93016_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93031_
                     (make-promise (lambda () (gx#eval-module _ctx93016_)))))
                (if (##fx< '8 (##structure-length _self93015_))
                    (begin
                      (##unchecked-structure-set!
                       _self93015_
                       _id93028_
                       '1
                       (##structure-type _self93015_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93015_
                       (make-hash-table-eq 'size: (length _in93030_))
                       '2
                       (##structure-type _self93015_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93015_
                       _super93025_
                       '3
                       (##structure-type _self93015_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93015_
                       '#f
                       '4
                       (##structure-type _self93015_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93015_
                       '#f
                       '5
                       (##structure-type _self93015_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93015_
                       _path93029_
                       '6
                       (##structure-type _self93015_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93015_
                       _in93030_
                       '7
                       (##structure-type _self93015_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93015_
                       _e93031_
                       '8
                       (##structure-type _self93015_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93015_
                           '8
                           (##vector-length _self93015_)))
                (for-each
                 (lambda (_g9303293034_)
                   (gx#core-bind-weak-import!__% _g9303293034_ _self93015_))
                 _in93030_))
              (if (##fx< '8 (##structure-length _self93015_))
                  (begin
                    (##unchecked-structure-set!
                     _self93015_
                     '#f
                     '1
                     (##structure-type _self93015_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93015_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93015_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93015_
                     _super93025_
                     '3
                     (##structure-type _self93015_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93015_
                     '#f
                     '4
                     (##structure-type _self93015_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93015_
                     '#f
                     '5
                     (##structure-type _self93015_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93015_
                     '#f
                     '6
                     (##structure-type _self93015_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93015_
                     '()
                     '7
                     (##structure-type _self93015_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93015_
                     '#f
                     '8
                     (##structure-type _self93015_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93015_
                         '8
                         (##vector-length _self93015_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93040_ _ctx93041_)
        (let ((_root93043_ '#f))
          (gx#prelude-context:::init!__% _self93040_ _ctx93041_ _root93043_))))
    (define gx#prelude-context:::init!
      (lambda _g93247_
        (let ((_g93246_ (##length _g93247_)))
          (cond ((##fx= _g93246_ 2)
                 (apply (lambda (_self93040_ _ctx93041_)
                          (gx#prelude-context:::init!__0
                           _self93040_
                           _ctx93041_))
                        _g93247_))
                ((##fx= _g93246_ 3)
                 (apply (lambda (_self93045_ _ctx93046_ _root93047_)
                          (gx#prelude-context:::init!__%
                           _self93045_
                           _ctx93046_
                           _root93047_))
                        _g93247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g93247_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92889_ _e92890_)
        (if (##fx< '3 (##structure-length _self92889_))
            (begin
              (##unchecked-structure-set!
               _self92889_
               _e92890_
               '1
               (##structure-type _self92889_)
               '#f)
              (##unchecked-structure-set!
               _self92889_
               (gx#current-expander-context)
               '2
               (##structure-type _self92889_)
               '#f)
              (##unchecked-structure-set!
               _self92889_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92889_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92889_
                   '3
                   (##vector-length _self92889_)))))
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
      (lambda (_g9251592518_ _g9251692520_)
        (gx#core-apply-user-expander__%
         _g9251592518_
         _g9251692520_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9238692389_ _g9238792391_)
        (gx#core-apply-user-expander__%
         _g9238692389_
         _g9238792391_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx92257_)
        (let* ((_path92259_
                (##structure-ref _ctx92257_ '7 gx#module-context::t '#f))
               (_path92261_
                (if (pair? _path92259_) (last _path92259_) _path92259_)))
          (if (string? _path92261_) _path92261_ '#f))))
    (define gx#import-module__%
      (lambda (_path92233_ _reload?92234_ _eval?92235_)
        (let ((_ctx92237_
               ((gx#current-expander-module-import)
                _path92233_
                _reload?92234_)))
          (if (and _ctx92237_ _eval?92235_)
              (gx#eval-module _ctx92237_)
              '#!void)
          _ctx92237_)))
    (define gx#import-module__0
      (lambda (_path92242_)
        (let* ((_reload?92244_ '#f) (_eval?92246_ '#f))
          (gx#import-module__% _path92242_ _reload?92244_ _eval?92246_))))
    (define gx#import-module__1
      (lambda (_path92248_ _reload?92249_)
        (let ((_eval?92251_ '#f))
          (gx#import-module__% _path92248_ _reload?92249_ _eval?92251_))))
    (define gx#import-module
      (lambda _g93249_
        (let ((_g93248_ (##length _g93249_)))
          (cond ((##fx= _g93248_ 1)
                 (apply (lambda (_path92242_)
                          (gx#import-module__0 _path92242_))
                        _g93249_))
                ((##fx= _g93248_ 2)
                 (apply (lambda (_path92248_ _reload?92249_)
                          (gx#import-module__1 _path92248_ _reload?92249_))
                        _g93249_))
                ((##fx= _g93248_ 3)
                 (apply (lambda (_path92253_ _reload?92254_ _eval?92255_)
                          (gx#import-module__%
                           _path92253_
                           _reload?92254_
                           _eval?92255_))
                        _g93249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g93249_))))))
    (define gx#eval-module
      (lambda (_mod92230_) ((gx#current-expander-module-eval) _mod92230_)))
    (define gx#core-eval-module
      (lambda (_obj92215_)
        (letrec ((_force-e92217_
                  (lambda (_getf92226_ _e92227_)
                    (call-with-parameters
                     (lambda () (force (_getf92226_ _e92227_)))
                     gx#current-expander-context
                     _e92227_
                     gx#current-expander-phi
                     '0))))
          (let _recur92219_ ((_e92221_ _obj92215_))
            (if (##structure-instance-of? _e92221_ 'gx#module-context::t)
                (begin
                  (let ((_$e92223_ (gx#core-context-prelude__% _e92221_)))
                    (if _$e92223_ (_recur92219_ _$e92223_) '#!void))
                  (_force-e92217_ gx#module-context-e _e92221_))
                (if (##structure-instance-of? _e92221_ 'gx#prelude-context::t)
                    (_force-e92217_ gx#prelude-context-e _e92221_)
                    (if (gx#stx-string? _e92221_)
                        (_recur92219_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e92221_)))
                        (if (gx#core-library-module-path? _e92221_)
                            (_recur92219_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e92221_)))
                            (error '"Cannot eval module" _obj92215_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx92198_)
        (let _lp92200_ ((_e92202_ _ctx92198_))
          (if (or (##structure-instance-of? _e92202_ 'gx#module-context::t)
                  (##structure-instance-of? _e92202_ 'gx#local-context::t))
              (_lp92200_
               (##unchecked-structure-ref _e92202_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e92202_ 'gx#prelude-context::t)
                  _e92202_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx92211_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx92211_))))
    (define gx#core-context-prelude
      (lambda _g93251_
        (let ((_g93250_ (##length _g93251_)))
          (cond ((##fx= _g93250_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g93251_))
                ((##fx= _g93250_ 1)
                 (apply (lambda (_ctx92213_)
                          (gx#core-context-prelude__% _ctx92213_))
                        _g93251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g93251_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx92188_)
        (let* ((_ht92190_ (gx#current-expander-module-registry))
               (_$e92192_ (hash-get _ht92190_ _ctx92188_)))
          (if _$e92192_
              (values _$e92192_)
              (let ((_pre92195_
                     (let ((__obj93242
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
                       (gx#prelude-context:::init! __obj93242 _ctx92188_)
                       __obj93242)))
                (hash-put! _ht92190_ _ctx92188_ _pre92195_)
                _pre92195_)))))
    (define gx#core-import-module__%
      (lambda (_rpath92069_ _reload?92070_)
        (letrec ((_import-source92072_
                  (lambda (_path92157_)
                    (if (member _path92157_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path92157_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g93252_ (gx#core-read-module _path92157_)))
                         (begin
                           (let ((_g93253_
                                  (if (##values? _g93252_)
                                      (##vector-length _g93252_)
                                      1)))
                             (if (not (##fx= _g93253_ 4))
                                 (error "Context expects 4 values" _g93253_)))
                           (let ((_pre92160_ (##vector-ref _g93252_ 0))
                                 (_id92161_ (##vector-ref _g93252_ 1))
                                 (_ns92162_ (##vector-ref _g93252_ 2))
                                 (_body92163_ (##vector-ref _g93252_ 3)))
                             (let* ((_prelude92168_
                                     (if (##structure-instance-of?
                                          _pre92160_
                                          'gx#prelude-context::t)
                                         _pre92160_
                                         (if (##structure-instance-of?
                                              _pre92160_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre92160_)
                                             (if (string? _pre92160_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre92160_))
                                                 (if (not _pre92160_)
                                                     (let ((_$e92165_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e92165_
                                                           _$e92165_
                                                           (let ((__obj93243
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
                     (gx#prelude-context:::init! __obj93243 '#f)
                     __obj93243)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath92069_
                                                            _pre92160_))))))
                                    (_ctx92170_
                                     (let ((__obj93244
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
                                        __obj93244
                                        _id92161_
                                        _prelude92168_
                                        _ns92162_
                                        _path92157_)
                                       __obj93244))
                                    (_body92172_
                                     (gx#core-expand-module-begin
                                      _body92163_
                                      _ctx92170_))
                                    (_body92174_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body92172_)
                                      _path92157_
                                      _ctx92170_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx92170_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body92174_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx92170_
                                _body92174_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path92157_
                                _ctx92170_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id92161_
                                _ctx92170_)
                               _ctx92170_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path92157_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule92073_
                  (lambda (_rpath92085_)
                    (let* ((_rpath9208692093_ _rpath92085_)
                           (_E9208892097_
                            (lambda ()
                              (error '"No clause matching" _rpath9208692093_)))
                           (_K9208992145_
                            (lambda (_refs92100_ _origin92101_)
                              (let ((_ctx92103_
                                     (if _origin92101_
                                         (gx#core-import-module__%
                                          _origin92101_
                                          _reload?92070_)
                                         (gx#current-expander-context))))
                                (let _lp92105_ ((_rest92107_ _refs92100_)
                                                (_ctx92108_ _ctx92103_))
                                  (let* ((_rest9210992117_ _rest92107_)
                                         (_else9211192125_
                                          (lambda () _ctx92108_))
                                         (_K9211392133_
                                          (lambda (_rest92128_ _id92129_)
                                            (let ((_bind92131_
                                                   (gx#resolve-identifier__%
                                                    _id92129_
                                                    '0
                                                    _ctx92108_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind92131_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind92131_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp92105_
                                                   _rest92128_
                                                   (##unchecked-structure-ref
                                                    _bind92131_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath92085_
                                                         _id92129_
                                                         _bind92131_))))))
                                    (if (##pair? _rest9210992117_)
                                        (let ((_hd9211492136_
                                               (##car _rest9210992117_))
                                              (_tl9211592138_
                                               (##cdr _rest9210992117_)))
                                          (let* ((_id92141_ _hd9211492136_)
                                                 (_rest92143_ _tl9211592138_))
                                            (_K9211392133_
                                             _rest92143_
                                             _id92141_)))
                                        (_else9211192125_))))))))
                      (if (##pair? _rpath9208692093_)
                          (let ((_hd9209092148_ (##car _rpath9208692093_))
                                (_tl9209192150_ (##cdr _rpath9208692093_)))
                            (let* ((_origin92153_ _hd9209092148_)
                                   (_refs92155_ _tl9209192150_))
                              (_K9208992145_ _refs92155_ _origin92153_)))
                          (_E9208892097_))))))
          (let ((_$e92075_
                 (if (not _reload?92070_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath92069_)
                     '#f)))
            (if _$e92075_
                (values _$e92075_)
                (if (list? _rpath92069_)
                    (_import-submodule92073_ _rpath92069_)
                    (if (gx#core-library-module-path? _rpath92069_)
                        (let ((_ctx92078_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath92069_)
                                _reload?92070_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath92069_
                           _ctx92078_)
                          _ctx92078_)
                        (let* ((_npath92080_ (path-normalize _rpath92069_))
                               (_$e92082_
                                (if (not _reload?92070_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath92080_)
                                    '#f)))
                          (if _$e92082_
                              (values _$e92082_)
                              (_import-source92072_ _npath92080_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath92181_)
        (let ((_reload?92183_ '#f))
          (gx#core-import-module__% _rpath92181_ _reload?92183_))))
    (define gx#core-import-module
      (lambda _g93255_
        (let ((_g93254_ (##length _g93255_)))
          (cond ((##fx= _g93254_ 1)
                 (apply (lambda (_rpath92181_)
                          (gx#core-import-module__0 _rpath92181_))
                        _g93255_))
                ((##fx= _g93254_ 2)
                 (apply (lambda (_rpath92185_ _reload?92186_)
                          (gx#core-import-module__%
                           _rpath92185_
                           _reload?92186_))
                        _g93255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g93255_))))))
    (define gx#core-read-module
      (lambda (_path92058_)
        (with-catch
         (lambda (_exn92060_)
           (if (and (datum-parsing-exception? _exn92060_)
                    (eq? (datum-parsing-exception-filepos _exn92060_) '0))
               (gx#core-read-module/lang _path92058_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path92058_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9206292064_)
                      (display-exception _exn92060_ _g9206292064_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path92058_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91921_)
        (let _lp91923_ ((_body91925_ (read-syntax-from-file _path91921_))
                        (_pre91926_ '#f)
                        (_ns91927_ '#f)
                        (_pkg91928_ '#f))
          (let* ((_e9192991953_ _body91925_)
                 (_E9194591975_
                  (lambda ()
                    (let ((_g93256_
                           (if _pkg91928_
                               (values _pre91926_ _ns91927_ _pkg91928_)
                               (gx#core-read-module-package
                                _path91921_
                                _pre91926_
                                _ns91927_))))
                      (begin
                        (let ((_g93257_
                               (if (##values? _g93256_)
                                   (##vector-length _g93256_)
                                   1)))
                          (if (not (##fx= _g93257_ 3))
                              (error "Context expects 3 values" _g93257_)))
                        (let ((_pre91957_ (##vector-ref _g93256_ 0))
                              (_ns91958_ (##vector-ref _g93256_ 1))
                              (_pkg91959_ (##vector-ref _g93256_ 2)))
                          (let* ((_prelude91961_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91957_)
                                      (gx#syntax-local-e__0 _pre91957_)
                                      (if (gx#core-library-module-path?
                                           _pre91957_)
                                          (gx#core-resolve-library-module-path
                                           _pre91957_)
                                          (if (gx#stx-string? _pre91957_)
                                              (gx#core-resolve-module-path__%
                                               _pre91957_
                                               _path91921_)
                                              (gx#stx-e _pre91957_)))))
                                 (_path-id91963_
                                  (gx#core-module-path->namespace _path91921_))
                                 (_pkg-id91965_
                                  (if _pkg91959_
                                      (string-append
                                       _pkg91959_
                                       '"/"
                                       _path-id91963_)
                                      _path-id91963_))
                                 (_module-id91967_
                                  (string->symbol _pkg-id91965_))
                                 (_module-ns91972_
                                  (if (eq? _ns91958_ '#!void)
                                      '#f
                                      (let ((_$e91969_ _ns91958_))
                                        (if _$e91969_
                                            _$e91969_
                                            _pkg-id91965_)))))
                            (values _prelude91961_
                                    _module-id91967_
                                    _module-ns91972_
                                    _body91925_)))))))
                 (_E9193892004_
                  (lambda ()
                    (if (gx#stx-pair? _e9192991953_)
                        (let ((_e9194691979_ (gx#syntax-e _e9192991953_)))
                          (let ((_hd9194791982_ (##car _e9194691979_))
                                (_tl9194891984_ (##cdr _e9194691979_)))
                            (if (eq? (gx#stx-e _hd9194791982_) 'package:)
                                (if (gx#stx-pair? _tl9194891984_)
                                    (let ((_e9194991987_
                                           (gx#syntax-e _tl9194891984_)))
                                      (let ((_hd9195091990_
                                             (##car _e9194991987_))
                                            (_tl9195191992_
                                             (##cdr _e9194991987_)))
                                        (let* ((_pkg91995_ _hd9195091990_)
                                               (_rest91997_ _tl9195191992_))
                                          (if '#t
                                              (let ((_pkg92002_
                                                     (if (gx#identifier?
                                                          _pkg91995_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91995_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91995_)
                         (gx#stx-false? _pkg91995_))
                     (gx#stx-e _pkg91995_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91995_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91923_
                                                 _rest91997_
                                                 _pre91926_
                                                 _ns91927_
                                                 _pkg92002_))
                                              (_E9194591975_)))))
                                    (_E9194591975_))
                                (_E9194591975_))))
                        (_E9194591975_))))
                 (_E9193192030_
                  (lambda ()
                    (if (gx#stx-pair? _e9192991953_)
                        (let ((_e9193992008_ (gx#syntax-e _e9192991953_)))
                          (let ((_hd9194092011_ (##car _e9193992008_))
                                (_tl9194192013_ (##cdr _e9193992008_)))
                            (if (eq? (gx#stx-e _hd9194092011_) 'namespace:)
                                (if (gx#stx-pair? _tl9194192013_)
                                    (let ((_e9194292016_
                                           (gx#syntax-e _tl9194192013_)))
                                      (let ((_hd9194392019_
                                             (##car _e9194292016_))
                                            (_tl9194492021_
                                             (##cdr _e9194292016_)))
                                        (let* ((_ns92024_ _hd9194392019_)
                                               (_rest92026_ _tl9194492021_))
                                          (if '#t
                                              (let ((_ns92028_
                                                     (if (gx#identifier?
                                                          _ns92024_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92024_))
                                                         (if (gx#stx-string?
                                                              _ns92024_)
                                                             (gx#stx-e
                                                              _ns92024_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92024_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91923_
                                                 _rest92026_
                                                 _pre91926_
                                                 _ns92028_
                                                 _pkg91928_))
                                              (_E9193892004_)))))
                                    (_E9193892004_))
                                (_E9193892004_))))
                        (_E9193892004_))))
                 (_E9193092054_
                  (lambda ()
                    (if (gx#stx-pair? _e9192991953_)
                        (let ((_e9193292034_ (gx#syntax-e _e9192991953_)))
                          (let ((_hd9193392037_ (##car _e9193292034_))
                                (_tl9193492039_ (##cdr _e9193292034_)))
                            (if (eq? (gx#stx-e _hd9193392037_) 'prelude:)
                                (if (gx#stx-pair? _tl9193492039_)
                                    (let ((_e9193592042_
                                           (gx#syntax-e _tl9193492039_)))
                                      (let ((_hd9193692045_
                                             (##car _e9193592042_))
                                            (_tl9193792047_
                                             (##cdr _e9193592042_)))
                                        (let* ((_prelude92050_ _hd9193692045_)
                                               (_rest92052_ _tl9193792047_))
                                          (if '#t
                                              (_lp91923_
                                               _rest92052_
                                               _prelude92050_
                                               _ns91927_
                                               _pkg91928_)
                                              (_E9193192030_)))))
                                    (_E9193192030_))
                                (_E9193192030_))))
                        (_E9193192030_)))))
            (_E9193092054_)))))
    (define gx#core-read-module/lang
      (lambda (_path91748_)
        (letrec ((_default-read-module-body91750_
                  (lambda (_inp91913_)
                    (let _lp91915_ ((_body91917_ '()))
                      (let ((_next91919_ (read-syntax _inp91913_)))
                        (if (eof-object? _next91919_)
                            (reverse _body91917_)
                            (_lp91915_ (cons _next91919_ _body91917_)))))))
                 (_read-body91751_
                  (lambda (_inp91832_
                           _pre91833_
                           _ns91834_
                           _pkg91835_
                           _args91836_)
                    (let ((_g93258_
                           (if _pkg91835_
                               (values _pre91833_ _ns91834_ _pkg91835_)
                               (gx#core-read-module-package
                                _path91748_
                                _pre91833_
                                _ns91834_))))
                      (begin
                        (let ((_g93259_
                               (if (##values? _g93258_)
                                   (##vector-length _g93258_)
                                   1)))
                          (if (not (##fx= _g93259_ 3))
                              (error "Context expects 3 values" _g93259_)))
                        (let ((_pre91838_ (##vector-ref _g93258_ 0))
                              (_ns91839_ (##vector-ref _g93258_ 1))
                              (_pkg91840_ (##vector-ref _g93258_ 2)))
                          (let* ((_prelude91842_
                                  (gx#import-module__0 _pre91838_))
                                 (_read-module-body91896_
                                  (let ((_$e91888_
                                         (find (lambda (_e9184391845_)
                                                 (let* ((_g9184791857_
                                                         _e9184391845_)
                                                        (_else9184991865_
                                                         (lambda () '#f))
                                                        (_K9185191869_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9184791857_
                                                        'gx#module-export::t)
                                                       (let* ((_e9185291872_
                                                               (##unchecked-structure-ref
                                                                _g9184791857_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9185391875_
                                                               (##unchecked-structure-ref
                                                                _g9184791857_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9185491878_
                                                               (##unchecked-structure-ref
                                                                _g9184791857_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9185491878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9185591881_
                            (##unchecked-structure-ref
                             _g9184791857_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9188391885_)
                              (eq? _g9188391885_ 'read-module-body))
                            _e9185591881_)
                           (_K9185191869_)
                           (_else9184991865_)))
                     (_else9184991865_)))
               (_else9184991865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91842_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91888_
                                        ((lambda (_xport91891_)
                                           (let ((_proc91894_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91891_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91894_)
                                                 _proc91894_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91748_
                                                  _pre91838_
                                                  _proc91894_))))
                                         _$e91888_)
                                        _default-read-module-body91750_)))
                                 (_path-id91898_
                                  (gx#core-module-path->namespace _path91748_))
                                 (_pkg-id91900_
                                  (if _pkg91840_
                                      (string-append
                                       _pkg91840_
                                       '"/"
                                       _path-id91898_)
                                      _path-id91898_))
                                 (_module-id91902_
                                  (string->symbol _pkg-id91900_))
                                 (_module-ns91907_
                                  (let ((_$e91904_ _ns91839_))
                                    (if _$e91904_ _$e91904_ _pkg-id91900_)))
                                 (_body91910_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91896_ _inp91832_))
                                   gx#current-module-reader-path
                                   _path91748_
                                   gx#current-module-reader-args
                                   _args91836_)))
                            (values _prelude91842_
                                    _module-id91902_
                                    _module-ns91907_
                                    _body91910_)))))))
                 (_string-e91752_
                  (lambda (_obj91829_ _what91830_)
                    (if (string? _obj91829_)
                        _obj91829_
                        (if (symbol? _obj91829_)
                            (symbol->string _obj91829_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91830_)
                             _path91748_
                             _obj91829_)))))
                 (_read-lang-args91753_
                  (lambda (_inp91784_ _args91785_)
                    (let* ((_args9178691794_ _args91785_)
                           (_else9178891802_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91748_)))
                           (_K9179091817_
                            (lambda (_args91805_ _prelude91806_)
                              (let* ((_pkg91808_
                                      (pgetq__0 'package: _args91805_))
                                     (_pkg91810_
                                      (if _pkg91808_
                                          (_string-e91752_
                                           _pkg91808_
                                           '"package")
                                          '#f))
                                     (_ns91812_
                                      (pgetq__0 'namespace: _args91805_))
                                     (_ns91814_
                                      (if _ns91812_
                                          (_string-e91752_
                                           _ns91812_
                                           '"namespace")
                                          '#f)))
                                (_read-body91751_
                                 _inp91784_
                                 _prelude91806_
                                 _ns91814_
                                 _pkg91810_
                                 _args91805_)))))
                      (if (##pair? _args9178691794_)
                          (let ((_hd9179191820_ (##car _args9178691794_))
                                (_tl9179291822_ (##cdr _args9178691794_)))
                            (let* ((_prelude91825_ _hd9179191820_)
                                   (_args91827_ _tl9179291822_))
                              (_K9179091817_ _args91827_ _prelude91825_)))
                          (_else9178891802_)))))
                 (_read-lang91754_
                  (lambda (_inp91759_)
                    (let* ((_head91761_ (read-line _inp91759_))
                           (_$e91763_ (string-index__0 _head91761_ '#\space)))
                      (if _$e91763_
                          ((lambda (_ix91766_)
                             (let ((_lang91768_
                                    (substring _head91761_ '0 _ix91766_)))
                               (if (equal? _lang91768_ '"#lang")
                                   (let* ((_rest91770_
                                           (substring
                                            _head91761_
                                            (fx+ _ix91766_ '1)
                                            (string-length _head91761_)))
                                          (_args91781_
                                           (with-catch
                                            (lambda (_g9177191773_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91748_
                                               _g9177191773_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91770_
                                               (lambda (_g9177691778_)
                                                 (read-all
                                                  _g9177691778_
                                                  read)))))))
                                     (_read-lang-args91753_
                                      _inp91759_
                                      _args91781_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91748_))))
                           _$e91763_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91748_)))))
                 (_read-e91755_
                  (lambda (_inp91757_)
                    (if (eq? (peek-char _inp91757_) '#\#)
                        (_read-lang91754_ _inp91757_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91748_)))))
          (gx#call-with-input-source-file _path91748_ _read-e91755_))))
    (define gx#core-read-module-package
      (lambda (_path91702_ _pre91703_ _ns91704_)
        (letrec ((_string-e91706_
                  (lambda (_e91746_)
                    (if (symbol? _e91746_)
                        (symbol->string _e91746_)
                        (if (string? _e91746_)
                            _e91746_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91746_))))))
          (let _lp91708_ ((_dir91710_ (path-directory _path91702_))
                          (_pkg-path91711_ '()))
            (let ((_gerbil.pkg91713_ (path-expand '"gerbil.pkg" _dir91710_)))
              (if (file-exists? _gerbil.pkg91713_)
                  (let ((_plist91715_
                         (gx#core-library-package-plist__% _dir91710_ '#t)))
                    (if (null? _plist91715_)
                        (let ((_pkg91717_
                               (if (not (null? _pkg-path91711_))
                                   (string-join _pkg-path91711_ '"/")
                                   '#f)))
                          (values _pre91703_ _ns91704_ _pkg91717_))
                        (if (list? _plist91715_)
                            (let* ((_root91719_
                                    (pgetq__0 'package: _plist91715_))
                                   (_pkg91723_
                                    (let ((_pkg-path91721_
                                           (if _root91719_
                                               (cons (_string-e91706_
                                                      _root91719_)
                                                     _pkg-path91711_)
                                               _pkg-path91711_)))
                                      (if (not (null? _pkg-path91721_))
                                          (string-join _pkg-path91721_ '"/")
                                          '#f)))
                                   (_ns91730_
                                    (let ((_ns91728_
                                           (let ((_$e91725_ _ns91704_))
                                             (if _$e91725_
                                                 _$e91725_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91715_)))))
                                      (if _ns91728_
                                          (_string-e91706_ _ns91728_)
                                          '#f)))
                                   (_pre91735_
                                    (let ((_$e91732_ _pre91703_))
                                      (if _$e91732_
                                          _$e91732_
                                          (pgetq__0 'prelude: _plist91715_)))))
                              (values _pre91735_ _ns91730_ _pkg91723_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91715_))))
                  (let ((_dir*91738_
                         (path-strip-trailing-directory-separator _dir91710_)))
                    (if (or (string-empty? _dir*91738_)
                            (equal? _dir91710_ _dir*91738_))
                        (values _pre91703_ _ns91704_ '#f)
                        (let ((_xpath91743_ (path-strip-directory _dir*91738_))
                              (_xdir91744_ (path-directory _dir*91738_)))
                          (_lp91708_
                           _xdir91744_
                           (cons _xpath91743_ _pkg-path91711_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91700_)
        (path-strip-extension (path-strip-directory _path91700_))))
    (define gx#core-module-path->id
      (lambda (_path91698_)
        (string->symbol (gx#core-module-path->namespace _path91698_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91677_ _rel91678_)
        (let* ((_path91680_ (gx#stx-e _stx-path91677_))
               (_path91682_
                (if (string-empty? (path-extension _path91680_))
                    (string-append _path91680_ '".ss")
                    _path91680_)))
          (gx#core-resolve-path__%
           _path91682_
           (let ((_$e91685_ (gx#stx-source _stx-path91677_)))
             (if _$e91685_ _$e91685_ _rel91678_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91691_)
        (let ((_rel91693_ '#f))
          (gx#core-resolve-module-path__% _stx-path91691_ _rel91693_))))
    (define gx#core-resolve-module-path
      (lambda _g93261_
        (let ((_g93260_ (##length _g93261_)))
          (cond ((##fx= _g93260_ 1)
                 (apply (lambda (_stx-path91691_)
                          (gx#core-resolve-module-path__0 _stx-path91691_))
                        _g93261_))
                ((##fx= _g93260_ 2)
                 (apply (lambda (_stx-path91695_ _rel91696_)
                          (gx#core-resolve-module-path__%
                           _stx-path91695_
                           _rel91696_))
                        _g93261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g93261_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91563_)
        (let* ((_spath91565_ (symbol->string (gx#stx-e _libpath91563_)))
               (_spath91567_
                (substring _spath91565_ '1 (string-length _spath91565_)))
               (_ext91569_ (path-extension _spath91567_))
               (_ssi91571_
                (if (string-empty? _ext91569_)
                    (string-append _spath91567_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91567_)
                     '".ssi")))
               (_srcs91575_
                (if (string-empty? _ext91569_)
                    (map (lambda (_ext91573_)
                           (string-append _spath91567_ _ext91573_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91567_ '()))))
          (let _lp91578_ ((_rest91580_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9158191590_ _rest91580_)
                   (_E9158491594_
                    (lambda ()
                      (error '"No clause matching" _rest9158191590_))))
              (let ((_K9158691664_
                     (lambda (_rest91605_ _dir91606_)
                       (letrec ((_resolve91608_
                                 (lambda (_ssi91620_ _srcs91621_)
                                   (let ((_compiled-path91623_
                                          (path-expand _ssi91620_ _dir91606_)))
                                     (if (file-exists? _compiled-path91623_)
                                         (path-normalize _compiled-path91623_)
                                         (let _lpr91625_ ((_rest-src91627_
                                                           _srcs91621_))
                                           (let* ((_rest-src9162891636_
                                                   _rest-src91627_)
                                                  (_else9163091644_
                                                   (lambda ()
                                                     (_lp91578_ _rest91605_)))
                                                  (_K9163291652_
                                                   (lambda (_rest-src91647_
                                                            _src91648_)
                                                     (let ((_src-path91650_
                                                            (path-expand
                                                             _src91648_
                                                             _dir91606_)))
                                                       (if (file-exists?
                                                            _src-path91650_)
                                                           (path-normalize
                                                            _src-path91650_)
                                                           (_lpr91625_
                                                            _rest-src91647_))))))
                                             (if (##pair? _rest-src9162891636_)
                                                 (let ((_hd9163391655_
                                                        (##car _rest-src9162891636_))
                                                       (_tl9163491657_
                                                        (##cdr _rest-src9162891636_)))
                                                   (let* ((_src91660_
                                                           _hd9163391655_)
                                                          (_rest-src91662_
                                                           _tl9163491657_))
                                                     (_K9163291652_
                                                      _rest-src91662_
                                                      _src91660_)))
                                                 (_else9163091644_)))))))))
                         (let ((_$e91610_
                                (gx#core-library-package-path-prefix
                                 _dir91606_)))
                           (if _$e91610_
                               ((lambda (_prefix91613_)
                                  (if (string-prefix?
                                       _prefix91613_
                                       _spath91567_)
                                      (let ((_ssi91617_
                                             (substring
                                              _ssi91571_
                                              (string-length _prefix91613_)
                                              (string-length _ssi91571_)))
                                            (_srcs91618_
                                             (map (lambda (_src91615_)
                                                    (substring
                                                     _src91615_
                                                     (string-length
                                                      _prefix91613_)
                                                     (string-length
                                                      _src91615_)))
                                                  _srcs91575_)))
                                        (_resolve91608_
                                         _ssi91617_
                                         _srcs91618_))
                                      (_lp91578_ _rest91605_)))
                                _$e91610_)
                               (_resolve91608_ _ssi91571_ _srcs91575_))))))
                    (_K9158591599_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91563_))))
                (let ((_try-match9158391602_
                       (lambda ()
                         (if (##null? _rest9158191590_)
                             (_K9158591599_)
                             (_E9158491594_)))))
                  (if (##pair? _rest9158191590_)
                      (let ((_tl9158891669_ (##cdr _rest9158191590_))
                            (_hd9158791667_ (##car _rest9158191590_)))
                        (let ((_dir91672_ _hd9158791667_)
                              (_rest91674_ _tl9158891669_))
                          (_K9158691664_ _rest91674_ _dir91672_)))
                      (_try-match9158391602_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91536_)
        (letrec ((_resolve91538_
                  (lambda (_path91555_ _base91556_)
                    (let ((_$e91558_ (string-rindex__0 _base91556_ '#\/)))
                      (if _$e91558_
                          ((lambda (_idx91561_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91556_ '0 _idx91561_)
                                '"/"
                                _path91555_))))
                           _$e91558_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91555_))))))))
          (let ((_spath91540_ (symbol->string (gx#stx-e _modpath91536_)))
                (_mod91541_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91541_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91536_))
            (let ((_mpath91543_
                   (symbol->string
                    (##structure-ref
                     _mod91541_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91545_ ((_spath91547_ _spath91540_)
                              (_mpath91548_ _mpath91543_))
                (if (string-prefix? '"../" _spath91547_)
                    (let ((_$e91550_ (string-rindex__0 _mpath91548_ '#\/)))
                      (if _$e91550_
                          ((lambda (_idx91553_)
                             (_lp91545_
                              (substring
                               _spath91547_
                               '3
                               (string-length _spath91547_))
                              (substring _mpath91548_ '0 _idx91553_)))
                           _$e91550_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91536_)))
                    (if (string-prefix? '"./" _spath91547_)
                        (_lp91545_
                         (substring
                          _spath91547_
                          '2
                          (string-length _spath91547_))
                         _mpath91548_)
                        (_resolve91538_ _spath91547_ _mpath91548_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91529_)
        (let ((_$e91531_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91529_))))
          (if _$e91531_
              ((lambda (_pkg91534_)
                 (string-append (symbol->string _pkg91534_) '"/"))
               _$e91531_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91501_ _exists?91502_)
        (let* ((_cache91504_ (gx#core-library-package-cache))
               (_$e91506_ (hash-get _cache91504_ _dir91501_)))
          (if _$e91506_
              (values _$e91506_)
              (let* ((_gerbil.pkg91509_ (path-expand '"gerbil.pkg" _dir91501_))
                     (_plist91516_
                      (if (or _exists?91502_ (file-exists? _gerbil.pkg91509_))
                          (let ((_e91514_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91509_
                                  read)))
                            (if (eof-object? _e91514_)
                                '()
                                (if (list? _e91514_)
                                    _e91514_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91509_
                                     _e91514_))))
                          '())))
                (hash-put! _cache91504_ _dir91501_ _plist91516_)
                _plist91516_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91522_)
        (let ((_exists?91524_ '#f))
          (gx#core-library-package-plist__% _dir91522_ _exists?91524_))))
    (define gx#core-library-package-plist
      (lambda _g93263_
        (let ((_g93262_ (##length _g93263_)))
          (cond ((##fx= _g93262_ 1)
                 (apply (lambda (_dir91522_)
                          (gx#core-library-package-plist__0 _dir91522_))
                        _g93263_))
                ((##fx= _g93262_ 2)
                 (apply (lambda (_dir91526_ _exists?91527_)
                          (gx#core-library-package-plist__%
                           _dir91526_
                           _exists?91527_))
                        _g93263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g93263_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91495_ (gx#current-expander-module-library-package-cache)))
          (if _$e91495_
              (values _$e91495_)
              (let ((_cache91498_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91498_)
                _cache91498_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91492_) (gx#core-special-module-path? _stx91492_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91490_) (gx#core-special-module-path? _stx91490_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91485_ _char91486_)
        (if (gx#identifier? _stx91485_)
            (if (interned-symbol? (gx#stx-e _stx91485_))
                (let ((_str91488_ (symbol->string (gx#stx-e _stx91485_))))
                  (if (fx> (string-length _str91488_) '1)
                      (eq? (string-ref _str91488_ '0) _char91486_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91479_)
        (gx#core-bound-identifier?__%
         _stx91479_
         (lambda (_g9148091482_)
           (gx#expander-binding?__% _g9148091482_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91473_)
        (gx#core-bound-identifier?__%
         _stx91473_
         (lambda (_g9147491476_)
           (gx#expander-binding?__% _g9147491476_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91460_)
        (letrec ((_module-prelude?91462_
                  (lambda (_e91468_)
                    (let ((_$e91470_
                           (##structure-instance-of?
                            _e91468_
                            'gx#module-context::t)))
                      (if _$e91470_
                          _$e91470_
                          (##structure-instance-of?
                           _e91468_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91460_
           (lambda (_g9146391465_)
             (gx#expander-binding?__%
              _g9146391465_
              _module-prelude?91462_))))))
    (define gx#core-bind-import!__%
      (lambda (_in91390_ _ctx91391_ _force-weak?91392_)
        (let* ((_in9139391402_ _in91390_)
               (_E9139591406_
                (lambda () (error '"No clause matching" _in9139391402_)))
               (_K9139691419_
                (lambda (_weak?91409_ _phi91410_ _key91411_ _source91412_)
                  (gx#core-bind!__%
                   _key91411_
                   (let ((_e91414_
                          (gx#core-resolve-module-export _source91412_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e91414_ '1 gx#binding::t '#f)
                      _key91411_
                      _phi91410_
                      _e91414_
                      (##unchecked-structure-ref
                       _source91412_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e91416_ _force-weak?91392_))
                        (if _$e91416_ _$e91416_ _weak?91409_))))
                   gx#core-context-rebind?
                   _phi91410_
                   _ctx91391_))))
          (if (##structure-direct-instance-of?
               _in9139391402_
               'gx#module-import::t)
              (let* ((_e9139791422_
                      (##unchecked-structure-ref
                       _in9139391402_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source91425_ _e9139791422_)
                     (_e9139891427_
                      (##unchecked-structure-ref
                       _in9139391402_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91430_ _e9139891427_)
                     (_e9139991432_
                      (##unchecked-structure-ref
                       _in9139391402_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91435_ _e9139991432_)
                     (_e9140091437_
                      (##unchecked-structure-ref
                       _in9139391402_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91440_ _e9140091437_))
                (_K9139691419_
                 _weak?91440_
                 _phi91435_
                 _key91430_
                 _source91425_))
              (_E9139591406_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91445_)
        (let* ((_ctx91447_ (gx#current-expander-context))
               (_force-weak?91449_ '#f))
          (gx#core-bind-import!__% _in91445_ _ctx91447_ _force-weak?91449_))))
    (define gx#core-bind-import!__1
      (lambda (_in91451_ _ctx91452_)
        (let ((_force-weak?91454_ '#f))
          (gx#core-bind-import!__% _in91451_ _ctx91452_ _force-weak?91454_))))
    (define gx#core-bind-import!
      (lambda _g93265_
        (let ((_g93264_ (##length _g93265_)))
          (cond ((##fx= _g93264_ 1)
                 (apply (lambda (_in91445_)
                          (gx#core-bind-import!__0 _in91445_))
                        _g93265_))
                ((##fx= _g93264_ 2)
                 (apply (lambda (_in91451_ _ctx91452_)
                          (gx#core-bind-import!__1 _in91451_ _ctx91452_))
                        _g93265_))
                ((##fx= _g93264_ 3)
                 (apply (lambda (_in91456_ _ctx91457_ _force-weak?91458_)
                          (gx#core-bind-import!__%
                           _in91456_
                           _ctx91457_
                           _force-weak?91458_))
                        _g93265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g93265_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in91376_ _ctx91377_)
        (gx#core-bind-import!__% _in91376_ _ctx91377_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in91382_)
        (let ((_ctx91384_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in91382_ _ctx91384_))))
    (define gx#core-bind-weak-import!
      (lambda _g93267_
        (let ((_g93266_ (##length _g93267_)))
          (cond ((##fx= _g93266_ 1)
                 (apply (lambda (_in91382_)
                          (gx#core-bind-weak-import!__0 _in91382_))
                        _g93267_))
                ((##fx= _g93266_ 2)
                 (apply (lambda (_in91386_ _ctx91387_)
                          (gx#core-bind-weak-import!__% _in91386_ _ctx91387_))
                        _g93267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g93267_))))))
    (define gx#core-resolve-module-export
      (lambda (_out91267_)
        (letrec ((_subst91269_
                  (lambda (_key91315_)
                    (let* ((_key9131691324_ _key91315_)
                           (_else9131891332_ (lambda () _key91315_))
                           (_K9132091363_
                            (lambda (_mark91335_ _id91336_)
                              (let* ((_mark9133791343_ _mark91335_)
                                     (_E9133991347_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9133791343_)))
                                     (_K9134091355_
                                      (lambda (_subst91350_)
                                        (let ((_$e91352_
                                               (if _subst91350_
                                                   (hash-get
                                                    _subst91350_
                                                    _id91336_)
                                                   '#f)))
                                          (if _$e91352_
                                              _$e91352_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key91315_))))))
                                (if (##structure-instance-of?
                                     _mark9133791343_
                                     'gx#expander-mark::t)
                                    (let* ((_e9134191358_
                                            (##unchecked-structure-ref
                                             _mark9133791343_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst91361_ _e9134191358_))
                                      (_K9134091355_ _subst91361_))
                                    (_E9133991347_))))))
                      (if (##pair? _key9131691324_)
                          (let ((_hd9132191366_ (##car _key9131691324_))
                                (_tl9132291368_ (##cdr _key9131691324_)))
                            (let* ((_id91371_ _hd9132191366_)
                                   (_mark91373_ _tl9132291368_))
                              (_K9132091363_ _mark91373_ _id91371_)))
                          (_else9131891332_))))))
          (let* ((_out9127091280_ _out91267_)
                 (_E9127291284_
                  (lambda () (error '"No clause matching" _out9127091280_)))
                 (_K9127391291_
                  (lambda (_phi91287_ _key91288_ _ctx91289_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx91289_ _phi91287_)
                     (_subst91269_ _key91288_)))))
            (if (##structure-direct-instance-of?
                 _out9127091280_
                 'gx#module-export::t)
                (let* ((_e9127491294_
                        (##unchecked-structure-ref
                         _out9127091280_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx91297_ _e9127491294_)
                       (_e9127591299_
                        (##unchecked-structure-ref
                         _out9127091280_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key91302_ _e9127591299_)
                       (_e9127691304_
                        (##unchecked-structure-ref
                         _out9127091280_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi91307_ _e9127691304_)
                       (_e9127791309_
                        (##unchecked-structure-ref
                         _out9127091280_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9127891312_
                        (##unchecked-structure-ref
                         _out9127091280_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9127391291_ _phi91307_ _key91302_ _ctx91297_))
                (_E9127291284_))))))
    (define gx#core-module-export->import__%
      (lambda (_out91192_ _rename91193_ _dphi91194_)
        (let* ((_out9119591205_ _out91192_)
               (_E9119791209_
                (lambda () (error '"No clause matching" _out9119591205_)))
               (_K9119891221_
                (lambda (_weak?91212_
                         _name91213_
                         _phi91214_
                         _key91215_
                         _ctx91216_)
                  (##structure
                   gx#module-import::t
                   _out91192_
                   (let ((_$e91218_ _rename91193_))
                     (if _$e91218_ _$e91218_ _name91213_))
                   (fx+ _phi91214_ _dphi91194_)
                   _weak?91212_))))
          (if (##structure-direct-instance-of?
               _out9119591205_
               'gx#module-export::t)
              (let* ((_e9119991224_
                      (##unchecked-structure-ref
                       _out9119591205_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx91227_ _e9119991224_)
                     (_e9120091229_
                      (##unchecked-structure-ref
                       _out9119591205_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key91232_ _e9120091229_)
                     (_e9120191234_
                      (##unchecked-structure-ref
                       _out9119591205_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi91237_ _e9120191234_)
                     (_e9120291239_
                      (##unchecked-structure-ref
                       _out9119591205_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name91242_ _e9120291239_)
                     (_e9120391244_
                      (##unchecked-structure-ref
                       _out9119591205_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?91247_ _e9120391244_))
                (_K9119891221_
                 _weak?91247_
                 _name91242_
                 _phi91237_
                 _key91232_
                 _ctx91227_))
              (_E9119791209_)))))
    (define gx#core-module-export->import__0
      (lambda (_out91252_)
        (let* ((_rename91254_ '#f) (_dphi91256_ '0))
          (gx#core-module-export->import__%
           _out91252_
           _rename91254_
           _dphi91256_))))
    (define gx#core-module-export->import__1
      (lambda (_out91258_ _rename91259_)
        (let ((_dphi91261_ '0))
          (gx#core-module-export->import__%
           _out91258_
           _rename91259_
           _dphi91261_))))
    (define gx#core-module-export->import
      (lambda _g93269_
        (let ((_g93268_ (##length _g93269_)))
          (cond ((##fx= _g93268_ 1)
                 (apply (lambda (_out91252_)
                          (gx#core-module-export->import__0 _out91252_))
                        _g93269_))
                ((##fx= _g93268_ 2)
                 (apply (lambda (_out91258_ _rename91259_)
                          (gx#core-module-export->import__1
                           _out91258_
                           _rename91259_))
                        _g93269_))
                ((##fx= _g93268_ 3)
                 (apply (lambda (_out91263_ _rename91264_ _dphi91265_)
                          (gx#core-module-export->import__%
                           _out91263_
                           _rename91264_
                           _dphi91265_))
                        _g93269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g93269_))))))
    (define gx#core-expand-module%
      (lambda (_stx91120_)
        (letrec ((_make-context91122_
                  (lambda (_id91173_)
                    (let* ((_super91175_ (gx#current-expander-context))
                           (_bind-id91177_ (gx#stx-e _id91173_))
                           (_mod-id91179_
                            (if (##structure-instance-of?
                                 _super91175_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super91175_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id91177_)
                                _bind-id91177_))
                           (_ns91181_ (symbol->string _mod-id91179_))
                           (_path91188_
                            (if (##structure-instance-of?
                                 _super91175_
                                 'gx#module-context::t)
                                (let ((_path91183_
                                       (##unchecked-structure-ref
                                        _super91175_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path91183_)
                                          (null? _path91183_))
                                      (cons _bind-id91177_ _path91183_)
                                      (if (not _path91183_)
                                          _bind-id91177_
                                          (cons _bind-id91177_
                                                (cons _path91183_ '())))))
                                _bind-id91177_)))
                      (let ((__obj93245
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
                         __obj93245
                         _mod-id91179_
                         _super91175_
                         _ns91181_
                         _path91188_)
                        __obj93245)))))
          (let* ((_e9112391133_ _stx91120_)
                 (_E9112591137_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9112391133_)))
                 (_E9112491169_
                  (lambda ()
                    (if (gx#stx-pair? _e9112391133_)
                        (let ((_e9112691141_ (gx#syntax-e _e9112391133_)))
                          (let ((_hd9112791144_ (##car _e9112691141_))
                                (_tl9112891146_ (##cdr _e9112691141_)))
                            (if (gx#stx-pair? _tl9112891146_)
                                (let ((_e9112991149_
                                       (gx#syntax-e _tl9112891146_)))
                                  (let ((_hd9113091152_ (##car _e9112991149_))
                                        (_tl9113191154_ (##cdr _e9112991149_)))
                                    (let* ((_id91157_ _hd9113091152_)
                                           (_body91159_ _tl9113191154_))
                                      (if (and (gx#identifier? _id91157_)
                                               (gx#stx-list? _body91159_))
                                          (let* ((_ctx91161_
                                                  (_make-context91122_
                                                   _id91157_))
                                                 (_body91163_
                                                  (gx#core-expand-module-begin
                                                   _body91159_
                                                   _ctx91161_))
                                                 (_body91165_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body91163_)
                                                   (gx#stx-source
                                                    _stx91120_))))
                                            (##unchecked-structure-set!
                                             _ctx91161_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body91165_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx91161_
                                             _body91165_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id91157_
                                             _ctx91161_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id91157_)
                                              _body91165_)
                                             (gx#stx-source _stx91120_)))
                                          (_E9112591137_)))))
                                (_E9112591137_))))
                        (_E9112591137_)))))
            (_E9112491169_)))))
    (define gx#core-expand-module-begin
      (lambda (_body91086_ _ctx91087_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx91090_
                   (gx#core-expand-head (cons '%%begin-module _body91086_)))
                  (_e9109191098_ _stx91090_)
                  (_E9109391102_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx91090_)))
                  (_E9109291116_
                   (lambda ()
                     (if (gx#stx-pair? _e9109191098_)
                         (let ((_e9109491106_ (gx#syntax-e _e9109191098_)))
                           (let ((_hd9109591109_ (##car _e9109491106_))
                                 (_tl9109691111_ (##cdr _e9109491106_)))
                             (if (and (gx#identifier? _hd9109591109_)
                                      (gx#core-identifier=?
                                       _hd9109591109_
                                       '%#begin-module))
                                 (let ((_body91114_ _tl9109691111_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx91090_)
                                           _body91114_
                                           (gx#core-expand-module-body
                                            _body91114_))
                                       (_E9109391102_)))
                                 (_E9109391102_))))
                         (_E9109391102_)))))
             (_E9109291116_)))
         gx#current-expander-context
         _ctx91087_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90882_)
        (letrec ((_expand-special90884_
                  (lambda (_hd91013_ _K91014_ _rest91015_ _r91016_)
                    (let* ((_e9101791034_ _hd91013_)
                           (_E9102991038_
                            (lambda ()
                              (_K91014_
                               _rest91015_
                               (cons (gx#core-expand-top _hd91013_)
                                     _r91016_))))
                           (_E9101991050_
                            (lambda ()
                              (if (gx#stx-pair? _e9101791034_)
                                  (let ((_e9103091042_
                                         (gx#syntax-e _e9101791034_)))
                                    (let ((_hd9103191045_
                                           (##car _e9103091042_))
                                          (_tl9103291047_
                                           (##cdr _e9103091042_)))
                                      (if (and (gx#identifier? _hd9103191045_)
                                               (gx#core-identifier=?
                                                _hd9103191045_
                                                '%#export))
                                          (if '#t
                                              (_K91014_
                                               _rest91015_
                                               (cons _hd91013_ _r91016_))
                                              (_E9102991038_))
                                          (_E9102991038_))))
                                  (_E9102991038_))))
                           (_E9101891082_
                            (lambda ()
                              (if (gx#stx-pair? _e9101791034_)
                                  (let ((_e9102091054_
                                         (gx#syntax-e _e9101791034_)))
                                    (let ((_hd9102191057_
                                           (##car _e9102091054_))
                                          (_tl9102291059_
                                           (##cdr _e9102091054_)))
                                      (if (and (gx#identifier? _hd9102191057_)
                                               (gx#core-identifier=?
                                                _hd9102191057_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9102291059_)
                                              (let ((_e9102391062_
                                                     (gx#syntax-e
                                                      _tl9102291059_)))
                                                (let ((_hd9102491065_
                                                       (##car _e9102391062_))
                                                      (_tl9102591067_
                                                       (##cdr _e9102391062_)))
                                                  (let ((_hd-bind91070_
                                                         _hd9102491065_))
                                                    (if (gx#stx-pair?
                                                         _tl9102591067_)
                                                        (let ((_e9102691072_
                                                               (gx#syntax-e
                                                                _tl9102591067_)))
                                                          (let ((_hd9102791075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9102691072_))
                        (_tl9102891077_ (##cdr _e9102691072_)))
                    (let ((_expr91080_ _hd9102791075_))
                      (if (gx#stx-null? _tl9102891077_)
                          (if (gx#core-bind-values? _hd-bind91070_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind91070_)
                                (_K91014_
                                 _rest91015_
                                 (cons _hd91013_ _r91016_)))
                              (_E9101991050_))
                          (_E9101991050_)))))
                (_E9101991050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9101991050_))
                                          (_E9101991050_))))
                                  (_E9101991050_)))))
                      (_E9101891082_))))
                 (_expand-body90885_
                  (lambda (_rbody90887_)
                    (let _lp90889_ ((_rest90891_ _rbody90887_)
                                    (_body90892_ '()))
                      (let* ((_rest9089390901_ _rest90891_)
                             (_else9089590909_ (lambda () _body90892_))
                             (_K9089791001_
                              (lambda (_rest90912_ _hd90913_)
                                (let* ((_e9091490935_ _hd90913_)
                                       (_E9093090939_
                                        (lambda ()
                                          (_lp90889_
                                           _rest90912_
                                           (cons (gx#core-expand-expression
                                                  _hd90913_)
                                                 _body90892_))))
                                       (_E9092690953_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091490935_)
                                              (let ((_e9093190943_
                                                     (gx#syntax-e
                                                      _e9091490935_)))
                                                (let ((_hd9093290946_
                                                       (##car _e9093190943_))
                                                      (_tl9093390948_
                                                       (##cdr _e9093190943_)))
                                                  (let ((_form90951_
                                                         _hd9093290946_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90951_
                                                         gx#special-form-binding?)
                                                        (_lp90889_
                                                         _rest90912_
                                                         (cons _hd90913_
                                                               _body90892_))
                                                        (_E9093090939_)))))
                                              (_E9093090939_))))
                                       (_E9091690965_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091490935_)
                                              (let ((_e9092790957_
                                                     (gx#syntax-e
                                                      _e9091490935_)))
                                                (let ((_hd9092890960_
                                                       (##car _e9092790957_))
                                                      (_tl9092990962_
                                                       (##cdr _e9092790957_)))
                                                  (if (and (gx#identifier?
                                                            _hd9092890960_)
                                                           (gx#core-identifier=?
                                                            _hd9092890960_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90889_
                                                           _rest90912_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90913_)
                         _body90892_))
                  (_E9092690953_))
              (_E9092690953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9092690953_))))
                                       (_E9091590997_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091490935_)
                                              (let ((_e9091790969_
                                                     (gx#syntax-e
                                                      _e9091490935_)))
                                                (let ((_hd9091890972_
                                                       (##car _e9091790969_))
                                                      (_tl9091990974_
                                                       (##cdr _e9091790969_)))
                                                  (if (and (gx#identifier?
                                                            _hd9091890972_)
                                                           (gx#core-identifier=?
                                                            _hd9091890972_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9091990974_)
                                                          (let ((_e9092090977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9091990974_)))
                    (let ((_hd9092190980_ (##car _e9092090977_))
                          (_tl9092290982_ (##cdr _e9092090977_)))
                      (let ((_hd-bind90985_ _hd9092190980_))
                        (if (gx#stx-pair? _tl9092290982_)
                            (let ((_e9092390987_ (gx#syntax-e _tl9092290982_)))
                              (let ((_hd9092490990_ (##car _e9092390987_))
                                    (_tl9092590992_ (##cdr _e9092390987_)))
                                (let ((_expr90995_ _hd9092490990_))
                                  (if (gx#stx-null? _tl9092590992_)
                                      (if '#t
                                          (_lp90889_
                                           _rest90912_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90985_)
                                                   (gx#core-expand-expression
                                                    _expr90995_))
                                                  (gx#stx-source _hd90913_))
                                                 _body90892_))
                                          (_E9091690965_))
                                      (_E9091690965_)))))
                            (_E9091690965_)))))
                  (_E9091690965_))
              (_E9091690965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9091690965_)))))
                                  (_E9091590997_)))))
                        (if (##pair? _rest9089390901_)
                            (let ((_hd9089891004_ (##car _rest9089390901_))
                                  (_tl9089991006_ (##cdr _rest9089390901_)))
                              (let* ((_hd91009_ _hd9089891004_)
                                     (_rest91011_ _tl9089991006_))
                                (_K9089791001_ _rest91011_ _hd91009_)))
                            (_else9089590909_)))))))
          (_expand-body90885_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90882_)
            _expand-special90884_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90725_
               _expanded?90726_
               _method90727_
               _current-phi90728_
               _expand190729_)
        (letrec ((_K90731_
                  (lambda (_rest90849_ _r90850_)
                    (let* ((_e9085190858_ _rest90849_)
                           (_E9085390862_ (lambda () _r90850_))
                           (_E9085290878_
                            (lambda ()
                              (if (gx#stx-pair? _e9085190858_)
                                  (let ((_e9085490866_
                                         (gx#syntax-e _e9085190858_)))
                                    (let ((_hd9085590869_
                                           (##car _e9085490866_))
                                          (_tl9085690871_
                                           (##cdr _e9085490866_)))
                                      (let* ((_hd90874_ _hd9085590869_)
                                             (_rest90876_ _tl9085690871_))
                                        (if '#t
                                            (_step90732_
                                             _hd90874_
                                             _rest90876_
                                             _r90850_)
                                            (_E9085390862_)))))
                                  (_E9085390862_)))))
                      (_E9085290878_))))
                 (_step90732_
                  (lambda (_hd90763_ _rest90764_ _r90765_)
                    (let* ((_e9076690784_ _hd90763_)
                           (_E9077990788_
                            (lambda ()
                              (if (_expanded?90726_ (gx#stx-e _hd90763_))
                                  (_K90731_
                                   _rest90764_
                                   (cons (gx#stx-e _hd90763_) _r90765_))
                                  (_expand190729_
                                   _hd90763_
                                   _K90731_
                                   _rest90764_
                                   _r90765_))))
                           (_E9077590804_
                            (lambda ()
                              (if (gx#stx-pair? _e9076690784_)
                                  (let ((_e9078090792_
                                         (gx#syntax-e _e9076690784_)))
                                    (let ((_hd9078190795_
                                           (##car _e9078090792_))
                                          (_tl9078290797_
                                           (##cdr _e9078090792_)))
                                      (let* ((_macro90800_ _hd9078190795_)
                                             (_body90802_ _tl9078290797_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90800_
                                             gx#syntax-binding?)
                                            (_K90731_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90800_)
                                                    _hd90763_
                                                    _method90727_)
                                                   _rest90764_)
                                             _r90765_)
                                            (_E9077990788_)))))
                                  (_E9077990788_))))
                           (_E9076890818_
                            (lambda ()
                              (if (gx#stx-pair? _e9076690784_)
                                  (let ((_e9077690808_
                                         (gx#syntax-e _e9076690784_)))
                                    (let ((_hd9077790811_
                                           (##car _e9077690808_))
                                          (_tl9077890813_
                                           (##cdr _e9077690808_)))
                                      (if (eq? (gx#stx-e _hd9077790811_)
                                               'begin:)
                                          (let ((_body90816_ _tl9077890813_))
                                            (if '#t
                                                (_K90731_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90764_
                                                  _body90816_)
                                                 _r90765_)
                                                (_E9077590804_)))
                                          (_E9077590804_))))
                                  (_E9077590804_))))
                           (_E9076790845_
                            (lambda ()
                              (if (gx#stx-pair? _e9076690784_)
                                  (let ((_e9076990822_
                                         (gx#syntax-e _e9076690784_)))
                                    (let ((_hd9077090825_
                                           (##car _e9076990822_))
                                          (_tl9077190827_
                                           (##cdr _e9076990822_)))
                                      (if (eq? (gx#stx-e _hd9077090825_) 'phi:)
                                          (if (gx#stx-pair? _tl9077190827_)
                                              (let ((_e9077290830_
                                                     (gx#syntax-e
                                                      _tl9077190827_)))
                                                (let ((_hd9077390833_
                                                       (##car _e9077290830_))
                                                      (_tl9077490835_
                                                       (##cdr _e9077290830_)))
                                                  (let* ((_dphi90838_
                                                          _hd9077390833_)
                                                         (_body90840_
                                                          _tl9077490835_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90838_)
                                                        (let ((_rbody90843_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90731_ _body90840_ '()))
                        _current-phi90728_
                        (fx+ (gx#stx-e _dphi90838_) (_current-phi90728_)))))
                  (_K90731_ _rest90764_ (foldr1 cons _r90765_ _rbody90843_)))
                (_E9076890818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9076890818_))
                                          (_E9076890818_))))
                                  (_E9076890818_)))))
                      (_E9076790845_)))))
          (let* ((_e9073390740_ _stx90725_)
                 (_E9073590744_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9073390740_)))
                 (_E9073490759_
                  (lambda ()
                    (if (gx#stx-pair? _e9073390740_)
                        (let ((_e9073690748_ (gx#syntax-e _e9073390740_)))
                          (let ((_hd9073790751_ (##car _e9073690748_))
                                (_tl9073890753_ (##cdr _e9073690748_)))
                            (let ((_body90756_ _tl9073890753_))
                              (if '#t
                                  (if (_current-phi90728_)
                                      (_K90731_ _body90756_ '())
                                      (call-with-parameters
                                       (lambda () (_K90731_ _body90756_ '()))
                                       _current-phi90728_
                                       (gx#current-expander-phi)))
                                  (_E9073590744_)))))
                        (_E9073590744_)))))
            (_E9073490759_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx90392_ _internal-expand?90393_)
        (letrec ((_expand190395_
                  (lambda (_hd90705_ _K90706_ _rest90707_ _r90708_)
                    (if (gx#core-bound-module? _hd90705_)
                        (_import190396_
                         (gx#syntax-local-e__0 _hd90705_)
                         _K90706_
                         _rest90707_
                         _r90708_)
                        (if (gx#core-library-module-path? _hd90705_)
                            (_import190396_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90705_))
                             _K90706_
                             _rest90707_
                             _r90708_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90705_)
                                (_import190396_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90705_))
                                 _K90706_
                                 _rest90707_
                                 _r90708_)
                                (let ((_e90710_ (gx#stx-e _hd90705_)))
                                  (if (pair? _e90710_)
                                      (let ((_$e90712_
                                             (gx#stx-e (car _e90710_))))
                                        (if (eq? 'spec: _$e90712_)
                                            (_import-spec90399_
                                             _hd90705_
                                             _K90706_
                                             _rest90707_
                                             _r90708_)
                                            (if (eq? 'in: _$e90712_)
                                                (_import-submodule90397_
                                                 _hd90705_
                                                 _K90706_
                                                 _rest90707_
                                                 _r90708_)
                                                (if (eq? 'runtime: _$e90712_)
                                                    (_import-runtime90398_
                                                     _hd90705_
                                                     _K90706_
                                                     _rest90707_
                                                     _r90708_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx90392_
                                                     _hd90705_)))))
                                      (if (string? _e90710_)
                                          (_import190396_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90705_
                                             (gx#stx-source _stx90392_)))
                                           _K90706_
                                           _rest90707_
                                           _r90708_)
                                          (if (##structure-instance-of?
                                               _e90710_
                                               'gx#module-context::t)
                                              (_K90706_
                                               _rest90707_
                                               (cons _e90710_ _r90708_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx90392_
                                               _hd90705_))))))))))
                 (_import190396_
                  (lambda (_ctx90694_ _K90695_ _rest90696_ _r90697_)
                    (let ((_dphi90699_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90695_
                       _rest90696_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90694_
                              _dphi90699_
                              (map (lambda (_g9070090702_)
                                     (gx#core-module-export->import__%
                                      _g9070090702_
                                      '#f
                                      _dphi90699_))
                                   (##unchecked-structure-ref
                                    _ctx90694_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90697_)))))
                 (_import-submodule90397_
                  (lambda (_hd90661_ _K90662_ _rest90663_ _r90664_)
                    (let* ((_e9066590672_ _hd90661_)
                           (_E9066790676_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9066590672_)))
                           (_E9066690690_
                            (lambda ()
                              (if (gx#stx-pair? _e9066590672_)
                                  (let ((_e9066890680_
                                         (gx#syntax-e _e9066590672_)))
                                    (let ((_hd9066990683_
                                           (##car _e9066890680_))
                                          (_tl9067090685_
                                           (##cdr _e9066890680_)))
                                      (let ((_spath90688_ _tl9067090685_))
                                        (if '#t
                                            (_import190396_
                                             (_import-spec-source90400_
                                              _spath90688_)
                                             _K90662_
                                             _rest90663_
                                             _r90664_)
                                            (_E9066790676_)))))
                                  (_E9066790676_)))))
                      (_E9066690690_))))
                 (_import-runtime90398_
                  (lambda (_hd90628_ _K90629_ _rest90630_ _r90631_)
                    (let* ((_e9063290639_ _hd90628_)
                           (_E9063490643_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9063290639_)))
                           (_E9063390657_
                            (lambda ()
                              (if (gx#stx-pair? _e9063290639_)
                                  (let ((_e9063590647_
                                         (gx#syntax-e _e9063290639_)))
                                    (let ((_hd9063690650_
                                           (##car _e9063590647_))
                                          (_tl9063790652_
                                           (##cdr _e9063590647_)))
                                      (let ((_spath90655_ _tl9063790652_))
                                        (if '#t
                                            (_K90629_
                                             _rest90630_
                                             (cons (_import-spec-source90400_
                                                    _spath90655_)
                                                   _r90631_))
                                            (_E9063490643_)))))
                                  (_E9063490643_)))))
                      (_E9063390657_))))
                 (_import-spec90399_
                  (lambda (_hd90467_ _K90468_ _rest90469_ _r90470_)
                    (let* ((_e9047190488_ _hd90467_)
                           (_E9048090492_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9047190488_)))
                           (_E9047390602_
                            (lambda ()
                              (if (gx#stx-pair? _e9047190488_)
                                  (let ((_e9048190496_
                                         (gx#syntax-e _e9047190488_)))
                                    (let ((_hd9048290499_
                                           (##car _e9048190496_))
                                          (_tl9048390501_
                                           (##cdr _e9048190496_)))
                                      (if (gx#stx-pair? _tl9048390501_)
                                          (let ((_e9048490504_
                                                 (gx#syntax-e _tl9048390501_)))
                                            (let ((_hd9048590507_
                                                   (##car _e9048490504_))
                                                  (_tl9048690509_
                                                   (##cdr _e9048490504_)))
                                              (let* ((_path90512_
                                                      _hd9048590507_)
                                                     (_specs90514_
                                                      _tl9048690509_))
                                                (if '#t
                                                    (let ((_src-ctx90516_
                                                           (_import-spec-source90400_
                                                            _path90512_))
                                                          (_exports90517_
                                                           (make-hash-table))
                                                          (_specs90518_
                                                           (gx#syntax->list
                                                            _specs90514_)))
                                                      (for-each
                                                       (lambda (_out90520_)
                                                         (hash-put!
                                                          _exports90517_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90520_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90520_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90520_))
               (##unchecked-structure-ref
                _src-ctx90516_
                '9
                gx#module-context::t
                '#f))
              (_K90468_
               _rest90469_
               (foldl1 (lambda (_spec90522_ _r90523_)
                         (let* ((_e9052490540_ _spec90522_)
                                (_E9052690544_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9052490540_)))
                                (_E9052590598_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9052490540_)
                                       (let ((_e9052790548_
                                              (gx#syntax-e _e9052490540_)))
                                         (let ((_hd9052890551_
                                                (##car _e9052790548_))
                                               (_tl9052990553_
                                                (##cdr _e9052790548_)))
                                           (let ((_phi90556_ _hd9052890551_))
                                             (if (gx#stx-pair? _tl9052990553_)
                                                 (let ((_e9053090558_
                                                        (gx#syntax-e
                                                         _tl9052990553_)))
                                                   (let ((_hd9053190561_
                                                          (##car _e9053090558_))
                                                         (_tl9053290563_
                                                          (##cdr _e9053090558_)))
                                                     (let ((_name90566_
                                                            _hd9053190561_))
                                                       (if (gx#stx-pair?
                                                            _tl9053290563_)
                                                           (let ((_e9053390568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9053290563_)))
                     (let ((_hd9053490571_ (##car _e9053390568_))
                           (_tl9053590573_ (##cdr _e9053390568_)))
                       (let ((_src-phi90576_ _hd9053490571_))
                         (if (gx#stx-pair? _tl9053590573_)
                             (let ((_e9053690578_
                                    (gx#syntax-e _tl9053590573_)))
                               (let ((_hd9053790581_ (##car _e9053690578_))
                                     (_tl9053890583_ (##cdr _e9053690578_)))
                                 (let ((_src-name90586_ _hd9053790581_))
                                   (if (gx#stx-null? _tl9053890583_)
                                       (if (and (gx#stx-fixnum? _src-phi90576_)
                                                (gx#identifier?
                                                 _src-name90586_)
                                                (gx#stx-fixnum? _phi90556_)
                                                (gx#identifier? _name90566_))
                                           (let ((_src-phi90588_
                                                  (gx#stx-e _src-phi90576_))
                                                 (_src-name90589_
                                                  (gx#core-identifier-key
                                                   _src-name90586_))
                                                 (_phi90590_
                                                  (gx#stx-e _phi90556_))
                                                 (_name90591_
                                                  (gx#core-identifier-key
                                                   _name90566_)))
                                             (let ((_$e90593_
                                                    (hash-get
                                                     _exports90517_
                                                     (cons _src-phi90588_
                                                           _src-name90589_))))
                                               (if _$e90593_
                                                   ((lambda (_out90596_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90596_
                                                             _name90591_
                                                             (fx- _phi90590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90588_))
                    _r90523_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90593_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx90392_
                                                    _hd90467_))))
                                           (_E9052690544_))
                                       (_E9052690544_)))))
                             (_E9052690544_)))))
                   (_E9052690544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9052690544_)))))
                                       (_E9052690544_)))))
                           (_E9052590598_)))
                       _r90470_
                       _specs90518_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9048090492_)))))
                                          (_E9048090492_))))
                                  (_E9048090492_))))
                           (_E9047290624_
                            (lambda ()
                              (if (gx#stx-pair? _e9047190488_)
                                  (let ((_e9047490606_
                                         (gx#syntax-e _e9047190488_)))
                                    (let ((_hd9047590609_
                                           (##car _e9047490606_))
                                          (_tl9047690611_
                                           (##cdr _e9047490606_)))
                                      (if (gx#stx-pair? _tl9047690611_)
                                          (let ((_e9047790614_
                                                 (gx#syntax-e _tl9047690611_)))
                                            (let ((_hd9047890617_
                                                   (##car _e9047790614_))
                                                  (_tl9047990619_
                                                   (##cdr _e9047790614_)))
                                              (let ((_path90622_
                                                     _hd9047890617_))
                                                (if (gx#stx-null?
                                                     _tl9047990619_)
                                                    (if '#t
                                                        (_K90468_
                                                         _rest90469_
                                                         (cons (_import-spec-source90400_
                                                                _path90622_)
                                                               _r90470_))
                                                        (_E9047390602_))
                                                    (_E9047390602_)))))
                                          (_E9047390602_))))
                                  (_E9047390602_)))))
                      (_E9047290624_))))
                 (_import-spec-source90400_
                  (lambda (_spath90465_)
                    (gx#core-import-nested-module _spath90465_ _stx90392_)))
                 (_import!90401_
                  (lambda (_rbody90414_)
                    (letrec* ((_current-ctx90416_
                               (gx#current-expander-context))
                              (_deps90417_ (make-hash-table-eq))
                              (_bind!90418_
                               (lambda (_hd90463_)
                                 (gx#core-bind-import!__1
                                  _hd90463_
                                  _current-ctx90416_))))
                      (let _lp90420_ ((_rest90422_ _rbody90414_)
                                      (_body90423_ '()))
                        (let* ((_rest9042490432_ _rest90422_)
                               (_else9042690442_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx90416_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx90416_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx90416_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body90423_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx90440_ _g93270_)
                                     (gx#eval-module _ctx90440_))
                                   _deps90417_)
                                  _body90423_))
                               (_K9042890451_
                                (lambda (_rest90445_ _hd90446_)
                                  (if (##structure-direct-instance-of?
                                       _hd90446_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!90418_ _hd90446_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd90446_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd90446_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps90417_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd90446_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd90446_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!90418_
                                             (##unchecked-structure-ref
                                              _hd90446_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd90446_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps90417_
                                                 (##unchecked-structure-ref
                                                  _hd90446_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e90448_
                                                 (##structure-instance-of?
                                                  _hd90446_
                                                  'gx#module-context::t)))
                                            (if _$e90448_
                                                _$e90448_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx90392_
                                                 _hd90446_)))))
                                  (_lp90420_
                                   _rest90445_
                                   (cons _hd90446_ _body90423_)))))
                          (if (##pair? _rest9042490432_)
                              (let ((_hd9042990454_ (##car _rest9042490432_))
                                    (_tl9043090456_ (##cdr _rest9042490432_)))
                                (let* ((_hd90459_ _hd9042990454_)
                                       (_rest90461_ _tl9043090456_))
                                  (_K9042890451_ _rest90461_ _hd90459_)))
                              (_else9042690442_)))))))
                 (_expanded-import?90402_
                  (lambda (_e90406_)
                    (let ((_$e90408_
                           (##structure-direct-instance-of?
                            _e90406_
                            'gx#import-set::t)))
                      (if _$e90408_
                          _$e90408_
                          (let ((_$e90411_
                                 (##structure-direct-instance-of?
                                  _e90406_
                                  'gx#module-import::t)))
                            (if _$e90411_
                                _$e90411_
                                (##structure-instance-of?
                                 _e90406_
                                 'gx#module-context::t))))))))
          (let ((_rbody90404_
                 (gx#core-expand-import/export
                  _stx90392_
                  _expanded-import?90402_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand190395_)))
            (if _internal-expand?90393_
                (reverse _rbody90404_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!90401_ _rbody90404_))
                 (gx#stx-source _stx90392_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90718_)
        (let ((_internal-expand?90720_ '#f))
          (gx#core-expand-import%__% _stx90718_ _internal-expand?90720_))))
    (define gx#core-expand-import%
      (lambda _g93272_
        (let ((_g93271_ (##length _g93272_)))
          (cond ((##fx= _g93271_ 1)
                 (apply (lambda (_stx90718_)
                          (gx#core-expand-import%__0 _stx90718_))
                        _g93272_))
                ((##fx= _g93271_ 2)
                 (apply (lambda (_stx90722_ _internal-expand?90723_)
                          (gx#core-expand-import%__%
                           _stx90722_
                           _internal-expand?90723_))
                        _g93272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g93272_))))))
    (define gx#core-import-nested-module
      (lambda (_spath90319_ _where90320_)
        (let* ((_e9032190328_ _spath90319_)
               (_E9032390332_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9032190328_)))
               (_E9032290387_
                (lambda ()
                  (if (gx#stx-pair? _e9032190328_)
                      (let ((_e9032490336_ (gx#syntax-e _e9032190328_)))
                        (let ((_hd9032590339_ (##car _e9032490336_))
                              (_tl9032690341_ (##cdr _e9032490336_)))
                          (let* ((_origin90344_ _hd9032590339_)
                                 (_sub90346_ _tl9032690341_))
                            (if '#t
                                (let ((_origin-ctx90348_
                                       (if (gx#stx-false? _origin90344_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin90344_))))
                                  (let _lp90350_ ((_rest90352_ _sub90346_)
                                                  (_ctx90353_
                                                   _origin-ctx90348_))
                                    (let* ((_e9035490361_ _rest90352_)
                                           (_E9035690365_
                                            (lambda () _ctx90353_))
                                           (_E9035590383_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9035490361_)
                                                  (let ((_e9035790369_
                                                         (gx#syntax-e
                                                          _e9035490361_)))
                                                    (let ((_hd9035890372_
                                                           (##car _e9035790369_))
                                                          (_tl9035990374_
                                                           (##cdr _e9035790369_)))
                                                      (let* ((_id90377_
                                                              _hd9035890372_)
                                                             (_rest90379_
                                                              _tl9035990374_))
                                                        (if '#t
                                                            (let ((_bind90381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id90377_ '0 _ctx90353_)))
                      (if (and (##structure-direct-instance-of?
                                _bind90381_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind90381_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where90320_
                           _spath90319_
                           _id90377_))
                      (_lp90350_
                       _rest90379_
                       (##unchecked-structure-ref
                        _bind90381_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9035690365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9035690365_)))))
                                      (_E9035590383_))))
                                (_E9032390332_)))))
                      (_E9032390332_)))))
          (_E9032290387_))))
    (define gx#core-expand-import-source
      (lambda (_hd90317_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd90317_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89825_ _internal-expand?89826_)
        (letrec* ((_make-export__9320193202_
                   (lambda (_bind90265_ _phi90266_ _ctx90267_ _name90268_)
                     (let* ((_key90270_
                             (##unchecked-structure-ref
                              _bind90265_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key90272_
                             (if _name90268_
                                 (gx#core-identifier-key _name90268_)
                                 _key90270_)))
                       (##structure
                        gx#module-export::t
                        _ctx90267_
                        _key90270_
                        _phi90266_
                        _export-key90272_
                        (let ((_$e90275_
                               (##structure-instance-of?
                                _bind90265_
                                'gx#extern-binding::t)))
                          (if _$e90275_
                              _$e90275_
                              (##structure-direct-instance-of?
                               _bind90265_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9320393206_
                   (lambda (_bind90281_)
                     (let* ((_phi90283_ (gx#current-export-expander-phi))
                            (_ctx90285_ (gx#current-expander-context))
                            (_name90287_ '#f))
                       (_make-export__9320193202_
                        _bind90281_
                        _phi90283_
                        _ctx90285_
                        _name90287_))))
                  (_make-export__1__9320493207_
                   (lambda (_bind90289_ _phi90290_)
                     (let* ((_ctx90292_ (gx#current-expander-context))
                            (_name90294_ '#f))
                       (_make-export__9320193202_
                        _bind90289_
                        _phi90290_
                        _ctx90292_
                        _name90294_))))
                  (_make-export__2__9320593208_
                   (lambda (_bind90296_ _phi90297_ _ctx90298_)
                     (let ((_name90300_ '#f))
                       (_make-export__9320193202_
                        _bind90296_
                        _phi90297_
                        _ctx90298_
                        _name90300_))))
                  (_make-export89828_
                   (lambda _g93274_
                     (let ((_g93273_ (##length _g93274_)))
                       (cond ((##fx= _g93273_ 1)
                              (apply (lambda (_bind90281_)
                                       (_make-export__0__9320393206_
                                        _bind90281_))
                                     _g93274_))
                             ((##fx= _g93273_ 2)
                              (apply (lambda (_bind90289_ _phi90290_)
                                       (_make-export__1__9320493207_
                                        _bind90289_
                                        _phi90290_))
                                     _g93274_))
                             ((##fx= _g93273_ 3)
                              (apply (lambda (_bind90296_
                                              _phi90297_
                                              _ctx90298_)
                                       (_make-export__2__9320593208_
                                        _bind90296_
                                        _phi90297_
                                        _ctx90298_))
                                     _g93274_))
                             ((##fx= _g93273_ 4)
                              (apply (lambda (_bind90302_
                                              _phi90303_
                                              _ctx90304_
                                              _name90305_)
                                       (_make-export__9320193202_
                                        _bind90302_
                                        _phi90303_
                                        _ctx90304_
                                        _name90305_))
                                     _g93274_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g93274_))))))
                  (_expand189829_
                   (lambda (_hd89978_ _K89979_ _rest89980_ _r89981_)
                     (let* ((_e8998290014_ _hd89978_)
                            (_E9000990018_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89825_
                                _hd89978_)))
                            (_E8999990097_
                             (lambda ()
                               (if (gx#stx-pair? _e8998290014_)
                                   (let ((_e9001090022_
                                          (gx#syntax-e _e8998290014_)))
                                     (let ((_hd9001190025_
                                            (##car _e9001090022_))
                                           (_tl9001290027_
                                            (##cdr _e9001090022_)))
                                       (if (eq? (gx#stx-e _hd9001190025_)
                                                'import:)
                                           (let ((_in90030_ _tl9001290027_))
                                             (if (gx#stx-list? _in90030_)
                                                 (let _lp90032_ ((_in-rest90034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90030_)
                         (_r90035_ _r89981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9003690043_
                                                           _in-rest90034_)
                                                          (_E9003890047_
                                                           (lambda ()
                                                             (_K89979_
                                                              _rest89980_
                                                              _r90035_)))
                                                          (_E9003790093_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9003690043_)
                         (let ((_e9003990051_ (gx#syntax-e _e9003690043_)))
                           (let ((_hd9004090054_ (##car _e9003990051_))
                                 (_tl9004190056_ (##cdr _e9003990051_)))
                             (let* ((_hd90059_ _hd9004090054_)
                                    (_in-rest90061_ _tl9004190056_))
                               (if '#t
                                   (let ((_src90091_
                                          (if (gx#core-bound-module? _hd90059_)
                                              (gx#syntax-local-e__0 _hd90059_)
                                              (if (gx#core-library-module-path?
                                                   _hd90059_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90059_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90059_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90059_))
                                                      (if (gx#stx-string?
                                                           _hd90059_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90059_
                                                            (gx#stx-source
                                                             _stx89825_)))
                                                          (let* ((_e9006290069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90059_)
                         (_E9006490073_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89825_
                             _hd90059_)))
                         (_E9006390087_
                          (lambda ()
                            (if (gx#stx-pair? _e9006290069_)
                                (let ((_e9006590077_
                                       (gx#syntax-e _e9006290069_)))
                                  (let ((_hd9006690080_ (##car _e9006590077_))
                                        (_tl9006790082_ (##cdr _e9006590077_)))
                                    (if (eq? (gx#stx-e _hd9006690080_) 'in:)
                                        (let ((_spath90085_ _tl9006790082_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath90085_
                                               _stx89825_)
                                              (_E9006490073_)))
                                        (_E9006490073_))))
                                (_E9006490073_)))))
                    (_E9006390087_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90032_
                                      _in-rest90061_
                                      (_export-imports89830_
                                       _src90091_
                                       _r90035_)))
                                   (_E9003890047_)))))
                         (_E9003890047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9003790093_)))
                                                 (_E9000990018_)))
                                           (_E9000990018_))))
                                   (_E9000990018_))))
                            (_E8998690136_
                             (lambda ()
                               (if (gx#stx-pair? _e8998290014_)
                                   (let ((_e9000090101_
                                          (gx#syntax-e _e8998290014_)))
                                     (let ((_hd9000190104_
                                            (##car _e9000090101_))
                                           (_tl9000290106_
                                            (##cdr _e9000090101_)))
                                       (if (eq? (gx#stx-e _hd9000190104_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9000290106_)
                                               (let ((_e9000390109_
                                                      (gx#syntax-e
                                                       _tl9000290106_)))
                                                 (let ((_hd9000490112_
                                                        (##car _e9000390109_))
                                                       (_tl9000590114_
                                                        (##cdr _e9000390109_)))
                                                   (let ((_id90117_
                                                          _hd9000490112_))
                                                     (if (gx#stx-pair?
                                                          _tl9000590114_)
                                                         (let ((_e9000690119_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9000590114_)))
                   (let ((_hd9000790122_ (##car _e9000690119_))
                         (_tl9000890124_ (##cdr _e9000690119_)))
                     (let ((_name90127_ _hd9000790122_))
                       (if (gx#stx-null? _tl9000890124_)
                           (if '#t
                               (let* ((_phi90129_
                                       (gx#current-export-expander-phi))
                                      (_$e90131_
                                       (gx#core-resolve-identifier__1
                                        _id90117_
                                        _phi90129_)))
                                 (if _$e90131_
                                     ((lambda (_bind90134_)
                                        (_K89979_
                                         _rest89980_
                                         (cons (_make-export__9320193202_
                                                _bind90134_
                                                _phi90129_
                                                (gx#current-expander-context)
                                                _name90127_)
                                               _r89981_)))
                                      _$e90131_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89825_
                                      _hd89978_
                                      _id90117_)))
                               (_E8999990097_))
                           (_E8999990097_)))))
                 (_E8999990097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8999990097_))
                                           (_E8999990097_))))
                                   (_E8999990097_))))
                            (_E8998590185_
                             (lambda ()
                               (if (gx#stx-pair? _e8998290014_)
                                   (let ((_e8998790140_
                                          (gx#syntax-e _e8998290014_)))
                                     (let ((_hd8998890143_
                                            (##car _e8998790140_))
                                           (_tl8998990145_
                                            (##cdr _e8998790140_)))
                                       (if (eq? (gx#stx-e _hd8998890143_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8998990145_)
                                               (let ((_e8999090148_
                                                      (gx#syntax-e
                                                       _tl8998990145_)))
                                                 (let ((_hd8999190151_
                                                        (##car _e8999090148_))
                                                       (_tl8999290153_
                                                        (##cdr _e8999090148_)))
                                                   (let ((_phi90156_
                                                          _hd8999190151_))
                                                     (if (gx#stx-pair?
                                                          _tl8999290153_)
                                                         (let ((_e8999390158_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8999290153_)))
                   (let ((_hd8999490161_ (##car _e8999390158_))
                         (_tl8999590163_ (##cdr _e8999390158_)))
                     (let ((_id90166_ _hd8999490161_))
                       (if (gx#stx-pair? _tl8999590163_)
                           (let ((_e8999690168_ (gx#syntax-e _tl8999590163_)))
                             (let ((_hd8999790171_ (##car _e8999690168_))
                                   (_tl8999890173_ (##cdr _e8999690168_)))
                               (let ((_name90176_ _hd8999790171_))
                                 (if (gx#stx-null? _tl8999890173_)
                                     (if (and (gx#stx-fixnum? _phi90156_)
                                              (gx#identifier? _id90166_)
                                              (gx#identifier? _name90176_))
                                         (let* ((_phi90178_
                                                 (gx#stx-e _phi90156_))
                                                (_$e90180_
                                                 (gx#core-resolve-identifier__1
                                                  _id90166_
                                                  _phi90178_)))
                                           (if _$e90180_
                                               ((lambda (_bind90183_)
                                                  (_K89979_
                                                   _rest89980_
                                                   (cons (_make-export__9320193202_
                                                          _bind90183_
                                                          _phi90178_
                                                          (gx#current-expander-context)
                                                          _name90176_)
                                                         _r89981_)))
                                                _$e90180_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89825_
                                                _hd89978_
                                                _id90166_)))
                                         (_E8998690136_))
                                     (_E8998690136_)))))
                           (_E8998690136_)))))
                 (_E8998690136_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8998690136_))
                                           (_E8998690136_))))
                                   (_E8998690136_))))
                            (_E8998490196_
                             (lambda ()
                               (let ((_id90189_ _e8998290014_))
                                 (if (gx#identifier? _id90189_)
                                     (let ((_$e90191_
                                            (gx#core-resolve-identifier__1
                                             _id90189_
                                             (gx#current-export-expander-phi))))
                                       (if _$e90191_
                                           ((lambda (_bind90194_)
                                              (_K89979_
                                               _rest89980_
                                               (cons (_make-export__0__9320393206_
                                                      _bind90194_)
                                                     _r89981_)))
                                            _$e90191_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89825_
                                            _hd89978_)))
                                     (_E8998590185_)))))
                            (_E8998390260_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8998290014_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx90200_
                                               (gx#current-expander-context))
                                              (_current-phi90202_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx90204_
                                               (gx#core-context-shift
                                                _current-ctx90200_
                                                _current-phi90202_))
                                              (_phi-bind90206_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx90204_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp90209_ ((_bind-rest90211_
                                                          _phi-bind90206_)
                                                         (_set90212_ '()))
                                           (let* ((_bind-rest9021390223_
                                                   _bind-rest90211_)
                                                  (_else9021590231_
                                                   (lambda ()
                                                     (_K89979_
                                                      _rest89980_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi90202_
                                                             _set90212_)
                                                            _r89981_))))
                                                  (_K9021790241_
                                                   (lambda (_bind-rest90234_
                                                            _bind90235_
                                                            _key90236_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind90235_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind90235_))
                                                         (_lp90209_
                                                          _bind-rest90234_
                                                          _set90212_)
                                                         (_lp90209_
                                                          _bind-rest90234_
                                                          (cons (_make-export__2__9320593208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind90235_
                         _current-phi90202_
                         _current-ctx90200_)
                        _set90212_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9021390223_)
                                                 (let ((_hd9021890244_
                                                        (##car _bind-rest9021390223_))
                                                       (_tl9021990246_
                                                        (##cdr _bind-rest9021390223_)))
                                                   (if (##pair? _hd9021890244_)
                                                       (let ((_hd9022090249_
                                                              (##car _hd9021890244_))
                                                             (_tl9022190251_
                                                              (##cdr _hd9021890244_)))
                                                         (let* ((_key90254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9022090249_)
                        (_bind90256_ _tl9022190251_)
                        (_bind-rest90258_ _tl9021990246_))
                   (_K9021790241_ _bind-rest90258_ _bind90256_ _key90254_)))
               (_else9021590231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9021590231_)))))
                                       (_E8998490196_))
                                   (_E8998490196_)))))
                       (_E8998390260_))))
                  (_export-imports89830_
                   (lambda (_src89854_ _r89855_)
                     (letrec* ((_current-ctx89857_
                                (gx#current-expander-context))
                               (_current-phi89858_
                                (gx#current-export-expander-phi))
                               (_import->export89859_
                                (lambda (_in89940_)
                                  (let* ((_in8994189949_ _in89940_)
                                         (_E8994389953_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8994189949_)))
                                         (_K8994489960_
                                          (lambda (_phi89956_
                                                   _key89957_
                                                   _out89958_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89857_
                                             _key89957_
                                             _phi89956_
                                             _key89957_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8994189949_
                                         'gx#module-import::t)
                                        (let* ((_e8994589963_
                                                (##unchecked-structure-ref
                                                 _in8994189949_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89966_ _e8994589963_)
                                               (_e8994689968_
                                                (##unchecked-structure-ref
                                                 _in8994189949_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89971_ _e8994689968_)
                                               (_e8994789973_
                                                (##unchecked-structure-ref
                                                 _in8994189949_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89976_ _e8994789973_))
                                          (_K8994489960_
                                           _phi89976_
                                           _key89971_
                                           _out89966_))
                                        (_E8994389953_)))))
                               (_fold-e89860_
                                (lambda (_in89862_ _r89863_)
                                  (let* ((_in8986489878_ _in89862_)
                                         (_else8986789886_
                                          (lambda () _r89863_)))
                                    (let ((_K8987389922_
                                           (lambda (_phi89918_
                                                    _key89919_
                                                    _out89920_)
                                             (if (and (fx= _phi89918_
                                                           _current-phi89858_)
                                                      (eq? _src89854_
                                                           (##unchecked-structure-ref
                                                            _out89920_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89859_
                                                        _in89862_)
                                                       _r89863_)
                                                 _r89863_)))
                                          (_K8986989897_
                                           (lambda (_imports89890_
                                                    _phi89891_
                                                    _ctx89892_)
                                             (if (and (fx= _phi89891_
                                                           _current-phi89858_)
                                                      (eq? _src89854_
                                                           _ctx89892_))
                                                 (foldl1 (lambda (_in89894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89895_)
                   (cons (_import->export89859_ _in89894_) _r89895_))
                 _r89863_
                 _imports89890_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89863_))))
                                      (let ((_try-match8986689915_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8986489878_
                                                    'gx#import-set::t)
                                                   (let* ((_e8987089900_
                                                           (##unchecked-structure-ref
                                                            _in8986489878_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8987189905_
                                                           (##unchecked-structure-ref
                                                            _in8986489878_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8987289910_
                                                           (##unchecked-structure-ref
                                                            _in8986489878_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89903_
                                                            _e8987089900_)
                                                           (_phi89908_
                                                            _e8987189905_)
                                                           (_imports89913_
                                                            _e8987289910_))
                                                       (_K8986989897_
                                                        _imports89913_
                                                        _phi89908_
                                                        _ctx89903_)))
                                                   (_else8986789886_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8986489878_
                                             'gx#module-import::t)
                                            (let* ((_e8987489925_
                                                    (##unchecked-structure-ref
                                                     _in8986489878_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8987589930_
                                                    (##unchecked-structure-ref
                                                     _in8986489878_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8987689935_
                                                    (##unchecked-structure-ref
                                                     _in8986489878_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89928_ _e8987489925_)
                                                    (_key89933_ _e8987589930_)
                                                    (_phi89938_ _e8987689935_))
                                                (_K8987389922_
                                                 _phi89938_
                                                 _key89933_
                                                 _out89928_)))
                                            (_try-match8986689915_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89854_
                              _current-phi89858_
                              (foldl1 _fold-e89860_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89857_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89855_))))
                  (_export!89831_
                   (lambda (_rbody89844_)
                     (letrec* ((_current-ctx89846_
                                (gx#current-expander-context))
                               (_fold-e89847_
                                (lambda (_out89851_ _r89852_)
                                  (if (##structure-direct-instance-of?
                                       _out89851_
                                       'gx#module-export::t)
                                      (cons _out89851_ _r89852_)
                                      (if (##structure-direct-instance-of?
                                           _out89851_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89852_
                                                  (##unchecked-structure-ref
                                                   _out89851_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89852_)))))
                       (let ((_body89849_ (reverse _rbody89844_)))
                         (##unchecked-structure-set!
                          _current-ctx89846_
                          (foldl1 _fold-e89847_
                                  (##unchecked-structure-ref
                                   _current-ctx89846_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89849_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89849_))))
                  (_expanded-export?89832_
                   (lambda (_e89839_)
                     (let ((_$e89841_
                            (##structure-direct-instance-of?
                             _e89839_
                             'gx#module-export::t)))
                       (if _$e89841_
                           _$e89841_
                           (##structure-direct-instance-of?
                            _e89839_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89826_)
              (let ((_rbody89837_
                     (gx#core-expand-import/export
                      _stx89825_
                      _expanded-export?89832_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189829_)))
                (if _internal-expand?89826_
                    (reverse _rbody89837_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89831_ _rbody89837_))
                     (gx#stx-source _stx89825_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89825_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89825_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx90310_)
        (let ((_internal-expand?90312_ '#f))
          (gx#core-expand-export%__% _stx90310_ _internal-expand?90312_))))
    (define gx#core-expand-export%
      (lambda _g93276_
        (let ((_g93275_ (##length _g93276_)))
          (cond ((##fx= _g93275_ 1)
                 (apply (lambda (_stx90310_)
                          (gx#core-expand-export%__0 _stx90310_))
                        _g93276_))
                ((##fx= _g93275_ 2)
                 (apply (lambda (_stx90314_ _internal-expand?90315_)
                          (gx#core-expand-export%__%
                           _stx90314_
                           _internal-expand?90315_))
                        _g93276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g93276_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89822_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89822_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89792_)
        (let* ((_e8979389800_ _stx89792_)
               (_E8979589804_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8979389800_)))
               (_E8979489818_
                (lambda ()
                  (if (gx#stx-pair? _e8979389800_)
                      (let ((_e8979689808_ (gx#syntax-e _e8979389800_)))
                        (let ((_hd8979789811_ (##car _e8979689808_))
                              (_tl8979889813_ (##cdr _e8979689808_)))
                          (let ((_body89816_ _tl8979889813_))
                            (if (gx#identifier-list? _body89816_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89816_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89816_))
                                   (gx#stx-source _stx89792_)))
                                (_E8979589804_)))))
                      (_E8979589804_)))))
          (_E8979489818_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89758_ _private?89759_ _phi89760_ _ctx89761_)
        (gx#core-bind-syntax!__%
         _id89758_
         ((if _private?89759_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89758_))
         _private?89759_
         _phi89760_
         _ctx89761_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89766_)
        (let* ((_private?89768_ '#f)
               (_phi89770_ (gx#current-expander-phi))
               (_ctx89772_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89766_
           _private?89768_
           _phi89770_
           _ctx89772_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89774_ _private?89775_)
        (let* ((_phi89777_ (gx#current-expander-phi))
               (_ctx89779_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89774_
           _private?89775_
           _phi89777_
           _ctx89779_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89781_ _private?89782_ _phi89783_)
        (let ((_ctx89785_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89781_
           _private?89782_
           _phi89783_
           _ctx89785_))))
    (define gx#core-bind-feature!
      (lambda _g93278_
        (let ((_g93277_ (##length _g93278_)))
          (cond ((##fx= _g93277_ 1)
                 (apply (lambda (_id89766_)
                          (gx#core-bind-feature!__0 _id89766_))
                        _g93278_))
                ((##fx= _g93277_ 2)
                 (apply (lambda (_id89774_ _private?89775_)
                          (gx#core-bind-feature!__1 _id89774_ _private?89775_))
                        _g93278_))
                ((##fx= _g93277_ 3)
                 (apply (lambda (_id89781_ _private?89782_ _phi89783_)
                          (gx#core-bind-feature!__2
                           _id89781_
                           _private?89782_
                           _phi89783_))
                        _g93278_))
                ((##fx= _g93277_ 4)
                 (apply (lambda (_id89787_
                                 _private?89788_
                                 _phi89789_
                                 _ctx89790_)
                          (gx#core-bind-feature!__%
                           _id89787_
                           _private?89788_
                           _phi89789_
                           _ctx89790_))
                        _g93278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g93278_))))))))
