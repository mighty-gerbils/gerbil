(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1711709197)
  (begin
    (declare (not safe))
    (define gx#__module-registry (make-hash-table))
    (define gx#__module-pkg-cache (make-hash-table))
    (define gx#module-import::t
      (__make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source name phi weak?))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args91325_
        (apply make-instance gx#module-import::t _$args91325_)))
    (define gx#module-import-source
      (__make-class-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (__make-class-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (__make-class-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (__make-class-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (__make-class-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (__make-class-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (__make-class-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (__make-class-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (__make-class-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (__make-class-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (__make-class-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (__make-class-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (__make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args91322_
        (apply make-instance gx#module-export::t _$args91322_)))
    (define gx#module-export-context
      (__make-class-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (__make-class-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (__make-class-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (__make-class-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (__make-class-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (__make-class-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (__make-class-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (__make-class-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (__make-class-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (__make-class-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (__make-class-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (__make-class-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (__make-class-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (__make-class-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (__make-class-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (__make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args91319_
        (apply make-instance gx#import-set::t _$args91319_)))
    (define gx#import-set-source
      (__make-class-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi
      (__make-class-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (__make-class-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (__make-class-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (__make-class-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (__make-class-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (__make-class-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (__make-class-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (__make-class-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (__make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args91316_
        (apply make-instance gx#export-set::t _$args91316_)))
    (define gx#export-set-source
      (__make-class-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi
      (__make-class-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (__make-class-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (__make-class-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (__make-class-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (__make-class-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (__make-class-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (__make-class-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (__make-class-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'exports))
    (define gx#import-expander::t
      (__make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (__make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _$args91313_
        (apply make-instance gx#import-expander::t _$args91313_)))
    (define gx#import-expander-context
      (__make-class-slot-accessor gx#import-expander::t 'context))
    (define gx#import-expander-phi
      (__make-class-slot-accessor gx#import-expander::t 'phi))
    (define gx#import-expander-e
      (__make-class-slot-accessor gx#import-expander::t 'e))
    (define gx#import-expander-context-set!
      (__make-class-slot-mutator gx#import-expander::t 'context))
    (define gx#import-expander-phi-set!
      (__make-class-slot-mutator gx#import-expander::t 'phi))
    (define gx#import-expander-e-set!
      (__make-class-slot-mutator gx#import-expander::t 'e))
    (define gx#&import-expander-context
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'context))
    (define gx#&import-expander-phi
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'phi))
    (define gx#&import-expander-e
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'e))
    (define gx#&import-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'context))
    (define gx#&import-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'phi))
    (define gx#&import-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'e))
    (define gx#export-expander::t
      (__make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (__make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _$args91310_
        (apply make-instance gx#export-expander::t _$args91310_)))
    (define gx#export-expander-context
      (__make-class-slot-accessor gx#export-expander::t 'context))
    (define gx#export-expander-phi
      (__make-class-slot-accessor gx#export-expander::t 'phi))
    (define gx#export-expander-e
      (__make-class-slot-accessor gx#export-expander::t 'e))
    (define gx#export-expander-context-set!
      (__make-class-slot-mutator gx#export-expander::t 'context))
    (define gx#export-expander-phi-set!
      (__make-class-slot-mutator gx#export-expander::t 'phi))
    (define gx#export-expander-e-set!
      (__make-class-slot-mutator gx#export-expander::t 'e))
    (define gx#&export-expander-context
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'context))
    (define gx#&export-expander-phi
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'phi))
    (define gx#&export-expander-e
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'e))
    (define gx#&export-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'context))
    (define gx#&export-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'phi))
    (define gx#&export-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'e))
    (define gx#import-export-expander::t
      (__make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (__make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _$args91307_
        (apply make-instance gx#import-export-expander::t _$args91307_)))
    (define gx#import-export-expander-context
      (__make-class-slot-accessor gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi
      (__make-class-slot-accessor gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e
      (__make-class-slot-accessor gx#import-export-expander::t 'e))
    (define gx#import-export-expander-context-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context
      (__make-class-slot-unchecked-accessor
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi
      (__make-class-slot-unchecked-accessor gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e
      (__make-class-slot-unchecked-accessor gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context-set!
      (__make-class-slot-unchecked-mutator
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#import-export-expander::t 'e))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path91304_ _fun91305_)
        (call-with-input-file
         (cons 'path: (cons _path91304_ gx#source-file-settings))
         _fun91305_)))
    (define gx#module-context:::init!
      (lambda (_self91298_ _id91299_ _super91300_ _ns91301_ _path91302_)
        (if (##fx< '11 (##structure-length _self91298_))
            (begin
              (##unchecked-structure-set! _self91298_ _id91299_ '1 '#f '#f)
              (##unchecked-structure-set!
               _self91298_
               (make-hash-table-eq)
               '2
               '#f
               '#f)
              (##unchecked-structure-set! _self91298_ _super91300_ '3 '#f '#f)
              (##unchecked-structure-set! _self91298_ '#f '4 '#f '#f)
              (##unchecked-structure-set! _self91298_ '#f '5 '#f '#f)
              (##unchecked-structure-set! _self91298_ _ns91301_ '6 '#f '#f)
              (##unchecked-structure-set! _self91298_ _path91302_ '7 '#f '#f)
              (##unchecked-structure-set! _self91298_ '() '8 '#f '#f)
              (##unchecked-structure-set! _self91298_ '() '9 '#f '#f)
              (##unchecked-structure-set! _self91298_ '#f '10 '#f '#f)
              (##unchecked-structure-set! _self91298_ '#f '11 '#f '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91298_
                   '11
                   (##vector-length _self91298_)))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self91142_ _ctx91143_ _root91144_)
        (let ((_super91152_
               (let ((_$e91146_ _root91144_))
                 (if _$e91146_
                     _$e91146_
                     (let ((_$e91149_ (gx#core-context-root__0)))
                       (if _$e91149_
                           _$e91149_
                           (let ((__obj91367
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor91368
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj91367
                                     ':init!)))
                               (if __constructor91368
                                   (__constructor91368 __obj91367)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj91367)))))))
          (if _ctx91143_
              (let ((_id91155_
                     (##structure-ref
                      _ctx91143_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path91156_
                     (##structure-ref _ctx91143_ '7 gx#module-context::t '#f))
                    (_in91157_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx91143_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e91158_
                     (__make-promise (lambda () (gx#eval-module _ctx91143_)))))
                (if (##fx< '8 (##structure-length _self91142_))
                    (begin
                      (##unchecked-structure-set!
                       _self91142_
                       _id91155_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _self91142_
                       (make-hash-table-eq 'size: (length _in91157_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _self91142_
                       _super91152_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set! _self91142_ '#f '4 '#f '#f)
                      (##unchecked-structure-set! _self91142_ '#f '5 '#f '#f)
                      (##unchecked-structure-set!
                       _self91142_
                       _path91156_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _self91142_
                       _in91157_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _self91142_
                       _e91158_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self91142_
                           '8
                           (##vector-length _self91142_)))
                (for-each
                 (lambda (_g9115991161_)
                   (gx#core-bind-weak-import!__% _g9115991161_ _self91142_))
                 _in91157_))
              (if (##fx< '8 (##structure-length _self91142_))
                  (begin
                    (##unchecked-structure-set! _self91142_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _self91142_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _self91142_
                     _super91152_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _self91142_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _self91142_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _self91142_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _self91142_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _self91142_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self91142_
                         '8
                         (##vector-length _self91142_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self91167_ _ctx91168_)
        (let ((_root91170_ '#f))
          (gx#prelude-context:::init!__% _self91167_ _ctx91168_ _root91170_))))
    (define gx#prelude-context:::init!
      (lambda _g91374_
        (let ((_g91373_ (##length _g91374_)))
          (cond ((##fx= _g91373_ 2)
                 (apply (lambda (_self91167_ _ctx91168_)
                          (gx#prelude-context:::init!__0
                           _self91167_
                           _ctx91168_))
                        _g91374_))
                ((##fx= _g91373_ 3)
                 (apply (lambda (_self91172_ _ctx91173_ _root91174_)
                          (gx#prelude-context:::init!__%
                           _self91172_
                           _ctx91173_
                           _root91174_))
                        _g91374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g91374_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self91016_ _e91017_)
        (if (##fx< '3 (##structure-length _self91016_))
            (begin
              (##unchecked-structure-set! _self91016_ _e91017_ '1 '#f '#f)
              (##unchecked-structure-set!
               _self91016_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _self91016_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91016_
                   '3
                   (##vector-length _self91016_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g9064290645_ _g9064390647_)
        (gx#core-apply-user-expander__%
         _g9064290645_
         _g9064390647_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9051390516_ _g9051490518_)
        (gx#core-apply-user-expander__%
         _g9051390516_
         _g9051490518_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx90384_)
        (let* ((_path90386_
                (##structure-ref _ctx90384_ '7 gx#module-context::t '#f))
               (_path90388_
                (if (pair? _path90386_) (last _path90386_) _path90386_)))
          (if (string? _path90388_) _path90388_ '#f))))
    (define gx#import-module__%
      (lambda (_path90360_ _reload?90361_ _eval?90362_)
        (let ((_ctx90364_
               ((gx#current-expander-module-import)
                _path90360_
                _reload?90361_)))
          (if (and _ctx90364_ _eval?90362_)
              (gx#eval-module _ctx90364_)
              '#!void)
          _ctx90364_)))
    (define gx#import-module__0
      (lambda (_path90369_)
        (let* ((_reload?90371_ '#f) (_eval?90373_ '#f))
          (gx#import-module__% _path90369_ _reload?90371_ _eval?90373_))))
    (define gx#import-module__1
      (lambda (_path90375_ _reload?90376_)
        (let ((_eval?90378_ '#f))
          (gx#import-module__% _path90375_ _reload?90376_ _eval?90378_))))
    (define gx#import-module
      (lambda _g91376_
        (let ((_g91375_ (##length _g91376_)))
          (cond ((##fx= _g91375_ 1)
                 (apply (lambda (_path90369_)
                          (gx#import-module__0 _path90369_))
                        _g91376_))
                ((##fx= _g91375_ 2)
                 (apply (lambda (_path90375_ _reload?90376_)
                          (gx#import-module__1 _path90375_ _reload?90376_))
                        _g91376_))
                ((##fx= _g91375_ 3)
                 (apply (lambda (_path90380_ _reload?90381_ _eval?90382_)
                          (gx#import-module__%
                           _path90380_
                           _reload?90381_
                           _eval?90382_))
                        _g91376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g91376_))))))
    (define gx#eval-module
      (lambda (_mod90357_) ((gx#current-expander-module-eval) _mod90357_)))
    (define gx#core-eval-module
      (lambda (_obj90342_)
        (letrec ((_force-e90344_
                  (lambda (_getf90353_ _e90354_)
                    (__call-with-parameters
                     (lambda () (force (_getf90353_ _e90354_)))
                     gx#current-expander-context
                     _e90354_
                     gx#current-expander-phi
                     '0))))
          (let _recur90346_ ((_e90348_ _obj90342_))
            (if (##structure-instance-of? _e90348_ 'gx#module-context::t)
                (begin
                  (let ((_$e90350_ (gx#core-context-prelude__% _e90348_)))
                    (if _$e90350_ (_recur90346_ _$e90350_) '#!void))
                  (_force-e90344_ gx#module-context-e _e90348_))
                (if (##structure-instance-of? _e90348_ 'gx#prelude-context::t)
                    (_force-e90344_ gx#prelude-context-e _e90348_)
                    (if (gx#stx-string? _e90348_)
                        (_recur90346_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e90348_)))
                        (if (gx#core-library-module-path? _e90348_)
                            (_recur90346_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e90348_)))
                            (error '"Cannot eval module" _obj90342_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx90325_)
        (let _lp90327_ ((_e90329_ _ctx90325_))
          (if (or (##structure-instance-of? _e90329_ 'gx#module-context::t)
                  (##structure-instance-of? _e90329_ 'gx#local-context::t))
              (_lp90327_ (##unchecked-structure-ref _e90329_ '3 '#f '#f))
              (if (##structure-instance-of? _e90329_ 'gx#prelude-context::t)
                  _e90329_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx90338_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx90338_))))
    (define gx#core-context-prelude
      (lambda _g91378_
        (let ((_g91377_ (##length _g91378_)))
          (cond ((##fx= _g91377_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g91378_))
                ((##fx= _g91377_ 1)
                 (apply (lambda (_ctx90340_)
                          (gx#core-context-prelude__% _ctx90340_))
                        _g91378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g91378_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx90317_)
        (let ((_$e90319_ (hash-get gx#__module-registry _ctx90317_)))
          (if _$e90319_
              _$e90319_
              (let ((_pre90322_
                     (let ((__obj91369
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
                       (gx#prelude-context:::init! __obj91369 _ctx90317_)
                       __obj91369)))
                (hash-put! gx#__module-registry _ctx90317_ _pre90322_)
                _pre90322_)))))
    (define gx#core-import-module__%
      (lambda (_rpath90198_ _reload?90199_)
        (letrec ((_import-source90201_
                  (lambda (_path90286_)
                    (if (member _path90286_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path90286_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g91379_ (gx#core-read-module _path90286_)))
                         (begin
                           (let ((_g91380_
                                  (if (##values? _g91379_)
                                      (##vector-length _g91379_)
                                      1)))
                             (if (not (##fx= _g91380_ 4))
                                 (error "Context expects 4 values" _g91380_)))
                           (let ((_pre90289_ (##vector-ref _g91379_ 0))
                                 (_id90290_ (##vector-ref _g91379_ 1))
                                 (_ns90291_ (##vector-ref _g91379_ 2))
                                 (_body90292_ (##vector-ref _g91379_ 3)))
                             (let* ((_prelude90297_
                                     (if (##structure-instance-of?
                                          _pre90289_
                                          'gx#prelude-context::t)
                                         _pre90289_
                                         (if (##structure-instance-of?
                                              _pre90289_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre90289_)
                                             (if (string? _pre90289_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre90289_))
                                                 (if (not _pre90289_)
                                                     (let ((_$e90294_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e90294_
                                                           _$e90294_
                                                           (let ((__obj91370
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
                     (gx#prelude-context:::init! __obj91370 '#f)
                     __obj91370)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath90198_
                                                            _pre90289_))))))
                                    (_ctx90299_
                                     (let ((__obj91371
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
                                        __obj91371
                                        _id90290_
                                        _prelude90297_
                                        _ns90291_
                                        _path90286_)
                                       __obj91371))
                                    (_body90301_
                                     (gx#core-expand-module-begin
                                      _body90292_
                                      _ctx90299_))
                                    (_body90303_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body90301_)
                                      _path90286_
                                      _ctx90299_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx90299_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _body90303_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _ctx90299_
                                _body90303_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path90286_
                                _ctx90299_)
                               (hash-put!
                                gx#__module-registry
                                _id90290_
                                _ctx90299_)
                               _ctx90299_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path90286_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule90202_
                  (lambda (_rpath90214_)
                    (let* ((_rpath9021590222_ _rpath90214_)
                           (_E9021790226_
                            (lambda ()
                              (error '"No clause matching" _rpath9021590222_)))
                           (_K9021890274_
                            (lambda (_refs90229_ _origin90230_)
                              (let ((_ctx90232_
                                     (if _origin90230_
                                         (gx#core-import-module__%
                                          _origin90230_
                                          _reload?90199_)
                                         (gx#current-expander-context))))
                                (let _lp90234_ ((_rest90236_ _refs90229_)
                                                (_ctx90237_ _ctx90232_))
                                  (let* ((_rest9023890246_ _rest90236_)
                                         (_else9024090254_
                                          (lambda () _ctx90237_))
                                         (_K9024290262_
                                          (lambda (_rest90257_ _id90258_)
                                            (let ((_bind90260_
                                                   (gx#resolve-identifier__%
                                                    _id90258_
                                                    '0
                                                    _ctx90237_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind90260_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind90260_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp90234_
                                                   _rest90257_
                                                   (##unchecked-structure-ref
                                                    _bind90260_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath90214_
                                                         _id90258_
                                                         _bind90260_))))))
                                    (if (##pair? _rest9023890246_)
                                        (let ((_hd9024390265_
                                               (##car _rest9023890246_))
                                              (_tl9024490267_
                                               (##cdr _rest9023890246_)))
                                          (let* ((_id90270_ _hd9024390265_)
                                                 (_rest90272_ _tl9024490267_))
                                            (_K9024290262_
                                             _rest90272_
                                             _id90270_)))
                                        (_else9024090254_))))))))
                      (if (##pair? _rpath9021590222_)
                          (let ((_hd9021990277_ (##car _rpath9021590222_))
                                (_tl9022090279_ (##cdr _rpath9021590222_)))
                            (let* ((_origin90282_ _hd9021990277_)
                                   (_refs90284_ _tl9022090279_))
                              (_K9021890274_ _refs90284_ _origin90282_)))
                          (_E9021790226_))))))
          (let ((_$e90204_
                 (if (not _reload?90199_)
                     (hash-get gx#__module-registry _rpath90198_)
                     '#f)))
            (if _$e90204_
                (values _$e90204_)
                (if (list? _rpath90198_)
                    (_import-submodule90202_ _rpath90198_)
                    (if (gx#core-library-module-path? _rpath90198_)
                        (let ((_ctx90207_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath90198_)
                                _reload?90199_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath90198_
                           _ctx90207_)
                          _ctx90207_)
                        (let* ((_npath90209_ (path-normalize _rpath90198_))
                               (_$e90211_
                                (if (not _reload?90199_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath90209_)
                                    '#f)))
                          (if _$e90211_
                              _$e90211_
                              (_import-source90201_ _npath90209_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath90310_)
        (let ((_reload?90312_ '#f))
          (gx#core-import-module__% _rpath90310_ _reload?90312_))))
    (define gx#core-import-module
      (lambda _g91382_
        (let ((_g91381_ (##length _g91382_)))
          (cond ((##fx= _g91381_ 1)
                 (apply (lambda (_rpath90310_)
                          (gx#core-import-module__0 _rpath90310_))
                        _g91382_))
                ((##fx= _g91381_ 2)
                 (apply (lambda (_rpath90314_ _reload?90315_)
                          (gx#core-import-module__%
                           _rpath90314_
                           _reload?90315_))
                        _g91382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g91382_))))))
    (define gx#core-read-module
      (lambda (_path90187_)
        (__with-catch
         (lambda (_exn90189_)
           (if (and (datum-parsing-exception? _exn90189_)
                    (eq? (datum-parsing-exception-filepos _exn90189_) '0))
               (gx#core-read-module/lang _path90187_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path90187_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9019190193_)
                      (display-exception _exn90189_ _g9019190193_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path90187_)))))
    (define gx#core-read-module/sexp
      (lambda (_path90050_)
        (let _lp90052_ ((_body90054_ (read-syntax-from-file _path90050_))
                        (_pre90055_ '#f)
                        (_ns90056_ '#f)
                        (_pkg90057_ '#f))
          (let* ((_e9005890082_ _body90054_)
                 (_E9007490104_
                  (lambda ()
                    (let ((_g91383_
                           (if _pkg90057_
                               (values _pre90055_ _ns90056_ _pkg90057_)
                               (gx#core-read-module-package
                                _path90050_
                                _pre90055_
                                _ns90056_))))
                      (begin
                        (let ((_g91384_
                               (if (##values? _g91383_)
                                   (##vector-length _g91383_)
                                   1)))
                          (if (not (##fx= _g91384_ 3))
                              (error "Context expects 3 values" _g91384_)))
                        (let ((_pre90086_ (##vector-ref _g91383_ 0))
                              (_ns90087_ (##vector-ref _g91383_ 1))
                              (_pkg90088_ (##vector-ref _g91383_ 2)))
                          (let* ((_prelude90090_
                                  (if (gx#core-bound-module-prelude?
                                       _pre90086_)
                                      (gx#syntax-local-e__0 _pre90086_)
                                      (if (gx#core-library-module-path?
                                           _pre90086_)
                                          (gx#core-resolve-library-module-path
                                           _pre90086_)
                                          (if (gx#stx-string? _pre90086_)
                                              (gx#core-resolve-module-path__%
                                               _pre90086_
                                               _path90050_)
                                              (gx#stx-e _pre90086_)))))
                                 (_path-id90092_
                                  (gx#core-module-path->namespace _path90050_))
                                 (_pkg-id90094_
                                  (if _pkg90088_
                                      (string-append
                                       _pkg90088_
                                       '"/"
                                       _path-id90092_)
                                      _path-id90092_))
                                 (_module-id90096_
                                  (string->symbol _pkg-id90094_))
                                 (_module-ns90101_
                                  (if (eq? _ns90087_ '#!void)
                                      '#f
                                      (let ((_$e90098_ _ns90087_))
                                        (if _$e90098_
                                            _$e90098_
                                            _pkg-id90094_)))))
                            (values _prelude90090_
                                    _module-id90096_
                                    _module-ns90101_
                                    _body90054_)))))))
                 (_E9006790133_
                  (lambda ()
                    (if (gx#stx-pair? _e9005890082_)
                        (let ((_e9007590108_ (gx#syntax-e _e9005890082_)))
                          (let ((_hd9007690111_ (##car _e9007590108_))
                                (_tl9007790113_ (##cdr _e9007590108_)))
                            (if (eq? (gx#stx-e _hd9007690111_) 'package:)
                                (if (gx#stx-pair? _tl9007790113_)
                                    (let ((_e9007890116_
                                           (gx#syntax-e _tl9007790113_)))
                                      (let ((_hd9007990119_
                                             (##car _e9007890116_))
                                            (_tl9008090121_
                                             (##cdr _e9007890116_)))
                                        (let* ((_pkg90124_ _hd9007990119_)
                                               (_rest90126_ _tl9008090121_))
                                          (if '#t
                                              (let ((_pkg90131_
                                                     (if (gx#identifier?
                                                          _pkg90124_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg90124_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg90124_)
                         (gx#stx-false? _pkg90124_))
                     (gx#stx-e _pkg90124_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg90124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90052_
                                                 _rest90126_
                                                 _pre90055_
                                                 _ns90056_
                                                 _pkg90131_))
                                              (_E9007490104_)))))
                                    (_E9007490104_))
                                (_E9007490104_))))
                        (_E9007490104_))))
                 (_E9006090159_
                  (lambda ()
                    (if (gx#stx-pair? _e9005890082_)
                        (let ((_e9006890137_ (gx#syntax-e _e9005890082_)))
                          (let ((_hd9006990140_ (##car _e9006890137_))
                                (_tl9007090142_ (##cdr _e9006890137_)))
                            (if (eq? (gx#stx-e _hd9006990140_) 'namespace:)
                                (if (gx#stx-pair? _tl9007090142_)
                                    (let ((_e9007190145_
                                           (gx#syntax-e _tl9007090142_)))
                                      (let ((_hd9007290148_
                                             (##car _e9007190145_))
                                            (_tl9007390150_
                                             (##cdr _e9007190145_)))
                                        (let* ((_ns90153_ _hd9007290148_)
                                               (_rest90155_ _tl9007390150_))
                                          (if '#t
                                              (let ((_ns90157_
                                                     (if (gx#identifier?
                                                          _ns90153_)
                                                         (symbol->string
                                                          (gx#stx-e _ns90153_))
                                                         (if (gx#stx-string?
                                                              _ns90153_)
                                                             (gx#stx-e
                                                              _ns90153_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns90153_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns90153_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90052_
                                                 _rest90155_
                                                 _pre90055_
                                                 _ns90157_
                                                 _pkg90057_))
                                              (_E9006790133_)))))
                                    (_E9006790133_))
                                (_E9006790133_))))
                        (_E9006790133_))))
                 (_E9005990183_
                  (lambda ()
                    (if (gx#stx-pair? _e9005890082_)
                        (let ((_e9006190163_ (gx#syntax-e _e9005890082_)))
                          (let ((_hd9006290166_ (##car _e9006190163_))
                                (_tl9006390168_ (##cdr _e9006190163_)))
                            (if (eq? (gx#stx-e _hd9006290166_) 'prelude:)
                                (if (gx#stx-pair? _tl9006390168_)
                                    (let ((_e9006490171_
                                           (gx#syntax-e _tl9006390168_)))
                                      (let ((_hd9006590174_
                                             (##car _e9006490171_))
                                            (_tl9006690176_
                                             (##cdr _e9006490171_)))
                                        (let* ((_prelude90179_ _hd9006590174_)
                                               (_rest90181_ _tl9006690176_))
                                          (if '#t
                                              (_lp90052_
                                               _rest90181_
                                               _prelude90179_
                                               _ns90056_
                                               _pkg90057_)
                                              (_E9006090159_)))))
                                    (_E9006090159_))
                                (_E9006090159_))))
                        (_E9006090159_)))))
            (_E9005990183_)))))
    (define gx#core-read-module/lang
      (lambda (_path89877_)
        (letrec ((_default-read-module-body89879_
                  (lambda (_inp90042_)
                    (let _lp90044_ ((_body90046_ '()))
                      (let ((_next90048_ (read-syntax__% _inp90042_)))
                        (if (eof-object? _next90048_)
                            (reverse _body90046_)
                            (_lp90044_ (cons _next90048_ _body90046_)))))))
                 (_read-body89880_
                  (lambda (_inp89961_
                           _pre89962_
                           _ns89963_
                           _pkg89964_
                           _args89965_)
                    (let ((_g91385_
                           (if _pkg89964_
                               (values _pre89962_ _ns89963_ _pkg89964_)
                               (gx#core-read-module-package
                                _path89877_
                                _pre89962_
                                _ns89963_))))
                      (begin
                        (let ((_g91386_
                               (if (##values? _g91385_)
                                   (##vector-length _g91385_)
                                   1)))
                          (if (not (##fx= _g91386_ 3))
                              (error "Context expects 3 values" _g91386_)))
                        (let ((_pre89967_ (##vector-ref _g91385_ 0))
                              (_ns89968_ (##vector-ref _g91385_ 1))
                              (_pkg89969_ (##vector-ref _g91385_ 2)))
                          (let* ((_prelude89971_
                                  (gx#import-module__0 _pre89967_))
                                 (_read-module-body90025_
                                  (let ((_$e90017_
                                         (__find (lambda (_e8997289974_)
                                                   (let* ((_g8997689986_
                                                           _e8997289974_)
                                                          (_else8997889994_
                                                           (lambda () '#f))
                                                          (_K8998089998_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _g8997689986_
                                                          'gx#module-export::t)
                                                         (let* ((_e8998190001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref _g8997689986_ '1 '#f '#f))
                        (_e8998290004_
                         (##unchecked-structure-ref _g8997689986_ '2 '#f '#f))
                        (_e8998390007_
                         (##unchecked-structure-ref _g8997689986_ '3 '#f '#f)))
                   (if (##eq? _e8998390007_ '1)
                       (let ((_e8998490010_
                              (##unchecked-structure-ref
                               _g8997689986_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_g9001290014_)
                                (eq? _g9001290014_ 'read-module-body))
                              _e8998490010_)
                             (_K8998089998_)
                             (_else8997889994_)))
                       (_else8997889994_)))
                 (_else8997889994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _prelude89971_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _$e90017_
                                        ((lambda (_xport90020_)
                                           (let ((_proc90023_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport90020_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc90023_)
                                                 _proc90023_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path89877_
                                                  _pre89967_
                                                  _proc90023_))))
                                         _$e90017_)
                                        _default-read-module-body89879_)))
                                 (_path-id90027_
                                  (gx#core-module-path->namespace _path89877_))
                                 (_pkg-id90029_
                                  (if _pkg89969_
                                      (string-append
                                       _pkg89969_
                                       '"/"
                                       _path-id90027_)
                                      _path-id90027_))
                                 (_module-id90031_
                                  (string->symbol _pkg-id90029_))
                                 (_module-ns90036_
                                  (let ((_$e90033_ _ns89968_))
                                    (if _$e90033_ _$e90033_ _pkg-id90029_)))
                                 (_body90039_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_read-module-body90025_ _inp89961_))
                                   gx#current-module-reader-path
                                   _path89877_
                                   gx#current-module-reader-args
                                   _args89965_)))
                            (values _prelude89971_
                                    _module-id90031_
                                    _module-ns90036_
                                    _body90039_)))))))
                 (_string-e89881_
                  (lambda (_obj89958_ _what89959_)
                    (if (string? _obj89958_)
                        _obj89958_
                        (if (symbol? _obj89958_)
                            (symbol->string _obj89958_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what89959_)
                             _path89877_
                             _obj89958_)))))
                 (_read-lang-args89882_
                  (lambda (_inp89913_ _args89914_)
                    (let* ((_args8991589923_ _args89914_)
                           (_else8991789931_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path89877_)))
                           (_K8991989946_
                            (lambda (_args89934_ _prelude89935_)
                              (let* ((_pkg89937_
                                      (pgetq__0 'package: _args89934_))
                                     (_pkg89939_
                                      (if _pkg89937_
                                          (_string-e89881_
                                           _pkg89937_
                                           '"package")
                                          '#f))
                                     (_ns89941_
                                      (pgetq__0 'namespace: _args89934_))
                                     (_ns89943_
                                      (if _ns89941_
                                          (_string-e89881_
                                           _ns89941_
                                           '"namespace")
                                          '#f)))
                                (_read-body89880_
                                 _inp89913_
                                 _prelude89935_
                                 _ns89943_
                                 _pkg89939_
                                 _args89934_)))))
                      (if (##pair? _args8991589923_)
                          (let ((_hd8992089949_ (##car _args8991589923_))
                                (_tl8992189951_ (##cdr _args8991589923_)))
                            (let* ((_prelude89954_ _hd8992089949_)
                                   (_args89956_ _tl8992189951_))
                              (_K8991989946_ _args89956_ _prelude89954_)))
                          (_else8991789931_)))))
                 (_read-lang89883_
                  (lambda (_inp89888_)
                    (let* ((_head89890_ (read-line _inp89888_))
                           (_$e89892_ (string-index__0 _head89890_ '#\space)))
                      (if _$e89892_
                          ((lambda (_ix89895_)
                             (let ((_lang89897_
                                    (substring _head89890_ '0 _ix89895_)))
                               (if (equal? _lang89897_ '"#lang")
                                   (let* ((_rest89899_
                                           (substring
                                            _head89890_
                                            (##fx+ _ix89895_ '1)
                                            (string-length _head89890_)))
                                          (_args89910_
                                           (__with-catch
                                            (lambda (_g8990089902_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path89877_
                                               _g8990089902_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest89899_
                                               (lambda (_g8990589907_)
                                                 (read-all
                                                  _g8990589907_
                                                  read)))))))
                                     (_read-lang-args89882_
                                      _inp89888_
                                      _args89910_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path89877_))))
                           _$e89892_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path89877_)))))
                 (_read-e89884_
                  (lambda (_inp89886_)
                    (if (eq? (peek-char _inp89886_) '#\#)
                        (_read-lang89883_ _inp89886_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path89877_)))))
          (gx#call-with-input-source-file _path89877_ _read-e89884_))))
    (define gx#core-read-module-package
      (lambda (_path89831_ _pre89832_ _ns89833_)
        (letrec ((_string-e89835_
                  (lambda (_e89875_)
                    (if (symbol? _e89875_)
                        (symbol->string _e89875_)
                        (if (string? _e89875_)
                            _e89875_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e89875_))))))
          (let _lp89837_ ((_dir89839_ (path-directory _path89831_))
                          (_pkg-path89840_ '()))
            (let ((_gerbil.pkg89842_ (path-expand '"gerbil.pkg" _dir89839_)))
              (if (file-exists? _gerbil.pkg89842_)
                  (let ((_plist89844_
                         (gx#core-library-package-plist__% _dir89839_ '#t)))
                    (if (null? _plist89844_)
                        (let ((_pkg89846_
                               (if (not (null? _pkg-path89840_))
                                   (__string-join _pkg-path89840_ '"/")
                                   '#f)))
                          (values _pre89832_ _ns89833_ _pkg89846_))
                        (if (list? _plist89844_)
                            (let* ((_root89848_
                                    (pgetq__0 'package: _plist89844_))
                                   (_pkg89852_
                                    (let ((_pkg-path89850_
                                           (if _root89848_
                                               (cons (_string-e89835_
                                                      _root89848_)
                                                     _pkg-path89840_)
                                               _pkg-path89840_)))
                                      (if (not (null? _pkg-path89850_))
                                          (__string-join _pkg-path89850_ '"/")
                                          '#f)))
                                   (_ns89859_
                                    (let ((_ns89857_
                                           (let ((_$e89854_ _ns89833_))
                                             (if _$e89854_
                                                 _$e89854_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist89844_)))))
                                      (if _ns89857_
                                          (_string-e89835_ _ns89857_)
                                          '#f)))
                                   (_pre89864_
                                    (let ((_$e89861_ _pre89832_))
                                      (if _$e89861_
                                          _$e89861_
                                          (pgetq__0 'prelude: _plist89844_)))))
                              (values _pre89864_ _ns89859_ _pkg89852_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist89844_))))
                  (let ((_dir*89867_
                         (path-strip-trailing-directory-separator _dir89839_)))
                    (if (or (__string-empty? _dir*89867_)
                            (equal? _dir89839_ _dir*89867_))
                        (values _pre89832_ _ns89833_ '#f)
                        (let ((_xpath89872_ (path-strip-directory _dir*89867_))
                              (_xdir89873_ (path-directory _dir*89867_)))
                          (_lp89837_
                           _xdir89873_
                           (cons _xpath89872_ _pkg-path89840_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path89829_)
        (path-strip-extension (path-strip-directory _path89829_))))
    (define gx#core-module-path->id
      (lambda (_path89827_)
        (##string->symbol (gx#core-module-path->namespace _path89827_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path89806_ _rel89807_)
        (let* ((_path89809_ (gx#stx-e _stx-path89806_))
               (_path89811_
                (if (__string-empty? (path-extension _path89809_))
                    (##string-append _path89809_ '".ss")
                    _path89809_)))
          (gx#core-resolve-path__%
           _path89811_
           (let ((_$e89814_ (gx#stx-source _stx-path89806_)))
             (if _$e89814_ _$e89814_ _rel89807_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path89820_)
        (let ((_rel89822_ '#f))
          (gx#core-resolve-module-path__% _stx-path89820_ _rel89822_))))
    (define gx#core-resolve-module-path
      (lambda _g91388_
        (let ((_g91387_ (##length _g91388_)))
          (cond ((##fx= _g91387_ 1)
                 (apply (lambda (_stx-path89820_)
                          (gx#core-resolve-module-path__0 _stx-path89820_))
                        _g91388_))
                ((##fx= _g91387_ 2)
                 (apply (lambda (_stx-path89824_ _rel89825_)
                          (gx#core-resolve-module-path__%
                           _stx-path89824_
                           _rel89825_))
                        _g91388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g91388_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath89692_)
        (let* ((_spath89694_ (symbol->string (gx#stx-e _libpath89692_)))
               (_spath89696_
                (substring _spath89694_ '1 (##string-length _spath89694_)))
               (_ext89698_ (path-extension _spath89696_))
               (_ssi89700_
                (if (__string-empty? _ext89698_)
                    (##string-append _spath89696_ '".ssi")
                    (##string-append
                     (path-strip-extension _spath89696_)
                     '".ssi")))
               (_srcs89704_
                (if (__string-empty? _ext89698_)
                    (##map (lambda (_ext89702_)
                             (string-append _spath89696_ _ext89702_))
                           '(".ss" ".sld" ".scm"))
                    (cons _spath89696_ '()))))
          (let _lp89707_ ((_rest89709_ (load-path)))
            (let* ((_rest8971089719_ _rest89709_)
                   (_E8971389723_
                    (lambda ()
                      (error '"No clause matching" _rest8971089719_))))
              (let ((_K8971589793_
                     (lambda (_rest89734_ _dir89735_)
                       (letrec ((_resolve89737_
                                 (lambda (_ssi89749_ _srcs89750_)
                                   (let ((_compiled-path89752_
                                          (path-expand _ssi89749_ _dir89735_)))
                                     (if (file-exists? _compiled-path89752_)
                                         (path-normalize _compiled-path89752_)
                                         (let _lpr89754_ ((_rest-src89756_
                                                           _srcs89750_))
                                           (let* ((_rest-src8975789765_
                                                   _rest-src89756_)
                                                  (_else8975989773_
                                                   (lambda ()
                                                     (_lp89707_ _rest89734_)))
                                                  (_K8976189781_
                                                   (lambda (_rest-src89776_
                                                            _src89777_)
                                                     (let ((_src-path89779_
                                                            (path-expand
                                                             _src89777_
                                                             _dir89735_)))
                                                       (if (file-exists?
                                                            _src-path89779_)
                                                           (path-normalize
                                                            _src-path89779_)
                                                           (_lpr89754_
                                                            _rest-src89776_))))))
                                             (if (##pair? _rest-src8975789765_)
                                                 (let ((_hd8976289784_
                                                        (##car _rest-src8975789765_))
                                                       (_tl8976389786_
                                                        (##cdr _rest-src8975789765_)))
                                                   (let* ((_src89789_
                                                           _hd8976289784_)
                                                          (_rest-src89791_
                                                           _tl8976389786_))
                                                     (_K8976189781_
                                                      _rest-src89791_
                                                      _src89789_)))
                                                 (_else8975989773_)))))))))
                         (let ((_$e89739_
                                (gx#core-library-package-path-prefix
                                 _dir89735_)))
                           (if _$e89739_
                               ((lambda (_prefix89742_)
                                  (if (string-prefix?
                                       _prefix89742_
                                       _spath89696_)
                                      (let ((_ssi89746_
                                             (substring
                                              _ssi89700_
                                              (string-length _prefix89742_)
                                              (##string-length _ssi89700_)))
                                            (_srcs89747_
                                             (map (lambda (_src89744_)
                                                    (substring
                                                     _src89744_
                                                     (string-length
                                                      _prefix89742_)
                                                     (string-length
                                                      _src89744_)))
                                                  _srcs89704_)))
                                        (_resolve89737_
                                         _ssi89746_
                                         _srcs89747_))
                                      (_lp89707_ _rest89734_)))
                                _$e89739_)
                               (_resolve89737_ _ssi89700_ _srcs89704_))))))
                    (_K8971489728_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath89692_))))
                (let ((_try-match8971289731_
                       (lambda ()
                         (if (##null? _rest8971089719_)
                             (_K8971489728_)
                             (_E8971389723_)))))
                  (if (##pair? _rest8971089719_)
                      (let ((_tl8971789798_ (##cdr _rest8971089719_))
                            (_hd8971689796_ (##car _rest8971089719_)))
                        (let ((_dir89801_ _hd8971689796_)
                              (_rest89803_ _tl8971789798_))
                          (_K8971589793_ _rest89803_ _dir89801_)))
                      (_try-match8971289731_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath89665_)
        (letrec ((_resolve89667_
                  (lambda (_path89684_ _base89685_)
                    (let ((_$e89687_ (string-rindex__0 _base89685_ '#\/)))
                      (if _$e89687_
                          ((lambda (_idx89690_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _base89685_ '0 _idx89690_)
                                '"/"
                                _path89684_))))
                           _$e89687_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _path89684_))))))))
          (let ((_spath89669_ (symbol->string (gx#stx-e _modpath89665_)))
                (_mod89670_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod89670_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath89665_))
            (let ((_mpath89672_
                   (symbol->string
                    (##structure-ref
                     _mod89670_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp89674_ ((_spath89676_ _spath89669_)
                              (_mpath89677_ _mpath89672_))
                (if (string-prefix? '"../" _spath89676_)
                    (let ((_$e89679_ (string-rindex__0 _mpath89677_ '#\/)))
                      (if _$e89679_
                          ((lambda (_idx89682_)
                             (_lp89674_
                              (substring
                               _spath89676_
                               '3
                               (string-length _spath89676_))
                              (substring _mpath89677_ '0 _idx89682_)))
                           _$e89679_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath89665_)))
                    (if (string-prefix? '"./" _spath89676_)
                        (_lp89674_
                         (substring
                          _spath89676_
                          '2
                          (string-length _spath89676_))
                         _mpath89677_)
                        (_resolve89667_ _spath89676_ _mpath89677_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir89658_)
        (let ((_$e89660_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir89658_))))
          (if _$e89660_
              ((lambda (_pkg89663_)
                 (##string-append (symbol->string _pkg89663_) '"/"))
               _$e89660_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir89632_ _exists?89633_)
        (let ((_$e89635_ (hash-get gx#__module-pkg-cache _dir89632_)))
          (if _$e89635_
              (values _$e89635_)
              (let* ((_gerbil.pkg89638_ (path-expand '"gerbil.pkg" _dir89632_))
                     (_plist89645_
                      (if (or _exists?89633_ (file-exists? _gerbil.pkg89638_))
                          (let ((_e89643_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg89638_
                                  read)))
                            (if (eof-object? _e89643_)
                                '()
                                (if (list? _e89643_)
                                    _e89643_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg89638_
                                     _e89643_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir89632_ _plist89645_)
                _plist89645_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir89651_)
        (let ((_exists?89653_ '#f))
          (gx#core-library-package-plist__% _dir89651_ _exists?89653_))))
    (define gx#core-library-package-plist
      (lambda _g91390_
        (let ((_g91389_ (##length _g91390_)))
          (cond ((##fx= _g91389_ 1)
                 (apply (lambda (_dir89651_)
                          (gx#core-library-package-plist__0 _dir89651_))
                        _g91390_))
                ((##fx= _g91389_ 2)
                 (apply (lambda (_dir89655_ _exists?89656_)
                          (gx#core-library-package-plist__%
                           _dir89655_
                           _exists?89656_))
                        _g91390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g91390_))))))
    (define gx#core-library-module-path?
      (lambda (_stx89629_) (gx#core-special-module-path? _stx89629_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx89627_) (gx#core-special-module-path? _stx89627_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx89622_ _char89623_)
        (if (gx#identifier? _stx89622_)
            (if (__interned-symbol? (gx#stx-e _stx89622_))
                (let ((_str89625_ (symbol->string (gx#stx-e _stx89622_))))
                  (if (##fx> (##string-length _str89625_) '1)
                      (eq? (string-ref _str89625_ '0) _char89623_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx89616_)
        (gx#core-bound-identifier?__%
         _stx89616_
         (lambda (_g8961789619_)
           (gx#expander-binding?__% _g8961789619_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx89610_)
        (gx#core-bound-identifier?__%
         _stx89610_
         (lambda (_g8961189613_)
           (gx#expander-binding?__% _g8961189613_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx89597_)
        (letrec ((_module-prelude?89599_
                  (lambda (_e89605_)
                    (let ((_$e89607_
                           (##structure-instance-of?
                            _e89605_
                            'gx#module-context::t)))
                      (if _$e89607_
                          _$e89607_
                          (##structure-instance-of?
                           _e89605_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx89597_
           (lambda (_g8960089602_)
             (gx#expander-binding?__%
              _g8960089602_
              _module-prelude?89599_))))))
    (define gx#core-bind-import!__%
      (lambda (_in89527_ _ctx89528_ _force-weak?89529_)
        (let* ((_in8953089539_ _in89527_)
               (_E8953289543_
                (lambda () (error '"No clause matching" _in8953089539_)))
               (_K8953389556_
                (lambda (_weak?89546_ _phi89547_ _key89548_ _source89549_)
                  (gx#core-bind!__%
                   _key89548_
                   (let ((_e89551_
                          (gx#core-resolve-module-export _source89549_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e89551_ '1 '#f '#f)
                      _key89548_
                      _phi89547_
                      _e89551_
                      (##unchecked-structure-ref _source89549_ '1 '#f '#f)
                      (let ((_$e89553_ _force-weak?89529_))
                        (if _$e89553_ _$e89553_ _weak?89546_))))
                   gx#core-context-rebind?
                   _phi89547_
                   _ctx89528_))))
          (if (##structure-direct-instance-of?
               _in8953089539_
               'gx#module-import::t)
              (let* ((_e8953489559_
                      (##unchecked-structure-ref _in8953089539_ '1 '#f '#f))
                     (_source89562_ _e8953489559_)
                     (_e8953589564_
                      (##unchecked-structure-ref _in8953089539_ '2 '#f '#f))
                     (_key89567_ _e8953589564_)
                     (_e8953689569_
                      (##unchecked-structure-ref _in8953089539_ '3 '#f '#f))
                     (_phi89572_ _e8953689569_)
                     (_e8953789574_
                      (##unchecked-structure-ref _in8953089539_ '4 '#f '#f))
                     (_weak?89577_ _e8953789574_))
                (_K8953389556_
                 _weak?89577_
                 _phi89572_
                 _key89567_
                 _source89562_))
              (_E8953289543_)))))
    (define gx#core-bind-import!__0
      (lambda (_in89582_)
        (let* ((_ctx89584_ (gx#current-expander-context))
               (_force-weak?89586_ '#f))
          (gx#core-bind-import!__% _in89582_ _ctx89584_ _force-weak?89586_))))
    (define gx#core-bind-import!__1
      (lambda (_in89588_ _ctx89589_)
        (let ((_force-weak?89591_ '#f))
          (gx#core-bind-import!__% _in89588_ _ctx89589_ _force-weak?89591_))))
    (define gx#core-bind-import!
      (lambda _g91392_
        (let ((_g91391_ (##length _g91392_)))
          (cond ((##fx= _g91391_ 1)
                 (apply (lambda (_in89582_)
                          (gx#core-bind-import!__0 _in89582_))
                        _g91392_))
                ((##fx= _g91391_ 2)
                 (apply (lambda (_in89588_ _ctx89589_)
                          (gx#core-bind-import!__1 _in89588_ _ctx89589_))
                        _g91392_))
                ((##fx= _g91391_ 3)
                 (apply (lambda (_in89593_ _ctx89594_ _force-weak?89595_)
                          (gx#core-bind-import!__%
                           _in89593_
                           _ctx89594_
                           _force-weak?89595_))
                        _g91392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g91392_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in89513_ _ctx89514_)
        (gx#core-bind-import!__% _in89513_ _ctx89514_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in89519_)
        (let ((_ctx89521_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in89519_ _ctx89521_))))
    (define gx#core-bind-weak-import!
      (lambda _g91394_
        (let ((_g91393_ (##length _g91394_)))
          (cond ((##fx= _g91393_ 1)
                 (apply (lambda (_in89519_)
                          (gx#core-bind-weak-import!__0 _in89519_))
                        _g91394_))
                ((##fx= _g91393_ 2)
                 (apply (lambda (_in89523_ _ctx89524_)
                          (gx#core-bind-weak-import!__% _in89523_ _ctx89524_))
                        _g91394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g91394_))))))
    (define gx#core-resolve-module-export
      (lambda (_out89404_)
        (letrec ((_subst89406_
                  (lambda (_key89452_)
                    (let* ((_key8945389461_ _key89452_)
                           (_else8945589469_ (lambda () _key89452_))
                           (_K8945789500_
                            (lambda (_mark89472_ _id89473_)
                              (let* ((_mark8947489480_ _mark89472_)
                                     (_E8947689484_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8947489480_)))
                                     (_K8947789492_
                                      (lambda (_subst89487_)
                                        (let ((_$e89489_
                                               (if _subst89487_
                                                   (hash-get
                                                    _subst89487_
                                                    _id89473_)
                                                   '#f)))
                                          (if _$e89489_
                                              _$e89489_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key89452_))))))
                                (if (##structure-instance-of?
                                     _mark8947489480_
                                     'gx#expander-mark::t)
                                    (let* ((_e8947889495_
                                            (##unchecked-structure-ref
                                             _mark8947489480_
                                             '1
                                             '#f
                                             '#f))
                                           (_subst89498_ _e8947889495_))
                                      (_K8947789492_ _subst89498_))
                                    (_E8947689484_))))))
                      (if (##pair? _key8945389461_)
                          (let ((_hd8945889503_ (##car _key8945389461_))
                                (_tl8945989505_ (##cdr _key8945389461_)))
                            (let* ((_id89508_ _hd8945889503_)
                                   (_mark89510_ _tl8945989505_))
                              (_K8945789500_ _mark89510_ _id89508_)))
                          (_else8945589469_))))))
          (let* ((_out8940789417_ _out89404_)
                 (_E8940989421_
                  (lambda () (error '"No clause matching" _out8940789417_)))
                 (_K8941089428_
                  (lambda (_phi89424_ _key89425_ _ctx89426_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx89426_ _phi89424_)
                     (_subst89406_ _key89425_)))))
            (if (##structure-direct-instance-of?
                 _out8940789417_
                 'gx#module-export::t)
                (let* ((_e8941189431_
                        (##unchecked-structure-ref _out8940789417_ '1 '#f '#f))
                       (_ctx89434_ _e8941189431_)
                       (_e8941289436_
                        (##unchecked-structure-ref _out8940789417_ '2 '#f '#f))
                       (_key89439_ _e8941289436_)
                       (_e8941389441_
                        (##unchecked-structure-ref _out8940789417_ '3 '#f '#f))
                       (_phi89444_ _e8941389441_)
                       (_e8941489446_
                        (##unchecked-structure-ref _out8940789417_ '4 '#f '#f))
                       (_e8941589449_
                        (##unchecked-structure-ref
                         _out8940789417_
                         '5
                         '#f
                         '#f)))
                  (_K8941089428_ _phi89444_ _key89439_ _ctx89434_))
                (_E8940989421_))))))
    (define gx#core-module-export->import__%
      (lambda (_out89329_ _rename89330_ _dphi89331_)
        (let* ((_out8933289342_ _out89329_)
               (_E8933489346_
                (lambda () (error '"No clause matching" _out8933289342_)))
               (_K8933589358_
                (lambda (_weak?89349_
                         _name89350_
                         _phi89351_
                         _key89352_
                         _ctx89353_)
                  (##structure
                   gx#module-import::t
                   _out89329_
                   (let ((_$e89355_ _rename89330_))
                     (if _$e89355_ _$e89355_ _name89350_))
                   (fx+ _phi89351_ _dphi89331_)
                   _weak?89349_))))
          (if (##structure-direct-instance-of?
               _out8933289342_
               'gx#module-export::t)
              (let* ((_e8933689361_
                      (##unchecked-structure-ref _out8933289342_ '1 '#f '#f))
                     (_ctx89364_ _e8933689361_)
                     (_e8933789366_
                      (##unchecked-structure-ref _out8933289342_ '2 '#f '#f))
                     (_key89369_ _e8933789366_)
                     (_e8933889371_
                      (##unchecked-structure-ref _out8933289342_ '3 '#f '#f))
                     (_phi89374_ _e8933889371_)
                     (_e8933989376_
                      (##unchecked-structure-ref _out8933289342_ '4 '#f '#f))
                     (_name89379_ _e8933989376_)
                     (_e8934089381_
                      (##unchecked-structure-ref _out8933289342_ '5 '#f '#f))
                     (_weak?89384_ _e8934089381_))
                (_K8933589358_
                 _weak?89384_
                 _name89379_
                 _phi89374_
                 _key89369_
                 _ctx89364_))
              (_E8933489346_)))))
    (define gx#core-module-export->import__0
      (lambda (_out89389_)
        (let* ((_rename89391_ '#f) (_dphi89393_ '0))
          (gx#core-module-export->import__%
           _out89389_
           _rename89391_
           _dphi89393_))))
    (define gx#core-module-export->import__1
      (lambda (_out89395_ _rename89396_)
        (let ((_dphi89398_ '0))
          (gx#core-module-export->import__%
           _out89395_
           _rename89396_
           _dphi89398_))))
    (define gx#core-module-export->import
      (lambda _g91396_
        (let ((_g91395_ (##length _g91396_)))
          (cond ((##fx= _g91395_ 1)
                 (apply (lambda (_out89389_)
                          (gx#core-module-export->import__0 _out89389_))
                        _g91396_))
                ((##fx= _g91395_ 2)
                 (apply (lambda (_out89395_ _rename89396_)
                          (gx#core-module-export->import__1
                           _out89395_
                           _rename89396_))
                        _g91396_))
                ((##fx= _g91395_ 3)
                 (apply (lambda (_out89400_ _rename89401_ _dphi89402_)
                          (gx#core-module-export->import__%
                           _out89400_
                           _rename89401_
                           _dphi89402_))
                        _g91396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g91396_))))))
    (define gx#core-expand-module%
      (lambda (_stx89231_)
        (letrec ((_make-context89233_
                  (lambda (_id89310_)
                    (let* ((_super89312_ (gx#current-expander-context))
                           (_bind-id89314_ (gx#stx-e _id89310_))
                           (_mod-id89316_
                            (if (##structure-instance-of?
                                 _super89312_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super89312_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id89314_)
                                _bind-id89314_))
                           (_ns89318_ (symbol->string _mod-id89316_))
                           (_path89325_
                            (if (##structure-instance-of?
                                 _super89312_
                                 'gx#module-context::t)
                                (let ((_path89320_
                                       (##unchecked-structure-ref
                                        _super89312_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _path89320_)
                                          (null? _path89320_))
                                      (cons _bind-id89314_ _path89320_)
                                      (if (not _path89320_)
                                          _bind-id89314_
                                          (cons _bind-id89314_
                                                (cons _path89320_ '())))))
                                _bind-id89314_)))
                      (let ((__obj91372
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
                         __obj91372
                         _mod-id89316_
                         _super89312_
                         _ns89318_
                         _path89325_)
                        __obj91372))))
                 (_valid-module-id?89234_
                  (lambda (_id89285_)
                    (let* ((_str89287_ (symbol->string _id89285_))
                           (_len89289_ (##string-length _str89287_)))
                      (if (##fx>= _len89289_ '1)
                          (let _loop89292_ ((_index89294_
                                             (##fx- (##string-length
                                                     _str89287_)
                                                    '1)))
                            (if (##fx>= _index89294_ '0)
                                (let ((_c89296_
                                       (string-ref _str89287_ _index89294_)))
                                  (if (or (and (##char>=? _c89296_ '#\a)
                                               (##char<=? _c89296_ '#\z))
                                          (and (##char>=? _c89296_ '#\A)
                                               (##char<=? _c89296_ '#\Z))
                                          (and (##char>=? _c89296_ '#\0)
                                               (##char<=? _c89296_ '#\9))
                                          (##char=? _c89296_ '#\_)
                                          (##char=? _c89296_ '#\-))
                                      (_loop89292_ (##fx- _index89294_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e8923589245_ _stx89231_)
                 (_E8923789249_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8923589245_)))
                 (_E8923689281_
                  (lambda ()
                    (if (gx#stx-pair? _e8923589245_)
                        (let ((_e8923889253_ (gx#syntax-e _e8923589245_)))
                          (let ((_hd8923989256_ (##car _e8923889253_))
                                (_tl8924089258_ (##cdr _e8923889253_)))
                            (if (gx#stx-pair? _tl8924089258_)
                                (let ((_e8924189261_
                                       (gx#syntax-e _tl8924089258_)))
                                  (let ((_hd8924289264_ (##car _e8924189261_))
                                        (_tl8924389266_ (##cdr _e8924189261_)))
                                    (let* ((_id89269_ _hd8924289264_)
                                           (_body89271_ _tl8924389266_))
                                      (if (and (gx#identifier? _id89269_)
                                               (gx#stx-list? _body89271_))
                                          (if (_valid-module-id?89234_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx89273_
                                                      (_make-context89233_
                                                       _id89269_))
                                                     (_body89275_
                                                      (gx#core-expand-module-begin
                                                       _body89271_
                                                       _ctx89273_))
                                                     (_body89277_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body89275_)
                                                       (gx#stx-source
                                                        _stx89231_))))
                                                (##unchecked-structure-set!
                                                 _ctx89273_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body89277_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx89273_
                                                 _body89277_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id89269_
                                                 _ctx89273_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id89269_)
                                                  _body89277_)
                                                 (gx#stx-source _stx89231_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx89231_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E8923789249_)))))
                                (_E8923789249_))))
                        (_E8923789249_)))))
            (_E8923689281_)))))
    (define gx#core-expand-module-begin
      (lambda (_body89197_ _ctx89198_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx89201_
                   (gx#core-expand-head (cons '%%begin-module _body89197_)))
                  (_e8920289209_ _stx89201_)
                  (_E8920489213_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx89201_)))
                  (_E8920389227_
                   (lambda ()
                     (if (gx#stx-pair? _e8920289209_)
                         (let ((_e8920589217_ (gx#syntax-e _e8920289209_)))
                           (let ((_hd8920689220_ (##car _e8920589217_))
                                 (_tl8920789222_ (##cdr _e8920589217_)))
                             (if (and (gx#identifier? _hd8920689220_)
                                      (gx#core-identifier=?
                                       _hd8920689220_
                                       '%#begin-module))
                                 (let ((_body89225_ _tl8920789222_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx89201_)
                                           _body89225_
                                           (gx#core-expand-module-body
                                            _body89225_))
                                       (_E8920489213_)))
                                 (_E8920489213_))))
                         (_E8920489213_)))))
             (_E8920389227_)))
         gx#current-expander-context
         _ctx89198_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body88993_)
        (letrec ((_expand-special88995_
                  (lambda (_hd89124_ _K89125_ _rest89126_ _r89127_)
                    (let* ((_e8912889145_ _hd89124_)
                           (_E8914089149_
                            (lambda ()
                              (_K89125_
                               _rest89126_
                               (cons (gx#core-expand-top _hd89124_)
                                     _r89127_))))
                           (_E8913089161_
                            (lambda ()
                              (if (gx#stx-pair? _e8912889145_)
                                  (let ((_e8914189153_
                                         (gx#syntax-e _e8912889145_)))
                                    (let ((_hd8914289156_
                                           (##car _e8914189153_))
                                          (_tl8914389158_
                                           (##cdr _e8914189153_)))
                                      (if (and (gx#identifier? _hd8914289156_)
                                               (gx#core-identifier=?
                                                _hd8914289156_
                                                '%#export))
                                          (if '#t
                                              (_K89125_
                                               _rest89126_
                                               (cons _hd89124_ _r89127_))
                                              (_E8914089149_))
                                          (_E8914089149_))))
                                  (_E8914089149_))))
                           (_E8912989193_
                            (lambda ()
                              (if (gx#stx-pair? _e8912889145_)
                                  (let ((_e8913189165_
                                         (gx#syntax-e _e8912889145_)))
                                    (let ((_hd8913289168_
                                           (##car _e8913189165_))
                                          (_tl8913389170_
                                           (##cdr _e8913189165_)))
                                      (if (and (gx#identifier? _hd8913289168_)
                                               (gx#core-identifier=?
                                                _hd8913289168_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8913389170_)
                                              (let ((_e8913489173_
                                                     (gx#syntax-e
                                                      _tl8913389170_)))
                                                (let ((_hd8913589176_
                                                       (##car _e8913489173_))
                                                      (_tl8913689178_
                                                       (##cdr _e8913489173_)))
                                                  (let ((_hd-bind89181_
                                                         _hd8913589176_))
                                                    (if (gx#stx-pair?
                                                         _tl8913689178_)
                                                        (let ((_e8913789183_
                                                               (gx#syntax-e
                                                                _tl8913689178_)))
                                                          (let ((_hd8913889186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8913789183_))
                        (_tl8913989188_ (##cdr _e8913789183_)))
                    (let ((_expr89191_ _hd8913889186_))
                      (if (gx#stx-null? _tl8913989188_)
                          (if (gx#core-bind-values? _hd-bind89181_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89181_)
                                (_K89125_
                                 _rest89126_
                                 (cons _hd89124_ _r89127_)))
                              (_E8913089161_))
                          (_E8913089161_)))))
                (_E8913089161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8913089161_))
                                          (_E8913089161_))))
                                  (_E8913089161_)))))
                      (_E8912989193_))))
                 (_expand-body88996_
                  (lambda (_rbody88998_)
                    (let _lp89000_ ((_rest89002_ _rbody88998_)
                                    (_body89003_ '()))
                      (let* ((_rest8900489012_ _rest89002_)
                             (_else8900689020_ (lambda () _body89003_))
                             (_K8900889112_
                              (lambda (_rest89023_ _hd89024_)
                                (let* ((_e8902589046_ _hd89024_)
                                       (_E8904189050_
                                        (lambda ()
                                          (_lp89000_
                                           _rest89023_
                                           (cons (gx#core-expand-expression
                                                  _hd89024_)
                                                 _body89003_))))
                                       (_E8903789064_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8902589046_)
                                              (let ((_e8904289054_
                                                     (gx#syntax-e
                                                      _e8902589046_)))
                                                (let ((_hd8904389057_
                                                       (##car _e8904289054_))
                                                      (_tl8904489059_
                                                       (##cdr _e8904289054_)))
                                                  (let ((_form89062_
                                                         _hd8904389057_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form89062_
                                                         gx#special-form-binding?)
                                                        (_lp89000_
                                                         _rest89023_
                                                         (cons _hd89024_
                                                               _body89003_))
                                                        (_E8904189050_)))))
                                              (_E8904189050_))))
                                       (_E8902789076_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8902589046_)
                                              (let ((_e8903889068_
                                                     (gx#syntax-e
                                                      _e8902589046_)))
                                                (let ((_hd8903989071_
                                                       (##car _e8903889068_))
                                                      (_tl8904089073_
                                                       (##cdr _e8903889068_)))
                                                  (if (and (gx#identifier?
                                                            _hd8903989071_)
                                                           (gx#core-identifier=?
                                                            _hd8903989071_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp89000_
                                                           _rest89023_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89024_)
                         _body89003_))
                  (_E8903789064_))
              (_E8903789064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8903789064_))))
                                       (_E8902689108_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8902589046_)
                                              (let ((_e8902889080_
                                                     (gx#syntax-e
                                                      _e8902589046_)))
                                                (let ((_hd8902989083_
                                                       (##car _e8902889080_))
                                                      (_tl8903089085_
                                                       (##cdr _e8902889080_)))
                                                  (if (and (gx#identifier?
                                                            _hd8902989083_)
                                                           (gx#core-identifier=?
                                                            _hd8902989083_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8903089085_)
                                                          (let ((_e8903189088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8903089085_)))
                    (let ((_hd8903289091_ (##car _e8903189088_))
                          (_tl8903389093_ (##cdr _e8903189088_)))
                      (let ((_hd-bind89096_ _hd8903289091_))
                        (if (gx#stx-pair? _tl8903389093_)
                            (let ((_e8903489098_ (gx#syntax-e _tl8903389093_)))
                              (let ((_hd8903589101_ (##car _e8903489098_))
                                    (_tl8903689103_ (##cdr _e8903489098_)))
                                (let ((_expr89106_ _hd8903589101_))
                                  (if (gx#stx-null? _tl8903689103_)
                                      (if '#t
                                          (_lp89000_
                                           _rest89023_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind89096_)
                                                   (gx#core-expand-expression
                                                    _expr89106_))
                                                  (gx#stx-source _hd89024_))
                                                 _body89003_))
                                          (_E8902789076_))
                                      (_E8902789076_)))))
                            (_E8902789076_)))))
                  (_E8902789076_))
              (_E8902789076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8902789076_)))))
                                  (_E8902689108_)))))
                        (if (##pair? _rest8900489012_)
                            (let ((_hd8900989115_ (##car _rest8900489012_))
                                  (_tl8901089117_ (##cdr _rest8900489012_)))
                              (let* ((_hd89120_ _hd8900989115_)
                                     (_rest89122_ _tl8901089117_))
                                (_K8900889112_ _rest89122_ _hd89120_)))
                            (_else8900689020_)))))))
          (_expand-body88996_
           (gx#core-expand-block__%
            (cons '%#begin-module _body88993_)
            _expand-special88995_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx88836_
               _expanded?88837_
               _method88838_
               _current-phi88839_
               _expand188840_)
        (letrec ((_K88842_
                  (lambda (_rest88960_ _r88961_)
                    (let* ((_e8896288969_ _rest88960_)
                           (_E8896488973_ (lambda () _r88961_))
                           (_E8896388989_
                            (lambda ()
                              (if (gx#stx-pair? _e8896288969_)
                                  (let ((_e8896588977_
                                         (gx#syntax-e _e8896288969_)))
                                    (let ((_hd8896688980_
                                           (##car _e8896588977_))
                                          (_tl8896788982_
                                           (##cdr _e8896588977_)))
                                      (let* ((_hd88985_ _hd8896688980_)
                                             (_rest88987_ _tl8896788982_))
                                        (if '#t
                                            (_step88843_
                                             _hd88985_
                                             _rest88987_
                                             _r88961_)
                                            (_E8896488973_)))))
                                  (_E8896488973_)))))
                      (_E8896388989_))))
                 (_step88843_
                  (lambda (_hd88874_ _rest88875_ _r88876_)
                    (let* ((_e8887788895_ _hd88874_)
                           (_E8889088899_
                            (lambda ()
                              (if (_expanded?88837_ (gx#stx-e _hd88874_))
                                  (_K88842_
                                   _rest88875_
                                   (cons (gx#stx-e _hd88874_) _r88876_))
                                  (_expand188840_
                                   _hd88874_
                                   _K88842_
                                   _rest88875_
                                   _r88876_))))
                           (_E8888688915_
                            (lambda ()
                              (if (gx#stx-pair? _e8887788895_)
                                  (let ((_e8889188903_
                                         (gx#syntax-e _e8887788895_)))
                                    (let ((_hd8889288906_
                                           (##car _e8889188903_))
                                          (_tl8889388908_
                                           (##cdr _e8889188903_)))
                                      (let* ((_macro88911_ _hd8889288906_)
                                             (_body88913_ _tl8889388908_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro88911_
                                             gx#syntax-binding?)
                                            (_K88842_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro88911_)
                                                    _hd88874_
                                                    _method88838_)
                                                   _rest88875_)
                                             _r88876_)
                                            (_E8889088899_)))))
                                  (_E8889088899_))))
                           (_E8887988929_
                            (lambda ()
                              (if (gx#stx-pair? _e8887788895_)
                                  (let ((_e8888788919_
                                         (gx#syntax-e _e8887788895_)))
                                    (let ((_hd8888888922_
                                           (##car _e8888788919_))
                                          (_tl8888988924_
                                           (##cdr _e8888788919_)))
                                      (if (eq? (gx#stx-e _hd8888888922_)
                                               'begin:)
                                          (let ((_body88927_ _tl8888988924_))
                                            (if '#t
                                                (_K88842_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest88875_
                                                  _body88927_)
                                                 _r88876_)
                                                (_E8888688915_)))
                                          (_E8888688915_))))
                                  (_E8888688915_))))
                           (_E8887888956_
                            (lambda ()
                              (if (gx#stx-pair? _e8887788895_)
                                  (let ((_e8888088933_
                                         (gx#syntax-e _e8887788895_)))
                                    (let ((_hd8888188936_
                                           (##car _e8888088933_))
                                          (_tl8888288938_
                                           (##cdr _e8888088933_)))
                                      (if (eq? (gx#stx-e _hd8888188936_) 'phi:)
                                          (if (gx#stx-pair? _tl8888288938_)
                                              (let ((_e8888388941_
                                                     (gx#syntax-e
                                                      _tl8888288938_)))
                                                (let ((_hd8888488944_
                                                       (##car _e8888388941_))
                                                      (_tl8888588946_
                                                       (##cdr _e8888388941_)))
                                                  (let* ((_dphi88949_
                                                          _hd8888488944_)
                                                         (_body88951_
                                                          _tl8888588946_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi88949_)
                                                        (let ((_rbody88954_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K88842_ _body88951_ '()))
                        _current-phi88839_
                        (fx+ (gx#stx-e _dphi88949_) (_current-phi88839_)))))
                  (_K88842_ _rest88875_ (__foldr1 cons _r88876_ _rbody88954_)))
                (_E8887988929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8887988929_))
                                          (_E8887988929_))))
                                  (_E8887988929_)))))
                      (_E8887888956_)))))
          (let* ((_e8884488851_ _stx88836_)
                 (_E8884688855_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8884488851_)))
                 (_E8884588870_
                  (lambda ()
                    (if (gx#stx-pair? _e8884488851_)
                        (let ((_e8884788859_ (gx#syntax-e _e8884488851_)))
                          (let ((_hd8884888862_ (##car _e8884788859_))
                                (_tl8884988864_ (##cdr _e8884788859_)))
                            (let ((_body88867_ _tl8884988864_))
                              (if '#t
                                  (if (_current-phi88839_)
                                      (_K88842_ _body88867_ '())
                                      (__call-with-parameters
                                       (lambda () (_K88842_ _body88867_ '()))
                                       _current-phi88839_
                                       (gx#current-expander-phi)))
                                  (_E8884688855_)))))
                        (_E8884688855_)))))
            (_E8884588870_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx88502_ _internal-expand?88503_)
        (letrec ((_expand188505_
                  (lambda (_hd88816_ _K88817_ _rest88818_ _r88819_)
                    (if (gx#core-bound-module? _hd88816_)
                        (_import188506_
                         (gx#syntax-local-e__0 _hd88816_)
                         _K88817_
                         _rest88818_
                         _r88819_)
                        (if (gx#core-library-module-path? _hd88816_)
                            (_import188506_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd88816_))
                             _K88817_
                             _rest88818_
                             _r88819_)
                            (if (gx#core-library-relative-module-path?
                                 _hd88816_)
                                (_import188506_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd88816_))
                                 _K88817_
                                 _rest88818_
                                 _r88819_)
                                (let ((_e88821_ (gx#stx-e _hd88816_)))
                                  (if (pair? _e88821_)
                                      (let ((_$e88823_
                                             (gx#stx-e (car _e88821_))))
                                        (if (eq? 'spec: _$e88823_)
                                            (_import-spec88509_
                                             _hd88816_
                                             _K88817_
                                             _rest88818_
                                             _r88819_)
                                            (if (eq? 'in: _$e88823_)
                                                (_import-submodule88507_
                                                 _hd88816_
                                                 _K88817_
                                                 _rest88818_
                                                 _r88819_)
                                                (if (eq? 'runtime: _$e88823_)
                                                    (_import-runtime88508_
                                                     _hd88816_
                                                     _K88817_
                                                     _rest88818_
                                                     _r88819_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx88502_
                                                     _hd88816_)))))
                                      (if (string? _e88821_)
                                          (_import188506_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd88816_
                                             (gx#stx-source _stx88502_)))
                                           _K88817_
                                           _rest88818_
                                           _r88819_)
                                          (if (##structure-instance-of?
                                               _e88821_
                                               'gx#module-context::t)
                                              (_K88817_
                                               _rest88818_
                                               (cons _e88821_ _r88819_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx88502_
                                               _hd88816_))))))))))
                 (_import188506_
                  (lambda (_ctx88805_ _K88806_ _rest88807_ _r88808_)
                    (let ((_dphi88810_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K88806_
                       _rest88807_
                       (cons (##structure
                              gx#import-set::t
                              _ctx88805_
                              _dphi88810_
                              (map (lambda (_g8881188813_)
                                     (gx#core-module-export->import__%
                                      _g8881188813_
                                      '#f
                                      _dphi88810_))
                                   (##unchecked-structure-ref
                                    _ctx88805_
                                    '9
                                    '#f
                                    '#f)))
                             _r88808_)))))
                 (_import-submodule88507_
                  (lambda (_hd88772_ _K88773_ _rest88774_ _r88775_)
                    (let* ((_e8877688783_ _hd88772_)
                           (_E8877888787_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8877688783_)))
                           (_E8877788801_
                            (lambda ()
                              (if (gx#stx-pair? _e8877688783_)
                                  (let ((_e8877988791_
                                         (gx#syntax-e _e8877688783_)))
                                    (let ((_hd8878088794_
                                           (##car _e8877988791_))
                                          (_tl8878188796_
                                           (##cdr _e8877988791_)))
                                      (let ((_spath88799_ _tl8878188796_))
                                        (if '#t
                                            (_import188506_
                                             (_import-spec-source88510_
                                              _spath88799_)
                                             _K88773_
                                             _rest88774_
                                             _r88775_)
                                            (_E8877888787_)))))
                                  (_E8877888787_)))))
                      (_E8877788801_))))
                 (_import-runtime88508_
                  (lambda (_hd88739_ _K88740_ _rest88741_ _r88742_)
                    (let* ((_e8874388750_ _hd88739_)
                           (_E8874588754_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8874388750_)))
                           (_E8874488768_
                            (lambda ()
                              (if (gx#stx-pair? _e8874388750_)
                                  (let ((_e8874688758_
                                         (gx#syntax-e _e8874388750_)))
                                    (let ((_hd8874788761_
                                           (##car _e8874688758_))
                                          (_tl8874888763_
                                           (##cdr _e8874688758_)))
                                      (let ((_spath88766_ _tl8874888763_))
                                        (if '#t
                                            (_K88740_
                                             _rest88741_
                                             (cons (_import-spec-source88510_
                                                    _spath88766_)
                                                   _r88742_))
                                            (_E8874588754_)))))
                                  (_E8874588754_)))))
                      (_E8874488768_))))
                 (_import-spec88509_
                  (lambda (_hd88578_ _K88579_ _rest88580_ _r88581_)
                    (let* ((_e8858288599_ _hd88578_)
                           (_E8859188603_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8858288599_)))
                           (_E8858488713_
                            (lambda ()
                              (if (gx#stx-pair? _e8858288599_)
                                  (let ((_e8859288607_
                                         (gx#syntax-e _e8858288599_)))
                                    (let ((_hd8859388610_
                                           (##car _e8859288607_))
                                          (_tl8859488612_
                                           (##cdr _e8859288607_)))
                                      (if (gx#stx-pair? _tl8859488612_)
                                          (let ((_e8859588615_
                                                 (gx#syntax-e _tl8859488612_)))
                                            (let ((_hd8859688618_
                                                   (##car _e8859588615_))
                                                  (_tl8859788620_
                                                   (##cdr _e8859588615_)))
                                              (let* ((_path88623_
                                                      _hd8859688618_)
                                                     (_specs88625_
                                                      _tl8859788620_))
                                                (if '#t
                                                    (let ((_src-ctx88627_
                                                           (_import-spec-source88510_
                                                            _path88623_))
                                                          (_exports88628_
                                                           (make-hash-table))
                                                          (_specs88629_
                                                           (gx#syntax->list
                                                            _specs88625_)))
                                                      (for-each
                                                       (lambda (_out88631_)
                                                         (hash-put!
                                                          _exports88628_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out88631_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _out88631_ '4 '#f '#f))
                  _out88631_))
               (##unchecked-structure-ref _src-ctx88627_ '9 '#f '#f))
              (_K88579_
               _rest88580_
               (__foldl1
                (lambda (_spec88633_ _r88634_)
                  (let* ((_e8863588651_ _spec88633_)
                         (_E8863788655_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8863588651_)))
                         (_E8863688709_
                          (lambda ()
                            (if (gx#stx-pair? _e8863588651_)
                                (let ((_e8863888659_
                                       (gx#syntax-e _e8863588651_)))
                                  (let ((_hd8863988662_ (##car _e8863888659_))
                                        (_tl8864088664_ (##cdr _e8863888659_)))
                                    (let ((_phi88667_ _hd8863988662_))
                                      (if (gx#stx-pair? _tl8864088664_)
                                          (let ((_e8864188669_
                                                 (gx#syntax-e _tl8864088664_)))
                                            (let ((_hd8864288672_
                                                   (##car _e8864188669_))
                                                  (_tl8864388674_
                                                   (##cdr _e8864188669_)))
                                              (let ((_name88677_
                                                     _hd8864288672_))
                                                (if (gx#stx-pair?
                                                     _tl8864388674_)
                                                    (let ((_e8864488679_
                                                           (gx#syntax-e
                                                            _tl8864388674_)))
                                                      (let ((_hd8864588682_
                                                             (##car _e8864488679_))
                                                            (_tl8864688684_
                                                             (##cdr _e8864488679_)))
                                                        (let ((_src-phi88687_
                                                               _hd8864588682_))
                                                          (if (gx#stx-pair?
                                                               _tl8864688684_)
                                                              (let ((_e8864788689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl8864688684_)))
                        (let ((_hd8864888692_ (##car _e8864788689_))
                              (_tl8864988694_ (##cdr _e8864788689_)))
                          (let ((_src-name88697_ _hd8864888692_))
                            (if (gx#stx-null? _tl8864988694_)
                                (if (and (gx#stx-fixnum? _src-phi88687_)
                                         (gx#identifier? _src-name88697_)
                                         (gx#stx-fixnum? _phi88667_)
                                         (gx#identifier? _name88677_))
                                    (let ((_src-phi88699_
                                           (gx#stx-e _src-phi88687_))
                                          (_src-name88700_
                                           (gx#core-identifier-key
                                            _src-name88697_))
                                          (_phi88701_ (gx#stx-e _phi88667_))
                                          (_name88702_
                                           (gx#core-identifier-key
                                            _name88677_)))
                                      (let ((_$e88704_
                                             (hash-get
                                              _exports88628_
                                              (cons _src-phi88699_
                                                    _src-name88700_))))
                                        (if _$e88704_
                                            ((lambda (_out88707_)
                                               (cons (gx#core-module-export->import__%
                                                      _out88707_
                                                      _name88702_
                                                      (fx- _phi88701_
                                                           _src-phi88699_))
                                                     _r88634_))
                                             _$e88704_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx88502_
                                             _hd88578_))))
                                    (_E8863788655_))
                                (_E8863788655_)))))
                      (_E8863788655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8863788655_)))))
                                          (_E8863788655_)))))
                                (_E8863788655_)))))
                    (_E8863688709_)))
                _r88581_
                _specs88629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8859188603_)))))
                                          (_E8859188603_))))
                                  (_E8859188603_))))
                           (_E8858388735_
                            (lambda ()
                              (if (gx#stx-pair? _e8858288599_)
                                  (let ((_e8858588717_
                                         (gx#syntax-e _e8858288599_)))
                                    (let ((_hd8858688720_
                                           (##car _e8858588717_))
                                          (_tl8858788722_
                                           (##cdr _e8858588717_)))
                                      (if (gx#stx-pair? _tl8858788722_)
                                          (let ((_e8858888725_
                                                 (gx#syntax-e _tl8858788722_)))
                                            (let ((_hd8858988728_
                                                   (##car _e8858888725_))
                                                  (_tl8859088730_
                                                   (##cdr _e8858888725_)))
                                              (let ((_path88733_
                                                     _hd8858988728_))
                                                (if (gx#stx-null?
                                                     _tl8859088730_)
                                                    (if '#t
                                                        (_K88579_
                                                         _rest88580_
                                                         (cons (_import-spec-source88510_
                                                                _path88733_)
                                                               _r88581_))
                                                        (_E8858488713_))
                                                    (_E8858488713_)))))
                                          (_E8858488713_))))
                                  (_E8858488713_)))))
                      (_E8858388735_))))
                 (_import-spec-source88510_
                  (lambda (_spath88576_)
                    (gx#core-import-nested-module _spath88576_ _stx88502_)))
                 (_import!88511_
                  (lambda (_rbody88524_)
                    (letrec* ((_current-ctx88526_
                               (gx#current-expander-context))
                              (_deps88527_ (make-hash-table-eq))
                              (_bind!88528_
                               (lambda (_hd88574_)
                                 (gx#core-bind-import!__1
                                  _hd88574_
                                  _current-ctx88526_))))
                      (let _lp88530_ ((_rest88532_ _rbody88524_)
                                      (_body88533_ '()))
                        (let* ((_rest8853488542_ _rest88532_)
                               (_else8853688553_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx88526_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx88526_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _current-ctx88526_
                                         '8
                                         '#f
                                         '#f)
                                        _body88533_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx88550_ __88551_)
                                     (gx#eval-module _ctx88550_))
                                   _deps88527_)
                                  _body88533_))
                               (_K8853888562_
                                (lambda (_rest88556_ _hd88557_)
                                  (if (##structure-direct-instance-of?
                                       _hd88557_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!88528_ _hd88557_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd88557_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd88557_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _deps88527_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd88557_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd88557_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!88528_
                                             (##unchecked-structure-ref
                                              _hd88557_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd88557_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _deps88527_
                                                 (##unchecked-structure-ref
                                                  _hd88557_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e88559_
                                                 (##structure-instance-of?
                                                  _hd88557_
                                                  'gx#module-context::t)))
                                            (if _$e88559_
                                                _$e88559_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx88502_
                                                 _hd88557_)))))
                                  (_lp88530_
                                   _rest88556_
                                   (cons _hd88557_ _body88533_)))))
                          (if (##pair? _rest8853488542_)
                              (let ((_hd8853988565_ (##car _rest8853488542_))
                                    (_tl8854088567_ (##cdr _rest8853488542_)))
                                (let* ((_hd88570_ _hd8853988565_)
                                       (_rest88572_ _tl8854088567_))
                                  (_K8853888562_ _rest88572_ _hd88570_)))
                              (_else8853688553_)))))))
                 (_expanded-import?88512_
                  (lambda (_e88516_)
                    (let ((_$e88518_
                           (##structure-direct-instance-of?
                            _e88516_
                            'gx#import-set::t)))
                      (if _$e88518_
                          _$e88518_
                          (let ((_$e88521_
                                 (##structure-direct-instance-of?
                                  _e88516_
                                  'gx#module-import::t)))
                            (if _$e88521_
                                _$e88521_
                                (##structure-instance-of?
                                 _e88516_
                                 'gx#module-context::t))))))))
          (let ((_rbody88514_
                 (gx#core-expand-import/export
                  _stx88502_
                  _expanded-import?88512_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand188505_)))
            (if _internal-expand?88503_
                (reverse _rbody88514_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!88511_ _rbody88514_))
                 (gx#stx-source _stx88502_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx88829_)
        (let ((_internal-expand?88831_ '#f))
          (gx#core-expand-import%__% _stx88829_ _internal-expand?88831_))))
    (define gx#core-expand-import%
      (lambda _g91398_
        (let ((_g91397_ (##length _g91398_)))
          (cond ((##fx= _g91397_ 1)
                 (apply (lambda (_stx88829_)
                          (gx#core-expand-import%__0 _stx88829_))
                        _g91398_))
                ((##fx= _g91397_ 2)
                 (apply (lambda (_stx88833_ _internal-expand?88834_)
                          (gx#core-expand-import%__%
                           _stx88833_
                           _internal-expand?88834_))
                        _g91398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g91398_))))))
    (define gx#core-import-nested-module
      (lambda (_spath88429_ _where88430_)
        (let* ((_e8843188438_ _spath88429_)
               (_E8843388442_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8843188438_)))
               (_E8843288497_
                (lambda ()
                  (if (gx#stx-pair? _e8843188438_)
                      (let ((_e8843488446_ (gx#syntax-e _e8843188438_)))
                        (let ((_hd8843588449_ (##car _e8843488446_))
                              (_tl8843688451_ (##cdr _e8843488446_)))
                          (let* ((_origin88454_ _hd8843588449_)
                                 (_sub88456_ _tl8843688451_))
                            (if '#t
                                (let ((_origin-ctx88458_
                                       (if (gx#stx-false? _origin88454_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin88454_))))
                                  (let _lp88460_ ((_rest88462_ _sub88456_)
                                                  (_ctx88463_
                                                   _origin-ctx88458_))
                                    (let* ((_e8846488471_ _rest88462_)
                                           (_E8846688475_
                                            (lambda () _ctx88463_))
                                           (_E8846588493_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8846488471_)
                                                  (let ((_e8846788479_
                                                         (gx#syntax-e
                                                          _e8846488471_)))
                                                    (let ((_hd8846888482_
                                                           (##car _e8846788479_))
                                                          (_tl8846988484_
                                                           (##cdr _e8846788479_)))
                                                      (let* ((_id88487_
                                                              _hd8846888482_)
                                                             (_rest88489_
                                                              _tl8846988484_))
                                                        (if '#t
                                                            (let ((_bind88491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id88487_ '0 _ctx88463_)))
                      (if (and (##structure-direct-instance-of?
                                _bind88491_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind88491_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where88430_
                           _spath88429_
                           _id88487_))
                      (_lp88460_
                       _rest88489_
                       (##unchecked-structure-ref _bind88491_ '4 '#f '#f)))
                    (_E8846688475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8846688475_)))))
                                      (_E8846588493_))))
                                (_E8843388442_)))))
                      (_E8843388442_)))))
          (_E8843288497_))))
    (define gx#core-expand-import-source
      (lambda (_hd88427_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd88427_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx87935_ _internal-expand?87936_)
        (letrec* ((_make-export__9132891329_
                   (lambda (_bind88375_ _phi88376_ _ctx88377_ _name88378_)
                     (let* ((_key88380_
                             (##unchecked-structure-ref
                              _bind88375_
                              '2
                              '#f
                              '#f))
                            (_export-key88382_
                             (if _name88378_
                                 (gx#core-identifier-key _name88378_)
                                 _key88380_)))
                       (##structure
                        gx#module-export::t
                        _ctx88377_
                        _key88380_
                        _phi88376_
                        _export-key88382_
                        (let ((_$e88385_
                               (##structure-instance-of?
                                _bind88375_
                                'gx#extern-binding::t)))
                          (if _$e88385_
                              _$e88385_
                              (##structure-direct-instance-of?
                               _bind88375_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9133091333_
                   (lambda (_bind88391_)
                     (let* ((_phi88393_ (gx#current-export-expander-phi))
                            (_ctx88395_ (gx#current-expander-context))
                            (_name88397_ '#f))
                       (_make-export__9132891329_
                        _bind88391_
                        _phi88393_
                        _ctx88395_
                        _name88397_))))
                  (_make-export__1__9133191334_
                   (lambda (_bind88399_ _phi88400_)
                     (let* ((_ctx88402_ (gx#current-expander-context))
                            (_name88404_ '#f))
                       (_make-export__9132891329_
                        _bind88399_
                        _phi88400_
                        _ctx88402_
                        _name88404_))))
                  (_make-export__2__9133291335_
                   (lambda (_bind88406_ _phi88407_ _ctx88408_)
                     (let ((_name88410_ '#f))
                       (_make-export__9132891329_
                        _bind88406_
                        _phi88407_
                        _ctx88408_
                        _name88410_))))
                  (_make-export87938_
                   (lambda _g91400_
                     (let ((_g91399_ (##length _g91400_)))
                       (cond ((##fx= _g91399_ 1)
                              (apply (lambda (_bind88391_)
                                       (_make-export__0__9133091333_
                                        _bind88391_))
                                     _g91400_))
                             ((##fx= _g91399_ 2)
                              (apply (lambda (_bind88399_ _phi88400_)
                                       (_make-export__1__9133191334_
                                        _bind88399_
                                        _phi88400_))
                                     _g91400_))
                             ((##fx= _g91399_ 3)
                              (apply (lambda (_bind88406_
                                              _phi88407_
                                              _ctx88408_)
                                       (_make-export__2__9133291335_
                                        _bind88406_
                                        _phi88407_
                                        _ctx88408_))
                                     _g91400_))
                             ((##fx= _g91399_ 4)
                              (apply (lambda (_bind88412_
                                              _phi88413_
                                              _ctx88414_
                                              _name88415_)
                                       (_make-export__9132891329_
                                        _bind88412_
                                        _phi88413_
                                        _ctx88414_
                                        _name88415_))
                                     _g91400_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g91400_))))))
                  (_expand187939_
                   (lambda (_hd88088_ _K88089_ _rest88090_ _r88091_)
                     (let* ((_e8809288124_ _hd88088_)
                            (_E8811988128_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx87935_
                                _hd88088_)))
                            (_E8810988207_
                             (lambda ()
                               (if (gx#stx-pair? _e8809288124_)
                                   (let ((_e8812088132_
                                          (gx#syntax-e _e8809288124_)))
                                     (let ((_hd8812188135_
                                            (##car _e8812088132_))
                                           (_tl8812288137_
                                            (##cdr _e8812088132_)))
                                       (if (eq? (gx#stx-e _hd8812188135_)
                                                'import:)
                                           (let ((_in88140_ _tl8812288137_))
                                             (if (gx#stx-list? _in88140_)
                                                 (let _lp88142_ ((_in-rest88144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in88140_)
                         (_r88145_ _r88091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8814688153_
                                                           _in-rest88144_)
                                                          (_E8814888157_
                                                           (lambda ()
                                                             (_K88089_
                                                              _rest88090_
                                                              _r88145_)))
                                                          (_E8814788203_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8814688153_)
                         (let ((_e8814988161_ (gx#syntax-e _e8814688153_)))
                           (let ((_hd8815088164_ (##car _e8814988161_))
                                 (_tl8815188166_ (##cdr _e8814988161_)))
                             (let* ((_hd88169_ _hd8815088164_)
                                    (_in-rest88171_ _tl8815188166_))
                               (if '#t
                                   (let ((_src88201_
                                          (if (gx#core-bound-module? _hd88169_)
                                              (gx#syntax-local-e__0 _hd88169_)
                                              (if (gx#core-library-module-path?
                                                   _hd88169_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd88169_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd88169_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd88169_))
                                                      (if (gx#stx-string?
                                                           _hd88169_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd88169_
                                                            (gx#stx-source
                                                             _stx87935_)))
                                                          (let* ((_e8817288179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd88169_)
                         (_E8817488183_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx87935_
                             _hd88169_)))
                         (_E8817388197_
                          (lambda ()
                            (if (gx#stx-pair? _e8817288179_)
                                (let ((_e8817588187_
                                       (gx#syntax-e _e8817288179_)))
                                  (let ((_hd8817688190_ (##car _e8817588187_))
                                        (_tl8817788192_ (##cdr _e8817588187_)))
                                    (if (eq? (gx#stx-e _hd8817688190_) 'in:)
                                        (let ((_spath88195_ _tl8817788192_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath88195_
                                               _stx87935_)
                                              (_E8817488183_)))
                                        (_E8817488183_))))
                                (_E8817488183_)))))
                    (_E8817388197_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp88142_
                                      _in-rest88171_
                                      (_export-imports87940_
                                       _src88201_
                                       _r88145_)))
                                   (_E8814888157_)))))
                         (_E8814888157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8814788203_)))
                                                 (_E8811988128_)))
                                           (_E8811988128_))))
                                   (_E8811988128_))))
                            (_E8809688246_
                             (lambda ()
                               (if (gx#stx-pair? _e8809288124_)
                                   (let ((_e8811088211_
                                          (gx#syntax-e _e8809288124_)))
                                     (let ((_hd8811188214_
                                            (##car _e8811088211_))
                                           (_tl8811288216_
                                            (##cdr _e8811088211_)))
                                       (if (eq? (gx#stx-e _hd8811188214_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8811288216_)
                                               (let ((_e8811388219_
                                                      (gx#syntax-e
                                                       _tl8811288216_)))
                                                 (let ((_hd8811488222_
                                                        (##car _e8811388219_))
                                                       (_tl8811588224_
                                                        (##cdr _e8811388219_)))
                                                   (let ((_id88227_
                                                          _hd8811488222_))
                                                     (if (gx#stx-pair?
                                                          _tl8811588224_)
                                                         (let ((_e8811688229_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8811588224_)))
                   (let ((_hd8811788232_ (##car _e8811688229_))
                         (_tl8811888234_ (##cdr _e8811688229_)))
                     (let ((_name88237_ _hd8811788232_))
                       (if (gx#stx-null? _tl8811888234_)
                           (if '#t
                               (let* ((_phi88239_
                                       (gx#current-export-expander-phi))
                                      (_$e88241_
                                       (gx#core-resolve-identifier__1
                                        _id88227_
                                        _phi88239_)))
                                 (if _$e88241_
                                     ((lambda (_bind88244_)
                                        (_K88089_
                                         _rest88090_
                                         (cons (_make-export__9132891329_
                                                _bind88244_
                                                _phi88239_
                                                (gx#current-expander-context)
                                                _name88237_)
                                               _r88091_)))
                                      _$e88241_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx87935_
                                      _hd88088_
                                      _id88227_)))
                               (_E8810988207_))
                           (_E8810988207_)))))
                 (_E8810988207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8810988207_))
                                           (_E8810988207_))))
                                   (_E8810988207_))))
                            (_E8809588295_
                             (lambda ()
                               (if (gx#stx-pair? _e8809288124_)
                                   (let ((_e8809788250_
                                          (gx#syntax-e _e8809288124_)))
                                     (let ((_hd8809888253_
                                            (##car _e8809788250_))
                                           (_tl8809988255_
                                            (##cdr _e8809788250_)))
                                       (if (eq? (gx#stx-e _hd8809888253_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8809988255_)
                                               (let ((_e8810088258_
                                                      (gx#syntax-e
                                                       _tl8809988255_)))
                                                 (let ((_hd8810188261_
                                                        (##car _e8810088258_))
                                                       (_tl8810288263_
                                                        (##cdr _e8810088258_)))
                                                   (let ((_phi88266_
                                                          _hd8810188261_))
                                                     (if (gx#stx-pair?
                                                          _tl8810288263_)
                                                         (let ((_e8810388268_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8810288263_)))
                   (let ((_hd8810488271_ (##car _e8810388268_))
                         (_tl8810588273_ (##cdr _e8810388268_)))
                     (let ((_id88276_ _hd8810488271_))
                       (if (gx#stx-pair? _tl8810588273_)
                           (let ((_e8810688278_ (gx#syntax-e _tl8810588273_)))
                             (let ((_hd8810788281_ (##car _e8810688278_))
                                   (_tl8810888283_ (##cdr _e8810688278_)))
                               (let ((_name88286_ _hd8810788281_))
                                 (if (gx#stx-null? _tl8810888283_)
                                     (if (and (gx#stx-fixnum? _phi88266_)
                                              (gx#identifier? _id88276_)
                                              (gx#identifier? _name88286_))
                                         (let* ((_phi88288_
                                                 (gx#stx-e _phi88266_))
                                                (_$e88290_
                                                 (gx#core-resolve-identifier__1
                                                  _id88276_
                                                  _phi88288_)))
                                           (if _$e88290_
                                               ((lambda (_bind88293_)
                                                  (_K88089_
                                                   _rest88090_
                                                   (cons (_make-export__9132891329_
                                                          _bind88293_
                                                          _phi88288_
                                                          (gx#current-expander-context)
                                                          _name88286_)
                                                         _r88091_)))
                                                _$e88290_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx87935_
                                                _hd88088_
                                                _id88276_)))
                                         (_E8809688246_))
                                     (_E8809688246_)))))
                           (_E8809688246_)))))
                 (_E8809688246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8809688246_))
                                           (_E8809688246_))))
                                   (_E8809688246_))))
                            (_E8809488306_
                             (lambda ()
                               (let ((_id88299_ _e8809288124_))
                                 (if (gx#identifier? _id88299_)
                                     (let ((_$e88301_
                                            (gx#core-resolve-identifier__1
                                             _id88299_
                                             (gx#current-export-expander-phi))))
                                       (if _$e88301_
                                           ((lambda (_bind88304_)
                                              (_K88089_
                                               _rest88090_
                                               (cons (_make-export__0__9133091333_
                                                      _bind88304_)
                                                     _r88091_)))
                                            _$e88301_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx87935_
                                            _hd88088_)))
                                     (_E8809588295_)))))
                            (_E8809388370_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8809288124_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx88310_
                                               (gx#current-expander-context))
                                              (_current-phi88312_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx88314_
                                               (gx#core-context-shift
                                                _current-ctx88310_
                                                _current-phi88312_))
                                              (_phi-bind88316_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx88314_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _lp88319_ ((_bind-rest88321_
                                                          _phi-bind88316_)
                                                         (_set88322_ '()))
                                           (let* ((_bind-rest8832388333_
                                                   _bind-rest88321_)
                                                  (_else8832588341_
                                                   (lambda ()
                                                     (_K88089_
                                                      _rest88090_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi88312_
                                                             _set88322_)
                                                            _r88091_))))
                                                  (_K8832788351_
                                                   (lambda (_bind-rest88344_
                                                            _bind88345_
                                                            _key88346_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind88345_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind88345_))
                                                         (_lp88319_
                                                          _bind-rest88344_
                                                          _set88322_)
                                                         (_lp88319_
                                                          _bind-rest88344_
                                                          (cons (_make-export__2__9133291335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind88345_
                         _current-phi88312_
                         _current-ctx88310_)
                        _set88322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8832388333_)
                                                 (let ((_hd8832888354_
                                                        (##car _bind-rest8832388333_))
                                                       (_tl8832988356_
                                                        (##cdr _bind-rest8832388333_)))
                                                   (if (##pair? _hd8832888354_)
                                                       (let ((_hd8833088359_
                                                              (##car _hd8832888354_))
                                                             (_tl8833188361_
                                                              (##cdr _hd8832888354_)))
                                                         (let* ((_key88364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8833088359_)
                        (_bind88366_ _tl8833188361_)
                        (_bind-rest88368_ _tl8832988356_))
                   (_K8832788351_ _bind-rest88368_ _bind88366_ _key88364_)))
               (_else8832588341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8832588341_)))))
                                       (_E8809488306_))
                                   (_E8809488306_)))))
                       (_E8809388370_))))
                  (_export-imports87940_
                   (lambda (_src87964_ _r87965_)
                     (letrec* ((_current-ctx87967_
                                (gx#current-expander-context))
                               (_current-phi87968_
                                (gx#current-export-expander-phi))
                               (_import->export87969_
                                (lambda (_in88050_)
                                  (let* ((_in8805188059_ _in88050_)
                                         (_E8805388063_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8805188059_)))
                                         (_K8805488070_
                                          (lambda (_phi88066_
                                                   _key88067_
                                                   _out88068_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx87967_
                                             _key88067_
                                             _phi88066_
                                             _key88067_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8805188059_
                                         'gx#module-import::t)
                                        (let* ((_e8805588073_
                                                (##unchecked-structure-ref
                                                 _in8805188059_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_out88076_ _e8805588073_)
                                               (_e8805688078_
                                                (##unchecked-structure-ref
                                                 _in8805188059_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_key88081_ _e8805688078_)
                                               (_e8805788083_
                                                (##unchecked-structure-ref
                                                 _in8805188059_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_phi88086_ _e8805788083_))
                                          (_K8805488070_
                                           _phi88086_
                                           _key88081_
                                           _out88076_))
                                        (_E8805388063_)))))
                               (_fold-e87970_
                                (lambda (_in87972_ _r87973_)
                                  (let* ((_in8797487988_ _in87972_)
                                         (_else8797787996_
                                          (lambda () _r87973_)))
                                    (let ((_K8798388032_
                                           (lambda (_phi88028_
                                                    _key88029_
                                                    _out88030_)
                                             (if (and (fx= _phi88028_
                                                           _current-phi87968_)
                                                      (eq? _src87964_
                                                           (##unchecked-structure-ref
                                                            _out88030_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_import->export87969_
                                                        _in87972_)
                                                       _r87973_)
                                                 _r87973_)))
                                          (_K8797988007_
                                           (lambda (_imports88000_
                                                    _phi88001_
                                                    _ctx88002_)
                                             (if (and (fx= _phi88001_
                                                           _current-phi87968_)
                                                      (eq? _src87964_
                                                           _ctx88002_))
                                                 (__foldl1
                                                  (lambda (_in88004_ _r88005_)
                                                    (cons (_import->export87969_
                                                           _in88004_)
                                                          _r88005_))
                                                  _r87973_
                                                  _imports88000_)
                                                 _r87973_))))
                                      (let ((_try-match8797688025_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8797487988_
                                                    'gx#import-set::t)
                                                   (let* ((_e8798088010_
                                                           (##unchecked-structure-ref
                                                            _in8797487988_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_e8798188015_
                                                           (##unchecked-structure-ref
                                                            _in8797487988_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_e8798288020_
                                                           (##unchecked-structure-ref
                                                            _in8797487988_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_ctx88013_
                                                            _e8798088010_)
                                                           (_phi88018_
                                                            _e8798188015_)
                                                           (_imports88023_
                                                            _e8798288020_))
                                                       (_K8797988007_
                                                        _imports88023_
                                                        _phi88018_
                                                        _ctx88013_)))
                                                   (_else8797787996_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8797487988_
                                             'gx#module-import::t)
                                            (let* ((_e8798488035_
                                                    (##unchecked-structure-ref
                                                     _in8797487988_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_e8798588040_
                                                    (##unchecked-structure-ref
                                                     _in8797487988_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_e8798688045_
                                                    (##unchecked-structure-ref
                                                     _in8797487988_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_out88038_ _e8798488035_)
                                                    (_key88043_ _e8798588040_)
                                                    (_phi88048_ _e8798688045_))
                                                (_K8798388032_
                                                 _phi88048_
                                                 _key88043_
                                                 _out88038_)))
                                            (_try-match8797688025_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src87964_
                              _current-phi87968_
                              (__foldl1
                               _fold-e87970_
                               '()
                               (##unchecked-structure-ref
                                _current-ctx87967_
                                '8
                                '#f
                                '#f)))
                             _r87965_))))
                  (_export!87941_
                   (lambda (_rbody87954_)
                     (letrec* ((_current-ctx87956_
                                (gx#current-expander-context))
                               (_fold-e87957_
                                (lambda (_out87961_ _r87962_)
                                  (if (##structure-direct-instance-of?
                                       _out87961_
                                       'gx#module-export::t)
                                      (cons _out87961_ _r87962_)
                                      (if (##structure-direct-instance-of?
                                           _out87961_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _r87962_
                                           (##unchecked-structure-ref
                                            _out87961_
                                            '3
                                            '#f
                                            '#f))
                                          _r87962_)))))
                       (let ((_body87959_ (reverse _rbody87954_)))
                         (##unchecked-structure-set!
                          _current-ctx87956_
                          (__foldl1
                           _fold-e87957_
                           (##unchecked-structure-ref
                            _current-ctx87956_
                            '9
                            '#f
                            '#f)
                           _body87959_)
                          '9
                          '#f
                          '#f)
                         _body87959_))))
                  (_expanded-export?87942_
                   (lambda (_e87949_)
                     (let ((_$e87951_
                            (##structure-direct-instance-of?
                             _e87949_
                             'gx#module-export::t)))
                       (if _$e87951_
                           _$e87951_
                           (##structure-direct-instance-of?
                            _e87949_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?87936_)
              (let ((_rbody87947_
                     (gx#core-expand-import/export
                      _stx87935_
                      _expanded-export?87942_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand187939_)))
                (if _internal-expand?87936_
                    (reverse _rbody87947_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!87941_ _rbody87947_))
                     (gx#stx-source _stx87935_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx87935_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx87935_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx88420_)
        (let ((_internal-expand?88422_ '#f))
          (gx#core-expand-export%__% _stx88420_ _internal-expand?88422_))))
    (define gx#core-expand-export%
      (lambda _g91402_
        (let ((_g91401_ (##length _g91402_)))
          (cond ((##fx= _g91401_ 1)
                 (apply (lambda (_stx88420_)
                          (gx#core-expand-export%__0 _stx88420_))
                        _g91402_))
                ((##fx= _g91401_ 2)
                 (apply (lambda (_stx88424_ _internal-expand?88425_)
                          (gx#core-expand-export%__%
                           _stx88424_
                           _internal-expand?88425_))
                        _g91402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g91402_))))))
    (define gx#core-expand-export-source
      (lambda (_hd87932_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd87932_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx87902_)
        (let* ((_e8790387910_ _stx87902_)
               (_E8790587914_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8790387910_)))
               (_E8790487928_
                (lambda ()
                  (if (gx#stx-pair? _e8790387910_)
                      (let ((_e8790687918_ (gx#syntax-e _e8790387910_)))
                        (let ((_hd8790787921_ (##car _e8790687918_))
                              (_tl8790887923_ (##cdr _e8790687918_)))
                          (let ((_body87926_ _tl8790887923_))
                            (if (gx#identifier-list? _body87926_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body87926_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body87926_))
                                   (gx#stx-source _stx87902_)))
                                (_E8790587914_)))))
                      (_E8790587914_)))))
          (_E8790487928_))))
    (define gx#core-bind-feature!__%
      (lambda (_id87868_ _private?87869_ _phi87870_ _ctx87871_)
        (gx#core-bind-syntax!__%
         _id87868_
         ((if _private?87869_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id87868_))
         _private?87869_
         _phi87870_
         _ctx87871_)))
    (define gx#core-bind-feature!__0
      (lambda (_id87876_)
        (let* ((_private?87878_ '#f)
               (_phi87880_ (gx#current-expander-phi))
               (_ctx87882_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id87876_
           _private?87878_
           _phi87880_
           _ctx87882_))))
    (define gx#core-bind-feature!__1
      (lambda (_id87884_ _private?87885_)
        (let* ((_phi87887_ (gx#current-expander-phi))
               (_ctx87889_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id87884_
           _private?87885_
           _phi87887_
           _ctx87889_))))
    (define gx#core-bind-feature!__2
      (lambda (_id87891_ _private?87892_ _phi87893_)
        (let ((_ctx87895_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id87891_
           _private?87892_
           _phi87893_
           _ctx87895_))))
    (define gx#core-bind-feature!
      (lambda _g91404_
        (let ((_g91403_ (##length _g91404_)))
          (cond ((##fx= _g91403_ 1)
                 (apply (lambda (_id87876_)
                          (gx#core-bind-feature!__0 _id87876_))
                        _g91404_))
                ((##fx= _g91403_ 2)
                 (apply (lambda (_id87884_ _private?87885_)
                          (gx#core-bind-feature!__1 _id87884_ _private?87885_))
                        _g91404_))
                ((##fx= _g91403_ 3)
                 (apply (lambda (_id87891_ _private?87892_ _phi87893_)
                          (gx#core-bind-feature!__2
                           _id87891_
                           _private?87892_
                           _phi87893_))
                        _g91404_))
                ((##fx= _g91403_ 4)
                 (apply (lambda (_id87897_
                                 _private?87898_
                                 _phi87899_
                                 _ctx87900_)
                          (gx#core-bind-feature!__%
                           _id87897_
                           _private?87898_
                           _phi87899_
                           _ctx87900_))
                        _g91404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g91404_))))))))
