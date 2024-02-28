(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709159707)
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
      (lambda _$args93200_
        (apply make-instance gx#module-import::t _$args93200_)))
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
      (lambda _$args93197_
        (apply make-instance gx#module-export::t _$args93197_)))
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
      (lambda _$args93194_
        (apply make-instance gx#import-set::t _$args93194_)))
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
      (lambda _$args93191_
        (apply make-instance gx#export-set::t _$args93191_)))
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
      (lambda _$args93188_
        (apply make-instance gx#import-expander::t _$args93188_)))
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
      (lambda _$args93185_
        (apply make-instance gx#export-expander::t _$args93185_)))
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
      (lambda _$args93182_
        (apply make-instance gx#import-export-expander::t _$args93182_)))
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
      (lambda (_path93179_ _fun93180_)
        (call-with-input-file
         (cons 'path: (cons _path93179_ gx#source-file-settings))
         _fun93180_)))
    (define gx#module-context:::init!
      (lambda (_self93173_ _id93174_ _super93175_ _ns93176_ _path93177_)
        (if (##fx< '11 (##structure-length _self93173_))
            (begin
              (##unchecked-structure-set!
               _self93173_
               _id93174_
               '1
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               (make-hash-table-eq)
               '2
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               _super93175_
               '3
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               '#f
               '4
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               '#f
               '5
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               _ns93176_
               '6
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               _path93177_
               '7
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               '()
               '8
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               '()
               '9
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               '#f
               '10
               (##structure-type _self93173_)
               '#f)
              (##unchecked-structure-set!
               _self93173_
               '#f
               '11
               (##structure-type _self93173_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93173_
                   '11
                   (##vector-length _self93173_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93017_ _ctx93018_ _root93019_)
        (let ((_super93027_
               (let ((_$e93021_ _root93019_))
                 (if _$e93021_
                     _$e93021_
                     (let ((_$e93024_ (gx#core-context-root__0)))
                       (if _$e93024_
                           _$e93024_
                           (let ((__obj93242
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor93243
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj93242
                                     ':init!)))
                               (if __constructor93243
                                   (__constructor93243 __obj93242)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj93242)))))))
          (if _ctx93018_
              (let ((_id93030_
                     (##structure-ref
                      _ctx93018_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93031_
                     (##structure-ref _ctx93018_ '7 gx#module-context::t '#f))
                    (_in93032_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93018_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93033_
                     (make-promise (lambda () (gx#eval-module _ctx93018_)))))
                (if (##fx< '8 (##structure-length _self93017_))
                    (begin
                      (##unchecked-structure-set!
                       _self93017_
                       _id93030_
                       '1
                       (##structure-type _self93017_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93017_
                       (make-hash-table-eq 'size: (length _in93032_))
                       '2
                       (##structure-type _self93017_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93017_
                       _super93027_
                       '3
                       (##structure-type _self93017_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93017_
                       '#f
                       '4
                       (##structure-type _self93017_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93017_
                       '#f
                       '5
                       (##structure-type _self93017_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93017_
                       _path93031_
                       '6
                       (##structure-type _self93017_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93017_
                       _in93032_
                       '7
                       (##structure-type _self93017_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93017_
                       _e93033_
                       '8
                       (##structure-type _self93017_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93017_
                           '8
                           (##vector-length _self93017_)))
                (for-each
                 (lambda (_g9303493036_)
                   (gx#core-bind-weak-import!__% _g9303493036_ _self93017_))
                 _in93032_))
              (if (##fx< '8 (##structure-length _self93017_))
                  (begin
                    (##unchecked-structure-set!
                     _self93017_
                     '#f
                     '1
                     (##structure-type _self93017_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93017_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93017_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93017_
                     _super93027_
                     '3
                     (##structure-type _self93017_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93017_
                     '#f
                     '4
                     (##structure-type _self93017_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93017_
                     '#f
                     '5
                     (##structure-type _self93017_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93017_
                     '#f
                     '6
                     (##structure-type _self93017_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93017_
                     '()
                     '7
                     (##structure-type _self93017_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93017_
                     '#f
                     '8
                     (##structure-type _self93017_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93017_
                         '8
                         (##vector-length _self93017_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93042_ _ctx93043_)
        (let ((_root93045_ '#f))
          (gx#prelude-context:::init!__% _self93042_ _ctx93043_ _root93045_))))
    (define gx#prelude-context:::init!
      (lambda _g93249_
        (let ((_g93248_ (##length _g93249_)))
          (cond ((##fx= _g93248_ 2)
                 (apply (lambda (_self93042_ _ctx93043_)
                          (gx#prelude-context:::init!__0
                           _self93042_
                           _ctx93043_))
                        _g93249_))
                ((##fx= _g93248_ 3)
                 (apply (lambda (_self93047_ _ctx93048_ _root93049_)
                          (gx#prelude-context:::init!__%
                           _self93047_
                           _ctx93048_
                           _root93049_))
                        _g93249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g93249_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92891_ _e92892_)
        (if (##fx< '3 (##structure-length _self92891_))
            (begin
              (##unchecked-structure-set!
               _self92891_
               _e92892_
               '1
               (##structure-type _self92891_)
               '#f)
              (##unchecked-structure-set!
               _self92891_
               (gx#current-expander-context)
               '2
               (##structure-type _self92891_)
               '#f)
              (##unchecked-structure-set!
               _self92891_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92891_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92891_
                   '3
                   (##vector-length _self92891_)))))
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
      (lambda (_g9251792520_ _g9251892522_)
        (gx#core-apply-user-expander__%
         _g9251792520_
         _g9251892522_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9238892391_ _g9238992393_)
        (gx#core-apply-user-expander__%
         _g9238892391_
         _g9238992393_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx92259_)
        (let* ((_path92261_
                (##structure-ref _ctx92259_ '7 gx#module-context::t '#f))
               (_path92263_
                (if (pair? _path92261_) (last _path92261_) _path92261_)))
          (if (string? _path92263_) _path92263_ '#f))))
    (define gx#import-module__%
      (lambda (_path92235_ _reload?92236_ _eval?92237_)
        (let ((_ctx92239_
               ((gx#current-expander-module-import)
                _path92235_
                _reload?92236_)))
          (if (and _ctx92239_ _eval?92237_)
              (gx#eval-module _ctx92239_)
              '#!void)
          _ctx92239_)))
    (define gx#import-module__0
      (lambda (_path92244_)
        (let* ((_reload?92246_ '#f) (_eval?92248_ '#f))
          (gx#import-module__% _path92244_ _reload?92246_ _eval?92248_))))
    (define gx#import-module__1
      (lambda (_path92250_ _reload?92251_)
        (let ((_eval?92253_ '#f))
          (gx#import-module__% _path92250_ _reload?92251_ _eval?92253_))))
    (define gx#import-module
      (lambda _g93251_
        (let ((_g93250_ (##length _g93251_)))
          (cond ((##fx= _g93250_ 1)
                 (apply (lambda (_path92244_)
                          (gx#import-module__0 _path92244_))
                        _g93251_))
                ((##fx= _g93250_ 2)
                 (apply (lambda (_path92250_ _reload?92251_)
                          (gx#import-module__1 _path92250_ _reload?92251_))
                        _g93251_))
                ((##fx= _g93250_ 3)
                 (apply (lambda (_path92255_ _reload?92256_ _eval?92257_)
                          (gx#import-module__%
                           _path92255_
                           _reload?92256_
                           _eval?92257_))
                        _g93251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g93251_))))))
    (define gx#eval-module
      (lambda (_mod92232_) ((gx#current-expander-module-eval) _mod92232_)))
    (define gx#core-eval-module
      (lambda (_obj92217_)
        (letrec ((_force-e92219_
                  (lambda (_getf92228_ _e92229_)
                    (call-with-parameters
                     (lambda () (force (_getf92228_ _e92229_)))
                     gx#current-expander-context
                     _e92229_
                     gx#current-expander-phi
                     '0))))
          (let _recur92221_ ((_e92223_ _obj92217_))
            (if (##structure-instance-of? _e92223_ 'gx#module-context::t)
                (begin
                  (let ((_$e92225_ (gx#core-context-prelude__% _e92223_)))
                    (if _$e92225_ (_recur92221_ _$e92225_) '#!void))
                  (_force-e92219_ gx#module-context-e _e92223_))
                (if (##structure-instance-of? _e92223_ 'gx#prelude-context::t)
                    (_force-e92219_ gx#prelude-context-e _e92223_)
                    (if (gx#stx-string? _e92223_)
                        (_recur92221_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e92223_)))
                        (if (gx#core-library-module-path? _e92223_)
                            (_recur92221_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e92223_)))
                            (error '"Cannot eval module" _obj92217_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx92200_)
        (let _lp92202_ ((_e92204_ _ctx92200_))
          (if (or (##structure-instance-of? _e92204_ 'gx#module-context::t)
                  (##structure-instance-of? _e92204_ 'gx#local-context::t))
              (_lp92202_
               (##unchecked-structure-ref _e92204_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e92204_ 'gx#prelude-context::t)
                  _e92204_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx92213_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx92213_))))
    (define gx#core-context-prelude
      (lambda _g93253_
        (let ((_g93252_ (##length _g93253_)))
          (cond ((##fx= _g93252_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g93253_))
                ((##fx= _g93252_ 1)
                 (apply (lambda (_ctx92215_)
                          (gx#core-context-prelude__% _ctx92215_))
                        _g93253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g93253_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx92190_)
        (let* ((_ht92192_ (gx#current-expander-module-registry))
               (_$e92194_ (hash-get _ht92192_ _ctx92190_)))
          (if _$e92194_
              (values _$e92194_)
              (let ((_pre92197_
                     (let ((__obj93244
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
                       (gx#prelude-context:::init! __obj93244 _ctx92190_)
                       __obj93244)))
                (hash-put! _ht92192_ _ctx92190_ _pre92197_)
                _pre92197_)))))
    (define gx#core-import-module__%
      (lambda (_rpath92071_ _reload?92072_)
        (letrec ((_import-source92074_
                  (lambda (_path92159_)
                    (if (member _path92159_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path92159_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g93254_ (gx#core-read-module _path92159_)))
                         (begin
                           (let ((_g93255_
                                  (if (##values? _g93254_)
                                      (##vector-length _g93254_)
                                      1)))
                             (if (not (##fx= _g93255_ 4))
                                 (error "Context expects 4 values" _g93255_)))
                           (let ((_pre92162_ (##vector-ref _g93254_ 0))
                                 (_id92163_ (##vector-ref _g93254_ 1))
                                 (_ns92164_ (##vector-ref _g93254_ 2))
                                 (_body92165_ (##vector-ref _g93254_ 3)))
                             (let* ((_prelude92170_
                                     (if (##structure-instance-of?
                                          _pre92162_
                                          'gx#prelude-context::t)
                                         _pre92162_
                                         (if (##structure-instance-of?
                                              _pre92162_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre92162_)
                                             (if (string? _pre92162_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre92162_))
                                                 (if (not _pre92162_)
                                                     (let ((_$e92167_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e92167_
                                                           _$e92167_
                                                           (let ((__obj93245
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
                     (gx#prelude-context:::init! __obj93245 '#f)
                     __obj93245)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath92071_
                                                            _pre92162_))))))
                                    (_ctx92172_
                                     (let ((__obj93246
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
                                        __obj93246
                                        _id92163_
                                        _prelude92170_
                                        _ns92164_
                                        _path92159_)
                                       __obj93246))
                                    (_body92174_
                                     (gx#core-expand-module-begin
                                      _body92165_
                                      _ctx92172_))
                                    (_body92176_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body92174_)
                                      _path92159_
                                      _ctx92172_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx92172_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body92176_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx92172_
                                _body92176_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path92159_
                                _ctx92172_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id92163_
                                _ctx92172_)
                               _ctx92172_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path92159_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule92075_
                  (lambda (_rpath92087_)
                    (let* ((_rpath9208892095_ _rpath92087_)
                           (_E9209092099_
                            (lambda ()
                              (error '"No clause matching" _rpath9208892095_)))
                           (_K9209192147_
                            (lambda (_refs92102_ _origin92103_)
                              (let ((_ctx92105_
                                     (if _origin92103_
                                         (gx#core-import-module__%
                                          _origin92103_
                                          _reload?92072_)
                                         (gx#current-expander-context))))
                                (let _lp92107_ ((_rest92109_ _refs92102_)
                                                (_ctx92110_ _ctx92105_))
                                  (let* ((_rest9211192119_ _rest92109_)
                                         (_else9211392127_
                                          (lambda () _ctx92110_))
                                         (_K9211592135_
                                          (lambda (_rest92130_ _id92131_)
                                            (let ((_bind92133_
                                                   (gx#resolve-identifier__%
                                                    _id92131_
                                                    '0
                                                    _ctx92110_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind92133_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind92133_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp92107_
                                                   _rest92130_
                                                   (##unchecked-structure-ref
                                                    _bind92133_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath92087_
                                                         _id92131_
                                                         _bind92133_))))))
                                    (if (##pair? _rest9211192119_)
                                        (let ((_hd9211692138_
                                               (##car _rest9211192119_))
                                              (_tl9211792140_
                                               (##cdr _rest9211192119_)))
                                          (let* ((_id92143_ _hd9211692138_)
                                                 (_rest92145_ _tl9211792140_))
                                            (_K9211592135_
                                             _rest92145_
                                             _id92143_)))
                                        (_else9211392127_))))))))
                      (if (##pair? _rpath9208892095_)
                          (let ((_hd9209292150_ (##car _rpath9208892095_))
                                (_tl9209392152_ (##cdr _rpath9208892095_)))
                            (let* ((_origin92155_ _hd9209292150_)
                                   (_refs92157_ _tl9209392152_))
                              (_K9209192147_ _refs92157_ _origin92155_)))
                          (_E9209092099_))))))
          (let ((_$e92077_
                 (if (not _reload?92072_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath92071_)
                     '#f)))
            (if _$e92077_
                (values _$e92077_)
                (if (list? _rpath92071_)
                    (_import-submodule92075_ _rpath92071_)
                    (if (gx#core-library-module-path? _rpath92071_)
                        (let ((_ctx92080_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath92071_)
                                _reload?92072_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath92071_
                           _ctx92080_)
                          _ctx92080_)
                        (let* ((_npath92082_ (path-normalize _rpath92071_))
                               (_$e92084_
                                (if (not _reload?92072_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath92082_)
                                    '#f)))
                          (if _$e92084_
                              (values _$e92084_)
                              (_import-source92074_ _npath92082_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath92183_)
        (let ((_reload?92185_ '#f))
          (gx#core-import-module__% _rpath92183_ _reload?92185_))))
    (define gx#core-import-module
      (lambda _g93257_
        (let ((_g93256_ (##length _g93257_)))
          (cond ((##fx= _g93256_ 1)
                 (apply (lambda (_rpath92183_)
                          (gx#core-import-module__0 _rpath92183_))
                        _g93257_))
                ((##fx= _g93256_ 2)
                 (apply (lambda (_rpath92187_ _reload?92188_)
                          (gx#core-import-module__%
                           _rpath92187_
                           _reload?92188_))
                        _g93257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g93257_))))))
    (define gx#core-read-module
      (lambda (_path92060_)
        (with-catch
         (lambda (_exn92062_)
           (if (and (datum-parsing-exception? _exn92062_)
                    (eq? (datum-parsing-exception-filepos _exn92062_) '0))
               (gx#core-read-module/lang _path92060_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path92060_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9206492066_)
                      (display-exception _exn92062_ _g9206492066_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path92060_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91923_)
        (let _lp91925_ ((_body91927_ (read-syntax-from-file _path91923_))
                        (_pre91928_ '#f)
                        (_ns91929_ '#f)
                        (_pkg91930_ '#f))
          (let* ((_e9193191955_ _body91927_)
                 (_E9194791977_
                  (lambda ()
                    (let ((_g93258_
                           (if _pkg91930_
                               (values _pre91928_ _ns91929_ _pkg91930_)
                               (gx#core-read-module-package
                                _path91923_
                                _pre91928_
                                _ns91929_))))
                      (begin
                        (let ((_g93259_
                               (if (##values? _g93258_)
                                   (##vector-length _g93258_)
                                   1)))
                          (if (not (##fx= _g93259_ 3))
                              (error "Context expects 3 values" _g93259_)))
                        (let ((_pre91959_ (##vector-ref _g93258_ 0))
                              (_ns91960_ (##vector-ref _g93258_ 1))
                              (_pkg91961_ (##vector-ref _g93258_ 2)))
                          (let* ((_prelude91963_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91959_)
                                      (gx#syntax-local-e__0 _pre91959_)
                                      (if (gx#core-library-module-path?
                                           _pre91959_)
                                          (gx#core-resolve-library-module-path
                                           _pre91959_)
                                          (if (gx#stx-string? _pre91959_)
                                              (gx#core-resolve-module-path__%
                                               _pre91959_
                                               _path91923_)
                                              (gx#stx-e _pre91959_)))))
                                 (_path-id91965_
                                  (gx#core-module-path->namespace _path91923_))
                                 (_pkg-id91967_
                                  (if _pkg91961_
                                      (string-append
                                       _pkg91961_
                                       '"/"
                                       _path-id91965_)
                                      _path-id91965_))
                                 (_module-id91969_
                                  (string->symbol _pkg-id91967_))
                                 (_module-ns91974_
                                  (if (eq? _ns91960_ '#!void)
                                      '#f
                                      (let ((_$e91971_ _ns91960_))
                                        (if _$e91971_
                                            _$e91971_
                                            _pkg-id91967_)))))
                            (values _prelude91963_
                                    _module-id91969_
                                    _module-ns91974_
                                    _body91927_)))))))
                 (_E9194092006_
                  (lambda ()
                    (if (gx#stx-pair? _e9193191955_)
                        (let ((_e9194891981_ (gx#syntax-e _e9193191955_)))
                          (let ((_hd9194991984_ (##car _e9194891981_))
                                (_tl9195091986_ (##cdr _e9194891981_)))
                            (if (eq? (gx#stx-e _hd9194991984_) 'package:)
                                (if (gx#stx-pair? _tl9195091986_)
                                    (let ((_e9195191989_
                                           (gx#syntax-e _tl9195091986_)))
                                      (let ((_hd9195291992_
                                             (##car _e9195191989_))
                                            (_tl9195391994_
                                             (##cdr _e9195191989_)))
                                        (let* ((_pkg91997_ _hd9195291992_)
                                               (_rest91999_ _tl9195391994_))
                                          (if '#t
                                              (let ((_pkg92004_
                                                     (if (gx#identifier?
                                                          _pkg91997_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91997_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91997_)
                         (gx#stx-false? _pkg91997_))
                     (gx#stx-e _pkg91997_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91997_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91925_
                                                 _rest91999_
                                                 _pre91928_
                                                 _ns91929_
                                                 _pkg92004_))
                                              (_E9194791977_)))))
                                    (_E9194791977_))
                                (_E9194791977_))))
                        (_E9194791977_))))
                 (_E9193392032_
                  (lambda ()
                    (if (gx#stx-pair? _e9193191955_)
                        (let ((_e9194192010_ (gx#syntax-e _e9193191955_)))
                          (let ((_hd9194292013_ (##car _e9194192010_))
                                (_tl9194392015_ (##cdr _e9194192010_)))
                            (if (eq? (gx#stx-e _hd9194292013_) 'namespace:)
                                (if (gx#stx-pair? _tl9194392015_)
                                    (let ((_e9194492018_
                                           (gx#syntax-e _tl9194392015_)))
                                      (let ((_hd9194592021_
                                             (##car _e9194492018_))
                                            (_tl9194692023_
                                             (##cdr _e9194492018_)))
                                        (let* ((_ns92026_ _hd9194592021_)
                                               (_rest92028_ _tl9194692023_))
                                          (if '#t
                                              (let ((_ns92030_
                                                     (if (gx#identifier?
                                                          _ns92026_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92026_))
                                                         (if (gx#stx-string?
                                                              _ns92026_)
                                                             (gx#stx-e
                                                              _ns92026_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92026_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92026_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91925_
                                                 _rest92028_
                                                 _pre91928_
                                                 _ns92030_
                                                 _pkg91930_))
                                              (_E9194092006_)))))
                                    (_E9194092006_))
                                (_E9194092006_))))
                        (_E9194092006_))))
                 (_E9193292056_
                  (lambda ()
                    (if (gx#stx-pair? _e9193191955_)
                        (let ((_e9193492036_ (gx#syntax-e _e9193191955_)))
                          (let ((_hd9193592039_ (##car _e9193492036_))
                                (_tl9193692041_ (##cdr _e9193492036_)))
                            (if (eq? (gx#stx-e _hd9193592039_) 'prelude:)
                                (if (gx#stx-pair? _tl9193692041_)
                                    (let ((_e9193792044_
                                           (gx#syntax-e _tl9193692041_)))
                                      (let ((_hd9193892047_
                                             (##car _e9193792044_))
                                            (_tl9193992049_
                                             (##cdr _e9193792044_)))
                                        (let* ((_prelude92052_ _hd9193892047_)
                                               (_rest92054_ _tl9193992049_))
                                          (if '#t
                                              (_lp91925_
                                               _rest92054_
                                               _prelude92052_
                                               _ns91929_
                                               _pkg91930_)
                                              (_E9193392032_)))))
                                    (_E9193392032_))
                                (_E9193392032_))))
                        (_E9193392032_)))))
            (_E9193292056_)))))
    (define gx#core-read-module/lang
      (lambda (_path91750_)
        (letrec ((_default-read-module-body91752_
                  (lambda (_inp91915_)
                    (let _lp91917_ ((_body91919_ '()))
                      (let ((_next91921_ (read-syntax _inp91915_)))
                        (if (eof-object? _next91921_)
                            (reverse _body91919_)
                            (_lp91917_ (cons _next91921_ _body91919_)))))))
                 (_read-body91753_
                  (lambda (_inp91834_
                           _pre91835_
                           _ns91836_
                           _pkg91837_
                           _args91838_)
                    (let ((_g93260_
                           (if _pkg91837_
                               (values _pre91835_ _ns91836_ _pkg91837_)
                               (gx#core-read-module-package
                                _path91750_
                                _pre91835_
                                _ns91836_))))
                      (begin
                        (let ((_g93261_
                               (if (##values? _g93260_)
                                   (##vector-length _g93260_)
                                   1)))
                          (if (not (##fx= _g93261_ 3))
                              (error "Context expects 3 values" _g93261_)))
                        (let ((_pre91840_ (##vector-ref _g93260_ 0))
                              (_ns91841_ (##vector-ref _g93260_ 1))
                              (_pkg91842_ (##vector-ref _g93260_ 2)))
                          (let* ((_prelude91844_
                                  (gx#import-module__0 _pre91840_))
                                 (_read-module-body91898_
                                  (let ((_$e91890_
                                         (find (lambda (_e9184591847_)
                                                 (let* ((_g9184991859_
                                                         _e9184591847_)
                                                        (_else9185191867_
                                                         (lambda () '#f))
                                                        (_K9185391871_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9184991859_
                                                        'gx#module-export::t)
                                                       (let* ((_e9185491874_
                                                               (##unchecked-structure-ref
                                                                _g9184991859_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9185591877_
                                                               (##unchecked-structure-ref
                                                                _g9184991859_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9185691880_
                                                               (##unchecked-structure-ref
                                                                _g9184991859_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9185691880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9185791883_
                            (##unchecked-structure-ref
                             _g9184991859_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9188591887_)
                              (eq? _g9188591887_ 'read-module-body))
                            _e9185791883_)
                           (_K9185391871_)
                           (_else9185191867_)))
                     (_else9185191867_)))
               (_else9185191867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91844_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91890_
                                        ((lambda (_xport91893_)
                                           (let ((_proc91896_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91893_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91896_)
                                                 _proc91896_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91750_
                                                  _pre91840_
                                                  _proc91896_))))
                                         _$e91890_)
                                        _default-read-module-body91752_)))
                                 (_path-id91900_
                                  (gx#core-module-path->namespace _path91750_))
                                 (_pkg-id91902_
                                  (if _pkg91842_
                                      (string-append
                                       _pkg91842_
                                       '"/"
                                       _path-id91900_)
                                      _path-id91900_))
                                 (_module-id91904_
                                  (string->symbol _pkg-id91902_))
                                 (_module-ns91909_
                                  (let ((_$e91906_ _ns91841_))
                                    (if _$e91906_ _$e91906_ _pkg-id91902_)))
                                 (_body91912_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91898_ _inp91834_))
                                   gx#current-module-reader-path
                                   _path91750_
                                   gx#current-module-reader-args
                                   _args91838_)))
                            (values _prelude91844_
                                    _module-id91904_
                                    _module-ns91909_
                                    _body91912_)))))))
                 (_string-e91754_
                  (lambda (_obj91831_ _what91832_)
                    (if (string? _obj91831_)
                        _obj91831_
                        (if (symbol? _obj91831_)
                            (symbol->string _obj91831_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91832_)
                             _path91750_
                             _obj91831_)))))
                 (_read-lang-args91755_
                  (lambda (_inp91786_ _args91787_)
                    (let* ((_args9178891796_ _args91787_)
                           (_else9179091804_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91750_)))
                           (_K9179291819_
                            (lambda (_args91807_ _prelude91808_)
                              (let* ((_pkg91810_
                                      (pgetq__0 'package: _args91807_))
                                     (_pkg91812_
                                      (if _pkg91810_
                                          (_string-e91754_
                                           _pkg91810_
                                           '"package")
                                          '#f))
                                     (_ns91814_
                                      (pgetq__0 'namespace: _args91807_))
                                     (_ns91816_
                                      (if _ns91814_
                                          (_string-e91754_
                                           _ns91814_
                                           '"namespace")
                                          '#f)))
                                (_read-body91753_
                                 _inp91786_
                                 _prelude91808_
                                 _ns91816_
                                 _pkg91812_
                                 _args91807_)))))
                      (if (##pair? _args9178891796_)
                          (let ((_hd9179391822_ (##car _args9178891796_))
                                (_tl9179491824_ (##cdr _args9178891796_)))
                            (let* ((_prelude91827_ _hd9179391822_)
                                   (_args91829_ _tl9179491824_))
                              (_K9179291819_ _args91829_ _prelude91827_)))
                          (_else9179091804_)))))
                 (_read-lang91756_
                  (lambda (_inp91761_)
                    (let* ((_head91763_ (read-line _inp91761_))
                           (_$e91765_ (string-index__0 _head91763_ '#\space)))
                      (if _$e91765_
                          ((lambda (_ix91768_)
                             (let ((_lang91770_
                                    (substring _head91763_ '0 _ix91768_)))
                               (if (equal? _lang91770_ '"#lang")
                                   (let* ((_rest91772_
                                           (substring
                                            _head91763_
                                            (fx+ _ix91768_ '1)
                                            (string-length _head91763_)))
                                          (_args91783_
                                           (with-catch
                                            (lambda (_g9177391775_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91750_
                                               _g9177391775_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91772_
                                               (lambda (_g9177891780_)
                                                 (read-all
                                                  _g9177891780_
                                                  read)))))))
                                     (_read-lang-args91755_
                                      _inp91761_
                                      _args91783_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91750_))))
                           _$e91765_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91750_)))))
                 (_read-e91757_
                  (lambda (_inp91759_)
                    (if (eq? (peek-char _inp91759_) '#\#)
                        (_read-lang91756_ _inp91759_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91750_)))))
          (gx#call-with-input-source-file _path91750_ _read-e91757_))))
    (define gx#core-read-module-package
      (lambda (_path91704_ _pre91705_ _ns91706_)
        (letrec ((_string-e91708_
                  (lambda (_e91748_)
                    (if (symbol? _e91748_)
                        (symbol->string _e91748_)
                        (if (string? _e91748_)
                            _e91748_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91748_))))))
          (let _lp91710_ ((_dir91712_ (path-directory _path91704_))
                          (_pkg-path91713_ '()))
            (let ((_gerbil.pkg91715_ (path-expand '"gerbil.pkg" _dir91712_)))
              (if (file-exists? _gerbil.pkg91715_)
                  (let ((_plist91717_
                         (gx#core-library-package-plist__% _dir91712_ '#t)))
                    (if (null? _plist91717_)
                        (let ((_pkg91719_
                               (if (not (null? _pkg-path91713_))
                                   (string-join _pkg-path91713_ '"/")
                                   '#f)))
                          (values _pre91705_ _ns91706_ _pkg91719_))
                        (if (list? _plist91717_)
                            (let* ((_root91721_
                                    (pgetq__0 'package: _plist91717_))
                                   (_pkg91725_
                                    (let ((_pkg-path91723_
                                           (if _root91721_
                                               (cons (_string-e91708_
                                                      _root91721_)
                                                     _pkg-path91713_)
                                               _pkg-path91713_)))
                                      (if (not (null? _pkg-path91723_))
                                          (string-join _pkg-path91723_ '"/")
                                          '#f)))
                                   (_ns91732_
                                    (let ((_ns91730_
                                           (let ((_$e91727_ _ns91706_))
                                             (if _$e91727_
                                                 _$e91727_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91717_)))))
                                      (if _ns91730_
                                          (_string-e91708_ _ns91730_)
                                          '#f)))
                                   (_pre91737_
                                    (let ((_$e91734_ _pre91705_))
                                      (if _$e91734_
                                          _$e91734_
                                          (pgetq__0 'prelude: _plist91717_)))))
                              (values _pre91737_ _ns91732_ _pkg91725_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91717_))))
                  (let ((_dir*91740_
                         (path-strip-trailing-directory-separator _dir91712_)))
                    (if (or (string-empty? _dir*91740_)
                            (equal? _dir91712_ _dir*91740_))
                        (values _pre91705_ _ns91706_ '#f)
                        (let ((_xpath91745_ (path-strip-directory _dir*91740_))
                              (_xdir91746_ (path-directory _dir*91740_)))
                          (_lp91710_
                           _xdir91746_
                           (cons _xpath91745_ _pkg-path91713_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91702_)
        (path-strip-extension (path-strip-directory _path91702_))))
    (define gx#core-module-path->id
      (lambda (_path91700_)
        (string->symbol (gx#core-module-path->namespace _path91700_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91679_ _rel91680_)
        (let* ((_path91682_ (gx#stx-e _stx-path91679_))
               (_path91684_
                (if (string-empty? (path-extension _path91682_))
                    (string-append _path91682_ '".ss")
                    _path91682_)))
          (gx#core-resolve-path__%
           _path91684_
           (let ((_$e91687_ (gx#stx-source _stx-path91679_)))
             (if _$e91687_ _$e91687_ _rel91680_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91693_)
        (let ((_rel91695_ '#f))
          (gx#core-resolve-module-path__% _stx-path91693_ _rel91695_))))
    (define gx#core-resolve-module-path
      (lambda _g93263_
        (let ((_g93262_ (##length _g93263_)))
          (cond ((##fx= _g93262_ 1)
                 (apply (lambda (_stx-path91693_)
                          (gx#core-resolve-module-path__0 _stx-path91693_))
                        _g93263_))
                ((##fx= _g93262_ 2)
                 (apply (lambda (_stx-path91697_ _rel91698_)
                          (gx#core-resolve-module-path__%
                           _stx-path91697_
                           _rel91698_))
                        _g93263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g93263_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91565_)
        (let* ((_spath91567_ (symbol->string (gx#stx-e _libpath91565_)))
               (_spath91569_
                (substring _spath91567_ '1 (string-length _spath91567_)))
               (_ext91571_ (path-extension _spath91569_))
               (_ssi91573_
                (if (string-empty? _ext91571_)
                    (string-append _spath91569_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91569_)
                     '".ssi")))
               (_srcs91577_
                (if (string-empty? _ext91571_)
                    (map (lambda (_ext91575_)
                           (string-append _spath91569_ _ext91575_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91569_ '()))))
          (let _lp91580_ ((_rest91582_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9158391592_ _rest91582_)
                   (_E9158691596_
                    (lambda ()
                      (error '"No clause matching" _rest9158391592_))))
              (let ((_K9158891666_
                     (lambda (_rest91607_ _dir91608_)
                       (letrec ((_resolve91610_
                                 (lambda (_ssi91622_ _srcs91623_)
                                   (let ((_compiled-path91625_
                                          (path-expand _ssi91622_ _dir91608_)))
                                     (if (file-exists? _compiled-path91625_)
                                         (path-normalize _compiled-path91625_)
                                         (let _lpr91627_ ((_rest-src91629_
                                                           _srcs91623_))
                                           (let* ((_rest-src9163091638_
                                                   _rest-src91629_)
                                                  (_else9163291646_
                                                   (lambda ()
                                                     (_lp91580_ _rest91607_)))
                                                  (_K9163491654_
                                                   (lambda (_rest-src91649_
                                                            _src91650_)
                                                     (let ((_src-path91652_
                                                            (path-expand
                                                             _src91650_
                                                             _dir91608_)))
                                                       (if (file-exists?
                                                            _src-path91652_)
                                                           (path-normalize
                                                            _src-path91652_)
                                                           (_lpr91627_
                                                            _rest-src91649_))))))
                                             (if (##pair? _rest-src9163091638_)
                                                 (let ((_hd9163591657_
                                                        (##car _rest-src9163091638_))
                                                       (_tl9163691659_
                                                        (##cdr _rest-src9163091638_)))
                                                   (let* ((_src91662_
                                                           _hd9163591657_)
                                                          (_rest-src91664_
                                                           _tl9163691659_))
                                                     (_K9163491654_
                                                      _rest-src91664_
                                                      _src91662_)))
                                                 (_else9163291646_)))))))))
                         (let ((_$e91612_
                                (gx#core-library-package-path-prefix
                                 _dir91608_)))
                           (if _$e91612_
                               ((lambda (_prefix91615_)
                                  (if (string-prefix?
                                       _prefix91615_
                                       _spath91569_)
                                      (let ((_ssi91619_
                                             (substring
                                              _ssi91573_
                                              (string-length _prefix91615_)
                                              (string-length _ssi91573_)))
                                            (_srcs91620_
                                             (map (lambda (_src91617_)
                                                    (substring
                                                     _src91617_
                                                     (string-length
                                                      _prefix91615_)
                                                     (string-length
                                                      _src91617_)))
                                                  _srcs91577_)))
                                        (_resolve91610_
                                         _ssi91619_
                                         _srcs91620_))
                                      (_lp91580_ _rest91607_)))
                                _$e91612_)
                               (_resolve91610_ _ssi91573_ _srcs91577_))))))
                    (_K9158791601_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91565_))))
                (let ((_try-match9158591604_
                       (lambda ()
                         (if (##null? _rest9158391592_)
                             (_K9158791601_)
                             (_E9158691596_)))))
                  (if (##pair? _rest9158391592_)
                      (let ((_tl9159091671_ (##cdr _rest9158391592_))
                            (_hd9158991669_ (##car _rest9158391592_)))
                        (let ((_dir91674_ _hd9158991669_)
                              (_rest91676_ _tl9159091671_))
                          (_K9158891666_ _rest91676_ _dir91674_)))
                      (_try-match9158591604_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91538_)
        (letrec ((_resolve91540_
                  (lambda (_path91557_ _base91558_)
                    (let ((_$e91560_ (string-rindex__0 _base91558_ '#\/)))
                      (if _$e91560_
                          ((lambda (_idx91563_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91558_ '0 _idx91563_)
                                '"/"
                                _path91557_))))
                           _$e91560_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91557_))))))))
          (let ((_spath91542_ (symbol->string (gx#stx-e _modpath91538_)))
                (_mod91543_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91543_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91538_))
            (let ((_mpath91545_
                   (symbol->string
                    (##structure-ref
                     _mod91543_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91547_ ((_spath91549_ _spath91542_)
                              (_mpath91550_ _mpath91545_))
                (if (string-prefix? '"../" _spath91549_)
                    (let ((_$e91552_ (string-rindex__0 _mpath91550_ '#\/)))
                      (if _$e91552_
                          ((lambda (_idx91555_)
                             (_lp91547_
                              (substring
                               _spath91549_
                               '3
                               (string-length _spath91549_))
                              (substring _mpath91550_ '0 _idx91555_)))
                           _$e91552_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91538_)))
                    (if (string-prefix? '"./" _spath91549_)
                        (_lp91547_
                         (substring
                          _spath91549_
                          '2
                          (string-length _spath91549_))
                         _mpath91550_)
                        (_resolve91540_ _spath91549_ _mpath91550_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91531_)
        (let ((_$e91533_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91531_))))
          (if _$e91533_
              ((lambda (_pkg91536_)
                 (string-append (symbol->string _pkg91536_) '"/"))
               _$e91533_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91503_ _exists?91504_)
        (let* ((_cache91506_ (gx#core-library-package-cache))
               (_$e91508_ (hash-get _cache91506_ _dir91503_)))
          (if _$e91508_
              (values _$e91508_)
              (let* ((_gerbil.pkg91511_ (path-expand '"gerbil.pkg" _dir91503_))
                     (_plist91518_
                      (if (or _exists?91504_ (file-exists? _gerbil.pkg91511_))
                          (let ((_e91516_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91511_
                                  read)))
                            (if (eof-object? _e91516_)
                                '()
                                (if (list? _e91516_)
                                    _e91516_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91511_
                                     _e91516_))))
                          '())))
                (hash-put! _cache91506_ _dir91503_ _plist91518_)
                _plist91518_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91524_)
        (let ((_exists?91526_ '#f))
          (gx#core-library-package-plist__% _dir91524_ _exists?91526_))))
    (define gx#core-library-package-plist
      (lambda _g93265_
        (let ((_g93264_ (##length _g93265_)))
          (cond ((##fx= _g93264_ 1)
                 (apply (lambda (_dir91524_)
                          (gx#core-library-package-plist__0 _dir91524_))
                        _g93265_))
                ((##fx= _g93264_ 2)
                 (apply (lambda (_dir91528_ _exists?91529_)
                          (gx#core-library-package-plist__%
                           _dir91528_
                           _exists?91529_))
                        _g93265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g93265_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91497_ (gx#current-expander-module-library-package-cache)))
          (if _$e91497_
              (values _$e91497_)
              (let ((_cache91500_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91500_)
                _cache91500_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91494_) (gx#core-special-module-path? _stx91494_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91492_) (gx#core-special-module-path? _stx91492_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91487_ _char91488_)
        (if (gx#identifier? _stx91487_)
            (if (interned-symbol? (gx#stx-e _stx91487_))
                (let ((_str91490_ (symbol->string (gx#stx-e _stx91487_))))
                  (if (fx> (string-length _str91490_) '1)
                      (eq? (string-ref _str91490_ '0) _char91488_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91481_)
        (gx#core-bound-identifier?__%
         _stx91481_
         (lambda (_g9148291484_)
           (gx#expander-binding?__% _g9148291484_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91475_)
        (gx#core-bound-identifier?__%
         _stx91475_
         (lambda (_g9147691478_)
           (gx#expander-binding?__% _g9147691478_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91462_)
        (letrec ((_module-prelude?91464_
                  (lambda (_e91470_)
                    (let ((_$e91472_
                           (##structure-instance-of?
                            _e91470_
                            'gx#module-context::t)))
                      (if _$e91472_
                          _$e91472_
                          (##structure-instance-of?
                           _e91470_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91462_
           (lambda (_g9146591467_)
             (gx#expander-binding?__%
              _g9146591467_
              _module-prelude?91464_))))))
    (define gx#core-bind-import!__%
      (lambda (_in91392_ _ctx91393_ _force-weak?91394_)
        (let* ((_in9139591404_ _in91392_)
               (_E9139791408_
                (lambda () (error '"No clause matching" _in9139591404_)))
               (_K9139891421_
                (lambda (_weak?91411_ _phi91412_ _key91413_ _source91414_)
                  (gx#core-bind!__%
                   _key91413_
                   (let ((_e91416_
                          (gx#core-resolve-module-export _source91414_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e91416_ '1 gx#binding::t '#f)
                      _key91413_
                      _phi91412_
                      _e91416_
                      (##unchecked-structure-ref
                       _source91414_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e91418_ _force-weak?91394_))
                        (if _$e91418_ _$e91418_ _weak?91411_))))
                   gx#core-context-rebind?
                   _phi91412_
                   _ctx91393_))))
          (if (##structure-direct-instance-of?
               _in9139591404_
               'gx#module-import::t)
              (let* ((_e9139991424_
                      (##unchecked-structure-ref
                       _in9139591404_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source91427_ _e9139991424_)
                     (_e9140091429_
                      (##unchecked-structure-ref
                       _in9139591404_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91432_ _e9140091429_)
                     (_e9140191434_
                      (##unchecked-structure-ref
                       _in9139591404_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91437_ _e9140191434_)
                     (_e9140291439_
                      (##unchecked-structure-ref
                       _in9139591404_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91442_ _e9140291439_))
                (_K9139891421_
                 _weak?91442_
                 _phi91437_
                 _key91432_
                 _source91427_))
              (_E9139791408_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91447_)
        (let* ((_ctx91449_ (gx#current-expander-context))
               (_force-weak?91451_ '#f))
          (gx#core-bind-import!__% _in91447_ _ctx91449_ _force-weak?91451_))))
    (define gx#core-bind-import!__1
      (lambda (_in91453_ _ctx91454_)
        (let ((_force-weak?91456_ '#f))
          (gx#core-bind-import!__% _in91453_ _ctx91454_ _force-weak?91456_))))
    (define gx#core-bind-import!
      (lambda _g93267_
        (let ((_g93266_ (##length _g93267_)))
          (cond ((##fx= _g93266_ 1)
                 (apply (lambda (_in91447_)
                          (gx#core-bind-import!__0 _in91447_))
                        _g93267_))
                ((##fx= _g93266_ 2)
                 (apply (lambda (_in91453_ _ctx91454_)
                          (gx#core-bind-import!__1 _in91453_ _ctx91454_))
                        _g93267_))
                ((##fx= _g93266_ 3)
                 (apply (lambda (_in91458_ _ctx91459_ _force-weak?91460_)
                          (gx#core-bind-import!__%
                           _in91458_
                           _ctx91459_
                           _force-weak?91460_))
                        _g93267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g93267_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in91378_ _ctx91379_)
        (gx#core-bind-import!__% _in91378_ _ctx91379_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in91384_)
        (let ((_ctx91386_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in91384_ _ctx91386_))))
    (define gx#core-bind-weak-import!
      (lambda _g93269_
        (let ((_g93268_ (##length _g93269_)))
          (cond ((##fx= _g93268_ 1)
                 (apply (lambda (_in91384_)
                          (gx#core-bind-weak-import!__0 _in91384_))
                        _g93269_))
                ((##fx= _g93268_ 2)
                 (apply (lambda (_in91388_ _ctx91389_)
                          (gx#core-bind-weak-import!__% _in91388_ _ctx91389_))
                        _g93269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g93269_))))))
    (define gx#core-resolve-module-export
      (lambda (_out91269_)
        (letrec ((_subst91271_
                  (lambda (_key91317_)
                    (let* ((_key9131891326_ _key91317_)
                           (_else9132091334_ (lambda () _key91317_))
                           (_K9132291365_
                            (lambda (_mark91337_ _id91338_)
                              (let* ((_mark9133991345_ _mark91337_)
                                     (_E9134191349_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9133991345_)))
                                     (_K9134291357_
                                      (lambda (_subst91352_)
                                        (let ((_$e91354_
                                               (if _subst91352_
                                                   (hash-get
                                                    _subst91352_
                                                    _id91338_)
                                                   '#f)))
                                          (if _$e91354_
                                              _$e91354_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key91317_))))))
                                (if (##structure-instance-of?
                                     _mark9133991345_
                                     'gx#expander-mark::t)
                                    (let* ((_e9134391360_
                                            (##unchecked-structure-ref
                                             _mark9133991345_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst91363_ _e9134391360_))
                                      (_K9134291357_ _subst91363_))
                                    (_E9134191349_))))))
                      (if (##pair? _key9131891326_)
                          (let ((_hd9132391368_ (##car _key9131891326_))
                                (_tl9132491370_ (##cdr _key9131891326_)))
                            (let* ((_id91373_ _hd9132391368_)
                                   (_mark91375_ _tl9132491370_))
                              (_K9132291365_ _mark91375_ _id91373_)))
                          (_else9132091334_))))))
          (let* ((_out9127291282_ _out91269_)
                 (_E9127491286_
                  (lambda () (error '"No clause matching" _out9127291282_)))
                 (_K9127591293_
                  (lambda (_phi91289_ _key91290_ _ctx91291_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx91291_ _phi91289_)
                     (_subst91271_ _key91290_)))))
            (if (##structure-direct-instance-of?
                 _out9127291282_
                 'gx#module-export::t)
                (let* ((_e9127691296_
                        (##unchecked-structure-ref
                         _out9127291282_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx91299_ _e9127691296_)
                       (_e9127791301_
                        (##unchecked-structure-ref
                         _out9127291282_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key91304_ _e9127791301_)
                       (_e9127891306_
                        (##unchecked-structure-ref
                         _out9127291282_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi91309_ _e9127891306_)
                       (_e9127991311_
                        (##unchecked-structure-ref
                         _out9127291282_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9128091314_
                        (##unchecked-structure-ref
                         _out9127291282_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9127591293_ _phi91309_ _key91304_ _ctx91299_))
                (_E9127491286_))))))
    (define gx#core-module-export->import__%
      (lambda (_out91194_ _rename91195_ _dphi91196_)
        (let* ((_out9119791207_ _out91194_)
               (_E9119991211_
                (lambda () (error '"No clause matching" _out9119791207_)))
               (_K9120091223_
                (lambda (_weak?91214_
                         _name91215_
                         _phi91216_
                         _key91217_
                         _ctx91218_)
                  (##structure
                   gx#module-import::t
                   _out91194_
                   (let ((_$e91220_ _rename91195_))
                     (if _$e91220_ _$e91220_ _name91215_))
                   (fx+ _phi91216_ _dphi91196_)
                   _weak?91214_))))
          (if (##structure-direct-instance-of?
               _out9119791207_
               'gx#module-export::t)
              (let* ((_e9120191226_
                      (##unchecked-structure-ref
                       _out9119791207_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx91229_ _e9120191226_)
                     (_e9120291231_
                      (##unchecked-structure-ref
                       _out9119791207_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key91234_ _e9120291231_)
                     (_e9120391236_
                      (##unchecked-structure-ref
                       _out9119791207_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi91239_ _e9120391236_)
                     (_e9120491241_
                      (##unchecked-structure-ref
                       _out9119791207_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name91244_ _e9120491241_)
                     (_e9120591246_
                      (##unchecked-structure-ref
                       _out9119791207_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?91249_ _e9120591246_))
                (_K9120091223_
                 _weak?91249_
                 _name91244_
                 _phi91239_
                 _key91234_
                 _ctx91229_))
              (_E9119991211_)))))
    (define gx#core-module-export->import__0
      (lambda (_out91254_)
        (let* ((_rename91256_ '#f) (_dphi91258_ '0))
          (gx#core-module-export->import__%
           _out91254_
           _rename91256_
           _dphi91258_))))
    (define gx#core-module-export->import__1
      (lambda (_out91260_ _rename91261_)
        (let ((_dphi91263_ '0))
          (gx#core-module-export->import__%
           _out91260_
           _rename91261_
           _dphi91263_))))
    (define gx#core-module-export->import
      (lambda _g93271_
        (let ((_g93270_ (##length _g93271_)))
          (cond ((##fx= _g93270_ 1)
                 (apply (lambda (_out91254_)
                          (gx#core-module-export->import__0 _out91254_))
                        _g93271_))
                ((##fx= _g93270_ 2)
                 (apply (lambda (_out91260_ _rename91261_)
                          (gx#core-module-export->import__1
                           _out91260_
                           _rename91261_))
                        _g93271_))
                ((##fx= _g93270_ 3)
                 (apply (lambda (_out91265_ _rename91266_ _dphi91267_)
                          (gx#core-module-export->import__%
                           _out91265_
                           _rename91266_
                           _dphi91267_))
                        _g93271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g93271_))))))
    (define gx#core-expand-module%
      (lambda (_stx91122_)
        (letrec ((_make-context91124_
                  (lambda (_id91175_)
                    (let* ((_super91177_ (gx#current-expander-context))
                           (_bind-id91179_ (gx#stx-e _id91175_))
                           (_mod-id91181_
                            (if (##structure-instance-of?
                                 _super91177_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super91177_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id91179_)
                                _bind-id91179_))
                           (_ns91183_ (symbol->string _mod-id91181_))
                           (_path91190_
                            (if (##structure-instance-of?
                                 _super91177_
                                 'gx#module-context::t)
                                (let ((_path91185_
                                       (##unchecked-structure-ref
                                        _super91177_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path91185_)
                                          (null? _path91185_))
                                      (cons _bind-id91179_ _path91185_)
                                      (if (not _path91185_)
                                          _bind-id91179_
                                          (cons _bind-id91179_
                                                (cons _path91185_ '())))))
                                _bind-id91179_)))
                      (let ((__obj93247
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
                         __obj93247
                         _mod-id91181_
                         _super91177_
                         _ns91183_
                         _path91190_)
                        __obj93247)))))
          (let* ((_e9112591135_ _stx91122_)
                 (_E9112791139_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9112591135_)))
                 (_E9112691171_
                  (lambda ()
                    (if (gx#stx-pair? _e9112591135_)
                        (let ((_e9112891143_ (gx#syntax-e _e9112591135_)))
                          (let ((_hd9112991146_ (##car _e9112891143_))
                                (_tl9113091148_ (##cdr _e9112891143_)))
                            (if (gx#stx-pair? _tl9113091148_)
                                (let ((_e9113191151_
                                       (gx#syntax-e _tl9113091148_)))
                                  (let ((_hd9113291154_ (##car _e9113191151_))
                                        (_tl9113391156_ (##cdr _e9113191151_)))
                                    (let* ((_id91159_ _hd9113291154_)
                                           (_body91161_ _tl9113391156_))
                                      (if (and (gx#identifier? _id91159_)
                                               (gx#stx-list? _body91161_))
                                          (let* ((_ctx91163_
                                                  (_make-context91124_
                                                   _id91159_))
                                                 (_body91165_
                                                  (gx#core-expand-module-begin
                                                   _body91161_
                                                   _ctx91163_))
                                                 (_body91167_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body91165_)
                                                   (gx#stx-source
                                                    _stx91122_))))
                                            (##unchecked-structure-set!
                                             _ctx91163_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body91167_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx91163_
                                             _body91167_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id91159_
                                             _ctx91163_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id91159_)
                                              _body91167_)
                                             (gx#stx-source _stx91122_)))
                                          (_E9112791139_)))))
                                (_E9112791139_))))
                        (_E9112791139_)))))
            (_E9112691171_)))))
    (define gx#core-expand-module-begin
      (lambda (_body91088_ _ctx91089_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx91092_
                   (gx#core-expand-head (cons '%%begin-module _body91088_)))
                  (_e9109391100_ _stx91092_)
                  (_E9109591104_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx91092_)))
                  (_E9109491118_
                   (lambda ()
                     (if (gx#stx-pair? _e9109391100_)
                         (let ((_e9109691108_ (gx#syntax-e _e9109391100_)))
                           (let ((_hd9109791111_ (##car _e9109691108_))
                                 (_tl9109891113_ (##cdr _e9109691108_)))
                             (if (and (gx#identifier? _hd9109791111_)
                                      (gx#core-identifier=?
                                       _hd9109791111_
                                       '%#begin-module))
                                 (let ((_body91116_ _tl9109891113_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx91092_)
                                           _body91116_
                                           (gx#core-expand-module-body
                                            _body91116_))
                                       (_E9109591104_)))
                                 (_E9109591104_))))
                         (_E9109591104_)))))
             (_E9109491118_)))
         gx#current-expander-context
         _ctx91089_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90884_)
        (letrec ((_expand-special90886_
                  (lambda (_hd91015_ _K91016_ _rest91017_ _r91018_)
                    (let* ((_e9101991036_ _hd91015_)
                           (_E9103191040_
                            (lambda ()
                              (_K91016_
                               _rest91017_
                               (cons (gx#core-expand-top _hd91015_)
                                     _r91018_))))
                           (_E9102191052_
                            (lambda ()
                              (if (gx#stx-pair? _e9101991036_)
                                  (let ((_e9103291044_
                                         (gx#syntax-e _e9101991036_)))
                                    (let ((_hd9103391047_
                                           (##car _e9103291044_))
                                          (_tl9103491049_
                                           (##cdr _e9103291044_)))
                                      (if (and (gx#identifier? _hd9103391047_)
                                               (gx#core-identifier=?
                                                _hd9103391047_
                                                '%#export))
                                          (if '#t
                                              (_K91016_
                                               _rest91017_
                                               (cons _hd91015_ _r91018_))
                                              (_E9103191040_))
                                          (_E9103191040_))))
                                  (_E9103191040_))))
                           (_E9102091084_
                            (lambda ()
                              (if (gx#stx-pair? _e9101991036_)
                                  (let ((_e9102291056_
                                         (gx#syntax-e _e9101991036_)))
                                    (let ((_hd9102391059_
                                           (##car _e9102291056_))
                                          (_tl9102491061_
                                           (##cdr _e9102291056_)))
                                      (if (and (gx#identifier? _hd9102391059_)
                                               (gx#core-identifier=?
                                                _hd9102391059_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9102491061_)
                                              (let ((_e9102591064_
                                                     (gx#syntax-e
                                                      _tl9102491061_)))
                                                (let ((_hd9102691067_
                                                       (##car _e9102591064_))
                                                      (_tl9102791069_
                                                       (##cdr _e9102591064_)))
                                                  (let ((_hd-bind91072_
                                                         _hd9102691067_))
                                                    (if (gx#stx-pair?
                                                         _tl9102791069_)
                                                        (let ((_e9102891074_
                                                               (gx#syntax-e
                                                                _tl9102791069_)))
                                                          (let ((_hd9102991077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9102891074_))
                        (_tl9103091079_ (##cdr _e9102891074_)))
                    (let ((_expr91082_ _hd9102991077_))
                      (if (gx#stx-null? _tl9103091079_)
                          (if (gx#core-bind-values? _hd-bind91072_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind91072_)
                                (_K91016_
                                 _rest91017_
                                 (cons _hd91015_ _r91018_)))
                              (_E9102191052_))
                          (_E9102191052_)))))
                (_E9102191052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9102191052_))
                                          (_E9102191052_))))
                                  (_E9102191052_)))))
                      (_E9102091084_))))
                 (_expand-body90887_
                  (lambda (_rbody90889_)
                    (let _lp90891_ ((_rest90893_ _rbody90889_)
                                    (_body90894_ '()))
                      (let* ((_rest9089590903_ _rest90893_)
                             (_else9089790911_ (lambda () _body90894_))
                             (_K9089991003_
                              (lambda (_rest90914_ _hd90915_)
                                (let* ((_e9091690937_ _hd90915_)
                                       (_E9093290941_
                                        (lambda ()
                                          (_lp90891_
                                           _rest90914_
                                           (cons (gx#core-expand-expression
                                                  _hd90915_)
                                                 _body90894_))))
                                       (_E9092890955_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091690937_)
                                              (let ((_e9093390945_
                                                     (gx#syntax-e
                                                      _e9091690937_)))
                                                (let ((_hd9093490948_
                                                       (##car _e9093390945_))
                                                      (_tl9093590950_
                                                       (##cdr _e9093390945_)))
                                                  (let ((_form90953_
                                                         _hd9093490948_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90953_
                                                         gx#special-form-binding?)
                                                        (_lp90891_
                                                         _rest90914_
                                                         (cons _hd90915_
                                                               _body90894_))
                                                        (_E9093290941_)))))
                                              (_E9093290941_))))
                                       (_E9091890967_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091690937_)
                                              (let ((_e9092990959_
                                                     (gx#syntax-e
                                                      _e9091690937_)))
                                                (let ((_hd9093090962_
                                                       (##car _e9092990959_))
                                                      (_tl9093190964_
                                                       (##cdr _e9092990959_)))
                                                  (if (and (gx#identifier?
                                                            _hd9093090962_)
                                                           (gx#core-identifier=?
                                                            _hd9093090962_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90891_
                                                           _rest90914_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90915_)
                         _body90894_))
                  (_E9092890955_))
              (_E9092890955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9092890955_))))
                                       (_E9091790999_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9091690937_)
                                              (let ((_e9091990971_
                                                     (gx#syntax-e
                                                      _e9091690937_)))
                                                (let ((_hd9092090974_
                                                       (##car _e9091990971_))
                                                      (_tl9092190976_
                                                       (##cdr _e9091990971_)))
                                                  (if (and (gx#identifier?
                                                            _hd9092090974_)
                                                           (gx#core-identifier=?
                                                            _hd9092090974_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9092190976_)
                                                          (let ((_e9092290979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9092190976_)))
                    (let ((_hd9092390982_ (##car _e9092290979_))
                          (_tl9092490984_ (##cdr _e9092290979_)))
                      (let ((_hd-bind90987_ _hd9092390982_))
                        (if (gx#stx-pair? _tl9092490984_)
                            (let ((_e9092590989_ (gx#syntax-e _tl9092490984_)))
                              (let ((_hd9092690992_ (##car _e9092590989_))
                                    (_tl9092790994_ (##cdr _e9092590989_)))
                                (let ((_expr90997_ _hd9092690992_))
                                  (if (gx#stx-null? _tl9092790994_)
                                      (if '#t
                                          (_lp90891_
                                           _rest90914_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90987_)
                                                   (gx#core-expand-expression
                                                    _expr90997_))
                                                  (gx#stx-source _hd90915_))
                                                 _body90894_))
                                          (_E9091890967_))
                                      (_E9091890967_)))))
                            (_E9091890967_)))))
                  (_E9091890967_))
              (_E9091890967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9091890967_)))))
                                  (_E9091790999_)))))
                        (if (##pair? _rest9089590903_)
                            (let ((_hd9090091006_ (##car _rest9089590903_))
                                  (_tl9090191008_ (##cdr _rest9089590903_)))
                              (let* ((_hd91011_ _hd9090091006_)
                                     (_rest91013_ _tl9090191008_))
                                (_K9089991003_ _rest91013_ _hd91011_)))
                            (_else9089790911_)))))))
          (_expand-body90887_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90884_)
            _expand-special90886_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90727_
               _expanded?90728_
               _method90729_
               _current-phi90730_
               _expand190731_)
        (letrec ((_K90733_
                  (lambda (_rest90851_ _r90852_)
                    (let* ((_e9085390860_ _rest90851_)
                           (_E9085590864_ (lambda () _r90852_))
                           (_E9085490880_
                            (lambda ()
                              (if (gx#stx-pair? _e9085390860_)
                                  (let ((_e9085690868_
                                         (gx#syntax-e _e9085390860_)))
                                    (let ((_hd9085790871_
                                           (##car _e9085690868_))
                                          (_tl9085890873_
                                           (##cdr _e9085690868_)))
                                      (let* ((_hd90876_ _hd9085790871_)
                                             (_rest90878_ _tl9085890873_))
                                        (if '#t
                                            (_step90734_
                                             _hd90876_
                                             _rest90878_
                                             _r90852_)
                                            (_E9085590864_)))))
                                  (_E9085590864_)))))
                      (_E9085490880_))))
                 (_step90734_
                  (lambda (_hd90765_ _rest90766_ _r90767_)
                    (let* ((_e9076890786_ _hd90765_)
                           (_E9078190790_
                            (lambda ()
                              (if (_expanded?90728_ (gx#stx-e _hd90765_))
                                  (_K90733_
                                   _rest90766_
                                   (cons (gx#stx-e _hd90765_) _r90767_))
                                  (_expand190731_
                                   _hd90765_
                                   _K90733_
                                   _rest90766_
                                   _r90767_))))
                           (_E9077790806_
                            (lambda ()
                              (if (gx#stx-pair? _e9076890786_)
                                  (let ((_e9078290794_
                                         (gx#syntax-e _e9076890786_)))
                                    (let ((_hd9078390797_
                                           (##car _e9078290794_))
                                          (_tl9078490799_
                                           (##cdr _e9078290794_)))
                                      (let* ((_macro90802_ _hd9078390797_)
                                             (_body90804_ _tl9078490799_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90802_
                                             gx#syntax-binding?)
                                            (_K90733_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90802_)
                                                    _hd90765_
                                                    _method90729_)
                                                   _rest90766_)
                                             _r90767_)
                                            (_E9078190790_)))))
                                  (_E9078190790_))))
                           (_E9077090820_
                            (lambda ()
                              (if (gx#stx-pair? _e9076890786_)
                                  (let ((_e9077890810_
                                         (gx#syntax-e _e9076890786_)))
                                    (let ((_hd9077990813_
                                           (##car _e9077890810_))
                                          (_tl9078090815_
                                           (##cdr _e9077890810_)))
                                      (if (eq? (gx#stx-e _hd9077990813_)
                                               'begin:)
                                          (let ((_body90818_ _tl9078090815_))
                                            (if '#t
                                                (_K90733_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90766_
                                                  _body90818_)
                                                 _r90767_)
                                                (_E9077790806_)))
                                          (_E9077790806_))))
                                  (_E9077790806_))))
                           (_E9076990847_
                            (lambda ()
                              (if (gx#stx-pair? _e9076890786_)
                                  (let ((_e9077190824_
                                         (gx#syntax-e _e9076890786_)))
                                    (let ((_hd9077290827_
                                           (##car _e9077190824_))
                                          (_tl9077390829_
                                           (##cdr _e9077190824_)))
                                      (if (eq? (gx#stx-e _hd9077290827_) 'phi:)
                                          (if (gx#stx-pair? _tl9077390829_)
                                              (let ((_e9077490832_
                                                     (gx#syntax-e
                                                      _tl9077390829_)))
                                                (let ((_hd9077590835_
                                                       (##car _e9077490832_))
                                                      (_tl9077690837_
                                                       (##cdr _e9077490832_)))
                                                  (let* ((_dphi90840_
                                                          _hd9077590835_)
                                                         (_body90842_
                                                          _tl9077690837_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90840_)
                                                        (let ((_rbody90845_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90733_ _body90842_ '()))
                        _current-phi90730_
                        (fx+ (gx#stx-e _dphi90840_) (_current-phi90730_)))))
                  (_K90733_ _rest90766_ (foldr1 cons _r90767_ _rbody90845_)))
                (_E9077090820_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9077090820_))
                                          (_E9077090820_))))
                                  (_E9077090820_)))))
                      (_E9076990847_)))))
          (let* ((_e9073590742_ _stx90727_)
                 (_E9073790746_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9073590742_)))
                 (_E9073690761_
                  (lambda ()
                    (if (gx#stx-pair? _e9073590742_)
                        (let ((_e9073890750_ (gx#syntax-e _e9073590742_)))
                          (let ((_hd9073990753_ (##car _e9073890750_))
                                (_tl9074090755_ (##cdr _e9073890750_)))
                            (let ((_body90758_ _tl9074090755_))
                              (if '#t
                                  (if (_current-phi90730_)
                                      (_K90733_ _body90758_ '())
                                      (call-with-parameters
                                       (lambda () (_K90733_ _body90758_ '()))
                                       _current-phi90730_
                                       (gx#current-expander-phi)))
                                  (_E9073790746_)))))
                        (_E9073790746_)))))
            (_E9073690761_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx90394_ _internal-expand?90395_)
        (letrec ((_expand190397_
                  (lambda (_hd90707_ _K90708_ _rest90709_ _r90710_)
                    (if (gx#core-bound-module? _hd90707_)
                        (_import190398_
                         (gx#syntax-local-e__0 _hd90707_)
                         _K90708_
                         _rest90709_
                         _r90710_)
                        (if (gx#core-library-module-path? _hd90707_)
                            (_import190398_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90707_))
                             _K90708_
                             _rest90709_
                             _r90710_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90707_)
                                (_import190398_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90707_))
                                 _K90708_
                                 _rest90709_
                                 _r90710_)
                                (let ((_e90712_ (gx#stx-e _hd90707_)))
                                  (if (pair? _e90712_)
                                      (let ((_$e90714_
                                             (gx#stx-e (car _e90712_))))
                                        (if (eq? 'spec: _$e90714_)
                                            (_import-spec90401_
                                             _hd90707_
                                             _K90708_
                                             _rest90709_
                                             _r90710_)
                                            (if (eq? 'in: _$e90714_)
                                                (_import-submodule90399_
                                                 _hd90707_
                                                 _K90708_
                                                 _rest90709_
                                                 _r90710_)
                                                (if (eq? 'runtime: _$e90714_)
                                                    (_import-runtime90400_
                                                     _hd90707_
                                                     _K90708_
                                                     _rest90709_
                                                     _r90710_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx90394_
                                                     _hd90707_)))))
                                      (if (string? _e90712_)
                                          (_import190398_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90707_
                                             (gx#stx-source _stx90394_)))
                                           _K90708_
                                           _rest90709_
                                           _r90710_)
                                          (if (##structure-instance-of?
                                               _e90712_
                                               'gx#module-context::t)
                                              (_K90708_
                                               _rest90709_
                                               (cons _e90712_ _r90710_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx90394_
                                               _hd90707_))))))))))
                 (_import190398_
                  (lambda (_ctx90696_ _K90697_ _rest90698_ _r90699_)
                    (let ((_dphi90701_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90697_
                       _rest90698_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90696_
                              _dphi90701_
                              (map (lambda (_g9070290704_)
                                     (gx#core-module-export->import__%
                                      _g9070290704_
                                      '#f
                                      _dphi90701_))
                                   (##unchecked-structure-ref
                                    _ctx90696_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90699_)))))
                 (_import-submodule90399_
                  (lambda (_hd90663_ _K90664_ _rest90665_ _r90666_)
                    (let* ((_e9066790674_ _hd90663_)
                           (_E9066990678_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9066790674_)))
                           (_E9066890692_
                            (lambda ()
                              (if (gx#stx-pair? _e9066790674_)
                                  (let ((_e9067090682_
                                         (gx#syntax-e _e9066790674_)))
                                    (let ((_hd9067190685_
                                           (##car _e9067090682_))
                                          (_tl9067290687_
                                           (##cdr _e9067090682_)))
                                      (let ((_spath90690_ _tl9067290687_))
                                        (if '#t
                                            (_import190398_
                                             (_import-spec-source90402_
                                              _spath90690_)
                                             _K90664_
                                             _rest90665_
                                             _r90666_)
                                            (_E9066990678_)))))
                                  (_E9066990678_)))))
                      (_E9066890692_))))
                 (_import-runtime90400_
                  (lambda (_hd90630_ _K90631_ _rest90632_ _r90633_)
                    (let* ((_e9063490641_ _hd90630_)
                           (_E9063690645_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9063490641_)))
                           (_E9063590659_
                            (lambda ()
                              (if (gx#stx-pair? _e9063490641_)
                                  (let ((_e9063790649_
                                         (gx#syntax-e _e9063490641_)))
                                    (let ((_hd9063890652_
                                           (##car _e9063790649_))
                                          (_tl9063990654_
                                           (##cdr _e9063790649_)))
                                      (let ((_spath90657_ _tl9063990654_))
                                        (if '#t
                                            (_K90631_
                                             _rest90632_
                                             (cons (_import-spec-source90402_
                                                    _spath90657_)
                                                   _r90633_))
                                            (_E9063690645_)))))
                                  (_E9063690645_)))))
                      (_E9063590659_))))
                 (_import-spec90401_
                  (lambda (_hd90469_ _K90470_ _rest90471_ _r90472_)
                    (let* ((_e9047390490_ _hd90469_)
                           (_E9048290494_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9047390490_)))
                           (_E9047590604_
                            (lambda ()
                              (if (gx#stx-pair? _e9047390490_)
                                  (let ((_e9048390498_
                                         (gx#syntax-e _e9047390490_)))
                                    (let ((_hd9048490501_
                                           (##car _e9048390498_))
                                          (_tl9048590503_
                                           (##cdr _e9048390498_)))
                                      (if (gx#stx-pair? _tl9048590503_)
                                          (let ((_e9048690506_
                                                 (gx#syntax-e _tl9048590503_)))
                                            (let ((_hd9048790509_
                                                   (##car _e9048690506_))
                                                  (_tl9048890511_
                                                   (##cdr _e9048690506_)))
                                              (let* ((_path90514_
                                                      _hd9048790509_)
                                                     (_specs90516_
                                                      _tl9048890511_))
                                                (if '#t
                                                    (let ((_src-ctx90518_
                                                           (_import-spec-source90402_
                                                            _path90514_))
                                                          (_exports90519_
                                                           (make-hash-table))
                                                          (_specs90520_
                                                           (gx#syntax->list
                                                            _specs90516_)))
                                                      (for-each
                                                       (lambda (_out90522_)
                                                         (hash-put!
                                                          _exports90519_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90522_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90522_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90522_))
               (##unchecked-structure-ref
                _src-ctx90518_
                '9
                gx#module-context::t
                '#f))
              (_K90470_
               _rest90471_
               (foldl1 (lambda (_spec90524_ _r90525_)
                         (let* ((_e9052690542_ _spec90524_)
                                (_E9052890546_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9052690542_)))
                                (_E9052790600_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9052690542_)
                                       (let ((_e9052990550_
                                              (gx#syntax-e _e9052690542_)))
                                         (let ((_hd9053090553_
                                                (##car _e9052990550_))
                                               (_tl9053190555_
                                                (##cdr _e9052990550_)))
                                           (let ((_phi90558_ _hd9053090553_))
                                             (if (gx#stx-pair? _tl9053190555_)
                                                 (let ((_e9053290560_
                                                        (gx#syntax-e
                                                         _tl9053190555_)))
                                                   (let ((_hd9053390563_
                                                          (##car _e9053290560_))
                                                         (_tl9053490565_
                                                          (##cdr _e9053290560_)))
                                                     (let ((_name90568_
                                                            _hd9053390563_))
                                                       (if (gx#stx-pair?
                                                            _tl9053490565_)
                                                           (let ((_e9053590570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9053490565_)))
                     (let ((_hd9053690573_ (##car _e9053590570_))
                           (_tl9053790575_ (##cdr _e9053590570_)))
                       (let ((_src-phi90578_ _hd9053690573_))
                         (if (gx#stx-pair? _tl9053790575_)
                             (let ((_e9053890580_
                                    (gx#syntax-e _tl9053790575_)))
                               (let ((_hd9053990583_ (##car _e9053890580_))
                                     (_tl9054090585_ (##cdr _e9053890580_)))
                                 (let ((_src-name90588_ _hd9053990583_))
                                   (if (gx#stx-null? _tl9054090585_)
                                       (if (and (gx#stx-fixnum? _src-phi90578_)
                                                (gx#identifier?
                                                 _src-name90588_)
                                                (gx#stx-fixnum? _phi90558_)
                                                (gx#identifier? _name90568_))
                                           (let ((_src-phi90590_
                                                  (gx#stx-e _src-phi90578_))
                                                 (_src-name90591_
                                                  (gx#core-identifier-key
                                                   _src-name90588_))
                                                 (_phi90592_
                                                  (gx#stx-e _phi90558_))
                                                 (_name90593_
                                                  (gx#core-identifier-key
                                                   _name90568_)))
                                             (let ((_$e90595_
                                                    (hash-get
                                                     _exports90519_
                                                     (cons _src-phi90590_
                                                           _src-name90591_))))
                                               (if _$e90595_
                                                   ((lambda (_out90598_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90598_
                                                             _name90593_
                                                             (fx- _phi90592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90590_))
                    _r90525_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90595_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx90394_
                                                    _hd90469_))))
                                           (_E9052890546_))
                                       (_E9052890546_)))))
                             (_E9052890546_)))))
                   (_E9052890546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9052890546_)))))
                                       (_E9052890546_)))))
                           (_E9052790600_)))
                       _r90472_
                       _specs90520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9048290494_)))))
                                          (_E9048290494_))))
                                  (_E9048290494_))))
                           (_E9047490626_
                            (lambda ()
                              (if (gx#stx-pair? _e9047390490_)
                                  (let ((_e9047690608_
                                         (gx#syntax-e _e9047390490_)))
                                    (let ((_hd9047790611_
                                           (##car _e9047690608_))
                                          (_tl9047890613_
                                           (##cdr _e9047690608_)))
                                      (if (gx#stx-pair? _tl9047890613_)
                                          (let ((_e9047990616_
                                                 (gx#syntax-e _tl9047890613_)))
                                            (let ((_hd9048090619_
                                                   (##car _e9047990616_))
                                                  (_tl9048190621_
                                                   (##cdr _e9047990616_)))
                                              (let ((_path90624_
                                                     _hd9048090619_))
                                                (if (gx#stx-null?
                                                     _tl9048190621_)
                                                    (if '#t
                                                        (_K90470_
                                                         _rest90471_
                                                         (cons (_import-spec-source90402_
                                                                _path90624_)
                                                               _r90472_))
                                                        (_E9047590604_))
                                                    (_E9047590604_)))))
                                          (_E9047590604_))))
                                  (_E9047590604_)))))
                      (_E9047490626_))))
                 (_import-spec-source90402_
                  (lambda (_spath90467_)
                    (gx#core-import-nested-module _spath90467_ _stx90394_)))
                 (_import!90403_
                  (lambda (_rbody90416_)
                    (letrec* ((_current-ctx90418_
                               (gx#current-expander-context))
                              (_deps90419_ (make-hash-table-eq))
                              (_bind!90420_
                               (lambda (_hd90465_)
                                 (gx#core-bind-import!__1
                                  _hd90465_
                                  _current-ctx90418_))))
                      (let _lp90422_ ((_rest90424_ _rbody90416_)
                                      (_body90425_ '()))
                        (let* ((_rest9042690434_ _rest90424_)
                               (_else9042890444_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx90418_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx90418_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx90418_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body90425_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx90442_ _g93272_)
                                     (gx#eval-module _ctx90442_))
                                   _deps90419_)
                                  _body90425_))
                               (_K9043090453_
                                (lambda (_rest90447_ _hd90448_)
                                  (if (##structure-direct-instance-of?
                                       _hd90448_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!90420_ _hd90448_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd90448_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd90448_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps90419_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd90448_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd90448_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!90420_
                                             (##unchecked-structure-ref
                                              _hd90448_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd90448_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps90419_
                                                 (##unchecked-structure-ref
                                                  _hd90448_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e90450_
                                                 (##structure-instance-of?
                                                  _hd90448_
                                                  'gx#module-context::t)))
                                            (if _$e90450_
                                                _$e90450_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx90394_
                                                 _hd90448_)))))
                                  (_lp90422_
                                   _rest90447_
                                   (cons _hd90448_ _body90425_)))))
                          (if (##pair? _rest9042690434_)
                              (let ((_hd9043190456_ (##car _rest9042690434_))
                                    (_tl9043290458_ (##cdr _rest9042690434_)))
                                (let* ((_hd90461_ _hd9043190456_)
                                       (_rest90463_ _tl9043290458_))
                                  (_K9043090453_ _rest90463_ _hd90461_)))
                              (_else9042890444_)))))))
                 (_expanded-import?90404_
                  (lambda (_e90408_)
                    (let ((_$e90410_
                           (##structure-direct-instance-of?
                            _e90408_
                            'gx#import-set::t)))
                      (if _$e90410_
                          _$e90410_
                          (let ((_$e90413_
                                 (##structure-direct-instance-of?
                                  _e90408_
                                  'gx#module-import::t)))
                            (if _$e90413_
                                _$e90413_
                                (##structure-instance-of?
                                 _e90408_
                                 'gx#module-context::t))))))))
          (let ((_rbody90406_
                 (gx#core-expand-import/export
                  _stx90394_
                  _expanded-import?90404_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand190397_)))
            (if _internal-expand?90395_
                (reverse _rbody90406_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!90403_ _rbody90406_))
                 (gx#stx-source _stx90394_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90720_)
        (let ((_internal-expand?90722_ '#f))
          (gx#core-expand-import%__% _stx90720_ _internal-expand?90722_))))
    (define gx#core-expand-import%
      (lambda _g93274_
        (let ((_g93273_ (##length _g93274_)))
          (cond ((##fx= _g93273_ 1)
                 (apply (lambda (_stx90720_)
                          (gx#core-expand-import%__0 _stx90720_))
                        _g93274_))
                ((##fx= _g93273_ 2)
                 (apply (lambda (_stx90724_ _internal-expand?90725_)
                          (gx#core-expand-import%__%
                           _stx90724_
                           _internal-expand?90725_))
                        _g93274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g93274_))))))
    (define gx#core-import-nested-module
      (lambda (_spath90321_ _where90322_)
        (let* ((_e9032390330_ _spath90321_)
               (_E9032590334_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9032390330_)))
               (_E9032490389_
                (lambda ()
                  (if (gx#stx-pair? _e9032390330_)
                      (let ((_e9032690338_ (gx#syntax-e _e9032390330_)))
                        (let ((_hd9032790341_ (##car _e9032690338_))
                              (_tl9032890343_ (##cdr _e9032690338_)))
                          (let* ((_origin90346_ _hd9032790341_)
                                 (_sub90348_ _tl9032890343_))
                            (if '#t
                                (let ((_origin-ctx90350_
                                       (if (gx#stx-false? _origin90346_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin90346_))))
                                  (let _lp90352_ ((_rest90354_ _sub90348_)
                                                  (_ctx90355_
                                                   _origin-ctx90350_))
                                    (let* ((_e9035690363_ _rest90354_)
                                           (_E9035890367_
                                            (lambda () _ctx90355_))
                                           (_E9035790385_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9035690363_)
                                                  (let ((_e9035990371_
                                                         (gx#syntax-e
                                                          _e9035690363_)))
                                                    (let ((_hd9036090374_
                                                           (##car _e9035990371_))
                                                          (_tl9036190376_
                                                           (##cdr _e9035990371_)))
                                                      (let* ((_id90379_
                                                              _hd9036090374_)
                                                             (_rest90381_
                                                              _tl9036190376_))
                                                        (if '#t
                                                            (let ((_bind90383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id90379_ '0 _ctx90355_)))
                      (if (and (##structure-direct-instance-of?
                                _bind90383_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind90383_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where90322_
                           _spath90321_
                           _id90379_))
                      (_lp90352_
                       _rest90381_
                       (##unchecked-structure-ref
                        _bind90383_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9035890367_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9035890367_)))))
                                      (_E9035790385_))))
                                (_E9032590334_)))))
                      (_E9032590334_)))))
          (_E9032490389_))))
    (define gx#core-expand-import-source
      (lambda (_hd90319_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd90319_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89827_ _internal-expand?89828_)
        (letrec* ((_make-export__9320393204_
                   (lambda (_bind90267_ _phi90268_ _ctx90269_ _name90270_)
                     (let* ((_key90272_
                             (##unchecked-structure-ref
                              _bind90267_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key90274_
                             (if _name90270_
                                 (gx#core-identifier-key _name90270_)
                                 _key90272_)))
                       (##structure
                        gx#module-export::t
                        _ctx90269_
                        _key90272_
                        _phi90268_
                        _export-key90274_
                        (let ((_$e90277_
                               (##structure-instance-of?
                                _bind90267_
                                'gx#extern-binding::t)))
                          (if _$e90277_
                              _$e90277_
                              (##structure-direct-instance-of?
                               _bind90267_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9320593208_
                   (lambda (_bind90283_)
                     (let* ((_phi90285_ (gx#current-export-expander-phi))
                            (_ctx90287_ (gx#current-expander-context))
                            (_name90289_ '#f))
                       (_make-export__9320393204_
                        _bind90283_
                        _phi90285_
                        _ctx90287_
                        _name90289_))))
                  (_make-export__1__9320693209_
                   (lambda (_bind90291_ _phi90292_)
                     (let* ((_ctx90294_ (gx#current-expander-context))
                            (_name90296_ '#f))
                       (_make-export__9320393204_
                        _bind90291_
                        _phi90292_
                        _ctx90294_
                        _name90296_))))
                  (_make-export__2__9320793210_
                   (lambda (_bind90298_ _phi90299_ _ctx90300_)
                     (let ((_name90302_ '#f))
                       (_make-export__9320393204_
                        _bind90298_
                        _phi90299_
                        _ctx90300_
                        _name90302_))))
                  (_make-export89830_
                   (lambda _g93276_
                     (let ((_g93275_ (##length _g93276_)))
                       (cond ((##fx= _g93275_ 1)
                              (apply (lambda (_bind90283_)
                                       (_make-export__0__9320593208_
                                        _bind90283_))
                                     _g93276_))
                             ((##fx= _g93275_ 2)
                              (apply (lambda (_bind90291_ _phi90292_)
                                       (_make-export__1__9320693209_
                                        _bind90291_
                                        _phi90292_))
                                     _g93276_))
                             ((##fx= _g93275_ 3)
                              (apply (lambda (_bind90298_
                                              _phi90299_
                                              _ctx90300_)
                                       (_make-export__2__9320793210_
                                        _bind90298_
                                        _phi90299_
                                        _ctx90300_))
                                     _g93276_))
                             ((##fx= _g93275_ 4)
                              (apply (lambda (_bind90304_
                                              _phi90305_
                                              _ctx90306_
                                              _name90307_)
                                       (_make-export__9320393204_
                                        _bind90304_
                                        _phi90305_
                                        _ctx90306_
                                        _name90307_))
                                     _g93276_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g93276_))))))
                  (_expand189831_
                   (lambda (_hd89980_ _K89981_ _rest89982_ _r89983_)
                     (let* ((_e8998490016_ _hd89980_)
                            (_E9001190020_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89827_
                                _hd89980_)))
                            (_E9000190099_
                             (lambda ()
                               (if (gx#stx-pair? _e8998490016_)
                                   (let ((_e9001290024_
                                          (gx#syntax-e _e8998490016_)))
                                     (let ((_hd9001390027_
                                            (##car _e9001290024_))
                                           (_tl9001490029_
                                            (##cdr _e9001290024_)))
                                       (if (eq? (gx#stx-e _hd9001390027_)
                                                'import:)
                                           (let ((_in90032_ _tl9001490029_))
                                             (if (gx#stx-list? _in90032_)
                                                 (let _lp90034_ ((_in-rest90036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90032_)
                         (_r90037_ _r89983_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9003890045_
                                                           _in-rest90036_)
                                                          (_E9004090049_
                                                           (lambda ()
                                                             (_K89981_
                                                              _rest89982_
                                                              _r90037_)))
                                                          (_E9003990095_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9003890045_)
                         (let ((_e9004190053_ (gx#syntax-e _e9003890045_)))
                           (let ((_hd9004290056_ (##car _e9004190053_))
                                 (_tl9004390058_ (##cdr _e9004190053_)))
                             (let* ((_hd90061_ _hd9004290056_)
                                    (_in-rest90063_ _tl9004390058_))
                               (if '#t
                                   (let ((_src90093_
                                          (if (gx#core-bound-module? _hd90061_)
                                              (gx#syntax-local-e__0 _hd90061_)
                                              (if (gx#core-library-module-path?
                                                   _hd90061_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90061_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90061_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90061_))
                                                      (if (gx#stx-string?
                                                           _hd90061_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90061_
                                                            (gx#stx-source
                                                             _stx89827_)))
                                                          (let* ((_e9006490071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90061_)
                         (_E9006690075_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89827_
                             _hd90061_)))
                         (_E9006590089_
                          (lambda ()
                            (if (gx#stx-pair? _e9006490071_)
                                (let ((_e9006790079_
                                       (gx#syntax-e _e9006490071_)))
                                  (let ((_hd9006890082_ (##car _e9006790079_))
                                        (_tl9006990084_ (##cdr _e9006790079_)))
                                    (if (eq? (gx#stx-e _hd9006890082_) 'in:)
                                        (let ((_spath90087_ _tl9006990084_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath90087_
                                               _stx89827_)
                                              (_E9006690075_)))
                                        (_E9006690075_))))
                                (_E9006690075_)))))
                    (_E9006590089_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90034_
                                      _in-rest90063_
                                      (_export-imports89832_
                                       _src90093_
                                       _r90037_)))
                                   (_E9004090049_)))))
                         (_E9004090049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9003990095_)))
                                                 (_E9001190020_)))
                                           (_E9001190020_))))
                                   (_E9001190020_))))
                            (_E8998890138_
                             (lambda ()
                               (if (gx#stx-pair? _e8998490016_)
                                   (let ((_e9000290103_
                                          (gx#syntax-e _e8998490016_)))
                                     (let ((_hd9000390106_
                                            (##car _e9000290103_))
                                           (_tl9000490108_
                                            (##cdr _e9000290103_)))
                                       (if (eq? (gx#stx-e _hd9000390106_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9000490108_)
                                               (let ((_e9000590111_
                                                      (gx#syntax-e
                                                       _tl9000490108_)))
                                                 (let ((_hd9000690114_
                                                        (##car _e9000590111_))
                                                       (_tl9000790116_
                                                        (##cdr _e9000590111_)))
                                                   (let ((_id90119_
                                                          _hd9000690114_))
                                                     (if (gx#stx-pair?
                                                          _tl9000790116_)
                                                         (let ((_e9000890121_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9000790116_)))
                   (let ((_hd9000990124_ (##car _e9000890121_))
                         (_tl9001090126_ (##cdr _e9000890121_)))
                     (let ((_name90129_ _hd9000990124_))
                       (if (gx#stx-null? _tl9001090126_)
                           (if '#t
                               (let* ((_phi90131_
                                       (gx#current-export-expander-phi))
                                      (_$e90133_
                                       (gx#core-resolve-identifier__1
                                        _id90119_
                                        _phi90131_)))
                                 (if _$e90133_
                                     ((lambda (_bind90136_)
                                        (_K89981_
                                         _rest89982_
                                         (cons (_make-export__9320393204_
                                                _bind90136_
                                                _phi90131_
                                                (gx#current-expander-context)
                                                _name90129_)
                                               _r89983_)))
                                      _$e90133_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89827_
                                      _hd89980_
                                      _id90119_)))
                               (_E9000190099_))
                           (_E9000190099_)))))
                 (_E9000190099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9000190099_))
                                           (_E9000190099_))))
                                   (_E9000190099_))))
                            (_E8998790187_
                             (lambda ()
                               (if (gx#stx-pair? _e8998490016_)
                                   (let ((_e8998990142_
                                          (gx#syntax-e _e8998490016_)))
                                     (let ((_hd8999090145_
                                            (##car _e8998990142_))
                                           (_tl8999190147_
                                            (##cdr _e8998990142_)))
                                       (if (eq? (gx#stx-e _hd8999090145_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8999190147_)
                                               (let ((_e8999290150_
                                                      (gx#syntax-e
                                                       _tl8999190147_)))
                                                 (let ((_hd8999390153_
                                                        (##car _e8999290150_))
                                                       (_tl8999490155_
                                                        (##cdr _e8999290150_)))
                                                   (let ((_phi90158_
                                                          _hd8999390153_))
                                                     (if (gx#stx-pair?
                                                          _tl8999490155_)
                                                         (let ((_e8999590160_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8999490155_)))
                   (let ((_hd8999690163_ (##car _e8999590160_))
                         (_tl8999790165_ (##cdr _e8999590160_)))
                     (let ((_id90168_ _hd8999690163_))
                       (if (gx#stx-pair? _tl8999790165_)
                           (let ((_e8999890170_ (gx#syntax-e _tl8999790165_)))
                             (let ((_hd8999990173_ (##car _e8999890170_))
                                   (_tl9000090175_ (##cdr _e8999890170_)))
                               (let ((_name90178_ _hd8999990173_))
                                 (if (gx#stx-null? _tl9000090175_)
                                     (if (and (gx#stx-fixnum? _phi90158_)
                                              (gx#identifier? _id90168_)
                                              (gx#identifier? _name90178_))
                                         (let* ((_phi90180_
                                                 (gx#stx-e _phi90158_))
                                                (_$e90182_
                                                 (gx#core-resolve-identifier__1
                                                  _id90168_
                                                  _phi90180_)))
                                           (if _$e90182_
                                               ((lambda (_bind90185_)
                                                  (_K89981_
                                                   _rest89982_
                                                   (cons (_make-export__9320393204_
                                                          _bind90185_
                                                          _phi90180_
                                                          (gx#current-expander-context)
                                                          _name90178_)
                                                         _r89983_)))
                                                _$e90182_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89827_
                                                _hd89980_
                                                _id90168_)))
                                         (_E8998890138_))
                                     (_E8998890138_)))))
                           (_E8998890138_)))))
                 (_E8998890138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8998890138_))
                                           (_E8998890138_))))
                                   (_E8998890138_))))
                            (_E8998690198_
                             (lambda ()
                               (let ((_id90191_ _e8998490016_))
                                 (if (gx#identifier? _id90191_)
                                     (let ((_$e90193_
                                            (gx#core-resolve-identifier__1
                                             _id90191_
                                             (gx#current-export-expander-phi))))
                                       (if _$e90193_
                                           ((lambda (_bind90196_)
                                              (_K89981_
                                               _rest89982_
                                               (cons (_make-export__0__9320593208_
                                                      _bind90196_)
                                                     _r89983_)))
                                            _$e90193_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89827_
                                            _hd89980_)))
                                     (_E8998790187_)))))
                            (_E8998590262_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8998490016_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx90202_
                                               (gx#current-expander-context))
                                              (_current-phi90204_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx90206_
                                               (gx#core-context-shift
                                                _current-ctx90202_
                                                _current-phi90204_))
                                              (_phi-bind90208_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx90206_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp90211_ ((_bind-rest90213_
                                                          _phi-bind90208_)
                                                         (_set90214_ '()))
                                           (let* ((_bind-rest9021590225_
                                                   _bind-rest90213_)
                                                  (_else9021790233_
                                                   (lambda ()
                                                     (_K89981_
                                                      _rest89982_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi90204_
                                                             _set90214_)
                                                            _r89983_))))
                                                  (_K9021990243_
                                                   (lambda (_bind-rest90236_
                                                            _bind90237_
                                                            _key90238_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind90237_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind90237_))
                                                         (_lp90211_
                                                          _bind-rest90236_
                                                          _set90214_)
                                                         (_lp90211_
                                                          _bind-rest90236_
                                                          (cons (_make-export__2__9320793210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind90237_
                         _current-phi90204_
                         _current-ctx90202_)
                        _set90214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9021590225_)
                                                 (let ((_hd9022090246_
                                                        (##car _bind-rest9021590225_))
                                                       (_tl9022190248_
                                                        (##cdr _bind-rest9021590225_)))
                                                   (if (##pair? _hd9022090246_)
                                                       (let ((_hd9022290251_
                                                              (##car _hd9022090246_))
                                                             (_tl9022390253_
                                                              (##cdr _hd9022090246_)))
                                                         (let* ((_key90256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9022290251_)
                        (_bind90258_ _tl9022390253_)
                        (_bind-rest90260_ _tl9022190248_))
                   (_K9021990243_ _bind-rest90260_ _bind90258_ _key90256_)))
               (_else9021790233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9021790233_)))))
                                       (_E8998690198_))
                                   (_E8998690198_)))))
                       (_E8998590262_))))
                  (_export-imports89832_
                   (lambda (_src89856_ _r89857_)
                     (letrec* ((_current-ctx89859_
                                (gx#current-expander-context))
                               (_current-phi89860_
                                (gx#current-export-expander-phi))
                               (_import->export89861_
                                (lambda (_in89942_)
                                  (let* ((_in8994389951_ _in89942_)
                                         (_E8994589955_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8994389951_)))
                                         (_K8994689962_
                                          (lambda (_phi89958_
                                                   _key89959_
                                                   _out89960_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89859_
                                             _key89959_
                                             _phi89958_
                                             _key89959_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8994389951_
                                         'gx#module-import::t)
                                        (let* ((_e8994789965_
                                                (##unchecked-structure-ref
                                                 _in8994389951_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89968_ _e8994789965_)
                                               (_e8994889970_
                                                (##unchecked-structure-ref
                                                 _in8994389951_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89973_ _e8994889970_)
                                               (_e8994989975_
                                                (##unchecked-structure-ref
                                                 _in8994389951_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89978_ _e8994989975_))
                                          (_K8994689962_
                                           _phi89978_
                                           _key89973_
                                           _out89968_))
                                        (_E8994589955_)))))
                               (_fold-e89862_
                                (lambda (_in89864_ _r89865_)
                                  (let* ((_in8986689880_ _in89864_)
                                         (_else8986989888_
                                          (lambda () _r89865_)))
                                    (let ((_K8987589924_
                                           (lambda (_phi89920_
                                                    _key89921_
                                                    _out89922_)
                                             (if (and (fx= _phi89920_
                                                           _current-phi89860_)
                                                      (eq? _src89856_
                                                           (##unchecked-structure-ref
                                                            _out89922_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89861_
                                                        _in89864_)
                                                       _r89865_)
                                                 _r89865_)))
                                          (_K8987189899_
                                           (lambda (_imports89892_
                                                    _phi89893_
                                                    _ctx89894_)
                                             (if (and (fx= _phi89893_
                                                           _current-phi89860_)
                                                      (eq? _src89856_
                                                           _ctx89894_))
                                                 (foldl1 (lambda (_in89896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89897_)
                   (cons (_import->export89861_ _in89896_) _r89897_))
                 _r89865_
                 _imports89892_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89865_))))
                                      (let ((_try-match8986889917_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8986689880_
                                                    'gx#import-set::t)
                                                   (let* ((_e8987289902_
                                                           (##unchecked-structure-ref
                                                            _in8986689880_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8987389907_
                                                           (##unchecked-structure-ref
                                                            _in8986689880_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8987489912_
                                                           (##unchecked-structure-ref
                                                            _in8986689880_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89905_
                                                            _e8987289902_)
                                                           (_phi89910_
                                                            _e8987389907_)
                                                           (_imports89915_
                                                            _e8987489912_))
                                                       (_K8987189899_
                                                        _imports89915_
                                                        _phi89910_
                                                        _ctx89905_)))
                                                   (_else8986989888_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8986689880_
                                             'gx#module-import::t)
                                            (let* ((_e8987689927_
                                                    (##unchecked-structure-ref
                                                     _in8986689880_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8987789932_
                                                    (##unchecked-structure-ref
                                                     _in8986689880_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8987889937_
                                                    (##unchecked-structure-ref
                                                     _in8986689880_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89930_ _e8987689927_)
                                                    (_key89935_ _e8987789932_)
                                                    (_phi89940_ _e8987889937_))
                                                (_K8987589924_
                                                 _phi89940_
                                                 _key89935_
                                                 _out89930_)))
                                            (_try-match8986889917_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89856_
                              _current-phi89860_
                              (foldl1 _fold-e89862_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89859_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89857_))))
                  (_export!89833_
                   (lambda (_rbody89846_)
                     (letrec* ((_current-ctx89848_
                                (gx#current-expander-context))
                               (_fold-e89849_
                                (lambda (_out89853_ _r89854_)
                                  (if (##structure-direct-instance-of?
                                       _out89853_
                                       'gx#module-export::t)
                                      (cons _out89853_ _r89854_)
                                      (if (##structure-direct-instance-of?
                                           _out89853_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89854_
                                                  (##unchecked-structure-ref
                                                   _out89853_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89854_)))))
                       (let ((_body89851_ (reverse _rbody89846_)))
                         (##unchecked-structure-set!
                          _current-ctx89848_
                          (foldl1 _fold-e89849_
                                  (##unchecked-structure-ref
                                   _current-ctx89848_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89851_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89851_))))
                  (_expanded-export?89834_
                   (lambda (_e89841_)
                     (let ((_$e89843_
                            (##structure-direct-instance-of?
                             _e89841_
                             'gx#module-export::t)))
                       (if _$e89843_
                           _$e89843_
                           (##structure-direct-instance-of?
                            _e89841_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89828_)
              (let ((_rbody89839_
                     (gx#core-expand-import/export
                      _stx89827_
                      _expanded-export?89834_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189831_)))
                (if _internal-expand?89828_
                    (reverse _rbody89839_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89833_ _rbody89839_))
                     (gx#stx-source _stx89827_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89827_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89827_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx90312_)
        (let ((_internal-expand?90314_ '#f))
          (gx#core-expand-export%__% _stx90312_ _internal-expand?90314_))))
    (define gx#core-expand-export%
      (lambda _g93278_
        (let ((_g93277_ (##length _g93278_)))
          (cond ((##fx= _g93277_ 1)
                 (apply (lambda (_stx90312_)
                          (gx#core-expand-export%__0 _stx90312_))
                        _g93278_))
                ((##fx= _g93277_ 2)
                 (apply (lambda (_stx90316_ _internal-expand?90317_)
                          (gx#core-expand-export%__%
                           _stx90316_
                           _internal-expand?90317_))
                        _g93278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g93278_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89824_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89824_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89794_)
        (let* ((_e8979589802_ _stx89794_)
               (_E8979789806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8979589802_)))
               (_E8979689820_
                (lambda ()
                  (if (gx#stx-pair? _e8979589802_)
                      (let ((_e8979889810_ (gx#syntax-e _e8979589802_)))
                        (let ((_hd8979989813_ (##car _e8979889810_))
                              (_tl8980089815_ (##cdr _e8979889810_)))
                          (let ((_body89818_ _tl8980089815_))
                            (if (gx#identifier-list? _body89818_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89818_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89818_))
                                   (gx#stx-source _stx89794_)))
                                (_E8979789806_)))))
                      (_E8979789806_)))))
          (_E8979689820_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89760_ _private?89761_ _phi89762_ _ctx89763_)
        (gx#core-bind-syntax!__%
         _id89760_
         ((if _private?89761_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89760_))
         _private?89761_
         _phi89762_
         _ctx89763_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89768_)
        (let* ((_private?89770_ '#f)
               (_phi89772_ (gx#current-expander-phi))
               (_ctx89774_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89768_
           _private?89770_
           _phi89772_
           _ctx89774_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89776_ _private?89777_)
        (let* ((_phi89779_ (gx#current-expander-phi))
               (_ctx89781_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89776_
           _private?89777_
           _phi89779_
           _ctx89781_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89783_ _private?89784_ _phi89785_)
        (let ((_ctx89787_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89783_
           _private?89784_
           _phi89785_
           _ctx89787_))))
    (define gx#core-bind-feature!
      (lambda _g93280_
        (let ((_g93279_ (##length _g93280_)))
          (cond ((##fx= _g93279_ 1)
                 (apply (lambda (_id89768_)
                          (gx#core-bind-feature!__0 _id89768_))
                        _g93280_))
                ((##fx= _g93279_ 2)
                 (apply (lambda (_id89776_ _private?89777_)
                          (gx#core-bind-feature!__1 _id89776_ _private?89777_))
                        _g93280_))
                ((##fx= _g93279_ 3)
                 (apply (lambda (_id89783_ _private?89784_ _phi89785_)
                          (gx#core-bind-feature!__2
                           _id89783_
                           _private?89784_
                           _phi89785_))
                        _g93280_))
                ((##fx= _g93279_ 4)
                 (apply (lambda (_id89789_
                                 _private?89790_
                                 _phi89791_
                                 _ctx89792_)
                          (gx#core-bind-feature!__%
                           _id89789_
                           _private?89790_
                           _phi89791_
                           _ctx89792_))
                        _g93280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g93280_))))))))
