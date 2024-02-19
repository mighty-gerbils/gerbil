(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708334575)
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
      (lambda _$args174975_
        (apply make-instance gx#module-import::t _$args174975_)))
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
      (lambda _$args174972_
        (apply make-instance gx#module-export::t _$args174972_)))
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
      (lambda _$args174969_
        (apply make-instance gx#import-set::t _$args174969_)))
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
      (lambda _$args174966_
        (apply make-instance gx#export-set::t _$args174966_)))
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
      (lambda _$args174963_
        (apply make-instance gx#import-expander::t _$args174963_)))
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
      (lambda _$args174960_
        (apply make-instance gx#export-expander::t _$args174960_)))
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
      (lambda _$args174957_
        (apply make-instance gx#import-export-expander::t _$args174957_)))
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
      (lambda (_path174954_ _fun174955_)
        (call-with-input-file
         (cons 'path: (cons _path174954_ gx#source-file-settings))
         _fun174955_)))
    (define gx#module-context:::init!
      (lambda (_self174948_ _id174949_ _super174950_ _ns174951_ _path174952_)
        (if (##fx< '11 (##structure-length _self174948_))
            (begin
              (##unchecked-structure-set!
               _self174948_
               _id174949_
               '1
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               (make-hash-table-eq)
               '2
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               _super174950_
               '3
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               '#f
               '4
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               '#f
               '5
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               _ns174951_
               '6
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               _path174952_
               '7
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               '()
               '8
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               '()
               '9
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               '#f
               '10
               (##structure-type _self174948_)
               '#f)
              (##unchecked-structure-set!
               _self174948_
               '#f
               '11
               (##structure-type _self174948_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174948_
                   '11
                   (##vector-length _self174948_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self174792_ _ctx174793_ _root174794_)
        (let ((_super174802_
               (let ((_$e174796_ _root174794_))
                 (if _$e174796_
                     _$e174796_
                     (let ((_$e174799_ (gx#core-context-root__0)))
                       (if _$e174799_
                           _$e174799_
                           (let ((__obj179084
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor179085
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj179084
                                     ':init!)))
                               (if __constructor179085
                                   (__constructor179085 __obj179084)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj179084)))))))
          (if _ctx174793_
              (let ((_id174805_
                     (##structure-ref
                      _ctx174793_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path174806_
                     (##structure-ref _ctx174793_ '7 gx#module-context::t '#f))
                    (_in174807_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx174793_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e174808_
                     (make-promise (lambda () (gx#eval-module _ctx174793_)))))
                (if (##fx< '8 (##structure-length _self174792_))
                    (begin
                      (##unchecked-structure-set!
                       _self174792_
                       _id174805_
                       '1
                       (##structure-type _self174792_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174792_
                       (make-hash-table-eq 'size: (length _in174807_))
                       '2
                       (##structure-type _self174792_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174792_
                       _super174802_
                       '3
                       (##structure-type _self174792_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174792_
                       '#f
                       '4
                       (##structure-type _self174792_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174792_
                       '#f
                       '5
                       (##structure-type _self174792_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174792_
                       _path174806_
                       '6
                       (##structure-type _self174792_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174792_
                       _in174807_
                       '7
                       (##structure-type _self174792_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174792_
                       _e174808_
                       '8
                       (##structure-type _self174792_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self174792_
                           '8
                           (##vector-length _self174792_)))
                (for-each
                 (lambda (_g174809174811_)
                   (gx#core-bind-weak-import!__% _g174809174811_ _self174792_))
                 _in174807_))
              (if (##fx< '8 (##structure-length _self174792_))
                  (begin
                    (##unchecked-structure-set!
                     _self174792_
                     '#f
                     '1
                     (##structure-type _self174792_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174792_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self174792_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174792_
                     _super174802_
                     '3
                     (##structure-type _self174792_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174792_
                     '#f
                     '4
                     (##structure-type _self174792_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174792_
                     '#f
                     '5
                     (##structure-type _self174792_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174792_
                     '#f
                     '6
                     (##structure-type _self174792_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174792_
                     '()
                     '7
                     (##structure-type _self174792_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174792_
                     '#f
                     '8
                     (##structure-type _self174792_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self174792_
                         '8
                         (##vector-length _self174792_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self174817_ _ctx174818_)
        (let ((_root174820_ '#f))
          (gx#prelude-context:::init!__%
           _self174817_
           _ctx174818_
           _root174820_))))
    (define gx#prelude-context:::init!
      (lambda _g179091_
        (let ((_g179090_ (##length _g179091_)))
          (cond ((##fx= _g179090_ 2)
                 (apply (lambda (_self174817_ _ctx174818_)
                          (gx#prelude-context:::init!__0
                           _self174817_
                           _ctx174818_))
                        _g179091_))
                ((##fx= _g179090_ 3)
                 (apply (lambda (_self174822_ _ctx174823_ _root174824_)
                          (gx#prelude-context:::init!__%
                           _self174822_
                           _ctx174823_
                           _root174824_))
                        _g179091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g179091_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self174666_ _e174667_)
        (if (##fx< '3 (##structure-length _self174666_))
            (begin
              (##unchecked-structure-set!
               _self174666_
               _e174667_
               '1
               (##structure-type _self174666_)
               '#f)
              (##unchecked-structure-set!
               _self174666_
               (gx#current-expander-context)
               '2
               (##structure-type _self174666_)
               '#f)
              (##unchecked-structure-set!
               _self174666_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self174666_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174666_
                   '3
                   (##vector-length _self174666_)))))
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
      (lambda (_g174292174295_ _g174293174297_)
        (gx#core-apply-user-expander__%
         _g174292174295_
         _g174293174297_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g174163174166_ _g174164174168_)
        (gx#core-apply-user-expander__%
         _g174163174166_
         _g174164174168_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx174034_)
        (let* ((_path174036_
                (##structure-ref _ctx174034_ '7 gx#module-context::t '#f))
               (_path174038_
                (if (pair? _path174036_) (last _path174036_) _path174036_)))
          (if (string? _path174038_) _path174038_ '#f))))
    (define gx#import-module__%
      (lambda (_path174010_ _reload?174011_ _eval?174012_)
        (let ((_ctx174014_
               ((gx#current-expander-module-import)
                _path174010_
                _reload?174011_)))
          (if (and _ctx174014_ _eval?174012_)
              (gx#eval-module _ctx174014_)
              '#!void)
          _ctx174014_)))
    (define gx#import-module__0
      (lambda (_path174019_)
        (let* ((_reload?174021_ '#f) (_eval?174023_ '#f))
          (gx#import-module__% _path174019_ _reload?174021_ _eval?174023_))))
    (define gx#import-module__1
      (lambda (_path174025_ _reload?174026_)
        (let ((_eval?174028_ '#f))
          (gx#import-module__% _path174025_ _reload?174026_ _eval?174028_))))
    (define gx#import-module
      (lambda _g179093_
        (let ((_g179092_ (##length _g179093_)))
          (cond ((##fx= _g179092_ 1)
                 (apply (lambda (_path174019_)
                          (gx#import-module__0 _path174019_))
                        _g179093_))
                ((##fx= _g179092_ 2)
                 (apply (lambda (_path174025_ _reload?174026_)
                          (gx#import-module__1 _path174025_ _reload?174026_))
                        _g179093_))
                ((##fx= _g179092_ 3)
                 (apply (lambda (_path174030_ _reload?174031_ _eval?174032_)
                          (gx#import-module__%
                           _path174030_
                           _reload?174031_
                           _eval?174032_))
                        _g179093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g179093_))))))
    (define gx#eval-module
      (lambda (_mod174007_) ((gx#current-expander-module-eval) _mod174007_)))
    (define gx#core-eval-module
      (lambda (_obj173992_)
        (letrec ((_force-e173994_
                  (lambda (_getf174003_ _e174004_)
                    (call-with-parameters
                     (lambda () (force (_getf174003_ _e174004_)))
                     gx#current-expander-context
                     _e174004_
                     gx#current-expander-phi
                     '0))))
          (let _recur173996_ ((_e173998_ _obj173992_))
            (if (##structure-instance-of? _e173998_ 'gx#module-context::t)
                (begin
                  (let ((_$e174000_ (gx#core-context-prelude__% _e173998_)))
                    (if _$e174000_ (_recur173996_ _$e174000_) '#!void))
                  (_force-e173994_ gx#module-context-e _e173998_))
                (if (##structure-instance-of? _e173998_ 'gx#prelude-context::t)
                    (_force-e173994_ gx#prelude-context-e _e173998_)
                    (if (gx#stx-string? _e173998_)
                        (_recur173996_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e173998_)))
                        (if (gx#core-library-module-path? _e173998_)
                            (_recur173996_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e173998_)))
                            (error '"Cannot eval module" _obj173992_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx173975_)
        (let _lp173977_ ((_e173979_ _ctx173975_))
          (if (or (##structure-instance-of? _e173979_ 'gx#module-context::t)
                  (##structure-instance-of? _e173979_ 'gx#local-context::t))
              (_lp173977_
               (##unchecked-structure-ref _e173979_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e173979_ 'gx#prelude-context::t)
                  _e173979_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx173988_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx173988_))))
    (define gx#core-context-prelude
      (lambda _g179095_
        (let ((_g179094_ (##length _g179095_)))
          (cond ((##fx= _g179094_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g179095_))
                ((##fx= _g179094_ 1)
                 (apply (lambda (_ctx173990_)
                          (gx#core-context-prelude__% _ctx173990_))
                        _g179095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g179095_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx173965_)
        (let* ((_ht173967_ (gx#current-expander-module-registry))
               (_$e173969_ (hash-get _ht173967_ _ctx173965_)))
          (if _$e173969_
              (values _$e173969_)
              (let ((_pre173972_
                     (let ((__obj179086
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
                       (gx#prelude-context:::init! __obj179086 _ctx173965_)
                       __obj179086)))
                (hash-put! _ht173967_ _ctx173965_ _pre173972_)
                _pre173972_)))))
    (define gx#core-import-module__%
      (lambda (_rpath173846_ _reload?173847_)
        (letrec ((_import-source173849_
                  (lambda (_path173934_)
                    (if (member _path173934_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path173934_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g179096_ (gx#core-read-module _path173934_)))
                         (begin
                           (let ((_g179097_
                                  (if (##values? _g179096_)
                                      (##vector-length _g179096_)
                                      1)))
                             (if (not (##fx= _g179097_ 4))
                                 (error "Context expects 4 values" _g179097_)))
                           (let ((_pre173937_ (##vector-ref _g179096_ 0))
                                 (_id173938_ (##vector-ref _g179096_ 1))
                                 (_ns173939_ (##vector-ref _g179096_ 2))
                                 (_body173940_ (##vector-ref _g179096_ 3)))
                             (let* ((_prelude173945_
                                     (if (##structure-instance-of?
                                          _pre173937_
                                          'gx#prelude-context::t)
                                         _pre173937_
                                         (if (##structure-instance-of?
                                              _pre173937_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre173937_)
                                             (if (string? _pre173937_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre173937_))
                                                 (if (not _pre173937_)
                                                     (let ((_$e173942_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e173942_
                                                           _$e173942_
                                                           (let ((__obj179087
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
                     (gx#prelude-context:::init! __obj179087 '#f)
                     __obj179087)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath173846_
                                                            _pre173937_))))))
                                    (_ctx173947_
                                     (let ((__obj179088
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
                                        __obj179088
                                        _id173938_
                                        _prelude173945_
                                        _ns173939_
                                        _path173934_)
                                       __obj179088))
                                    (_body173949_
                                     (gx#core-expand-module-begin
                                      _body173940_
                                      _ctx173947_))
                                    (_body173951_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body173949_)
                                      _path173934_
                                      _ctx173947_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx173947_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body173951_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx173947_
                                _body173951_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path173934_
                                _ctx173947_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id173938_
                                _ctx173947_)
                               _ctx173947_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path173934_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule173850_
                  (lambda (_rpath173862_)
                    (let* ((_rpath173863173870_ _rpath173862_)
                           (_E173865173874_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath173863173870_)))
                           (_K173866173922_
                            (lambda (_refs173877_ _origin173878_)
                              (let ((_ctx173880_
                                     (if _origin173878_
                                         (gx#core-import-module__%
                                          _origin173878_
                                          _reload?173847_)
                                         (gx#current-expander-context))))
                                (let _lp173882_ ((_rest173884_ _refs173877_)
                                                 (_ctx173885_ _ctx173880_))
                                  (let* ((_rest173886173894_ _rest173884_)
                                         (_else173888173902_
                                          (lambda () _ctx173885_))
                                         (_K173890173910_
                                          (lambda (_rest173905_ _id173906_)
                                            (let ((_bind173908_
                                                   (gx#resolve-identifier__%
                                                    _id173906_
                                                    '0
                                                    _ctx173885_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind173908_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind173908_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp173882_
                                                   _rest173905_
                                                   (##unchecked-structure-ref
                                                    _bind173908_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath173862_
                                                         _id173906_
                                                         _bind173908_))))))
                                    (if (##pair? _rest173886173894_)
                                        (let ((_hd173891173913_
                                               (##car _rest173886173894_))
                                              (_tl173892173915_
                                               (##cdr _rest173886173894_)))
                                          (let* ((_id173918_ _hd173891173913_)
                                                 (_rest173920_
                                                  _tl173892173915_))
                                            (_K173890173910_
                                             _rest173920_
                                             _id173918_)))
                                        (_else173888173902_))))))))
                      (if (##pair? _rpath173863173870_)
                          (let ((_hd173867173925_ (##car _rpath173863173870_))
                                (_tl173868173927_ (##cdr _rpath173863173870_)))
                            (let* ((_origin173930_ _hd173867173925_)
                                   (_refs173932_ _tl173868173927_))
                              (_K173866173922_ _refs173932_ _origin173930_)))
                          (_E173865173874_))))))
          (let ((_$e173852_
                 (if (not _reload?173847_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath173846_)
                     '#f)))
            (if _$e173852_
                (values _$e173852_)
                (if (list? _rpath173846_)
                    (_import-submodule173850_ _rpath173846_)
                    (if (gx#core-library-module-path? _rpath173846_)
                        (let ((_ctx173855_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath173846_)
                                _reload?173847_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath173846_
                           _ctx173855_)
                          _ctx173855_)
                        (let* ((_npath173857_ (path-normalize _rpath173846_))
                               (_$e173859_
                                (if (not _reload?173847_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath173857_)
                                    '#f)))
                          (if _$e173859_
                              (values _$e173859_)
                              (_import-source173849_ _npath173857_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath173958_)
        (let ((_reload?173960_ '#f))
          (gx#core-import-module__% _rpath173958_ _reload?173960_))))
    (define gx#core-import-module
      (lambda _g179099_
        (let ((_g179098_ (##length _g179099_)))
          (cond ((##fx= _g179098_ 1)
                 (apply (lambda (_rpath173958_)
                          (gx#core-import-module__0 _rpath173958_))
                        _g179099_))
                ((##fx= _g179098_ 2)
                 (apply (lambda (_rpath173962_ _reload?173963_)
                          (gx#core-import-module__%
                           _rpath173962_
                           _reload?173963_))
                        _g179099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g179099_))))))
    (define gx#core-read-module
      (lambda (_path173835_)
        (with-catch
         (lambda (_exn173837_)
           (if (and (datum-parsing-exception? _exn173837_)
                    (eq? (datum-parsing-exception-filepos _exn173837_) '0))
               (gx#core-read-module/lang _path173835_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path173835_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g173839173841_)
                      (display-exception _exn173837_ _g173839173841_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path173835_)))))
    (define gx#core-read-module/sexp
      (lambda (_path173698_)
        (let _lp173700_ ((_body173702_ (read-syntax-from-file _path173698_))
                         (_pre173703_ '#f)
                         (_ns173704_ '#f)
                         (_pkg173705_ '#f))
          (let* ((_e173706173730_ _body173702_)
                 (_E173722173752_
                  (lambda ()
                    (let ((_g179100_
                           (if _pkg173705_
                               (values _pre173703_ _ns173704_ _pkg173705_)
                               (gx#core-read-module-package
                                _path173698_
                                _pre173703_
                                _ns173704_))))
                      (begin
                        (let ((_g179101_
                               (if (##values? _g179100_)
                                   (##vector-length _g179100_)
                                   1)))
                          (if (not (##fx= _g179101_ 3))
                              (error "Context expects 3 values" _g179101_)))
                        (let ((_pre173734_ (##vector-ref _g179100_ 0))
                              (_ns173735_ (##vector-ref _g179100_ 1))
                              (_pkg173736_ (##vector-ref _g179100_ 2)))
                          (let* ((_prelude173738_
                                  (if (gx#core-bound-module-prelude?
                                       _pre173734_)
                                      (gx#syntax-local-e__0 _pre173734_)
                                      (if (gx#core-library-module-path?
                                           _pre173734_)
                                          (gx#core-resolve-library-module-path
                                           _pre173734_)
                                          (if (gx#stx-string? _pre173734_)
                                              (gx#core-resolve-module-path__%
                                               _pre173734_
                                               _path173698_)
                                              (gx#stx-e _pre173734_)))))
                                 (_path-id173740_
                                  (gx#core-module-path->namespace
                                   _path173698_))
                                 (_pkg-id173742_
                                  (if _pkg173736_
                                      (string-append
                                       _pkg173736_
                                       '"/"
                                       _path-id173740_)
                                      _path-id173740_))
                                 (_module-id173744_
                                  (string->symbol _pkg-id173742_))
                                 (_module-ns173749_
                                  (if (eq? _ns173735_ '#!void)
                                      '#f
                                      (let ((_$e173746_ _ns173735_))
                                        (if _$e173746_
                                            _$e173746_
                                            _pkg-id173742_)))))
                            (values _prelude173738_
                                    _module-id173744_
                                    _module-ns173749_
                                    _body173702_)))))))
                 (_E173715173781_
                  (lambda ()
                    (if (gx#stx-pair? _e173706173730_)
                        (let ((_e173723173756_ (gx#syntax-e _e173706173730_)))
                          (let ((_hd173724173759_ (##car _e173723173756_))
                                (_tl173725173761_ (##cdr _e173723173756_)))
                            (if (eq? (gx#stx-e _hd173724173759_) 'package:)
                                (if (gx#stx-pair? _tl173725173761_)
                                    (let ((_e173726173764_
                                           (gx#syntax-e _tl173725173761_)))
                                      (let ((_hd173727173767_
                                             (##car _e173726173764_))
                                            (_tl173728173769_
                                             (##cdr _e173726173764_)))
                                        (let* ((_pkg173772_ _hd173727173767_)
                                               (_rest173774_ _tl173728173769_))
                                          (if '#t
                                              (let ((_pkg173779_
                                                     (if (gx#identifier?
                                                          _pkg173772_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg173772_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg173772_)
                         (gx#stx-false? _pkg173772_))
                     (gx#stx-e _pkg173772_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg173772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp173700_
                                                 _rest173774_
                                                 _pre173703_
                                                 _ns173704_
                                                 _pkg173779_))
                                              (_E173722173752_)))))
                                    (_E173722173752_))
                                (_E173722173752_))))
                        (_E173722173752_))))
                 (_E173708173807_
                  (lambda ()
                    (if (gx#stx-pair? _e173706173730_)
                        (let ((_e173716173785_ (gx#syntax-e _e173706173730_)))
                          (let ((_hd173717173788_ (##car _e173716173785_))
                                (_tl173718173790_ (##cdr _e173716173785_)))
                            (if (eq? (gx#stx-e _hd173717173788_) 'namespace:)
                                (if (gx#stx-pair? _tl173718173790_)
                                    (let ((_e173719173793_
                                           (gx#syntax-e _tl173718173790_)))
                                      (let ((_hd173720173796_
                                             (##car _e173719173793_))
                                            (_tl173721173798_
                                             (##cdr _e173719173793_)))
                                        (let* ((_ns173801_ _hd173720173796_)
                                               (_rest173803_ _tl173721173798_))
                                          (if '#t
                                              (let ((_ns173805_
                                                     (if (gx#identifier?
                                                          _ns173801_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns173801_))
                                                         (if (gx#stx-string?
                                                              _ns173801_)
                                                             (gx#stx-e
                                                              _ns173801_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns173801_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns173801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp173700_
                                                 _rest173803_
                                                 _pre173703_
                                                 _ns173805_
                                                 _pkg173705_))
                                              (_E173715173781_)))))
                                    (_E173715173781_))
                                (_E173715173781_))))
                        (_E173715173781_))))
                 (_E173707173831_
                  (lambda ()
                    (if (gx#stx-pair? _e173706173730_)
                        (let ((_e173709173811_ (gx#syntax-e _e173706173730_)))
                          (let ((_hd173710173814_ (##car _e173709173811_))
                                (_tl173711173816_ (##cdr _e173709173811_)))
                            (if (eq? (gx#stx-e _hd173710173814_) 'prelude:)
                                (if (gx#stx-pair? _tl173711173816_)
                                    (let ((_e173712173819_
                                           (gx#syntax-e _tl173711173816_)))
                                      (let ((_hd173713173822_
                                             (##car _e173712173819_))
                                            (_tl173714173824_
                                             (##cdr _e173712173819_)))
                                        (let* ((_prelude173827_
                                                _hd173713173822_)
                                               (_rest173829_ _tl173714173824_))
                                          (if '#t
                                              (_lp173700_
                                               _rest173829_
                                               _prelude173827_
                                               _ns173704_
                                               _pkg173705_)
                                              (_E173708173807_)))))
                                    (_E173708173807_))
                                (_E173708173807_))))
                        (_E173708173807_)))))
            (_E173707173831_)))))
    (define gx#core-read-module/lang
      (lambda (_path173525_)
        (letrec ((_default-read-module-body173527_
                  (lambda (_inp173690_)
                    (let _lp173692_ ((_body173694_ '()))
                      (let ((_next173696_ (read-syntax _inp173690_)))
                        (if (eof-object? _next173696_)
                            (reverse _body173694_)
                            (_lp173692_ (cons _next173696_ _body173694_)))))))
                 (_read-body173528_
                  (lambda (_inp173609_
                           _pre173610_
                           _ns173611_
                           _pkg173612_
                           _args173613_)
                    (let ((_g179102_
                           (if _pkg173612_
                               (values _pre173610_ _ns173611_ _pkg173612_)
                               (gx#core-read-module-package
                                _path173525_
                                _pre173610_
                                _ns173611_))))
                      (begin
                        (let ((_g179103_
                               (if (##values? _g179102_)
                                   (##vector-length _g179102_)
                                   1)))
                          (if (not (##fx= _g179103_ 3))
                              (error "Context expects 3 values" _g179103_)))
                        (let ((_pre173615_ (##vector-ref _g179102_ 0))
                              (_ns173616_ (##vector-ref _g179102_ 1))
                              (_pkg173617_ (##vector-ref _g179102_ 2)))
                          (let* ((_prelude173619_
                                  (gx#import-module__0 _pre173615_))
                                 (_read-module-body173673_
                                  (let ((_$e173665_
                                         (find (lambda (_e173620173622_)
                                                 (let* ((_g173624173634_
                                                         _e173620173622_)
                                                        (_else173626173642_
                                                         (lambda () '#f))
                                                        (_K173628173646_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g173624173634_
                                                        'gx#module-export::t)
                                                       (let* ((_e173629173649_
                                                               (##unchecked-structure-ref
                                                                _g173624173634_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e173630173652_
                                                               (##unchecked-structure-ref
                                                                _g173624173634_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e173631173655_
                                                               (##unchecked-structure-ref
                                                                _g173624173634_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e173631173655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e173632173658_
                            (##unchecked-structure-ref
                             _g173624173634_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g173660173662_)
                              (eq? _g173660173662_ 'read-module-body))
                            _e173632173658_)
                           (_K173628173646_)
                           (_else173626173642_)))
                     (_else173626173642_)))
               (_else173626173642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude173619_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e173665_
                                        ((lambda (_xport173668_)
                                           (let ((_proc173671_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport173668_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc173671_)
                                                 _proc173671_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path173525_
                                                  _pre173615_
                                                  _proc173671_))))
                                         _$e173665_)
                                        _default-read-module-body173527_)))
                                 (_path-id173675_
                                  (gx#core-module-path->namespace
                                   _path173525_))
                                 (_pkg-id173677_
                                  (if _pkg173617_
                                      (string-append
                                       _pkg173617_
                                       '"/"
                                       _path-id173675_)
                                      _path-id173675_))
                                 (_module-id173679_
                                  (string->symbol _pkg-id173677_))
                                 (_module-ns173684_
                                  (let ((_$e173681_ _ns173616_))
                                    (if _$e173681_ _$e173681_ _pkg-id173677_)))
                                 (_body173687_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body173673_ _inp173609_))
                                   gx#current-module-reader-path
                                   _path173525_
                                   gx#current-module-reader-args
                                   _args173613_)))
                            (values _prelude173619_
                                    _module-id173679_
                                    _module-ns173684_
                                    _body173687_)))))))
                 (_string-e173529_
                  (lambda (_obj173606_ _what173607_)
                    (if (string? _obj173606_)
                        _obj173606_
                        (if (symbol? _obj173606_)
                            (symbol->string _obj173606_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what173607_)
                             _path173525_
                             _obj173606_)))))
                 (_read-lang-args173530_
                  (lambda (_inp173561_ _args173562_)
                    (let* ((_args173563173571_ _args173562_)
                           (_else173565173579_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path173525_)))
                           (_K173567173594_
                            (lambda (_args173582_ _prelude173583_)
                              (let* ((_pkg173585_
                                      (pgetq 'package: _args173582_))
                                     (_pkg173587_
                                      (if _pkg173585_
                                          (_string-e173529_
                                           _pkg173585_
                                           '"package")
                                          '#f))
                                     (_ns173589_
                                      (pgetq 'namespace: _args173582_))
                                     (_ns173591_
                                      (if _ns173589_
                                          (_string-e173529_
                                           _ns173589_
                                           '"namespace")
                                          '#f)))
                                (_read-body173528_
                                 _inp173561_
                                 _prelude173583_
                                 _ns173591_
                                 _pkg173587_
                                 _args173582_)))))
                      (if (##pair? _args173563173571_)
                          (let ((_hd173568173597_ (##car _args173563173571_))
                                (_tl173569173599_ (##cdr _args173563173571_)))
                            (let* ((_prelude173602_ _hd173568173597_)
                                   (_args173604_ _tl173569173599_))
                              (_K173567173594_ _args173604_ _prelude173602_)))
                          (_else173565173579_)))))
                 (_read-lang173531_
                  (lambda (_inp173536_)
                    (let* ((_head173538_ (read-line _inp173536_))
                           (_$e173540_ (string-index _head173538_ '#\space)))
                      (if _$e173540_
                          ((lambda (_ix173543_)
                             (let ((_lang173545_
                                    (substring _head173538_ '0 _ix173543_)))
                               (if (equal? _lang173545_ '"#lang")
                                   (let* ((_rest173547_
                                           (substring
                                            _head173538_
                                            (fx+ _ix173543_ '1)
                                            (string-length _head173538_)))
                                          (_args173558_
                                           (with-catch
                                            (lambda (_g173548173550_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path173525_
                                               _g173548173550_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest173547_
                                               (lambda (_g173553173555_)
                                                 (read-all
                                                  _g173553173555_
                                                  read)))))))
                                     (_read-lang-args173530_
                                      _inp173536_
                                      _args173558_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path173525_))))
                           _$e173540_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path173525_)))))
                 (_read-e173532_
                  (lambda (_inp173534_)
                    (if (eq? (peek-char _inp173534_) '#\#)
                        (_read-lang173531_ _inp173534_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path173525_)))))
          (gx#call-with-input-source-file _path173525_ _read-e173532_))))
    (define gx#core-read-module-package
      (lambda (_path173479_ _pre173480_ _ns173481_)
        (letrec ((_string-e173483_
                  (lambda (_e173523_)
                    (if (symbol? _e173523_)
                        (symbol->string _e173523_)
                        (if (string? _e173523_)
                            _e173523_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e173523_))))))
          (let _lp173485_ ((_dir173487_ (path-directory _path173479_))
                           (_pkg-path173488_ '()))
            (let ((_gerbil.pkg173490_ (path-expand '"gerbil.pkg" _dir173487_)))
              (if (file-exists? _gerbil.pkg173490_)
                  (let ((_plist173492_
                         (gx#core-library-package-plist__% _dir173487_ '#t)))
                    (if (null? _plist173492_)
                        (let ((_pkg173494_
                               (if (not (null? _pkg-path173488_))
                                   (string-join _pkg-path173488_ '"/")
                                   '#f)))
                          (values _pre173480_ _ns173481_ _pkg173494_))
                        (if (list? _plist173492_)
                            (let* ((_root173496_
                                    (pgetq 'package: _plist173492_))
                                   (_pkg173500_
                                    (let ((_pkg-path173498_
                                           (if _root173496_
                                               (cons (_string-e173483_
                                                      _root173496_)
                                                     _pkg-path173488_)
                                               _pkg-path173488_)))
                                      (if (not (null? _pkg-path173498_))
                                          (string-join _pkg-path173498_ '"/")
                                          '#f)))
                                   (_ns173507_
                                    (let ((_ns173505_
                                           (let ((_$e173502_ _ns173481_))
                                             (if _$e173502_
                                                 _$e173502_
                                                 (pgetq 'namespace:
                                                        _plist173492_)))))
                                      (if _ns173505_
                                          (_string-e173483_ _ns173505_)
                                          '#f)))
                                   (_pre173512_
                                    (let ((_$e173509_ _pre173480_))
                                      (if _$e173509_
                                          _$e173509_
                                          (pgetq 'prelude: _plist173492_)))))
                              (values _pre173512_ _ns173507_ _pkg173500_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist173492_))))
                  (let ((_dir*173515_
                         (path-strip-trailing-directory-separator
                          _dir173487_)))
                    (if (or (string-empty? _dir*173515_)
                            (equal? _dir173487_ _dir*173515_))
                        (values _pre173480_ _ns173481_ '#f)
                        (let ((_xpath173520_
                               (path-strip-directory _dir*173515_))
                              (_xdir173521_ (path-directory _dir*173515_)))
                          (_lp173485_
                           _xdir173521_
                           (cons _xpath173520_ _pkg-path173488_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path173477_)
        (path-strip-extension (path-strip-directory _path173477_))))
    (define gx#core-module-path->id
      (lambda (_path173475_)
        (string->symbol (gx#core-module-path->namespace _path173475_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path173454_ _rel173455_)
        (let* ((_path173457_ (gx#stx-e _stx-path173454_))
               (_path173459_
                (if (string-empty? (path-extension _path173457_))
                    (string-append _path173457_ '".ss")
                    _path173457_)))
          (gx#core-resolve-path__%
           _path173459_
           (let ((_$e173462_ (gx#stx-source _stx-path173454_)))
             (if _$e173462_ _$e173462_ _rel173455_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path173468_)
        (let ((_rel173470_ '#f))
          (gx#core-resolve-module-path__% _stx-path173468_ _rel173470_))))
    (define gx#core-resolve-module-path
      (lambda _g179105_
        (let ((_g179104_ (##length _g179105_)))
          (cond ((##fx= _g179104_ 1)
                 (apply (lambda (_stx-path173468_)
                          (gx#core-resolve-module-path__0 _stx-path173468_))
                        _g179105_))
                ((##fx= _g179104_ 2)
                 (apply (lambda (_stx-path173472_ _rel173473_)
                          (gx#core-resolve-module-path__%
                           _stx-path173472_
                           _rel173473_))
                        _g179105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g179105_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath173340_)
        (let* ((_spath173342_ (symbol->string (gx#stx-e _libpath173340_)))
               (_spath173344_
                (substring _spath173342_ '1 (string-length _spath173342_)))
               (_ext173346_ (path-extension _spath173344_))
               (_ssi173348_
                (if (string-empty? _ext173346_)
                    (string-append _spath173344_ '".ssi")
                    (string-append
                     (path-strip-extension _spath173344_)
                     '".ssi")))
               (_srcs173352_
                (if (string-empty? _ext173346_)
                    (map (lambda (_ext173350_)
                           (string-append _spath173344_ _ext173350_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath173344_ '()))))
          (let _lp173355_ ((_rest173357_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest173358173367_ _rest173357_)
                   (_E173361173371_
                    (lambda ()
                      (error '"No clause matching" _rest173358173367_))))
              (let ((_K173363173441_
                     (lambda (_rest173382_ _dir173383_)
                       (letrec ((_resolve173385_
                                 (lambda (_ssi173397_ _srcs173398_)
                                   (let ((_compiled-path173400_
                                          (path-expand
                                           _ssi173397_
                                           _dir173383_)))
                                     (if (file-exists? _compiled-path173400_)
                                         (path-normalize _compiled-path173400_)
                                         (let _lpr173402_ ((_rest-src173404_
                                                            _srcs173398_))
                                           (let* ((_rest-src173405173413_
                                                   _rest-src173404_)
                                                  (_else173407173421_
                                                   (lambda ()
                                                     (_lp173355_
                                                      _rest173382_)))
                                                  (_K173409173429_
                                                   (lambda (_rest-src173424_
                                                            _src173425_)
                                                     (let ((_src-path173427_
                                                            (path-expand
                                                             _src173425_
                                                             _dir173383_)))
                                                       (if (file-exists?
                                                            _src-path173427_)
                                                           (path-normalize
                                                            _src-path173427_)
                                                           (_lpr173402_
                                                            _rest-src173424_))))))
                                             (if (##pair? _rest-src173405173413_)
                                                 (let ((_hd173410173432_
                                                        (##car _rest-src173405173413_))
                                                       (_tl173411173434_
                                                        (##cdr _rest-src173405173413_)))
                                                   (let* ((_src173437_
                                                           _hd173410173432_)
                                                          (_rest-src173439_
                                                           _tl173411173434_))
                                                     (_K173409173429_
                                                      _rest-src173439_
                                                      _src173437_)))
                                                 (_else173407173421_)))))))))
                         (let ((_$e173387_
                                (gx#core-library-package-path-prefix
                                 _dir173383_)))
                           (if _$e173387_
                               ((lambda (_prefix173390_)
                                  (if (string-prefix?
                                       _prefix173390_
                                       _spath173344_)
                                      (let ((_ssi173394_
                                             (substring
                                              _ssi173348_
                                              (string-length _prefix173390_)
                                              (string-length _ssi173348_)))
                                            (_srcs173395_
                                             (map (lambda (_src173392_)
                                                    (substring
                                                     _src173392_
                                                     (string-length
                                                      _prefix173390_)
                                                     (string-length
                                                      _src173392_)))
                                                  _srcs173352_)))
                                        (_resolve173385_
                                         _ssi173394_
                                         _srcs173395_))
                                      (_lp173355_ _rest173382_)))
                                _$e173387_)
                               (_resolve173385_ _ssi173348_ _srcs173352_))))))
                    (_K173362173376_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath173340_))))
                (let ((_try-match173360173379_
                       (lambda ()
                         (if (##null? _rest173358173367_)
                             (_K173362173376_)
                             (_E173361173371_)))))
                  (if (##pair? _rest173358173367_)
                      (let ((_tl173365173446_ (##cdr _rest173358173367_))
                            (_hd173364173444_ (##car _rest173358173367_)))
                        (let ((_dir173449_ _hd173364173444_)
                              (_rest173451_ _tl173365173446_))
                          (_K173363173441_ _rest173451_ _dir173449_)))
                      (_try-match173360173379_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath173313_)
        (letrec ((_resolve173315_
                  (lambda (_path173332_ _base173333_)
                    (let ((_$e173335_ (string-rindex _base173333_ '#\/)))
                      (if _$e173335_
                          ((lambda (_idx173338_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base173333_ '0 _idx173338_)
                                '"/"
                                _path173332_))))
                           _$e173335_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path173332_))))))))
          (let ((_spath173317_ (symbol->string (gx#stx-e _modpath173313_)))
                (_mod173318_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod173318_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath173313_))
            (let ((_mpath173320_
                   (symbol->string
                    (##structure-ref
                     _mod173318_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp173322_ ((_spath173324_ _spath173317_)
                               (_mpath173325_ _mpath173320_))
                (if (string-prefix? '"../" _spath173324_)
                    (let ((_$e173327_ (string-rindex _mpath173325_ '#\/)))
                      (if _$e173327_
                          ((lambda (_idx173330_)
                             (_lp173322_
                              (substring
                               _spath173324_
                               '3
                               (string-length _spath173324_))
                              (substring _mpath173325_ '0 _idx173330_)))
                           _$e173327_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath173313_)))
                    (if (string-prefix? '"./" _spath173324_)
                        (_lp173322_
                         (substring
                          _spath173324_
                          '2
                          (string-length _spath173324_))
                         _mpath173325_)
                        (_resolve173315_ _spath173324_ _mpath173325_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir173306_)
        (let ((_$e173308_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir173306_))))
          (if _$e173308_
              ((lambda (_pkg173311_)
                 (string-append (symbol->string _pkg173311_) '"/"))
               _$e173308_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir173278_ _exists?173279_)
        (let* ((_cache173281_ (gx#core-library-package-cache))
               (_$e173283_ (hash-get _cache173281_ _dir173278_)))
          (if _$e173283_
              (values _$e173283_)
              (let* ((_gerbil.pkg173286_
                      (path-expand '"gerbil.pkg" _dir173278_))
                     (_plist173293_
                      (if (or _exists?173279_
                              (file-exists? _gerbil.pkg173286_))
                          (let ((_e173291_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg173286_
                                  read)))
                            (if (eof-object? _e173291_)
                                '()
                                (if (list? _e173291_)
                                    _e173291_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg173286_
                                     _e173291_))))
                          '())))
                (hash-put! _cache173281_ _dir173278_ _plist173293_)
                _plist173293_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir173299_)
        (let ((_exists?173301_ '#f))
          (gx#core-library-package-plist__% _dir173299_ _exists?173301_))))
    (define gx#core-library-package-plist
      (lambda _g179107_
        (let ((_g179106_ (##length _g179107_)))
          (cond ((##fx= _g179106_ 1)
                 (apply (lambda (_dir173299_)
                          (gx#core-library-package-plist__0 _dir173299_))
                        _g179107_))
                ((##fx= _g179106_ 2)
                 (apply (lambda (_dir173303_ _exists?173304_)
                          (gx#core-library-package-plist__%
                           _dir173303_
                           _exists?173304_))
                        _g179107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g179107_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e173272_ (gx#current-expander-module-library-package-cache)))
          (if _$e173272_
              (values _$e173272_)
              (let ((_cache173275_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache173275_)
                _cache173275_)))))
    (define gx#core-library-module-path?
      (lambda (_stx173269_) (gx#core-special-module-path? _stx173269_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx173267_) (gx#core-special-module-path? _stx173267_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx173262_ _char173263_)
        (if (gx#identifier? _stx173262_)
            (if (interned-symbol? (gx#stx-e _stx173262_))
                (let ((_str173265_ (symbol->string (gx#stx-e _stx173262_))))
                  (if (fx> (string-length _str173265_) '1)
                      (eq? (string-ref _str173265_ '0) _char173263_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx173256_)
        (gx#core-bound-identifier?__%
         _stx173256_
         (lambda (_g173257173259_)
           (gx#expander-binding?__% _g173257173259_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx173250_)
        (gx#core-bound-identifier?__%
         _stx173250_
         (lambda (_g173251173253_)
           (gx#expander-binding?__% _g173251173253_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx173237_)
        (letrec ((_module-prelude?173239_
                  (lambda (_e173245_)
                    (let ((_$e173247_
                           (##structure-instance-of?
                            _e173245_
                            'gx#module-context::t)))
                      (if _$e173247_
                          _$e173247_
                          (##structure-instance-of?
                           _e173245_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx173237_
           (lambda (_g173240173242_)
             (gx#expander-binding?__%
              _g173240173242_
              _module-prelude?173239_))))))
    (define gx#core-bind-import!__%
      (lambda (_in173167_ _ctx173168_ _force-weak?173169_)
        (let* ((_in173170173179_ _in173167_)
               (_E173172173183_
                (lambda () (error '"No clause matching" _in173170173179_)))
               (_K173173173196_
                (lambda (_weak?173186_ _phi173187_ _key173188_ _source173189_)
                  (gx#core-bind!__%
                   _key173188_
                   (let ((_e173191_
                          (gx#core-resolve-module-export _source173189_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e173191_
                       '1
                       gx#binding::t
                       '#f)
                      _key173188_
                      _phi173187_
                      _e173191_
                      (##unchecked-structure-ref
                       _source173189_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e173193_ _force-weak?173169_))
                        (if _$e173193_ _$e173193_ _weak?173186_))))
                   gx#core-context-rebind?
                   _phi173187_
                   _ctx173168_))))
          (if (##structure-direct-instance-of?
               _in173170173179_
               'gx#module-import::t)
              (let* ((_e173174173199_
                      (##unchecked-structure-ref
                       _in173170173179_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source173202_ _e173174173199_)
                     (_e173175173204_
                      (##unchecked-structure-ref
                       _in173170173179_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key173207_ _e173175173204_)
                     (_e173176173209_
                      (##unchecked-structure-ref
                       _in173170173179_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi173212_ _e173176173209_)
                     (_e173177173214_
                      (##unchecked-structure-ref
                       _in173170173179_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?173217_ _e173177173214_))
                (_K173173173196_
                 _weak?173217_
                 _phi173212_
                 _key173207_
                 _source173202_))
              (_E173172173183_)))))
    (define gx#core-bind-import!__0
      (lambda (_in173222_)
        (let* ((_ctx173224_ (gx#current-expander-context))
               (_force-weak?173226_ '#f))
          (gx#core-bind-import!__%
           _in173222_
           _ctx173224_
           _force-weak?173226_))))
    (define gx#core-bind-import!__1
      (lambda (_in173228_ _ctx173229_)
        (let ((_force-weak?173231_ '#f))
          (gx#core-bind-import!__%
           _in173228_
           _ctx173229_
           _force-weak?173231_))))
    (define gx#core-bind-import!
      (lambda _g179109_
        (let ((_g179108_ (##length _g179109_)))
          (cond ((##fx= _g179108_ 1)
                 (apply (lambda (_in173222_)
                          (gx#core-bind-import!__0 _in173222_))
                        _g179109_))
                ((##fx= _g179108_ 2)
                 (apply (lambda (_in173228_ _ctx173229_)
                          (gx#core-bind-import!__1 _in173228_ _ctx173229_))
                        _g179109_))
                ((##fx= _g179108_ 3)
                 (apply (lambda (_in173233_ _ctx173234_ _force-weak?173235_)
                          (gx#core-bind-import!__%
                           _in173233_
                           _ctx173234_
                           _force-weak?173235_))
                        _g179109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g179109_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in173153_ _ctx173154_)
        (gx#core-bind-import!__% _in173153_ _ctx173154_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in173159_)
        (let ((_ctx173161_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in173159_ _ctx173161_))))
    (define gx#core-bind-weak-import!
      (lambda _g179111_
        (let ((_g179110_ (##length _g179111_)))
          (cond ((##fx= _g179110_ 1)
                 (apply (lambda (_in173159_)
                          (gx#core-bind-weak-import!__0 _in173159_))
                        _g179111_))
                ((##fx= _g179110_ 2)
                 (apply (lambda (_in173163_ _ctx173164_)
                          (gx#core-bind-weak-import!__%
                           _in173163_
                           _ctx173164_))
                        _g179111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g179111_))))))
    (define gx#core-resolve-module-export
      (lambda (_out173044_)
        (letrec ((_subst173046_
                  (lambda (_key173092_)
                    (let* ((_key173093173101_ _key173092_)
                           (_else173095173109_ (lambda () _key173092_))
                           (_K173097173140_
                            (lambda (_mark173112_ _id173113_)
                              (let* ((_mark173114173120_ _mark173112_)
                                     (_E173116173124_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark173114173120_)))
                                     (_K173117173132_
                                      (lambda (_subst173127_)
                                        (let ((_$e173129_
                                               (if _subst173127_
                                                   (hash-get
                                                    _subst173127_
                                                    _id173113_)
                                                   '#f)))
                                          (if _$e173129_
                                              _$e173129_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key173092_))))))
                                (if (##structure-instance-of?
                                     _mark173114173120_
                                     'gx#expander-mark::t)
                                    (let* ((_e173118173135_
                                            (##unchecked-structure-ref
                                             _mark173114173120_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst173138_ _e173118173135_))
                                      (_K173117173132_ _subst173138_))
                                    (_E173116173124_))))))
                      (if (##pair? _key173093173101_)
                          (let ((_hd173098173143_ (##car _key173093173101_))
                                (_tl173099173145_ (##cdr _key173093173101_)))
                            (let* ((_id173148_ _hd173098173143_)
                                   (_mark173150_ _tl173099173145_))
                              (_K173097173140_ _mark173150_ _id173148_)))
                          (_else173095173109_))))))
          (let* ((_out173047173057_ _out173044_)
                 (_E173049173061_
                  (lambda () (error '"No clause matching" _out173047173057_)))
                 (_K173050173068_
                  (lambda (_phi173064_ _key173065_ _ctx173066_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx173066_ _phi173064_)
                     (_subst173046_ _key173065_)))))
            (if (##structure-direct-instance-of?
                 _out173047173057_
                 'gx#module-export::t)
                (let* ((_e173051173071_
                        (##unchecked-structure-ref
                         _out173047173057_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx173074_ _e173051173071_)
                       (_e173052173076_
                        (##unchecked-structure-ref
                         _out173047173057_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key173079_ _e173052173076_)
                       (_e173053173081_
                        (##unchecked-structure-ref
                         _out173047173057_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi173084_ _e173053173081_)
                       (_e173054173086_
                        (##unchecked-structure-ref
                         _out173047173057_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e173055173089_
                        (##unchecked-structure-ref
                         _out173047173057_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K173050173068_ _phi173084_ _key173079_ _ctx173074_))
                (_E173049173061_))))))
    (define gx#core-module-export->import__%
      (lambda (_out172969_ _rename172970_ _dphi172971_)
        (let* ((_out172972172982_ _out172969_)
               (_E172974172986_
                (lambda () (error '"No clause matching" _out172972172982_)))
               (_K172975172998_
                (lambda (_weak?172989_
                         _name172990_
                         _phi172991_
                         _key172992_
                         _ctx172993_)
                  (##structure
                   gx#module-import::t
                   _out172969_
                   (let ((_$e172995_ _rename172970_))
                     (if _$e172995_ _$e172995_ _name172990_))
                   (fx+ _phi172991_ _dphi172971_)
                   _weak?172989_))))
          (if (##structure-direct-instance-of?
               _out172972172982_
               'gx#module-export::t)
              (let* ((_e172976173001_
                      (##unchecked-structure-ref
                       _out172972172982_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx173004_ _e172976173001_)
                     (_e172977173006_
                      (##unchecked-structure-ref
                       _out172972172982_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key173009_ _e172977173006_)
                     (_e172978173011_
                      (##unchecked-structure-ref
                       _out172972172982_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi173014_ _e172978173011_)
                     (_e172979173016_
                      (##unchecked-structure-ref
                       _out172972172982_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name173019_ _e172979173016_)
                     (_e172980173021_
                      (##unchecked-structure-ref
                       _out172972172982_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?173024_ _e172980173021_))
                (_K172975172998_
                 _weak?173024_
                 _name173019_
                 _phi173014_
                 _key173009_
                 _ctx173004_))
              (_E172974172986_)))))
    (define gx#core-module-export->import__0
      (lambda (_out173029_)
        (let* ((_rename173031_ '#f) (_dphi173033_ '0))
          (gx#core-module-export->import__%
           _out173029_
           _rename173031_
           _dphi173033_))))
    (define gx#core-module-export->import__1
      (lambda (_out173035_ _rename173036_)
        (let ((_dphi173038_ '0))
          (gx#core-module-export->import__%
           _out173035_
           _rename173036_
           _dphi173038_))))
    (define gx#core-module-export->import
      (lambda _g179113_
        (let ((_g179112_ (##length _g179113_)))
          (cond ((##fx= _g179112_ 1)
                 (apply (lambda (_out173029_)
                          (gx#core-module-export->import__0 _out173029_))
                        _g179113_))
                ((##fx= _g179112_ 2)
                 (apply (lambda (_out173035_ _rename173036_)
                          (gx#core-module-export->import__1
                           _out173035_
                           _rename173036_))
                        _g179113_))
                ((##fx= _g179112_ 3)
                 (apply (lambda (_out173040_ _rename173041_ _dphi173042_)
                          (gx#core-module-export->import__%
                           _out173040_
                           _rename173041_
                           _dphi173042_))
                        _g179113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g179113_))))))
    (define gx#core-expand-module%
      (lambda (_stx172897_)
        (letrec ((_make-context172899_
                  (lambda (_id172950_)
                    (let* ((_super172952_ (gx#current-expander-context))
                           (_bind-id172954_ (gx#stx-e _id172950_))
                           (_mod-id172956_
                            (if (##structure-instance-of?
                                 _super172952_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super172952_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id172954_)
                                _bind-id172954_))
                           (_ns172958_ (symbol->string _mod-id172956_))
                           (_path172965_
                            (if (##structure-instance-of?
                                 _super172952_
                                 'gx#module-context::t)
                                (let ((_path172960_
                                       (##unchecked-structure-ref
                                        _super172952_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path172960_)
                                          (null? _path172960_))
                                      (cons _bind-id172954_ _path172960_)
                                      (if (not _path172960_)
                                          _bind-id172954_
                                          (cons _bind-id172954_
                                                (cons _path172960_ '())))))
                                _bind-id172954_)))
                      (let ((__obj179089
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
                         __obj179089
                         _mod-id172956_
                         _super172952_
                         _ns172958_
                         _path172965_)
                        __obj179089)))))
          (let* ((_e172900172910_ _stx172897_)
                 (_E172902172914_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e172900172910_)))
                 (_E172901172946_
                  (lambda ()
                    (if (gx#stx-pair? _e172900172910_)
                        (let ((_e172903172918_ (gx#syntax-e _e172900172910_)))
                          (let ((_hd172904172921_ (##car _e172903172918_))
                                (_tl172905172923_ (##cdr _e172903172918_)))
                            (if (gx#stx-pair? _tl172905172923_)
                                (let ((_e172906172926_
                                       (gx#syntax-e _tl172905172923_)))
                                  (let ((_hd172907172929_
                                         (##car _e172906172926_))
                                        (_tl172908172931_
                                         (##cdr _e172906172926_)))
                                    (let* ((_id172934_ _hd172907172929_)
                                           (_body172936_ _tl172908172931_))
                                      (if (and (gx#identifier? _id172934_)
                                               (gx#stx-list? _body172936_))
                                          (let* ((_ctx172938_
                                                  (_make-context172899_
                                                   _id172934_))
                                                 (_body172940_
                                                  (gx#core-expand-module-begin
                                                   _body172936_
                                                   _ctx172938_))
                                                 (_body172942_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body172940_)
                                                   (gx#stx-source
                                                    _stx172897_))))
                                            (##unchecked-structure-set!
                                             _ctx172938_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body172942_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx172938_
                                             _body172942_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id172934_
                                             _ctx172938_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id172934_)
                                              _body172942_)
                                             (gx#stx-source _stx172897_)))
                                          (_E172902172914_)))))
                                (_E172902172914_))))
                        (_E172902172914_)))))
            (_E172901172946_)))))
    (define gx#core-expand-module-begin
      (lambda (_body172863_ _ctx172864_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx172867_
                   (gx#core-expand-head (cons '%%begin-module _body172863_)))
                  (_e172868172875_ _stx172867_)
                  (_E172870172879_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx172867_)))
                  (_E172869172893_
                   (lambda ()
                     (if (gx#stx-pair? _e172868172875_)
                         (let ((_e172871172883_ (gx#syntax-e _e172868172875_)))
                           (let ((_hd172872172886_ (##car _e172871172883_))
                                 (_tl172873172888_ (##cdr _e172871172883_)))
                             (if (and (gx#identifier? _hd172872172886_)
                                      (gx#core-identifier=?
                                       _hd172872172886_
                                       '%#begin-module))
                                 (let ((_body172891_ _tl172873172888_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx172867_)
                                           _body172891_
                                           (gx#core-expand-module-body
                                            _body172891_))
                                       (_E172870172879_)))
                                 (_E172870172879_))))
                         (_E172870172879_)))))
             (_E172869172893_)))
         gx#current-expander-context
         _ctx172864_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body172659_)
        (letrec ((_expand-special172661_
                  (lambda (_hd172790_ _K172791_ _rest172792_ _r172793_)
                    (let* ((_e172794172811_ _hd172790_)
                           (_E172806172815_
                            (lambda ()
                              (_K172791_
                               _rest172792_
                               (cons (gx#core-expand-top _hd172790_)
                                     _r172793_))))
                           (_E172796172827_
                            (lambda ()
                              (if (gx#stx-pair? _e172794172811_)
                                  (let ((_e172807172819_
                                         (gx#syntax-e _e172794172811_)))
                                    (let ((_hd172808172822_
                                           (##car _e172807172819_))
                                          (_tl172809172824_
                                           (##cdr _e172807172819_)))
                                      (if (and (gx#identifier?
                                                _hd172808172822_)
                                               (gx#core-identifier=?
                                                _hd172808172822_
                                                '%#export))
                                          (if '#t
                                              (_K172791_
                                               _rest172792_
                                               (cons _hd172790_ _r172793_))
                                              (_E172806172815_))
                                          (_E172806172815_))))
                                  (_E172806172815_))))
                           (_E172795172859_
                            (lambda ()
                              (if (gx#stx-pair? _e172794172811_)
                                  (let ((_e172797172831_
                                         (gx#syntax-e _e172794172811_)))
                                    (let ((_hd172798172834_
                                           (##car _e172797172831_))
                                          (_tl172799172836_
                                           (##cdr _e172797172831_)))
                                      (if (and (gx#identifier?
                                                _hd172798172834_)
                                               (gx#core-identifier=?
                                                _hd172798172834_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl172799172836_)
                                              (let ((_e172800172839_
                                                     (gx#syntax-e
                                                      _tl172799172836_)))
                                                (let ((_hd172801172842_
                                                       (##car _e172800172839_))
                                                      (_tl172802172844_
                                                       (##cdr _e172800172839_)))
                                                  (let ((_hd-bind172847_
                                                         _hd172801172842_))
                                                    (if (gx#stx-pair?
                                                         _tl172802172844_)
                                                        (let ((_e172803172849_
                                                               (gx#syntax-e
                                                                _tl172802172844_)))
                                                          (let ((_hd172804172852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e172803172849_))
                        (_tl172805172854_ (##cdr _e172803172849_)))
                    (let ((_expr172857_ _hd172804172852_))
                      (if (gx#stx-null? _tl172805172854_)
                          (if (gx#core-bind-values? _hd-bind172847_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind172847_)
                                (_K172791_
                                 _rest172792_
                                 (cons _hd172790_ _r172793_)))
                              (_E172796172827_))
                          (_E172796172827_)))))
                (_E172796172827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172796172827_))
                                          (_E172796172827_))))
                                  (_E172796172827_)))))
                      (_E172795172859_))))
                 (_expand-body172662_
                  (lambda (_rbody172664_)
                    (let _lp172666_ ((_rest172668_ _rbody172664_)
                                     (_body172669_ '()))
                      (let* ((_rest172670172678_ _rest172668_)
                             (_else172672172686_ (lambda () _body172669_))
                             (_K172674172778_
                              (lambda (_rest172689_ _hd172690_)
                                (let* ((_e172691172712_ _hd172690_)
                                       (_E172707172716_
                                        (lambda ()
                                          (_lp172666_
                                           _rest172689_
                                           (cons (gx#core-expand-expression
                                                  _hd172690_)
                                                 _body172669_))))
                                       (_E172703172730_
                                        (lambda ()
                                          (if (gx#stx-pair? _e172691172712_)
                                              (let ((_e172708172720_
                                                     (gx#syntax-e
                                                      _e172691172712_)))
                                                (let ((_hd172709172723_
                                                       (##car _e172708172720_))
                                                      (_tl172710172725_
                                                       (##cdr _e172708172720_)))
                                                  (let ((_form172728_
                                                         _hd172709172723_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form172728_
                                                         gx#special-form-binding?)
                                                        (_lp172666_
                                                         _rest172689_
                                                         (cons _hd172690_
                                                               _body172669_))
                                                        (_E172707172716_)))))
                                              (_E172707172716_))))
                                       (_E172693172742_
                                        (lambda ()
                                          (if (gx#stx-pair? _e172691172712_)
                                              (let ((_e172704172734_
                                                     (gx#syntax-e
                                                      _e172691172712_)))
                                                (let ((_hd172705172737_
                                                       (##car _e172704172734_))
                                                      (_tl172706172739_
                                                       (##cdr _e172704172734_)))
                                                  (if (and (gx#identifier?
                                                            _hd172705172737_)
                                                           (gx#core-identifier=?
                                                            _hd172705172737_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp172666_
                                                           _rest172689_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd172690_)
                         _body172669_))
                  (_E172703172730_))
              (_E172703172730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172703172730_))))
                                       (_E172692172774_
                                        (lambda ()
                                          (if (gx#stx-pair? _e172691172712_)
                                              (let ((_e172694172746_
                                                     (gx#syntax-e
                                                      _e172691172712_)))
                                                (let ((_hd172695172749_
                                                       (##car _e172694172746_))
                                                      (_tl172696172751_
                                                       (##cdr _e172694172746_)))
                                                  (if (and (gx#identifier?
                                                            _hd172695172749_)
                                                           (gx#core-identifier=?
                                                            _hd172695172749_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl172696172751_)
                                                          (let ((_e172697172754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl172696172751_)))
                    (let ((_hd172698172757_ (##car _e172697172754_))
                          (_tl172699172759_ (##cdr _e172697172754_)))
                      (let ((_hd-bind172762_ _hd172698172757_))
                        (if (gx#stx-pair? _tl172699172759_)
                            (let ((_e172700172764_
                                   (gx#syntax-e _tl172699172759_)))
                              (let ((_hd172701172767_ (##car _e172700172764_))
                                    (_tl172702172769_ (##cdr _e172700172764_)))
                                (let ((_expr172772_ _hd172701172767_))
                                  (if (gx#stx-null? _tl172702172769_)
                                      (if '#t
                                          (_lp172666_
                                           _rest172689_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind172762_)
                                                   (gx#core-expand-expression
                                                    _expr172772_))
                                                  (gx#stx-source _hd172690_))
                                                 _body172669_))
                                          (_E172693172742_))
                                      (_E172693172742_)))))
                            (_E172693172742_)))))
                  (_E172693172742_))
              (_E172693172742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172693172742_)))))
                                  (_E172692172774_)))))
                        (if (##pair? _rest172670172678_)
                            (let ((_hd172675172781_ (##car _rest172670172678_))
                                  (_tl172676172783_
                                   (##cdr _rest172670172678_)))
                              (let* ((_hd172786_ _hd172675172781_)
                                     (_rest172788_ _tl172676172783_))
                                (_K172674172778_ _rest172788_ _hd172786_)))
                            (_else172672172686_)))))))
          (_expand-body172662_
           (gx#core-expand-block__%
            (cons '%#begin-module _body172659_)
            _expand-special172661_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx172502_
               _expanded?172503_
               _method172504_
               _current-phi172505_
               _expand1172506_)
        (letrec ((_K172508_
                  (lambda (_rest172626_ _r172627_)
                    (let* ((_e172628172635_ _rest172626_)
                           (_E172630172639_ (lambda () _r172627_))
                           (_E172629172655_
                            (lambda ()
                              (if (gx#stx-pair? _e172628172635_)
                                  (let ((_e172631172643_
                                         (gx#syntax-e _e172628172635_)))
                                    (let ((_hd172632172646_
                                           (##car _e172631172643_))
                                          (_tl172633172648_
                                           (##cdr _e172631172643_)))
                                      (let* ((_hd172651_ _hd172632172646_)
                                             (_rest172653_ _tl172633172648_))
                                        (if '#t
                                            (_step172509_
                                             _hd172651_
                                             _rest172653_
                                             _r172627_)
                                            (_E172630172639_)))))
                                  (_E172630172639_)))))
                      (_E172629172655_))))
                 (_step172509_
                  (lambda (_hd172540_ _rest172541_ _r172542_)
                    (let* ((_e172543172561_ _hd172540_)
                           (_E172556172565_
                            (lambda ()
                              (if (_expanded?172503_ (gx#stx-e _hd172540_))
                                  (_K172508_
                                   _rest172541_
                                   (cons (gx#stx-e _hd172540_) _r172542_))
                                  (_expand1172506_
                                   _hd172540_
                                   _K172508_
                                   _rest172541_
                                   _r172542_))))
                           (_E172552172581_
                            (lambda ()
                              (if (gx#stx-pair? _e172543172561_)
                                  (let ((_e172557172569_
                                         (gx#syntax-e _e172543172561_)))
                                    (let ((_hd172558172572_
                                           (##car _e172557172569_))
                                          (_tl172559172574_
                                           (##cdr _e172557172569_)))
                                      (let* ((_macro172577_ _hd172558172572_)
                                             (_body172579_ _tl172559172574_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro172577_
                                             gx#syntax-binding?)
                                            (_K172508_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro172577_)
                                                    _hd172540_
                                                    _method172504_)
                                                   _rest172541_)
                                             _r172542_)
                                            (_E172556172565_)))))
                                  (_E172556172565_))))
                           (_E172545172595_
                            (lambda ()
                              (if (gx#stx-pair? _e172543172561_)
                                  (let ((_e172553172585_
                                         (gx#syntax-e _e172543172561_)))
                                    (let ((_hd172554172588_
                                           (##car _e172553172585_))
                                          (_tl172555172590_
                                           (##cdr _e172553172585_)))
                                      (if (eq? (gx#stx-e _hd172554172588_)
                                               'begin:)
                                          (let ((_body172593_
                                                 _tl172555172590_))
                                            (if '#t
                                                (_K172508_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest172541_
                                                  _body172593_)
                                                 _r172542_)
                                                (_E172552172581_)))
                                          (_E172552172581_))))
                                  (_E172552172581_))))
                           (_E172544172622_
                            (lambda ()
                              (if (gx#stx-pair? _e172543172561_)
                                  (let ((_e172546172599_
                                         (gx#syntax-e _e172543172561_)))
                                    (let ((_hd172547172602_
                                           (##car _e172546172599_))
                                          (_tl172548172604_
                                           (##cdr _e172546172599_)))
                                      (if (eq? (gx#stx-e _hd172547172602_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl172548172604_)
                                              (let ((_e172549172607_
                                                     (gx#syntax-e
                                                      _tl172548172604_)))
                                                (let ((_hd172550172610_
                                                       (##car _e172549172607_))
                                                      (_tl172551172612_
                                                       (##cdr _e172549172607_)))
                                                  (let* ((_dphi172615_
                                                          _hd172550172610_)
                                                         (_body172617_
                                                          _tl172551172612_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi172615_)
                                                        (let ((_rbody172620_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K172508_ _body172617_ '()))
                        _current-phi172505_
                        (fx+ (gx#stx-e _dphi172615_) (_current-phi172505_)))))
                  (_K172508_
                   _rest172541_
                   (foldr1 cons _r172542_ _rbody172620_)))
                (_E172545172595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172545172595_))
                                          (_E172545172595_))))
                                  (_E172545172595_)))))
                      (_E172544172622_)))))
          (let* ((_e172510172517_ _stx172502_)
                 (_E172512172521_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e172510172517_)))
                 (_E172511172536_
                  (lambda ()
                    (if (gx#stx-pair? _e172510172517_)
                        (let ((_e172513172525_ (gx#syntax-e _e172510172517_)))
                          (let ((_hd172514172528_ (##car _e172513172525_))
                                (_tl172515172530_ (##cdr _e172513172525_)))
                            (let ((_body172533_ _tl172515172530_))
                              (if '#t
                                  (if (_current-phi172505_)
                                      (_K172508_ _body172533_ '())
                                      (call-with-parameters
                                       (lambda () (_K172508_ _body172533_ '()))
                                       _current-phi172505_
                                       (gx#current-expander-phi)))
                                  (_E172512172521_)))))
                        (_E172512172521_)))))
            (_E172511172536_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx172169_ _internal-expand?172170_)
        (letrec ((_expand1172172_
                  (lambda (_hd172482_ _K172483_ _rest172484_ _r172485_)
                    (if (gx#core-bound-module? _hd172482_)
                        (_import1172173_
                         (gx#syntax-local-e__0 _hd172482_)
                         _K172483_
                         _rest172484_
                         _r172485_)
                        (if (gx#core-library-module-path? _hd172482_)
                            (_import1172173_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd172482_))
                             _K172483_
                             _rest172484_
                             _r172485_)
                            (if (gx#core-library-relative-module-path?
                                 _hd172482_)
                                (_import1172173_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd172482_))
                                 _K172483_
                                 _rest172484_
                                 _r172485_)
                                (let ((_e172487_ (gx#stx-e _hd172482_)))
                                  (if (pair? _e172487_)
                                      (let ((_$e172489_
                                             (gx#stx-e (car _e172487_))))
                                        (if (eq? 'spec: _$e172489_)
                                            (_import-spec172176_
                                             _hd172482_
                                             _K172483_
                                             _rest172484_
                                             _r172485_)
                                            (if (eq? 'in: _$e172489_)
                                                (_import-submodule172174_
                                                 _hd172482_
                                                 _K172483_
                                                 _rest172484_
                                                 _r172485_)
                                                (if (eq? 'runtime: _$e172489_)
                                                    (_import-runtime172175_
                                                     _hd172482_
                                                     _K172483_
                                                     _rest172484_
                                                     _r172485_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx172169_
                                                     _hd172482_)))))
                                      (if (string? _e172487_)
                                          (_import1172173_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd172482_
                                             (gx#stx-source _stx172169_)))
                                           _K172483_
                                           _rest172484_
                                           _r172485_)
                                          (if (##structure-instance-of?
                                               _e172487_
                                               'gx#module-context::t)
                                              (_K172483_
                                               _rest172484_
                                               (cons _e172487_ _r172485_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx172169_
                                               _hd172482_))))))))))
                 (_import1172173_
                  (lambda (_ctx172471_ _K172472_ _rest172473_ _r172474_)
                    (let ((_dphi172476_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K172472_
                       _rest172473_
                       (cons (##structure
                              gx#import-set::t
                              _ctx172471_
                              _dphi172476_
                              (map (lambda (_g172477172479_)
                                     (gx#core-module-export->import__%
                                      _g172477172479_
                                      '#f
                                      _dphi172476_))
                                   (##unchecked-structure-ref
                                    _ctx172471_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r172474_)))))
                 (_import-submodule172174_
                  (lambda (_hd172438_ _K172439_ _rest172440_ _r172441_)
                    (let* ((_e172442172449_ _hd172438_)
                           (_E172444172453_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e172442172449_)))
                           (_E172443172467_
                            (lambda ()
                              (if (gx#stx-pair? _e172442172449_)
                                  (let ((_e172445172457_
                                         (gx#syntax-e _e172442172449_)))
                                    (let ((_hd172446172460_
                                           (##car _e172445172457_))
                                          (_tl172447172462_
                                           (##cdr _e172445172457_)))
                                      (let ((_spath172465_ _tl172447172462_))
                                        (if '#t
                                            (_import1172173_
                                             (_import-spec-source172177_
                                              _spath172465_)
                                             _K172439_
                                             _rest172440_
                                             _r172441_)
                                            (_E172444172453_)))))
                                  (_E172444172453_)))))
                      (_E172443172467_))))
                 (_import-runtime172175_
                  (lambda (_hd172405_ _K172406_ _rest172407_ _r172408_)
                    (let* ((_e172409172416_ _hd172405_)
                           (_E172411172420_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e172409172416_)))
                           (_E172410172434_
                            (lambda ()
                              (if (gx#stx-pair? _e172409172416_)
                                  (let ((_e172412172424_
                                         (gx#syntax-e _e172409172416_)))
                                    (let ((_hd172413172427_
                                           (##car _e172412172424_))
                                          (_tl172414172429_
                                           (##cdr _e172412172424_)))
                                      (let ((_spath172432_ _tl172414172429_))
                                        (if '#t
                                            (_K172406_
                                             _rest172407_
                                             (cons (_import-spec-source172177_
                                                    _spath172432_)
                                                   _r172408_))
                                            (_E172411172420_)))))
                                  (_E172411172420_)))))
                      (_E172410172434_))))
                 (_import-spec172176_
                  (lambda (_hd172244_ _K172245_ _rest172246_ _r172247_)
                    (let* ((_e172248172265_ _hd172244_)
                           (_E172257172269_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e172248172265_)))
                           (_E172250172379_
                            (lambda ()
                              (if (gx#stx-pair? _e172248172265_)
                                  (let ((_e172258172273_
                                         (gx#syntax-e _e172248172265_)))
                                    (let ((_hd172259172276_
                                           (##car _e172258172273_))
                                          (_tl172260172278_
                                           (##cdr _e172258172273_)))
                                      (if (gx#stx-pair? _tl172260172278_)
                                          (let ((_e172261172281_
                                                 (gx#syntax-e
                                                  _tl172260172278_)))
                                            (let ((_hd172262172284_
                                                   (##car _e172261172281_))
                                                  (_tl172263172286_
                                                   (##cdr _e172261172281_)))
                                              (let* ((_path172289_
                                                      _hd172262172284_)
                                                     (_specs172291_
                                                      _tl172263172286_))
                                                (if '#t
                                                    (let ((_src-ctx172293_
                                                           (_import-spec-source172177_
                                                            _path172289_))
                                                          (_exports172294_
                                                           (make-hash-table))
                                                          (_specs172295_
                                                           (gx#syntax->list
                                                            _specs172291_)))
                                                      (for-each
                                                       (lambda (_out172297_)
                                                         (hash-put!
                                                          _exports172294_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out172297_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out172297_
                         '4
                         gx#module-export::t
                         '#f))
                  _out172297_))
               (##unchecked-structure-ref
                _src-ctx172293_
                '9
                gx#module-context::t
                '#f))
              (_K172245_
               _rest172246_
               (foldl1 (lambda (_spec172299_ _r172300_)
                         (let* ((_e172301172317_ _spec172299_)
                                (_E172303172321_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e172301172317_)))
                                (_E172302172375_
                                 (lambda ()
                                   (if (gx#stx-pair? _e172301172317_)
                                       (let ((_e172304172325_
                                              (gx#syntax-e _e172301172317_)))
                                         (let ((_hd172305172328_
                                                (##car _e172304172325_))
                                               (_tl172306172330_
                                                (##cdr _e172304172325_)))
                                           (let ((_phi172333_
                                                  _hd172305172328_))
                                             (if (gx#stx-pair?
                                                  _tl172306172330_)
                                                 (let ((_e172307172335_
                                                        (gx#syntax-e
                                                         _tl172306172330_)))
                                                   (let ((_hd172308172338_
                                                          (##car _e172307172335_))
                                                         (_tl172309172340_
                                                          (##cdr _e172307172335_)))
                                                     (let ((_name172343_
                                                            _hd172308172338_))
                                                       (if (gx#stx-pair?
                                                            _tl172309172340_)
                                                           (let ((_e172310172345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl172309172340_)))
                     (let ((_hd172311172348_ (##car _e172310172345_))
                           (_tl172312172350_ (##cdr _e172310172345_)))
                       (let ((_src-phi172353_ _hd172311172348_))
                         (if (gx#stx-pair? _tl172312172350_)
                             (let ((_e172313172355_
                                    (gx#syntax-e _tl172312172350_)))
                               (let ((_hd172314172358_ (##car _e172313172355_))
                                     (_tl172315172360_
                                      (##cdr _e172313172355_)))
                                 (let ((_src-name172363_ _hd172314172358_))
                                   (if (gx#stx-null? _tl172315172360_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi172353_)
                                                (gx#identifier?
                                                 _src-name172363_)
                                                (gx#stx-fixnum? _phi172333_)
                                                (gx#identifier? _name172343_))
                                           (let ((_src-phi172365_
                                                  (gx#stx-e _src-phi172353_))
                                                 (_src-name172366_
                                                  (gx#core-identifier-key
                                                   _src-name172363_))
                                                 (_phi172367_
                                                  (gx#stx-e _phi172333_))
                                                 (_name172368_
                                                  (gx#core-identifier-key
                                                   _name172343_)))
                                             (let ((_$e172370_
                                                    (hash-get
                                                     _exports172294_
                                                     (cons _src-phi172365_
                                                           _src-name172366_))))
                                               (if _$e172370_
                                                   ((lambda (_out172373_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out172373_
                                                             _name172368_
                                                             (fx- _phi172367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi172365_))
                    _r172300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e172370_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx172169_
                                                    _hd172244_))))
                                           (_E172303172321_))
                                       (_E172303172321_)))))
                             (_E172303172321_)))))
                   (_E172303172321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E172303172321_)))))
                                       (_E172303172321_)))))
                           (_E172302172375_)))
                       _r172247_
                       _specs172295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E172257172269_)))))
                                          (_E172257172269_))))
                                  (_E172257172269_))))
                           (_E172249172401_
                            (lambda ()
                              (if (gx#stx-pair? _e172248172265_)
                                  (let ((_e172251172383_
                                         (gx#syntax-e _e172248172265_)))
                                    (let ((_hd172252172386_
                                           (##car _e172251172383_))
                                          (_tl172253172388_
                                           (##cdr _e172251172383_)))
                                      (if (gx#stx-pair? _tl172253172388_)
                                          (let ((_e172254172391_
                                                 (gx#syntax-e
                                                  _tl172253172388_)))
                                            (let ((_hd172255172394_
                                                   (##car _e172254172391_))
                                                  (_tl172256172396_
                                                   (##cdr _e172254172391_)))
                                              (let ((_path172399_
                                                     _hd172255172394_))
                                                (if (gx#stx-null?
                                                     _tl172256172396_)
                                                    (if '#t
                                                        (_K172245_
                                                         _rest172246_
                                                         (cons (_import-spec-source172177_
                                                                _path172399_)
                                                               _r172247_))
                                                        (_E172250172379_))
                                                    (_E172250172379_)))))
                                          (_E172250172379_))))
                                  (_E172250172379_)))))
                      (_E172249172401_))))
                 (_import-spec-source172177_
                  (lambda (_spath172242_)
                    (gx#core-import-nested-module _spath172242_ _stx172169_)))
                 (_import!172178_
                  (lambda (_rbody172191_)
                    (letrec* ((_current-ctx172193_
                               (gx#current-expander-context))
                              (_deps172194_ (make-hash-table-eq))
                              (_bind!172195_
                               (lambda (_hd172240_)
                                 (gx#core-bind-import!__1
                                  _hd172240_
                                  _current-ctx172193_))))
                      (let _lp172197_ ((_rest172199_ _rbody172191_)
                                       (_body172200_ '()))
                        (let* ((_rest172201172209_ _rest172199_)
                               (_else172203172219_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx172193_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx172193_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx172193_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body172200_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx172217_ _g179114_)
                                     (gx#eval-module _ctx172217_))
                                   _deps172194_)
                                  _body172200_))
                               (_K172205172228_
                                (lambda (_rest172222_ _hd172223_)
                                  (if (##structure-direct-instance-of?
                                       _hd172223_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!172195_ _hd172223_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd172223_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd172223_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps172194_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd172223_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd172223_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!172195_
                                             (##unchecked-structure-ref
                                              _hd172223_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd172223_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps172194_
                                                 (##unchecked-structure-ref
                                                  _hd172223_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e172225_
                                                 (##structure-instance-of?
                                                  _hd172223_
                                                  'gx#module-context::t)))
                                            (if _$e172225_
                                                _$e172225_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx172169_
                                                 _hd172223_)))))
                                  (_lp172197_
                                   _rest172222_
                                   (cons _hd172223_ _body172200_)))))
                          (if (##pair? _rest172201172209_)
                              (let ((_hd172206172231_
                                     (##car _rest172201172209_))
                                    (_tl172207172233_
                                     (##cdr _rest172201172209_)))
                                (let* ((_hd172236_ _hd172206172231_)
                                       (_rest172238_ _tl172207172233_))
                                  (_K172205172228_ _rest172238_ _hd172236_)))
                              (_else172203172219_)))))))
                 (_expanded-import?172179_
                  (lambda (_e172183_)
                    (let ((_$e172185_
                           (##structure-direct-instance-of?
                            _e172183_
                            'gx#import-set::t)))
                      (if _$e172185_
                          _$e172185_
                          (let ((_$e172188_
                                 (##structure-direct-instance-of?
                                  _e172183_
                                  'gx#module-import::t)))
                            (if _$e172188_
                                _$e172188_
                                (##structure-instance-of?
                                 _e172183_
                                 'gx#module-context::t))))))))
          (let ((_rbody172181_
                 (gx#core-expand-import/export
                  _stx172169_
                  _expanded-import?172179_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1172172_)))
            (if _internal-expand?172170_
                (reverse _rbody172181_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!172178_ _rbody172181_))
                 (gx#stx-source _stx172169_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx172495_)
        (let ((_internal-expand?172497_ '#f))
          (gx#core-expand-import%__% _stx172495_ _internal-expand?172497_))))
    (define gx#core-expand-import%
      (lambda _g179116_
        (let ((_g179115_ (##length _g179116_)))
          (cond ((##fx= _g179115_ 1)
                 (apply (lambda (_stx172495_)
                          (gx#core-expand-import%__0 _stx172495_))
                        _g179116_))
                ((##fx= _g179115_ 2)
                 (apply (lambda (_stx172499_ _internal-expand?172500_)
                          (gx#core-expand-import%__%
                           _stx172499_
                           _internal-expand?172500_))
                        _g179116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g179116_))))))
    (define gx#core-import-nested-module
      (lambda (_spath172096_ _where172097_)
        (let* ((_e172098172105_ _spath172096_)
               (_E172100172109_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e172098172105_)))
               (_E172099172164_
                (lambda ()
                  (if (gx#stx-pair? _e172098172105_)
                      (let ((_e172101172113_ (gx#syntax-e _e172098172105_)))
                        (let ((_hd172102172116_ (##car _e172101172113_))
                              (_tl172103172118_ (##cdr _e172101172113_)))
                          (let* ((_origin172121_ _hd172102172116_)
                                 (_sub172123_ _tl172103172118_))
                            (if '#t
                                (let ((_origin-ctx172125_
                                       (if (gx#stx-false? _origin172121_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin172121_))))
                                  (let _lp172127_ ((_rest172129_ _sub172123_)
                                                   (_ctx172130_
                                                    _origin-ctx172125_))
                                    (let* ((_e172131172138_ _rest172129_)
                                           (_E172133172142_
                                            (lambda () _ctx172130_))
                                           (_E172132172160_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e172131172138_)
                                                  (let ((_e172134172146_
                                                         (gx#syntax-e
                                                          _e172131172138_)))
                                                    (let ((_hd172135172149_
                                                           (##car _e172134172146_))
                                                          (_tl172136172151_
                                                           (##cdr _e172134172146_)))
                                                      (let* ((_id172154_
                                                              _hd172135172149_)
                                                             (_rest172156_
                                                              _tl172136172151_))
                                                        (if '#t
                                                            (let ((_bind172158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id172154_
                            '0
                            _ctx172130_)))
                      (if (and (##structure-direct-instance-of?
                                _bind172158_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind172158_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where172097_
                           _spath172096_
                           _id172154_))
                      (_lp172127_
                       _rest172156_
                       (##unchecked-structure-ref
                        _bind172158_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E172133172142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E172133172142_)))))
                                      (_E172132172160_))))
                                (_E172100172109_)))))
                      (_E172100172109_)))))
          (_E172099172164_))))
    (define gx#core-expand-import-source
      (lambda (_hd172094_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd172094_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx171602_ _internal-expand?171603_)
        (letrec* ((_make-export__179045179046_
                   (lambda (_bind172042_ _phi172043_ _ctx172044_ _name172045_)
                     (let* ((_key172047_
                             (##unchecked-structure-ref
                              _bind172042_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key172049_
                             (if _name172045_
                                 (gx#core-identifier-key _name172045_)
                                 _key172047_)))
                       (##structure
                        gx#module-export::t
                        _ctx172044_
                        _key172047_
                        _phi172043_
                        _export-key172049_
                        (let ((_$e172052_
                               (##structure-instance-of?
                                _bind172042_
                                'gx#extern-binding::t)))
                          (if _$e172052_
                              _$e172052_
                              (##structure-direct-instance-of?
                               _bind172042_
                               'gx#import-binding::t)))))))
                  (_make-export__0__179047179050_
                   (lambda (_bind172058_)
                     (let* ((_phi172060_ (gx#current-export-expander-phi))
                            (_ctx172062_ (gx#current-expander-context))
                            (_name172064_ '#f))
                       (_make-export__179045179046_
                        _bind172058_
                        _phi172060_
                        _ctx172062_
                        _name172064_))))
                  (_make-export__1__179048179051_
                   (lambda (_bind172066_ _phi172067_)
                     (let* ((_ctx172069_ (gx#current-expander-context))
                            (_name172071_ '#f))
                       (_make-export__179045179046_
                        _bind172066_
                        _phi172067_
                        _ctx172069_
                        _name172071_))))
                  (_make-export__2__179049179052_
                   (lambda (_bind172073_ _phi172074_ _ctx172075_)
                     (let ((_name172077_ '#f))
                       (_make-export__179045179046_
                        _bind172073_
                        _phi172074_
                        _ctx172075_
                        _name172077_))))
                  (_make-export171605_
                   (lambda _g179118_
                     (let ((_g179117_ (##length _g179118_)))
                       (cond ((##fx= _g179117_ 1)
                              (apply (lambda (_bind172058_)
                                       (_make-export__0__179047179050_
                                        _bind172058_))
                                     _g179118_))
                             ((##fx= _g179117_ 2)
                              (apply (lambda (_bind172066_ _phi172067_)
                                       (_make-export__1__179048179051_
                                        _bind172066_
                                        _phi172067_))
                                     _g179118_))
                             ((##fx= _g179117_ 3)
                              (apply (lambda (_bind172073_
                                              _phi172074_
                                              _ctx172075_)
                                       (_make-export__2__179049179052_
                                        _bind172073_
                                        _phi172074_
                                        _ctx172075_))
                                     _g179118_))
                             ((##fx= _g179117_ 4)
                              (apply (lambda (_bind172079_
                                              _phi172080_
                                              _ctx172081_
                                              _name172082_)
                                       (_make-export__179045179046_
                                        _bind172079_
                                        _phi172080_
                                        _ctx172081_
                                        _name172082_))
                                     _g179118_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g179118_))))))
                  (_expand1171606_
                   (lambda (_hd171755_ _K171756_ _rest171757_ _r171758_)
                     (let* ((_e171759171791_ _hd171755_)
                            (_E171786171795_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx171602_
                                _hd171755_)))
                            (_E171776171874_
                             (lambda ()
                               (if (gx#stx-pair? _e171759171791_)
                                   (let ((_e171787171799_
                                          (gx#syntax-e _e171759171791_)))
                                     (let ((_hd171788171802_
                                            (##car _e171787171799_))
                                           (_tl171789171804_
                                            (##cdr _e171787171799_)))
                                       (if (eq? (gx#stx-e _hd171788171802_)
                                                'import:)
                                           (let ((_in171807_ _tl171789171804_))
                                             (if (gx#stx-list? _in171807_)
                                                 (let _lp171809_ ((_in-rest171811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in171807_)
                          (_r171812_ _r171758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e171813171820_
                                                           _in-rest171811_)
                                                          (_E171815171824_
                                                           (lambda ()
                                                             (_K171756_
                                                              _rest171757_
                                                              _r171812_)))
                                                          (_E171814171870_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e171813171820_)
                         (let ((_e171816171828_ (gx#syntax-e _e171813171820_)))
                           (let ((_hd171817171831_ (##car _e171816171828_))
                                 (_tl171818171833_ (##cdr _e171816171828_)))
                             (let* ((_hd171836_ _hd171817171831_)
                                    (_in-rest171838_ _tl171818171833_))
                               (if '#t
                                   (let ((_src171868_
                                          (if (gx#core-bound-module?
                                               _hd171836_)
                                              (gx#syntax-local-e__0 _hd171836_)
                                              (if (gx#core-library-module-path?
                                                   _hd171836_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd171836_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd171836_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd171836_))
                                                      (if (gx#stx-string?
                                                           _hd171836_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd171836_
                                                            (gx#stx-source
                                                             _stx171602_)))
                                                          (let* ((_e171839171846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd171836_)
                         (_E171841171850_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx171602_
                             _hd171836_)))
                         (_E171840171864_
                          (lambda ()
                            (if (gx#stx-pair? _e171839171846_)
                                (let ((_e171842171854_
                                       (gx#syntax-e _e171839171846_)))
                                  (let ((_hd171843171857_
                                         (##car _e171842171854_))
                                        (_tl171844171859_
                                         (##cdr _e171842171854_)))
                                    (if (eq? (gx#stx-e _hd171843171857_) 'in:)
                                        (let ((_spath171862_ _tl171844171859_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath171862_
                                               _stx171602_)
                                              (_E171841171850_)))
                                        (_E171841171850_))))
                                (_E171841171850_)))))
                    (_E171840171864_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp171809_
                                      _in-rest171838_
                                      (_export-imports171607_
                                       _src171868_
                                       _r171812_)))
                                   (_E171815171824_)))))
                         (_E171815171824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E171814171870_)))
                                                 (_E171786171795_)))
                                           (_E171786171795_))))
                                   (_E171786171795_))))
                            (_E171763171913_
                             (lambda ()
                               (if (gx#stx-pair? _e171759171791_)
                                   (let ((_e171777171878_
                                          (gx#syntax-e _e171759171791_)))
                                     (let ((_hd171778171881_
                                            (##car _e171777171878_))
                                           (_tl171779171883_
                                            (##cdr _e171777171878_)))
                                       (if (eq? (gx#stx-e _hd171778171881_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl171779171883_)
                                               (let ((_e171780171886_
                                                      (gx#syntax-e
                                                       _tl171779171883_)))
                                                 (let ((_hd171781171889_
                                                        (##car _e171780171886_))
                                                       (_tl171782171891_
                                                        (##cdr _e171780171886_)))
                                                   (let ((_id171894_
                                                          _hd171781171889_))
                                                     (if (gx#stx-pair?
                                                          _tl171782171891_)
                                                         (let ((_e171783171896_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl171782171891_)))
                   (let ((_hd171784171899_ (##car _e171783171896_))
                         (_tl171785171901_ (##cdr _e171783171896_)))
                     (let ((_name171904_ _hd171784171899_))
                       (if (gx#stx-null? _tl171785171901_)
                           (if '#t
                               (let* ((_phi171906_
                                       (gx#current-export-expander-phi))
                                      (_$e171908_
                                       (gx#core-resolve-identifier__1
                                        _id171894_
                                        _phi171906_)))
                                 (if _$e171908_
                                     ((lambda (_bind171911_)
                                        (_K171756_
                                         _rest171757_
                                         (cons (_make-export__179045179046_
                                                _bind171911_
                                                _phi171906_
                                                (gx#current-expander-context)
                                                _name171904_)
                                               _r171758_)))
                                      _$e171908_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx171602_
                                      _hd171755_
                                      _id171894_)))
                               (_E171776171874_))
                           (_E171776171874_)))))
                 (_E171776171874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E171776171874_))
                                           (_E171776171874_))))
                                   (_E171776171874_))))
                            (_E171762171962_
                             (lambda ()
                               (if (gx#stx-pair? _e171759171791_)
                                   (let ((_e171764171917_
                                          (gx#syntax-e _e171759171791_)))
                                     (let ((_hd171765171920_
                                            (##car _e171764171917_))
                                           (_tl171766171922_
                                            (##cdr _e171764171917_)))
                                       (if (eq? (gx#stx-e _hd171765171920_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl171766171922_)
                                               (let ((_e171767171925_
                                                      (gx#syntax-e
                                                       _tl171766171922_)))
                                                 (let ((_hd171768171928_
                                                        (##car _e171767171925_))
                                                       (_tl171769171930_
                                                        (##cdr _e171767171925_)))
                                                   (let ((_phi171933_
                                                          _hd171768171928_))
                                                     (if (gx#stx-pair?
                                                          _tl171769171930_)
                                                         (let ((_e171770171935_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl171769171930_)))
                   (let ((_hd171771171938_ (##car _e171770171935_))
                         (_tl171772171940_ (##cdr _e171770171935_)))
                     (let ((_id171943_ _hd171771171938_))
                       (if (gx#stx-pair? _tl171772171940_)
                           (let ((_e171773171945_
                                  (gx#syntax-e _tl171772171940_)))
                             (let ((_hd171774171948_ (##car _e171773171945_))
                                   (_tl171775171950_ (##cdr _e171773171945_)))
                               (let ((_name171953_ _hd171774171948_))
                                 (if (gx#stx-null? _tl171775171950_)
                                     (if (and (gx#stx-fixnum? _phi171933_)
                                              (gx#identifier? _id171943_)
                                              (gx#identifier? _name171953_))
                                         (let* ((_phi171955_
                                                 (gx#stx-e _phi171933_))
                                                (_$e171957_
                                                 (gx#core-resolve-identifier__1
                                                  _id171943_
                                                  _phi171955_)))
                                           (if _$e171957_
                                               ((lambda (_bind171960_)
                                                  (_K171756_
                                                   _rest171757_
                                                   (cons (_make-export__179045179046_
                                                          _bind171960_
                                                          _phi171955_
                                                          (gx#current-expander-context)
                                                          _name171953_)
                                                         _r171758_)))
                                                _$e171957_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx171602_
                                                _hd171755_
                                                _id171943_)))
                                         (_E171763171913_))
                                     (_E171763171913_)))))
                           (_E171763171913_)))))
                 (_E171763171913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E171763171913_))
                                           (_E171763171913_))))
                                   (_E171763171913_))))
                            (_E171761171973_
                             (lambda ()
                               (let ((_id171966_ _e171759171791_))
                                 (if (gx#identifier? _id171966_)
                                     (let ((_$e171968_
                                            (gx#core-resolve-identifier__1
                                             _id171966_
                                             (gx#current-export-expander-phi))))
                                       (if _$e171968_
                                           ((lambda (_bind171971_)
                                              (_K171756_
                                               _rest171757_
                                               (cons (_make-export__0__179047179050_
                                                      _bind171971_)
                                                     _r171758_)))
                                            _$e171968_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx171602_
                                            _hd171755_)))
                                     (_E171762171962_)))))
                            (_E171760172037_
                             (lambda ()
                               (if (eq? (gx#stx-e _e171759171791_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx171977_
                                               (gx#current-expander-context))
                                              (_current-phi171979_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx171981_
                                               (gx#core-context-shift
                                                _current-ctx171977_
                                                _current-phi171979_))
                                              (_phi-bind171983_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx171981_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp171986_ ((_bind-rest171988_
                                                           _phi-bind171983_)
                                                          (_set171989_ '()))
                                           (let* ((_bind-rest171990172000_
                                                   _bind-rest171988_)
                                                  (_else171992172008_
                                                   (lambda ()
                                                     (_K171756_
                                                      _rest171757_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi171979_
                                                             _set171989_)
                                                            _r171758_))))
                                                  (_K171994172018_
                                                   (lambda (_bind-rest172011_
                                                            _bind172012_
                                                            _key172013_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind172012_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind172012_))
                                                         (_lp171986_
                                                          _bind-rest172011_
                                                          _set171989_)
                                                         (_lp171986_
                                                          _bind-rest172011_
                                                          (cons (_make-export__2__179049179052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind172012_
                         _current-phi171979_
                         _current-ctx171977_)
                        _set171989_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest171990172000_)
                                                 (let ((_hd171995172021_
                                                        (##car _bind-rest171990172000_))
                                                       (_tl171996172023_
                                                        (##cdr _bind-rest171990172000_)))
                                                   (if (##pair? _hd171995172021_)
                                                       (let ((_hd171997172026_
                                                              (##car _hd171995172021_))
                                                             (_tl171998172028_
                                                              (##cdr _hd171995172021_)))
                                                         (let* ((_key172031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd171997172026_)
                        (_bind172033_ _tl171998172028_)
                        (_bind-rest172035_ _tl171996172023_))
                   (_K171994172018_
                    _bind-rest172035_
                    _bind172033_
                    _key172031_)))
               (_else171992172008_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else171992172008_)))))
                                       (_E171761171973_))
                                   (_E171761171973_)))))
                       (_E171760172037_))))
                  (_export-imports171607_
                   (lambda (_src171631_ _r171632_)
                     (letrec* ((_current-ctx171634_
                                (gx#current-expander-context))
                               (_current-phi171635_
                                (gx#current-export-expander-phi))
                               (_import->export171636_
                                (lambda (_in171717_)
                                  (let* ((_in171718171726_ _in171717_)
                                         (_E171720171730_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in171718171726_)))
                                         (_K171721171737_
                                          (lambda (_phi171733_
                                                   _key171734_
                                                   _out171735_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx171634_
                                             _key171734_
                                             _phi171733_
                                             _key171734_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in171718171726_
                                         'gx#module-import::t)
                                        (let* ((_e171722171740_
                                                (##unchecked-structure-ref
                                                 _in171718171726_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out171743_ _e171722171740_)
                                               (_e171723171745_
                                                (##unchecked-structure-ref
                                                 _in171718171726_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key171748_ _e171723171745_)
                                               (_e171724171750_
                                                (##unchecked-structure-ref
                                                 _in171718171726_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi171753_ _e171724171750_))
                                          (_K171721171737_
                                           _phi171753_
                                           _key171748_
                                           _out171743_))
                                        (_E171720171730_)))))
                               (_fold-e171637_
                                (lambda (_in171639_ _r171640_)
                                  (let* ((_in171641171655_ _in171639_)
                                         (_else171644171663_
                                          (lambda () _r171640_)))
                                    (let ((_K171650171699_
                                           (lambda (_phi171695_
                                                    _key171696_
                                                    _out171697_)
                                             (if (and (fx= _phi171695_
                                                           _current-phi171635_)
                                                      (eq? _src171631_
                                                           (##unchecked-structure-ref
                                                            _out171697_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export171636_
                                                        _in171639_)
                                                       _r171640_)
                                                 _r171640_)))
                                          (_K171646171674_
                                           (lambda (_imports171667_
                                                    _phi171668_
                                                    _ctx171669_)
                                             (if (and (fx= _phi171668_
                                                           _current-phi171635_)
                                                      (eq? _src171631_
                                                           _ctx171669_))
                                                 (foldl1 (lambda (_in171671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r171672_)
                   (cons (_import->export171636_ _in171671_) _r171672_))
                 _r171640_
                 _imports171667_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r171640_))))
                                      (let ((_try-match171643171692_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in171641171655_
                                                    'gx#import-set::t)
                                                   (let* ((_e171647171677_
                                                           (##unchecked-structure-ref
                                                            _in171641171655_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e171648171682_
                                                           (##unchecked-structure-ref
                                                            _in171641171655_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e171649171687_
                                                           (##unchecked-structure-ref
                                                            _in171641171655_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx171680_
                                                            _e171647171677_)
                                                           (_phi171685_
                                                            _e171648171682_)
                                                           (_imports171690_
                                                            _e171649171687_))
                                                       (_K171646171674_
                                                        _imports171690_
                                                        _phi171685_
                                                        _ctx171680_)))
                                                   (_else171644171663_)))))
                                        (if (##structure-direct-instance-of?
                                             _in171641171655_
                                             'gx#module-import::t)
                                            (let* ((_e171651171702_
                                                    (##unchecked-structure-ref
                                                     _in171641171655_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e171652171707_
                                                    (##unchecked-structure-ref
                                                     _in171641171655_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e171653171712_
                                                    (##unchecked-structure-ref
                                                     _in171641171655_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out171705_
                                                     _e171651171702_)
                                                    (_key171710_
                                                     _e171652171707_)
                                                    (_phi171715_
                                                     _e171653171712_))
                                                (_K171650171699_
                                                 _phi171715_
                                                 _key171710_
                                                 _out171705_)))
                                            (_try-match171643171692_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src171631_
                              _current-phi171635_
                              (foldl1 _fold-e171637_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx171634_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r171632_))))
                  (_export!171608_
                   (lambda (_rbody171621_)
                     (letrec* ((_current-ctx171623_
                                (gx#current-expander-context))
                               (_fold-e171624_
                                (lambda (_out171628_ _r171629_)
                                  (if (##structure-direct-instance-of?
                                       _out171628_
                                       'gx#module-export::t)
                                      (cons _out171628_ _r171629_)
                                      (if (##structure-direct-instance-of?
                                           _out171628_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r171629_
                                                  (##unchecked-structure-ref
                                                   _out171628_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r171629_)))))
                       (let ((_body171626_ (reverse _rbody171621_)))
                         (##unchecked-structure-set!
                          _current-ctx171623_
                          (foldl1 _fold-e171624_
                                  (##unchecked-structure-ref
                                   _current-ctx171623_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body171626_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body171626_))))
                  (_expanded-export?171609_
                   (lambda (_e171616_)
                     (let ((_$e171618_
                            (##structure-direct-instance-of?
                             _e171616_
                             'gx#module-export::t)))
                       (if _$e171618_
                           _$e171618_
                           (##structure-direct-instance-of?
                            _e171616_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?171603_)
              (let ((_rbody171614_
                     (gx#core-expand-import/export
                      _stx171602_
                      _expanded-export?171609_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1171606_)))
                (if _internal-expand?171603_
                    (reverse _rbody171614_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!171608_ _rbody171614_))
                     (gx#stx-source _stx171602_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx171602_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx171602_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx172087_)
        (let ((_internal-expand?172089_ '#f))
          (gx#core-expand-export%__% _stx172087_ _internal-expand?172089_))))
    (define gx#core-expand-export%
      (lambda _g179120_
        (let ((_g179119_ (##length _g179120_)))
          (cond ((##fx= _g179119_ 1)
                 (apply (lambda (_stx172087_)
                          (gx#core-expand-export%__0 _stx172087_))
                        _g179120_))
                ((##fx= _g179119_ 2)
                 (apply (lambda (_stx172091_ _internal-expand?172092_)
                          (gx#core-expand-export%__%
                           _stx172091_
                           _internal-expand?172092_))
                        _g179120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g179120_))))))
    (define gx#core-expand-export-source
      (lambda (_hd171599_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd171599_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx171569_)
        (let* ((_e171570171577_ _stx171569_)
               (_E171572171581_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171570171577_)))
               (_E171571171595_
                (lambda ()
                  (if (gx#stx-pair? _e171570171577_)
                      (let ((_e171573171585_ (gx#syntax-e _e171570171577_)))
                        (let ((_hd171574171588_ (##car _e171573171585_))
                              (_tl171575171590_ (##cdr _e171573171585_)))
                          (let ((_body171593_ _tl171575171590_))
                            (if (gx#identifier-list? _body171593_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body171593_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body171593_))
                                   (gx#stx-source _stx171569_)))
                                (_E171572171581_)))))
                      (_E171572171581_)))))
          (_E171571171595_))))
    (define gx#core-bind-feature!__%
      (lambda (_id171535_ _private?171536_ _phi171537_ _ctx171538_)
        (gx#core-bind-syntax!__%
         _id171535_
         ((if _private?171536_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id171535_))
         _private?171536_
         _phi171537_
         _ctx171538_)))
    (define gx#core-bind-feature!__0
      (lambda (_id171543_)
        (let* ((_private?171545_ '#f)
               (_phi171547_ (gx#current-expander-phi))
               (_ctx171549_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id171543_
           _private?171545_
           _phi171547_
           _ctx171549_))))
    (define gx#core-bind-feature!__1
      (lambda (_id171551_ _private?171552_)
        (let* ((_phi171554_ (gx#current-expander-phi))
               (_ctx171556_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id171551_
           _private?171552_
           _phi171554_
           _ctx171556_))))
    (define gx#core-bind-feature!__2
      (lambda (_id171558_ _private?171559_ _phi171560_)
        (let ((_ctx171562_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id171558_
           _private?171559_
           _phi171560_
           _ctx171562_))))
    (define gx#core-bind-feature!
      (lambda _g179122_
        (let ((_g179121_ (##length _g179122_)))
          (cond ((##fx= _g179121_ 1)
                 (apply (lambda (_id171543_)
                          (gx#core-bind-feature!__0 _id171543_))
                        _g179122_))
                ((##fx= _g179121_ 2)
                 (apply (lambda (_id171551_ _private?171552_)
                          (gx#core-bind-feature!__1
                           _id171551_
                           _private?171552_))
                        _g179122_))
                ((##fx= _g179121_ 3)
                 (apply (lambda (_id171558_ _private?171559_ _phi171560_)
                          (gx#core-bind-feature!__2
                           _id171558_
                           _private?171559_
                           _phi171560_))
                        _g179122_))
                ((##fx= _g179121_ 4)
                 (apply (lambda (_id171564_
                                 _private?171565_
                                 _phi171566_
                                 _ctx171567_)
                          (gx#core-bind-feature!__%
                           _id171564_
                           _private?171565_
                           _phi171566_
                           _ctx171567_))
                        _g179122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g179122_))))))))
