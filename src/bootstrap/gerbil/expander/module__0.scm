(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709125255)
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
      (lambda _$args93188_
        (apply make-instance gx#module-import::t _$args93188_)))
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
      (lambda _$args93185_
        (apply make-instance gx#module-export::t _$args93185_)))
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
      (lambda _$args93182_
        (apply make-instance gx#import-set::t _$args93182_)))
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
      (lambda _$args93179_
        (apply make-instance gx#export-set::t _$args93179_)))
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
      (lambda _$args93176_
        (apply make-instance gx#import-expander::t _$args93176_)))
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
      (lambda _$args93173_
        (apply make-instance gx#export-expander::t _$args93173_)))
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
      (lambda _$args93170_
        (apply make-instance gx#import-export-expander::t _$args93170_)))
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
      (lambda (_path93167_ _fun93168_)
        (call-with-input-file
         (cons 'path: (cons _path93167_ gx#source-file-settings))
         _fun93168_)))
    (define gx#module-context:::init!
      (lambda (_self93161_ _id93162_ _super93163_ _ns93164_ _path93165_)
        (if (##fx< '11 (##structure-length _self93161_))
            (begin
              (##unchecked-structure-set!
               _self93161_
               _id93162_
               '1
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               (make-hash-table-eq)
               '2
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               _super93163_
               '3
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               '#f
               '4
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               '#f
               '5
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               _ns93164_
               '6
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               _path93165_
               '7
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               '()
               '8
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               '()
               '9
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               '#f
               '10
               (##structure-type _self93161_)
               '#f)
              (##unchecked-structure-set!
               _self93161_
               '#f
               '11
               (##structure-type _self93161_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93161_
                   '11
                   (##vector-length _self93161_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93005_ _ctx93006_ _root93007_)
        (let ((_super93015_
               (let ((_$e93009_ _root93007_))
                 (if _$e93009_
                     _$e93009_
                     (let ((_$e93012_ (gx#core-context-root__0)))
                       (if _$e93012_
                           _$e93012_
                           (let ((__obj93230
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor93231
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj93230
                                     ':init!)))
                               (if __constructor93231
                                   (__constructor93231 __obj93230)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj93230)))))))
          (if _ctx93006_
              (let ((_id93018_
                     (##structure-ref
                      _ctx93006_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93019_
                     (##structure-ref _ctx93006_ '7 gx#module-context::t '#f))
                    (_in93020_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93006_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93021_
                     (make-promise (lambda () (gx#eval-module _ctx93006_)))))
                (if (##fx< '8 (##structure-length _self93005_))
                    (begin
                      (##unchecked-structure-set!
                       _self93005_
                       _id93018_
                       '1
                       (##structure-type _self93005_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93005_
                       (make-hash-table-eq 'size: (length _in93020_))
                       '2
                       (##structure-type _self93005_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93005_
                       _super93015_
                       '3
                       (##structure-type _self93005_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93005_
                       '#f
                       '4
                       (##structure-type _self93005_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93005_
                       '#f
                       '5
                       (##structure-type _self93005_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93005_
                       _path93019_
                       '6
                       (##structure-type _self93005_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93005_
                       _in93020_
                       '7
                       (##structure-type _self93005_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93005_
                       _e93021_
                       '8
                       (##structure-type _self93005_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93005_
                           '8
                           (##vector-length _self93005_)))
                (for-each
                 (lambda (_g9302293024_)
                   (gx#core-bind-weak-import!__% _g9302293024_ _self93005_))
                 _in93020_))
              (if (##fx< '8 (##structure-length _self93005_))
                  (begin
                    (##unchecked-structure-set!
                     _self93005_
                     '#f
                     '1
                     (##structure-type _self93005_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93005_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93005_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93005_
                     _super93015_
                     '3
                     (##structure-type _self93005_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93005_
                     '#f
                     '4
                     (##structure-type _self93005_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93005_
                     '#f
                     '5
                     (##structure-type _self93005_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93005_
                     '#f
                     '6
                     (##structure-type _self93005_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93005_
                     '()
                     '7
                     (##structure-type _self93005_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93005_
                     '#f
                     '8
                     (##structure-type _self93005_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93005_
                         '8
                         (##vector-length _self93005_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93030_ _ctx93031_)
        (let ((_root93033_ '#f))
          (gx#prelude-context:::init!__% _self93030_ _ctx93031_ _root93033_))))
    (define gx#prelude-context:::init!
      (lambda _g93237_
        (let ((_g93236_ (##length _g93237_)))
          (cond ((##fx= _g93236_ 2)
                 (apply (lambda (_self93030_ _ctx93031_)
                          (gx#prelude-context:::init!__0
                           _self93030_
                           _ctx93031_))
                        _g93237_))
                ((##fx= _g93236_ 3)
                 (apply (lambda (_self93035_ _ctx93036_ _root93037_)
                          (gx#prelude-context:::init!__%
                           _self93035_
                           _ctx93036_
                           _root93037_))
                        _g93237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g93237_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92879_ _e92880_)
        (if (##fx< '3 (##structure-length _self92879_))
            (begin
              (##unchecked-structure-set!
               _self92879_
               _e92880_
               '1
               (##structure-type _self92879_)
               '#f)
              (##unchecked-structure-set!
               _self92879_
               (gx#current-expander-context)
               '2
               (##structure-type _self92879_)
               '#f)
              (##unchecked-structure-set!
               _self92879_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92879_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92879_
                   '3
                   (##vector-length _self92879_)))))
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
      (lambda (_g9250592508_ _g9250692510_)
        (gx#core-apply-user-expander__%
         _g9250592508_
         _g9250692510_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9237692379_ _g9237792381_)
        (gx#core-apply-user-expander__%
         _g9237692379_
         _g9237792381_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx92247_)
        (let* ((_path92249_
                (##structure-ref _ctx92247_ '7 gx#module-context::t '#f))
               (_path92251_
                (if (pair? _path92249_) (last _path92249_) _path92249_)))
          (if (string? _path92251_) _path92251_ '#f))))
    (define gx#import-module__%
      (lambda (_path92223_ _reload?92224_ _eval?92225_)
        (let ((_ctx92227_
               ((gx#current-expander-module-import)
                _path92223_
                _reload?92224_)))
          (if (and _ctx92227_ _eval?92225_)
              (gx#eval-module _ctx92227_)
              '#!void)
          _ctx92227_)))
    (define gx#import-module__0
      (lambda (_path92232_)
        (let* ((_reload?92234_ '#f) (_eval?92236_ '#f))
          (gx#import-module__% _path92232_ _reload?92234_ _eval?92236_))))
    (define gx#import-module__1
      (lambda (_path92238_ _reload?92239_)
        (let ((_eval?92241_ '#f))
          (gx#import-module__% _path92238_ _reload?92239_ _eval?92241_))))
    (define gx#import-module
      (lambda _g93239_
        (let ((_g93238_ (##length _g93239_)))
          (cond ((##fx= _g93238_ 1)
                 (apply (lambda (_path92232_)
                          (gx#import-module__0 _path92232_))
                        _g93239_))
                ((##fx= _g93238_ 2)
                 (apply (lambda (_path92238_ _reload?92239_)
                          (gx#import-module__1 _path92238_ _reload?92239_))
                        _g93239_))
                ((##fx= _g93238_ 3)
                 (apply (lambda (_path92243_ _reload?92244_ _eval?92245_)
                          (gx#import-module__%
                           _path92243_
                           _reload?92244_
                           _eval?92245_))
                        _g93239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g93239_))))))
    (define gx#eval-module
      (lambda (_mod92220_) ((gx#current-expander-module-eval) _mod92220_)))
    (define gx#core-eval-module
      (lambda (_obj92205_)
        (letrec ((_force-e92207_
                  (lambda (_getf92216_ _e92217_)
                    (call-with-parameters
                     (lambda () (force (_getf92216_ _e92217_)))
                     gx#current-expander-context
                     _e92217_
                     gx#current-expander-phi
                     '0))))
          (let _recur92209_ ((_e92211_ _obj92205_))
            (if (##structure-instance-of? _e92211_ 'gx#module-context::t)
                (begin
                  (let ((_$e92213_ (gx#core-context-prelude__% _e92211_)))
                    (if _$e92213_ (_recur92209_ _$e92213_) '#!void))
                  (_force-e92207_ gx#module-context-e _e92211_))
                (if (##structure-instance-of? _e92211_ 'gx#prelude-context::t)
                    (_force-e92207_ gx#prelude-context-e _e92211_)
                    (if (gx#stx-string? _e92211_)
                        (_recur92209_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e92211_)))
                        (if (gx#core-library-module-path? _e92211_)
                            (_recur92209_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e92211_)))
                            (error '"Cannot eval module" _obj92205_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx92188_)
        (let _lp92190_ ((_e92192_ _ctx92188_))
          (if (or (##structure-instance-of? _e92192_ 'gx#module-context::t)
                  (##structure-instance-of? _e92192_ 'gx#local-context::t))
              (_lp92190_
               (##unchecked-structure-ref _e92192_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e92192_ 'gx#prelude-context::t)
                  _e92192_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx92201_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx92201_))))
    (define gx#core-context-prelude
      (lambda _g93241_
        (let ((_g93240_ (##length _g93241_)))
          (cond ((##fx= _g93240_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g93241_))
                ((##fx= _g93240_ 1)
                 (apply (lambda (_ctx92203_)
                          (gx#core-context-prelude__% _ctx92203_))
                        _g93241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g93241_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx92178_)
        (let* ((_ht92180_ (gx#current-expander-module-registry))
               (_$e92182_ (hash-get _ht92180_ _ctx92178_)))
          (if _$e92182_
              (values _$e92182_)
              (let ((_pre92185_
                     (let ((__obj93232
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
                       (gx#prelude-context:::init! __obj93232 _ctx92178_)
                       __obj93232)))
                (hash-put! _ht92180_ _ctx92178_ _pre92185_)
                _pre92185_)))))
    (define gx#core-import-module__%
      (lambda (_rpath92059_ _reload?92060_)
        (letrec ((_import-source92062_
                  (lambda (_path92147_)
                    (if (member _path92147_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path92147_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g93242_ (gx#core-read-module _path92147_)))
                         (begin
                           (let ((_g93243_
                                  (if (##values? _g93242_)
                                      (##vector-length _g93242_)
                                      1)))
                             (if (not (##fx= _g93243_ 4))
                                 (error "Context expects 4 values" _g93243_)))
                           (let ((_pre92150_ (##vector-ref _g93242_ 0))
                                 (_id92151_ (##vector-ref _g93242_ 1))
                                 (_ns92152_ (##vector-ref _g93242_ 2))
                                 (_body92153_ (##vector-ref _g93242_ 3)))
                             (let* ((_prelude92158_
                                     (if (##structure-instance-of?
                                          _pre92150_
                                          'gx#prelude-context::t)
                                         _pre92150_
                                         (if (##structure-instance-of?
                                              _pre92150_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre92150_)
                                             (if (string? _pre92150_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre92150_))
                                                 (if (not _pre92150_)
                                                     (let ((_$e92155_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e92155_
                                                           _$e92155_
                                                           (let ((__obj93233
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
                     (gx#prelude-context:::init! __obj93233 '#f)
                     __obj93233)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath92059_
                                                            _pre92150_))))))
                                    (_ctx92160_
                                     (let ((__obj93234
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
                                        __obj93234
                                        _id92151_
                                        _prelude92158_
                                        _ns92152_
                                        _path92147_)
                                       __obj93234))
                                    (_body92162_
                                     (gx#core-expand-module-begin
                                      _body92153_
                                      _ctx92160_))
                                    (_body92164_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body92162_)
                                      _path92147_
                                      _ctx92160_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx92160_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body92164_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx92160_
                                _body92164_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path92147_
                                _ctx92160_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id92151_
                                _ctx92160_)
                               _ctx92160_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path92147_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule92063_
                  (lambda (_rpath92075_)
                    (let* ((_rpath9207692083_ _rpath92075_)
                           (_E9207892087_
                            (lambda ()
                              (error '"No clause matching" _rpath9207692083_)))
                           (_K9207992135_
                            (lambda (_refs92090_ _origin92091_)
                              (let ((_ctx92093_
                                     (if _origin92091_
                                         (gx#core-import-module__%
                                          _origin92091_
                                          _reload?92060_)
                                         (gx#current-expander-context))))
                                (let _lp92095_ ((_rest92097_ _refs92090_)
                                                (_ctx92098_ _ctx92093_))
                                  (let* ((_rest9209992107_ _rest92097_)
                                         (_else9210192115_
                                          (lambda () _ctx92098_))
                                         (_K9210392123_
                                          (lambda (_rest92118_ _id92119_)
                                            (let ((_bind92121_
                                                   (gx#resolve-identifier__%
                                                    _id92119_
                                                    '0
                                                    _ctx92098_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind92121_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind92121_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp92095_
                                                   _rest92118_
                                                   (##unchecked-structure-ref
                                                    _bind92121_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath92075_
                                                         _id92119_
                                                         _bind92121_))))))
                                    (if (##pair? _rest9209992107_)
                                        (let ((_hd9210492126_
                                               (##car _rest9209992107_))
                                              (_tl9210592128_
                                               (##cdr _rest9209992107_)))
                                          (let* ((_id92131_ _hd9210492126_)
                                                 (_rest92133_ _tl9210592128_))
                                            (_K9210392123_
                                             _rest92133_
                                             _id92131_)))
                                        (_else9210192115_))))))))
                      (if (##pair? _rpath9207692083_)
                          (let ((_hd9208092138_ (##car _rpath9207692083_))
                                (_tl9208192140_ (##cdr _rpath9207692083_)))
                            (let* ((_origin92143_ _hd9208092138_)
                                   (_refs92145_ _tl9208192140_))
                              (_K9207992135_ _refs92145_ _origin92143_)))
                          (_E9207892087_))))))
          (let ((_$e92065_
                 (if (not _reload?92060_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath92059_)
                     '#f)))
            (if _$e92065_
                (values _$e92065_)
                (if (list? _rpath92059_)
                    (_import-submodule92063_ _rpath92059_)
                    (if (gx#core-library-module-path? _rpath92059_)
                        (let ((_ctx92068_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath92059_)
                                _reload?92060_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath92059_
                           _ctx92068_)
                          _ctx92068_)
                        (let* ((_npath92070_ (path-normalize _rpath92059_))
                               (_$e92072_
                                (if (not _reload?92060_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath92070_)
                                    '#f)))
                          (if _$e92072_
                              (values _$e92072_)
                              (_import-source92062_ _npath92070_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath92171_)
        (let ((_reload?92173_ '#f))
          (gx#core-import-module__% _rpath92171_ _reload?92173_))))
    (define gx#core-import-module
      (lambda _g93245_
        (let ((_g93244_ (##length _g93245_)))
          (cond ((##fx= _g93244_ 1)
                 (apply (lambda (_rpath92171_)
                          (gx#core-import-module__0 _rpath92171_))
                        _g93245_))
                ((##fx= _g93244_ 2)
                 (apply (lambda (_rpath92175_ _reload?92176_)
                          (gx#core-import-module__%
                           _rpath92175_
                           _reload?92176_))
                        _g93245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g93245_))))))
    (define gx#core-read-module
      (lambda (_path92048_)
        (with-catch
         (lambda (_exn92050_)
           (if (and (datum-parsing-exception? _exn92050_)
                    (eq? (datum-parsing-exception-filepos _exn92050_) '0))
               (gx#core-read-module/lang _path92048_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path92048_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9205292054_)
                      (display-exception _exn92050_ _g9205292054_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path92048_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91911_)
        (let _lp91913_ ((_body91915_ (read-syntax-from-file _path91911_))
                        (_pre91916_ '#f)
                        (_ns91917_ '#f)
                        (_pkg91918_ '#f))
          (let* ((_e9191991943_ _body91915_)
                 (_E9193591965_
                  (lambda ()
                    (let ((_g93246_
                           (if _pkg91918_
                               (values _pre91916_ _ns91917_ _pkg91918_)
                               (gx#core-read-module-package
                                _path91911_
                                _pre91916_
                                _ns91917_))))
                      (begin
                        (let ((_g93247_
                               (if (##values? _g93246_)
                                   (##vector-length _g93246_)
                                   1)))
                          (if (not (##fx= _g93247_ 3))
                              (error "Context expects 3 values" _g93247_)))
                        (let ((_pre91947_ (##vector-ref _g93246_ 0))
                              (_ns91948_ (##vector-ref _g93246_ 1))
                              (_pkg91949_ (##vector-ref _g93246_ 2)))
                          (let* ((_prelude91951_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91947_)
                                      (gx#syntax-local-e__0 _pre91947_)
                                      (if (gx#core-library-module-path?
                                           _pre91947_)
                                          (gx#core-resolve-library-module-path
                                           _pre91947_)
                                          (if (gx#stx-string? _pre91947_)
                                              (gx#core-resolve-module-path__%
                                               _pre91947_
                                               _path91911_)
                                              (gx#stx-e _pre91947_)))))
                                 (_path-id91953_
                                  (gx#core-module-path->namespace _path91911_))
                                 (_pkg-id91955_
                                  (if _pkg91949_
                                      (string-append
                                       _pkg91949_
                                       '"/"
                                       _path-id91953_)
                                      _path-id91953_))
                                 (_module-id91957_
                                  (string->symbol _pkg-id91955_))
                                 (_module-ns91962_
                                  (if (eq? _ns91948_ '#!void)
                                      '#f
                                      (let ((_$e91959_ _ns91948_))
                                        (if _$e91959_
                                            _$e91959_
                                            _pkg-id91955_)))))
                            (values _prelude91951_
                                    _module-id91957_
                                    _module-ns91962_
                                    _body91915_)))))))
                 (_E9192891994_
                  (lambda ()
                    (if (gx#stx-pair? _e9191991943_)
                        (let ((_e9193691969_ (gx#syntax-e _e9191991943_)))
                          (let ((_hd9193791972_ (##car _e9193691969_))
                                (_tl9193891974_ (##cdr _e9193691969_)))
                            (if (eq? (gx#stx-e _hd9193791972_) 'package:)
                                (if (gx#stx-pair? _tl9193891974_)
                                    (let ((_e9193991977_
                                           (gx#syntax-e _tl9193891974_)))
                                      (let ((_hd9194091980_
                                             (##car _e9193991977_))
                                            (_tl9194191982_
                                             (##cdr _e9193991977_)))
                                        (let* ((_pkg91985_ _hd9194091980_)
                                               (_rest91987_ _tl9194191982_))
                                          (if '#t
                                              (let ((_pkg91992_
                                                     (if (gx#identifier?
                                                          _pkg91985_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91985_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91985_)
                         (gx#stx-false? _pkg91985_))
                     (gx#stx-e _pkg91985_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91913_
                                                 _rest91987_
                                                 _pre91916_
                                                 _ns91917_
                                                 _pkg91992_))
                                              (_E9193591965_)))))
                                    (_E9193591965_))
                                (_E9193591965_))))
                        (_E9193591965_))))
                 (_E9192192020_
                  (lambda ()
                    (if (gx#stx-pair? _e9191991943_)
                        (let ((_e9192991998_ (gx#syntax-e _e9191991943_)))
                          (let ((_hd9193092001_ (##car _e9192991998_))
                                (_tl9193192003_ (##cdr _e9192991998_)))
                            (if (eq? (gx#stx-e _hd9193092001_) 'namespace:)
                                (if (gx#stx-pair? _tl9193192003_)
                                    (let ((_e9193292006_
                                           (gx#syntax-e _tl9193192003_)))
                                      (let ((_hd9193392009_
                                             (##car _e9193292006_))
                                            (_tl9193492011_
                                             (##cdr _e9193292006_)))
                                        (let* ((_ns92014_ _hd9193392009_)
                                               (_rest92016_ _tl9193492011_))
                                          (if '#t
                                              (let ((_ns92018_
                                                     (if (gx#identifier?
                                                          _ns92014_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92014_))
                                                         (if (gx#stx-string?
                                                              _ns92014_)
                                                             (gx#stx-e
                                                              _ns92014_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92014_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92014_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91913_
                                                 _rest92016_
                                                 _pre91916_
                                                 _ns92018_
                                                 _pkg91918_))
                                              (_E9192891994_)))))
                                    (_E9192891994_))
                                (_E9192891994_))))
                        (_E9192891994_))))
                 (_E9192092044_
                  (lambda ()
                    (if (gx#stx-pair? _e9191991943_)
                        (let ((_e9192292024_ (gx#syntax-e _e9191991943_)))
                          (let ((_hd9192392027_ (##car _e9192292024_))
                                (_tl9192492029_ (##cdr _e9192292024_)))
                            (if (eq? (gx#stx-e _hd9192392027_) 'prelude:)
                                (if (gx#stx-pair? _tl9192492029_)
                                    (let ((_e9192592032_
                                           (gx#syntax-e _tl9192492029_)))
                                      (let ((_hd9192692035_
                                             (##car _e9192592032_))
                                            (_tl9192792037_
                                             (##cdr _e9192592032_)))
                                        (let* ((_prelude92040_ _hd9192692035_)
                                               (_rest92042_ _tl9192792037_))
                                          (if '#t
                                              (_lp91913_
                                               _rest92042_
                                               _prelude92040_
                                               _ns91917_
                                               _pkg91918_)
                                              (_E9192192020_)))))
                                    (_E9192192020_))
                                (_E9192192020_))))
                        (_E9192192020_)))))
            (_E9192092044_)))))
    (define gx#core-read-module/lang
      (lambda (_path91738_)
        (letrec ((_default-read-module-body91740_
                  (lambda (_inp91903_)
                    (let _lp91905_ ((_body91907_ '()))
                      (let ((_next91909_ (read-syntax _inp91903_)))
                        (if (eof-object? _next91909_)
                            (reverse _body91907_)
                            (_lp91905_ (cons _next91909_ _body91907_)))))))
                 (_read-body91741_
                  (lambda (_inp91822_
                           _pre91823_
                           _ns91824_
                           _pkg91825_
                           _args91826_)
                    (let ((_g93248_
                           (if _pkg91825_
                               (values _pre91823_ _ns91824_ _pkg91825_)
                               (gx#core-read-module-package
                                _path91738_
                                _pre91823_
                                _ns91824_))))
                      (begin
                        (let ((_g93249_
                               (if (##values? _g93248_)
                                   (##vector-length _g93248_)
                                   1)))
                          (if (not (##fx= _g93249_ 3))
                              (error "Context expects 3 values" _g93249_)))
                        (let ((_pre91828_ (##vector-ref _g93248_ 0))
                              (_ns91829_ (##vector-ref _g93248_ 1))
                              (_pkg91830_ (##vector-ref _g93248_ 2)))
                          (let* ((_prelude91832_
                                  (gx#import-module__0 _pre91828_))
                                 (_read-module-body91886_
                                  (let ((_$e91878_
                                         (find (lambda (_e9183391835_)
                                                 (let* ((_g9183791847_
                                                         _e9183391835_)
                                                        (_else9183991855_
                                                         (lambda () '#f))
                                                        (_K9184191859_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9183791847_
                                                        'gx#module-export::t)
                                                       (let* ((_e9184291862_
                                                               (##unchecked-structure-ref
                                                                _g9183791847_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9184391865_
                                                               (##unchecked-structure-ref
                                                                _g9183791847_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9184491868_
                                                               (##unchecked-structure-ref
                                                                _g9183791847_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9184491868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9184591871_
                            (##unchecked-structure-ref
                             _g9183791847_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9187391875_)
                              (eq? _g9187391875_ 'read-module-body))
                            _e9184591871_)
                           (_K9184191859_)
                           (_else9183991855_)))
                     (_else9183991855_)))
               (_else9183991855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91832_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91878_
                                        ((lambda (_xport91881_)
                                           (let ((_proc91884_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91881_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91884_)
                                                 _proc91884_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91738_
                                                  _pre91828_
                                                  _proc91884_))))
                                         _$e91878_)
                                        _default-read-module-body91740_)))
                                 (_path-id91888_
                                  (gx#core-module-path->namespace _path91738_))
                                 (_pkg-id91890_
                                  (if _pkg91830_
                                      (string-append
                                       _pkg91830_
                                       '"/"
                                       _path-id91888_)
                                      _path-id91888_))
                                 (_module-id91892_
                                  (string->symbol _pkg-id91890_))
                                 (_module-ns91897_
                                  (let ((_$e91894_ _ns91829_))
                                    (if _$e91894_ _$e91894_ _pkg-id91890_)))
                                 (_body91900_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91886_ _inp91822_))
                                   gx#current-module-reader-path
                                   _path91738_
                                   gx#current-module-reader-args
                                   _args91826_)))
                            (values _prelude91832_
                                    _module-id91892_
                                    _module-ns91897_
                                    _body91900_)))))))
                 (_string-e91742_
                  (lambda (_obj91819_ _what91820_)
                    (if (string? _obj91819_)
                        _obj91819_
                        (if (symbol? _obj91819_)
                            (symbol->string _obj91819_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91820_)
                             _path91738_
                             _obj91819_)))))
                 (_read-lang-args91743_
                  (lambda (_inp91774_ _args91775_)
                    (let* ((_args9177691784_ _args91775_)
                           (_else9177891792_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91738_)))
                           (_K9178091807_
                            (lambda (_args91795_ _prelude91796_)
                              (let* ((_pkg91798_
                                      (pgetq__0 'package: _args91795_))
                                     (_pkg91800_
                                      (if _pkg91798_
                                          (_string-e91742_
                                           _pkg91798_
                                           '"package")
                                          '#f))
                                     (_ns91802_
                                      (pgetq__0 'namespace: _args91795_))
                                     (_ns91804_
                                      (if _ns91802_
                                          (_string-e91742_
                                           _ns91802_
                                           '"namespace")
                                          '#f)))
                                (_read-body91741_
                                 _inp91774_
                                 _prelude91796_
                                 _ns91804_
                                 _pkg91800_
                                 _args91795_)))))
                      (if (##pair? _args9177691784_)
                          (let ((_hd9178191810_ (##car _args9177691784_))
                                (_tl9178291812_ (##cdr _args9177691784_)))
                            (let* ((_prelude91815_ _hd9178191810_)
                                   (_args91817_ _tl9178291812_))
                              (_K9178091807_ _args91817_ _prelude91815_)))
                          (_else9177891792_)))))
                 (_read-lang91744_
                  (lambda (_inp91749_)
                    (let* ((_head91751_ (read-line _inp91749_))
                           (_$e91753_ (string-index__0 _head91751_ '#\space)))
                      (if _$e91753_
                          ((lambda (_ix91756_)
                             (let ((_lang91758_
                                    (substring _head91751_ '0 _ix91756_)))
                               (if (equal? _lang91758_ '"#lang")
                                   (let* ((_rest91760_
                                           (substring
                                            _head91751_
                                            (fx+ _ix91756_ '1)
                                            (string-length _head91751_)))
                                          (_args91771_
                                           (with-catch
                                            (lambda (_g9176191763_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91738_
                                               _g9176191763_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91760_
                                               (lambda (_g9176691768_)
                                                 (read-all
                                                  _g9176691768_
                                                  read)))))))
                                     (_read-lang-args91743_
                                      _inp91749_
                                      _args91771_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91738_))))
                           _$e91753_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91738_)))))
                 (_read-e91745_
                  (lambda (_inp91747_)
                    (if (eq? (peek-char _inp91747_) '#\#)
                        (_read-lang91744_ _inp91747_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91738_)))))
          (gx#call-with-input-source-file _path91738_ _read-e91745_))))
    (define gx#core-read-module-package
      (lambda (_path91692_ _pre91693_ _ns91694_)
        (letrec ((_string-e91696_
                  (lambda (_e91736_)
                    (if (symbol? _e91736_)
                        (symbol->string _e91736_)
                        (if (string? _e91736_)
                            _e91736_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91736_))))))
          (let _lp91698_ ((_dir91700_ (path-directory _path91692_))
                          (_pkg-path91701_ '()))
            (let ((_gerbil.pkg91703_ (path-expand '"gerbil.pkg" _dir91700_)))
              (if (file-exists? _gerbil.pkg91703_)
                  (let ((_plist91705_
                         (gx#core-library-package-plist__% _dir91700_ '#t)))
                    (if (null? _plist91705_)
                        (let ((_pkg91707_
                               (if (not (null? _pkg-path91701_))
                                   (string-join _pkg-path91701_ '"/")
                                   '#f)))
                          (values _pre91693_ _ns91694_ _pkg91707_))
                        (if (list? _plist91705_)
                            (let* ((_root91709_
                                    (pgetq__0 'package: _plist91705_))
                                   (_pkg91713_
                                    (let ((_pkg-path91711_
                                           (if _root91709_
                                               (cons (_string-e91696_
                                                      _root91709_)
                                                     _pkg-path91701_)
                                               _pkg-path91701_)))
                                      (if (not (null? _pkg-path91711_))
                                          (string-join _pkg-path91711_ '"/")
                                          '#f)))
                                   (_ns91720_
                                    (let ((_ns91718_
                                           (let ((_$e91715_ _ns91694_))
                                             (if _$e91715_
                                                 _$e91715_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91705_)))))
                                      (if _ns91718_
                                          (_string-e91696_ _ns91718_)
                                          '#f)))
                                   (_pre91725_
                                    (let ((_$e91722_ _pre91693_))
                                      (if _$e91722_
                                          _$e91722_
                                          (pgetq__0 'prelude: _plist91705_)))))
                              (values _pre91725_ _ns91720_ _pkg91713_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91705_))))
                  (let ((_dir*91728_
                         (path-strip-trailing-directory-separator _dir91700_)))
                    (if (or (string-empty? _dir*91728_)
                            (equal? _dir91700_ _dir*91728_))
                        (values _pre91693_ _ns91694_ '#f)
                        (let ((_xpath91733_ (path-strip-directory _dir*91728_))
                              (_xdir91734_ (path-directory _dir*91728_)))
                          (_lp91698_
                           _xdir91734_
                           (cons _xpath91733_ _pkg-path91701_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91690_)
        (path-strip-extension (path-strip-directory _path91690_))))
    (define gx#core-module-path->id
      (lambda (_path91688_)
        (string->symbol (gx#core-module-path->namespace _path91688_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91667_ _rel91668_)
        (let* ((_path91670_ (gx#stx-e _stx-path91667_))
               (_path91672_
                (if (string-empty? (path-extension _path91670_))
                    (string-append _path91670_ '".ss")
                    _path91670_)))
          (gx#core-resolve-path__%
           _path91672_
           (let ((_$e91675_ (gx#stx-source _stx-path91667_)))
             (if _$e91675_ _$e91675_ _rel91668_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91681_)
        (let ((_rel91683_ '#f))
          (gx#core-resolve-module-path__% _stx-path91681_ _rel91683_))))
    (define gx#core-resolve-module-path
      (lambda _g93251_
        (let ((_g93250_ (##length _g93251_)))
          (cond ((##fx= _g93250_ 1)
                 (apply (lambda (_stx-path91681_)
                          (gx#core-resolve-module-path__0 _stx-path91681_))
                        _g93251_))
                ((##fx= _g93250_ 2)
                 (apply (lambda (_stx-path91685_ _rel91686_)
                          (gx#core-resolve-module-path__%
                           _stx-path91685_
                           _rel91686_))
                        _g93251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g93251_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91553_)
        (let* ((_spath91555_ (symbol->string (gx#stx-e _libpath91553_)))
               (_spath91557_
                (substring _spath91555_ '1 (string-length _spath91555_)))
               (_ext91559_ (path-extension _spath91557_))
               (_ssi91561_
                (if (string-empty? _ext91559_)
                    (string-append _spath91557_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91557_)
                     '".ssi")))
               (_srcs91565_
                (if (string-empty? _ext91559_)
                    (map (lambda (_ext91563_)
                           (string-append _spath91557_ _ext91563_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91557_ '()))))
          (let _lp91568_ ((_rest91570_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9157191580_ _rest91570_)
                   (_E9157491584_
                    (lambda ()
                      (error '"No clause matching" _rest9157191580_))))
              (let ((_K9157691654_
                     (lambda (_rest91595_ _dir91596_)
                       (letrec ((_resolve91598_
                                 (lambda (_ssi91610_ _srcs91611_)
                                   (let ((_compiled-path91613_
                                          (path-expand _ssi91610_ _dir91596_)))
                                     (if (file-exists? _compiled-path91613_)
                                         (path-normalize _compiled-path91613_)
                                         (let _lpr91615_ ((_rest-src91617_
                                                           _srcs91611_))
                                           (let* ((_rest-src9161891626_
                                                   _rest-src91617_)
                                                  (_else9162091634_
                                                   (lambda ()
                                                     (_lp91568_ _rest91595_)))
                                                  (_K9162291642_
                                                   (lambda (_rest-src91637_
                                                            _src91638_)
                                                     (let ((_src-path91640_
                                                            (path-expand
                                                             _src91638_
                                                             _dir91596_)))
                                                       (if (file-exists?
                                                            _src-path91640_)
                                                           (path-normalize
                                                            _src-path91640_)
                                                           (_lpr91615_
                                                            _rest-src91637_))))))
                                             (if (##pair? _rest-src9161891626_)
                                                 (let ((_hd9162391645_
                                                        (##car _rest-src9161891626_))
                                                       (_tl9162491647_
                                                        (##cdr _rest-src9161891626_)))
                                                   (let* ((_src91650_
                                                           _hd9162391645_)
                                                          (_rest-src91652_
                                                           _tl9162491647_))
                                                     (_K9162291642_
                                                      _rest-src91652_
                                                      _src91650_)))
                                                 (_else9162091634_)))))))))
                         (let ((_$e91600_
                                (gx#core-library-package-path-prefix
                                 _dir91596_)))
                           (if _$e91600_
                               ((lambda (_prefix91603_)
                                  (if (string-prefix?
                                       _prefix91603_
                                       _spath91557_)
                                      (let ((_ssi91607_
                                             (substring
                                              _ssi91561_
                                              (string-length _prefix91603_)
                                              (string-length _ssi91561_)))
                                            (_srcs91608_
                                             (map (lambda (_src91605_)
                                                    (substring
                                                     _src91605_
                                                     (string-length
                                                      _prefix91603_)
                                                     (string-length
                                                      _src91605_)))
                                                  _srcs91565_)))
                                        (_resolve91598_
                                         _ssi91607_
                                         _srcs91608_))
                                      (_lp91568_ _rest91595_)))
                                _$e91600_)
                               (_resolve91598_ _ssi91561_ _srcs91565_))))))
                    (_K9157591589_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91553_))))
                (let ((_try-match9157391592_
                       (lambda ()
                         (if (##null? _rest9157191580_)
                             (_K9157591589_)
                             (_E9157491584_)))))
                  (if (##pair? _rest9157191580_)
                      (let ((_tl9157891659_ (##cdr _rest9157191580_))
                            (_hd9157791657_ (##car _rest9157191580_)))
                        (let ((_dir91662_ _hd9157791657_)
                              (_rest91664_ _tl9157891659_))
                          (_K9157691654_ _rest91664_ _dir91662_)))
                      (_try-match9157391592_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91526_)
        (letrec ((_resolve91528_
                  (lambda (_path91545_ _base91546_)
                    (let ((_$e91548_ (string-rindex__0 _base91546_ '#\/)))
                      (if _$e91548_
                          ((lambda (_idx91551_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91546_ '0 _idx91551_)
                                '"/"
                                _path91545_))))
                           _$e91548_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91545_))))))))
          (let ((_spath91530_ (symbol->string (gx#stx-e _modpath91526_)))
                (_mod91531_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91531_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91526_))
            (let ((_mpath91533_
                   (symbol->string
                    (##structure-ref
                     _mod91531_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91535_ ((_spath91537_ _spath91530_)
                              (_mpath91538_ _mpath91533_))
                (if (string-prefix? '"../" _spath91537_)
                    (let ((_$e91540_ (string-rindex__0 _mpath91538_ '#\/)))
                      (if _$e91540_
                          ((lambda (_idx91543_)
                             (_lp91535_
                              (substring
                               _spath91537_
                               '3
                               (string-length _spath91537_))
                              (substring _mpath91538_ '0 _idx91543_)))
                           _$e91540_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91526_)))
                    (if (string-prefix? '"./" _spath91537_)
                        (_lp91535_
                         (substring
                          _spath91537_
                          '2
                          (string-length _spath91537_))
                         _mpath91538_)
                        (_resolve91528_ _spath91537_ _mpath91538_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91519_)
        (let ((_$e91521_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91519_))))
          (if _$e91521_
              ((lambda (_pkg91524_)
                 (string-append (symbol->string _pkg91524_) '"/"))
               _$e91521_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91491_ _exists?91492_)
        (let* ((_cache91494_ (gx#core-library-package-cache))
               (_$e91496_ (hash-get _cache91494_ _dir91491_)))
          (if _$e91496_
              (values _$e91496_)
              (let* ((_gerbil.pkg91499_ (path-expand '"gerbil.pkg" _dir91491_))
                     (_plist91506_
                      (if (or _exists?91492_ (file-exists? _gerbil.pkg91499_))
                          (let ((_e91504_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91499_
                                  read)))
                            (if (eof-object? _e91504_)
                                '()
                                (if (list? _e91504_)
                                    _e91504_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91499_
                                     _e91504_))))
                          '())))
                (hash-put! _cache91494_ _dir91491_ _plist91506_)
                _plist91506_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91512_)
        (let ((_exists?91514_ '#f))
          (gx#core-library-package-plist__% _dir91512_ _exists?91514_))))
    (define gx#core-library-package-plist
      (lambda _g93253_
        (let ((_g93252_ (##length _g93253_)))
          (cond ((##fx= _g93252_ 1)
                 (apply (lambda (_dir91512_)
                          (gx#core-library-package-plist__0 _dir91512_))
                        _g93253_))
                ((##fx= _g93252_ 2)
                 (apply (lambda (_dir91516_ _exists?91517_)
                          (gx#core-library-package-plist__%
                           _dir91516_
                           _exists?91517_))
                        _g93253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g93253_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91485_ (gx#current-expander-module-library-package-cache)))
          (if _$e91485_
              (values _$e91485_)
              (let ((_cache91488_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91488_)
                _cache91488_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91482_) (gx#core-special-module-path? _stx91482_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91480_) (gx#core-special-module-path? _stx91480_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91475_ _char91476_)
        (if (gx#identifier? _stx91475_)
            (if (interned-symbol? (gx#stx-e _stx91475_))
                (let ((_str91478_ (symbol->string (gx#stx-e _stx91475_))))
                  (if (fx> (string-length _str91478_) '1)
                      (eq? (string-ref _str91478_ '0) _char91476_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91469_)
        (gx#core-bound-identifier?__%
         _stx91469_
         (lambda (_g9147091472_)
           (gx#expander-binding?__% _g9147091472_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91463_)
        (gx#core-bound-identifier?__%
         _stx91463_
         (lambda (_g9146491466_)
           (gx#expander-binding?__% _g9146491466_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91450_)
        (letrec ((_module-prelude?91452_
                  (lambda (_e91458_)
                    (let ((_$e91460_
                           (##structure-instance-of?
                            _e91458_
                            'gx#module-context::t)))
                      (if _$e91460_
                          _$e91460_
                          (##structure-instance-of?
                           _e91458_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91450_
           (lambda (_g9145391455_)
             (gx#expander-binding?__%
              _g9145391455_
              _module-prelude?91452_))))))
    (define gx#core-bind-import!__%
      (lambda (_in91380_ _ctx91381_ _force-weak?91382_)
        (let* ((_in9138391392_ _in91380_)
               (_E9138591396_
                (lambda () (error '"No clause matching" _in9138391392_)))
               (_K9138691409_
                (lambda (_weak?91399_ _phi91400_ _key91401_ _source91402_)
                  (gx#core-bind!__%
                   _key91401_
                   (let ((_e91404_
                          (gx#core-resolve-module-export _source91402_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e91404_ '1 gx#binding::t '#f)
                      _key91401_
                      _phi91400_
                      _e91404_
                      (##unchecked-structure-ref
                       _source91402_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e91406_ _force-weak?91382_))
                        (if _$e91406_ _$e91406_ _weak?91399_))))
                   gx#core-context-rebind?
                   _phi91400_
                   _ctx91381_))))
          (if (##structure-direct-instance-of?
               _in9138391392_
               'gx#module-import::t)
              (let* ((_e9138791412_
                      (##unchecked-structure-ref
                       _in9138391392_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source91415_ _e9138791412_)
                     (_e9138891417_
                      (##unchecked-structure-ref
                       _in9138391392_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91420_ _e9138891417_)
                     (_e9138991422_
                      (##unchecked-structure-ref
                       _in9138391392_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91425_ _e9138991422_)
                     (_e9139091427_
                      (##unchecked-structure-ref
                       _in9138391392_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91430_ _e9139091427_))
                (_K9138691409_
                 _weak?91430_
                 _phi91425_
                 _key91420_
                 _source91415_))
              (_E9138591396_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91435_)
        (let* ((_ctx91437_ (gx#current-expander-context))
               (_force-weak?91439_ '#f))
          (gx#core-bind-import!__% _in91435_ _ctx91437_ _force-weak?91439_))))
    (define gx#core-bind-import!__1
      (lambda (_in91441_ _ctx91442_)
        (let ((_force-weak?91444_ '#f))
          (gx#core-bind-import!__% _in91441_ _ctx91442_ _force-weak?91444_))))
    (define gx#core-bind-import!
      (lambda _g93255_
        (let ((_g93254_ (##length _g93255_)))
          (cond ((##fx= _g93254_ 1)
                 (apply (lambda (_in91435_)
                          (gx#core-bind-import!__0 _in91435_))
                        _g93255_))
                ((##fx= _g93254_ 2)
                 (apply (lambda (_in91441_ _ctx91442_)
                          (gx#core-bind-import!__1 _in91441_ _ctx91442_))
                        _g93255_))
                ((##fx= _g93254_ 3)
                 (apply (lambda (_in91446_ _ctx91447_ _force-weak?91448_)
                          (gx#core-bind-import!__%
                           _in91446_
                           _ctx91447_
                           _force-weak?91448_))
                        _g93255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g93255_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in91366_ _ctx91367_)
        (gx#core-bind-import!__% _in91366_ _ctx91367_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in91372_)
        (let ((_ctx91374_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in91372_ _ctx91374_))))
    (define gx#core-bind-weak-import!
      (lambda _g93257_
        (let ((_g93256_ (##length _g93257_)))
          (cond ((##fx= _g93256_ 1)
                 (apply (lambda (_in91372_)
                          (gx#core-bind-weak-import!__0 _in91372_))
                        _g93257_))
                ((##fx= _g93256_ 2)
                 (apply (lambda (_in91376_ _ctx91377_)
                          (gx#core-bind-weak-import!__% _in91376_ _ctx91377_))
                        _g93257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g93257_))))))
    (define gx#core-resolve-module-export
      (lambda (_out91257_)
        (letrec ((_subst91259_
                  (lambda (_key91305_)
                    (let* ((_key9130691314_ _key91305_)
                           (_else9130891322_ (lambda () _key91305_))
                           (_K9131091353_
                            (lambda (_mark91325_ _id91326_)
                              (let* ((_mark9132791333_ _mark91325_)
                                     (_E9132991337_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9132791333_)))
                                     (_K9133091345_
                                      (lambda (_subst91340_)
                                        (let ((_$e91342_
                                               (if _subst91340_
                                                   (hash-get
                                                    _subst91340_
                                                    _id91326_)
                                                   '#f)))
                                          (if _$e91342_
                                              _$e91342_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key91305_))))))
                                (if (##structure-instance-of?
                                     _mark9132791333_
                                     'gx#expander-mark::t)
                                    (let* ((_e9133191348_
                                            (##unchecked-structure-ref
                                             _mark9132791333_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst91351_ _e9133191348_))
                                      (_K9133091345_ _subst91351_))
                                    (_E9132991337_))))))
                      (if (##pair? _key9130691314_)
                          (let ((_hd9131191356_ (##car _key9130691314_))
                                (_tl9131291358_ (##cdr _key9130691314_)))
                            (let* ((_id91361_ _hd9131191356_)
                                   (_mark91363_ _tl9131291358_))
                              (_K9131091353_ _mark91363_ _id91361_)))
                          (_else9130891322_))))))
          (let* ((_out9126091270_ _out91257_)
                 (_E9126291274_
                  (lambda () (error '"No clause matching" _out9126091270_)))
                 (_K9126391281_
                  (lambda (_phi91277_ _key91278_ _ctx91279_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx91279_ _phi91277_)
                     (_subst91259_ _key91278_)))))
            (if (##structure-direct-instance-of?
                 _out9126091270_
                 'gx#module-export::t)
                (let* ((_e9126491284_
                        (##unchecked-structure-ref
                         _out9126091270_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx91287_ _e9126491284_)
                       (_e9126591289_
                        (##unchecked-structure-ref
                         _out9126091270_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key91292_ _e9126591289_)
                       (_e9126691294_
                        (##unchecked-structure-ref
                         _out9126091270_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi91297_ _e9126691294_)
                       (_e9126791299_
                        (##unchecked-structure-ref
                         _out9126091270_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9126891302_
                        (##unchecked-structure-ref
                         _out9126091270_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9126391281_ _phi91297_ _key91292_ _ctx91287_))
                (_E9126291274_))))))
    (define gx#core-module-export->import__%
      (lambda (_out91182_ _rename91183_ _dphi91184_)
        (let* ((_out9118591195_ _out91182_)
               (_E9118791199_
                (lambda () (error '"No clause matching" _out9118591195_)))
               (_K9118891211_
                (lambda (_weak?91202_
                         _name91203_
                         _phi91204_
                         _key91205_
                         _ctx91206_)
                  (##structure
                   gx#module-import::t
                   _out91182_
                   (let ((_$e91208_ _rename91183_))
                     (if _$e91208_ _$e91208_ _name91203_))
                   (fx+ _phi91204_ _dphi91184_)
                   _weak?91202_))))
          (if (##structure-direct-instance-of?
               _out9118591195_
               'gx#module-export::t)
              (let* ((_e9118991214_
                      (##unchecked-structure-ref
                       _out9118591195_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx91217_ _e9118991214_)
                     (_e9119091219_
                      (##unchecked-structure-ref
                       _out9118591195_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key91222_ _e9119091219_)
                     (_e9119191224_
                      (##unchecked-structure-ref
                       _out9118591195_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi91227_ _e9119191224_)
                     (_e9119291229_
                      (##unchecked-structure-ref
                       _out9118591195_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name91232_ _e9119291229_)
                     (_e9119391234_
                      (##unchecked-structure-ref
                       _out9118591195_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?91237_ _e9119391234_))
                (_K9118891211_
                 _weak?91237_
                 _name91232_
                 _phi91227_
                 _key91222_
                 _ctx91217_))
              (_E9118791199_)))))
    (define gx#core-module-export->import__0
      (lambda (_out91242_)
        (let* ((_rename91244_ '#f) (_dphi91246_ '0))
          (gx#core-module-export->import__%
           _out91242_
           _rename91244_
           _dphi91246_))))
    (define gx#core-module-export->import__1
      (lambda (_out91248_ _rename91249_)
        (let ((_dphi91251_ '0))
          (gx#core-module-export->import__%
           _out91248_
           _rename91249_
           _dphi91251_))))
    (define gx#core-module-export->import
      (lambda _g93259_
        (let ((_g93258_ (##length _g93259_)))
          (cond ((##fx= _g93258_ 1)
                 (apply (lambda (_out91242_)
                          (gx#core-module-export->import__0 _out91242_))
                        _g93259_))
                ((##fx= _g93258_ 2)
                 (apply (lambda (_out91248_ _rename91249_)
                          (gx#core-module-export->import__1
                           _out91248_
                           _rename91249_))
                        _g93259_))
                ((##fx= _g93258_ 3)
                 (apply (lambda (_out91253_ _rename91254_ _dphi91255_)
                          (gx#core-module-export->import__%
                           _out91253_
                           _rename91254_
                           _dphi91255_))
                        _g93259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g93259_))))))
    (define gx#core-expand-module%
      (lambda (_stx91110_)
        (letrec ((_make-context91112_
                  (lambda (_id91163_)
                    (let* ((_super91165_ (gx#current-expander-context))
                           (_bind-id91167_ (gx#stx-e _id91163_))
                           (_mod-id91169_
                            (if (##structure-instance-of?
                                 _super91165_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super91165_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id91167_)
                                _bind-id91167_))
                           (_ns91171_ (symbol->string _mod-id91169_))
                           (_path91178_
                            (if (##structure-instance-of?
                                 _super91165_
                                 'gx#module-context::t)
                                (let ((_path91173_
                                       (##unchecked-structure-ref
                                        _super91165_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path91173_)
                                          (null? _path91173_))
                                      (cons _bind-id91167_ _path91173_)
                                      (if (not _path91173_)
                                          _bind-id91167_
                                          (cons _bind-id91167_
                                                (cons _path91173_ '())))))
                                _bind-id91167_)))
                      (let ((__obj93235
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
                         __obj93235
                         _mod-id91169_
                         _super91165_
                         _ns91171_
                         _path91178_)
                        __obj93235)))))
          (let* ((_e9111391123_ _stx91110_)
                 (_E9111591127_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9111391123_)))
                 (_E9111491159_
                  (lambda ()
                    (if (gx#stx-pair? _e9111391123_)
                        (let ((_e9111691131_ (gx#syntax-e _e9111391123_)))
                          (let ((_hd9111791134_ (##car _e9111691131_))
                                (_tl9111891136_ (##cdr _e9111691131_)))
                            (if (gx#stx-pair? _tl9111891136_)
                                (let ((_e9111991139_
                                       (gx#syntax-e _tl9111891136_)))
                                  (let ((_hd9112091142_ (##car _e9111991139_))
                                        (_tl9112191144_ (##cdr _e9111991139_)))
                                    (let* ((_id91147_ _hd9112091142_)
                                           (_body91149_ _tl9112191144_))
                                      (if (and (gx#identifier? _id91147_)
                                               (gx#stx-list? _body91149_))
                                          (let* ((_ctx91151_
                                                  (_make-context91112_
                                                   _id91147_))
                                                 (_body91153_
                                                  (gx#core-expand-module-begin
                                                   _body91149_
                                                   _ctx91151_))
                                                 (_body91155_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body91153_)
                                                   (gx#stx-source
                                                    _stx91110_))))
                                            (##unchecked-structure-set!
                                             _ctx91151_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body91155_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx91151_
                                             _body91155_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id91147_
                                             _ctx91151_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id91147_)
                                              _body91155_)
                                             (gx#stx-source _stx91110_)))
                                          (_E9111591127_)))))
                                (_E9111591127_))))
                        (_E9111591127_)))))
            (_E9111491159_)))))
    (define gx#core-expand-module-begin
      (lambda (_body91076_ _ctx91077_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx91080_
                   (gx#core-expand-head (cons '%%begin-module _body91076_)))
                  (_e9108191088_ _stx91080_)
                  (_E9108391092_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx91080_)))
                  (_E9108291106_
                   (lambda ()
                     (if (gx#stx-pair? _e9108191088_)
                         (let ((_e9108491096_ (gx#syntax-e _e9108191088_)))
                           (let ((_hd9108591099_ (##car _e9108491096_))
                                 (_tl9108691101_ (##cdr _e9108491096_)))
                             (if (and (gx#identifier? _hd9108591099_)
                                      (gx#core-identifier=?
                                       _hd9108591099_
                                       '%#begin-module))
                                 (let ((_body91104_ _tl9108691101_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx91080_)
                                           _body91104_
                                           (gx#core-expand-module-body
                                            _body91104_))
                                       (_E9108391092_)))
                                 (_E9108391092_))))
                         (_E9108391092_)))))
             (_E9108291106_)))
         gx#current-expander-context
         _ctx91077_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90872_)
        (letrec ((_expand-special90874_
                  (lambda (_hd91003_ _K91004_ _rest91005_ _r91006_)
                    (let* ((_e9100791024_ _hd91003_)
                           (_E9101991028_
                            (lambda ()
                              (_K91004_
                               _rest91005_
                               (cons (gx#core-expand-top _hd91003_)
                                     _r91006_))))
                           (_E9100991040_
                            (lambda ()
                              (if (gx#stx-pair? _e9100791024_)
                                  (let ((_e9102091032_
                                         (gx#syntax-e _e9100791024_)))
                                    (let ((_hd9102191035_
                                           (##car _e9102091032_))
                                          (_tl9102291037_
                                           (##cdr _e9102091032_)))
                                      (if (and (gx#identifier? _hd9102191035_)
                                               (gx#core-identifier=?
                                                _hd9102191035_
                                                '%#export))
                                          (if '#t
                                              (_K91004_
                                               _rest91005_
                                               (cons _hd91003_ _r91006_))
                                              (_E9101991028_))
                                          (_E9101991028_))))
                                  (_E9101991028_))))
                           (_E9100891072_
                            (lambda ()
                              (if (gx#stx-pair? _e9100791024_)
                                  (let ((_e9101091044_
                                         (gx#syntax-e _e9100791024_)))
                                    (let ((_hd9101191047_
                                           (##car _e9101091044_))
                                          (_tl9101291049_
                                           (##cdr _e9101091044_)))
                                      (if (and (gx#identifier? _hd9101191047_)
                                               (gx#core-identifier=?
                                                _hd9101191047_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9101291049_)
                                              (let ((_e9101391052_
                                                     (gx#syntax-e
                                                      _tl9101291049_)))
                                                (let ((_hd9101491055_
                                                       (##car _e9101391052_))
                                                      (_tl9101591057_
                                                       (##cdr _e9101391052_)))
                                                  (let ((_hd-bind91060_
                                                         _hd9101491055_))
                                                    (if (gx#stx-pair?
                                                         _tl9101591057_)
                                                        (let ((_e9101691062_
                                                               (gx#syntax-e
                                                                _tl9101591057_)))
                                                          (let ((_hd9101791065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9101691062_))
                        (_tl9101891067_ (##cdr _e9101691062_)))
                    (let ((_expr91070_ _hd9101791065_))
                      (if (gx#stx-null? _tl9101891067_)
                          (if (gx#core-bind-values? _hd-bind91060_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind91060_)
                                (_K91004_
                                 _rest91005_
                                 (cons _hd91003_ _r91006_)))
                              (_E9100991040_))
                          (_E9100991040_)))))
                (_E9100991040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9100991040_))
                                          (_E9100991040_))))
                                  (_E9100991040_)))))
                      (_E9100891072_))))
                 (_expand-body90875_
                  (lambda (_rbody90877_)
                    (let _lp90879_ ((_rest90881_ _rbody90877_)
                                    (_body90882_ '()))
                      (let* ((_rest9088390891_ _rest90881_)
                             (_else9088590899_ (lambda () _body90882_))
                             (_K9088790991_
                              (lambda (_rest90902_ _hd90903_)
                                (let* ((_e9090490925_ _hd90903_)
                                       (_E9092090929_
                                        (lambda ()
                                          (_lp90879_
                                           _rest90902_
                                           (cons (gx#core-expand-expression
                                                  _hd90903_)
                                                 _body90882_))))
                                       (_E9091690943_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9090490925_)
                                              (let ((_e9092190933_
                                                     (gx#syntax-e
                                                      _e9090490925_)))
                                                (let ((_hd9092290936_
                                                       (##car _e9092190933_))
                                                      (_tl9092390938_
                                                       (##cdr _e9092190933_)))
                                                  (let ((_form90941_
                                                         _hd9092290936_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90941_
                                                         gx#special-form-binding?)
                                                        (_lp90879_
                                                         _rest90902_
                                                         (cons _hd90903_
                                                               _body90882_))
                                                        (_E9092090929_)))))
                                              (_E9092090929_))))
                                       (_E9090690955_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9090490925_)
                                              (let ((_e9091790947_
                                                     (gx#syntax-e
                                                      _e9090490925_)))
                                                (let ((_hd9091890950_
                                                       (##car _e9091790947_))
                                                      (_tl9091990952_
                                                       (##cdr _e9091790947_)))
                                                  (if (and (gx#identifier?
                                                            _hd9091890950_)
                                                           (gx#core-identifier=?
                                                            _hd9091890950_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90879_
                                                           _rest90902_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90903_)
                         _body90882_))
                  (_E9091690943_))
              (_E9091690943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9091690943_))))
                                       (_E9090590987_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9090490925_)
                                              (let ((_e9090790959_
                                                     (gx#syntax-e
                                                      _e9090490925_)))
                                                (let ((_hd9090890962_
                                                       (##car _e9090790959_))
                                                      (_tl9090990964_
                                                       (##cdr _e9090790959_)))
                                                  (if (and (gx#identifier?
                                                            _hd9090890962_)
                                                           (gx#core-identifier=?
                                                            _hd9090890962_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9090990964_)
                                                          (let ((_e9091090967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9090990964_)))
                    (let ((_hd9091190970_ (##car _e9091090967_))
                          (_tl9091290972_ (##cdr _e9091090967_)))
                      (let ((_hd-bind90975_ _hd9091190970_))
                        (if (gx#stx-pair? _tl9091290972_)
                            (let ((_e9091390977_ (gx#syntax-e _tl9091290972_)))
                              (let ((_hd9091490980_ (##car _e9091390977_))
                                    (_tl9091590982_ (##cdr _e9091390977_)))
                                (let ((_expr90985_ _hd9091490980_))
                                  (if (gx#stx-null? _tl9091590982_)
                                      (if '#t
                                          (_lp90879_
                                           _rest90902_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90975_)
                                                   (gx#core-expand-expression
                                                    _expr90985_))
                                                  (gx#stx-source _hd90903_))
                                                 _body90882_))
                                          (_E9090690955_))
                                      (_E9090690955_)))))
                            (_E9090690955_)))))
                  (_E9090690955_))
              (_E9090690955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9090690955_)))))
                                  (_E9090590987_)))))
                        (if (##pair? _rest9088390891_)
                            (let ((_hd9088890994_ (##car _rest9088390891_))
                                  (_tl9088990996_ (##cdr _rest9088390891_)))
                              (let* ((_hd90999_ _hd9088890994_)
                                     (_rest91001_ _tl9088990996_))
                                (_K9088790991_ _rest91001_ _hd90999_)))
                            (_else9088590899_)))))))
          (_expand-body90875_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90872_)
            _expand-special90874_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90715_
               _expanded?90716_
               _method90717_
               _current-phi90718_
               _expand190719_)
        (letrec ((_K90721_
                  (lambda (_rest90839_ _r90840_)
                    (let* ((_e9084190848_ _rest90839_)
                           (_E9084390852_ (lambda () _r90840_))
                           (_E9084290868_
                            (lambda ()
                              (if (gx#stx-pair? _e9084190848_)
                                  (let ((_e9084490856_
                                         (gx#syntax-e _e9084190848_)))
                                    (let ((_hd9084590859_
                                           (##car _e9084490856_))
                                          (_tl9084690861_
                                           (##cdr _e9084490856_)))
                                      (let* ((_hd90864_ _hd9084590859_)
                                             (_rest90866_ _tl9084690861_))
                                        (if '#t
                                            (_step90722_
                                             _hd90864_
                                             _rest90866_
                                             _r90840_)
                                            (_E9084390852_)))))
                                  (_E9084390852_)))))
                      (_E9084290868_))))
                 (_step90722_
                  (lambda (_hd90753_ _rest90754_ _r90755_)
                    (let* ((_e9075690774_ _hd90753_)
                           (_E9076990778_
                            (lambda ()
                              (if (_expanded?90716_ (gx#stx-e _hd90753_))
                                  (_K90721_
                                   _rest90754_
                                   (cons (gx#stx-e _hd90753_) _r90755_))
                                  (_expand190719_
                                   _hd90753_
                                   _K90721_
                                   _rest90754_
                                   _r90755_))))
                           (_E9076590794_
                            (lambda ()
                              (if (gx#stx-pair? _e9075690774_)
                                  (let ((_e9077090782_
                                         (gx#syntax-e _e9075690774_)))
                                    (let ((_hd9077190785_
                                           (##car _e9077090782_))
                                          (_tl9077290787_
                                           (##cdr _e9077090782_)))
                                      (let* ((_macro90790_ _hd9077190785_)
                                             (_body90792_ _tl9077290787_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90790_
                                             gx#syntax-binding?)
                                            (_K90721_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90790_)
                                                    _hd90753_
                                                    _method90717_)
                                                   _rest90754_)
                                             _r90755_)
                                            (_E9076990778_)))))
                                  (_E9076990778_))))
                           (_E9075890808_
                            (lambda ()
                              (if (gx#stx-pair? _e9075690774_)
                                  (let ((_e9076690798_
                                         (gx#syntax-e _e9075690774_)))
                                    (let ((_hd9076790801_
                                           (##car _e9076690798_))
                                          (_tl9076890803_
                                           (##cdr _e9076690798_)))
                                      (if (eq? (gx#stx-e _hd9076790801_)
                                               'begin:)
                                          (let ((_body90806_ _tl9076890803_))
                                            (if '#t
                                                (_K90721_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90754_
                                                  _body90806_)
                                                 _r90755_)
                                                (_E9076590794_)))
                                          (_E9076590794_))))
                                  (_E9076590794_))))
                           (_E9075790835_
                            (lambda ()
                              (if (gx#stx-pair? _e9075690774_)
                                  (let ((_e9075990812_
                                         (gx#syntax-e _e9075690774_)))
                                    (let ((_hd9076090815_
                                           (##car _e9075990812_))
                                          (_tl9076190817_
                                           (##cdr _e9075990812_)))
                                      (if (eq? (gx#stx-e _hd9076090815_) 'phi:)
                                          (if (gx#stx-pair? _tl9076190817_)
                                              (let ((_e9076290820_
                                                     (gx#syntax-e
                                                      _tl9076190817_)))
                                                (let ((_hd9076390823_
                                                       (##car _e9076290820_))
                                                      (_tl9076490825_
                                                       (##cdr _e9076290820_)))
                                                  (let* ((_dphi90828_
                                                          _hd9076390823_)
                                                         (_body90830_
                                                          _tl9076490825_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90828_)
                                                        (let ((_rbody90833_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90721_ _body90830_ '()))
                        _current-phi90718_
                        (fx+ (gx#stx-e _dphi90828_) (_current-phi90718_)))))
                  (_K90721_ _rest90754_ (foldr1 cons _r90755_ _rbody90833_)))
                (_E9075890808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9075890808_))
                                          (_E9075890808_))))
                                  (_E9075890808_)))))
                      (_E9075790835_)))))
          (let* ((_e9072390730_ _stx90715_)
                 (_E9072590734_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9072390730_)))
                 (_E9072490749_
                  (lambda ()
                    (if (gx#stx-pair? _e9072390730_)
                        (let ((_e9072690738_ (gx#syntax-e _e9072390730_)))
                          (let ((_hd9072790741_ (##car _e9072690738_))
                                (_tl9072890743_ (##cdr _e9072690738_)))
                            (let ((_body90746_ _tl9072890743_))
                              (if '#t
                                  (if (_current-phi90718_)
                                      (_K90721_ _body90746_ '())
                                      (call-with-parameters
                                       (lambda () (_K90721_ _body90746_ '()))
                                       _current-phi90718_
                                       (gx#current-expander-phi)))
                                  (_E9072590734_)))))
                        (_E9072590734_)))))
            (_E9072490749_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx90382_ _internal-expand?90383_)
        (letrec ((_expand190385_
                  (lambda (_hd90695_ _K90696_ _rest90697_ _r90698_)
                    (if (gx#core-bound-module? _hd90695_)
                        (_import190386_
                         (gx#syntax-local-e__0 _hd90695_)
                         _K90696_
                         _rest90697_
                         _r90698_)
                        (if (gx#core-library-module-path? _hd90695_)
                            (_import190386_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90695_))
                             _K90696_
                             _rest90697_
                             _r90698_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90695_)
                                (_import190386_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90695_))
                                 _K90696_
                                 _rest90697_
                                 _r90698_)
                                (let ((_e90700_ (gx#stx-e _hd90695_)))
                                  (if (pair? _e90700_)
                                      (let ((_$e90702_
                                             (gx#stx-e (car _e90700_))))
                                        (if (eq? 'spec: _$e90702_)
                                            (_import-spec90389_
                                             _hd90695_
                                             _K90696_
                                             _rest90697_
                                             _r90698_)
                                            (if (eq? 'in: _$e90702_)
                                                (_import-submodule90387_
                                                 _hd90695_
                                                 _K90696_
                                                 _rest90697_
                                                 _r90698_)
                                                (if (eq? 'runtime: _$e90702_)
                                                    (_import-runtime90388_
                                                     _hd90695_
                                                     _K90696_
                                                     _rest90697_
                                                     _r90698_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx90382_
                                                     _hd90695_)))))
                                      (if (string? _e90700_)
                                          (_import190386_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90695_
                                             (gx#stx-source _stx90382_)))
                                           _K90696_
                                           _rest90697_
                                           _r90698_)
                                          (if (##structure-instance-of?
                                               _e90700_
                                               'gx#module-context::t)
                                              (_K90696_
                                               _rest90697_
                                               (cons _e90700_ _r90698_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx90382_
                                               _hd90695_))))))))))
                 (_import190386_
                  (lambda (_ctx90684_ _K90685_ _rest90686_ _r90687_)
                    (let ((_dphi90689_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90685_
                       _rest90686_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90684_
                              _dphi90689_
                              (map (lambda (_g9069090692_)
                                     (gx#core-module-export->import__%
                                      _g9069090692_
                                      '#f
                                      _dphi90689_))
                                   (##unchecked-structure-ref
                                    _ctx90684_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90687_)))))
                 (_import-submodule90387_
                  (lambda (_hd90651_ _K90652_ _rest90653_ _r90654_)
                    (let* ((_e9065590662_ _hd90651_)
                           (_E9065790666_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9065590662_)))
                           (_E9065690680_
                            (lambda ()
                              (if (gx#stx-pair? _e9065590662_)
                                  (let ((_e9065890670_
                                         (gx#syntax-e _e9065590662_)))
                                    (let ((_hd9065990673_
                                           (##car _e9065890670_))
                                          (_tl9066090675_
                                           (##cdr _e9065890670_)))
                                      (let ((_spath90678_ _tl9066090675_))
                                        (if '#t
                                            (_import190386_
                                             (_import-spec-source90390_
                                              _spath90678_)
                                             _K90652_
                                             _rest90653_
                                             _r90654_)
                                            (_E9065790666_)))))
                                  (_E9065790666_)))))
                      (_E9065690680_))))
                 (_import-runtime90388_
                  (lambda (_hd90618_ _K90619_ _rest90620_ _r90621_)
                    (let* ((_e9062290629_ _hd90618_)
                           (_E9062490633_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9062290629_)))
                           (_E9062390647_
                            (lambda ()
                              (if (gx#stx-pair? _e9062290629_)
                                  (let ((_e9062590637_
                                         (gx#syntax-e _e9062290629_)))
                                    (let ((_hd9062690640_
                                           (##car _e9062590637_))
                                          (_tl9062790642_
                                           (##cdr _e9062590637_)))
                                      (let ((_spath90645_ _tl9062790642_))
                                        (if '#t
                                            (_K90619_
                                             _rest90620_
                                             (cons (_import-spec-source90390_
                                                    _spath90645_)
                                                   _r90621_))
                                            (_E9062490633_)))))
                                  (_E9062490633_)))))
                      (_E9062390647_))))
                 (_import-spec90389_
                  (lambda (_hd90457_ _K90458_ _rest90459_ _r90460_)
                    (let* ((_e9046190478_ _hd90457_)
                           (_E9047090482_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9046190478_)))
                           (_E9046390592_
                            (lambda ()
                              (if (gx#stx-pair? _e9046190478_)
                                  (let ((_e9047190486_
                                         (gx#syntax-e _e9046190478_)))
                                    (let ((_hd9047290489_
                                           (##car _e9047190486_))
                                          (_tl9047390491_
                                           (##cdr _e9047190486_)))
                                      (if (gx#stx-pair? _tl9047390491_)
                                          (let ((_e9047490494_
                                                 (gx#syntax-e _tl9047390491_)))
                                            (let ((_hd9047590497_
                                                   (##car _e9047490494_))
                                                  (_tl9047690499_
                                                   (##cdr _e9047490494_)))
                                              (let* ((_path90502_
                                                      _hd9047590497_)
                                                     (_specs90504_
                                                      _tl9047690499_))
                                                (if '#t
                                                    (let ((_src-ctx90506_
                                                           (_import-spec-source90390_
                                                            _path90502_))
                                                          (_exports90507_
                                                           (make-hash-table))
                                                          (_specs90508_
                                                           (gx#syntax->list
                                                            _specs90504_)))
                                                      (for-each
                                                       (lambda (_out90510_)
                                                         (hash-put!
                                                          _exports90507_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90510_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90510_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90510_))
               (##unchecked-structure-ref
                _src-ctx90506_
                '9
                gx#module-context::t
                '#f))
              (_K90458_
               _rest90459_
               (foldl1 (lambda (_spec90512_ _r90513_)
                         (let* ((_e9051490530_ _spec90512_)
                                (_E9051690534_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9051490530_)))
                                (_E9051590588_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9051490530_)
                                       (let ((_e9051790538_
                                              (gx#syntax-e _e9051490530_)))
                                         (let ((_hd9051890541_
                                                (##car _e9051790538_))
                                               (_tl9051990543_
                                                (##cdr _e9051790538_)))
                                           (let ((_phi90546_ _hd9051890541_))
                                             (if (gx#stx-pair? _tl9051990543_)
                                                 (let ((_e9052090548_
                                                        (gx#syntax-e
                                                         _tl9051990543_)))
                                                   (let ((_hd9052190551_
                                                          (##car _e9052090548_))
                                                         (_tl9052290553_
                                                          (##cdr _e9052090548_)))
                                                     (let ((_name90556_
                                                            _hd9052190551_))
                                                       (if (gx#stx-pair?
                                                            _tl9052290553_)
                                                           (let ((_e9052390558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9052290553_)))
                     (let ((_hd9052490561_ (##car _e9052390558_))
                           (_tl9052590563_ (##cdr _e9052390558_)))
                       (let ((_src-phi90566_ _hd9052490561_))
                         (if (gx#stx-pair? _tl9052590563_)
                             (let ((_e9052690568_
                                    (gx#syntax-e _tl9052590563_)))
                               (let ((_hd9052790571_ (##car _e9052690568_))
                                     (_tl9052890573_ (##cdr _e9052690568_)))
                                 (let ((_src-name90576_ _hd9052790571_))
                                   (if (gx#stx-null? _tl9052890573_)
                                       (if (and (gx#stx-fixnum? _src-phi90566_)
                                                (gx#identifier?
                                                 _src-name90576_)
                                                (gx#stx-fixnum? _phi90546_)
                                                (gx#identifier? _name90556_))
                                           (let ((_src-phi90578_
                                                  (gx#stx-e _src-phi90566_))
                                                 (_src-name90579_
                                                  (gx#core-identifier-key
                                                   _src-name90576_))
                                                 (_phi90580_
                                                  (gx#stx-e _phi90546_))
                                                 (_name90581_
                                                  (gx#core-identifier-key
                                                   _name90556_)))
                                             (let ((_$e90583_
                                                    (hash-get
                                                     _exports90507_
                                                     (cons _src-phi90578_
                                                           _src-name90579_))))
                                               (if _$e90583_
                                                   ((lambda (_out90586_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90586_
                                                             _name90581_
                                                             (fx- _phi90580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90578_))
                    _r90513_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90583_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx90382_
                                                    _hd90457_))))
                                           (_E9051690534_))
                                       (_E9051690534_)))))
                             (_E9051690534_)))))
                   (_E9051690534_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9051690534_)))))
                                       (_E9051690534_)))))
                           (_E9051590588_)))
                       _r90460_
                       _specs90508_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9047090482_)))))
                                          (_E9047090482_))))
                                  (_E9047090482_))))
                           (_E9046290614_
                            (lambda ()
                              (if (gx#stx-pair? _e9046190478_)
                                  (let ((_e9046490596_
                                         (gx#syntax-e _e9046190478_)))
                                    (let ((_hd9046590599_
                                           (##car _e9046490596_))
                                          (_tl9046690601_
                                           (##cdr _e9046490596_)))
                                      (if (gx#stx-pair? _tl9046690601_)
                                          (let ((_e9046790604_
                                                 (gx#syntax-e _tl9046690601_)))
                                            (let ((_hd9046890607_
                                                   (##car _e9046790604_))
                                                  (_tl9046990609_
                                                   (##cdr _e9046790604_)))
                                              (let ((_path90612_
                                                     _hd9046890607_))
                                                (if (gx#stx-null?
                                                     _tl9046990609_)
                                                    (if '#t
                                                        (_K90458_
                                                         _rest90459_
                                                         (cons (_import-spec-source90390_
                                                                _path90612_)
                                                               _r90460_))
                                                        (_E9046390592_))
                                                    (_E9046390592_)))))
                                          (_E9046390592_))))
                                  (_E9046390592_)))))
                      (_E9046290614_))))
                 (_import-spec-source90390_
                  (lambda (_spath90455_)
                    (gx#core-import-nested-module _spath90455_ _stx90382_)))
                 (_import!90391_
                  (lambda (_rbody90404_)
                    (letrec* ((_current-ctx90406_
                               (gx#current-expander-context))
                              (_deps90407_ (make-hash-table-eq))
                              (_bind!90408_
                               (lambda (_hd90453_)
                                 (gx#core-bind-import!__1
                                  _hd90453_
                                  _current-ctx90406_))))
                      (let _lp90410_ ((_rest90412_ _rbody90404_)
                                      (_body90413_ '()))
                        (let* ((_rest9041490422_ _rest90412_)
                               (_else9041690432_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx90406_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx90406_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx90406_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body90413_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx90430_ _g93260_)
                                     (gx#eval-module _ctx90430_))
                                   _deps90407_)
                                  _body90413_))
                               (_K9041890441_
                                (lambda (_rest90435_ _hd90436_)
                                  (if (##structure-direct-instance-of?
                                       _hd90436_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!90408_ _hd90436_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd90436_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd90436_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps90407_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd90436_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd90436_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!90408_
                                             (##unchecked-structure-ref
                                              _hd90436_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd90436_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps90407_
                                                 (##unchecked-structure-ref
                                                  _hd90436_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e90438_
                                                 (##structure-instance-of?
                                                  _hd90436_
                                                  'gx#module-context::t)))
                                            (if _$e90438_
                                                _$e90438_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx90382_
                                                 _hd90436_)))))
                                  (_lp90410_
                                   _rest90435_
                                   (cons _hd90436_ _body90413_)))))
                          (if (##pair? _rest9041490422_)
                              (let ((_hd9041990444_ (##car _rest9041490422_))
                                    (_tl9042090446_ (##cdr _rest9041490422_)))
                                (let* ((_hd90449_ _hd9041990444_)
                                       (_rest90451_ _tl9042090446_))
                                  (_K9041890441_ _rest90451_ _hd90449_)))
                              (_else9041690432_)))))))
                 (_expanded-import?90392_
                  (lambda (_e90396_)
                    (let ((_$e90398_
                           (##structure-direct-instance-of?
                            _e90396_
                            'gx#import-set::t)))
                      (if _$e90398_
                          _$e90398_
                          (let ((_$e90401_
                                 (##structure-direct-instance-of?
                                  _e90396_
                                  'gx#module-import::t)))
                            (if _$e90401_
                                _$e90401_
                                (##structure-instance-of?
                                 _e90396_
                                 'gx#module-context::t))))))))
          (let ((_rbody90394_
                 (gx#core-expand-import/export
                  _stx90382_
                  _expanded-import?90392_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand190385_)))
            (if _internal-expand?90383_
                (reverse _rbody90394_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!90391_ _rbody90394_))
                 (gx#stx-source _stx90382_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90708_)
        (let ((_internal-expand?90710_ '#f))
          (gx#core-expand-import%__% _stx90708_ _internal-expand?90710_))))
    (define gx#core-expand-import%
      (lambda _g93262_
        (let ((_g93261_ (##length _g93262_)))
          (cond ((##fx= _g93261_ 1)
                 (apply (lambda (_stx90708_)
                          (gx#core-expand-import%__0 _stx90708_))
                        _g93262_))
                ((##fx= _g93261_ 2)
                 (apply (lambda (_stx90712_ _internal-expand?90713_)
                          (gx#core-expand-import%__%
                           _stx90712_
                           _internal-expand?90713_))
                        _g93262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g93262_))))))
    (define gx#core-import-nested-module
      (lambda (_spath90309_ _where90310_)
        (let* ((_e9031190318_ _spath90309_)
               (_E9031390322_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9031190318_)))
               (_E9031290377_
                (lambda ()
                  (if (gx#stx-pair? _e9031190318_)
                      (let ((_e9031490326_ (gx#syntax-e _e9031190318_)))
                        (let ((_hd9031590329_ (##car _e9031490326_))
                              (_tl9031690331_ (##cdr _e9031490326_)))
                          (let* ((_origin90334_ _hd9031590329_)
                                 (_sub90336_ _tl9031690331_))
                            (if '#t
                                (let ((_origin-ctx90338_
                                       (if (gx#stx-false? _origin90334_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin90334_))))
                                  (let _lp90340_ ((_rest90342_ _sub90336_)
                                                  (_ctx90343_
                                                   _origin-ctx90338_))
                                    (let* ((_e9034490351_ _rest90342_)
                                           (_E9034690355_
                                            (lambda () _ctx90343_))
                                           (_E9034590373_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9034490351_)
                                                  (let ((_e9034790359_
                                                         (gx#syntax-e
                                                          _e9034490351_)))
                                                    (let ((_hd9034890362_
                                                           (##car _e9034790359_))
                                                          (_tl9034990364_
                                                           (##cdr _e9034790359_)))
                                                      (let* ((_id90367_
                                                              _hd9034890362_)
                                                             (_rest90369_
                                                              _tl9034990364_))
                                                        (if '#t
                                                            (let ((_bind90371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id90367_ '0 _ctx90343_)))
                      (if (and (##structure-direct-instance-of?
                                _bind90371_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind90371_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where90310_
                           _spath90309_
                           _id90367_))
                      (_lp90340_
                       _rest90369_
                       (##unchecked-structure-ref
                        _bind90371_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9034690355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9034690355_)))))
                                      (_E9034590373_))))
                                (_E9031390322_)))))
                      (_E9031390322_)))))
          (_E9031290377_))))
    (define gx#core-expand-import-source
      (lambda (_hd90307_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd90307_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89815_ _internal-expand?89816_)
        (letrec* ((_make-export__9319193192_
                   (lambda (_bind90255_ _phi90256_ _ctx90257_ _name90258_)
                     (let* ((_key90260_
                             (##unchecked-structure-ref
                              _bind90255_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key90262_
                             (if _name90258_
                                 (gx#core-identifier-key _name90258_)
                                 _key90260_)))
                       (##structure
                        gx#module-export::t
                        _ctx90257_
                        _key90260_
                        _phi90256_
                        _export-key90262_
                        (let ((_$e90265_
                               (##structure-instance-of?
                                _bind90255_
                                'gx#extern-binding::t)))
                          (if _$e90265_
                              _$e90265_
                              (##structure-direct-instance-of?
                               _bind90255_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9319393196_
                   (lambda (_bind90271_)
                     (let* ((_phi90273_ (gx#current-export-expander-phi))
                            (_ctx90275_ (gx#current-expander-context))
                            (_name90277_ '#f))
                       (_make-export__9319193192_
                        _bind90271_
                        _phi90273_
                        _ctx90275_
                        _name90277_))))
                  (_make-export__1__9319493197_
                   (lambda (_bind90279_ _phi90280_)
                     (let* ((_ctx90282_ (gx#current-expander-context))
                            (_name90284_ '#f))
                       (_make-export__9319193192_
                        _bind90279_
                        _phi90280_
                        _ctx90282_
                        _name90284_))))
                  (_make-export__2__9319593198_
                   (lambda (_bind90286_ _phi90287_ _ctx90288_)
                     (let ((_name90290_ '#f))
                       (_make-export__9319193192_
                        _bind90286_
                        _phi90287_
                        _ctx90288_
                        _name90290_))))
                  (_make-export89818_
                   (lambda _g93264_
                     (let ((_g93263_ (##length _g93264_)))
                       (cond ((##fx= _g93263_ 1)
                              (apply (lambda (_bind90271_)
                                       (_make-export__0__9319393196_
                                        _bind90271_))
                                     _g93264_))
                             ((##fx= _g93263_ 2)
                              (apply (lambda (_bind90279_ _phi90280_)
                                       (_make-export__1__9319493197_
                                        _bind90279_
                                        _phi90280_))
                                     _g93264_))
                             ((##fx= _g93263_ 3)
                              (apply (lambda (_bind90286_
                                              _phi90287_
                                              _ctx90288_)
                                       (_make-export__2__9319593198_
                                        _bind90286_
                                        _phi90287_
                                        _ctx90288_))
                                     _g93264_))
                             ((##fx= _g93263_ 4)
                              (apply (lambda (_bind90292_
                                              _phi90293_
                                              _ctx90294_
                                              _name90295_)
                                       (_make-export__9319193192_
                                        _bind90292_
                                        _phi90293_
                                        _ctx90294_
                                        _name90295_))
                                     _g93264_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g93264_))))))
                  (_expand189819_
                   (lambda (_hd89968_ _K89969_ _rest89970_ _r89971_)
                     (let* ((_e8997290004_ _hd89968_)
                            (_E8999990008_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89815_
                                _hd89968_)))
                            (_E8998990087_
                             (lambda ()
                               (if (gx#stx-pair? _e8997290004_)
                                   (let ((_e9000090012_
                                          (gx#syntax-e _e8997290004_)))
                                     (let ((_hd9000190015_
                                            (##car _e9000090012_))
                                           (_tl9000290017_
                                            (##cdr _e9000090012_)))
                                       (if (eq? (gx#stx-e _hd9000190015_)
                                                'import:)
                                           (let ((_in90020_ _tl9000290017_))
                                             (if (gx#stx-list? _in90020_)
                                                 (let _lp90022_ ((_in-rest90024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90020_)
                         (_r90025_ _r89971_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9002690033_
                                                           _in-rest90024_)
                                                          (_E9002890037_
                                                           (lambda ()
                                                             (_K89969_
                                                              _rest89970_
                                                              _r90025_)))
                                                          (_E9002790083_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9002690033_)
                         (let ((_e9002990041_ (gx#syntax-e _e9002690033_)))
                           (let ((_hd9003090044_ (##car _e9002990041_))
                                 (_tl9003190046_ (##cdr _e9002990041_)))
                             (let* ((_hd90049_ _hd9003090044_)
                                    (_in-rest90051_ _tl9003190046_))
                               (if '#t
                                   (let ((_src90081_
                                          (if (gx#core-bound-module? _hd90049_)
                                              (gx#syntax-local-e__0 _hd90049_)
                                              (if (gx#core-library-module-path?
                                                   _hd90049_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90049_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90049_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90049_))
                                                      (if (gx#stx-string?
                                                           _hd90049_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90049_
                                                            (gx#stx-source
                                                             _stx89815_)))
                                                          (let* ((_e9005290059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90049_)
                         (_E9005490063_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89815_
                             _hd90049_)))
                         (_E9005390077_
                          (lambda ()
                            (if (gx#stx-pair? _e9005290059_)
                                (let ((_e9005590067_
                                       (gx#syntax-e _e9005290059_)))
                                  (let ((_hd9005690070_ (##car _e9005590067_))
                                        (_tl9005790072_ (##cdr _e9005590067_)))
                                    (if (eq? (gx#stx-e _hd9005690070_) 'in:)
                                        (let ((_spath90075_ _tl9005790072_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath90075_
                                               _stx89815_)
                                              (_E9005490063_)))
                                        (_E9005490063_))))
                                (_E9005490063_)))))
                    (_E9005390077_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90022_
                                      _in-rest90051_
                                      (_export-imports89820_
                                       _src90081_
                                       _r90025_)))
                                   (_E9002890037_)))))
                         (_E9002890037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9002790083_)))
                                                 (_E8999990008_)))
                                           (_E8999990008_))))
                                   (_E8999990008_))))
                            (_E8997690126_
                             (lambda ()
                               (if (gx#stx-pair? _e8997290004_)
                                   (let ((_e8999090091_
                                          (gx#syntax-e _e8997290004_)))
                                     (let ((_hd8999190094_
                                            (##car _e8999090091_))
                                           (_tl8999290096_
                                            (##cdr _e8999090091_)))
                                       (if (eq? (gx#stx-e _hd8999190094_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8999290096_)
                                               (let ((_e8999390099_
                                                      (gx#syntax-e
                                                       _tl8999290096_)))
                                                 (let ((_hd8999490102_
                                                        (##car _e8999390099_))
                                                       (_tl8999590104_
                                                        (##cdr _e8999390099_)))
                                                   (let ((_id90107_
                                                          _hd8999490102_))
                                                     (if (gx#stx-pair?
                                                          _tl8999590104_)
                                                         (let ((_e8999690109_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8999590104_)))
                   (let ((_hd8999790112_ (##car _e8999690109_))
                         (_tl8999890114_ (##cdr _e8999690109_)))
                     (let ((_name90117_ _hd8999790112_))
                       (if (gx#stx-null? _tl8999890114_)
                           (if '#t
                               (let* ((_phi90119_
                                       (gx#current-export-expander-phi))
                                      (_$e90121_
                                       (gx#core-resolve-identifier__1
                                        _id90107_
                                        _phi90119_)))
                                 (if _$e90121_
                                     ((lambda (_bind90124_)
                                        (_K89969_
                                         _rest89970_
                                         (cons (_make-export__9319193192_
                                                _bind90124_
                                                _phi90119_
                                                (gx#current-expander-context)
                                                _name90117_)
                                               _r89971_)))
                                      _$e90121_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89815_
                                      _hd89968_
                                      _id90107_)))
                               (_E8998990087_))
                           (_E8998990087_)))))
                 (_E8998990087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8998990087_))
                                           (_E8998990087_))))
                                   (_E8998990087_))))
                            (_E8997590175_
                             (lambda ()
                               (if (gx#stx-pair? _e8997290004_)
                                   (let ((_e8997790130_
                                          (gx#syntax-e _e8997290004_)))
                                     (let ((_hd8997890133_
                                            (##car _e8997790130_))
                                           (_tl8997990135_
                                            (##cdr _e8997790130_)))
                                       (if (eq? (gx#stx-e _hd8997890133_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8997990135_)
                                               (let ((_e8998090138_
                                                      (gx#syntax-e
                                                       _tl8997990135_)))
                                                 (let ((_hd8998190141_
                                                        (##car _e8998090138_))
                                                       (_tl8998290143_
                                                        (##cdr _e8998090138_)))
                                                   (let ((_phi90146_
                                                          _hd8998190141_))
                                                     (if (gx#stx-pair?
                                                          _tl8998290143_)
                                                         (let ((_e8998390148_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8998290143_)))
                   (let ((_hd8998490151_ (##car _e8998390148_))
                         (_tl8998590153_ (##cdr _e8998390148_)))
                     (let ((_id90156_ _hd8998490151_))
                       (if (gx#stx-pair? _tl8998590153_)
                           (let ((_e8998690158_ (gx#syntax-e _tl8998590153_)))
                             (let ((_hd8998790161_ (##car _e8998690158_))
                                   (_tl8998890163_ (##cdr _e8998690158_)))
                               (let ((_name90166_ _hd8998790161_))
                                 (if (gx#stx-null? _tl8998890163_)
                                     (if (and (gx#stx-fixnum? _phi90146_)
                                              (gx#identifier? _id90156_)
                                              (gx#identifier? _name90166_))
                                         (let* ((_phi90168_
                                                 (gx#stx-e _phi90146_))
                                                (_$e90170_
                                                 (gx#core-resolve-identifier__1
                                                  _id90156_
                                                  _phi90168_)))
                                           (if _$e90170_
                                               ((lambda (_bind90173_)
                                                  (_K89969_
                                                   _rest89970_
                                                   (cons (_make-export__9319193192_
                                                          _bind90173_
                                                          _phi90168_
                                                          (gx#current-expander-context)
                                                          _name90166_)
                                                         _r89971_)))
                                                _$e90170_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89815_
                                                _hd89968_
                                                _id90156_)))
                                         (_E8997690126_))
                                     (_E8997690126_)))))
                           (_E8997690126_)))))
                 (_E8997690126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8997690126_))
                                           (_E8997690126_))))
                                   (_E8997690126_))))
                            (_E8997490186_
                             (lambda ()
                               (let ((_id90179_ _e8997290004_))
                                 (if (gx#identifier? _id90179_)
                                     (let ((_$e90181_
                                            (gx#core-resolve-identifier__1
                                             _id90179_
                                             (gx#current-export-expander-phi))))
                                       (if _$e90181_
                                           ((lambda (_bind90184_)
                                              (_K89969_
                                               _rest89970_
                                               (cons (_make-export__0__9319393196_
                                                      _bind90184_)
                                                     _r89971_)))
                                            _$e90181_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89815_
                                            _hd89968_)))
                                     (_E8997590175_)))))
                            (_E8997390250_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8997290004_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx90190_
                                               (gx#current-expander-context))
                                              (_current-phi90192_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx90194_
                                               (gx#core-context-shift
                                                _current-ctx90190_
                                                _current-phi90192_))
                                              (_phi-bind90196_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx90194_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp90199_ ((_bind-rest90201_
                                                          _phi-bind90196_)
                                                         (_set90202_ '()))
                                           (let* ((_bind-rest9020390213_
                                                   _bind-rest90201_)
                                                  (_else9020590221_
                                                   (lambda ()
                                                     (_K89969_
                                                      _rest89970_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi90192_
                                                             _set90202_)
                                                            _r89971_))))
                                                  (_K9020790231_
                                                   (lambda (_bind-rest90224_
                                                            _bind90225_
                                                            _key90226_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind90225_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind90225_))
                                                         (_lp90199_
                                                          _bind-rest90224_
                                                          _set90202_)
                                                         (_lp90199_
                                                          _bind-rest90224_
                                                          (cons (_make-export__2__9319593198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind90225_
                         _current-phi90192_
                         _current-ctx90190_)
                        _set90202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9020390213_)
                                                 (let ((_hd9020890234_
                                                        (##car _bind-rest9020390213_))
                                                       (_tl9020990236_
                                                        (##cdr _bind-rest9020390213_)))
                                                   (if (##pair? _hd9020890234_)
                                                       (let ((_hd9021090239_
                                                              (##car _hd9020890234_))
                                                             (_tl9021190241_
                                                              (##cdr _hd9020890234_)))
                                                         (let* ((_key90244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9021090239_)
                        (_bind90246_ _tl9021190241_)
                        (_bind-rest90248_ _tl9020990236_))
                   (_K9020790231_ _bind-rest90248_ _bind90246_ _key90244_)))
               (_else9020590221_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9020590221_)))))
                                       (_E8997490186_))
                                   (_E8997490186_)))))
                       (_E8997390250_))))
                  (_export-imports89820_
                   (lambda (_src89844_ _r89845_)
                     (letrec* ((_current-ctx89847_
                                (gx#current-expander-context))
                               (_current-phi89848_
                                (gx#current-export-expander-phi))
                               (_import->export89849_
                                (lambda (_in89930_)
                                  (let* ((_in8993189939_ _in89930_)
                                         (_E8993389943_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8993189939_)))
                                         (_K8993489950_
                                          (lambda (_phi89946_
                                                   _key89947_
                                                   _out89948_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89847_
                                             _key89947_
                                             _phi89946_
                                             _key89947_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8993189939_
                                         'gx#module-import::t)
                                        (let* ((_e8993589953_
                                                (##unchecked-structure-ref
                                                 _in8993189939_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89956_ _e8993589953_)
                                               (_e8993689958_
                                                (##unchecked-structure-ref
                                                 _in8993189939_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89961_ _e8993689958_)
                                               (_e8993789963_
                                                (##unchecked-structure-ref
                                                 _in8993189939_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89966_ _e8993789963_))
                                          (_K8993489950_
                                           _phi89966_
                                           _key89961_
                                           _out89956_))
                                        (_E8993389943_)))))
                               (_fold-e89850_
                                (lambda (_in89852_ _r89853_)
                                  (let* ((_in8985489868_ _in89852_)
                                         (_else8985789876_
                                          (lambda () _r89853_)))
                                    (let ((_K8986389912_
                                           (lambda (_phi89908_
                                                    _key89909_
                                                    _out89910_)
                                             (if (and (fx= _phi89908_
                                                           _current-phi89848_)
                                                      (eq? _src89844_
                                                           (##unchecked-structure-ref
                                                            _out89910_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89849_
                                                        _in89852_)
                                                       _r89853_)
                                                 _r89853_)))
                                          (_K8985989887_
                                           (lambda (_imports89880_
                                                    _phi89881_
                                                    _ctx89882_)
                                             (if (and (fx= _phi89881_
                                                           _current-phi89848_)
                                                      (eq? _src89844_
                                                           _ctx89882_))
                                                 (foldl1 (lambda (_in89884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89885_)
                   (cons (_import->export89849_ _in89884_) _r89885_))
                 _r89853_
                 _imports89880_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89853_))))
                                      (let ((_try-match8985689905_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8985489868_
                                                    'gx#import-set::t)
                                                   (let* ((_e8986089890_
                                                           (##unchecked-structure-ref
                                                            _in8985489868_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8986189895_
                                                           (##unchecked-structure-ref
                                                            _in8985489868_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8986289900_
                                                           (##unchecked-structure-ref
                                                            _in8985489868_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89893_
                                                            _e8986089890_)
                                                           (_phi89898_
                                                            _e8986189895_)
                                                           (_imports89903_
                                                            _e8986289900_))
                                                       (_K8985989887_
                                                        _imports89903_
                                                        _phi89898_
                                                        _ctx89893_)))
                                                   (_else8985789876_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8985489868_
                                             'gx#module-import::t)
                                            (let* ((_e8986489915_
                                                    (##unchecked-structure-ref
                                                     _in8985489868_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8986589920_
                                                    (##unchecked-structure-ref
                                                     _in8985489868_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8986689925_
                                                    (##unchecked-structure-ref
                                                     _in8985489868_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89918_ _e8986489915_)
                                                    (_key89923_ _e8986589920_)
                                                    (_phi89928_ _e8986689925_))
                                                (_K8986389912_
                                                 _phi89928_
                                                 _key89923_
                                                 _out89918_)))
                                            (_try-match8985689905_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89844_
                              _current-phi89848_
                              (foldl1 _fold-e89850_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89847_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89845_))))
                  (_export!89821_
                   (lambda (_rbody89834_)
                     (letrec* ((_current-ctx89836_
                                (gx#current-expander-context))
                               (_fold-e89837_
                                (lambda (_out89841_ _r89842_)
                                  (if (##structure-direct-instance-of?
                                       _out89841_
                                       'gx#module-export::t)
                                      (cons _out89841_ _r89842_)
                                      (if (##structure-direct-instance-of?
                                           _out89841_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89842_
                                                  (##unchecked-structure-ref
                                                   _out89841_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89842_)))))
                       (let ((_body89839_ (reverse _rbody89834_)))
                         (##unchecked-structure-set!
                          _current-ctx89836_
                          (foldl1 _fold-e89837_
                                  (##unchecked-structure-ref
                                   _current-ctx89836_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89839_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89839_))))
                  (_expanded-export?89822_
                   (lambda (_e89829_)
                     (let ((_$e89831_
                            (##structure-direct-instance-of?
                             _e89829_
                             'gx#module-export::t)))
                       (if _$e89831_
                           _$e89831_
                           (##structure-direct-instance-of?
                            _e89829_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89816_)
              (let ((_rbody89827_
                     (gx#core-expand-import/export
                      _stx89815_
                      _expanded-export?89822_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189819_)))
                (if _internal-expand?89816_
                    (reverse _rbody89827_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89821_ _rbody89827_))
                     (gx#stx-source _stx89815_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89815_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89815_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx90300_)
        (let ((_internal-expand?90302_ '#f))
          (gx#core-expand-export%__% _stx90300_ _internal-expand?90302_))))
    (define gx#core-expand-export%
      (lambda _g93266_
        (let ((_g93265_ (##length _g93266_)))
          (cond ((##fx= _g93265_ 1)
                 (apply (lambda (_stx90300_)
                          (gx#core-expand-export%__0 _stx90300_))
                        _g93266_))
                ((##fx= _g93265_ 2)
                 (apply (lambda (_stx90304_ _internal-expand?90305_)
                          (gx#core-expand-export%__%
                           _stx90304_
                           _internal-expand?90305_))
                        _g93266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g93266_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89812_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89812_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89782_)
        (let* ((_e8978389790_ _stx89782_)
               (_E8978589794_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8978389790_)))
               (_E8978489808_
                (lambda ()
                  (if (gx#stx-pair? _e8978389790_)
                      (let ((_e8978689798_ (gx#syntax-e _e8978389790_)))
                        (let ((_hd8978789801_ (##car _e8978689798_))
                              (_tl8978889803_ (##cdr _e8978689798_)))
                          (let ((_body89806_ _tl8978889803_))
                            (if (gx#identifier-list? _body89806_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89806_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89806_))
                                   (gx#stx-source _stx89782_)))
                                (_E8978589794_)))))
                      (_E8978589794_)))))
          (_E8978489808_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89748_ _private?89749_ _phi89750_ _ctx89751_)
        (gx#core-bind-syntax!__%
         _id89748_
         ((if _private?89749_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89748_))
         _private?89749_
         _phi89750_
         _ctx89751_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89756_)
        (let* ((_private?89758_ '#f)
               (_phi89760_ (gx#current-expander-phi))
               (_ctx89762_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89756_
           _private?89758_
           _phi89760_
           _ctx89762_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89764_ _private?89765_)
        (let* ((_phi89767_ (gx#current-expander-phi))
               (_ctx89769_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89764_
           _private?89765_
           _phi89767_
           _ctx89769_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89771_ _private?89772_ _phi89773_)
        (let ((_ctx89775_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89771_
           _private?89772_
           _phi89773_
           _ctx89775_))))
    (define gx#core-bind-feature!
      (lambda _g93268_
        (let ((_g93267_ (##length _g93268_)))
          (cond ((##fx= _g93267_ 1)
                 (apply (lambda (_id89756_)
                          (gx#core-bind-feature!__0 _id89756_))
                        _g93268_))
                ((##fx= _g93267_ 2)
                 (apply (lambda (_id89764_ _private?89765_)
                          (gx#core-bind-feature!__1 _id89764_ _private?89765_))
                        _g93268_))
                ((##fx= _g93267_ 3)
                 (apply (lambda (_id89771_ _private?89772_ _phi89773_)
                          (gx#core-bind-feature!__2
                           _id89771_
                           _private?89772_
                           _phi89773_))
                        _g93268_))
                ((##fx= _g93267_ 4)
                 (apply (lambda (_id89777_
                                 _private?89778_
                                 _phi89779_
                                 _ctx89780_)
                          (gx#core-bind-feature!__%
                           _id89777_
                           _private?89778_
                           _phi89779_
                           _ctx89780_))
                        _g93268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g93268_))))))))
