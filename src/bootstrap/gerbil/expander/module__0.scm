(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709375798)
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
      (lambda _$args93195_
        (apply make-instance gx#module-import::t _$args93195_)))
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
      (lambda _$args93192_
        (apply make-instance gx#module-export::t _$args93192_)))
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
      (lambda _$args93189_
        (apply make-instance gx#import-set::t _$args93189_)))
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
      (lambda _$args93186_
        (apply make-instance gx#export-set::t _$args93186_)))
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
      (lambda _$args93183_
        (apply make-instance gx#import-expander::t _$args93183_)))
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
      (lambda _$args93180_
        (apply make-instance gx#export-expander::t _$args93180_)))
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
      (lambda _$args93177_
        (apply make-instance gx#import-export-expander::t _$args93177_)))
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
      (lambda (_path93174_ _fun93175_)
        (call-with-input-file
         (cons 'path: (cons _path93174_ gx#source-file-settings))
         _fun93175_)))
    (define gx#module-context:::init!
      (lambda (_self93168_ _id93169_ _super93170_ _ns93171_ _path93172_)
        (if (##fx< '11 (##structure-length _self93168_))
            (begin
              (##unchecked-structure-set!
               _self93168_
               _id93169_
               '1
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               (make-hash-table-eq)
               '2
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               _super93170_
               '3
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               '#f
               '4
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               '#f
               '5
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               _ns93171_
               '6
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               _path93172_
               '7
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               '()
               '8
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               '()
               '9
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               '#f
               '10
               (##structure-type _self93168_)
               '#f)
              (##unchecked-structure-set!
               _self93168_
               '#f
               '11
               (##structure-type _self93168_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93168_
                   '11
                   (##vector-length _self93168_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93012_ _ctx93013_ _root93014_)
        (let ((_super93022_
               (let ((_$e93016_ _root93014_))
                 (if _$e93016_
                     _$e93016_
                     (let ((_$e93019_ (gx#core-context-root__0)))
                       (if _$e93019_
                           _$e93019_
                           (let ((__obj93237
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor93238
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj93237
                                     ':init!)))
                               (if __constructor93238
                                   (__constructor93238 __obj93237)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj93237)))))))
          (if _ctx93013_
              (let ((_id93025_
                     (##structure-ref
                      _ctx93013_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93026_
                     (##structure-ref _ctx93013_ '7 gx#module-context::t '#f))
                    (_in93027_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93013_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93028_
                     (make-promise (lambda () (gx#eval-module _ctx93013_)))))
                (if (##fx< '8 (##structure-length _self93012_))
                    (begin
                      (##unchecked-structure-set!
                       _self93012_
                       _id93025_
                       '1
                       (##structure-type _self93012_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93012_
                       (make-hash-table-eq 'size: (length _in93027_))
                       '2
                       (##structure-type _self93012_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93012_
                       _super93022_
                       '3
                       (##structure-type _self93012_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93012_
                       '#f
                       '4
                       (##structure-type _self93012_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93012_
                       '#f
                       '5
                       (##structure-type _self93012_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93012_
                       _path93026_
                       '6
                       (##structure-type _self93012_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93012_
                       _in93027_
                       '7
                       (##structure-type _self93012_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93012_
                       _e93028_
                       '8
                       (##structure-type _self93012_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93012_
                           '8
                           (##vector-length _self93012_)))
                (for-each
                 (lambda (_g9302993031_)
                   (gx#core-bind-weak-import!__% _g9302993031_ _self93012_))
                 _in93027_))
              (if (##fx< '8 (##structure-length _self93012_))
                  (begin
                    (##unchecked-structure-set!
                     _self93012_
                     '#f
                     '1
                     (##structure-type _self93012_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93012_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93012_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93012_
                     _super93022_
                     '3
                     (##structure-type _self93012_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93012_
                     '#f
                     '4
                     (##structure-type _self93012_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93012_
                     '#f
                     '5
                     (##structure-type _self93012_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93012_
                     '#f
                     '6
                     (##structure-type _self93012_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93012_
                     '()
                     '7
                     (##structure-type _self93012_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93012_
                     '#f
                     '8
                     (##structure-type _self93012_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93012_
                         '8
                         (##vector-length _self93012_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93037_ _ctx93038_)
        (let ((_root93040_ '#f))
          (gx#prelude-context:::init!__% _self93037_ _ctx93038_ _root93040_))))
    (define gx#prelude-context:::init!
      (lambda _g93244_
        (let ((_g93243_ (##length _g93244_)))
          (cond ((##fx= _g93243_ 2)
                 (apply (lambda (_self93037_ _ctx93038_)
                          (gx#prelude-context:::init!__0
                           _self93037_
                           _ctx93038_))
                        _g93244_))
                ((##fx= _g93243_ 3)
                 (apply (lambda (_self93042_ _ctx93043_ _root93044_)
                          (gx#prelude-context:::init!__%
                           _self93042_
                           _ctx93043_
                           _root93044_))
                        _g93244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g93244_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92886_ _e92887_)
        (if (##fx< '3 (##structure-length _self92886_))
            (begin
              (##unchecked-structure-set!
               _self92886_
               _e92887_
               '1
               (##structure-type _self92886_)
               '#f)
              (##unchecked-structure-set!
               _self92886_
               (gx#current-expander-context)
               '2
               (##structure-type _self92886_)
               '#f)
              (##unchecked-structure-set!
               _self92886_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92886_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92886_
                   '3
                   (##vector-length _self92886_)))))
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
      (lambda (_g9251292515_ _g9251392517_)
        (gx#core-apply-user-expander__%
         _g9251292515_
         _g9251392517_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9238392386_ _g9238492388_)
        (gx#core-apply-user-expander__%
         _g9238392386_
         _g9238492388_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx92254_)
        (let* ((_path92256_
                (##structure-ref _ctx92254_ '7 gx#module-context::t '#f))
               (_path92258_
                (if (pair? _path92256_) (last _path92256_) _path92256_)))
          (if (string? _path92258_) _path92258_ '#f))))
    (define gx#import-module__%
      (lambda (_path92230_ _reload?92231_ _eval?92232_)
        (let ((_ctx92234_
               ((gx#current-expander-module-import)
                _path92230_
                _reload?92231_)))
          (if (and _ctx92234_ _eval?92232_)
              (gx#eval-module _ctx92234_)
              '#!void)
          _ctx92234_)))
    (define gx#import-module__0
      (lambda (_path92239_)
        (let* ((_reload?92241_ '#f) (_eval?92243_ '#f))
          (gx#import-module__% _path92239_ _reload?92241_ _eval?92243_))))
    (define gx#import-module__1
      (lambda (_path92245_ _reload?92246_)
        (let ((_eval?92248_ '#f))
          (gx#import-module__% _path92245_ _reload?92246_ _eval?92248_))))
    (define gx#import-module
      (lambda _g93246_
        (let ((_g93245_ (##length _g93246_)))
          (cond ((##fx= _g93245_ 1)
                 (apply (lambda (_path92239_)
                          (gx#import-module__0 _path92239_))
                        _g93246_))
                ((##fx= _g93245_ 2)
                 (apply (lambda (_path92245_ _reload?92246_)
                          (gx#import-module__1 _path92245_ _reload?92246_))
                        _g93246_))
                ((##fx= _g93245_ 3)
                 (apply (lambda (_path92250_ _reload?92251_ _eval?92252_)
                          (gx#import-module__%
                           _path92250_
                           _reload?92251_
                           _eval?92252_))
                        _g93246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g93246_))))))
    (define gx#eval-module
      (lambda (_mod92227_) ((gx#current-expander-module-eval) _mod92227_)))
    (define gx#core-eval-module
      (lambda (_obj92212_)
        (letrec ((_force-e92214_
                  (lambda (_getf92223_ _e92224_)
                    (call-with-parameters
                     (lambda () (force (_getf92223_ _e92224_)))
                     gx#current-expander-context
                     _e92224_
                     gx#current-expander-phi
                     '0))))
          (let _recur92216_ ((_e92218_ _obj92212_))
            (if (##structure-instance-of? _e92218_ 'gx#module-context::t)
                (begin
                  (let ((_$e92220_ (gx#core-context-prelude__% _e92218_)))
                    (if _$e92220_ (_recur92216_ _$e92220_) '#!void))
                  (_force-e92214_ gx#module-context-e _e92218_))
                (if (##structure-instance-of? _e92218_ 'gx#prelude-context::t)
                    (_force-e92214_ gx#prelude-context-e _e92218_)
                    (if (gx#stx-string? _e92218_)
                        (_recur92216_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e92218_)))
                        (if (gx#core-library-module-path? _e92218_)
                            (_recur92216_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e92218_)))
                            (error '"Cannot eval module" _obj92212_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx92195_)
        (let _lp92197_ ((_e92199_ _ctx92195_))
          (if (or (##structure-instance-of? _e92199_ 'gx#module-context::t)
                  (##structure-instance-of? _e92199_ 'gx#local-context::t))
              (_lp92197_
               (##unchecked-structure-ref _e92199_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e92199_ 'gx#prelude-context::t)
                  _e92199_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx92208_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx92208_))))
    (define gx#core-context-prelude
      (lambda _g93248_
        (let ((_g93247_ (##length _g93248_)))
          (cond ((##fx= _g93247_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g93248_))
                ((##fx= _g93247_ 1)
                 (apply (lambda (_ctx92210_)
                          (gx#core-context-prelude__% _ctx92210_))
                        _g93248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g93248_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx92185_)
        (let* ((_ht92187_ (gx#current-expander-module-registry))
               (_$e92189_ (hash-get _ht92187_ _ctx92185_)))
          (if _$e92189_
              (values _$e92189_)
              (let ((_pre92192_
                     (let ((__obj93239
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
                       (gx#prelude-context:::init! __obj93239 _ctx92185_)
                       __obj93239)))
                (hash-put! _ht92187_ _ctx92185_ _pre92192_)
                _pre92192_)))))
    (define gx#core-import-module__%
      (lambda (_rpath92066_ _reload?92067_)
        (letrec ((_import-source92069_
                  (lambda (_path92154_)
                    (if (member _path92154_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path92154_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g93249_ (gx#core-read-module _path92154_)))
                         (begin
                           (let ((_g93250_
                                  (if (##values? _g93249_)
                                      (##vector-length _g93249_)
                                      1)))
                             (if (not (##fx= _g93250_ 4))
                                 (error "Context expects 4 values" _g93250_)))
                           (let ((_pre92157_ (##vector-ref _g93249_ 0))
                                 (_id92158_ (##vector-ref _g93249_ 1))
                                 (_ns92159_ (##vector-ref _g93249_ 2))
                                 (_body92160_ (##vector-ref _g93249_ 3)))
                             (let* ((_prelude92165_
                                     (if (##structure-instance-of?
                                          _pre92157_
                                          'gx#prelude-context::t)
                                         _pre92157_
                                         (if (##structure-instance-of?
                                              _pre92157_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre92157_)
                                             (if (string? _pre92157_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre92157_))
                                                 (if (not _pre92157_)
                                                     (let ((_$e92162_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e92162_
                                                           _$e92162_
                                                           (let ((__obj93240
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
                     (gx#prelude-context:::init! __obj93240 '#f)
                     __obj93240)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath92066_
                                                            _pre92157_))))))
                                    (_ctx92167_
                                     (let ((__obj93241
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
                                        __obj93241
                                        _id92158_
                                        _prelude92165_
                                        _ns92159_
                                        _path92154_)
                                       __obj93241))
                                    (_body92169_
                                     (gx#core-expand-module-begin
                                      _body92160_
                                      _ctx92167_))
                                    (_body92171_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body92169_)
                                      _path92154_
                                      _ctx92167_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx92167_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body92171_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx92167_
                                _body92171_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path92154_
                                _ctx92167_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id92158_
                                _ctx92167_)
                               _ctx92167_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path92154_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule92070_
                  (lambda (_rpath92082_)
                    (let* ((_rpath9208392090_ _rpath92082_)
                           (_E9208592094_
                            (lambda ()
                              (error '"No clause matching" _rpath9208392090_)))
                           (_K9208692142_
                            (lambda (_refs92097_ _origin92098_)
                              (let ((_ctx92100_
                                     (if _origin92098_
                                         (gx#core-import-module__%
                                          _origin92098_
                                          _reload?92067_)
                                         (gx#current-expander-context))))
                                (let _lp92102_ ((_rest92104_ _refs92097_)
                                                (_ctx92105_ _ctx92100_))
                                  (let* ((_rest9210692114_ _rest92104_)
                                         (_else9210892122_
                                          (lambda () _ctx92105_))
                                         (_K9211092130_
                                          (lambda (_rest92125_ _id92126_)
                                            (let ((_bind92128_
                                                   (gx#resolve-identifier__%
                                                    _id92126_
                                                    '0
                                                    _ctx92105_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind92128_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind92128_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp92102_
                                                   _rest92125_
                                                   (##unchecked-structure-ref
                                                    _bind92128_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath92082_
                                                         _id92126_
                                                         _bind92128_))))))
                                    (if (##pair? _rest9210692114_)
                                        (let ((_hd9211192133_
                                               (##car _rest9210692114_))
                                              (_tl9211292135_
                                               (##cdr _rest9210692114_)))
                                          (let* ((_id92138_ _hd9211192133_)
                                                 (_rest92140_ _tl9211292135_))
                                            (_K9211092130_
                                             _rest92140_
                                             _id92138_)))
                                        (_else9210892122_))))))))
                      (if (##pair? _rpath9208392090_)
                          (let ((_hd9208792145_ (##car _rpath9208392090_))
                                (_tl9208892147_ (##cdr _rpath9208392090_)))
                            (let* ((_origin92150_ _hd9208792145_)
                                   (_refs92152_ _tl9208892147_))
                              (_K9208692142_ _refs92152_ _origin92150_)))
                          (_E9208592094_))))))
          (let ((_$e92072_
                 (if (not _reload?92067_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath92066_)
                     '#f)))
            (if _$e92072_
                (values _$e92072_)
                (if (list? _rpath92066_)
                    (_import-submodule92070_ _rpath92066_)
                    (if (gx#core-library-module-path? _rpath92066_)
                        (let ((_ctx92075_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath92066_)
                                _reload?92067_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath92066_
                           _ctx92075_)
                          _ctx92075_)
                        (let* ((_npath92077_ (path-normalize _rpath92066_))
                               (_$e92079_
                                (if (not _reload?92067_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath92077_)
                                    '#f)))
                          (if _$e92079_
                              (values _$e92079_)
                              (_import-source92069_ _npath92077_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath92178_)
        (let ((_reload?92180_ '#f))
          (gx#core-import-module__% _rpath92178_ _reload?92180_))))
    (define gx#core-import-module
      (lambda _g93252_
        (let ((_g93251_ (##length _g93252_)))
          (cond ((##fx= _g93251_ 1)
                 (apply (lambda (_rpath92178_)
                          (gx#core-import-module__0 _rpath92178_))
                        _g93252_))
                ((##fx= _g93251_ 2)
                 (apply (lambda (_rpath92182_ _reload?92183_)
                          (gx#core-import-module__%
                           _rpath92182_
                           _reload?92183_))
                        _g93252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g93252_))))))
    (define gx#core-read-module
      (lambda (_path92055_)
        (with-catch
         (lambda (_exn92057_)
           (if (and (datum-parsing-exception? _exn92057_)
                    (eq? (datum-parsing-exception-filepos _exn92057_) '0))
               (gx#core-read-module/lang _path92055_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path92055_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9205992061_)
                      (display-exception _exn92057_ _g9205992061_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path92055_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91918_)
        (let _lp91920_ ((_body91922_ (read-syntax-from-file _path91918_))
                        (_pre91923_ '#f)
                        (_ns91924_ '#f)
                        (_pkg91925_ '#f))
          (let* ((_e9192691950_ _body91922_)
                 (_E9194291972_
                  (lambda ()
                    (let ((_g93253_
                           (if _pkg91925_
                               (values _pre91923_ _ns91924_ _pkg91925_)
                               (gx#core-read-module-package
                                _path91918_
                                _pre91923_
                                _ns91924_))))
                      (begin
                        (let ((_g93254_
                               (if (##values? _g93253_)
                                   (##vector-length _g93253_)
                                   1)))
                          (if (not (##fx= _g93254_ 3))
                              (error "Context expects 3 values" _g93254_)))
                        (let ((_pre91954_ (##vector-ref _g93253_ 0))
                              (_ns91955_ (##vector-ref _g93253_ 1))
                              (_pkg91956_ (##vector-ref _g93253_ 2)))
                          (let* ((_prelude91958_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91954_)
                                      (gx#syntax-local-e__0 _pre91954_)
                                      (if (gx#core-library-module-path?
                                           _pre91954_)
                                          (gx#core-resolve-library-module-path
                                           _pre91954_)
                                          (if (gx#stx-string? _pre91954_)
                                              (gx#core-resolve-module-path__%
                                               _pre91954_
                                               _path91918_)
                                              (gx#stx-e _pre91954_)))))
                                 (_path-id91960_
                                  (gx#core-module-path->namespace _path91918_))
                                 (_pkg-id91962_
                                  (if _pkg91956_
                                      (string-append
                                       _pkg91956_
                                       '"/"
                                       _path-id91960_)
                                      _path-id91960_))
                                 (_module-id91964_
                                  (string->symbol _pkg-id91962_))
                                 (_module-ns91969_
                                  (if (eq? _ns91955_ '#!void)
                                      '#f
                                      (let ((_$e91966_ _ns91955_))
                                        (if _$e91966_
                                            _$e91966_
                                            _pkg-id91962_)))))
                            (values _prelude91958_
                                    _module-id91964_
                                    _module-ns91969_
                                    _body91922_)))))))
                 (_E9193592001_
                  (lambda ()
                    (if (gx#stx-pair? _e9192691950_)
                        (let ((_e9194391976_ (gx#syntax-e _e9192691950_)))
                          (let ((_hd9194491979_ (##car _e9194391976_))
                                (_tl9194591981_ (##cdr _e9194391976_)))
                            (if (eq? (gx#stx-e _hd9194491979_) 'package:)
                                (if (gx#stx-pair? _tl9194591981_)
                                    (let ((_e9194691984_
                                           (gx#syntax-e _tl9194591981_)))
                                      (let ((_hd9194791987_
                                             (##car _e9194691984_))
                                            (_tl9194891989_
                                             (##cdr _e9194691984_)))
                                        (let* ((_pkg91992_ _hd9194791987_)
                                               (_rest91994_ _tl9194891989_))
                                          (if '#t
                                              (let ((_pkg91999_
                                                     (if (gx#identifier?
                                                          _pkg91992_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91992_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91992_)
                         (gx#stx-false? _pkg91992_))
                     (gx#stx-e _pkg91992_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91920_
                                                 _rest91994_
                                                 _pre91923_
                                                 _ns91924_
                                                 _pkg91999_))
                                              (_E9194291972_)))))
                                    (_E9194291972_))
                                (_E9194291972_))))
                        (_E9194291972_))))
                 (_E9192892027_
                  (lambda ()
                    (if (gx#stx-pair? _e9192691950_)
                        (let ((_e9193692005_ (gx#syntax-e _e9192691950_)))
                          (let ((_hd9193792008_ (##car _e9193692005_))
                                (_tl9193892010_ (##cdr _e9193692005_)))
                            (if (eq? (gx#stx-e _hd9193792008_) 'namespace:)
                                (if (gx#stx-pair? _tl9193892010_)
                                    (let ((_e9193992013_
                                           (gx#syntax-e _tl9193892010_)))
                                      (let ((_hd9194092016_
                                             (##car _e9193992013_))
                                            (_tl9194192018_
                                             (##cdr _e9193992013_)))
                                        (let* ((_ns92021_ _hd9194092016_)
                                               (_rest92023_ _tl9194192018_))
                                          (if '#t
                                              (let ((_ns92025_
                                                     (if (gx#identifier?
                                                          _ns92021_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92021_))
                                                         (if (gx#stx-string?
                                                              _ns92021_)
                                                             (gx#stx-e
                                                              _ns92021_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92021_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91920_
                                                 _rest92023_
                                                 _pre91923_
                                                 _ns92025_
                                                 _pkg91925_))
                                              (_E9193592001_)))))
                                    (_E9193592001_))
                                (_E9193592001_))))
                        (_E9193592001_))))
                 (_E9192792051_
                  (lambda ()
                    (if (gx#stx-pair? _e9192691950_)
                        (let ((_e9192992031_ (gx#syntax-e _e9192691950_)))
                          (let ((_hd9193092034_ (##car _e9192992031_))
                                (_tl9193192036_ (##cdr _e9192992031_)))
                            (if (eq? (gx#stx-e _hd9193092034_) 'prelude:)
                                (if (gx#stx-pair? _tl9193192036_)
                                    (let ((_e9193292039_
                                           (gx#syntax-e _tl9193192036_)))
                                      (let ((_hd9193392042_
                                             (##car _e9193292039_))
                                            (_tl9193492044_
                                             (##cdr _e9193292039_)))
                                        (let* ((_prelude92047_ _hd9193392042_)
                                               (_rest92049_ _tl9193492044_))
                                          (if '#t
                                              (_lp91920_
                                               _rest92049_
                                               _prelude92047_
                                               _ns91924_
                                               _pkg91925_)
                                              (_E9192892027_)))))
                                    (_E9192892027_))
                                (_E9192892027_))))
                        (_E9192892027_)))))
            (_E9192792051_)))))
    (define gx#core-read-module/lang
      (lambda (_path91745_)
        (letrec ((_default-read-module-body91747_
                  (lambda (_inp91910_)
                    (let _lp91912_ ((_body91914_ '()))
                      (let ((_next91916_ (read-syntax _inp91910_)))
                        (if (eof-object? _next91916_)
                            (reverse _body91914_)
                            (_lp91912_ (cons _next91916_ _body91914_)))))))
                 (_read-body91748_
                  (lambda (_inp91829_
                           _pre91830_
                           _ns91831_
                           _pkg91832_
                           _args91833_)
                    (let ((_g93255_
                           (if _pkg91832_
                               (values _pre91830_ _ns91831_ _pkg91832_)
                               (gx#core-read-module-package
                                _path91745_
                                _pre91830_
                                _ns91831_))))
                      (begin
                        (let ((_g93256_
                               (if (##values? _g93255_)
                                   (##vector-length _g93255_)
                                   1)))
                          (if (not (##fx= _g93256_ 3))
                              (error "Context expects 3 values" _g93256_)))
                        (let ((_pre91835_ (##vector-ref _g93255_ 0))
                              (_ns91836_ (##vector-ref _g93255_ 1))
                              (_pkg91837_ (##vector-ref _g93255_ 2)))
                          (let* ((_prelude91839_
                                  (gx#import-module__0 _pre91835_))
                                 (_read-module-body91893_
                                  (let ((_$e91885_
                                         (find (lambda (_e9184091842_)
                                                 (let* ((_g9184491854_
                                                         _e9184091842_)
                                                        (_else9184691862_
                                                         (lambda () '#f))
                                                        (_K9184891866_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9184491854_
                                                        'gx#module-export::t)
                                                       (let* ((_e9184991869_
                                                               (##unchecked-structure-ref
                                                                _g9184491854_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9185091872_
                                                               (##unchecked-structure-ref
                                                                _g9184491854_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9185191875_
                                                               (##unchecked-structure-ref
                                                                _g9184491854_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9185191875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9185291878_
                            (##unchecked-structure-ref
                             _g9184491854_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9188091882_)
                              (eq? _g9188091882_ 'read-module-body))
                            _e9185291878_)
                           (_K9184891866_)
                           (_else9184691862_)))
                     (_else9184691862_)))
               (_else9184691862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91839_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91885_
                                        ((lambda (_xport91888_)
                                           (let ((_proc91891_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91888_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91891_)
                                                 _proc91891_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91745_
                                                  _pre91835_
                                                  _proc91891_))))
                                         _$e91885_)
                                        _default-read-module-body91747_)))
                                 (_path-id91895_
                                  (gx#core-module-path->namespace _path91745_))
                                 (_pkg-id91897_
                                  (if _pkg91837_
                                      (string-append
                                       _pkg91837_
                                       '"/"
                                       _path-id91895_)
                                      _path-id91895_))
                                 (_module-id91899_
                                  (string->symbol _pkg-id91897_))
                                 (_module-ns91904_
                                  (let ((_$e91901_ _ns91836_))
                                    (if _$e91901_ _$e91901_ _pkg-id91897_)))
                                 (_body91907_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91893_ _inp91829_))
                                   gx#current-module-reader-path
                                   _path91745_
                                   gx#current-module-reader-args
                                   _args91833_)))
                            (values _prelude91839_
                                    _module-id91899_
                                    _module-ns91904_
                                    _body91907_)))))))
                 (_string-e91749_
                  (lambda (_obj91826_ _what91827_)
                    (if (string? _obj91826_)
                        _obj91826_
                        (if (symbol? _obj91826_)
                            (symbol->string _obj91826_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91827_)
                             _path91745_
                             _obj91826_)))))
                 (_read-lang-args91750_
                  (lambda (_inp91781_ _args91782_)
                    (let* ((_args9178391791_ _args91782_)
                           (_else9178591799_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91745_)))
                           (_K9178791814_
                            (lambda (_args91802_ _prelude91803_)
                              (let* ((_pkg91805_
                                      (pgetq__0 'package: _args91802_))
                                     (_pkg91807_
                                      (if _pkg91805_
                                          (_string-e91749_
                                           _pkg91805_
                                           '"package")
                                          '#f))
                                     (_ns91809_
                                      (pgetq__0 'namespace: _args91802_))
                                     (_ns91811_
                                      (if _ns91809_
                                          (_string-e91749_
                                           _ns91809_
                                           '"namespace")
                                          '#f)))
                                (_read-body91748_
                                 _inp91781_
                                 _prelude91803_
                                 _ns91811_
                                 _pkg91807_
                                 _args91802_)))))
                      (if (##pair? _args9178391791_)
                          (let ((_hd9178891817_ (##car _args9178391791_))
                                (_tl9178991819_ (##cdr _args9178391791_)))
                            (let* ((_prelude91822_ _hd9178891817_)
                                   (_args91824_ _tl9178991819_))
                              (_K9178791814_ _args91824_ _prelude91822_)))
                          (_else9178591799_)))))
                 (_read-lang91751_
                  (lambda (_inp91756_)
                    (let* ((_head91758_ (read-line _inp91756_))
                           (_$e91760_ (string-index__0 _head91758_ '#\space)))
                      (if _$e91760_
                          ((lambda (_ix91763_)
                             (let ((_lang91765_
                                    (substring _head91758_ '0 _ix91763_)))
                               (if (equal? _lang91765_ '"#lang")
                                   (let* ((_rest91767_
                                           (substring
                                            _head91758_
                                            (fx+ _ix91763_ '1)
                                            (string-length _head91758_)))
                                          (_args91778_
                                           (with-catch
                                            (lambda (_g9176891770_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91745_
                                               _g9176891770_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91767_
                                               (lambda (_g9177391775_)
                                                 (read-all
                                                  _g9177391775_
                                                  read)))))))
                                     (_read-lang-args91750_
                                      _inp91756_
                                      _args91778_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91745_))))
                           _$e91760_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91745_)))))
                 (_read-e91752_
                  (lambda (_inp91754_)
                    (if (eq? (peek-char _inp91754_) '#\#)
                        (_read-lang91751_ _inp91754_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91745_)))))
          (gx#call-with-input-source-file _path91745_ _read-e91752_))))
    (define gx#core-read-module-package
      (lambda (_path91699_ _pre91700_ _ns91701_)
        (letrec ((_string-e91703_
                  (lambda (_e91743_)
                    (if (symbol? _e91743_)
                        (symbol->string _e91743_)
                        (if (string? _e91743_)
                            _e91743_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91743_))))))
          (let _lp91705_ ((_dir91707_ (path-directory _path91699_))
                          (_pkg-path91708_ '()))
            (let ((_gerbil.pkg91710_ (path-expand '"gerbil.pkg" _dir91707_)))
              (if (file-exists? _gerbil.pkg91710_)
                  (let ((_plist91712_
                         (gx#core-library-package-plist__% _dir91707_ '#t)))
                    (if (null? _plist91712_)
                        (let ((_pkg91714_
                               (if (not (null? _pkg-path91708_))
                                   (string-join _pkg-path91708_ '"/")
                                   '#f)))
                          (values _pre91700_ _ns91701_ _pkg91714_))
                        (if (list? _plist91712_)
                            (let* ((_root91716_
                                    (pgetq__0 'package: _plist91712_))
                                   (_pkg91720_
                                    (let ((_pkg-path91718_
                                           (if _root91716_
                                               (cons (_string-e91703_
                                                      _root91716_)
                                                     _pkg-path91708_)
                                               _pkg-path91708_)))
                                      (if (not (null? _pkg-path91718_))
                                          (string-join _pkg-path91718_ '"/")
                                          '#f)))
                                   (_ns91727_
                                    (let ((_ns91725_
                                           (let ((_$e91722_ _ns91701_))
                                             (if _$e91722_
                                                 _$e91722_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91712_)))))
                                      (if _ns91725_
                                          (_string-e91703_ _ns91725_)
                                          '#f)))
                                   (_pre91732_
                                    (let ((_$e91729_ _pre91700_))
                                      (if _$e91729_
                                          _$e91729_
                                          (pgetq__0 'prelude: _plist91712_)))))
                              (values _pre91732_ _ns91727_ _pkg91720_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91712_))))
                  (let ((_dir*91735_
                         (path-strip-trailing-directory-separator _dir91707_)))
                    (if (or (string-empty? _dir*91735_)
                            (equal? _dir91707_ _dir*91735_))
                        (values _pre91700_ _ns91701_ '#f)
                        (let ((_xpath91740_ (path-strip-directory _dir*91735_))
                              (_xdir91741_ (path-directory _dir*91735_)))
                          (_lp91705_
                           _xdir91741_
                           (cons _xpath91740_ _pkg-path91708_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91697_)
        (path-strip-extension (path-strip-directory _path91697_))))
    (define gx#core-module-path->id
      (lambda (_path91695_)
        (string->symbol (gx#core-module-path->namespace _path91695_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91674_ _rel91675_)
        (let* ((_path91677_ (gx#stx-e _stx-path91674_))
               (_path91679_
                (if (string-empty? (path-extension _path91677_))
                    (string-append _path91677_ '".ss")
                    _path91677_)))
          (gx#core-resolve-path__%
           _path91679_
           (let ((_$e91682_ (gx#stx-source _stx-path91674_)))
             (if _$e91682_ _$e91682_ _rel91675_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91688_)
        (let ((_rel91690_ '#f))
          (gx#core-resolve-module-path__% _stx-path91688_ _rel91690_))))
    (define gx#core-resolve-module-path
      (lambda _g93258_
        (let ((_g93257_ (##length _g93258_)))
          (cond ((##fx= _g93257_ 1)
                 (apply (lambda (_stx-path91688_)
                          (gx#core-resolve-module-path__0 _stx-path91688_))
                        _g93258_))
                ((##fx= _g93257_ 2)
                 (apply (lambda (_stx-path91692_ _rel91693_)
                          (gx#core-resolve-module-path__%
                           _stx-path91692_
                           _rel91693_))
                        _g93258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g93258_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91560_)
        (let* ((_spath91562_ (symbol->string (gx#stx-e _libpath91560_)))
               (_spath91564_
                (substring _spath91562_ '1 (string-length _spath91562_)))
               (_ext91566_ (path-extension _spath91564_))
               (_ssi91568_
                (if (string-empty? _ext91566_)
                    (string-append _spath91564_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91564_)
                     '".ssi")))
               (_srcs91572_
                (if (string-empty? _ext91566_)
                    (map (lambda (_ext91570_)
                           (string-append _spath91564_ _ext91570_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91564_ '()))))
          (let _lp91575_ ((_rest91577_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9157891587_ _rest91577_)
                   (_E9158191591_
                    (lambda ()
                      (error '"No clause matching" _rest9157891587_))))
              (let ((_K9158391661_
                     (lambda (_rest91602_ _dir91603_)
                       (letrec ((_resolve91605_
                                 (lambda (_ssi91617_ _srcs91618_)
                                   (let ((_compiled-path91620_
                                          (path-expand _ssi91617_ _dir91603_)))
                                     (if (file-exists? _compiled-path91620_)
                                         (path-normalize _compiled-path91620_)
                                         (let _lpr91622_ ((_rest-src91624_
                                                           _srcs91618_))
                                           (let* ((_rest-src9162591633_
                                                   _rest-src91624_)
                                                  (_else9162791641_
                                                   (lambda ()
                                                     (_lp91575_ _rest91602_)))
                                                  (_K9162991649_
                                                   (lambda (_rest-src91644_
                                                            _src91645_)
                                                     (let ((_src-path91647_
                                                            (path-expand
                                                             _src91645_
                                                             _dir91603_)))
                                                       (if (file-exists?
                                                            _src-path91647_)
                                                           (path-normalize
                                                            _src-path91647_)
                                                           (_lpr91622_
                                                            _rest-src91644_))))))
                                             (if (##pair? _rest-src9162591633_)
                                                 (let ((_hd9163091652_
                                                        (##car _rest-src9162591633_))
                                                       (_tl9163191654_
                                                        (##cdr _rest-src9162591633_)))
                                                   (let* ((_src91657_
                                                           _hd9163091652_)
                                                          (_rest-src91659_
                                                           _tl9163191654_))
                                                     (_K9162991649_
                                                      _rest-src91659_
                                                      _src91657_)))
                                                 (_else9162791641_)))))))))
                         (let ((_$e91607_
                                (gx#core-library-package-path-prefix
                                 _dir91603_)))
                           (if _$e91607_
                               ((lambda (_prefix91610_)
                                  (if (string-prefix?
                                       _prefix91610_
                                       _spath91564_)
                                      (let ((_ssi91614_
                                             (substring
                                              _ssi91568_
                                              (string-length _prefix91610_)
                                              (string-length _ssi91568_)))
                                            (_srcs91615_
                                             (map (lambda (_src91612_)
                                                    (substring
                                                     _src91612_
                                                     (string-length
                                                      _prefix91610_)
                                                     (string-length
                                                      _src91612_)))
                                                  _srcs91572_)))
                                        (_resolve91605_
                                         _ssi91614_
                                         _srcs91615_))
                                      (_lp91575_ _rest91602_)))
                                _$e91607_)
                               (_resolve91605_ _ssi91568_ _srcs91572_))))))
                    (_K9158291596_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91560_))))
                (let ((_try-match9158091599_
                       (lambda ()
                         (if (##null? _rest9157891587_)
                             (_K9158291596_)
                             (_E9158191591_)))))
                  (if (##pair? _rest9157891587_)
                      (let ((_tl9158591666_ (##cdr _rest9157891587_))
                            (_hd9158491664_ (##car _rest9157891587_)))
                        (let ((_dir91669_ _hd9158491664_)
                              (_rest91671_ _tl9158591666_))
                          (_K9158391661_ _rest91671_ _dir91669_)))
                      (_try-match9158091599_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91533_)
        (letrec ((_resolve91535_
                  (lambda (_path91552_ _base91553_)
                    (let ((_$e91555_ (string-rindex__0 _base91553_ '#\/)))
                      (if _$e91555_
                          ((lambda (_idx91558_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91553_ '0 _idx91558_)
                                '"/"
                                _path91552_))))
                           _$e91555_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91552_))))))))
          (let ((_spath91537_ (symbol->string (gx#stx-e _modpath91533_)))
                (_mod91538_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91538_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91533_))
            (let ((_mpath91540_
                   (symbol->string
                    (##structure-ref
                     _mod91538_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91542_ ((_spath91544_ _spath91537_)
                              (_mpath91545_ _mpath91540_))
                (if (string-prefix? '"../" _spath91544_)
                    (let ((_$e91547_ (string-rindex__0 _mpath91545_ '#\/)))
                      (if _$e91547_
                          ((lambda (_idx91550_)
                             (_lp91542_
                              (substring
                               _spath91544_
                               '3
                               (string-length _spath91544_))
                              (substring _mpath91545_ '0 _idx91550_)))
                           _$e91547_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91533_)))
                    (if (string-prefix? '"./" _spath91544_)
                        (_lp91542_
                         (substring
                          _spath91544_
                          '2
                          (string-length _spath91544_))
                         _mpath91545_)
                        (_resolve91535_ _spath91544_ _mpath91545_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91526_)
        (let ((_$e91528_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91526_))))
          (if _$e91528_
              ((lambda (_pkg91531_)
                 (string-append (symbol->string _pkg91531_) '"/"))
               _$e91528_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91498_ _exists?91499_)
        (let* ((_cache91501_ (gx#core-library-package-cache))
               (_$e91503_ (hash-get _cache91501_ _dir91498_)))
          (if _$e91503_
              (values _$e91503_)
              (let* ((_gerbil.pkg91506_ (path-expand '"gerbil.pkg" _dir91498_))
                     (_plist91513_
                      (if (or _exists?91499_ (file-exists? _gerbil.pkg91506_))
                          (let ((_e91511_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91506_
                                  read)))
                            (if (eof-object? _e91511_)
                                '()
                                (if (list? _e91511_)
                                    _e91511_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91506_
                                     _e91511_))))
                          '())))
                (hash-put! _cache91501_ _dir91498_ _plist91513_)
                _plist91513_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91519_)
        (let ((_exists?91521_ '#f))
          (gx#core-library-package-plist__% _dir91519_ _exists?91521_))))
    (define gx#core-library-package-plist
      (lambda _g93260_
        (let ((_g93259_ (##length _g93260_)))
          (cond ((##fx= _g93259_ 1)
                 (apply (lambda (_dir91519_)
                          (gx#core-library-package-plist__0 _dir91519_))
                        _g93260_))
                ((##fx= _g93259_ 2)
                 (apply (lambda (_dir91523_ _exists?91524_)
                          (gx#core-library-package-plist__%
                           _dir91523_
                           _exists?91524_))
                        _g93260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g93260_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91492_ (gx#current-expander-module-library-package-cache)))
          (if _$e91492_
              (values _$e91492_)
              (let ((_cache91495_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91495_)
                _cache91495_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91489_) (gx#core-special-module-path? _stx91489_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91487_) (gx#core-special-module-path? _stx91487_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91482_ _char91483_)
        (if (gx#identifier? _stx91482_)
            (if (interned-symbol? (gx#stx-e _stx91482_))
                (let ((_str91485_ (symbol->string (gx#stx-e _stx91482_))))
                  (if (fx> (string-length _str91485_) '1)
                      (eq? (string-ref _str91485_ '0) _char91483_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91476_)
        (gx#core-bound-identifier?__%
         _stx91476_
         (lambda (_g9147791479_)
           (gx#expander-binding?__% _g9147791479_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91470_)
        (gx#core-bound-identifier?__%
         _stx91470_
         (lambda (_g9147191473_)
           (gx#expander-binding?__% _g9147191473_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91457_)
        (letrec ((_module-prelude?91459_
                  (lambda (_e91465_)
                    (let ((_$e91467_
                           (##structure-instance-of?
                            _e91465_
                            'gx#module-context::t)))
                      (if _$e91467_
                          _$e91467_
                          (##structure-instance-of?
                           _e91465_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91457_
           (lambda (_g9146091462_)
             (gx#expander-binding?__%
              _g9146091462_
              _module-prelude?91459_))))))
    (define gx#core-bind-import!__%
      (lambda (_in91387_ _ctx91388_ _force-weak?91389_)
        (let* ((_in9139091399_ _in91387_)
               (_E9139291403_
                (lambda () (error '"No clause matching" _in9139091399_)))
               (_K9139391416_
                (lambda (_weak?91406_ _phi91407_ _key91408_ _source91409_)
                  (gx#core-bind!__%
                   _key91408_
                   (let ((_e91411_
                          (gx#core-resolve-module-export _source91409_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e91411_ '1 gx#binding::t '#f)
                      _key91408_
                      _phi91407_
                      _e91411_
                      (##unchecked-structure-ref
                       _source91409_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e91413_ _force-weak?91389_))
                        (if _$e91413_ _$e91413_ _weak?91406_))))
                   gx#core-context-rebind?
                   _phi91407_
                   _ctx91388_))))
          (if (##structure-direct-instance-of?
               _in9139091399_
               'gx#module-import::t)
              (let* ((_e9139491419_
                      (##unchecked-structure-ref
                       _in9139091399_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source91422_ _e9139491419_)
                     (_e9139591424_
                      (##unchecked-structure-ref
                       _in9139091399_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91427_ _e9139591424_)
                     (_e9139691429_
                      (##unchecked-structure-ref
                       _in9139091399_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91432_ _e9139691429_)
                     (_e9139791434_
                      (##unchecked-structure-ref
                       _in9139091399_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91437_ _e9139791434_))
                (_K9139391416_
                 _weak?91437_
                 _phi91432_
                 _key91427_
                 _source91422_))
              (_E9139291403_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91442_)
        (let* ((_ctx91444_ (gx#current-expander-context))
               (_force-weak?91446_ '#f))
          (gx#core-bind-import!__% _in91442_ _ctx91444_ _force-weak?91446_))))
    (define gx#core-bind-import!__1
      (lambda (_in91448_ _ctx91449_)
        (let ((_force-weak?91451_ '#f))
          (gx#core-bind-import!__% _in91448_ _ctx91449_ _force-weak?91451_))))
    (define gx#core-bind-import!
      (lambda _g93262_
        (let ((_g93261_ (##length _g93262_)))
          (cond ((##fx= _g93261_ 1)
                 (apply (lambda (_in91442_)
                          (gx#core-bind-import!__0 _in91442_))
                        _g93262_))
                ((##fx= _g93261_ 2)
                 (apply (lambda (_in91448_ _ctx91449_)
                          (gx#core-bind-import!__1 _in91448_ _ctx91449_))
                        _g93262_))
                ((##fx= _g93261_ 3)
                 (apply (lambda (_in91453_ _ctx91454_ _force-weak?91455_)
                          (gx#core-bind-import!__%
                           _in91453_
                           _ctx91454_
                           _force-weak?91455_))
                        _g93262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g93262_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in91373_ _ctx91374_)
        (gx#core-bind-import!__% _in91373_ _ctx91374_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in91379_)
        (let ((_ctx91381_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in91379_ _ctx91381_))))
    (define gx#core-bind-weak-import!
      (lambda _g93264_
        (let ((_g93263_ (##length _g93264_)))
          (cond ((##fx= _g93263_ 1)
                 (apply (lambda (_in91379_)
                          (gx#core-bind-weak-import!__0 _in91379_))
                        _g93264_))
                ((##fx= _g93263_ 2)
                 (apply (lambda (_in91383_ _ctx91384_)
                          (gx#core-bind-weak-import!__% _in91383_ _ctx91384_))
                        _g93264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g93264_))))))
    (define gx#core-resolve-module-export
      (lambda (_out91264_)
        (letrec ((_subst91266_
                  (lambda (_key91312_)
                    (let* ((_key9131391321_ _key91312_)
                           (_else9131591329_ (lambda () _key91312_))
                           (_K9131791360_
                            (lambda (_mark91332_ _id91333_)
                              (let* ((_mark9133491340_ _mark91332_)
                                     (_E9133691344_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9133491340_)))
                                     (_K9133791352_
                                      (lambda (_subst91347_)
                                        (let ((_$e91349_
                                               (if _subst91347_
                                                   (hash-get
                                                    _subst91347_
                                                    _id91333_)
                                                   '#f)))
                                          (if _$e91349_
                                              _$e91349_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key91312_))))))
                                (if (##structure-instance-of?
                                     _mark9133491340_
                                     'gx#expander-mark::t)
                                    (let* ((_e9133891355_
                                            (##unchecked-structure-ref
                                             _mark9133491340_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst91358_ _e9133891355_))
                                      (_K9133791352_ _subst91358_))
                                    (_E9133691344_))))))
                      (if (##pair? _key9131391321_)
                          (let ((_hd9131891363_ (##car _key9131391321_))
                                (_tl9131991365_ (##cdr _key9131391321_)))
                            (let* ((_id91368_ _hd9131891363_)
                                   (_mark91370_ _tl9131991365_))
                              (_K9131791360_ _mark91370_ _id91368_)))
                          (_else9131591329_))))))
          (let* ((_out9126791277_ _out91264_)
                 (_E9126991281_
                  (lambda () (error '"No clause matching" _out9126791277_)))
                 (_K9127091288_
                  (lambda (_phi91284_ _key91285_ _ctx91286_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx91286_ _phi91284_)
                     (_subst91266_ _key91285_)))))
            (if (##structure-direct-instance-of?
                 _out9126791277_
                 'gx#module-export::t)
                (let* ((_e9127191291_
                        (##unchecked-structure-ref
                         _out9126791277_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx91294_ _e9127191291_)
                       (_e9127291296_
                        (##unchecked-structure-ref
                         _out9126791277_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key91299_ _e9127291296_)
                       (_e9127391301_
                        (##unchecked-structure-ref
                         _out9126791277_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi91304_ _e9127391301_)
                       (_e9127491306_
                        (##unchecked-structure-ref
                         _out9126791277_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9127591309_
                        (##unchecked-structure-ref
                         _out9126791277_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9127091288_ _phi91304_ _key91299_ _ctx91294_))
                (_E9126991281_))))))
    (define gx#core-module-export->import__%
      (lambda (_out91189_ _rename91190_ _dphi91191_)
        (let* ((_out9119291202_ _out91189_)
               (_E9119491206_
                (lambda () (error '"No clause matching" _out9119291202_)))
               (_K9119591218_
                (lambda (_weak?91209_
                         _name91210_
                         _phi91211_
                         _key91212_
                         _ctx91213_)
                  (##structure
                   gx#module-import::t
                   _out91189_
                   (let ((_$e91215_ _rename91190_))
                     (if _$e91215_ _$e91215_ _name91210_))
                   (fx+ _phi91211_ _dphi91191_)
                   _weak?91209_))))
          (if (##structure-direct-instance-of?
               _out9119291202_
               'gx#module-export::t)
              (let* ((_e9119691221_
                      (##unchecked-structure-ref
                       _out9119291202_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx91224_ _e9119691221_)
                     (_e9119791226_
                      (##unchecked-structure-ref
                       _out9119291202_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key91229_ _e9119791226_)
                     (_e9119891231_
                      (##unchecked-structure-ref
                       _out9119291202_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi91234_ _e9119891231_)
                     (_e9119991236_
                      (##unchecked-structure-ref
                       _out9119291202_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name91239_ _e9119991236_)
                     (_e9120091241_
                      (##unchecked-structure-ref
                       _out9119291202_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?91244_ _e9120091241_))
                (_K9119591218_
                 _weak?91244_
                 _name91239_
                 _phi91234_
                 _key91229_
                 _ctx91224_))
              (_E9119491206_)))))
    (define gx#core-module-export->import__0
      (lambda (_out91249_)
        (let* ((_rename91251_ '#f) (_dphi91253_ '0))
          (gx#core-module-export->import__%
           _out91249_
           _rename91251_
           _dphi91253_))))
    (define gx#core-module-export->import__1
      (lambda (_out91255_ _rename91256_)
        (let ((_dphi91258_ '0))
          (gx#core-module-export->import__%
           _out91255_
           _rename91256_
           _dphi91258_))))
    (define gx#core-module-export->import
      (lambda _g93266_
        (let ((_g93265_ (##length _g93266_)))
          (cond ((##fx= _g93265_ 1)
                 (apply (lambda (_out91249_)
                          (gx#core-module-export->import__0 _out91249_))
                        _g93266_))
                ((##fx= _g93265_ 2)
                 (apply (lambda (_out91255_ _rename91256_)
                          (gx#core-module-export->import__1
                           _out91255_
                           _rename91256_))
                        _g93266_))
                ((##fx= _g93265_ 3)
                 (apply (lambda (_out91260_ _rename91261_ _dphi91262_)
                          (gx#core-module-export->import__%
                           _out91260_
                           _rename91261_
                           _dphi91262_))
                        _g93266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g93266_))))))
    (define gx#core-expand-module%
      (lambda (_stx91117_)
        (letrec ((_make-context91119_
                  (lambda (_id91170_)
                    (let* ((_super91172_ (gx#current-expander-context))
                           (_bind-id91174_ (gx#stx-e _id91170_))
                           (_mod-id91176_
                            (if (##structure-instance-of?
                                 _super91172_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super91172_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id91174_)
                                _bind-id91174_))
                           (_ns91178_ (symbol->string _mod-id91176_))
                           (_path91185_
                            (if (##structure-instance-of?
                                 _super91172_
                                 'gx#module-context::t)
                                (let ((_path91180_
                                       (##unchecked-structure-ref
                                        _super91172_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path91180_)
                                          (null? _path91180_))
                                      (cons _bind-id91174_ _path91180_)
                                      (if (not _path91180_)
                                          _bind-id91174_
                                          (cons _bind-id91174_
                                                (cons _path91180_ '())))))
                                _bind-id91174_)))
                      (let ((__obj93242
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
                         __obj93242
                         _mod-id91176_
                         _super91172_
                         _ns91178_
                         _path91185_)
                        __obj93242)))))
          (let* ((_e9112091130_ _stx91117_)
                 (_E9112291134_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9112091130_)))
                 (_E9112191166_
                  (lambda ()
                    (if (gx#stx-pair? _e9112091130_)
                        (let ((_e9112391138_ (gx#syntax-e _e9112091130_)))
                          (let ((_hd9112491141_ (##car _e9112391138_))
                                (_tl9112591143_ (##cdr _e9112391138_)))
                            (if (gx#stx-pair? _tl9112591143_)
                                (let ((_e9112691146_
                                       (gx#syntax-e _tl9112591143_)))
                                  (let ((_hd9112791149_ (##car _e9112691146_))
                                        (_tl9112891151_ (##cdr _e9112691146_)))
                                    (let* ((_id91154_ _hd9112791149_)
                                           (_body91156_ _tl9112891151_))
                                      (if (and (gx#identifier? _id91154_)
                                               (gx#stx-list? _body91156_))
                                          (let* ((_ctx91158_
                                                  (_make-context91119_
                                                   _id91154_))
                                                 (_body91160_
                                                  (gx#core-expand-module-begin
                                                   _body91156_
                                                   _ctx91158_))
                                                 (_body91162_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body91160_)
                                                   (gx#stx-source
                                                    _stx91117_))))
                                            (##unchecked-structure-set!
                                             _ctx91158_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body91162_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx91158_
                                             _body91162_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id91154_
                                             _ctx91158_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id91154_)
                                              _body91162_)
                                             (gx#stx-source _stx91117_)))
                                          (_E9112291134_)))))
                                (_E9112291134_))))
                        (_E9112291134_)))))
            (_E9112191166_)))))
    (define gx#core-expand-module-begin
      (lambda (_body91083_ _ctx91084_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx91087_
                   (gx#core-expand-head (cons '%%begin-module _body91083_)))
                  (_e9108891095_ _stx91087_)
                  (_E9109091099_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx91087_)))
                  (_E9108991113_
                   (lambda ()
                     (if (gx#stx-pair? _e9108891095_)
                         (let ((_e9109191103_ (gx#syntax-e _e9108891095_)))
                           (let ((_hd9109291106_ (##car _e9109191103_))
                                 (_tl9109391108_ (##cdr _e9109191103_)))
                             (if (and (gx#identifier? _hd9109291106_)
                                      (gx#core-identifier=?
                                       _hd9109291106_
                                       '%#begin-module))
                                 (let ((_body91111_ _tl9109391108_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx91087_)
                                           _body91111_
                                           (gx#core-expand-module-body
                                            _body91111_))
                                       (_E9109091099_)))
                                 (_E9109091099_))))
                         (_E9109091099_)))))
             (_E9108991113_)))
         gx#current-expander-context
         _ctx91084_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90879_)
        (letrec ((_expand-special90881_
                  (lambda (_hd91010_ _K91011_ _rest91012_ _r91013_)
                    (let* ((_e9101491031_ _hd91010_)
                           (_E9102691035_
                            (lambda ()
                              (_K91011_
                               _rest91012_
                               (cons (gx#core-expand-top _hd91010_)
                                     _r91013_))))
                           (_E9101691047_
                            (lambda ()
                              (if (gx#stx-pair? _e9101491031_)
                                  (let ((_e9102791039_
                                         (gx#syntax-e _e9101491031_)))
                                    (let ((_hd9102891042_
                                           (##car _e9102791039_))
                                          (_tl9102991044_
                                           (##cdr _e9102791039_)))
                                      (if (and (gx#identifier? _hd9102891042_)
                                               (gx#core-identifier=?
                                                _hd9102891042_
                                                '%#export))
                                          (if '#t
                                              (_K91011_
                                               _rest91012_
                                               (cons _hd91010_ _r91013_))
                                              (_E9102691035_))
                                          (_E9102691035_))))
                                  (_E9102691035_))))
                           (_E9101591079_
                            (lambda ()
                              (if (gx#stx-pair? _e9101491031_)
                                  (let ((_e9101791051_
                                         (gx#syntax-e _e9101491031_)))
                                    (let ((_hd9101891054_
                                           (##car _e9101791051_))
                                          (_tl9101991056_
                                           (##cdr _e9101791051_)))
                                      (if (and (gx#identifier? _hd9101891054_)
                                               (gx#core-identifier=?
                                                _hd9101891054_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9101991056_)
                                              (let ((_e9102091059_
                                                     (gx#syntax-e
                                                      _tl9101991056_)))
                                                (let ((_hd9102191062_
                                                       (##car _e9102091059_))
                                                      (_tl9102291064_
                                                       (##cdr _e9102091059_)))
                                                  (let ((_hd-bind91067_
                                                         _hd9102191062_))
                                                    (if (gx#stx-pair?
                                                         _tl9102291064_)
                                                        (let ((_e9102391069_
                                                               (gx#syntax-e
                                                                _tl9102291064_)))
                                                          (let ((_hd9102491072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9102391069_))
                        (_tl9102591074_ (##cdr _e9102391069_)))
                    (let ((_expr91077_ _hd9102491072_))
                      (if (gx#stx-null? _tl9102591074_)
                          (if (gx#core-bind-values? _hd-bind91067_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind91067_)
                                (_K91011_
                                 _rest91012_
                                 (cons _hd91010_ _r91013_)))
                              (_E9101691047_))
                          (_E9101691047_)))))
                (_E9101691047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9101691047_))
                                          (_E9101691047_))))
                                  (_E9101691047_)))))
                      (_E9101591079_))))
                 (_expand-body90882_
                  (lambda (_rbody90884_)
                    (let _lp90886_ ((_rest90888_ _rbody90884_)
                                    (_body90889_ '()))
                      (let* ((_rest9089090898_ _rest90888_)
                             (_else9089290906_ (lambda () _body90889_))
                             (_K9089490998_
                              (lambda (_rest90909_ _hd90910_)
                                (let* ((_e9091190932_ _hd90910_)
                                       (_E9092790936_
                                        (lambda ()
                                          (_lp90886_
                                           _rest90909_
                                           (cons (gx#core-expand-expression
                                                  _hd90910_)
                                                 _body90889_))))
                                       (_E9092390950_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091190932_)
                                              (let ((_e9092890940_
                                                     (gx#syntax-e
                                                      _e9091190932_)))
                                                (let ((_hd9092990943_
                                                       (##car _e9092890940_))
                                                      (_tl9093090945_
                                                       (##cdr _e9092890940_)))
                                                  (let ((_form90948_
                                                         _hd9092990943_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90948_
                                                         gx#special-form-binding?)
                                                        (_lp90886_
                                                         _rest90909_
                                                         (cons _hd90910_
                                                               _body90889_))
                                                        (_E9092790936_)))))
                                              (_E9092790936_))))
                                       (_E9091390962_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091190932_)
                                              (let ((_e9092490954_
                                                     (gx#syntax-e
                                                      _e9091190932_)))
                                                (let ((_hd9092590957_
                                                       (##car _e9092490954_))
                                                      (_tl9092690959_
                                                       (##cdr _e9092490954_)))
                                                  (if (and (gx#identifier?
                                                            _hd9092590957_)
                                                           (gx#core-identifier=?
                                                            _hd9092590957_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90886_
                                                           _rest90909_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90910_)
                         _body90889_))
                  (_E9092390950_))
              (_E9092390950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9092390950_))))
                                       (_E9091290994_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091190932_)
                                              (let ((_e9091490966_
                                                     (gx#syntax-e
                                                      _e9091190932_)))
                                                (let ((_hd9091590969_
                                                       (##car _e9091490966_))
                                                      (_tl9091690971_
                                                       (##cdr _e9091490966_)))
                                                  (if (and (gx#identifier?
                                                            _hd9091590969_)
                                                           (gx#core-identifier=?
                                                            _hd9091590969_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9091690971_)
                                                          (let ((_e9091790974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9091690971_)))
                    (let ((_hd9091890977_ (##car _e9091790974_))
                          (_tl9091990979_ (##cdr _e9091790974_)))
                      (let ((_hd-bind90982_ _hd9091890977_))
                        (if (gx#stx-pair? _tl9091990979_)
                            (let ((_e9092090984_ (gx#syntax-e _tl9091990979_)))
                              (let ((_hd9092190987_ (##car _e9092090984_))
                                    (_tl9092290989_ (##cdr _e9092090984_)))
                                (let ((_expr90992_ _hd9092190987_))
                                  (if (gx#stx-null? _tl9092290989_)
                                      (if '#t
                                          (_lp90886_
                                           _rest90909_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90982_)
                                                   (gx#core-expand-expression
                                                    _expr90992_))
                                                  (gx#stx-source _hd90910_))
                                                 _body90889_))
                                          (_E9091390962_))
                                      (_E9091390962_)))))
                            (_E9091390962_)))))
                  (_E9091390962_))
              (_E9091390962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9091390962_)))))
                                  (_E9091290994_)))))
                        (if (##pair? _rest9089090898_)
                            (let ((_hd9089591001_ (##car _rest9089090898_))
                                  (_tl9089691003_ (##cdr _rest9089090898_)))
                              (let* ((_hd91006_ _hd9089591001_)
                                     (_rest91008_ _tl9089691003_))
                                (_K9089490998_ _rest91008_ _hd91006_)))
                            (_else9089290906_)))))))
          (_expand-body90882_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90879_)
            _expand-special90881_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90722_
               _expanded?90723_
               _method90724_
               _current-phi90725_
               _expand190726_)
        (letrec ((_K90728_
                  (lambda (_rest90846_ _r90847_)
                    (let* ((_e9084890855_ _rest90846_)
                           (_E9085090859_ (lambda () _r90847_))
                           (_E9084990875_
                            (lambda ()
                              (if (gx#stx-pair? _e9084890855_)
                                  (let ((_e9085190863_
                                         (gx#syntax-e _e9084890855_)))
                                    (let ((_hd9085290866_
                                           (##car _e9085190863_))
                                          (_tl9085390868_
                                           (##cdr _e9085190863_)))
                                      (let* ((_hd90871_ _hd9085290866_)
                                             (_rest90873_ _tl9085390868_))
                                        (if '#t
                                            (_step90729_
                                             _hd90871_
                                             _rest90873_
                                             _r90847_)
                                            (_E9085090859_)))))
                                  (_E9085090859_)))))
                      (_E9084990875_))))
                 (_step90729_
                  (lambda (_hd90760_ _rest90761_ _r90762_)
                    (let* ((_e9076390781_ _hd90760_)
                           (_E9077690785_
                            (lambda ()
                              (if (_expanded?90723_ (gx#stx-e _hd90760_))
                                  (_K90728_
                                   _rest90761_
                                   (cons (gx#stx-e _hd90760_) _r90762_))
                                  (_expand190726_
                                   _hd90760_
                                   _K90728_
                                   _rest90761_
                                   _r90762_))))
                           (_E9077290801_
                            (lambda ()
                              (if (gx#stx-pair? _e9076390781_)
                                  (let ((_e9077790789_
                                         (gx#syntax-e _e9076390781_)))
                                    (let ((_hd9077890792_
                                           (##car _e9077790789_))
                                          (_tl9077990794_
                                           (##cdr _e9077790789_)))
                                      (let* ((_macro90797_ _hd9077890792_)
                                             (_body90799_ _tl9077990794_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90797_
                                             gx#syntax-binding?)
                                            (_K90728_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90797_)
                                                    _hd90760_
                                                    _method90724_)
                                                   _rest90761_)
                                             _r90762_)
                                            (_E9077690785_)))))
                                  (_E9077690785_))))
                           (_E9076590815_
                            (lambda ()
                              (if (gx#stx-pair? _e9076390781_)
                                  (let ((_e9077390805_
                                         (gx#syntax-e _e9076390781_)))
                                    (let ((_hd9077490808_
                                           (##car _e9077390805_))
                                          (_tl9077590810_
                                           (##cdr _e9077390805_)))
                                      (if (eq? (gx#stx-e _hd9077490808_)
                                               'begin:)
                                          (let ((_body90813_ _tl9077590810_))
                                            (if '#t
                                                (_K90728_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90761_
                                                  _body90813_)
                                                 _r90762_)
                                                (_E9077290801_)))
                                          (_E9077290801_))))
                                  (_E9077290801_))))
                           (_E9076490842_
                            (lambda ()
                              (if (gx#stx-pair? _e9076390781_)
                                  (let ((_e9076690819_
                                         (gx#syntax-e _e9076390781_)))
                                    (let ((_hd9076790822_
                                           (##car _e9076690819_))
                                          (_tl9076890824_
                                           (##cdr _e9076690819_)))
                                      (if (eq? (gx#stx-e _hd9076790822_) 'phi:)
                                          (if (gx#stx-pair? _tl9076890824_)
                                              (let ((_e9076990827_
                                                     (gx#syntax-e
                                                      _tl9076890824_)))
                                                (let ((_hd9077090830_
                                                       (##car _e9076990827_))
                                                      (_tl9077190832_
                                                       (##cdr _e9076990827_)))
                                                  (let* ((_dphi90835_
                                                          _hd9077090830_)
                                                         (_body90837_
                                                          _tl9077190832_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90835_)
                                                        (let ((_rbody90840_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90728_ _body90837_ '()))
                        _current-phi90725_
                        (fx+ (gx#stx-e _dphi90835_) (_current-phi90725_)))))
                  (_K90728_ _rest90761_ (foldr1 cons _r90762_ _rbody90840_)))
                (_E9076590815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9076590815_))
                                          (_E9076590815_))))
                                  (_E9076590815_)))))
                      (_E9076490842_)))))
          (let* ((_e9073090737_ _stx90722_)
                 (_E9073290741_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9073090737_)))
                 (_E9073190756_
                  (lambda ()
                    (if (gx#stx-pair? _e9073090737_)
                        (let ((_e9073390745_ (gx#syntax-e _e9073090737_)))
                          (let ((_hd9073490748_ (##car _e9073390745_))
                                (_tl9073590750_ (##cdr _e9073390745_)))
                            (let ((_body90753_ _tl9073590750_))
                              (if '#t
                                  (if (_current-phi90725_)
                                      (_K90728_ _body90753_ '())
                                      (call-with-parameters
                                       (lambda () (_K90728_ _body90753_ '()))
                                       _current-phi90725_
                                       (gx#current-expander-phi)))
                                  (_E9073290741_)))))
                        (_E9073290741_)))))
            (_E9073190756_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx90389_ _internal-expand?90390_)
        (letrec ((_expand190392_
                  (lambda (_hd90702_ _K90703_ _rest90704_ _r90705_)
                    (if (gx#core-bound-module? _hd90702_)
                        (_import190393_
                         (gx#syntax-local-e__0 _hd90702_)
                         _K90703_
                         _rest90704_
                         _r90705_)
                        (if (gx#core-library-module-path? _hd90702_)
                            (_import190393_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90702_))
                             _K90703_
                             _rest90704_
                             _r90705_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90702_)
                                (_import190393_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90702_))
                                 _K90703_
                                 _rest90704_
                                 _r90705_)
                                (let ((_e90707_ (gx#stx-e _hd90702_)))
                                  (if (pair? _e90707_)
                                      (let ((_$e90709_
                                             (gx#stx-e (car _e90707_))))
                                        (if (eq? 'spec: _$e90709_)
                                            (_import-spec90396_
                                             _hd90702_
                                             _K90703_
                                             _rest90704_
                                             _r90705_)
                                            (if (eq? 'in: _$e90709_)
                                                (_import-submodule90394_
                                                 _hd90702_
                                                 _K90703_
                                                 _rest90704_
                                                 _r90705_)
                                                (if (eq? 'runtime: _$e90709_)
                                                    (_import-runtime90395_
                                                     _hd90702_
                                                     _K90703_
                                                     _rest90704_
                                                     _r90705_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx90389_
                                                     _hd90702_)))))
                                      (if (string? _e90707_)
                                          (_import190393_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90702_
                                             (gx#stx-source _stx90389_)))
                                           _K90703_
                                           _rest90704_
                                           _r90705_)
                                          (if (##structure-instance-of?
                                               _e90707_
                                               'gx#module-context::t)
                                              (_K90703_
                                               _rest90704_
                                               (cons _e90707_ _r90705_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx90389_
                                               _hd90702_))))))))))
                 (_import190393_
                  (lambda (_ctx90691_ _K90692_ _rest90693_ _r90694_)
                    (let ((_dphi90696_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90692_
                       _rest90693_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90691_
                              _dphi90696_
                              (map (lambda (_g9069790699_)
                                     (gx#core-module-export->import__%
                                      _g9069790699_
                                      '#f
                                      _dphi90696_))
                                   (##unchecked-structure-ref
                                    _ctx90691_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90694_)))))
                 (_import-submodule90394_
                  (lambda (_hd90658_ _K90659_ _rest90660_ _r90661_)
                    (let* ((_e9066290669_ _hd90658_)
                           (_E9066490673_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9066290669_)))
                           (_E9066390687_
                            (lambda ()
                              (if (gx#stx-pair? _e9066290669_)
                                  (let ((_e9066590677_
                                         (gx#syntax-e _e9066290669_)))
                                    (let ((_hd9066690680_
                                           (##car _e9066590677_))
                                          (_tl9066790682_
                                           (##cdr _e9066590677_)))
                                      (let ((_spath90685_ _tl9066790682_))
                                        (if '#t
                                            (_import190393_
                                             (_import-spec-source90397_
                                              _spath90685_)
                                             _K90659_
                                             _rest90660_
                                             _r90661_)
                                            (_E9066490673_)))))
                                  (_E9066490673_)))))
                      (_E9066390687_))))
                 (_import-runtime90395_
                  (lambda (_hd90625_ _K90626_ _rest90627_ _r90628_)
                    (let* ((_e9062990636_ _hd90625_)
                           (_E9063190640_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9062990636_)))
                           (_E9063090654_
                            (lambda ()
                              (if (gx#stx-pair? _e9062990636_)
                                  (let ((_e9063290644_
                                         (gx#syntax-e _e9062990636_)))
                                    (let ((_hd9063390647_
                                           (##car _e9063290644_))
                                          (_tl9063490649_
                                           (##cdr _e9063290644_)))
                                      (let ((_spath90652_ _tl9063490649_))
                                        (if '#t
                                            (_K90626_
                                             _rest90627_
                                             (cons (_import-spec-source90397_
                                                    _spath90652_)
                                                   _r90628_))
                                            (_E9063190640_)))))
                                  (_E9063190640_)))))
                      (_E9063090654_))))
                 (_import-spec90396_
                  (lambda (_hd90464_ _K90465_ _rest90466_ _r90467_)
                    (let* ((_e9046890485_ _hd90464_)
                           (_E9047790489_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9046890485_)))
                           (_E9047090599_
                            (lambda ()
                              (if (gx#stx-pair? _e9046890485_)
                                  (let ((_e9047890493_
                                         (gx#syntax-e _e9046890485_)))
                                    (let ((_hd9047990496_
                                           (##car _e9047890493_))
                                          (_tl9048090498_
                                           (##cdr _e9047890493_)))
                                      (if (gx#stx-pair? _tl9048090498_)
                                          (let ((_e9048190501_
                                                 (gx#syntax-e _tl9048090498_)))
                                            (let ((_hd9048290504_
                                                   (##car _e9048190501_))
                                                  (_tl9048390506_
                                                   (##cdr _e9048190501_)))
                                              (let* ((_path90509_
                                                      _hd9048290504_)
                                                     (_specs90511_
                                                      _tl9048390506_))
                                                (if '#t
                                                    (let ((_src-ctx90513_
                                                           (_import-spec-source90397_
                                                            _path90509_))
                                                          (_exports90514_
                                                           (make-hash-table))
                                                          (_specs90515_
                                                           (gx#syntax->list
                                                            _specs90511_)))
                                                      (for-each
                                                       (lambda (_out90517_)
                                                         (hash-put!
                                                          _exports90514_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90517_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90517_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90517_))
               (##unchecked-structure-ref
                _src-ctx90513_
                '9
                gx#module-context::t
                '#f))
              (_K90465_
               _rest90466_
               (foldl1 (lambda (_spec90519_ _r90520_)
                         (let* ((_e9052190537_ _spec90519_)
                                (_E9052390541_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9052190537_)))
                                (_E9052290595_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9052190537_)
                                       (let ((_e9052490545_
                                              (gx#syntax-e _e9052190537_)))
                                         (let ((_hd9052590548_
                                                (##car _e9052490545_))
                                               (_tl9052690550_
                                                (##cdr _e9052490545_)))
                                           (let ((_phi90553_ _hd9052590548_))
                                             (if (gx#stx-pair? _tl9052690550_)
                                                 (let ((_e9052790555_
                                                        (gx#syntax-e
                                                         _tl9052690550_)))
                                                   (let ((_hd9052890558_
                                                          (##car _e9052790555_))
                                                         (_tl9052990560_
                                                          (##cdr _e9052790555_)))
                                                     (let ((_name90563_
                                                            _hd9052890558_))
                                                       (if (gx#stx-pair?
                                                            _tl9052990560_)
                                                           (let ((_e9053090565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9052990560_)))
                     (let ((_hd9053190568_ (##car _e9053090565_))
                           (_tl9053290570_ (##cdr _e9053090565_)))
                       (let ((_src-phi90573_ _hd9053190568_))
                         (if (gx#stx-pair? _tl9053290570_)
                             (let ((_e9053390575_
                                    (gx#syntax-e _tl9053290570_)))
                               (let ((_hd9053490578_ (##car _e9053390575_))
                                     (_tl9053590580_ (##cdr _e9053390575_)))
                                 (let ((_src-name90583_ _hd9053490578_))
                                   (if (gx#stx-null? _tl9053590580_)
                                       (if (and (gx#stx-fixnum? _src-phi90573_)
                                                (gx#identifier?
                                                 _src-name90583_)
                                                (gx#stx-fixnum? _phi90553_)
                                                (gx#identifier? _name90563_))
                                           (let ((_src-phi90585_
                                                  (gx#stx-e _src-phi90573_))
                                                 (_src-name90586_
                                                  (gx#core-identifier-key
                                                   _src-name90583_))
                                                 (_phi90587_
                                                  (gx#stx-e _phi90553_))
                                                 (_name90588_
                                                  (gx#core-identifier-key
                                                   _name90563_)))
                                             (let ((_$e90590_
                                                    (hash-get
                                                     _exports90514_
                                                     (cons _src-phi90585_
                                                           _src-name90586_))))
                                               (if _$e90590_
                                                   ((lambda (_out90593_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90593_
                                                             _name90588_
                                                             (fx- _phi90587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90585_))
                    _r90520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90590_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx90389_
                                                    _hd90464_))))
                                           (_E9052390541_))
                                       (_E9052390541_)))))
                             (_E9052390541_)))))
                   (_E9052390541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9052390541_)))))
                                       (_E9052390541_)))))
                           (_E9052290595_)))
                       _r90467_
                       _specs90515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9047790489_)))))
                                          (_E9047790489_))))
                                  (_E9047790489_))))
                           (_E9046990621_
                            (lambda ()
                              (if (gx#stx-pair? _e9046890485_)
                                  (let ((_e9047190603_
                                         (gx#syntax-e _e9046890485_)))
                                    (let ((_hd9047290606_
                                           (##car _e9047190603_))
                                          (_tl9047390608_
                                           (##cdr _e9047190603_)))
                                      (if (gx#stx-pair? _tl9047390608_)
                                          (let ((_e9047490611_
                                                 (gx#syntax-e _tl9047390608_)))
                                            (let ((_hd9047590614_
                                                   (##car _e9047490611_))
                                                  (_tl9047690616_
                                                   (##cdr _e9047490611_)))
                                              (let ((_path90619_
                                                     _hd9047590614_))
                                                (if (gx#stx-null?
                                                     _tl9047690616_)
                                                    (if '#t
                                                        (_K90465_
                                                         _rest90466_
                                                         (cons (_import-spec-source90397_
                                                                _path90619_)
                                                               _r90467_))
                                                        (_E9047090599_))
                                                    (_E9047090599_)))))
                                          (_E9047090599_))))
                                  (_E9047090599_)))))
                      (_E9046990621_))))
                 (_import-spec-source90397_
                  (lambda (_spath90462_)
                    (gx#core-import-nested-module _spath90462_ _stx90389_)))
                 (_import!90398_
                  (lambda (_rbody90411_)
                    (letrec* ((_current-ctx90413_
                               (gx#current-expander-context))
                              (_deps90414_ (make-hash-table-eq))
                              (_bind!90415_
                               (lambda (_hd90460_)
                                 (gx#core-bind-import!__1
                                  _hd90460_
                                  _current-ctx90413_))))
                      (let _lp90417_ ((_rest90419_ _rbody90411_)
                                      (_body90420_ '()))
                        (let* ((_rest9042190429_ _rest90419_)
                               (_else9042390439_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx90413_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx90413_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx90413_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body90420_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx90437_ _g93267_)
                                     (gx#eval-module _ctx90437_))
                                   _deps90414_)
                                  _body90420_))
                               (_K9042590448_
                                (lambda (_rest90442_ _hd90443_)
                                  (if (##structure-direct-instance-of?
                                       _hd90443_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!90415_ _hd90443_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd90443_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd90443_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps90414_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd90443_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd90443_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!90415_
                                             (##unchecked-structure-ref
                                              _hd90443_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd90443_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps90414_
                                                 (##unchecked-structure-ref
                                                  _hd90443_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e90445_
                                                 (##structure-instance-of?
                                                  _hd90443_
                                                  'gx#module-context::t)))
                                            (if _$e90445_
                                                _$e90445_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx90389_
                                                 _hd90443_)))))
                                  (_lp90417_
                                   _rest90442_
                                   (cons _hd90443_ _body90420_)))))
                          (if (##pair? _rest9042190429_)
                              (let ((_hd9042690451_ (##car _rest9042190429_))
                                    (_tl9042790453_ (##cdr _rest9042190429_)))
                                (let* ((_hd90456_ _hd9042690451_)
                                       (_rest90458_ _tl9042790453_))
                                  (_K9042590448_ _rest90458_ _hd90456_)))
                              (_else9042390439_)))))))
                 (_expanded-import?90399_
                  (lambda (_e90403_)
                    (let ((_$e90405_
                           (##structure-direct-instance-of?
                            _e90403_
                            'gx#import-set::t)))
                      (if _$e90405_
                          _$e90405_
                          (let ((_$e90408_
                                 (##structure-direct-instance-of?
                                  _e90403_
                                  'gx#module-import::t)))
                            (if _$e90408_
                                _$e90408_
                                (##structure-instance-of?
                                 _e90403_
                                 'gx#module-context::t))))))))
          (let ((_rbody90401_
                 (gx#core-expand-import/export
                  _stx90389_
                  _expanded-import?90399_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand190392_)))
            (if _internal-expand?90390_
                (reverse _rbody90401_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!90398_ _rbody90401_))
                 (gx#stx-source _stx90389_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90715_)
        (let ((_internal-expand?90717_ '#f))
          (gx#core-expand-import%__% _stx90715_ _internal-expand?90717_))))
    (define gx#core-expand-import%
      (lambda _g93269_
        (let ((_g93268_ (##length _g93269_)))
          (cond ((##fx= _g93268_ 1)
                 (apply (lambda (_stx90715_)
                          (gx#core-expand-import%__0 _stx90715_))
                        _g93269_))
                ((##fx= _g93268_ 2)
                 (apply (lambda (_stx90719_ _internal-expand?90720_)
                          (gx#core-expand-import%__%
                           _stx90719_
                           _internal-expand?90720_))
                        _g93269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g93269_))))))
    (define gx#core-import-nested-module
      (lambda (_spath90316_ _where90317_)
        (let* ((_e9031890325_ _spath90316_)
               (_E9032090329_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9031890325_)))
               (_E9031990384_
                (lambda ()
                  (if (gx#stx-pair? _e9031890325_)
                      (let ((_e9032190333_ (gx#syntax-e _e9031890325_)))
                        (let ((_hd9032290336_ (##car _e9032190333_))
                              (_tl9032390338_ (##cdr _e9032190333_)))
                          (let* ((_origin90341_ _hd9032290336_)
                                 (_sub90343_ _tl9032390338_))
                            (if '#t
                                (let ((_origin-ctx90345_
                                       (if (gx#stx-false? _origin90341_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin90341_))))
                                  (let _lp90347_ ((_rest90349_ _sub90343_)
                                                  (_ctx90350_
                                                   _origin-ctx90345_))
                                    (let* ((_e9035190358_ _rest90349_)
                                           (_E9035390362_
                                            (lambda () _ctx90350_))
                                           (_E9035290380_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9035190358_)
                                                  (let ((_e9035490366_
                                                         (gx#syntax-e
                                                          _e9035190358_)))
                                                    (let ((_hd9035590369_
                                                           (##car _e9035490366_))
                                                          (_tl9035690371_
                                                           (##cdr _e9035490366_)))
                                                      (let* ((_id90374_
                                                              _hd9035590369_)
                                                             (_rest90376_
                                                              _tl9035690371_))
                                                        (if '#t
                                                            (let ((_bind90378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id90374_ '0 _ctx90350_)))
                      (if (and (##structure-direct-instance-of?
                                _bind90378_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind90378_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where90317_
                           _spath90316_
                           _id90374_))
                      (_lp90347_
                       _rest90376_
                       (##unchecked-structure-ref
                        _bind90378_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9035390362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9035390362_)))))
                                      (_E9035290380_))))
                                (_E9032090329_)))))
                      (_E9032090329_)))))
          (_E9031990384_))))
    (define gx#core-expand-import-source
      (lambda (_hd90314_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd90314_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89822_ _internal-expand?89823_)
        (letrec* ((_make-export__9319893199_
                   (lambda (_bind90262_ _phi90263_ _ctx90264_ _name90265_)
                     (let* ((_key90267_
                             (##unchecked-structure-ref
                              _bind90262_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key90269_
                             (if _name90265_
                                 (gx#core-identifier-key _name90265_)
                                 _key90267_)))
                       (##structure
                        gx#module-export::t
                        _ctx90264_
                        _key90267_
                        _phi90263_
                        _export-key90269_
                        (let ((_$e90272_
                               (##structure-instance-of?
                                _bind90262_
                                'gx#extern-binding::t)))
                          (if _$e90272_
                              _$e90272_
                              (##structure-direct-instance-of?
                               _bind90262_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9320093203_
                   (lambda (_bind90278_)
                     (let* ((_phi90280_ (gx#current-export-expander-phi))
                            (_ctx90282_ (gx#current-expander-context))
                            (_name90284_ '#f))
                       (_make-export__9319893199_
                        _bind90278_
                        _phi90280_
                        _ctx90282_
                        _name90284_))))
                  (_make-export__1__9320193204_
                   (lambda (_bind90286_ _phi90287_)
                     (let* ((_ctx90289_ (gx#current-expander-context))
                            (_name90291_ '#f))
                       (_make-export__9319893199_
                        _bind90286_
                        _phi90287_
                        _ctx90289_
                        _name90291_))))
                  (_make-export__2__9320293205_
                   (lambda (_bind90293_ _phi90294_ _ctx90295_)
                     (let ((_name90297_ '#f))
                       (_make-export__9319893199_
                        _bind90293_
                        _phi90294_
                        _ctx90295_
                        _name90297_))))
                  (_make-export89825_
                   (lambda _g93271_
                     (let ((_g93270_ (##length _g93271_)))
                       (cond ((##fx= _g93270_ 1)
                              (apply (lambda (_bind90278_)
                                       (_make-export__0__9320093203_
                                        _bind90278_))
                                     _g93271_))
                             ((##fx= _g93270_ 2)
                              (apply (lambda (_bind90286_ _phi90287_)
                                       (_make-export__1__9320193204_
                                        _bind90286_
                                        _phi90287_))
                                     _g93271_))
                             ((##fx= _g93270_ 3)
                              (apply (lambda (_bind90293_
                                              _phi90294_
                                              _ctx90295_)
                                       (_make-export__2__9320293205_
                                        _bind90293_
                                        _phi90294_
                                        _ctx90295_))
                                     _g93271_))
                             ((##fx= _g93270_ 4)
                              (apply (lambda (_bind90299_
                                              _phi90300_
                                              _ctx90301_
                                              _name90302_)
                                       (_make-export__9319893199_
                                        _bind90299_
                                        _phi90300_
                                        _ctx90301_
                                        _name90302_))
                                     _g93271_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g93271_))))))
                  (_expand189826_
                   (lambda (_hd89975_ _K89976_ _rest89977_ _r89978_)
                     (let* ((_e8997990011_ _hd89975_)
                            (_E9000690015_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89822_
                                _hd89975_)))
                            (_E8999690094_
                             (lambda ()
                               (if (gx#stx-pair? _e8997990011_)
                                   (let ((_e9000790019_
                                          (gx#syntax-e _e8997990011_)))
                                     (let ((_hd9000890022_
                                            (##car _e9000790019_))
                                           (_tl9000990024_
                                            (##cdr _e9000790019_)))
                                       (if (eq? (gx#stx-e _hd9000890022_)
                                                'import:)
                                           (let ((_in90027_ _tl9000990024_))
                                             (if (gx#stx-list? _in90027_)
                                                 (let _lp90029_ ((_in-rest90031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90027_)
                         (_r90032_ _r89978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9003390040_
                                                           _in-rest90031_)
                                                          (_E9003590044_
                                                           (lambda ()
                                                             (_K89976_
                                                              _rest89977_
                                                              _r90032_)))
                                                          (_E9003490090_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9003390040_)
                         (let ((_e9003690048_ (gx#syntax-e _e9003390040_)))
                           (let ((_hd9003790051_ (##car _e9003690048_))
                                 (_tl9003890053_ (##cdr _e9003690048_)))
                             (let* ((_hd90056_ _hd9003790051_)
                                    (_in-rest90058_ _tl9003890053_))
                               (if '#t
                                   (let ((_src90088_
                                          (if (gx#core-bound-module? _hd90056_)
                                              (gx#syntax-local-e__0 _hd90056_)
                                              (if (gx#core-library-module-path?
                                                   _hd90056_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90056_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90056_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90056_))
                                                      (if (gx#stx-string?
                                                           _hd90056_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90056_
                                                            (gx#stx-source
                                                             _stx89822_)))
                                                          (let* ((_e9005990066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90056_)
                         (_E9006190070_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89822_
                             _hd90056_)))
                         (_E9006090084_
                          (lambda ()
                            (if (gx#stx-pair? _e9005990066_)
                                (let ((_e9006290074_
                                       (gx#syntax-e _e9005990066_)))
                                  (let ((_hd9006390077_ (##car _e9006290074_))
                                        (_tl9006490079_ (##cdr _e9006290074_)))
                                    (if (eq? (gx#stx-e _hd9006390077_) 'in:)
                                        (let ((_spath90082_ _tl9006490079_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath90082_
                                               _stx89822_)
                                              (_E9006190070_)))
                                        (_E9006190070_))))
                                (_E9006190070_)))))
                    (_E9006090084_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90029_
                                      _in-rest90058_
                                      (_export-imports89827_
                                       _src90088_
                                       _r90032_)))
                                   (_E9003590044_)))))
                         (_E9003590044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9003490090_)))
                                                 (_E9000690015_)))
                                           (_E9000690015_))))
                                   (_E9000690015_))))
                            (_E8998390133_
                             (lambda ()
                               (if (gx#stx-pair? _e8997990011_)
                                   (let ((_e8999790098_
                                          (gx#syntax-e _e8997990011_)))
                                     (let ((_hd8999890101_
                                            (##car _e8999790098_))
                                           (_tl8999990103_
                                            (##cdr _e8999790098_)))
                                       (if (eq? (gx#stx-e _hd8999890101_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8999990103_)
                                               (let ((_e9000090106_
                                                      (gx#syntax-e
                                                       _tl8999990103_)))
                                                 (let ((_hd9000190109_
                                                        (##car _e9000090106_))
                                                       (_tl9000290111_
                                                        (##cdr _e9000090106_)))
                                                   (let ((_id90114_
                                                          _hd9000190109_))
                                                     (if (gx#stx-pair?
                                                          _tl9000290111_)
                                                         (let ((_e9000390116_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9000290111_)))
                   (let ((_hd9000490119_ (##car _e9000390116_))
                         (_tl9000590121_ (##cdr _e9000390116_)))
                     (let ((_name90124_ _hd9000490119_))
                       (if (gx#stx-null? _tl9000590121_)
                           (if '#t
                               (let* ((_phi90126_
                                       (gx#current-export-expander-phi))
                                      (_$e90128_
                                       (gx#core-resolve-identifier__1
                                        _id90114_
                                        _phi90126_)))
                                 (if _$e90128_
                                     ((lambda (_bind90131_)
                                        (_K89976_
                                         _rest89977_
                                         (cons (_make-export__9319893199_
                                                _bind90131_
                                                _phi90126_
                                                (gx#current-expander-context)
                                                _name90124_)
                                               _r89978_)))
                                      _$e90128_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89822_
                                      _hd89975_
                                      _id90114_)))
                               (_E8999690094_))
                           (_E8999690094_)))))
                 (_E8999690094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8999690094_))
                                           (_E8999690094_))))
                                   (_E8999690094_))))
                            (_E8998290182_
                             (lambda ()
                               (if (gx#stx-pair? _e8997990011_)
                                   (let ((_e8998490137_
                                          (gx#syntax-e _e8997990011_)))
                                     (let ((_hd8998590140_
                                            (##car _e8998490137_))
                                           (_tl8998690142_
                                            (##cdr _e8998490137_)))
                                       (if (eq? (gx#stx-e _hd8998590140_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8998690142_)
                                               (let ((_e8998790145_
                                                      (gx#syntax-e
                                                       _tl8998690142_)))
                                                 (let ((_hd8998890148_
                                                        (##car _e8998790145_))
                                                       (_tl8998990150_
                                                        (##cdr _e8998790145_)))
                                                   (let ((_phi90153_
                                                          _hd8998890148_))
                                                     (if (gx#stx-pair?
                                                          _tl8998990150_)
                                                         (let ((_e8999090155_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8998990150_)))
                   (let ((_hd8999190158_ (##car _e8999090155_))
                         (_tl8999290160_ (##cdr _e8999090155_)))
                     (let ((_id90163_ _hd8999190158_))
                       (if (gx#stx-pair? _tl8999290160_)
                           (let ((_e8999390165_ (gx#syntax-e _tl8999290160_)))
                             (let ((_hd8999490168_ (##car _e8999390165_))
                                   (_tl8999590170_ (##cdr _e8999390165_)))
                               (let ((_name90173_ _hd8999490168_))
                                 (if (gx#stx-null? _tl8999590170_)
                                     (if (and (gx#stx-fixnum? _phi90153_)
                                              (gx#identifier? _id90163_)
                                              (gx#identifier? _name90173_))
                                         (let* ((_phi90175_
                                                 (gx#stx-e _phi90153_))
                                                (_$e90177_
                                                 (gx#core-resolve-identifier__1
                                                  _id90163_
                                                  _phi90175_)))
                                           (if _$e90177_
                                               ((lambda (_bind90180_)
                                                  (_K89976_
                                                   _rest89977_
                                                   (cons (_make-export__9319893199_
                                                          _bind90180_
                                                          _phi90175_
                                                          (gx#current-expander-context)
                                                          _name90173_)
                                                         _r89978_)))
                                                _$e90177_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89822_
                                                _hd89975_
                                                _id90163_)))
                                         (_E8998390133_))
                                     (_E8998390133_)))))
                           (_E8998390133_)))))
                 (_E8998390133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8998390133_))
                                           (_E8998390133_))))
                                   (_E8998390133_))))
                            (_E8998190193_
                             (lambda ()
                               (let ((_id90186_ _e8997990011_))
                                 (if (gx#identifier? _id90186_)
                                     (let ((_$e90188_
                                            (gx#core-resolve-identifier__1
                                             _id90186_
                                             (gx#current-export-expander-phi))))
                                       (if _$e90188_
                                           ((lambda (_bind90191_)
                                              (_K89976_
                                               _rest89977_
                                               (cons (_make-export__0__9320093203_
                                                      _bind90191_)
                                                     _r89978_)))
                                            _$e90188_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89822_
                                            _hd89975_)))
                                     (_E8998290182_)))))
                            (_E8998090257_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8997990011_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx90197_
                                               (gx#current-expander-context))
                                              (_current-phi90199_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx90201_
                                               (gx#core-context-shift
                                                _current-ctx90197_
                                                _current-phi90199_))
                                              (_phi-bind90203_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx90201_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp90206_ ((_bind-rest90208_
                                                          _phi-bind90203_)
                                                         (_set90209_ '()))
                                           (let* ((_bind-rest9021090220_
                                                   _bind-rest90208_)
                                                  (_else9021290228_
                                                   (lambda ()
                                                     (_K89976_
                                                      _rest89977_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi90199_
                                                             _set90209_)
                                                            _r89978_))))
                                                  (_K9021490238_
                                                   (lambda (_bind-rest90231_
                                                            _bind90232_
                                                            _key90233_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind90232_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind90232_))
                                                         (_lp90206_
                                                          _bind-rest90231_
                                                          _set90209_)
                                                         (_lp90206_
                                                          _bind-rest90231_
                                                          (cons (_make-export__2__9320293205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind90232_
                         _current-phi90199_
                         _current-ctx90197_)
                        _set90209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9021090220_)
                                                 (let ((_hd9021590241_
                                                        (##car _bind-rest9021090220_))
                                                       (_tl9021690243_
                                                        (##cdr _bind-rest9021090220_)))
                                                   (if (##pair? _hd9021590241_)
                                                       (let ((_hd9021790246_
                                                              (##car _hd9021590241_))
                                                             (_tl9021890248_
                                                              (##cdr _hd9021590241_)))
                                                         (let* ((_key90251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9021790246_)
                        (_bind90253_ _tl9021890248_)
                        (_bind-rest90255_ _tl9021690243_))
                   (_K9021490238_ _bind-rest90255_ _bind90253_ _key90251_)))
               (_else9021290228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9021290228_)))))
                                       (_E8998190193_))
                                   (_E8998190193_)))))
                       (_E8998090257_))))
                  (_export-imports89827_
                   (lambda (_src89851_ _r89852_)
                     (letrec* ((_current-ctx89854_
                                (gx#current-expander-context))
                               (_current-phi89855_
                                (gx#current-export-expander-phi))
                               (_import->export89856_
                                (lambda (_in89937_)
                                  (let* ((_in8993889946_ _in89937_)
                                         (_E8994089950_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8993889946_)))
                                         (_K8994189957_
                                          (lambda (_phi89953_
                                                   _key89954_
                                                   _out89955_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89854_
                                             _key89954_
                                             _phi89953_
                                             _key89954_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8993889946_
                                         'gx#module-import::t)
                                        (let* ((_e8994289960_
                                                (##unchecked-structure-ref
                                                 _in8993889946_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89963_ _e8994289960_)
                                               (_e8994389965_
                                                (##unchecked-structure-ref
                                                 _in8993889946_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89968_ _e8994389965_)
                                               (_e8994489970_
                                                (##unchecked-structure-ref
                                                 _in8993889946_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89973_ _e8994489970_))
                                          (_K8994189957_
                                           _phi89973_
                                           _key89968_
                                           _out89963_))
                                        (_E8994089950_)))))
                               (_fold-e89857_
                                (lambda (_in89859_ _r89860_)
                                  (let* ((_in8986189875_ _in89859_)
                                         (_else8986489883_
                                          (lambda () _r89860_)))
                                    (let ((_K8987089919_
                                           (lambda (_phi89915_
                                                    _key89916_
                                                    _out89917_)
                                             (if (and (fx= _phi89915_
                                                           _current-phi89855_)
                                                      (eq? _src89851_
                                                           (##unchecked-structure-ref
                                                            _out89917_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89856_
                                                        _in89859_)
                                                       _r89860_)
                                                 _r89860_)))
                                          (_K8986689894_
                                           (lambda (_imports89887_
                                                    _phi89888_
                                                    _ctx89889_)
                                             (if (and (fx= _phi89888_
                                                           _current-phi89855_)
                                                      (eq? _src89851_
                                                           _ctx89889_))
                                                 (foldl1 (lambda (_in89891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89892_)
                   (cons (_import->export89856_ _in89891_) _r89892_))
                 _r89860_
                 _imports89887_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89860_))))
                                      (let ((_try-match8986389912_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8986189875_
                                                    'gx#import-set::t)
                                                   (let* ((_e8986789897_
                                                           (##unchecked-structure-ref
                                                            _in8986189875_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8986889902_
                                                           (##unchecked-structure-ref
                                                            _in8986189875_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8986989907_
                                                           (##unchecked-structure-ref
                                                            _in8986189875_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89900_
                                                            _e8986789897_)
                                                           (_phi89905_
                                                            _e8986889902_)
                                                           (_imports89910_
                                                            _e8986989907_))
                                                       (_K8986689894_
                                                        _imports89910_
                                                        _phi89905_
                                                        _ctx89900_)))
                                                   (_else8986489883_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8986189875_
                                             'gx#module-import::t)
                                            (let* ((_e8987189922_
                                                    (##unchecked-structure-ref
                                                     _in8986189875_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8987289927_
                                                    (##unchecked-structure-ref
                                                     _in8986189875_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8987389932_
                                                    (##unchecked-structure-ref
                                                     _in8986189875_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89925_ _e8987189922_)
                                                    (_key89930_ _e8987289927_)
                                                    (_phi89935_ _e8987389932_))
                                                (_K8987089919_
                                                 _phi89935_
                                                 _key89930_
                                                 _out89925_)))
                                            (_try-match8986389912_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89851_
                              _current-phi89855_
                              (foldl1 _fold-e89857_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89854_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89852_))))
                  (_export!89828_
                   (lambda (_rbody89841_)
                     (letrec* ((_current-ctx89843_
                                (gx#current-expander-context))
                               (_fold-e89844_
                                (lambda (_out89848_ _r89849_)
                                  (if (##structure-direct-instance-of?
                                       _out89848_
                                       'gx#module-export::t)
                                      (cons _out89848_ _r89849_)
                                      (if (##structure-direct-instance-of?
                                           _out89848_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89849_
                                                  (##unchecked-structure-ref
                                                   _out89848_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89849_)))))
                       (let ((_body89846_ (reverse _rbody89841_)))
                         (##unchecked-structure-set!
                          _current-ctx89843_
                          (foldl1 _fold-e89844_
                                  (##unchecked-structure-ref
                                   _current-ctx89843_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89846_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89846_))))
                  (_expanded-export?89829_
                   (lambda (_e89836_)
                     (let ((_$e89838_
                            (##structure-direct-instance-of?
                             _e89836_
                             'gx#module-export::t)))
                       (if _$e89838_
                           _$e89838_
                           (##structure-direct-instance-of?
                            _e89836_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89823_)
              (let ((_rbody89834_
                     (gx#core-expand-import/export
                      _stx89822_
                      _expanded-export?89829_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189826_)))
                (if _internal-expand?89823_
                    (reverse _rbody89834_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89828_ _rbody89834_))
                     (gx#stx-source _stx89822_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89822_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89822_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx90307_)
        (let ((_internal-expand?90309_ '#f))
          (gx#core-expand-export%__% _stx90307_ _internal-expand?90309_))))
    (define gx#core-expand-export%
      (lambda _g93273_
        (let ((_g93272_ (##length _g93273_)))
          (cond ((##fx= _g93272_ 1)
                 (apply (lambda (_stx90307_)
                          (gx#core-expand-export%__0 _stx90307_))
                        _g93273_))
                ((##fx= _g93272_ 2)
                 (apply (lambda (_stx90311_ _internal-expand?90312_)
                          (gx#core-expand-export%__%
                           _stx90311_
                           _internal-expand?90312_))
                        _g93273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g93273_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89819_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89819_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89789_)
        (let* ((_e8979089797_ _stx89789_)
               (_E8979289801_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8979089797_)))
               (_E8979189815_
                (lambda ()
                  (if (gx#stx-pair? _e8979089797_)
                      (let ((_e8979389805_ (gx#syntax-e _e8979089797_)))
                        (let ((_hd8979489808_ (##car _e8979389805_))
                              (_tl8979589810_ (##cdr _e8979389805_)))
                          (let ((_body89813_ _tl8979589810_))
                            (if (gx#identifier-list? _body89813_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89813_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89813_))
                                   (gx#stx-source _stx89789_)))
                                (_E8979289801_)))))
                      (_E8979289801_)))))
          (_E8979189815_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89755_ _private?89756_ _phi89757_ _ctx89758_)
        (gx#core-bind-syntax!__%
         _id89755_
         ((if _private?89756_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89755_))
         _private?89756_
         _phi89757_
         _ctx89758_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89763_)
        (let* ((_private?89765_ '#f)
               (_phi89767_ (gx#current-expander-phi))
               (_ctx89769_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89763_
           _private?89765_
           _phi89767_
           _ctx89769_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89771_ _private?89772_)
        (let* ((_phi89774_ (gx#current-expander-phi))
               (_ctx89776_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89771_
           _private?89772_
           _phi89774_
           _ctx89776_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89778_ _private?89779_ _phi89780_)
        (let ((_ctx89782_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89778_
           _private?89779_
           _phi89780_
           _ctx89782_))))
    (define gx#core-bind-feature!
      (lambda _g93275_
        (let ((_g93274_ (##length _g93275_)))
          (cond ((##fx= _g93274_ 1)
                 (apply (lambda (_id89763_)
                          (gx#core-bind-feature!__0 _id89763_))
                        _g93275_))
                ((##fx= _g93274_ 2)
                 (apply (lambda (_id89771_ _private?89772_)
                          (gx#core-bind-feature!__1 _id89771_ _private?89772_))
                        _g93275_))
                ((##fx= _g93274_ 3)
                 (apply (lambda (_id89778_ _private?89779_ _phi89780_)
                          (gx#core-bind-feature!__2
                           _id89778_
                           _private?89779_
                           _phi89780_))
                        _g93275_))
                ((##fx= _g93274_ 4)
                 (apply (lambda (_id89784_
                                 _private?89785_
                                 _phi89786_
                                 _ctx89787_)
                          (gx#core-bind-feature!__%
                           _id89784_
                           _private?89785_
                           _phi89786_
                           _ctx89787_))
                        _g93275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g93275_))))))))
