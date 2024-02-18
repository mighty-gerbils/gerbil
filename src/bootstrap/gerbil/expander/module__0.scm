(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708247275)
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
      (lambda _$args166204_
        (apply make-instance gx#module-import::t _$args166204_)))
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
      (lambda _$args166201_
        (apply make-instance gx#module-export::t _$args166201_)))
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
      (lambda _$args166198_
        (apply make-instance gx#import-set::t _$args166198_)))
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
      (lambda _$args166195_
        (apply make-instance gx#export-set::t _$args166195_)))
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
      (lambda _$args166192_
        (apply make-instance gx#import-expander::t _$args166192_)))
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
      (lambda _$args166189_
        (apply make-instance gx#export-expander::t _$args166189_)))
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
      (lambda _$args166186_
        (apply make-instance gx#import-export-expander::t _$args166186_)))
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
      (lambda (_path166183_ _fun166184_)
        (call-with-input-file
         (cons 'path: (cons _path166183_ gx#source-file-settings))
         _fun166184_)))
    (define gx#module-context:::init!
      (lambda (_self166177_ _id166178_ _super166179_ _ns166180_ _path166181_)
        (if (##fx< '11 (##structure-length _self166177_))
            (begin
              (##unchecked-structure-set!
               _self166177_
               _id166178_
               '1
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               (make-hash-table-eq)
               '2
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               _super166179_
               '3
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               '#f
               '4
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               '#f
               '5
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               _ns166180_
               '6
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               _path166181_
               '7
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               '()
               '8
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               '()
               '9
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               '#f
               '10
               (##structure-type _self166177_)
               '#f)
              (##unchecked-structure-set!
               _self166177_
               '#f
               '11
               (##structure-type _self166177_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self166177_
                   '11
                   (##vector-length _self166177_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self166021_ _ctx166022_ _root166023_)
        (let ((_super166031_
               (let ((_$e166025_ _root166023_))
                 (if _$e166025_
                     _$e166025_
                     (let ((_$e166028_ (gx#core-context-root__0)))
                       (if _$e166028_
                           _$e166028_
                           (let ((__obj170313
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor170314
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj170313
                                     ':init!)))
                               (if __constructor170314
                                   (__constructor170314 __obj170313)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj170313)))))))
          (if _ctx166022_
              (let ((_id166034_
                     (##structure-ref
                      _ctx166022_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path166035_
                     (##structure-ref _ctx166022_ '7 gx#module-context::t '#f))
                    (_in166036_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx166022_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e166037_
                     (make-promise (lambda () (gx#eval-module _ctx166022_)))))
                (if (##fx< '8 (##structure-length _self166021_))
                    (begin
                      (##unchecked-structure-set!
                       _self166021_
                       _id166034_
                       '1
                       (##structure-type _self166021_)
                       '#f)
                      (##unchecked-structure-set!
                       _self166021_
                       (make-hash-table-eq 'size: (length _in166036_))
                       '2
                       (##structure-type _self166021_)
                       '#f)
                      (##unchecked-structure-set!
                       _self166021_
                       _super166031_
                       '3
                       (##structure-type _self166021_)
                       '#f)
                      (##unchecked-structure-set!
                       _self166021_
                       '#f
                       '4
                       (##structure-type _self166021_)
                       '#f)
                      (##unchecked-structure-set!
                       _self166021_
                       '#f
                       '5
                       (##structure-type _self166021_)
                       '#f)
                      (##unchecked-structure-set!
                       _self166021_
                       _path166035_
                       '6
                       (##structure-type _self166021_)
                       '#f)
                      (##unchecked-structure-set!
                       _self166021_
                       _in166036_
                       '7
                       (##structure-type _self166021_)
                       '#f)
                      (##unchecked-structure-set!
                       _self166021_
                       _e166037_
                       '8
                       (##structure-type _self166021_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self166021_
                           '8
                           (##vector-length _self166021_)))
                (for-each
                 (lambda (_g166038166040_)
                   (gx#core-bind-weak-import!__% _g166038166040_ _self166021_))
                 _in166036_))
              (if (##fx< '8 (##structure-length _self166021_))
                  (begin
                    (##unchecked-structure-set!
                     _self166021_
                     '#f
                     '1
                     (##structure-type _self166021_)
                     '#f)
                    (##unchecked-structure-set!
                     _self166021_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self166021_)
                     '#f)
                    (##unchecked-structure-set!
                     _self166021_
                     _super166031_
                     '3
                     (##structure-type _self166021_)
                     '#f)
                    (##unchecked-structure-set!
                     _self166021_
                     '#f
                     '4
                     (##structure-type _self166021_)
                     '#f)
                    (##unchecked-structure-set!
                     _self166021_
                     '#f
                     '5
                     (##structure-type _self166021_)
                     '#f)
                    (##unchecked-structure-set!
                     _self166021_
                     '#f
                     '6
                     (##structure-type _self166021_)
                     '#f)
                    (##unchecked-structure-set!
                     _self166021_
                     '()
                     '7
                     (##structure-type _self166021_)
                     '#f)
                    (##unchecked-structure-set!
                     _self166021_
                     '#f
                     '8
                     (##structure-type _self166021_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self166021_
                         '8
                         (##vector-length _self166021_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self166046_ _ctx166047_)
        (let ((_root166049_ '#f))
          (gx#prelude-context:::init!__%
           _self166046_
           _ctx166047_
           _root166049_))))
    (define gx#prelude-context:::init!
      (lambda _g170320_
        (let ((_g170319_ (##length _g170320_)))
          (cond ((##fx= _g170319_ 2)
                 (apply (lambda (_self166046_ _ctx166047_)
                          (gx#prelude-context:::init!__0
                           _self166046_
                           _ctx166047_))
                        _g170320_))
                ((##fx= _g170319_ 3)
                 (apply (lambda (_self166051_ _ctx166052_ _root166053_)
                          (gx#prelude-context:::init!__%
                           _self166051_
                           _ctx166052_
                           _root166053_))
                        _g170320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g170320_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self165895_ _e165896_)
        (if (##fx< '3 (##structure-length _self165895_))
            (begin
              (##unchecked-structure-set!
               _self165895_
               _e165896_
               '1
               (##structure-type _self165895_)
               '#f)
              (##unchecked-structure-set!
               _self165895_
               (gx#current-expander-context)
               '2
               (##structure-type _self165895_)
               '#f)
              (##unchecked-structure-set!
               _self165895_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self165895_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self165895_
                   '3
                   (##vector-length _self165895_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g165521165524_ _g165522165526_)
        (gx#core-apply-user-expander__%
         _g165521165524_
         _g165522165526_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g165392165395_ _g165393165397_)
        (gx#core-apply-user-expander__%
         _g165392165395_
         _g165393165397_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx165263_)
        (let* ((_path165265_
                (##structure-ref _ctx165263_ '7 gx#module-context::t '#f))
               (_path165267_
                (if (pair? _path165265_) (last _path165265_) _path165265_)))
          (if (string? _path165267_) _path165267_ '#f))))
    (define gx#import-module__%
      (lambda (_path165239_ _reload?165240_ _eval?165241_)
        (let ((_ctx165243_
               ((gx#current-expander-module-import)
                _path165239_
                _reload?165240_)))
          (if (and _ctx165243_ _eval?165241_)
              (gx#eval-module _ctx165243_)
              '#!void)
          _ctx165243_)))
    (define gx#import-module__0
      (lambda (_path165248_)
        (let* ((_reload?165250_ '#f) (_eval?165252_ '#f))
          (gx#import-module__% _path165248_ _reload?165250_ _eval?165252_))))
    (define gx#import-module__1
      (lambda (_path165254_ _reload?165255_)
        (let ((_eval?165257_ '#f))
          (gx#import-module__% _path165254_ _reload?165255_ _eval?165257_))))
    (define gx#import-module
      (lambda _g170322_
        (let ((_g170321_ (##length _g170322_)))
          (cond ((##fx= _g170321_ 1)
                 (apply (lambda (_path165248_)
                          (gx#import-module__0 _path165248_))
                        _g170322_))
                ((##fx= _g170321_ 2)
                 (apply (lambda (_path165254_ _reload?165255_)
                          (gx#import-module__1 _path165254_ _reload?165255_))
                        _g170322_))
                ((##fx= _g170321_ 3)
                 (apply (lambda (_path165259_ _reload?165260_ _eval?165261_)
                          (gx#import-module__%
                           _path165259_
                           _reload?165260_
                           _eval?165261_))
                        _g170322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g170322_))))))
    (define gx#eval-module
      (lambda (_mod165236_) ((gx#current-expander-module-eval) _mod165236_)))
    (define gx#core-eval-module
      (lambda (_obj165221_)
        (letrec ((_force-e165223_
                  (lambda (_getf165232_ _e165233_)
                    (call-with-parameters
                     (lambda () (force (_getf165232_ _e165233_)))
                     gx#current-expander-context
                     _e165233_
                     gx#current-expander-phi
                     '0))))
          (let _recur165225_ ((_e165227_ _obj165221_))
            (if (##structure-instance-of? _e165227_ 'gx#module-context::t)
                (begin
                  (let ((_$e165229_ (gx#core-context-prelude__% _e165227_)))
                    (if _$e165229_ (_recur165225_ _$e165229_) '#!void))
                  (_force-e165223_ gx#module-context-e _e165227_))
                (if (##structure-instance-of? _e165227_ 'gx#prelude-context::t)
                    (_force-e165223_ gx#prelude-context-e _e165227_)
                    (if (gx#stx-string? _e165227_)
                        (_recur165225_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e165227_)))
                        (if (gx#core-library-module-path? _e165227_)
                            (_recur165225_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e165227_)))
                            (error '"Cannot eval module" _obj165221_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx165204_)
        (let _lp165206_ ((_e165208_ _ctx165204_))
          (if (or (##structure-instance-of? _e165208_ 'gx#module-context::t)
                  (##structure-instance-of? _e165208_ 'gx#local-context::t))
              (_lp165206_
               (##unchecked-structure-ref _e165208_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e165208_ 'gx#prelude-context::t)
                  _e165208_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx165217_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx165217_))))
    (define gx#core-context-prelude
      (lambda _g170324_
        (let ((_g170323_ (##length _g170324_)))
          (cond ((##fx= _g170323_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g170324_))
                ((##fx= _g170323_ 1)
                 (apply (lambda (_ctx165219_)
                          (gx#core-context-prelude__% _ctx165219_))
                        _g170324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g170324_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx165194_)
        (let* ((_ht165196_ (gx#current-expander-module-registry))
               (_$e165198_ (hash-get _ht165196_ _ctx165194_)))
          (if _$e165198_
              (values _$e165198_)
              (let ((_pre165201_
                     (let ((__obj170315
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
                       (gx#prelude-context:::init! __obj170315 _ctx165194_)
                       __obj170315)))
                (table-set! _ht165196_ _ctx165194_ _pre165201_)
                _pre165201_)))))
    (define gx#core-import-module__%
      (lambda (_rpath165075_ _reload?165076_)
        (letrec ((_import-source165078_
                  (lambda (_path165163_)
                    (if (member _path165163_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path165163_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g170325_ (gx#core-read-module _path165163_)))
                         (begin
                           (let ((_g170326_
                                  (if (##values? _g170325_)
                                      (##vector-length _g170325_)
                                      1)))
                             (if (not (##fx= _g170326_ 4))
                                 (error "Context expects 4 values" _g170326_)))
                           (let ((_pre165166_ (##vector-ref _g170325_ 0))
                                 (_id165167_ (##vector-ref _g170325_ 1))
                                 (_ns165168_ (##vector-ref _g170325_ 2))
                                 (_body165169_ (##vector-ref _g170325_ 3)))
                             (let* ((_prelude165174_
                                     (if (##structure-instance-of?
                                          _pre165166_
                                          'gx#prelude-context::t)
                                         _pre165166_
                                         (if (##structure-instance-of?
                                              _pre165166_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre165166_)
                                             (if (string? _pre165166_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre165166_))
                                                 (if (not _pre165166_)
                                                     (let ((_$e165171_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e165171_
                                                           _$e165171_
                                                           (let ((__obj170316
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
                     (gx#prelude-context:::init! __obj170316 '#f)
                     __obj170316)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath165075_
                                                            _pre165166_))))))
                                    (_ctx165176_
                                     (let ((__obj170317
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
                                        __obj170317
                                        _id165167_
                                        _prelude165174_
                                        _ns165168_
                                        _path165163_)
                                       __obj170317))
                                    (_body165178_
                                     (gx#core-expand-module-begin
                                      _body165169_
                                      _ctx165176_))
                                    (_body165180_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body165178_)
                                      _path165163_
                                      _ctx165176_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx165176_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body165180_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx165176_
                                _body165180_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path165163_
                                _ctx165176_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id165167_
                                _ctx165176_)
                               _ctx165176_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path165163_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule165079_
                  (lambda (_rpath165091_)
                    (let* ((_rpath165092165099_ _rpath165091_)
                           (_E165094165103_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath165092165099_)))
                           (_K165095165151_
                            (lambda (_refs165106_ _origin165107_)
                              (let ((_ctx165109_
                                     (if _origin165107_
                                         (gx#core-import-module__%
                                          _origin165107_
                                          _reload?165076_)
                                         (gx#current-expander-context))))
                                (let _lp165111_ ((_rest165113_ _refs165106_)
                                                 (_ctx165114_ _ctx165109_))
                                  (let* ((_rest165115165123_ _rest165113_)
                                         (_else165117165131_
                                          (lambda () _ctx165114_))
                                         (_K165119165139_
                                          (lambda (_rest165134_ _id165135_)
                                            (let ((_bind165137_
                                                   (gx#resolve-identifier__%
                                                    _id165135_
                                                    '0
                                                    _ctx165114_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind165137_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind165137_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp165111_
                                                   _rest165134_
                                                   (##unchecked-structure-ref
                                                    _bind165137_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath165091_
                                                         _id165135_
                                                         _bind165137_))))))
                                    (if (##pair? _rest165115165123_)
                                        (let ((_hd165120165142_
                                               (##car _rest165115165123_))
                                              (_tl165121165144_
                                               (##cdr _rest165115165123_)))
                                          (let* ((_id165147_ _hd165120165142_)
                                                 (_rest165149_
                                                  _tl165121165144_))
                                            (_K165119165139_
                                             _rest165149_
                                             _id165147_)))
                                        (_else165117165131_))))))))
                      (if (##pair? _rpath165092165099_)
                          (let ((_hd165096165154_ (##car _rpath165092165099_))
                                (_tl165097165156_ (##cdr _rpath165092165099_)))
                            (let* ((_origin165159_ _hd165096165154_)
                                   (_refs165161_ _tl165097165156_))
                              (_K165095165151_ _refs165161_ _origin165159_)))
                          (_E165094165103_))))))
          (let ((_$e165081_
                 (if (not _reload?165076_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath165075_)
                     '#f)))
            (if _$e165081_
                (values _$e165081_)
                (if (list? _rpath165075_)
                    (_import-submodule165079_ _rpath165075_)
                    (if (gx#core-library-module-path? _rpath165075_)
                        (let ((_ctx165084_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath165075_)
                                _reload?165076_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath165075_
                           _ctx165084_)
                          _ctx165084_)
                        (let* ((_npath165086_ (path-normalize _rpath165075_))
                               (_$e165088_
                                (if (not _reload?165076_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath165086_)
                                    '#f)))
                          (if _$e165088_
                              (values _$e165088_)
                              (_import-source165078_ _npath165086_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath165187_)
        (let ((_reload?165189_ '#f))
          (gx#core-import-module__% _rpath165187_ _reload?165189_))))
    (define gx#core-import-module
      (lambda _g170328_
        (let ((_g170327_ (##length _g170328_)))
          (cond ((##fx= _g170327_ 1)
                 (apply (lambda (_rpath165187_)
                          (gx#core-import-module__0 _rpath165187_))
                        _g170328_))
                ((##fx= _g170327_ 2)
                 (apply (lambda (_rpath165191_ _reload?165192_)
                          (gx#core-import-module__%
                           _rpath165191_
                           _reload?165192_))
                        _g170328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g170328_))))))
    (define gx#core-read-module
      (lambda (_path165064_)
        (with-catch
         (lambda (_exn165066_)
           (if (and (datum-parsing-exception? _exn165066_)
                    (eq? (datum-parsing-exception-filepos _exn165066_) '0))
               (gx#core-read-module/lang _path165064_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path165064_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g165068165070_)
                      (display-exception _exn165066_ _g165068165070_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path165064_)))))
    (define gx#core-read-module/sexp
      (lambda (_path164927_)
        (let _lp164929_ ((_body164931_ (read-syntax-from-file _path164927_))
                         (_pre164932_ '#f)
                         (_ns164933_ '#f)
                         (_pkg164934_ '#f))
          (let* ((_e164935164959_ _body164931_)
                 (_E164951164981_
                  (lambda ()
                    (let ((_g170329_
                           (if _pkg164934_
                               (values _pre164932_ _ns164933_ _pkg164934_)
                               (gx#core-read-module-package
                                _path164927_
                                _pre164932_
                                _ns164933_))))
                      (begin
                        (let ((_g170330_
                               (if (##values? _g170329_)
                                   (##vector-length _g170329_)
                                   1)))
                          (if (not (##fx= _g170330_ 3))
                              (error "Context expects 3 values" _g170330_)))
                        (let ((_pre164963_ (##vector-ref _g170329_ 0))
                              (_ns164964_ (##vector-ref _g170329_ 1))
                              (_pkg164965_ (##vector-ref _g170329_ 2)))
                          (let* ((_prelude164967_
                                  (if (gx#core-bound-module-prelude?
                                       _pre164963_)
                                      (gx#syntax-local-e__0 _pre164963_)
                                      (if (gx#core-library-module-path?
                                           _pre164963_)
                                          (gx#core-resolve-library-module-path
                                           _pre164963_)
                                          (if (gx#stx-string? _pre164963_)
                                              (gx#core-resolve-module-path__%
                                               _pre164963_
                                               _path164927_)
                                              (gx#stx-e _pre164963_)))))
                                 (_path-id164969_
                                  (gx#core-module-path->namespace
                                   _path164927_))
                                 (_pkg-id164971_
                                  (if _pkg164965_
                                      (string-append
                                       _pkg164965_
                                       '"/"
                                       _path-id164969_)
                                      _path-id164969_))
                                 (_module-id164973_
                                  (string->symbol _pkg-id164971_))
                                 (_module-ns164978_
                                  (if (eq? _ns164964_ '#!void)
                                      '#f
                                      (let ((_$e164975_ _ns164964_))
                                        (if _$e164975_
                                            _$e164975_
                                            _pkg-id164971_)))))
                            (values _prelude164967_
                                    _module-id164973_
                                    _module-ns164978_
                                    _body164931_)))))))
                 (_E164944165010_
                  (lambda ()
                    (if (gx#stx-pair? _e164935164959_)
                        (let ((_e164952164985_ (gx#syntax-e _e164935164959_)))
                          (let ((_hd164953164988_ (##car _e164952164985_))
                                (_tl164954164990_ (##cdr _e164952164985_)))
                            (if (eq? (gx#stx-e _hd164953164988_) 'package:)
                                (if (gx#stx-pair? _tl164954164990_)
                                    (let ((_e164955164993_
                                           (gx#syntax-e _tl164954164990_)))
                                      (let ((_hd164956164996_
                                             (##car _e164955164993_))
                                            (_tl164957164998_
                                             (##cdr _e164955164993_)))
                                        (let* ((_pkg165001_ _hd164956164996_)
                                               (_rest165003_ _tl164957164998_))
                                          (if '#t
                                              (let ((_pkg165008_
                                                     (if (gx#identifier?
                                                          _pkg165001_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg165001_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg165001_)
                         (gx#stx-false? _pkg165001_))
                     (gx#stx-e _pkg165001_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg165001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp164929_
                                                 _rest165003_
                                                 _pre164932_
                                                 _ns164933_
                                                 _pkg165008_))
                                              (_E164951164981_)))))
                                    (_E164951164981_))
                                (_E164951164981_))))
                        (_E164951164981_))))
                 (_E164937165036_
                  (lambda ()
                    (if (gx#stx-pair? _e164935164959_)
                        (let ((_e164945165014_ (gx#syntax-e _e164935164959_)))
                          (let ((_hd164946165017_ (##car _e164945165014_))
                                (_tl164947165019_ (##cdr _e164945165014_)))
                            (if (eq? (gx#stx-e _hd164946165017_) 'namespace:)
                                (if (gx#stx-pair? _tl164947165019_)
                                    (let ((_e164948165022_
                                           (gx#syntax-e _tl164947165019_)))
                                      (let ((_hd164949165025_
                                             (##car _e164948165022_))
                                            (_tl164950165027_
                                             (##cdr _e164948165022_)))
                                        (let* ((_ns165030_ _hd164949165025_)
                                               (_rest165032_ _tl164950165027_))
                                          (if '#t
                                              (let ((_ns165034_
                                                     (if (gx#identifier?
                                                          _ns165030_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns165030_))
                                                         (if (gx#stx-string?
                                                              _ns165030_)
                                                             (gx#stx-e
                                                              _ns165030_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns165030_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns165030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp164929_
                                                 _rest165032_
                                                 _pre164932_
                                                 _ns165034_
                                                 _pkg164934_))
                                              (_E164944165010_)))))
                                    (_E164944165010_))
                                (_E164944165010_))))
                        (_E164944165010_))))
                 (_E164936165060_
                  (lambda ()
                    (if (gx#stx-pair? _e164935164959_)
                        (let ((_e164938165040_ (gx#syntax-e _e164935164959_)))
                          (let ((_hd164939165043_ (##car _e164938165040_))
                                (_tl164940165045_ (##cdr _e164938165040_)))
                            (if (eq? (gx#stx-e _hd164939165043_) 'prelude:)
                                (if (gx#stx-pair? _tl164940165045_)
                                    (let ((_e164941165048_
                                           (gx#syntax-e _tl164940165045_)))
                                      (let ((_hd164942165051_
                                             (##car _e164941165048_))
                                            (_tl164943165053_
                                             (##cdr _e164941165048_)))
                                        (let* ((_prelude165056_
                                                _hd164942165051_)
                                               (_rest165058_ _tl164943165053_))
                                          (if '#t
                                              (_lp164929_
                                               _rest165058_
                                               _prelude165056_
                                               _ns164933_
                                               _pkg164934_)
                                              (_E164937165036_)))))
                                    (_E164937165036_))
                                (_E164937165036_))))
                        (_E164937165036_)))))
            (_E164936165060_)))))
    (define gx#core-read-module/lang
      (lambda (_path164754_)
        (letrec ((_default-read-module-body164756_
                  (lambda (_inp164919_)
                    (let _lp164921_ ((_body164923_ '()))
                      (let ((_next164925_ (read-syntax _inp164919_)))
                        (if (eof-object? _next164925_)
                            (reverse _body164923_)
                            (_lp164921_ (cons _next164925_ _body164923_)))))))
                 (_read-body164757_
                  (lambda (_inp164838_
                           _pre164839_
                           _ns164840_
                           _pkg164841_
                           _args164842_)
                    (let ((_g170331_
                           (if _pkg164841_
                               (values _pre164839_ _ns164840_ _pkg164841_)
                               (gx#core-read-module-package
                                _path164754_
                                _pre164839_
                                _ns164840_))))
                      (begin
                        (let ((_g170332_
                               (if (##values? _g170331_)
                                   (##vector-length _g170331_)
                                   1)))
                          (if (not (##fx= _g170332_ 3))
                              (error "Context expects 3 values" _g170332_)))
                        (let ((_pre164844_ (##vector-ref _g170331_ 0))
                              (_ns164845_ (##vector-ref _g170331_ 1))
                              (_pkg164846_ (##vector-ref _g170331_ 2)))
                          (let* ((_prelude164848_
                                  (gx#import-module__0 _pre164844_))
                                 (_read-module-body164902_
                                  (let ((_$e164894_
                                         (find (lambda (_e164849164851_)
                                                 (let* ((_g164853164863_
                                                         _e164849164851_)
                                                        (_else164855164871_
                                                         (lambda () '#f))
                                                        (_K164857164875_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g164853164863_
                                                        'gx#module-export::t)
                                                       (let* ((_e164858164878_
                                                               (##unchecked-structure-ref
                                                                _g164853164863_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e164859164881_
                                                               (##unchecked-structure-ref
                                                                _g164853164863_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e164860164884_
                                                               (##unchecked-structure-ref
                                                                _g164853164863_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e164860164884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e164861164887_
                            (##unchecked-structure-ref
                             _g164853164863_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g164889164891_)
                              (eq? _g164889164891_ 'read-module-body))
                            _e164861164887_)
                           (_K164857164875_)
                           (_else164855164871_)))
                     (_else164855164871_)))
               (_else164855164871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude164848_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e164894_
                                        ((lambda (_xport164897_)
                                           (let ((_proc164900_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport164897_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc164900_)
                                                 _proc164900_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path164754_
                                                  _pre164844_
                                                  _proc164900_))))
                                         _$e164894_)
                                        _default-read-module-body164756_)))
                                 (_path-id164904_
                                  (gx#core-module-path->namespace
                                   _path164754_))
                                 (_pkg-id164906_
                                  (if _pkg164846_
                                      (string-append
                                       _pkg164846_
                                       '"/"
                                       _path-id164904_)
                                      _path-id164904_))
                                 (_module-id164908_
                                  (string->symbol _pkg-id164906_))
                                 (_module-ns164913_
                                  (let ((_$e164910_ _ns164845_))
                                    (if _$e164910_ _$e164910_ _pkg-id164906_)))
                                 (_body164916_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body164902_ _inp164838_))
                                   gx#current-module-reader-path
                                   _path164754_
                                   gx#current-module-reader-args
                                   _args164842_)))
                            (values _prelude164848_
                                    _module-id164908_
                                    _module-ns164913_
                                    _body164916_)))))))
                 (_string-e164758_
                  (lambda (_obj164835_ _what164836_)
                    (if (string? _obj164835_)
                        _obj164835_
                        (if (symbol? _obj164835_)
                            (symbol->string _obj164835_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what164836_)
                             _path164754_
                             _obj164835_)))))
                 (_read-lang-args164759_
                  (lambda (_inp164790_ _args164791_)
                    (let* ((_args164792164800_ _args164791_)
                           (_else164794164808_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path164754_)))
                           (_K164796164823_
                            (lambda (_args164811_ _prelude164812_)
                              (let* ((_pkg164814_
                                      (pgetq 'package: _args164811_))
                                     (_pkg164816_
                                      (if _pkg164814_
                                          (_string-e164758_
                                           _pkg164814_
                                           '"package")
                                          '#f))
                                     (_ns164818_
                                      (pgetq 'namespace: _args164811_))
                                     (_ns164820_
                                      (if _ns164818_
                                          (_string-e164758_
                                           _ns164818_
                                           '"namespace")
                                          '#f)))
                                (_read-body164757_
                                 _inp164790_
                                 _prelude164812_
                                 _ns164820_
                                 _pkg164816_
                                 _args164811_)))))
                      (if (##pair? _args164792164800_)
                          (let ((_hd164797164826_ (##car _args164792164800_))
                                (_tl164798164828_ (##cdr _args164792164800_)))
                            (let* ((_prelude164831_ _hd164797164826_)
                                   (_args164833_ _tl164798164828_))
                              (_K164796164823_ _args164833_ _prelude164831_)))
                          (_else164794164808_)))))
                 (_read-lang164760_
                  (lambda (_inp164765_)
                    (let* ((_head164767_ (read-line _inp164765_))
                           (_$e164769_ (string-index _head164767_ '#\space)))
                      (if _$e164769_
                          ((lambda (_ix164772_)
                             (let ((_lang164774_
                                    (substring _head164767_ '0 _ix164772_)))
                               (if (equal? _lang164774_ '"#lang")
                                   (let* ((_rest164776_
                                           (substring
                                            _head164767_
                                            (fx+ _ix164772_ '1)
                                            (string-length _head164767_)))
                                          (_args164787_
                                           (with-catch
                                            (lambda (_g164777164779_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path164754_
                                               _g164777164779_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest164776_
                                               (lambda (_g164782164784_)
                                                 (read-all
                                                  _g164782164784_
                                                  read)))))))
                                     (_read-lang-args164759_
                                      _inp164765_
                                      _args164787_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path164754_))))
                           _$e164769_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path164754_)))))
                 (_read-e164761_
                  (lambda (_inp164763_)
                    (if (eq? (peek-char _inp164763_) '#\#)
                        (_read-lang164760_ _inp164763_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path164754_)))))
          (gx#call-with-input-source-file _path164754_ _read-e164761_))))
    (define gx#core-read-module-package
      (lambda (_path164708_ _pre164709_ _ns164710_)
        (letrec ((_string-e164712_
                  (lambda (_e164752_)
                    (if (symbol? _e164752_)
                        (symbol->string _e164752_)
                        (if (string? _e164752_)
                            _e164752_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e164752_))))))
          (let _lp164714_ ((_dir164716_ (path-directory _path164708_))
                           (_pkg-path164717_ '()))
            (let ((_gerbil.pkg164719_ (path-expand '"gerbil.pkg" _dir164716_)))
              (if (file-exists? _gerbil.pkg164719_)
                  (let ((_plist164721_
                         (gx#core-library-package-plist__% _dir164716_ '#t)))
                    (if (null? _plist164721_)
                        (let ((_pkg164723_
                               (if (not (null? _pkg-path164717_))
                                   (string-join _pkg-path164717_ '"/")
                                   '#f)))
                          (values _pre164709_ _ns164710_ _pkg164723_))
                        (if (list? _plist164721_)
                            (let* ((_root164725_
                                    (pgetq 'package: _plist164721_))
                                   (_pkg164729_
                                    (let ((_pkg-path164727_
                                           (if _root164725_
                                               (cons (_string-e164712_
                                                      _root164725_)
                                                     _pkg-path164717_)
                                               _pkg-path164717_)))
                                      (if (not (null? _pkg-path164727_))
                                          (string-join _pkg-path164727_ '"/")
                                          '#f)))
                                   (_ns164736_
                                    (let ((_ns164734_
                                           (let ((_$e164731_ _ns164710_))
                                             (if _$e164731_
                                                 _$e164731_
                                                 (pgetq 'namespace:
                                                        _plist164721_)))))
                                      (if _ns164734_
                                          (_string-e164712_ _ns164734_)
                                          '#f)))
                                   (_pre164741_
                                    (let ((_$e164738_ _pre164709_))
                                      (if _$e164738_
                                          _$e164738_
                                          (pgetq 'prelude: _plist164721_)))))
                              (values _pre164741_ _ns164736_ _pkg164729_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist164721_))))
                  (let ((_dir*164744_
                         (path-strip-trailing-directory-separator
                          _dir164716_)))
                    (if (or (string-empty? _dir*164744_)
                            (equal? _dir164716_ _dir*164744_))
                        (values _pre164709_ _ns164710_ '#f)
                        (let ((_xpath164749_
                               (path-strip-directory _dir*164744_))
                              (_xdir164750_ (path-directory _dir*164744_)))
                          (_lp164714_
                           _xdir164750_
                           (cons _xpath164749_ _pkg-path164717_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path164706_)
        (path-strip-extension (path-strip-directory _path164706_))))
    (define gx#core-module-path->id
      (lambda (_path164704_)
        (string->symbol (gx#core-module-path->namespace _path164704_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path164683_ _rel164684_)
        (let* ((_path164686_ (gx#stx-e _stx-path164683_))
               (_path164688_
                (if (string-empty? (path-extension _path164686_))
                    (string-append _path164686_ '".ss")
                    _path164686_)))
          (gx#core-resolve-path__%
           _path164688_
           (let ((_$e164691_ (gx#stx-source _stx-path164683_)))
             (if _$e164691_ _$e164691_ _rel164684_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path164697_)
        (let ((_rel164699_ '#f))
          (gx#core-resolve-module-path__% _stx-path164697_ _rel164699_))))
    (define gx#core-resolve-module-path
      (lambda _g170334_
        (let ((_g170333_ (##length _g170334_)))
          (cond ((##fx= _g170333_ 1)
                 (apply (lambda (_stx-path164697_)
                          (gx#core-resolve-module-path__0 _stx-path164697_))
                        _g170334_))
                ((##fx= _g170333_ 2)
                 (apply (lambda (_stx-path164701_ _rel164702_)
                          (gx#core-resolve-module-path__%
                           _stx-path164701_
                           _rel164702_))
                        _g170334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g170334_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath164569_)
        (let* ((_spath164571_ (symbol->string (gx#stx-e _libpath164569_)))
               (_spath164573_
                (substring _spath164571_ '1 (string-length _spath164571_)))
               (_ext164575_ (path-extension _spath164573_))
               (_ssi164577_
                (if (string-empty? _ext164575_)
                    (string-append _spath164573_ '".ssi")
                    (string-append
                     (path-strip-extension _spath164573_)
                     '".ssi")))
               (_srcs164581_
                (if (string-empty? _ext164575_)
                    (map (lambda (_ext164579_)
                           (string-append _spath164573_ _ext164579_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath164573_ '()))))
          (let _lp164584_ ((_rest164586_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest164587164596_ _rest164586_)
                   (_E164590164600_
                    (lambda ()
                      (error '"No clause matching" _rest164587164596_))))
              (let ((_K164592164670_
                     (lambda (_rest164611_ _dir164612_)
                       (letrec ((_resolve164614_
                                 (lambda (_ssi164626_ _srcs164627_)
                                   (let ((_compiled-path164629_
                                          (path-expand
                                           _ssi164626_
                                           _dir164612_)))
                                     (if (file-exists? _compiled-path164629_)
                                         (path-normalize _compiled-path164629_)
                                         (let _lpr164631_ ((_rest-src164633_
                                                            _srcs164627_))
                                           (let* ((_rest-src164634164642_
                                                   _rest-src164633_)
                                                  (_else164636164650_
                                                   (lambda ()
                                                     (_lp164584_
                                                      _rest164611_)))
                                                  (_K164638164658_
                                                   (lambda (_rest-src164653_
                                                            _src164654_)
                                                     (let ((_src-path164656_
                                                            (path-expand
                                                             _src164654_
                                                             _dir164612_)))
                                                       (if (file-exists?
                                                            _src-path164656_)
                                                           (path-normalize
                                                            _src-path164656_)
                                                           (_lpr164631_
                                                            _rest-src164653_))))))
                                             (if (##pair? _rest-src164634164642_)
                                                 (let ((_hd164639164661_
                                                        (##car _rest-src164634164642_))
                                                       (_tl164640164663_
                                                        (##cdr _rest-src164634164642_)))
                                                   (let* ((_src164666_
                                                           _hd164639164661_)
                                                          (_rest-src164668_
                                                           _tl164640164663_))
                                                     (_K164638164658_
                                                      _rest-src164668_
                                                      _src164666_)))
                                                 (_else164636164650_)))))))))
                         (let ((_$e164616_
                                (gx#core-library-package-path-prefix
                                 _dir164612_)))
                           (if _$e164616_
                               ((lambda (_prefix164619_)
                                  (if (string-prefix?
                                       _prefix164619_
                                       _spath164573_)
                                      (let ((_ssi164623_
                                             (substring
                                              _ssi164577_
                                              (string-length _prefix164619_)
                                              (string-length _ssi164577_)))
                                            (_srcs164624_
                                             (map (lambda (_src164621_)
                                                    (substring
                                                     _src164621_
                                                     (string-length
                                                      _prefix164619_)
                                                     (string-length
                                                      _src164621_)))
                                                  _srcs164581_)))
                                        (_resolve164614_
                                         _ssi164623_
                                         _srcs164624_))
                                      (_lp164584_ _rest164611_)))
                                _$e164616_)
                               (_resolve164614_ _ssi164577_ _srcs164581_))))))
                    (_K164591164605_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath164569_))))
                (let ((_try-match164589164608_
                       (lambda ()
                         (if (##null? _rest164587164596_)
                             (_K164591164605_)
                             (_E164590164600_)))))
                  (if (##pair? _rest164587164596_)
                      (let ((_tl164594164675_ (##cdr _rest164587164596_))
                            (_hd164593164673_ (##car _rest164587164596_)))
                        (let ((_dir164678_ _hd164593164673_)
                              (_rest164680_ _tl164594164675_))
                          (_K164592164670_ _rest164680_ _dir164678_)))
                      (_try-match164589164608_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath164542_)
        (letrec ((_resolve164544_
                  (lambda (_path164561_ _base164562_)
                    (let ((_$e164564_ (string-rindex _base164562_ '#\/)))
                      (if _$e164564_
                          ((lambda (_idx164567_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base164562_ '0 _idx164567_)
                                '"/"
                                _path164561_))))
                           _$e164564_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path164561_))))))))
          (let ((_spath164546_ (symbol->string (gx#stx-e _modpath164542_)))
                (_mod164547_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod164547_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath164542_))
            (let ((_mpath164549_
                   (symbol->string
                    (##structure-ref
                     _mod164547_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp164551_ ((_spath164553_ _spath164546_)
                               (_mpath164554_ _mpath164549_))
                (if (string-prefix? '"../" _spath164553_)
                    (let ((_$e164556_ (string-rindex _mpath164554_ '#\/)))
                      (if _$e164556_
                          ((lambda (_idx164559_)
                             (_lp164551_
                              (substring
                               _spath164553_
                               '3
                               (string-length _spath164553_))
                              (substring _mpath164554_ '0 _idx164559_)))
                           _$e164556_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath164542_)))
                    (if (string-prefix? '"./" _spath164553_)
                        (_lp164551_
                         (substring
                          _spath164553_
                          '2
                          (string-length _spath164553_))
                         _mpath164554_)
                        (_resolve164544_ _spath164553_ _mpath164554_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir164535_)
        (let ((_$e164537_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir164535_))))
          (if _$e164537_
              ((lambda (_pkg164540_)
                 (string-append (symbol->string _pkg164540_) '"/"))
               _$e164537_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir164507_ _exists?164508_)
        (let* ((_cache164510_ (gx#core-library-package-cache))
               (_$e164512_ (hash-get _cache164510_ _dir164507_)))
          (if _$e164512_
              (values _$e164512_)
              (let* ((_gerbil.pkg164515_
                      (path-expand '"gerbil.pkg" _dir164507_))
                     (_plist164522_
                      (if (or _exists?164508_
                              (file-exists? _gerbil.pkg164515_))
                          (let ((_e164520_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg164515_
                                  read)))
                            (if (eof-object? _e164520_)
                                '()
                                (if (list? _e164520_)
                                    _e164520_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg164515_
                                     _e164520_))))
                          '())))
                (table-set! _cache164510_ _dir164507_ _plist164522_)
                _plist164522_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir164528_)
        (let ((_exists?164530_ '#f))
          (gx#core-library-package-plist__% _dir164528_ _exists?164530_))))
    (define gx#core-library-package-plist
      (lambda _g170336_
        (let ((_g170335_ (##length _g170336_)))
          (cond ((##fx= _g170335_ 1)
                 (apply (lambda (_dir164528_)
                          (gx#core-library-package-plist__0 _dir164528_))
                        _g170336_))
                ((##fx= _g170335_ 2)
                 (apply (lambda (_dir164532_ _exists?164533_)
                          (gx#core-library-package-plist__%
                           _dir164532_
                           _exists?164533_))
                        _g170336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g170336_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e164501_ (gx#current-expander-module-library-package-cache)))
          (if _$e164501_
              (values _$e164501_)
              (let ((_cache164504_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache164504_)
                _cache164504_)))))
    (define gx#core-library-module-path?
      (lambda (_stx164498_) (gx#core-special-module-path? _stx164498_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx164496_) (gx#core-special-module-path? _stx164496_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx164491_ _char164492_)
        (if (gx#identifier? _stx164491_)
            (if (interned-symbol? (gx#stx-e _stx164491_))
                (let ((_str164494_ (symbol->string (gx#stx-e _stx164491_))))
                  (if (fx> (string-length _str164494_) '1)
                      (eq? (string-ref _str164494_ '0) _char164492_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx164485_)
        (gx#core-bound-identifier?__%
         _stx164485_
         (lambda (_g164486164488_)
           (gx#expander-binding?__% _g164486164488_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx164479_)
        (gx#core-bound-identifier?__%
         _stx164479_
         (lambda (_g164480164482_)
           (gx#expander-binding?__% _g164480164482_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx164466_)
        (letrec ((_module-prelude?164468_
                  (lambda (_e164474_)
                    (let ((_$e164476_
                           (##structure-instance-of?
                            _e164474_
                            'gx#module-context::t)))
                      (if _$e164476_
                          _$e164476_
                          (##structure-instance-of?
                           _e164474_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx164466_
           (lambda (_g164469164471_)
             (gx#expander-binding?__%
              _g164469164471_
              _module-prelude?164468_))))))
    (define gx#core-bind-import!__%
      (lambda (_in164396_ _ctx164397_ _force-weak?164398_)
        (let* ((_in164399164408_ _in164396_)
               (_E164401164412_
                (lambda () (error '"No clause matching" _in164399164408_)))
               (_K164402164425_
                (lambda (_weak?164415_ _phi164416_ _key164417_ _source164418_)
                  (gx#core-bind!__%
                   _key164417_
                   (let ((_e164420_
                          (gx#core-resolve-module-export _source164418_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e164420_
                       '1
                       gx#binding::t
                       '#f)
                      _key164417_
                      _phi164416_
                      _e164420_
                      (##unchecked-structure-ref
                       _source164418_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e164422_ _force-weak?164398_))
                        (if _$e164422_ _$e164422_ _weak?164415_))))
                   gx#core-context-rebind?
                   _phi164416_
                   _ctx164397_))))
          (if (##structure-direct-instance-of?
               _in164399164408_
               'gx#module-import::t)
              (let* ((_e164403164428_
                      (##unchecked-structure-ref
                       _in164399164408_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source164431_ _e164403164428_)
                     (_e164404164433_
                      (##unchecked-structure-ref
                       _in164399164408_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key164436_ _e164404164433_)
                     (_e164405164438_
                      (##unchecked-structure-ref
                       _in164399164408_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi164441_ _e164405164438_)
                     (_e164406164443_
                      (##unchecked-structure-ref
                       _in164399164408_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?164446_ _e164406164443_))
                (_K164402164425_
                 _weak?164446_
                 _phi164441_
                 _key164436_
                 _source164431_))
              (_E164401164412_)))))
    (define gx#core-bind-import!__0
      (lambda (_in164451_)
        (let* ((_ctx164453_ (gx#current-expander-context))
               (_force-weak?164455_ '#f))
          (gx#core-bind-import!__%
           _in164451_
           _ctx164453_
           _force-weak?164455_))))
    (define gx#core-bind-import!__1
      (lambda (_in164457_ _ctx164458_)
        (let ((_force-weak?164460_ '#f))
          (gx#core-bind-import!__%
           _in164457_
           _ctx164458_
           _force-weak?164460_))))
    (define gx#core-bind-import!
      (lambda _g170338_
        (let ((_g170337_ (##length _g170338_)))
          (cond ((##fx= _g170337_ 1)
                 (apply (lambda (_in164451_)
                          (gx#core-bind-import!__0 _in164451_))
                        _g170338_))
                ((##fx= _g170337_ 2)
                 (apply (lambda (_in164457_ _ctx164458_)
                          (gx#core-bind-import!__1 _in164457_ _ctx164458_))
                        _g170338_))
                ((##fx= _g170337_ 3)
                 (apply (lambda (_in164462_ _ctx164463_ _force-weak?164464_)
                          (gx#core-bind-import!__%
                           _in164462_
                           _ctx164463_
                           _force-weak?164464_))
                        _g170338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g170338_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in164382_ _ctx164383_)
        (gx#core-bind-import!__% _in164382_ _ctx164383_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in164388_)
        (let ((_ctx164390_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in164388_ _ctx164390_))))
    (define gx#core-bind-weak-import!
      (lambda _g170340_
        (let ((_g170339_ (##length _g170340_)))
          (cond ((##fx= _g170339_ 1)
                 (apply (lambda (_in164388_)
                          (gx#core-bind-weak-import!__0 _in164388_))
                        _g170340_))
                ((##fx= _g170339_ 2)
                 (apply (lambda (_in164392_ _ctx164393_)
                          (gx#core-bind-weak-import!__%
                           _in164392_
                           _ctx164393_))
                        _g170340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g170340_))))))
    (define gx#core-resolve-module-export
      (lambda (_out164273_)
        (letrec ((_subst164275_
                  (lambda (_key164321_)
                    (let* ((_key164322164330_ _key164321_)
                           (_else164324164338_ (lambda () _key164321_))
                           (_K164326164369_
                            (lambda (_mark164341_ _id164342_)
                              (let* ((_mark164343164349_ _mark164341_)
                                     (_E164345164353_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark164343164349_)))
                                     (_K164346164361_
                                      (lambda (_subst164356_)
                                        (let ((_$e164358_
                                               (if _subst164356_
                                                   (hash-get
                                                    _subst164356_
                                                    _id164342_)
                                                   '#f)))
                                          (if _$e164358_
                                              _$e164358_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key164321_))))))
                                (if (##structure-instance-of?
                                     _mark164343164349_
                                     'gx#expander-mark::t)
                                    (let* ((_e164347164364_
                                            (##unchecked-structure-ref
                                             _mark164343164349_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst164367_ _e164347164364_))
                                      (_K164346164361_ _subst164367_))
                                    (_E164345164353_))))))
                      (if (##pair? _key164322164330_)
                          (let ((_hd164327164372_ (##car _key164322164330_))
                                (_tl164328164374_ (##cdr _key164322164330_)))
                            (let* ((_id164377_ _hd164327164372_)
                                   (_mark164379_ _tl164328164374_))
                              (_K164326164369_ _mark164379_ _id164377_)))
                          (_else164324164338_))))))
          (let* ((_out164276164286_ _out164273_)
                 (_E164278164290_
                  (lambda () (error '"No clause matching" _out164276164286_)))
                 (_K164279164297_
                  (lambda (_phi164293_ _key164294_ _ctx164295_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx164295_ _phi164293_)
                     (_subst164275_ _key164294_)))))
            (if (##structure-direct-instance-of?
                 _out164276164286_
                 'gx#module-export::t)
                (let* ((_e164280164300_
                        (##unchecked-structure-ref
                         _out164276164286_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx164303_ _e164280164300_)
                       (_e164281164305_
                        (##unchecked-structure-ref
                         _out164276164286_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key164308_ _e164281164305_)
                       (_e164282164310_
                        (##unchecked-structure-ref
                         _out164276164286_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi164313_ _e164282164310_)
                       (_e164283164315_
                        (##unchecked-structure-ref
                         _out164276164286_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e164284164318_
                        (##unchecked-structure-ref
                         _out164276164286_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K164279164297_ _phi164313_ _key164308_ _ctx164303_))
                (_E164278164290_))))))
    (define gx#core-module-export->import__%
      (lambda (_out164198_ _rename164199_ _dphi164200_)
        (let* ((_out164201164211_ _out164198_)
               (_E164203164215_
                (lambda () (error '"No clause matching" _out164201164211_)))
               (_K164204164227_
                (lambda (_weak?164218_
                         _name164219_
                         _phi164220_
                         _key164221_
                         _ctx164222_)
                  (##structure
                   gx#module-import::t
                   _out164198_
                   (let ((_$e164224_ _rename164199_))
                     (if _$e164224_ _$e164224_ _name164219_))
                   (fx+ _phi164220_ _dphi164200_)
                   _weak?164218_))))
          (if (##structure-direct-instance-of?
               _out164201164211_
               'gx#module-export::t)
              (let* ((_e164205164230_
                      (##unchecked-structure-ref
                       _out164201164211_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx164233_ _e164205164230_)
                     (_e164206164235_
                      (##unchecked-structure-ref
                       _out164201164211_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key164238_ _e164206164235_)
                     (_e164207164240_
                      (##unchecked-structure-ref
                       _out164201164211_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi164243_ _e164207164240_)
                     (_e164208164245_
                      (##unchecked-structure-ref
                       _out164201164211_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name164248_ _e164208164245_)
                     (_e164209164250_
                      (##unchecked-structure-ref
                       _out164201164211_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?164253_ _e164209164250_))
                (_K164204164227_
                 _weak?164253_
                 _name164248_
                 _phi164243_
                 _key164238_
                 _ctx164233_))
              (_E164203164215_)))))
    (define gx#core-module-export->import__0
      (lambda (_out164258_)
        (let* ((_rename164260_ '#f) (_dphi164262_ '0))
          (gx#core-module-export->import__%
           _out164258_
           _rename164260_
           _dphi164262_))))
    (define gx#core-module-export->import__1
      (lambda (_out164264_ _rename164265_)
        (let ((_dphi164267_ '0))
          (gx#core-module-export->import__%
           _out164264_
           _rename164265_
           _dphi164267_))))
    (define gx#core-module-export->import
      (lambda _g170342_
        (let ((_g170341_ (##length _g170342_)))
          (cond ((##fx= _g170341_ 1)
                 (apply (lambda (_out164258_)
                          (gx#core-module-export->import__0 _out164258_))
                        _g170342_))
                ((##fx= _g170341_ 2)
                 (apply (lambda (_out164264_ _rename164265_)
                          (gx#core-module-export->import__1
                           _out164264_
                           _rename164265_))
                        _g170342_))
                ((##fx= _g170341_ 3)
                 (apply (lambda (_out164269_ _rename164270_ _dphi164271_)
                          (gx#core-module-export->import__%
                           _out164269_
                           _rename164270_
                           _dphi164271_))
                        _g170342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g170342_))))))
    (define gx#core-expand-module%
      (lambda (_stx164126_)
        (letrec ((_make-context164128_
                  (lambda (_id164179_)
                    (let* ((_super164181_ (gx#current-expander-context))
                           (_bind-id164183_ (gx#stx-e _id164179_))
                           (_mod-id164185_
                            (if (##structure-instance-of?
                                 _super164181_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super164181_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id164183_)
                                _bind-id164183_))
                           (_ns164187_ (symbol->string _mod-id164185_))
                           (_path164194_
                            (if (##structure-instance-of?
                                 _super164181_
                                 'gx#module-context::t)
                                (let ((_path164189_
                                       (##unchecked-structure-ref
                                        _super164181_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path164189_)
                                          (null? _path164189_))
                                      (cons _bind-id164183_ _path164189_)
                                      (if (not _path164189_)
                                          _bind-id164183_
                                          (cons _bind-id164183_
                                                (cons _path164189_ '())))))
                                _bind-id164183_)))
                      (let ((__obj170318
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
                         __obj170318
                         _mod-id164185_
                         _super164181_
                         _ns164187_
                         _path164194_)
                        __obj170318)))))
          (let* ((_e164129164139_ _stx164126_)
                 (_E164131164143_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e164129164139_)))
                 (_E164130164175_
                  (lambda ()
                    (if (gx#stx-pair? _e164129164139_)
                        (let ((_e164132164147_ (gx#syntax-e _e164129164139_)))
                          (let ((_hd164133164150_ (##car _e164132164147_))
                                (_tl164134164152_ (##cdr _e164132164147_)))
                            (if (gx#stx-pair? _tl164134164152_)
                                (let ((_e164135164155_
                                       (gx#syntax-e _tl164134164152_)))
                                  (let ((_hd164136164158_
                                         (##car _e164135164155_))
                                        (_tl164137164160_
                                         (##cdr _e164135164155_)))
                                    (let* ((_id164163_ _hd164136164158_)
                                           (_body164165_ _tl164137164160_))
                                      (if (and (gx#identifier? _id164163_)
                                               (gx#stx-list? _body164165_))
                                          (let* ((_ctx164167_
                                                  (_make-context164128_
                                                   _id164163_))
                                                 (_body164169_
                                                  (gx#core-expand-module-begin
                                                   _body164165_
                                                   _ctx164167_))
                                                 (_body164171_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body164169_)
                                                   (gx#stx-source
                                                    _stx164126_))))
                                            (##unchecked-structure-set!
                                             _ctx164167_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body164171_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx164167_
                                             _body164171_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id164163_
                                             _ctx164167_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id164163_)
                                              _body164171_)
                                             (gx#stx-source _stx164126_)))
                                          (_E164131164143_)))))
                                (_E164131164143_))))
                        (_E164131164143_)))))
            (_E164130164175_)))))
    (define gx#core-expand-module-begin
      (lambda (_body164092_ _ctx164093_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx164096_
                   (gx#core-expand-head (cons '%%begin-module _body164092_)))
                  (_e164097164104_ _stx164096_)
                  (_E164099164108_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx164096_)))
                  (_E164098164122_
                   (lambda ()
                     (if (gx#stx-pair? _e164097164104_)
                         (let ((_e164100164112_ (gx#syntax-e _e164097164104_)))
                           (let ((_hd164101164115_ (##car _e164100164112_))
                                 (_tl164102164117_ (##cdr _e164100164112_)))
                             (if (and (gx#identifier? _hd164101164115_)
                                      (gx#core-identifier=?
                                       _hd164101164115_
                                       '%#begin-module))
                                 (let ((_body164120_ _tl164102164117_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx164096_)
                                           _body164120_
                                           (gx#core-expand-module-body
                                            _body164120_))
                                       (_E164099164108_)))
                                 (_E164099164108_))))
                         (_E164099164108_)))))
             (_E164098164122_)))
         gx#current-expander-context
         _ctx164093_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body163888_)
        (letrec ((_expand-special163890_
                  (lambda (_hd164019_ _K164020_ _rest164021_ _r164022_)
                    (let* ((_e164023164040_ _hd164019_)
                           (_E164035164044_
                            (lambda ()
                              (_K164020_
                               _rest164021_
                               (cons (gx#core-expand-top _hd164019_)
                                     _r164022_))))
                           (_E164025164056_
                            (lambda ()
                              (if (gx#stx-pair? _e164023164040_)
                                  (let ((_e164036164048_
                                         (gx#syntax-e _e164023164040_)))
                                    (let ((_hd164037164051_
                                           (##car _e164036164048_))
                                          (_tl164038164053_
                                           (##cdr _e164036164048_)))
                                      (if (and (gx#identifier?
                                                _hd164037164051_)
                                               (gx#core-identifier=?
                                                _hd164037164051_
                                                '%#export))
                                          (if '#t
                                              (_K164020_
                                               _rest164021_
                                               (cons _hd164019_ _r164022_))
                                              (_E164035164044_))
                                          (_E164035164044_))))
                                  (_E164035164044_))))
                           (_E164024164088_
                            (lambda ()
                              (if (gx#stx-pair? _e164023164040_)
                                  (let ((_e164026164060_
                                         (gx#syntax-e _e164023164040_)))
                                    (let ((_hd164027164063_
                                           (##car _e164026164060_))
                                          (_tl164028164065_
                                           (##cdr _e164026164060_)))
                                      (if (and (gx#identifier?
                                                _hd164027164063_)
                                               (gx#core-identifier=?
                                                _hd164027164063_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl164028164065_)
                                              (let ((_e164029164068_
                                                     (gx#syntax-e
                                                      _tl164028164065_)))
                                                (let ((_hd164030164071_
                                                       (##car _e164029164068_))
                                                      (_tl164031164073_
                                                       (##cdr _e164029164068_)))
                                                  (let ((_hd-bind164076_
                                                         _hd164030164071_))
                                                    (if (gx#stx-pair?
                                                         _tl164031164073_)
                                                        (let ((_e164032164078_
                                                               (gx#syntax-e
                                                                _tl164031164073_)))
                                                          (let ((_hd164033164081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e164032164078_))
                        (_tl164034164083_ (##cdr _e164032164078_)))
                    (let ((_expr164086_ _hd164033164081_))
                      (if (gx#stx-null? _tl164034164083_)
                          (if (gx#core-bind-values? _hd-bind164076_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind164076_)
                                (_K164020_
                                 _rest164021_
                                 (cons _hd164019_ _r164022_)))
                              (_E164025164056_))
                          (_E164025164056_)))))
                (_E164025164056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E164025164056_))
                                          (_E164025164056_))))
                                  (_E164025164056_)))))
                      (_E164024164088_))))
                 (_expand-body163891_
                  (lambda (_rbody163893_)
                    (let _lp163895_ ((_rest163897_ _rbody163893_)
                                     (_body163898_ '()))
                      (let* ((_rest163899163907_ _rest163897_)
                             (_else163901163915_ (lambda () _body163898_))
                             (_K163903164007_
                              (lambda (_rest163918_ _hd163919_)
                                (let* ((_e163920163941_ _hd163919_)
                                       (_E163936163945_
                                        (lambda ()
                                          (_lp163895_
                                           _rest163918_
                                           (cons (gx#core-expand-expression
                                                  _hd163919_)
                                                 _body163898_))))
                                       (_E163932163959_
                                        (lambda ()
                                          (if (gx#stx-pair? _e163920163941_)
                                              (let ((_e163937163949_
                                                     (gx#syntax-e
                                                      _e163920163941_)))
                                                (let ((_hd163938163952_
                                                       (##car _e163937163949_))
                                                      (_tl163939163954_
                                                       (##cdr _e163937163949_)))
                                                  (let ((_form163957_
                                                         _hd163938163952_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form163957_
                                                         gx#special-form-binding?)
                                                        (_lp163895_
                                                         _rest163918_
                                                         (cons _hd163919_
                                                               _body163898_))
                                                        (_E163936163945_)))))
                                              (_E163936163945_))))
                                       (_E163922163971_
                                        (lambda ()
                                          (if (gx#stx-pair? _e163920163941_)
                                              (let ((_e163933163963_
                                                     (gx#syntax-e
                                                      _e163920163941_)))
                                                (let ((_hd163934163966_
                                                       (##car _e163933163963_))
                                                      (_tl163935163968_
                                                       (##cdr _e163933163963_)))
                                                  (if (and (gx#identifier?
                                                            _hd163934163966_)
                                                           (gx#core-identifier=?
                                                            _hd163934163966_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp163895_
                                                           _rest163918_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd163919_)
                         _body163898_))
                  (_E163932163959_))
              (_E163932163959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E163932163959_))))
                                       (_E163921164003_
                                        (lambda ()
                                          (if (gx#stx-pair? _e163920163941_)
                                              (let ((_e163923163975_
                                                     (gx#syntax-e
                                                      _e163920163941_)))
                                                (let ((_hd163924163978_
                                                       (##car _e163923163975_))
                                                      (_tl163925163980_
                                                       (##cdr _e163923163975_)))
                                                  (if (and (gx#identifier?
                                                            _hd163924163978_)
                                                           (gx#core-identifier=?
                                                            _hd163924163978_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl163925163980_)
                                                          (let ((_e163926163983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl163925163980_)))
                    (let ((_hd163927163986_ (##car _e163926163983_))
                          (_tl163928163988_ (##cdr _e163926163983_)))
                      (let ((_hd-bind163991_ _hd163927163986_))
                        (if (gx#stx-pair? _tl163928163988_)
                            (let ((_e163929163993_
                                   (gx#syntax-e _tl163928163988_)))
                              (let ((_hd163930163996_ (##car _e163929163993_))
                                    (_tl163931163998_ (##cdr _e163929163993_)))
                                (let ((_expr164001_ _hd163930163996_))
                                  (if (gx#stx-null? _tl163931163998_)
                                      (if '#t
                                          (_lp163895_
                                           _rest163918_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind163991_)
                                                   (gx#core-expand-expression
                                                    _expr164001_))
                                                  (gx#stx-source _hd163919_))
                                                 _body163898_))
                                          (_E163922163971_))
                                      (_E163922163971_)))))
                            (_E163922163971_)))))
                  (_E163922163971_))
              (_E163922163971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E163922163971_)))))
                                  (_E163921164003_)))))
                        (if (##pair? _rest163899163907_)
                            (let ((_hd163904164010_ (##car _rest163899163907_))
                                  (_tl163905164012_
                                   (##cdr _rest163899163907_)))
                              (let* ((_hd164015_ _hd163904164010_)
                                     (_rest164017_ _tl163905164012_))
                                (_K163903164007_ _rest164017_ _hd164015_)))
                            (_else163901163915_)))))))
          (_expand-body163891_
           (gx#core-expand-block__%
            (cons '%#begin-module _body163888_)
            _expand-special163890_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx163731_
               _expanded?163732_
               _method163733_
               _current-phi163734_
               _expand1163735_)
        (letrec ((_K163737_
                  (lambda (_rest163855_ _r163856_)
                    (let* ((_e163857163864_ _rest163855_)
                           (_E163859163868_ (lambda () _r163856_))
                           (_E163858163884_
                            (lambda ()
                              (if (gx#stx-pair? _e163857163864_)
                                  (let ((_e163860163872_
                                         (gx#syntax-e _e163857163864_)))
                                    (let ((_hd163861163875_
                                           (##car _e163860163872_))
                                          (_tl163862163877_
                                           (##cdr _e163860163872_)))
                                      (let* ((_hd163880_ _hd163861163875_)
                                             (_rest163882_ _tl163862163877_))
                                        (if '#t
                                            (_step163738_
                                             _hd163880_
                                             _rest163882_
                                             _r163856_)
                                            (_E163859163868_)))))
                                  (_E163859163868_)))))
                      (_E163858163884_))))
                 (_step163738_
                  (lambda (_hd163769_ _rest163770_ _r163771_)
                    (let* ((_e163772163790_ _hd163769_)
                           (_E163785163794_
                            (lambda ()
                              (if (_expanded?163732_ (gx#stx-e _hd163769_))
                                  (_K163737_
                                   _rest163770_
                                   (cons (gx#stx-e _hd163769_) _r163771_))
                                  (_expand1163735_
                                   _hd163769_
                                   _K163737_
                                   _rest163770_
                                   _r163771_))))
                           (_E163781163810_
                            (lambda ()
                              (if (gx#stx-pair? _e163772163790_)
                                  (let ((_e163786163798_
                                         (gx#syntax-e _e163772163790_)))
                                    (let ((_hd163787163801_
                                           (##car _e163786163798_))
                                          (_tl163788163803_
                                           (##cdr _e163786163798_)))
                                      (let* ((_macro163806_ _hd163787163801_)
                                             (_body163808_ _tl163788163803_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro163806_
                                             gx#syntax-binding?)
                                            (_K163737_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro163806_)
                                                    _hd163769_
                                                    _method163733_)
                                                   _rest163770_)
                                             _r163771_)
                                            (_E163785163794_)))))
                                  (_E163785163794_))))
                           (_E163774163824_
                            (lambda ()
                              (if (gx#stx-pair? _e163772163790_)
                                  (let ((_e163782163814_
                                         (gx#syntax-e _e163772163790_)))
                                    (let ((_hd163783163817_
                                           (##car _e163782163814_))
                                          (_tl163784163819_
                                           (##cdr _e163782163814_)))
                                      (if (eq? (gx#stx-e _hd163783163817_)
                                               'begin:)
                                          (let ((_body163822_
                                                 _tl163784163819_))
                                            (if '#t
                                                (_K163737_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest163770_
                                                  _body163822_)
                                                 _r163771_)
                                                (_E163781163810_)))
                                          (_E163781163810_))))
                                  (_E163781163810_))))
                           (_E163773163851_
                            (lambda ()
                              (if (gx#stx-pair? _e163772163790_)
                                  (let ((_e163775163828_
                                         (gx#syntax-e _e163772163790_)))
                                    (let ((_hd163776163831_
                                           (##car _e163775163828_))
                                          (_tl163777163833_
                                           (##cdr _e163775163828_)))
                                      (if (eq? (gx#stx-e _hd163776163831_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl163777163833_)
                                              (let ((_e163778163836_
                                                     (gx#syntax-e
                                                      _tl163777163833_)))
                                                (let ((_hd163779163839_
                                                       (##car _e163778163836_))
                                                      (_tl163780163841_
                                                       (##cdr _e163778163836_)))
                                                  (let* ((_dphi163844_
                                                          _hd163779163839_)
                                                         (_body163846_
                                                          _tl163780163841_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi163844_)
                                                        (let ((_rbody163849_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K163737_ _body163846_ '()))
                        _current-phi163734_
                        (fx+ (gx#stx-e _dphi163844_) (_current-phi163734_)))))
                  (_K163737_
                   _rest163770_
                   (foldr1 cons _r163771_ _rbody163849_)))
                (_E163774163824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E163774163824_))
                                          (_E163774163824_))))
                                  (_E163774163824_)))))
                      (_E163773163851_)))))
          (let* ((_e163739163746_ _stx163731_)
                 (_E163741163750_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163739163746_)))
                 (_E163740163765_
                  (lambda ()
                    (if (gx#stx-pair? _e163739163746_)
                        (let ((_e163742163754_ (gx#syntax-e _e163739163746_)))
                          (let ((_hd163743163757_ (##car _e163742163754_))
                                (_tl163744163759_ (##cdr _e163742163754_)))
                            (let ((_body163762_ _tl163744163759_))
                              (if '#t
                                  (if (_current-phi163734_)
                                      (_K163737_ _body163762_ '())
                                      (call-with-parameters
                                       (lambda () (_K163737_ _body163762_ '()))
                                       _current-phi163734_
                                       (gx#current-expander-phi)))
                                  (_E163741163750_)))))
                        (_E163741163750_)))))
            (_E163740163765_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx163398_ _internal-expand?163399_)
        (letrec ((_expand1163401_
                  (lambda (_hd163711_ _K163712_ _rest163713_ _r163714_)
                    (if (gx#core-bound-module? _hd163711_)
                        (_import1163402_
                         (gx#syntax-local-e__0 _hd163711_)
                         _K163712_
                         _rest163713_
                         _r163714_)
                        (if (gx#core-library-module-path? _hd163711_)
                            (_import1163402_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd163711_))
                             _K163712_
                             _rest163713_
                             _r163714_)
                            (if (gx#core-library-relative-module-path?
                                 _hd163711_)
                                (_import1163402_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd163711_))
                                 _K163712_
                                 _rest163713_
                                 _r163714_)
                                (let ((_e163716_ (gx#stx-e _hd163711_)))
                                  (if (pair? _e163716_)
                                      (let ((_$e163718_
                                             (gx#stx-e (car _e163716_))))
                                        (if (eq? 'spec: _$e163718_)
                                            (_import-spec163405_
                                             _hd163711_
                                             _K163712_
                                             _rest163713_
                                             _r163714_)
                                            (if (eq? 'in: _$e163718_)
                                                (_import-submodule163403_
                                                 _hd163711_
                                                 _K163712_
                                                 _rest163713_
                                                 _r163714_)
                                                (if (eq? 'runtime: _$e163718_)
                                                    (_import-runtime163404_
                                                     _hd163711_
                                                     _K163712_
                                                     _rest163713_
                                                     _r163714_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx163398_
                                                     _hd163711_)))))
                                      (if (string? _e163716_)
                                          (_import1163402_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd163711_
                                             (gx#stx-source _stx163398_)))
                                           _K163712_
                                           _rest163713_
                                           _r163714_)
                                          (if (##structure-instance-of?
                                               _e163716_
                                               'gx#module-context::t)
                                              (_K163712_
                                               _rest163713_
                                               (cons _e163716_ _r163714_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx163398_
                                               _hd163711_))))))))))
                 (_import1163402_
                  (lambda (_ctx163700_ _K163701_ _rest163702_ _r163703_)
                    (let ((_dphi163705_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K163701_
                       _rest163702_
                       (cons (##structure
                              gx#import-set::t
                              _ctx163700_
                              _dphi163705_
                              (map (lambda (_g163706163708_)
                                     (gx#core-module-export->import__%
                                      _g163706163708_
                                      '#f
                                      _dphi163705_))
                                   (##unchecked-structure-ref
                                    _ctx163700_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r163703_)))))
                 (_import-submodule163403_
                  (lambda (_hd163667_ _K163668_ _rest163669_ _r163670_)
                    (let* ((_e163671163678_ _hd163667_)
                           (_E163673163682_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e163671163678_)))
                           (_E163672163696_
                            (lambda ()
                              (if (gx#stx-pair? _e163671163678_)
                                  (let ((_e163674163686_
                                         (gx#syntax-e _e163671163678_)))
                                    (let ((_hd163675163689_
                                           (##car _e163674163686_))
                                          (_tl163676163691_
                                           (##cdr _e163674163686_)))
                                      (let ((_spath163694_ _tl163676163691_))
                                        (if '#t
                                            (_import1163402_
                                             (_import-spec-source163406_
                                              _spath163694_)
                                             _K163668_
                                             _rest163669_
                                             _r163670_)
                                            (_E163673163682_)))))
                                  (_E163673163682_)))))
                      (_E163672163696_))))
                 (_import-runtime163404_
                  (lambda (_hd163634_ _K163635_ _rest163636_ _r163637_)
                    (let* ((_e163638163645_ _hd163634_)
                           (_E163640163649_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e163638163645_)))
                           (_E163639163663_
                            (lambda ()
                              (if (gx#stx-pair? _e163638163645_)
                                  (let ((_e163641163653_
                                         (gx#syntax-e _e163638163645_)))
                                    (let ((_hd163642163656_
                                           (##car _e163641163653_))
                                          (_tl163643163658_
                                           (##cdr _e163641163653_)))
                                      (let ((_spath163661_ _tl163643163658_))
                                        (if '#t
                                            (_K163635_
                                             _rest163636_
                                             (cons (_import-spec-source163406_
                                                    _spath163661_)
                                                   _r163637_))
                                            (_E163640163649_)))))
                                  (_E163640163649_)))))
                      (_E163639163663_))))
                 (_import-spec163405_
                  (lambda (_hd163473_ _K163474_ _rest163475_ _r163476_)
                    (let* ((_e163477163494_ _hd163473_)
                           (_E163486163498_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e163477163494_)))
                           (_E163479163608_
                            (lambda ()
                              (if (gx#stx-pair? _e163477163494_)
                                  (let ((_e163487163502_
                                         (gx#syntax-e _e163477163494_)))
                                    (let ((_hd163488163505_
                                           (##car _e163487163502_))
                                          (_tl163489163507_
                                           (##cdr _e163487163502_)))
                                      (if (gx#stx-pair? _tl163489163507_)
                                          (let ((_e163490163510_
                                                 (gx#syntax-e
                                                  _tl163489163507_)))
                                            (let ((_hd163491163513_
                                                   (##car _e163490163510_))
                                                  (_tl163492163515_
                                                   (##cdr _e163490163510_)))
                                              (let* ((_path163518_
                                                      _hd163491163513_)
                                                     (_specs163520_
                                                      _tl163492163515_))
                                                (if '#t
                                                    (let ((_src-ctx163522_
                                                           (_import-spec-source163406_
                                                            _path163518_))
                                                          (_exports163523_
                                                           (make-hash-table))
                                                          (_specs163524_
                                                           (gx#syntax->list
                                                            _specs163520_)))
                                                      (for-each
                                                       (lambda (_out163526_)
                                                         (table-set!
                                                          _exports163523_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out163526_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out163526_
                         '4
                         gx#module-export::t
                         '#f))
                  _out163526_))
               (##unchecked-structure-ref
                _src-ctx163522_
                '9
                gx#module-context::t
                '#f))
              (_K163474_
               _rest163475_
               (foldl1 (lambda (_spec163528_ _r163529_)
                         (let* ((_e163530163546_ _spec163528_)
                                (_E163532163550_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e163530163546_)))
                                (_E163531163604_
                                 (lambda ()
                                   (if (gx#stx-pair? _e163530163546_)
                                       (let ((_e163533163554_
                                              (gx#syntax-e _e163530163546_)))
                                         (let ((_hd163534163557_
                                                (##car _e163533163554_))
                                               (_tl163535163559_
                                                (##cdr _e163533163554_)))
                                           (let ((_phi163562_
                                                  _hd163534163557_))
                                             (if (gx#stx-pair?
                                                  _tl163535163559_)
                                                 (let ((_e163536163564_
                                                        (gx#syntax-e
                                                         _tl163535163559_)))
                                                   (let ((_hd163537163567_
                                                          (##car _e163536163564_))
                                                         (_tl163538163569_
                                                          (##cdr _e163536163564_)))
                                                     (let ((_name163572_
                                                            _hd163537163567_))
                                                       (if (gx#stx-pair?
                                                            _tl163538163569_)
                                                           (let ((_e163539163574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl163538163569_)))
                     (let ((_hd163540163577_ (##car _e163539163574_))
                           (_tl163541163579_ (##cdr _e163539163574_)))
                       (let ((_src-phi163582_ _hd163540163577_))
                         (if (gx#stx-pair? _tl163541163579_)
                             (let ((_e163542163584_
                                    (gx#syntax-e _tl163541163579_)))
                               (let ((_hd163543163587_ (##car _e163542163584_))
                                     (_tl163544163589_
                                      (##cdr _e163542163584_)))
                                 (let ((_src-name163592_ _hd163543163587_))
                                   (if (gx#stx-null? _tl163544163589_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi163582_)
                                                (gx#identifier?
                                                 _src-name163592_)
                                                (gx#stx-fixnum? _phi163562_)
                                                (gx#identifier? _name163572_))
                                           (let ((_src-phi163594_
                                                  (gx#stx-e _src-phi163582_))
                                                 (_src-name163595_
                                                  (gx#core-identifier-key
                                                   _src-name163592_))
                                                 (_phi163596_
                                                  (gx#stx-e _phi163562_))
                                                 (_name163597_
                                                  (gx#core-identifier-key
                                                   _name163572_)))
                                             (let ((_$e163599_
                                                    (hash-get
                                                     _exports163523_
                                                     (cons _src-phi163594_
                                                           _src-name163595_))))
                                               (if _$e163599_
                                                   ((lambda (_out163602_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out163602_
                                                             _name163597_
                                                             (fx- _phi163596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi163594_))
                    _r163529_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e163599_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx163398_
                                                    _hd163473_))))
                                           (_E163532163550_))
                                       (_E163532163550_)))))
                             (_E163532163550_)))))
                   (_E163532163550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E163532163550_)))))
                                       (_E163532163550_)))))
                           (_E163531163604_)))
                       _r163476_
                       _specs163524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E163486163498_)))))
                                          (_E163486163498_))))
                                  (_E163486163498_))))
                           (_E163478163630_
                            (lambda ()
                              (if (gx#stx-pair? _e163477163494_)
                                  (let ((_e163480163612_
                                         (gx#syntax-e _e163477163494_)))
                                    (let ((_hd163481163615_
                                           (##car _e163480163612_))
                                          (_tl163482163617_
                                           (##cdr _e163480163612_)))
                                      (if (gx#stx-pair? _tl163482163617_)
                                          (let ((_e163483163620_
                                                 (gx#syntax-e
                                                  _tl163482163617_)))
                                            (let ((_hd163484163623_
                                                   (##car _e163483163620_))
                                                  (_tl163485163625_
                                                   (##cdr _e163483163620_)))
                                              (let ((_path163628_
                                                     _hd163484163623_))
                                                (if (gx#stx-null?
                                                     _tl163485163625_)
                                                    (if '#t
                                                        (_K163474_
                                                         _rest163475_
                                                         (cons (_import-spec-source163406_
                                                                _path163628_)
                                                               _r163476_))
                                                        (_E163479163608_))
                                                    (_E163479163608_)))))
                                          (_E163479163608_))))
                                  (_E163479163608_)))))
                      (_E163478163630_))))
                 (_import-spec-source163406_
                  (lambda (_spath163471_)
                    (gx#core-import-nested-module _spath163471_ _stx163398_)))
                 (_import!163407_
                  (lambda (_rbody163420_)
                    (letrec* ((_current-ctx163422_
                               (gx#current-expander-context))
                              (_deps163423_ (make-hash-table-eq))
                              (_bind!163424_
                               (lambda (_hd163469_)
                                 (gx#core-bind-import!__1
                                  _hd163469_
                                  _current-ctx163422_))))
                      (let _lp163426_ ((_rest163428_ _rbody163420_)
                                       (_body163429_ '()))
                        (let* ((_rest163430163438_ _rest163428_)
                               (_else163432163448_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx163422_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx163422_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx163422_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body163429_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx163446_ _g170343_)
                                     (gx#eval-module _ctx163446_))
                                   _deps163423_)
                                  _body163429_))
                               (_K163434163457_
                                (lambda (_rest163451_ _hd163452_)
                                  (if (##structure-direct-instance-of?
                                       _hd163452_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!163424_ _hd163452_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd163452_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd163452_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps163423_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd163452_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd163452_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!163424_
                                             (##unchecked-structure-ref
                                              _hd163452_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd163452_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps163423_
                                                 (##unchecked-structure-ref
                                                  _hd163452_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e163454_
                                                 (##structure-instance-of?
                                                  _hd163452_
                                                  'gx#module-context::t)))
                                            (if _$e163454_
                                                _$e163454_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx163398_
                                                 _hd163452_)))))
                                  (_lp163426_
                                   _rest163451_
                                   (cons _hd163452_ _body163429_)))))
                          (if (##pair? _rest163430163438_)
                              (let ((_hd163435163460_
                                     (##car _rest163430163438_))
                                    (_tl163436163462_
                                     (##cdr _rest163430163438_)))
                                (let* ((_hd163465_ _hd163435163460_)
                                       (_rest163467_ _tl163436163462_))
                                  (_K163434163457_ _rest163467_ _hd163465_)))
                              (_else163432163448_)))))))
                 (_expanded-import?163408_
                  (lambda (_e163412_)
                    (let ((_$e163414_
                           (##structure-direct-instance-of?
                            _e163412_
                            'gx#import-set::t)))
                      (if _$e163414_
                          _$e163414_
                          (let ((_$e163417_
                                 (##structure-direct-instance-of?
                                  _e163412_
                                  'gx#module-import::t)))
                            (if _$e163417_
                                _$e163417_
                                (##structure-instance-of?
                                 _e163412_
                                 'gx#module-context::t))))))))
          (let ((_rbody163410_
                 (gx#core-expand-import/export
                  _stx163398_
                  _expanded-import?163408_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1163401_)))
            (if _internal-expand?163399_
                (reverse _rbody163410_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!163407_ _rbody163410_))
                 (gx#stx-source _stx163398_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx163724_)
        (let ((_internal-expand?163726_ '#f))
          (gx#core-expand-import%__% _stx163724_ _internal-expand?163726_))))
    (define gx#core-expand-import%
      (lambda _g170345_
        (let ((_g170344_ (##length _g170345_)))
          (cond ((##fx= _g170344_ 1)
                 (apply (lambda (_stx163724_)
                          (gx#core-expand-import%__0 _stx163724_))
                        _g170345_))
                ((##fx= _g170344_ 2)
                 (apply (lambda (_stx163728_ _internal-expand?163729_)
                          (gx#core-expand-import%__%
                           _stx163728_
                           _internal-expand?163729_))
                        _g170345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g170345_))))))
    (define gx#core-import-nested-module
      (lambda (_spath163325_ _where163326_)
        (let* ((_e163327163334_ _spath163325_)
               (_E163329163338_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163327163334_)))
               (_E163328163393_
                (lambda ()
                  (if (gx#stx-pair? _e163327163334_)
                      (let ((_e163330163342_ (gx#syntax-e _e163327163334_)))
                        (let ((_hd163331163345_ (##car _e163330163342_))
                              (_tl163332163347_ (##cdr _e163330163342_)))
                          (let* ((_origin163350_ _hd163331163345_)
                                 (_sub163352_ _tl163332163347_))
                            (if '#t
                                (let ((_origin-ctx163354_
                                       (if (gx#stx-false? _origin163350_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin163350_))))
                                  (let _lp163356_ ((_rest163358_ _sub163352_)
                                                   (_ctx163359_
                                                    _origin-ctx163354_))
                                    (let* ((_e163360163367_ _rest163358_)
                                           (_E163362163371_
                                            (lambda () _ctx163359_))
                                           (_E163361163389_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e163360163367_)
                                                  (let ((_e163363163375_
                                                         (gx#syntax-e
                                                          _e163360163367_)))
                                                    (let ((_hd163364163378_
                                                           (##car _e163363163375_))
                                                          (_tl163365163380_
                                                           (##cdr _e163363163375_)))
                                                      (let* ((_id163383_
                                                              _hd163364163378_)
                                                             (_rest163385_
                                                              _tl163365163380_))
                                                        (if '#t
                                                            (let ((_bind163387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id163383_
                            '0
                            _ctx163359_)))
                      (if (and (##structure-direct-instance-of?
                                _bind163387_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind163387_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where163326_
                           _spath163325_
                           _id163383_))
                      (_lp163356_
                       _rest163385_
                       (##unchecked-structure-ref
                        _bind163387_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E163362163371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163362163371_)))))
                                      (_E163361163389_))))
                                (_E163329163338_)))))
                      (_E163329163338_)))))
          (_E163328163393_))))
    (define gx#core-expand-import-source
      (lambda (_hd163323_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd163323_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx162831_ _internal-expand?162832_)
        (letrec* ((_make-export__170274170275_
                   (lambda (_bind163271_ _phi163272_ _ctx163273_ _name163274_)
                     (let* ((_key163276_
                             (##unchecked-structure-ref
                              _bind163271_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key163278_
                             (if _name163274_
                                 (gx#core-identifier-key _name163274_)
                                 _key163276_)))
                       (##structure
                        gx#module-export::t
                        _ctx163273_
                        _key163276_
                        _phi163272_
                        _export-key163278_
                        (let ((_$e163281_
                               (##structure-instance-of?
                                _bind163271_
                                'gx#extern-binding::t)))
                          (if _$e163281_
                              _$e163281_
                              (##structure-direct-instance-of?
                               _bind163271_
                               'gx#import-binding::t)))))))
                  (_make-export__0__170276170279_
                   (lambda (_bind163287_)
                     (let* ((_phi163289_ (gx#current-export-expander-phi))
                            (_ctx163291_ (gx#current-expander-context))
                            (_name163293_ '#f))
                       (_make-export__170274170275_
                        _bind163287_
                        _phi163289_
                        _ctx163291_
                        _name163293_))))
                  (_make-export__1__170277170280_
                   (lambda (_bind163295_ _phi163296_)
                     (let* ((_ctx163298_ (gx#current-expander-context))
                            (_name163300_ '#f))
                       (_make-export__170274170275_
                        _bind163295_
                        _phi163296_
                        _ctx163298_
                        _name163300_))))
                  (_make-export__2__170278170281_
                   (lambda (_bind163302_ _phi163303_ _ctx163304_)
                     (let ((_name163306_ '#f))
                       (_make-export__170274170275_
                        _bind163302_
                        _phi163303_
                        _ctx163304_
                        _name163306_))))
                  (_make-export162834_
                   (lambda _g170347_
                     (let ((_g170346_ (##length _g170347_)))
                       (cond ((##fx= _g170346_ 1)
                              (apply (lambda (_bind163287_)
                                       (_make-export__0__170276170279_
                                        _bind163287_))
                                     _g170347_))
                             ((##fx= _g170346_ 2)
                              (apply (lambda (_bind163295_ _phi163296_)
                                       (_make-export__1__170277170280_
                                        _bind163295_
                                        _phi163296_))
                                     _g170347_))
                             ((##fx= _g170346_ 3)
                              (apply (lambda (_bind163302_
                                              _phi163303_
                                              _ctx163304_)
                                       (_make-export__2__170278170281_
                                        _bind163302_
                                        _phi163303_
                                        _ctx163304_))
                                     _g170347_))
                             ((##fx= _g170346_ 4)
                              (apply (lambda (_bind163308_
                                              _phi163309_
                                              _ctx163310_
                                              _name163311_)
                                       (_make-export__170274170275_
                                        _bind163308_
                                        _phi163309_
                                        _ctx163310_
                                        _name163311_))
                                     _g170347_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g170347_))))))
                  (_expand1162835_
                   (lambda (_hd162984_ _K162985_ _rest162986_ _r162987_)
                     (let* ((_e162988163020_ _hd162984_)
                            (_E163015163024_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx162831_
                                _hd162984_)))
                            (_E163005163103_
                             (lambda ()
                               (if (gx#stx-pair? _e162988163020_)
                                   (let ((_e163016163028_
                                          (gx#syntax-e _e162988163020_)))
                                     (let ((_hd163017163031_
                                            (##car _e163016163028_))
                                           (_tl163018163033_
                                            (##cdr _e163016163028_)))
                                       (if (eq? (gx#stx-e _hd163017163031_)
                                                'import:)
                                           (let ((_in163036_ _tl163018163033_))
                                             (if (gx#stx-list? _in163036_)
                                                 (let _lp163038_ ((_in-rest163040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in163036_)
                          (_r163041_ _r162987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e163042163049_
                                                           _in-rest163040_)
                                                          (_E163044163053_
                                                           (lambda ()
                                                             (_K162985_
                                                              _rest162986_
                                                              _r163041_)))
                                                          (_E163043163099_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e163042163049_)
                         (let ((_e163045163057_ (gx#syntax-e _e163042163049_)))
                           (let ((_hd163046163060_ (##car _e163045163057_))
                                 (_tl163047163062_ (##cdr _e163045163057_)))
                             (let* ((_hd163065_ _hd163046163060_)
                                    (_in-rest163067_ _tl163047163062_))
                               (if '#t
                                   (let ((_src163097_
                                          (if (gx#core-bound-module?
                                               _hd163065_)
                                              (gx#syntax-local-e__0 _hd163065_)
                                              (if (gx#core-library-module-path?
                                                   _hd163065_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd163065_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd163065_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd163065_))
                                                      (if (gx#stx-string?
                                                           _hd163065_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd163065_
                                                            (gx#stx-source
                                                             _stx162831_)))
                                                          (let* ((_e163068163075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd163065_)
                         (_E163070163079_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx162831_
                             _hd163065_)))
                         (_E163069163093_
                          (lambda ()
                            (if (gx#stx-pair? _e163068163075_)
                                (let ((_e163071163083_
                                       (gx#syntax-e _e163068163075_)))
                                  (let ((_hd163072163086_
                                         (##car _e163071163083_))
                                        (_tl163073163088_
                                         (##cdr _e163071163083_)))
                                    (if (eq? (gx#stx-e _hd163072163086_) 'in:)
                                        (let ((_spath163091_ _tl163073163088_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath163091_
                                               _stx162831_)
                                              (_E163070163079_)))
                                        (_E163070163079_))))
                                (_E163070163079_)))))
                    (_E163069163093_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp163038_
                                      _in-rest163067_
                                      (_export-imports162836_
                                       _src163097_
                                       _r163041_)))
                                   (_E163044163053_)))))
                         (_E163044163053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E163043163099_)))
                                                 (_E163015163024_)))
                                           (_E163015163024_))))
                                   (_E163015163024_))))
                            (_E162992163142_
                             (lambda ()
                               (if (gx#stx-pair? _e162988163020_)
                                   (let ((_e163006163107_
                                          (gx#syntax-e _e162988163020_)))
                                     (let ((_hd163007163110_
                                            (##car _e163006163107_))
                                           (_tl163008163112_
                                            (##cdr _e163006163107_)))
                                       (if (eq? (gx#stx-e _hd163007163110_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl163008163112_)
                                               (let ((_e163009163115_
                                                      (gx#syntax-e
                                                       _tl163008163112_)))
                                                 (let ((_hd163010163118_
                                                        (##car _e163009163115_))
                                                       (_tl163011163120_
                                                        (##cdr _e163009163115_)))
                                                   (let ((_id163123_
                                                          _hd163010163118_))
                                                     (if (gx#stx-pair?
                                                          _tl163011163120_)
                                                         (let ((_e163012163125_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl163011163120_)))
                   (let ((_hd163013163128_ (##car _e163012163125_))
                         (_tl163014163130_ (##cdr _e163012163125_)))
                     (let ((_name163133_ _hd163013163128_))
                       (if (gx#stx-null? _tl163014163130_)
                           (if '#t
                               (let* ((_phi163135_
                                       (gx#current-export-expander-phi))
                                      (_$e163137_
                                       (gx#core-resolve-identifier__1
                                        _id163123_
                                        _phi163135_)))
                                 (if _$e163137_
                                     ((lambda (_bind163140_)
                                        (_K162985_
                                         _rest162986_
                                         (cons (_make-export__170274170275_
                                                _bind163140_
                                                _phi163135_
                                                (gx#current-expander-context)
                                                _name163133_)
                                               _r162987_)))
                                      _$e163137_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx162831_
                                      _hd162984_
                                      _id163123_)))
                               (_E163005163103_))
                           (_E163005163103_)))))
                 (_E163005163103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E163005163103_))
                                           (_E163005163103_))))
                                   (_E163005163103_))))
                            (_E162991163191_
                             (lambda ()
                               (if (gx#stx-pair? _e162988163020_)
                                   (let ((_e162993163146_
                                          (gx#syntax-e _e162988163020_)))
                                     (let ((_hd162994163149_
                                            (##car _e162993163146_))
                                           (_tl162995163151_
                                            (##cdr _e162993163146_)))
                                       (if (eq? (gx#stx-e _hd162994163149_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl162995163151_)
                                               (let ((_e162996163154_
                                                      (gx#syntax-e
                                                       _tl162995163151_)))
                                                 (let ((_hd162997163157_
                                                        (##car _e162996163154_))
                                                       (_tl162998163159_
                                                        (##cdr _e162996163154_)))
                                                   (let ((_phi163162_
                                                          _hd162997163157_))
                                                     (if (gx#stx-pair?
                                                          _tl162998163159_)
                                                         (let ((_e162999163164_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl162998163159_)))
                   (let ((_hd163000163167_ (##car _e162999163164_))
                         (_tl163001163169_ (##cdr _e162999163164_)))
                     (let ((_id163172_ _hd163000163167_))
                       (if (gx#stx-pair? _tl163001163169_)
                           (let ((_e163002163174_
                                  (gx#syntax-e _tl163001163169_)))
                             (let ((_hd163003163177_ (##car _e163002163174_))
                                   (_tl163004163179_ (##cdr _e163002163174_)))
                               (let ((_name163182_ _hd163003163177_))
                                 (if (gx#stx-null? _tl163004163179_)
                                     (if (and (gx#stx-fixnum? _phi163162_)
                                              (gx#identifier? _id163172_)
                                              (gx#identifier? _name163182_))
                                         (let* ((_phi163184_
                                                 (gx#stx-e _phi163162_))
                                                (_$e163186_
                                                 (gx#core-resolve-identifier__1
                                                  _id163172_
                                                  _phi163184_)))
                                           (if _$e163186_
                                               ((lambda (_bind163189_)
                                                  (_K162985_
                                                   _rest162986_
                                                   (cons (_make-export__170274170275_
                                                          _bind163189_
                                                          _phi163184_
                                                          (gx#current-expander-context)
                                                          _name163182_)
                                                         _r162987_)))
                                                _$e163186_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx162831_
                                                _hd162984_
                                                _id163172_)))
                                         (_E162992163142_))
                                     (_E162992163142_)))))
                           (_E162992163142_)))))
                 (_E162992163142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E162992163142_))
                                           (_E162992163142_))))
                                   (_E162992163142_))))
                            (_E162990163202_
                             (lambda ()
                               (let ((_id163195_ _e162988163020_))
                                 (if (gx#identifier? _id163195_)
                                     (let ((_$e163197_
                                            (gx#core-resolve-identifier__1
                                             _id163195_
                                             (gx#current-export-expander-phi))))
                                       (if _$e163197_
                                           ((lambda (_bind163200_)
                                              (_K162985_
                                               _rest162986_
                                               (cons (_make-export__0__170276170279_
                                                      _bind163200_)
                                                     _r162987_)))
                                            _$e163197_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx162831_
                                            _hd162984_)))
                                     (_E162991163191_)))))
                            (_E162989163266_
                             (lambda ()
                               (if (eq? (gx#stx-e _e162988163020_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx163206_
                                               (gx#current-expander-context))
                                              (_current-phi163208_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx163210_
                                               (gx#core-context-shift
                                                _current-ctx163206_
                                                _current-phi163208_))
                                              (_phi-bind163212_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx163210_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp163215_ ((_bind-rest163217_
                                                           _phi-bind163212_)
                                                          (_set163218_ '()))
                                           (let* ((_bind-rest163219163229_
                                                   _bind-rest163217_)
                                                  (_else163221163237_
                                                   (lambda ()
                                                     (_K162985_
                                                      _rest162986_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi163208_
                                                             _set163218_)
                                                            _r162987_))))
                                                  (_K163223163247_
                                                   (lambda (_bind-rest163240_
                                                            _bind163241_
                                                            _key163242_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind163241_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind163241_))
                                                         (_lp163215_
                                                          _bind-rest163240_
                                                          _set163218_)
                                                         (_lp163215_
                                                          _bind-rest163240_
                                                          (cons (_make-export__2__170278170281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind163241_
                         _current-phi163208_
                         _current-ctx163206_)
                        _set163218_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest163219163229_)
                                                 (let ((_hd163224163250_
                                                        (##car _bind-rest163219163229_))
                                                       (_tl163225163252_
                                                        (##cdr _bind-rest163219163229_)))
                                                   (if (##pair? _hd163224163250_)
                                                       (let ((_hd163226163255_
                                                              (##car _hd163224163250_))
                                                             (_tl163227163257_
                                                              (##cdr _hd163224163250_)))
                                                         (let* ((_key163260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd163226163255_)
                        (_bind163262_ _tl163227163257_)
                        (_bind-rest163264_ _tl163225163252_))
                   (_K163223163247_
                    _bind-rest163264_
                    _bind163262_
                    _key163260_)))
               (_else163221163237_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else163221163237_)))))
                                       (_E162990163202_))
                                   (_E162990163202_)))))
                       (_E162989163266_))))
                  (_export-imports162836_
                   (lambda (_src162860_ _r162861_)
                     (letrec* ((_current-ctx162863_
                                (gx#current-expander-context))
                               (_current-phi162864_
                                (gx#current-export-expander-phi))
                               (_import->export162865_
                                (lambda (_in162946_)
                                  (let* ((_in162947162955_ _in162946_)
                                         (_E162949162959_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in162947162955_)))
                                         (_K162950162966_
                                          (lambda (_phi162962_
                                                   _key162963_
                                                   _out162964_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx162863_
                                             _key162963_
                                             _phi162962_
                                             _key162963_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in162947162955_
                                         'gx#module-import::t)
                                        (let* ((_e162951162969_
                                                (##unchecked-structure-ref
                                                 _in162947162955_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out162972_ _e162951162969_)
                                               (_e162952162974_
                                                (##unchecked-structure-ref
                                                 _in162947162955_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key162977_ _e162952162974_)
                                               (_e162953162979_
                                                (##unchecked-structure-ref
                                                 _in162947162955_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi162982_ _e162953162979_))
                                          (_K162950162966_
                                           _phi162982_
                                           _key162977_
                                           _out162972_))
                                        (_E162949162959_)))))
                               (_fold-e162866_
                                (lambda (_in162868_ _r162869_)
                                  (let* ((_in162870162884_ _in162868_)
                                         (_else162873162892_
                                          (lambda () _r162869_)))
                                    (let ((_K162879162928_
                                           (lambda (_phi162924_
                                                    _key162925_
                                                    _out162926_)
                                             (if (and (fx= _phi162924_
                                                           _current-phi162864_)
                                                      (eq? _src162860_
                                                           (##unchecked-structure-ref
                                                            _out162926_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export162865_
                                                        _in162868_)
                                                       _r162869_)
                                                 _r162869_)))
                                          (_K162875162903_
                                           (lambda (_imports162896_
                                                    _phi162897_
                                                    _ctx162898_)
                                             (if (and (fx= _phi162897_
                                                           _current-phi162864_)
                                                      (eq? _src162860_
                                                           _ctx162898_))
                                                 (foldl1 (lambda (_in162900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r162901_)
                   (cons (_import->export162865_ _in162900_) _r162901_))
                 _r162869_
                 _imports162896_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r162869_))))
                                      (let ((_try-match162872162921_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in162870162884_
                                                    'gx#import-set::t)
                                                   (let* ((_e162876162906_
                                                           (##unchecked-structure-ref
                                                            _in162870162884_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e162877162911_
                                                           (##unchecked-structure-ref
                                                            _in162870162884_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e162878162916_
                                                           (##unchecked-structure-ref
                                                            _in162870162884_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx162909_
                                                            _e162876162906_)
                                                           (_phi162914_
                                                            _e162877162911_)
                                                           (_imports162919_
                                                            _e162878162916_))
                                                       (_K162875162903_
                                                        _imports162919_
                                                        _phi162914_
                                                        _ctx162909_)))
                                                   (_else162873162892_)))))
                                        (if (##structure-direct-instance-of?
                                             _in162870162884_
                                             'gx#module-import::t)
                                            (let* ((_e162880162931_
                                                    (##unchecked-structure-ref
                                                     _in162870162884_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e162881162936_
                                                    (##unchecked-structure-ref
                                                     _in162870162884_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e162882162941_
                                                    (##unchecked-structure-ref
                                                     _in162870162884_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out162934_
                                                     _e162880162931_)
                                                    (_key162939_
                                                     _e162881162936_)
                                                    (_phi162944_
                                                     _e162882162941_))
                                                (_K162879162928_
                                                 _phi162944_
                                                 _key162939_
                                                 _out162934_)))
                                            (_try-match162872162921_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src162860_
                              _current-phi162864_
                              (foldl1 _fold-e162866_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx162863_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r162861_))))
                  (_export!162837_
                   (lambda (_rbody162850_)
                     (letrec* ((_current-ctx162852_
                                (gx#current-expander-context))
                               (_fold-e162853_
                                (lambda (_out162857_ _r162858_)
                                  (if (##structure-direct-instance-of?
                                       _out162857_
                                       'gx#module-export::t)
                                      (cons _out162857_ _r162858_)
                                      (if (##structure-direct-instance-of?
                                           _out162857_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r162858_
                                                  (##unchecked-structure-ref
                                                   _out162857_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r162858_)))))
                       (let ((_body162855_ (reverse _rbody162850_)))
                         (##unchecked-structure-set!
                          _current-ctx162852_
                          (foldl1 _fold-e162853_
                                  (##unchecked-structure-ref
                                   _current-ctx162852_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body162855_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body162855_))))
                  (_expanded-export?162838_
                   (lambda (_e162845_)
                     (let ((_$e162847_
                            (##structure-direct-instance-of?
                             _e162845_
                             'gx#module-export::t)))
                       (if _$e162847_
                           _$e162847_
                           (##structure-direct-instance-of?
                            _e162845_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?162832_)
              (let ((_rbody162843_
                     (gx#core-expand-import/export
                      _stx162831_
                      _expanded-export?162838_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1162835_)))
                (if _internal-expand?162832_
                    (reverse _rbody162843_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!162837_ _rbody162843_))
                     (gx#stx-source _stx162831_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx162831_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx162831_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx163316_)
        (let ((_internal-expand?163318_ '#f))
          (gx#core-expand-export%__% _stx163316_ _internal-expand?163318_))))
    (define gx#core-expand-export%
      (lambda _g170349_
        (let ((_g170348_ (##length _g170349_)))
          (cond ((##fx= _g170348_ 1)
                 (apply (lambda (_stx163316_)
                          (gx#core-expand-export%__0 _stx163316_))
                        _g170349_))
                ((##fx= _g170348_ 2)
                 (apply (lambda (_stx163320_ _internal-expand?163321_)
                          (gx#core-expand-export%__%
                           _stx163320_
                           _internal-expand?163321_))
                        _g170349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g170349_))))))
    (define gx#core-expand-export-source
      (lambda (_hd162828_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd162828_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx162798_)
        (let* ((_e162799162806_ _stx162798_)
               (_E162801162810_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e162799162806_)))
               (_E162800162824_
                (lambda ()
                  (if (gx#stx-pair? _e162799162806_)
                      (let ((_e162802162814_ (gx#syntax-e _e162799162806_)))
                        (let ((_hd162803162817_ (##car _e162802162814_))
                              (_tl162804162819_ (##cdr _e162802162814_)))
                          (let ((_body162822_ _tl162804162819_))
                            (if (gx#identifier-list? _body162822_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body162822_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body162822_))
                                   (gx#stx-source _stx162798_)))
                                (_E162801162810_)))))
                      (_E162801162810_)))))
          (_E162800162824_))))
    (define gx#core-bind-feature!__%
      (lambda (_id162764_ _private?162765_ _phi162766_ _ctx162767_)
        (gx#core-bind-syntax!__%
         _id162764_
         ((if _private?162765_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id162764_))
         _private?162765_
         _phi162766_
         _ctx162767_)))
    (define gx#core-bind-feature!__0
      (lambda (_id162772_)
        (let* ((_private?162774_ '#f)
               (_phi162776_ (gx#current-expander-phi))
               (_ctx162778_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id162772_
           _private?162774_
           _phi162776_
           _ctx162778_))))
    (define gx#core-bind-feature!__1
      (lambda (_id162780_ _private?162781_)
        (let* ((_phi162783_ (gx#current-expander-phi))
               (_ctx162785_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id162780_
           _private?162781_
           _phi162783_
           _ctx162785_))))
    (define gx#core-bind-feature!__2
      (lambda (_id162787_ _private?162788_ _phi162789_)
        (let ((_ctx162791_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id162787_
           _private?162788_
           _phi162789_
           _ctx162791_))))
    (define gx#core-bind-feature!
      (lambda _g170351_
        (let ((_g170350_ (##length _g170351_)))
          (cond ((##fx= _g170350_ 1)
                 (apply (lambda (_id162772_)
                          (gx#core-bind-feature!__0 _id162772_))
                        _g170351_))
                ((##fx= _g170350_ 2)
                 (apply (lambda (_id162780_ _private?162781_)
                          (gx#core-bind-feature!__1
                           _id162780_
                           _private?162781_))
                        _g170351_))
                ((##fx= _g170350_ 3)
                 (apply (lambda (_id162787_ _private?162788_ _phi162789_)
                          (gx#core-bind-feature!__2
                           _id162787_
                           _private?162788_
                           _phi162789_))
                        _g170351_))
                ((##fx= _g170350_ 4)
                 (apply (lambda (_id162793_
                                 _private?162794_
                                 _phi162795_
                                 _ctx162796_)
                          (gx#core-bind-feature!__%
                           _id162793_
                           _private?162794_
                           _phi162795_
                           _ctx162796_))
                        _g170351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g170351_))))))))
