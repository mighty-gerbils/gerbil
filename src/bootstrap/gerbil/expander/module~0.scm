(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1781138355)
  (begin
    (declare (not safe))
    (define gx#__module-registry
      (make-hash-table__%
       '#f
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value))
    (define gx#__module-pkg-cache
      (make-hash-table__%
       '#f
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value))
    (define gx#module-import::t
      (__make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args187893%_
        (apply make-instance gx#module-import::t _%$args187893%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args187890%_
        (apply make-instance gx#module-export::t _%$args187890%_)))
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
      (lambda _%$args187887%_
        (apply make-instance gx#import-set::t _%$args187887%_)))
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
      (lambda _%$args187884%_
        (apply make-instance gx#export-set::t _%$args187884%_)))
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
      (lambda _%$args187881%_
        (apply make-instance gx#import-expander::t _%$args187881%_)))
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
      (lambda _%$args187878%_
        (apply make-instance gx#export-expander::t _%$args187878%_)))
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
      (lambda _%$args187875%_
        (apply make-instance gx#import-export-expander::t _%$args187875%_)))
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
      (lambda (_%path187872%_ _%fun187873%_)
        (call-with-input-file
         (cons 'path: (cons _%path187872%_ gx#source-file-settings))
         _%fun187873%_)))
    (define gx#module-context:::init!
      (lambda (_%self187855%_
               _%id187856%_
               _%super187857%_
               _%ns187858%_
               _%path187859%_)
        (let ((_%self187862%_ _%self187855%_))
          (if (##fx< '11 (##structure-length _%self187862%_))
              (begin
                (##unchecked-structure-set!
                 _%self187862%_
                 _%id187856%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187862%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187862%_
                 _%super187857%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187862%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self187862%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self187862%_
                 _%ns187858%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187862%_
                 _%path187859%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187862%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self187862%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self187862%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self187862%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187862%_
                     '11
                     (##structure-length _%self187862%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self187688%_ _%ctx187689%_ _%root187690%_)
        (let* ((_%self187693%_ _%self187688%_)
               (_%super187709%_
                (let ((_%$e187703%_ _%root187690%_))
                  (if _%$e187703%_
                      _%$e187703%_
                      (let ((_%$e187706%_ (gx#core-context-root__0)))
                        (if _%$e187706%_
                            _%$e187706%_
                            (let ((__obj187937
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor187938
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj187937
                                      ':init!)))
                                (if __constructor187938
                                    (__constructor187938 __obj187937)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj187937)))))))
          (if _%ctx187689%_
              (let ((_%id187712%_
                     (##structure-ref
                      _%ctx187689%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path187713%_
                     (##structure-ref
                      _%ctx187689%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in187714%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx187689%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e187715%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx187689%_)))))
                (if (##fx< '8 (##structure-length _%self187693%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self187693%_
                       _%id187712%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187693%_
                       (make-hash-table-eq 'size: (##length _%in187714%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187693%_
                       _%super187709%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187693%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187693%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187693%_
                       _%path187713%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187693%_
                       _%in187714%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187693%_
                       _%e187715%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self187693%_
                           '8
                           (##structure-length _%self187693%_)))
                (##for-each
                 (lambda (_%$%g187716187718%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g187716187718%_
                    _%self187693%_))
                 _%in187714%_))
              (if (##fx< '8 (##structure-length _%self187693%_))
                  (begin
                    (##unchecked-structure-set! _%self187693%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self187693%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self187693%_
                     _%super187709%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self187693%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self187693%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self187693%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self187693%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self187693%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self187693%_
                         '8
                         (##structure-length _%self187693%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self187724%_ _%ctx187725%_)
        (let ((_%root187727%_ '#f))
          (gx#prelude-context:::init!__%
           _%self187724%_
           _%ctx187725%_
           _%root187727%_))))
    (define gx#prelude-context:::init!
      (lambda _g187944_
        (let ((_g187945_ (##length _g187944_)))
          (cond ((##fx= _g187945_ 2)
                 (apply gx#prelude-context:::init!__0 _g187944_))
                ((##fx= _g187945_ 3)
                 (apply gx#prelude-context:::init!__% _g187944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g187944_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self187562%_ _%e187563%_)
        (if (##fx< '3 (##structure-length _%self187562%_))
            (begin
              (##unchecked-structure-set!
               _%self187562%_
               _%e187563%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self187562%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self187562%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self187562%_
                   '3
                   (##structure-length _%self187562%_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_%$%g187188187191%_ _%$%g187189187193%_)
        (gx#core-apply-user-expander__%
         _%$%g187188187191%_
         _%$%g187189187193%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g187059187062%_ _%$%g187060187064%_)
        (gx#core-apply-user-expander__%
         _%$%g187059187062%_
         _%$%g187060187064%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx186930%_)
        (let* ((_%path186932%_
                (##structure-ref _%ctx186930%_ '7 gx#module-context::t '#f))
               (_%path186934%_
                (if (pair? _%path186932%_)
                    (##last _%path186932%_)
                    _%path186932%_)))
          (if (string? _%path186934%_) _%path186934%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path186906%_ _%reload?186907%_ _%eval?186908%_)
        (let ((_%ctx186910%_
               ((gx#current-expander-module-import)
                _%path186906%_
                _%reload?186907%_)))
          (if (and _%ctx186910%_ _%eval?186908%_)
              (gx#eval-module _%ctx186910%_)
              '#!void)
          _%ctx186910%_)))
    (define gx#import-module__0
      (lambda (_%path186915%_)
        (let* ((_%reload?186917%_ '#f) (_%eval?186919%_ '#f))
          (gx#import-module__%
           _%path186915%_
           _%reload?186917%_
           _%eval?186919%_))))
    (define gx#import-module__1
      (lambda (_%path186921%_ _%reload?186922%_)
        (let ((_%eval?186924%_ '#f))
          (gx#import-module__%
           _%path186921%_
           _%reload?186922%_
           _%eval?186924%_))))
    (define gx#import-module
      (lambda _g187946_
        (let ((_g187947_ (##length _g187946_)))
          (cond ((##fx= _g187947_ 1) (apply gx#import-module__0 _g187946_))
                ((##fx= _g187947_ 2) (apply gx#import-module__1 _g187946_))
                ((##fx= _g187947_ 3) (apply gx#import-module__% _g187946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g187946_))))))
    (define gx#eval-module
      (lambda (_%mod186903%_)
        ((gx#current-expander-module-eval) _%mod186903%_)))
    (define gx#core-eval-module
      (lambda (_%obj186882%_)
        (letrec ((_%force-e186884%_
                  (lambda (_%getf186898%_ _%e186899%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf186898%_ _%e186899%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e186899%_))))
          (let _%recur186886%_ ((_%e186888%_ _%obj186882%_))
            (if (##structure-instance-of? _%e186888%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e186891%_
                         (gx#core-context-prelude__% _%e186888%_)))
                    (if _%$e186891%_ (_%recur186886%_ _%$e186891%_) '#!void))
                  (_%force-e186884%_ gx#module-context-e _%e186888%_))
                (if (##structure-instance-of?
                     _%e186888%_
                     'gx#prelude-context::t)
                    (_%force-e186884%_ gx#prelude-context-e _%e186888%_)
                    (if (gx#stx-string? _%e186888%_)
                        (_%recur186886%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e186888%_)))
                        (if (gx#core-library-module-path? _%e186888%_)
                            (_%recur186886%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e186888%_)))
                            (error '"cannot eval module" _%obj186882%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx186862%_)
        (let _%lp186864%_ ((_%e186866%_ _%ctx186862%_))
          (if (or (##structure-instance-of? _%e186866%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e186866%_ 'gx#local-context::t))
              (_%lp186864%_ (##unchecked-structure-ref _%e186866%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e186866%_ 'gx#prelude-context::t)
                  _%e186866%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx186878%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx186878%_))))
    (define gx#core-context-prelude
      (lambda _g187948_
        (let ((_g187949_ (##length _g187948_)))
          (cond ((##fx= _g187949_ 0)
                 (apply gx#core-context-prelude__0 _g187948_))
                ((##fx= _g187949_ 1)
                 (apply gx#core-context-prelude__% _g187948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g187948_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx186853%_)
        (let ((_%$e186855%_ (__hash-get gx#__module-registry _%ctx186853%_)))
          (if _%$e186855%_
              _%$e186855%_
              (let ((_%pre186859%_
                     (let ((__obj187939
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
                       (gx#prelude-context:::init!__0
                        __obj187939
                        _%ctx186853%_)
                       __obj187939)))
                (__hash-put! gx#__module-registry _%ctx186853%_ _%pre186859%_)
                _%pre186859%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath186721%_ _%reload?186722%_)
        (letrec ((_%import-source186724%_
                  (lambda (_%path186812%_)
                    (if (member _%path186812%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path186812%_)
                        '#!void)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda ()
                          (call-with-parameters__1
                           (lambda ()
                             (call-with-parameters__1
                              (lambda ()
                                (call-with-parameters__1
                                 (lambda ()
                                   (call-with-parameters__1
                                    (lambda ()
                                      (let ((_g187950_
                                             (gx#core-read-module
                                              _%path186812%_)))
                                        (begin
                                          (let ((_g187951_
                                                 (if (##values? _g187950_)
                                                     (##values-length
                                                      _g187950_)
                                                     1)))
                                            (if (not (##fx= _g187951_ 4))
                                                (error "Context expects 4 values"
                                                       _g187951_)))
                                          (let ((_%pre186820%_
                                                 (##values-ref _g187950_ 0))
                                                (_%id186821%_
                                                 (##values-ref _g187950_ 1))
                                                (_%ns186822%_
                                                 (##values-ref _g187950_ 2))
                                                (_%body186823%_
                                                 (##values-ref _g187950_ 3)))
                                            (let* ((_%prelude186833%_
                                                    (if (##structure-instance-of?
                                                         _%pre186820%_
                                                         'gx#prelude-context::t)
                                                        _%pre186820%_
                                                        (if (##structure-instance-of?
                                                             _%pre186820%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre186820%_)
                                                            (if (string? _%pre186820%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre186820%_))
                        (if (not _%pre186820%_)
                            (let ((_%$e186829%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e186829%_
                                  _%$e186829%_
                                  (let ((__obj187940
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
                                    (gx#prelude-context:::init!__0
                                     __obj187940
                                     '#f)
                                    __obj187940)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath186721%_
                                   _%pre186820%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx186835%_
                                                    (let ((__obj187941
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
                                                       __obj187941
                                                       _%id186821%_
                                                       _%prelude186833%_
                                                       _%ns186822%_
                                                       _%path186812%_)
                                                      __obj187941))
                                                   (_%body186837%_
                                                    (gx#core-expand-module-begin
                                                     _%body186823%_
                                                     _%ctx186835%_))
                                                   (_%body186839%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body186837%_)
                                                     _%path186812%_
                                                     _%ctx186835%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx186835%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body186839%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx186835%_
                                               _%body186839%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path186812%_
                                               _%ctx186835%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id186821%_
                                               _%ctx186835%_)
                                              _%ctx186835%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path186812%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule186725%_
                  (lambda (_%rpath186741%_)
                    (let* ((_%$%rpath186742186749%_ _%rpath186741%_)
                           (_%$%E186744186752%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath186742186749%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K186745186800%_
                            (lambda (_%refs186755%_ _%origin186756%_)
                              (let ((_%ctx186758%_
                                     (if _%origin186756%_
                                         (gx#core-import-module__%
                                          _%origin186756%_
                                          _%reload?186722%_)
                                         (gx#current-expander-context))))
                                (let _%lp186760%_ ((_%rest186762%_
                                                    _%refs186755%_)
                                                   (_%ctx186763%_
                                                    _%ctx186758%_))
                                  (let* ((_%$%rest186764186772%_
                                          _%rest186762%_)
                                         (_%$%else186766186780%_
                                          (lambda () _%ctx186763%_))
                                         (_%$%K186768186788%_
                                          (lambda (_%rest186783%_ _%id186784%_)
                                            (let ((_%bind186786%_
                                                   (gx#resolve-identifier__%
                                                    _%id186784%_
                                                    '0
                                                    _%ctx186763%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind186786%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind186786%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp186760%_
                                                   _%rest186783%_
                                                   (##unchecked-structure-ref
                                                    _%bind186786%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath186741%_
                                                         _%id186784%_
                                                         _%bind186786%_))))))
                                    (if (pair? _%$%rest186764186772%_)
                                        (let ((_%$%hd186769186791%_
                                               (##car _%$%rest186764186772%_))
                                              (_%$%tl186770186793%_
                                               (##cdr _%$%rest186764186772%_)))
                                          (let* ((_%id186796%_
                                                  _%$%hd186769186791%_)
                                                 (_%rest186798%_
                                                  _%$%tl186770186793%_))
                                            (_%$%K186768186788%_
                                             _%rest186798%_
                                             _%id186796%_)))
                                        (_%$%else186766186780%_))))))))
                      (if (pair? _%$%rpath186742186749%_)
                          (let ((_%$%hd186746186803%_
                                 (##car _%$%rpath186742186749%_))
                                (_%$%tl186747186805%_
                                 (##cdr _%$%rpath186742186749%_)))
                            (let* ((_%origin186808%_ _%$%hd186746186803%_)
                                   (_%refs186810%_ _%$%tl186747186805%_))
                              (_%$%K186745186800%_
                               _%refs186810%_
                               _%origin186808%_)))
                          (_%$%E186744186752%_))))))
          (let ((_%$e186727%_
                 (if (not _%reload?186722%_)
                     (__hash-get gx#__module-registry _%rpath186721%_)
                     '#f)))
            (if _%$e186727%_
                _%$e186727%_
                (if (list? _%rpath186721%_)
                    (_%import-submodule186725%_ _%rpath186721%_)
                    (if (gx#core-library-module-path? _%rpath186721%_)
                        (let ((_%ctx186732%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath186721%_)
                                _%reload?186722%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath186721%_
                           _%ctx186732%_)
                          _%ctx186732%_)
                        (let* ((_%npath186735%_
                                (path-normalize _%rpath186721%_))
                               (_%$e186737%_
                                (if (not _%reload?186722%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath186735%_)
                                    '#f)))
                          (if _%$e186737%_
                              _%$e186737%_
                              (_%import-source186724%_
                               _%npath186735%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath186846%_)
        (let ((_%reload?186848%_ '#f))
          (gx#core-import-module__% _%rpath186846%_ _%reload?186848%_))))
    (define gx#core-import-module
      (lambda _g187952_
        (let ((_g187953_ (##length _g187952_)))
          (cond ((##fx= _g187953_ 1)
                 (apply gx#core-import-module__0 _g187952_))
                ((##fx= _g187953_ 2)
                 (apply gx#core-import-module__% _g187952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g187952_))))))
    (define gx#core-read-module
      (lambda (_%path186703%_)
        (__with-catch
         (lambda (_%exn186705%_)
           (if (datum-parsing-exception? _%exn186705%_)
               (let ((_%pos186707%_
                      (datum-parsing-exception-filepos _%exn186705%_)))
                 (if (= _%pos186707%_ '0)
                     (gx#core-read-module/lang _%path186703%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path186703%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g186709186711%_)
                            (display-exception__%
                             _%exn186705%_
                             _%$%g186709186711%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos186707%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos186707%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path186703%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g186714186716%_)
                      (display-exception__%
                       _%exn186705%_
                       _%$%g186714186716%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path186703%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path186555%_)
        (let _%lp186557%_ ((_%body186559%_
                            (read-syntax-from-file _%path186555%_))
                           (_%pre186560%_ '#f)
                           (_%ns186561%_ '#f)
                           (_%pkg186562%_ '#f))
          (let* ((_%$%e186563186587%_ _%body186559%_)
                 (_%$%E186579186613%_
                  (lambda ()
                    (let ((_g187954_
                           (if _%pkg186562%_
                               (values _%pre186560%_
                                       _%ns186561%_
                                       _%pkg186562%_)
                               (gx#core-read-module-package
                                _%path186555%_
                                _%pre186560%_
                                _%ns186561%_))))
                      (begin
                        (let ((_g187955_
                               (if (##values? _g187954_)
                                   (##values-length _g187954_)
                                   1)))
                          (if (not (##fx= _g187955_ 3))
                              (error "Context expects 3 values" _g187955_)))
                        (let ((_%pre186591%_ (##values-ref _g187954_ 0))
                              (_%ns186592%_ (##values-ref _g187954_ 1))
                              (_%pkg186593%_ (##values-ref _g187954_ 2)))
                          (let* ((_%prelude186599%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre186591%_)
                                      (gx#syntax-local-e__0 _%pre186591%_)
                                      (if (gx#core-library-module-path?
                                           _%pre186591%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre186591%_)
                                          (if (gx#stx-string? _%pre186591%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre186591%_
                                               _%path186555%_)
                                              (gx#stx-e _%pre186591%_)))))
                                 (_%path-id186601%_
                                  (gx#core-module-path->namespace
                                   _%path186555%_))
                                 (_%pkg-id186603%_
                                  (if _%pkg186593%_
                                      (##string-append
                                       _%pkg186593%_
                                       '"/"
                                       _%path-id186601%_)
                                      _%path-id186601%_))
                                 (_%module-id186605%_
                                  (##string->symbol _%pkg-id186603%_))
                                 (_%module-ns186610%_
                                  (if (eq? _%ns186592%_ '#!void)
                                      '#f
                                      (let ((_%$e186607%_ _%ns186592%_))
                                        (if _%$e186607%_
                                            _%$e186607%_
                                            _%pkg-id186603%_)))))
                            (values _%prelude186599%_
                                    _%module-id186605%_
                                    _%module-ns186610%_
                                    _%body186559%_)))))))
                 (_%$%E186572186645%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e186563186587%_)
                        (let ((_%$%e186580186617%_
                               (gx#syntax-e _%$%e186563186587%_)))
                          (let ((_%$%hd186581186620%_
                                 (##car _%$%e186580186617%_))
                                (_%$%tl186582186622%_
                                 (##cdr _%$%e186580186617%_)))
                            (if (eq? (gx#stx-e _%$%hd186581186620%_) 'package:)
                                (if (gx#stx-pair? _%$%tl186582186622%_)
                                    (let ((_%$%e186583186625%_
                                           (gx#syntax-e _%$%tl186582186622%_)))
                                      (let ((_%$%hd186584186628%_
                                             (##car _%$%e186583186625%_))
                                            (_%$%tl186585186630%_
                                             (##cdr _%$%e186583186625%_)))
                                        (let* ((_%pkg186633%_
                                                _%$%hd186584186628%_)
                                               (_%rest186635%_
                                                _%$%tl186585186630%_)
                                               (_%pkg186643%_
                                                (if (gx#identifier?
                                                     _%pkg186633%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg186633%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg186633%_)
                                                            (gx#stx-false?
                                                             _%pkg186633%_))
                                                        (gx#stx-e
                                                         _%pkg186633%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg186633%_)))))
                                          (_%lp186557%_
                                           _%rest186635%_
                                           _%pre186560%_
                                           _%ns186561%_
                                           _%pkg186643%_))))
                                    (_%$%E186579186613%_))
                                (_%$%E186579186613%_))))
                        (_%$%E186579186613%_))))
                 (_%$%E186565186675%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e186563186587%_)
                        (let ((_%$%e186573186649%_
                               (gx#syntax-e _%$%e186563186587%_)))
                          (let ((_%$%hd186574186652%_
                                 (##car _%$%e186573186649%_))
                                (_%$%tl186575186654%_
                                 (##cdr _%$%e186573186649%_)))
                            (if (eq? (gx#stx-e _%$%hd186574186652%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl186575186654%_)
                                    (let ((_%$%e186576186657%_
                                           (gx#syntax-e _%$%tl186575186654%_)))
                                      (let ((_%$%hd186577186660%_
                                             (##car _%$%e186576186657%_))
                                            (_%$%tl186578186662%_
                                             (##cdr _%$%e186576186657%_)))
                                        (let* ((_%ns186665%_
                                                _%$%hd186577186660%_)
                                               (_%rest186667%_
                                                _%$%tl186578186662%_)
                                               (_%ns186673%_
                                                (if (gx#identifier?
                                                     _%ns186665%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns186665%_))
                                                    (if (gx#stx-string?
                                                         _%ns186665%_)
                                                        (gx#stx-e _%ns186665%_)
                                                        (if (gx#stx-false?
                                                             _%ns186665%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns186665%_))))))
                                          (_%lp186557%_
                                           _%rest186667%_
                                           _%pre186560%_
                                           _%ns186673%_
                                           _%pkg186562%_))))
                                    (_%$%E186572186645%_))
                                (_%$%E186572186645%_))))
                        (_%$%E186572186645%_))))
                 (_%$%E186564186699%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e186563186587%_)
                        (let ((_%$%e186566186679%_
                               (gx#syntax-e _%$%e186563186587%_)))
                          (let ((_%$%hd186567186682%_
                                 (##car _%$%e186566186679%_))
                                (_%$%tl186568186684%_
                                 (##cdr _%$%e186566186679%_)))
                            (if (eq? (gx#stx-e _%$%hd186567186682%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl186568186684%_)
                                    (let ((_%$%e186569186687%_
                                           (gx#syntax-e _%$%tl186568186684%_)))
                                      (let ((_%$%hd186570186690%_
                                             (##car _%$%e186569186687%_))
                                            (_%$%tl186571186692%_
                                             (##cdr _%$%e186569186687%_)))
                                        (let* ((_%prelude186695%_
                                                _%$%hd186570186690%_)
                                               (_%rest186697%_
                                                _%$%tl186571186692%_))
                                          (_%lp186557%_
                                           _%rest186697%_
                                           _%prelude186695%_
                                           _%ns186561%_
                                           _%pkg186562%_))))
                                    (_%$%E186565186675%_))
                                (_%$%E186565186675%_))))
                        (_%$%E186565186675%_)))))
            (_%$%E186564186699%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path186376%_)
        (letrec ((_%default-read-module-body186378%_
                  (lambda (_%inp186547%_)
                    (let _%lp186549%_ ((_%body186551%_ '()))
                      (let ((_%next186553%_ (read-syntax__% _%inp186547%_)))
                        (if (eof-object? _%next186553%_)
                            (reverse _%body186551%_)
                            (_%lp186549%_
                             (cons _%next186553%_ _%body186551%_)))))))
                 (_%read-body186379%_
                  (lambda (_%inp186464%_
                           _%pre186465%_
                           _%ns186466%_
                           _%pkg186467%_
                           _%args186468%_)
                    (let ((_g187956_
                           (if _%pkg186467%_
                               (values _%pre186465%_
                                       _%ns186466%_
                                       _%pkg186467%_)
                               (gx#core-read-module-package
                                _%path186376%_
                                _%pre186465%_
                                _%ns186466%_))))
                      (begin
                        (let ((_g187957_
                               (if (##values? _g187956_)
                                   (##values-length _g187956_)
                                   1)))
                          (if (not (##fx= _g187957_ 3))
                              (error "Context expects 3 values" _g187957_)))
                        (let ((_%pre186470%_ (##values-ref _g187956_ 0))
                              (_%ns186471%_ (##values-ref _g187956_ 1))
                              (_%pkg186472%_ (##values-ref _g187956_ 2)))
                          (let* ((_%prelude186474%_
                                  (gx#import-module__0 _%pre186470%_))
                                 (_%read-module-body186529%_
                                  (let ((_%$e186520%_
                                         (__find (lambda (_%$%e186475186477%_)
                                                   (let* ((_%$%$%e186475186479186489%_
                                                           _%$%e186475186477%_)
                                                          (_%$%else186481186497%_
                                                           (lambda () '#f))
                                                          (_%$%K186483186501%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e186475186479186489%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e186484186504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e186475186479186489%_
                          '1
                          '#f
                          '#f))
                        (_%$%e186485186507%_
                         (##unchecked-structure-ref
                          _%$%$%e186475186479186489%_
                          '2
                          '#f
                          '#f))
                        (_%$%e186486186510%_
                         (##unchecked-structure-ref
                          _%$%$%e186475186479186489%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e186486186510%_ '1)
                       (let ((_%$%e186487186513%_
                              (##unchecked-structure-ref
                               _%$%$%e186475186479186489%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e186487186513%_ 'read-module-body)
                             (_%$%K186483186501%_)
                             (_%$%else186481186497%_)))
                       (_%$%else186481186497%_)))
                 (_%$%else186481186497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude186474%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e186520%_
                                        (let ((_%proc186526%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e186520%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc186526%_)
                                              _%proc186526%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path186376%_
                                               _%pre186470%_
                                               _%proc186526%_)))
                                        _%default-read-module-body186378%_)))
                                 (_%path-id186531%_
                                  (gx#core-module-path->namespace
                                   _%path186376%_))
                                 (_%pkg-id186533%_
                                  (if _%pkg186472%_
                                      (##string-append
                                       _%pkg186472%_
                                       '"/"
                                       _%path-id186531%_)
                                      _%path-id186531%_))
                                 (_%module-id186535%_
                                  (##string->symbol _%pkg-id186533%_))
                                 (_%module-ns186540%_
                                  (let ((_%$e186537%_ _%ns186471%_))
                                    (if _%$e186537%_
                                        _%$e186537%_
                                        _%pkg-id186533%_)))
                                 (_%body186544%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body186529%_
                                         _%inp186464%_))
                                      gx#current-module-reader-args
                                      _%args186468%_))
                                   gx#current-module-reader-path
                                   _%path186376%_)))
                            (values _%prelude186474%_
                                    _%module-id186535%_
                                    _%module-ns186540%_
                                    _%body186544%_)))))))
                 (_%string-e186380%_
                  (lambda (_%obj186458%_ _%what186459%_)
                    (if (string? _%obj186458%_)
                        _%obj186458%_
                        (if (symbol? _%obj186458%_)
                            (##symbol->string _%obj186458%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what186459%_)
                             _%path186376%_
                             _%obj186458%_)))))
                 (_%read-lang-args186381%_
                  (lambda (_%inp186413%_ _%args186414%_)
                    (let* ((_%$%args186415186423%_ _%args186414%_)
                           (_%$%else186417186431%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path186376%_)))
                           (_%$%K186419186446%_
                            (lambda (_%args186434%_ _%prelude186435%_)
                              (let* ((_%pkg186437%_
                                      (pgetq__0 'package: _%args186434%_))
                                     (_%pkg186439%_
                                      (if _%pkg186437%_
                                          (_%string-e186380%_
                                           _%pkg186437%_
                                           '"package")
                                          '#f))
                                     (_%ns186441%_
                                      (pgetq__0 'namespace: _%args186434%_))
                                     (_%ns186443%_
                                      (if _%ns186441%_
                                          (_%string-e186380%_
                                           _%ns186441%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body186379%_
                                 _%inp186413%_
                                 _%prelude186435%_
                                 _%ns186443%_
                                 _%pkg186439%_
                                 _%args186434%_)))))
                      (if (pair? _%$%args186415186423%_)
                          (let ((_%$%hd186420186449%_
                                 (##car _%$%args186415186423%_))
                                (_%$%tl186421186451%_
                                 (##cdr _%$%args186415186423%_)))
                            (let* ((_%prelude186454%_ _%$%hd186420186449%_)
                                   (_%args186456%_ _%$%tl186421186451%_))
                              (_%$%K186419186446%_
                               _%args186456%_
                               _%prelude186454%_)))
                          (_%$%else186417186431%_)))))
                 (_%read-lang186382%_
                  (lambda (_%inp186387%_)
                    (let* ((_%head186389%_ (read-line _%inp186387%_))
                           (_%$e186391%_
                            (string-index__0 _%head186389%_ '#\space)))
                      (if _%$e186391%_
                          (let ((_%lang186396%_
                                 (substring _%head186389%_ '0 _%$e186391%_)))
                            (if (equal? _%lang186396%_ '"#lang")
                                (let* ((_%rest186398%_
                                        (substring
                                         _%head186389%_
                                         (##fx+ _%$e186391%_ '1)
                                         (string-length _%head186389%_)))
                                       (_%args186409%_
                                        (__with-catch
                                         (lambda (_%$%g186399186401%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path186376%_
                                            _%$%g186399186401%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest186398%_
                                            (lambda (_%$%g186404186406%_)
                                              (read-all
                                               _%$%g186404186406%_
                                               read)))))))
                                  (_%read-lang-args186381%_
                                   _%inp186387%_
                                   _%args186409%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path186376%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path186376%_)))))
                 (_%read-e186383%_
                  (lambda (_%inp186385%_)
                    (if (eq? (peek-char _%inp186385%_) '#\#)
                        (_%read-lang186382%_ _%inp186385%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path186376%_)))))
          (gx#call-with-input-source-file _%path186376%_ _%read-e186383%_))))
    (define gx#core-read-module-package
      (lambda (_%path186324%_ _%pre186325%_ _%ns186326%_)
        (letrec ((_%string-e186328%_
                  (lambda (_%e186371%_)
                    (if (symbol? _%e186371%_)
                        (##symbol->string _%e186371%_)
                        (if (string? _%e186371%_)
                            _%e186371%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e186371%_))))))
          (let _%lp186330%_ ((_%dir186332%_ (path-directory _%path186324%_))
                             (_%pkg-path186333%_ '()))
            (let ((_%gerbil.pkg186335%_
                   (path-expand '"gerbil.pkg" _%dir186332%_)))
              (if (##file-exists? _%gerbil.pkg186335%_)
                  (let ((_%plist186337%_
                         (gx#core-library-package-plist__% _%dir186332%_ '#t)))
                    (if (null? _%plist186337%_)
                        (let ((_%pkg186340%_
                               (if (null? _%pkg-path186333%_)
                                   '#f
                                   (string-join _%pkg-path186333%_ '"/"))))
                          (values _%pre186325%_ _%ns186326%_ _%pkg186340%_))
                        (if (list? _%plist186337%_)
                            (let* ((_%root186343%_
                                    (pgetq__0 'package: _%plist186337%_))
                                   (_%pkg186347%_
                                    (let ((_%pkg-path186345%_
                                           (if _%root186343%_
                                               (cons (_%string-e186328%_
                                                      _%root186343%_)
                                                     _%pkg-path186333%_)
                                               _%pkg-path186333%_)))
                                      (if (null? _%pkg-path186345%_)
                                          '#f
                                          (string-join
                                           _%pkg-path186345%_
                                           '"/"))))
                                   (_%ns186354%_
                                    (let ((_%ns186352%_
                                           (let ((_%$e186349%_ _%ns186326%_))
                                             (if _%$e186349%_
                                                 _%$e186349%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist186337%_)))))
                                      (if _%ns186352%_
                                          (_%string-e186328%_ _%ns186352%_)
                                          '#f)))
                                   (_%pre186359%_
                                    (let ((_%$e186356%_ _%pre186325%_))
                                      (if _%$e186356%_
                                          _%$e186356%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist186337%_)))))
                              (values _%pre186359%_
                                      _%ns186354%_
                                      _%pkg186347%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist186337%_))))
                  (let ((_%dir*186363%_
                         (path-strip-trailing-directory-separator
                          _%dir186332%_)))
                    (if (or (__string-empty? _%dir*186363%_)
                            (equal? _%dir186332%_ _%dir*186363%_))
                        (values _%pre186325%_ _%ns186326%_ '#f)
                        (let ((_%xpath186368%_
                               (path-strip-directory _%dir*186363%_))
                              (_%xdir186369%_ (path-directory _%dir*186363%_)))
                          (_%lp186330%_
                           _%xdir186369%_
                           (cons _%xpath186368%_ _%pkg-path186333%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path186322%_)
        (path-strip-extension (path-strip-directory _%path186322%_))))
    (define gx#core-module-path->id
      (lambda (_%path186320%_)
        (##string->symbol (gx#core-module-path->namespace _%path186320%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path186299%_ _%rel186300%_)
        (let* ((_%path186302%_ (gx#stx-e _%stx-path186299%_))
               (_%path186304%_
                (if (__string-empty? (path-extension _%path186302%_))
                    (##string-append _%path186302%_ '".ss")
                    _%path186302%_)))
          (gx#core-resolve-path__%
           _%path186304%_
           (let ((_%$e186307%_ (gx#stx-source _%stx-path186299%_)))
             (if _%$e186307%_ _%$e186307%_ _%rel186300%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path186313%_)
        (let ((_%rel186315%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path186313%_ _%rel186315%_))))
    (define gx#core-resolve-module-path
      (lambda _g187958_
        (let ((_g187959_ (##length _g187958_)))
          (cond ((##fx= _g187959_ 1)
                 (apply gx#core-resolve-module-path__0 _g187958_))
                ((##fx= _g187959_ 2)
                 (apply gx#core-resolve-module-path__% _g187958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g187958_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath186184%_)
        (let* ((_%spath186186%_ (symbol->string (gx#stx-e _%libpath186184%_)))
               (_%spath186188%_
                (substring
                 _%spath186186%_
                 '1
                 (##string-length _%spath186186%_)))
               (_%ext186190%_ (path-extension _%spath186188%_))
               (_%ssi186192%_
                (if (__string-empty? _%ext186190%_)
                    (##string-append _%spath186188%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath186188%_)
                     '".ssi")))
               (_%srcs186196%_
                (if (__string-empty? _%ext186190%_)
                    (##map (lambda (_%ext186194%_)
                             (string-append _%spath186188%_ _%ext186194%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath186188%_ '()))))
          (let _%lp186199%_ ((_%rest186201%_ (load-path)))
            (let* ((_%$%rest186202186211%_ _%rest186201%_)
                   (_%$%E186205186215%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest186202186211%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K186207186286%_
                     (lambda (_%rest186226%_ _%dir186227%_)
                       (letrec ((_%resolve186229%_
                                 (lambda (_%ssi186242%_ _%srcs186243%_)
                                   (let ((_%compiled-path186245%_
                                          (path-expand
                                           _%ssi186242%_
                                           _%dir186227%_)))
                                     (if (##file-exists?
                                          _%compiled-path186245%_)
                                         (path-normalize
                                          _%compiled-path186245%_)
                                         (let _%lpr186247%_ ((_%rest-src186249%_
                                                              _%srcs186243%_))
                                           (let* ((_%$%rest-src186250186258%_
                                                   _%rest-src186249%_)
                                                  (_%$%else186252186266%_
                                                   (lambda ()
                                                     (_%lp186199%_
                                                      _%rest186226%_)))
                                                  (_%$%K186254186274%_
                                                   (lambda (_%rest-src186269%_
                                                            _%src186270%_)
                                                     (let ((_%src-path186272%_
                                                            (path-expand
                                                             _%src186270%_
                                                             _%dir186227%_)))
                                                       (if (##file-exists?
                                                            _%src-path186272%_)
                                                           (path-normalize
                                                            _%src-path186272%_)
                                                           (_%lpr186247%_
                                                            _%rest-src186269%_))))))
                                             (if (pair? _%$%rest-src186250186258%_)
                                                 (let ((_%$%hd186255186277%_
                                                        (##car _%$%rest-src186250186258%_))
                                                       (_%$%tl186256186279%_
                                                        (##cdr _%$%rest-src186250186258%_)))
                                                   (let* ((_%src186282%_
                                                           _%$%hd186255186277%_)
                                                          (_%rest-src186284%_
                                                           _%$%tl186256186279%_))
                                                     (_%$%K186254186274%_
                                                      _%rest-src186284%_
                                                      _%src186282%_)))
                                                 (_%$%else186252186266%_)))))))))
                         (let ((_%$e186231%_
                                (gx#core-library-package-path-prefix
                                 _%dir186227%_)))
                           (if _%$e186231%_
                               (if (string-prefix?
                                    _%$e186231%_
                                    _%spath186188%_)
                                   (let ((_%ssi186238%_
                                          (substring
                                           _%ssi186192%_
                                           (string-length _%$e186231%_)
                                           (##string-length _%ssi186192%_)))
                                         (_%srcs186239%_
                                          (##map (lambda (_%src186236%_)
                                                   (substring
                                                    _%src186236%_
                                                    (string-length
                                                     _%$e186231%_)
                                                    (string-length
                                                     _%src186236%_)))
                                                 _%srcs186196%_)))
                                     (_%resolve186229%_
                                      _%ssi186238%_
                                      _%srcs186239%_))
                                   (_%lp186199%_ _%rest186226%_))
                               (_%resolve186229%_
                                _%ssi186192%_
                                _%srcs186196%_))))))
                    (_%$%K186206186220%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath186184%_))))
                (let ((_%$%try-match186204186223%_
                       (lambda ()
                         (if (null? _%$%rest186202186211%_)
                             (_%$%K186206186220%_)
                             (_%$%E186205186215%_)))))
                  (if (pair? _%$%rest186202186211%_)
                      (let ((_%$%tl186209186291%_
                             (##cdr _%$%rest186202186211%_))
                            (_%$%hd186208186289%_
                             (##car _%$%rest186202186211%_)))
                        (let ((_%dir186294%_ _%$%hd186208186289%_)
                              (_%rest186296%_ _%$%tl186209186291%_))
                          (_%$%K186207186286%_ _%rest186296%_ _%dir186294%_)))
                      (_%$%try-match186204186223%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath186152%_)
        (letrec ((_%resolve186154%_
                  (lambda (_%path186175%_ _%base186176%_)
                    (let ((_%$e186178%_
                           (string-rindex__0 _%base186176%_ '#\/)))
                      (if _%$e186178%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base186176%_ '0 _%$e186178%_)
                             '"/"
                             _%path186175%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path186175%_))))))))
          (let ((_%spath186156%_ (symbol->string (gx#stx-e _%modpath186152%_)))
                (_%mod186157%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod186157%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath186152%_))
            (let ((_%mpath186159%_
                   (symbol->string
                    (##structure-ref
                     _%mod186157%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp186161%_ ((_%spath186163%_ _%spath186156%_)
                                 (_%mpath186164%_ _%mpath186159%_))
                (if (string-prefix? '"../" _%spath186163%_)
                    (let ((_%$e186167%_
                           (string-rindex__0 _%mpath186164%_ '#\/)))
                      (if _%$e186167%_
                          (_%lp186161%_
                           (substring
                            _%spath186163%_
                            '3
                            (string-length _%spath186163%_))
                           (substring _%mpath186164%_ '0 _%$e186167%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath186152%_)))
                    (if (string-prefix? '"./" _%spath186163%_)
                        (_%lp186161%_
                         (substring
                          _%spath186163%_
                          '2
                          (string-length _%spath186163%_))
                         _%mpath186164%_)
                        (_%resolve186154%_
                         _%spath186163%_
                         _%mpath186164%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir186144%_)
        (let ((_%$e186146%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir186144%_))))
          (if _%$e186146%_
              (##string-append (symbol->string _%$e186146%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir186114%_ _%exists?186115%_)
        (let ((_%$e186117%_ (__hash-get gx#__module-pkg-cache _%dir186114%_)))
          (if _%$e186117%_
              _%$e186117%_
              (let* ((_%gerbil.pkg186121%_
                      (path-expand '"gerbil.pkg" _%dir186114%_))
                     (_%plist186131%_
                      (if (or _%exists?186115%_
                              (##file-exists? _%gerbil.pkg186121%_))
                          (let ((_%e186126%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg186121%_
                                  read)))
                            (if (eof-object? _%e186126%_)
                                '()
                                (if (list? _%e186126%_)
                                    _%e186126%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg186121%_
                                     _%e186126%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir186114%_
                 _%plist186131%_)
                _%plist186131%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir186137%_)
        (let ((_%exists?186139%_ '#f))
          (gx#core-library-package-plist__% _%dir186137%_ _%exists?186139%_))))
    (define gx#core-library-package-plist
      (lambda _g187960_
        (let ((_g187961_ (##length _g187960_)))
          (cond ((##fx= _g187961_ 1)
                 (apply gx#core-library-package-plist__0 _g187960_))
                ((##fx= _g187961_ 2)
                 (apply gx#core-library-package-plist__% _g187960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g187960_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx186111%_)
        (gx#core-special-module-path? _%stx186111%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx186109%_)
        (gx#core-special-module-path? _%stx186109%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx186104%_ _%char186105%_)
        (if (gx#identifier? _%stx186104%_)
            (if (interned-symbol? (gx#stx-e _%stx186104%_))
                (let ((_%str186107%_
                       (symbol->string (gx#stx-e _%stx186104%_))))
                  (if (##fx> (##string-length _%str186107%_) '1)
                      (eq? (string-ref _%str186107%_ '0) _%char186105%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx186098%_)
        (gx#core-bound-identifier?__%
         _%stx186098%_
         (lambda (_%$%g186099186101%_)
           (gx#expander-binding?__%
            _%$%g186099186101%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx186092%_)
        (gx#core-bound-identifier?__%
         _%stx186092%_
         (lambda (_%$%g186093186095%_)
           (gx#expander-binding?__% _%$%g186093186095%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx186079%_)
        (letrec ((_%module-prelude?186081%_
                  (lambda (_%e186087%_)
                    (let ((_%$e186089%_
                           (##structure-instance-of?
                            _%e186087%_
                            'gx#module-context::t)))
                      (if _%$e186089%_
                          _%$e186089%_
                          (##structure-instance-of?
                           _%e186087%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx186079%_
           (lambda (_%$%g186082186084%_)
             (gx#expander-binding?__%
              _%$%g186082186084%_
              _%module-prelude?186081%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in186010%_ _%ctx186011%_ _%force-weak?186012%_)
        (let* ((_%$%in186013186022%_ _%in186010%_)
               (_%$%E186015186025%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in186013186022%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K186016186038%_
                (lambda (_%weak?186028%_
                         _%phi186029%_
                         _%key186030%_
                         _%source186031%_)
                  (gx#core-bind!__%
                   _%key186030%_
                   (let* ((_%e186033%_
                           (gx#core-resolve-module-export _%source186031%_))
                          (__obj187942
                           (##structure
                            gx#import-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                     (gx#import-binding:::init!
                      __obj187942
                      (##unchecked-structure-ref _%e186033%_ '1 '#f '#f)
                      _%key186030%_
                      _%phi186029%_
                      _%e186033%_
                      (##unchecked-structure-ref _%source186031%_ '1 '#f '#f)
                      (let ((_%$e186035%_ _%force-weak?186012%_))
                        (if _%$e186035%_ _%$e186035%_ _%weak?186028%_)))
                     __obj187942)
                   gx#core-context-rebind?
                   _%phi186029%_
                   _%ctx186011%_))))
          (if (##structure-direct-instance-of?
               _%$%in186013186022%_
               'gx#module-import::t)
              (let* ((_%$%e186017186041%_
                      (##unchecked-structure-ref
                       _%$%in186013186022%_
                       '1
                       '#f
                       '#f))
                     (_%source186044%_ _%$%e186017186041%_)
                     (_%$%e186018186046%_
                      (##unchecked-structure-ref
                       _%$%in186013186022%_
                       '2
                       '#f
                       '#f))
                     (_%key186049%_ _%$%e186018186046%_)
                     (_%$%e186019186051%_
                      (##unchecked-structure-ref
                       _%$%in186013186022%_
                       '3
                       '#f
                       '#f))
                     (_%phi186054%_ _%$%e186019186051%_)
                     (_%$%e186020186056%_
                      (##unchecked-structure-ref
                       _%$%in186013186022%_
                       '4
                       '#f
                       '#f))
                     (_%weak?186059%_ _%$%e186020186056%_))
                (_%$%K186016186038%_
                 _%weak?186059%_
                 _%phi186054%_
                 _%key186049%_
                 _%source186044%_))
              (_%$%E186015186025%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in186064%_)
        (let* ((_%ctx186066%_ (gx#current-expander-context))
               (_%force-weak?186068%_ '#f))
          (gx#core-bind-import!__%
           _%in186064%_
           _%ctx186066%_
           _%force-weak?186068%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in186070%_ _%ctx186071%_)
        (let ((_%force-weak?186073%_ '#f))
          (gx#core-bind-import!__%
           _%in186070%_
           _%ctx186071%_
           _%force-weak?186073%_))))
    (define gx#core-bind-import!
      (lambda _g187962_
        (let ((_g187963_ (##length _g187962_)))
          (cond ((##fx= _g187963_ 1) (apply gx#core-bind-import!__0 _g187962_))
                ((##fx= _g187963_ 2) (apply gx#core-bind-import!__1 _g187962_))
                ((##fx= _g187963_ 3) (apply gx#core-bind-import!__% _g187962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g187962_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in185996%_ _%ctx185997%_)
        (gx#core-bind-import!__% _%in185996%_ _%ctx185997%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in186002%_)
        (let ((_%ctx186004%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in186002%_ _%ctx186004%_))))
    (define gx#core-bind-weak-import!
      (lambda _g187964_
        (let ((_g187965_ (##length _g187964_)))
          (cond ((##fx= _g187965_ 1)
                 (apply gx#core-bind-weak-import!__0 _g187964_))
                ((##fx= _g187965_ 2)
                 (apply gx#core-bind-weak-import!__% _g187964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g187964_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out185889%_)
        (letrec ((_%subst185891%_
                  (lambda (_%key185936%_)
                    (let* ((_%$%key185937185945%_ _%key185936%_)
                           (_%$%else185939185953%_ (lambda () _%key185936%_))
                           (_%$%K185941185983%_
                            (lambda (_%mark185956%_ _%id185957%_)
                              (let* ((_%$%mark185958185964%_ _%mark185956%_)
                                     (_%$%E185960185967%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark185958185964%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K185961185975%_
                                      (lambda (_%subst185970%_)
                                        (let ((_%$e185972%_
                                               (if _%subst185970%_
                                                   (hash-get
                                                    _%subst185970%_
                                                    _%id185957%_)
                                                   '#f)))
                                          (if _%$e185972%_
                                              _%$e185972%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key185936%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark185958185964%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e185962185978%_
                                            (##unchecked-structure-ref
                                             _%$%mark185958185964%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst185981%_
                                            _%$%e185962185978%_))
                                      (_%$%K185961185975%_ _%subst185981%_))
                                    (_%$%E185960185967%_))))))
                      (if (pair? _%$%key185937185945%_)
                          (let ((_%$%hd185942185986%_
                                 (##car _%$%key185937185945%_))
                                (_%$%tl185943185988%_
                                 (##cdr _%$%key185937185945%_)))
                            (let* ((_%id185991%_ _%$%hd185942185986%_)
                                   (_%mark185993%_ _%$%tl185943185988%_))
                              (_%$%K185941185983%_
                               _%mark185993%_
                               _%id185991%_)))
                          (_%$%else185939185953%_))))))
          (let* ((_%$%out185892185902%_ _%out185889%_)
                 (_%$%E185894185905%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out185892185902%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K185895185912%_
                  (lambda (_%phi185908%_ _%key185909%_ _%ctx185910%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx185910%_ _%phi185908%_)
                     (_%subst185891%_ _%key185909%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out185892185902%_
                 'gx#module-export::t)
                (let* ((_%$%e185896185915%_
                        (##unchecked-structure-ref
                         _%$%out185892185902%_
                         '1
                         '#f
                         '#f))
                       (_%ctx185918%_ _%$%e185896185915%_)
                       (_%$%e185897185920%_
                        (##unchecked-structure-ref
                         _%$%out185892185902%_
                         '2
                         '#f
                         '#f))
                       (_%key185923%_ _%$%e185897185920%_)
                       (_%$%e185898185925%_
                        (##unchecked-structure-ref
                         _%$%out185892185902%_
                         '3
                         '#f
                         '#f))
                       (_%phi185928%_ _%$%e185898185925%_)
                       (_%$%e185899185930%_
                        (##unchecked-structure-ref
                         _%$%out185892185902%_
                         '4
                         '#f
                         '#f))
                       (_%$%e185900185933%_
                        (##unchecked-structure-ref
                         _%$%out185892185902%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K185895185912%_
                   _%phi185928%_
                   _%key185923%_
                   _%ctx185918%_))
                (_%$%E185894185905%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out185815%_ _%rename185816%_ _%dphi185817%_)
        (let* ((_%$%out185818185828%_ _%out185815%_)
               (_%$%E185820185831%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out185818185828%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K185821185843%_
                (lambda (_%weak?185834%_
                         _%name185835%_
                         _%phi185836%_
                         _%key185837%_
                         _%ctx185838%_)
                  (##structure
                   gx#module-import::t
                   _%out185815%_
                   (let ((_%$e185840%_ _%rename185816%_))
                     (if _%$e185840%_ _%$e185840%_ _%name185835%_))
                   (fx+ _%phi185836%_ _%dphi185817%_)
                   _%weak?185834%_))))
          (if (##structure-direct-instance-of?
               _%$%out185818185828%_
               'gx#module-export::t)
              (let* ((_%$%e185822185846%_
                      (##unchecked-structure-ref
                       _%$%out185818185828%_
                       '1
                       '#f
                       '#f))
                     (_%ctx185849%_ _%$%e185822185846%_)
                     (_%$%e185823185851%_
                      (##unchecked-structure-ref
                       _%$%out185818185828%_
                       '2
                       '#f
                       '#f))
                     (_%key185854%_ _%$%e185823185851%_)
                     (_%$%e185824185856%_
                      (##unchecked-structure-ref
                       _%$%out185818185828%_
                       '3
                       '#f
                       '#f))
                     (_%phi185859%_ _%$%e185824185856%_)
                     (_%$%e185825185861%_
                      (##unchecked-structure-ref
                       _%$%out185818185828%_
                       '4
                       '#f
                       '#f))
                     (_%name185864%_ _%$%e185825185861%_)
                     (_%$%e185826185866%_
                      (##unchecked-structure-ref
                       _%$%out185818185828%_
                       '5
                       '#f
                       '#f))
                     (_%weak?185869%_ _%$%e185826185866%_))
                (_%$%K185821185843%_
                 _%weak?185869%_
                 _%name185864%_
                 _%phi185859%_
                 _%key185854%_
                 _%ctx185849%_))
              (_%$%E185820185831%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out185874%_)
        (let* ((_%rename185876%_ '#f) (_%dphi185878%_ '0))
          (gx#core-module-export->import__%
           _%out185874%_
           _%rename185876%_
           _%dphi185878%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out185880%_ _%rename185881%_)
        (let ((_%dphi185883%_ '0))
          (gx#core-module-export->import__%
           _%out185880%_
           _%rename185881%_
           _%dphi185883%_))))
    (define gx#core-module-export->import
      (lambda _g187966_
        (let ((_g187967_ (##length _g187966_)))
          (cond ((##fx= _g187967_ 1)
                 (apply gx#core-module-export->import__0 _g187966_))
                ((##fx= _g187967_ 2)
                 (apply gx#core-module-export->import__1 _g187966_))
                ((##fx= _g187967_ 3)
                 (apply gx#core-module-export->import__% _g187966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g187966_))))))
    (define gx#core-expand-module%
      (lambda (_%stx185714%_)
        (letrec ((_%make-context185716%_
                  (lambda (_%id185793%_)
                    (let* ((_%super185795%_ (gx#current-expander-context))
                           (_%bind-id185797%_ (gx#stx-e _%id185793%_))
                           (_%mod-id185799%_
                            (if (##structure-instance-of?
                                 _%super185795%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super185795%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id185797%_)
                                _%bind-id185797%_))
                           (_%ns185801%_ (symbol->string _%mod-id185799%_))
                           (_%path185811%_
                            (if (##structure-instance-of?
                                 _%super185795%_
                                 'gx#module-context::t)
                                (let ((_%path185803%_
                                       (##unchecked-structure-ref
                                        _%super185795%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path185803%_)
                                          (null? _%path185803%_))
                                      (cons _%bind-id185797%_ _%path185803%_)
                                      (if (not _%path185803%_)
                                          _%bind-id185797%_
                                          (cons _%bind-id185797%_
                                                (cons _%path185803%_ '())))))
                                _%bind-id185797%_))
                           (__obj187943
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
                       __obj187943
                       _%mod-id185799%_
                       _%super185795%_
                       _%ns185801%_
                       _%path185811%_)
                      __obj187943)))
                 (_%valid-module-id?185717%_
                  (lambda (_%id185768%_)
                    (let* ((_%str185770%_ (symbol->string _%id185768%_))
                           (_%len185772%_ (##string-length _%str185770%_)))
                      (if (##fx>= _%len185772%_ '1)
                          (let _%loop185775%_ ((_%index185777%_
                                                (##fx- (##string-length
                                                        _%str185770%_)
                                                       '1)))
                            (if (##fx>= _%index185777%_ '0)
                                (let ((_%c185779%_
                                       (string-ref
                                        _%str185770%_
                                        _%index185777%_)))
                                  (if (or (and (##char>=? _%c185779%_ '#\a)
                                               (##char<=? _%c185779%_ '#\z))
                                          (and (##char>=? _%c185779%_ '#\A)
                                               (##char<=? _%c185779%_ '#\Z))
                                          (and (##char>=? _%c185779%_ '#\0)
                                               (##char<=? _%c185779%_ '#\9))
                                          (##char=? _%c185779%_ '#\_)
                                          (##char=? _%c185779%_ '#\-))
                                      (_%loop185775%_
                                       (##fx- _%index185777%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e185718185728%_ _%stx185714%_)
                 (_%$%E185720185732%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185718185728%_)))
                 (_%$%E185719185764%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185718185728%_)
                        (let ((_%$%e185721185736%_
                               (gx#syntax-e _%$%e185718185728%_)))
                          (let ((_%$%hd185722185739%_
                                 (##car _%$%e185721185736%_))
                                (_%$%tl185723185741%_
                                 (##cdr _%$%e185721185736%_)))
                            (if (gx#stx-pair? _%$%tl185723185741%_)
                                (let ((_%$%e185724185744%_
                                       (gx#syntax-e _%$%tl185723185741%_)))
                                  (let ((_%$%hd185725185747%_
                                         (##car _%$%e185724185744%_))
                                        (_%$%tl185726185749%_
                                         (##cdr _%$%e185724185744%_)))
                                    (let* ((_%id185752%_ _%$%hd185725185747%_)
                                           (_%body185754%_
                                            _%$%tl185726185749%_))
                                      (if (and (gx#identifier? _%id185752%_)
                                               (gx#stx-list? _%body185754%_))
                                          (if (_%valid-module-id?185717%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx185756%_
                                                      (_%make-context185716%_
                                                       _%id185752%_))
                                                     (_%body185758%_
                                                      (gx#core-expand-module-begin
                                                       _%body185754%_
                                                       _%ctx185756%_))
                                                     (_%body185760%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body185758%_)
                                                       (gx#stx-source
                                                        _%stx185714%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx185756%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body185760%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx185756%_
                                                 _%body185760%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id185752%_
                                                 _%ctx185756%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id185752%_)
                                                  _%body185760%_)
                                                 (gx#stx-source
                                                  _%stx185714%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx185714%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E185720185732%_)))))
                                (_%$%E185720185732%_))))
                        (_%$%E185720185732%_)))))
            (_%$%E185719185764%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body185679%_ _%ctx185680%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx185684%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body185679%_)))
                     (_%$%e185685185692%_ _%stx185684%_)
                     (_%$%E185687185696%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx185684%_)))
                     (_%$%E185686185710%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e185685185692%_)
                            (let ((_%$%e185688185700%_
                                   (gx#syntax-e _%$%e185685185692%_)))
                              (let ((_%$%hd185689185703%_
                                     (##car _%$%e185688185700%_))
                                    (_%$%tl185690185705%_
                                     (##cdr _%$%e185688185700%_)))
                                (if (and (gx#identifier? _%$%hd185689185703%_)
                                         (gx#core-identifier=?
                                          _%$%hd185689185703%_
                                          '%#begin-module))
                                    (let ((_%body185708%_
                                           _%$%tl185690185705%_))
                                      (if (gx#sealed-syntax? _%stx185684%_)
                                          _%body185708%_
                                          (gx#core-expand-module-body
                                           _%body185708%_)))
                                    (_%$%E185687185696%_))))
                            (_%$%E185687185696%_)))))
                (_%$%E185686185710%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx185680%_)))
    (define gx#core-expand-module-body
      (lambda (_%body185376%_)
        (letrec ((_%expand-special185378%_
                  (lambda (_%hd185507%_ _%K185508%_ _%rest185509%_ _%r185510%_)
                    (let* ((_%$%e185511185551%_ _%hd185507%_)
                           (_%$%E185546185555%_
                            (lambda ()
                              (_%K185508%_
                               _%rest185509%_
                               (cons (gx#core-expand-top _%hd185507%_)
                                     _%r185510%_))))
                           (_%$%E185533185567%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185511185551%_)
                                  (let ((_%$%e185547185559%_
                                         (gx#syntax-e _%$%e185511185551%_)))
                                    (let ((_%$%hd185548185562%_
                                           (##car _%$%e185547185559%_))
                                          (_%$%tl185549185564%_
                                           (##cdr _%$%e185547185559%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd185548185562%_)
                                               (gx#core-identifier=?
                                                _%$%hd185548185562%_
                                                '%#export))
                                          (_%K185508%_
                                           _%rest185509%_
                                           (cons _%hd185507%_ _%r185510%_))
                                          (_%$%E185546185555%_))))
                                  (_%$%E185546185555%_))))
                           (_%$%E185523185609%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185511185551%_)
                                  (let ((_%$%e185534185571%_
                                         (gx#syntax-e _%$%e185511185551%_)))
                                    (let ((_%$%hd185535185574%_
                                           (##car _%$%e185534185571%_))
                                          (_%$%tl185536185576%_
                                           (##cdr _%$%e185534185571%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd185535185574%_)
                                               (gx#core-identifier=?
                                                _%$%hd185535185574%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl185536185576%_)
                                              (let ((_%$%e185537185579%_
                                                     (gx#syntax-e
                                                      _%$%tl185536185576%_)))
                                                (let ((_%$%hd185538185582%_
                                                       (##car _%$%e185537185579%_))
                                                      (_%$%tl185539185584%_
                                                       (##cdr _%$%e185537185579%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd185538185582%_)
                                                      (let ((_%$%e185543185587%_
                                                             (gx#syntax-e
                                                              _%$%hd185538185582%_)))
                                                        (let ((_%$%hd185544185590%_
                                                               (##car _%$%e185543185587%_))
                                                              (_%$%tl185545185592%_
                                                               (##cdr _%$%e185543185587%_)))
                                                          (let ((_%id185595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd185544185590%_))
                    (if (gx#stx-null? _%$%tl185545185592%_)
                        (if (gx#stx-pair? _%$%tl185539185584%_)
                            (let ((_%$%e185540185597%_
                                   (gx#syntax-e _%$%tl185539185584%_)))
                              (let ((_%$%hd185541185600%_
                                     (##car _%$%e185540185597%_))
                                    (_%$%tl185542185602%_
                                     (##cdr _%$%e185540185597%_)))
                                (let ((_%props185605%_ _%$%hd185541185600%_))
                                  (if (gx#stx-null? _%$%tl185542185602%_)
                                      (let ((_%bind185607%_
                                             (gx#resolve-identifier__0
                                              _%id185595%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind185607%_
                                         _%props185605%_)
                                        (_%K185508%_
                                         _%rest185509%_
                                         _%r185510%_))
                                      (_%$%E185533185567%_)))))
                            (_%$%E185533185567%_))
                        (_%$%E185533185567%_)))))
              (_%$%E185533185567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E185533185567%_))
                                          (_%$%E185533185567%_))))
                                  (_%$%E185533185567%_))))
                           (_%$%E185513185641%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185511185551%_)
                                  (let ((_%$%e185524185613%_
                                         (gx#syntax-e _%$%e185511185551%_)))
                                    (let ((_%$%hd185525185616%_
                                           (##car _%$%e185524185613%_))
                                          (_%$%tl185526185618%_
                                           (##cdr _%$%e185524185613%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd185525185616%_)
                                               (gx#core-identifier=?
                                                _%$%hd185525185616%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl185526185618%_)
                                              (let ((_%$%e185527185621%_
                                                     (gx#syntax-e
                                                      _%$%tl185526185618%_)))
                                                (let ((_%$%hd185528185624%_
                                                       (##car _%$%e185527185621%_))
                                                      (_%$%tl185529185626%_
                                                       (##cdr _%$%e185527185621%_)))
                                                  (let ((_%hd-bind185629%_
                                                         _%$%hd185528185624%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl185529185626%_)
                                                        (let ((_%$%e185530185631%_
                                                               (gx#syntax-e
                                                                _%$%tl185529185626%_)))
                                                          (let ((_%$%hd185531185634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e185530185631%_))
                        (_%$%tl185532185636%_ (##cdr _%$%e185530185631%_)))
                    (let ((_%expr185639%_ _%$%hd185531185634%_))
                      (if (gx#stx-null? _%$%tl185532185636%_)
                          (if (gx#core-bind-values? _%hd-bind185629%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind185629%_)
                                (_%K185508%_
                                 _%rest185509%_
                                 (cons _%hd185507%_ _%r185510%_)))
                              (_%$%E185523185609%_))
                          (_%$%E185523185609%_)))))
                (_%$%E185523185609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E185523185609%_))
                                          (_%$%E185523185609%_))))
                                  (_%$%E185523185609%_))))
                           (_%$%E185512185675%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185511185551%_)
                                  (let ((_%$%e185514185645%_
                                         (gx#syntax-e _%$%e185511185551%_)))
                                    (let ((_%$%hd185515185648%_
                                           (##car _%$%e185514185645%_))
                                          (_%$%tl185516185650%_
                                           (##cdr _%$%e185514185645%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd185515185648%_)
                                               (gx#core-identifier=?
                                                _%$%hd185515185648%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl185516185650%_)
                                              (let ((_%$%e185517185653%_
                                                     (gx#syntax-e
                                                      _%$%tl185516185650%_)))
                                                (let ((_%$%hd185518185656%_
                                                       (##car _%$%e185517185653%_))
                                                      (_%$%tl185519185658%_
                                                       (##cdr _%$%e185517185653%_)))
                                                  (let ((_%hd-bind185661%_
                                                         _%$%hd185518185656%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl185519185658%_)
                                                        (let ((_%$%e185520185663%_
                                                               (gx#syntax-e
                                                                _%$%tl185519185658%_)))
                                                          (let ((_%$%hd185521185666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e185520185663%_))
                        (_%$%tl185522185668%_ (##cdr _%$%e185520185663%_)))
                    (let* ((_%expr185671%_ _%$%hd185521185666%_)
                           (_%props185673%_ _%$%tl185522185668%_))
                      (if (and (gx#core-bind-values? _%hd-bind185661%_)
                               (gx#stx-list? _%props185673%_)
                               (not (gx#stx-null? _%props185673%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind185661%_)
                            (_%K185508%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind185661%_
                                          (cons _%props185673%_ '())))
                                   _%rest185509%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind185661%_
                                          (cons _%expr185671%_ '())))
                                   _%r185510%_)))
                          (_%$%E185513185641%_)))))
                (_%$%E185513185641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E185513185641%_))
                                          (_%$%E185513185641%_))))
                                  (_%$%E185513185641%_)))))
                      (_%$%E185512185675%_))))
                 (_%expand-body185379%_
                  (lambda (_%rbody185381%_)
                    (let _%lp185383%_ ((_%rest185385%_ _%rbody185381%_)
                                       (_%body185386%_ '()))
                      (let* ((_%$%rest185387185395%_ _%rest185385%_)
                             (_%$%else185389185403%_
                              (lambda () _%body185386%_))
                             (_%$%K185391185495%_
                              (lambda (_%rest185406%_ _%hd185407%_)
                                (let* ((_%$%e185408185429%_ _%hd185407%_)
                                       (_%$%E185424185433%_
                                        (lambda ()
                                          (_%lp185383%_
                                           _%rest185406%_
                                           (cons (gx#core-expand-expression
                                                  _%hd185407%_)
                                                 _%body185386%_))))
                                       (_%$%E185420185447%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e185408185429%_)
                                              (let ((_%$%e185425185437%_
                                                     (gx#syntax-e
                                                      _%$%e185408185429%_)))
                                                (let ((_%$%hd185426185440%_
                                                       (##car _%$%e185425185437%_))
                                                      (_%$%tl185427185442%_
                                                       (##cdr _%$%e185425185437%_)))
                                                  (let ((_%form185445%_
                                                         _%$%hd185426185440%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form185445%_
                                                         gx#special-form-binding?)
                                                        (_%lp185383%_
                                                         _%rest185406%_
                                                         (cons _%hd185407%_
                                                               _%body185386%_))
                                                        (_%$%E185424185433%_)))))
                                              (_%$%E185424185433%_))))
                                       (_%$%E185410185459%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e185408185429%_)
                                              (let ((_%$%e185421185451%_
                                                     (gx#syntax-e
                                                      _%$%e185408185429%_)))
                                                (let ((_%$%hd185422185454%_
                                                       (##car _%$%e185421185451%_))
                                                      (_%$%tl185423185456%_
                                                       (##cdr _%$%e185421185451%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd185422185454%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd185422185454%_
                                                            '%#export))
                                                      (_%lp185383%_
                                                       _%rest185406%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd185407%_)
                                                             _%body185386%_))
                                                      (_%$%E185420185447%_))))
                                              (_%$%E185420185447%_))))
                                       (_%$%E185409185491%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e185408185429%_)
                                              (let ((_%$%e185411185463%_
                                                     (gx#syntax-e
                                                      _%$%e185408185429%_)))
                                                (let ((_%$%hd185412185466%_
                                                       (##car _%$%e185411185463%_))
                                                      (_%$%tl185413185468%_
                                                       (##cdr _%$%e185411185463%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd185412185466%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd185412185466%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl185413185468%_)
                                                          (let ((_%$%e185414185471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl185413185468%_)))
                    (let ((_%$%hd185415185474%_ (##car _%$%e185414185471%_))
                          (_%$%tl185416185476%_ (##cdr _%$%e185414185471%_)))
                      (let ((_%hd-bind185479%_ _%$%hd185415185474%_))
                        (if (gx#stx-pair? _%$%tl185416185476%_)
                            (let ((_%$%e185417185481%_
                                   (gx#syntax-e _%$%tl185416185476%_)))
                              (let ((_%$%hd185418185484%_
                                     (##car _%$%e185417185481%_))
                                    (_%$%tl185419185486%_
                                     (##cdr _%$%e185417185481%_)))
                                (let ((_%expr185489%_ _%$%hd185418185484%_))
                                  (if (gx#stx-null? _%$%tl185419185486%_)
                                      (_%lp185383%_
                                       _%rest185406%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind185479%_)
                                               (gx#core-expand-expression
                                                _%expr185489%_))
                                              (gx#stx-source _%hd185407%_))
                                             _%body185386%_))
                                      (_%$%E185410185459%_)))))
                            (_%$%E185410185459%_)))))
                  (_%$%E185410185459%_))
              (_%$%E185410185459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E185410185459%_)))))
                                  (_%$%E185409185491%_)))))
                        (if (pair? _%$%rest185387185395%_)
                            (let ((_%$%hd185392185498%_
                                   (##car _%$%rest185387185395%_))
                                  (_%$%tl185393185500%_
                                   (##cdr _%$%rest185387185395%_)))
                              (let* ((_%hd185503%_ _%$%hd185392185498%_)
                                     (_%rest185505%_ _%$%tl185393185500%_))
                                (_%$%K185391185495%_
                                 _%rest185505%_
                                 _%hd185503%_)))
                            (_%$%else185389185403%_)))))))
          (_%expand-body185379%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body185376%_)
            _%expand-special185378%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx185217%_
               _%expanded?185218%_
               _%method185219%_
               _%current-phi185220%_
               _%expand1185221%_)
        (letrec ((_%K185223%_
                  (lambda (_%rest185343%_ _%r185344%_)
                    (let* ((_%$%e185345185352%_ _%rest185343%_)
                           (_%$%E185347185356%_ (lambda () _%r185344%_))
                           (_%$%E185346185372%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185345185352%_)
                                  (let ((_%$%e185348185360%_
                                         (gx#syntax-e _%$%e185345185352%_)))
                                    (let ((_%$%hd185349185363%_
                                           (##car _%$%e185348185360%_))
                                          (_%$%tl185350185365%_
                                           (##cdr _%$%e185348185360%_)))
                                      (let* ((_%hd185368%_
                                              _%$%hd185349185363%_)
                                             (_%rest185370%_
                                              _%$%tl185350185365%_))
                                        (_%step185224%_
                                         _%hd185368%_
                                         _%rest185370%_
                                         _%r185344%_))))
                                  (_%$%E185347185356%_)))))
                      (_%$%E185346185372%_))))
                 (_%step185224%_
                  (lambda (_%hd185257%_ _%rest185258%_ _%r185259%_)
                    (let* ((_%$%e185260185278%_ _%hd185257%_)
                           (_%$%E185273185282%_
                            (lambda ()
                              (if (_%expanded?185218%_ (gx#stx-e _%hd185257%_))
                                  (_%K185223%_
                                   _%rest185258%_
                                   (cons (gx#stx-e _%hd185257%_) _%r185259%_))
                                  (_%expand1185221%_
                                   _%hd185257%_
                                   _%K185223%_
                                   _%rest185258%_
                                   _%r185259%_))))
                           (_%$%E185269185298%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185260185278%_)
                                  (let ((_%$%e185274185286%_
                                         (gx#syntax-e _%$%e185260185278%_)))
                                    (let ((_%$%hd185275185289%_
                                           (##car _%$%e185274185286%_))
                                          (_%$%tl185276185291%_
                                           (##cdr _%$%e185274185286%_)))
                                      (let* ((_%macro185294%_
                                              _%$%hd185275185289%_)
                                             (_%body185296%_
                                              _%$%tl185276185291%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro185294%_
                                             gx#syntax-binding?)
                                            (_%K185223%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro185294%_)
                                                    _%hd185257%_
                                                    _%method185219%_)
                                                   _%rest185258%_)
                                             _%r185259%_)
                                            (_%$%E185273185282%_)))))
                                  (_%$%E185273185282%_))))
                           (_%$%E185262185312%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185260185278%_)
                                  (let ((_%$%e185270185302%_
                                         (gx#syntax-e _%$%e185260185278%_)))
                                    (let ((_%$%hd185271185305%_
                                           (##car _%$%e185270185302%_))
                                          (_%$%tl185272185307%_
                                           (##cdr _%$%e185270185302%_)))
                                      (if (eq? (gx#stx-e _%$%hd185271185305%_)
                                               'begin:)
                                          (let ((_%body185310%_
                                                 _%$%tl185272185307%_))
                                            (_%K185223%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest185258%_
                                              _%body185310%_)
                                             _%r185259%_))
                                          (_%$%E185269185298%_))))
                                  (_%$%E185269185298%_))))
                           (_%$%E185261185339%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185260185278%_)
                                  (let ((_%$%e185263185316%_
                                         (gx#syntax-e _%$%e185260185278%_)))
                                    (let ((_%$%hd185264185319%_
                                           (##car _%$%e185263185316%_))
                                          (_%$%tl185265185321%_
                                           (##cdr _%$%e185263185316%_)))
                                      (if (eq? (gx#stx-e _%$%hd185264185319%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl185265185321%_)
                                              (let ((_%$%e185266185324%_
                                                     (gx#syntax-e
                                                      _%$%tl185265185321%_)))
                                                (let ((_%$%hd185267185327%_
                                                       (##car _%$%e185266185324%_))
                                                      (_%$%tl185268185329%_
                                                       (##cdr _%$%e185266185324%_)))
                                                  (let* ((_%dphi185332%_
                                                          _%$%hd185267185327%_)
                                                         (_%body185334%_
                                                          _%$%tl185268185329%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi185332%_)
                                                        (let ((_%rbody185337%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K185223%_ _%body185334%_ '()))
                        _%current-phi185220%_
                        (fx+ (gx#stx-e _%dphi185332%_)
                             (_%current-phi185220%_)))))
                  (_%K185223%_
                   _%rest185258%_
                   (foldr__0 cons _%r185259%_ _%rbody185337%_)))
                (_%$%E185262185312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E185262185312%_))
                                          (_%$%E185262185312%_))))
                                  (_%$%E185262185312%_)))))
                      (_%$%E185261185339%_)))))
          (let* ((_%$%e185225185232%_ _%stx185217%_)
                 (_%$%E185227185236%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185225185232%_)))
                 (_%$%E185226185253%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185225185232%_)
                        (let ((_%$%e185228185240%_
                               (gx#syntax-e _%$%e185225185232%_)))
                          (let ((_%$%hd185229185243%_
                                 (##car _%$%e185228185240%_))
                                (_%$%tl185230185245%_
                                 (##cdr _%$%e185228185240%_)))
                            (let ((_%body185248%_ _%$%tl185230185245%_))
                              (if (_%current-phi185220%_)
                                  (_%K185223%_ _%body185248%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K185223%_ _%body185248%_ '()))
                                   _%current-phi185220%_
                                   (gx#current-expander-phi))))))
                        (_%$%E185227185236%_)))))
            (_%$%E185226185253%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx184871%_ _%internal-expand?184872%_)
        (letrec ((_%expand1184874%_
                  (lambda (_%hd185189%_ _%K185190%_ _%rest185191%_ _%r185192%_)
                    (if (gx#core-bound-module? _%hd185189%_)
                        (_%import1184875%_
                         (gx#syntax-local-e__0 _%hd185189%_)
                         _%K185190%_
                         _%rest185191%_
                         _%r185192%_)
                        (if (gx#core-library-module-path? _%hd185189%_)
                            (_%import1184875%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd185189%_))
                             _%K185190%_
                             _%rest185191%_
                             _%r185192%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd185189%_)
                                (_%import1184875%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd185189%_))
                                 _%K185190%_
                                 _%rest185191%_
                                 _%r185192%_)
                                (let ((_%e185198%_ (gx#stx-e _%hd185189%_)))
                                  (if (pair? _%e185198%_)
                                      (let ((_%$e185201%_
                                             (gx#stx-e (##car _%e185198%_))))
                                        (if (eq? 'spec: _%$e185201%_)
                                            (_%import-spec184878%_
                                             _%hd185189%_
                                             _%K185190%_
                                             _%rest185191%_
                                             _%r185192%_)
                                            (if (eq? 'in: _%$e185201%_)
                                                (_%import-submodule184876%_
                                                 _%hd185189%_
                                                 _%K185190%_
                                                 _%rest185191%_
                                                 _%r185192%_)
                                                (if (eq? 'runtime:
                                                         _%$e185201%_)
                                                    (_%import-runtime184877%_
                                                     _%hd185189%_
                                                     _%K185190%_
                                                     _%rest185191%_
                                                     _%r185192%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx184871%_
                                                     _%hd185189%_)))))
                                      (if (string? _%e185198%_)
                                          (_%import1184875%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd185189%_
                                             (gx#stx-source _%stx184871%_)))
                                           _%K185190%_
                                           _%rest185191%_
                                           _%r185192%_)
                                          (if (##structure-instance-of?
                                               _%e185198%_
                                               'gx#module-context::t)
                                              (_%K185190%_
                                               _%rest185191%_
                                               (cons _%e185198%_ _%r185192%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx184871%_
                                               _%hd185189%_))))))))))
                 (_%import1184875%_
                  (lambda (_%ctx185178%_
                           _%K185179%_
                           _%rest185180%_
                           _%r185181%_)
                    (let ((_%dphi185183%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K185179%_
                       _%rest185180%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx185178%_
                              _%dphi185183%_
                              (map (lambda (_%$%g185184185186%_)
                                     (gx#core-module-export->import__%
                                      _%$%g185184185186%_
                                      '#f
                                      _%dphi185183%_))
                                   (##unchecked-structure-ref
                                    _%ctx185178%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r185181%_)))))
                 (_%import-submodule184876%_
                  (lambda (_%hd185145%_ _%K185146%_ _%rest185147%_ _%r185148%_)
                    (let* ((_%$%e185149185156%_ _%hd185145%_)
                           (_%$%E185151185160%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185149185156%_)))
                           (_%$%E185150185174%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185149185156%_)
                                  (let ((_%$%e185152185164%_
                                         (gx#syntax-e _%$%e185149185156%_)))
                                    (let ((_%$%hd185153185167%_
                                           (##car _%$%e185152185164%_))
                                          (_%$%tl185154185169%_
                                           (##cdr _%$%e185152185164%_)))
                                      (let ((_%spath185172%_
                                             _%$%tl185154185169%_))
                                        (_%import1184875%_
                                         (_%import-spec-source184879%_
                                          _%spath185172%_)
                                         _%K185146%_
                                         _%rest185147%_
                                         _%r185148%_))))
                                  (_%$%E185151185160%_)))))
                      (_%$%E185150185174%_))))
                 (_%import-runtime184877%_
                  (lambda (_%hd185112%_ _%K185113%_ _%rest185114%_ _%r185115%_)
                    (let* ((_%$%e185116185123%_ _%hd185112%_)
                           (_%$%E185118185127%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185116185123%_)))
                           (_%$%E185117185141%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185116185123%_)
                                  (let ((_%$%e185119185131%_
                                         (gx#syntax-e _%$%e185116185123%_)))
                                    (let ((_%$%hd185120185134%_
                                           (##car _%$%e185119185131%_))
                                          (_%$%tl185121185136%_
                                           (##cdr _%$%e185119185131%_)))
                                      (let ((_%spath185139%_
                                             _%$%tl185121185136%_))
                                        (_%K185113%_
                                         _%rest185114%_
                                         (cons (_%import-spec-source184879%_
                                                _%spath185139%_)
                                               _%r185115%_)))))
                                  (_%$%E185118185127%_)))))
                      (_%$%E185117185141%_))))
                 (_%import-spec184878%_
                  (lambda (_%hd184950%_ _%K184951%_ _%rest184952%_ _%r184953%_)
                    (let* ((_%$%e184954184971%_ _%hd184950%_)
                           (_%$%E184963184975%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e184954184971%_)))
                           (_%$%E184956185086%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184954184971%_)
                                  (let ((_%$%e184964184979%_
                                         (gx#syntax-e _%$%e184954184971%_)))
                                    (let ((_%$%hd184965184982%_
                                           (##car _%$%e184964184979%_))
                                          (_%$%tl184966184984%_
                                           (##cdr _%$%e184964184979%_)))
                                      (if (gx#stx-pair? _%$%tl184966184984%_)
                                          (let ((_%$%e184967184987%_
                                                 (gx#syntax-e
                                                  _%$%tl184966184984%_)))
                                            (let ((_%$%hd184968184990%_
                                                   (##car _%$%e184967184987%_))
                                                  (_%$%tl184969184992%_
                                                   (##cdr _%$%e184967184987%_)))
                                              (let* ((_%path184995%_
                                                      _%$%hd184968184990%_)
                                                     (_%specs184997%_
                                                      _%$%tl184969184992%_))
                                                (let ((_%src-ctx184999%_
                                                       (_%import-spec-source184879%_
                                                        _%path184995%_))
                                                      (_%exports185000%_
                                                       (make-hash-table__%
                                                        '#f
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value))
                                                      (_%specs185001%_
                                                       (gx#syntax->list
                                                        _%specs184997%_)))
                                                  (for-each
                                                   (lambda (_%out185003%_)
                                                     (__hash-put!
                                                      _%exports185000%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out185003%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out185003%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out185003%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx184999%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K184951%_
                                                   _%rest184952%_
                                                   (foldl__0
                                                    (lambda (_%spec185005%_
                                                             _%r185006%_)
                                                      (let* ((_%$%e185007185023%_
                                                              _%spec185005%_)
                                                             (_%$%E185009185027%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e185007185023%_)))
                     (_%$%E185008185082%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e185007185023%_)
                            (let ((_%$%e185010185031%_
                                   (gx#syntax-e _%$%e185007185023%_)))
                              (let ((_%$%hd185011185034%_
                                     (##car _%$%e185010185031%_))
                                    (_%$%tl185012185036%_
                                     (##cdr _%$%e185010185031%_)))
                                (let ((_%phi185039%_ _%$%hd185011185034%_))
                                  (if (gx#stx-pair? _%$%tl185012185036%_)
                                      (let ((_%$%e185013185041%_
                                             (gx#syntax-e
                                              _%$%tl185012185036%_)))
                                        (let ((_%$%hd185014185044%_
                                               (##car _%$%e185013185041%_))
                                              (_%$%tl185015185046%_
                                               (##cdr _%$%e185013185041%_)))
                                          (let ((_%name185049%_
                                                 _%$%hd185014185044%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl185015185046%_)
                                                (let ((_%$%e185016185051%_
                                                       (gx#syntax-e
                                                        _%$%tl185015185046%_)))
                                                  (let ((_%$%hd185017185054%_
                                                         (##car _%$%e185016185051%_))
                                                        (_%$%tl185018185056%_
                                                         (##cdr _%$%e185016185051%_)))
                                                    (let ((_%src-phi185059%_
                                                           _%$%hd185017185054%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl185018185056%_)
                                                          (let ((_%$%e185019185061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl185018185056%_)))
                    (let ((_%$%hd185020185064%_ (##car _%$%e185019185061%_))
                          (_%$%tl185021185066%_ (##cdr _%$%e185019185061%_)))
                      (let ((_%src-name185069%_ _%$%hd185020185064%_))
                        (if (gx#stx-null? _%$%tl185021185066%_)
                            (if (and (gx#stx-fixnum? _%src-phi185059%_)
                                     (gx#identifier? _%src-name185069%_)
                                     (gx#stx-fixnum? _%phi185039%_)
                                     (gx#identifier? _%name185049%_))
                                (let ((_%src-phi185071%_
                                       (gx#stx-e _%src-phi185059%_))
                                      (_%src-name185072%_
                                       (gx#core-identifier-key
                                        _%src-name185069%_))
                                      (_%phi185073%_ (gx#stx-e _%phi185039%_))
                                      (_%name185074%_
                                       (gx#core-identifier-key
                                        _%name185049%_)))
                                  (let ((_%$e185076%_
                                         (__hash-get
                                          _%exports185000%_
                                          (cons _%src-phi185071%_
                                                _%src-name185072%_))))
                                    (if _%$e185076%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e185076%_
                                               _%name185074%_
                                               (fx- _%phi185073%_
                                                    _%src-phi185071%_))
                                              _%r185006%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx184871%_
                                         _%hd184950%_))))
                                (_%$%E185009185027%_))
                            (_%$%E185009185027%_)))))
                  (_%$%E185009185027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E185009185027%_)))))
                                      (_%$%E185009185027%_)))))
                            (_%$%E185009185027%_)))))
                (_%$%E185008185082%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r184953%_
                                                    _%specs185001%_))))))
                                          (_%$%E184963184975%_))))
                                  (_%$%E184963184975%_))))
                           (_%$%E184955185108%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184954184971%_)
                                  (let ((_%$%e184957185090%_
                                         (gx#syntax-e _%$%e184954184971%_)))
                                    (let ((_%$%hd184958185093%_
                                           (##car _%$%e184957185090%_))
                                          (_%$%tl184959185095%_
                                           (##cdr _%$%e184957185090%_)))
                                      (if (gx#stx-pair? _%$%tl184959185095%_)
                                          (let ((_%$%e184960185098%_
                                                 (gx#syntax-e
                                                  _%$%tl184959185095%_)))
                                            (let ((_%$%hd184961185101%_
                                                   (##car _%$%e184960185098%_))
                                                  (_%$%tl184962185103%_
                                                   (##cdr _%$%e184960185098%_)))
                                              (let ((_%path185106%_
                                                     _%$%hd184961185101%_))
                                                (if (gx#stx-null?
                                                     _%$%tl184962185103%_)
                                                    (_%K184951%_
                                                     _%rest184952%_
                                                     (cons (_%import-spec-source184879%_
                                                            _%path185106%_)
                                                           _%r184953%_))
                                                    (_%$%E184956185086%_)))))
                                          (_%$%E184956185086%_))))
                                  (_%$%E184956185086%_)))))
                      (_%$%E184955185108%_))))
                 (_%import-spec-source184879%_
                  (lambda (_%spath184948%_)
                    (gx#core-import-nested-module
                     _%spath184948%_
                     _%stx184871%_)))
                 (_%import!184880%_
                  (lambda (_%rbody184893%_)
                    (letrec* ((_%current-ctx184895%_
                               (gx#current-expander-context))
                              (_%deps184896%_ (make-hash-table-eq))
                              (_%bind!184897%_
                               (lambda (_%hd184946%_)
                                 (gx#core-bind-import!__1
                                  _%hd184946%_
                                  _%current-ctx184895%_))))
                      (let _%lp184899%_ ((_%rest184901%_ _%rbody184893%_)
                                         (_%body184902%_ '()))
                        (let* ((_%$%rest184903184911%_ _%rest184901%_)
                               (_%$%else184905184922%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx184895%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx184895%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx184895%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body184902%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx184919%_ _%_184920%_)
                                     (gx#eval-module _%ctx184919%_))
                                   _%deps184896%_)
                                  _%body184902%_))
                               (_%$%K184907184934%_
                                (lambda (_%rest184925%_ _%hd184926%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd184926%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!184897%_ _%hd184926%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd184926%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd184926%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps184896%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd184926%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd184926%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!184897%_
                                             (##unchecked-structure-ref
                                              _%hd184926%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd184926%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps184896%_
                                                 (##unchecked-structure-ref
                                                  _%hd184926%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e184930%_
                                                 (##structure-instance-of?
                                                  _%hd184926%_
                                                  'gx#module-context::t)))
                                            (if _%$e184930%_
                                                _%$e184930%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx184871%_
                                                 _%hd184926%_)))))
                                  (_%lp184899%_
                                   _%rest184925%_
                                   (cons _%hd184926%_ _%body184902%_)))))
                          (if (pair? _%$%rest184903184911%_)
                              (let ((_%$%hd184908184937%_
                                     (##car _%$%rest184903184911%_))
                                    (_%$%tl184909184939%_
                                     (##cdr _%$%rest184903184911%_)))
                                (let* ((_%hd184942%_ _%$%hd184908184937%_)
                                       (_%rest184944%_ _%$%tl184909184939%_))
                                  (_%$%K184907184934%_
                                   _%rest184944%_
                                   _%hd184942%_)))
                              (_%$%else184905184922%_)))))))
                 (_%expanded-import?184881%_
                  (lambda (_%e184885%_)
                    (let ((_%$e184887%_
                           (##structure-direct-instance-of?
                            _%e184885%_
                            'gx#import-set::t)))
                      (if _%$e184887%_
                          _%$e184887%_
                          (let ((_%$e184890%_
                                 (##structure-direct-instance-of?
                                  _%e184885%_
                                  'gx#module-import::t)))
                            (if _%$e184890%_
                                _%$e184890%_
                                (##structure-instance-of?
                                 _%e184885%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody184883%_
                 (gx#core-expand-import/export
                  _%stx184871%_
                  _%expanded-import?184881%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1184874%_)))
            (if _%internal-expand?184872%_
                (reverse _%rbody184883%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!184880%_ _%rbody184883%_))
                 (gx#stx-source _%stx184871%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx185210%_)
        (let ((_%internal-expand?185212%_ '#f))
          (gx#core-expand-import%__%
           _%stx185210%_
           _%internal-expand?185212%_))))
    (define gx#core-expand-import%
      (lambda _g187968_
        (let ((_g187969_ (##length _g187968_)))
          (cond ((##fx= _g187969_ 1)
                 (apply gx#core-expand-import%__0 _g187968_))
                ((##fx= _g187969_ 2)
                 (apply gx#core-expand-import%__% _g187968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g187968_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath184798%_ _%where184799%_)
        (let* ((_%$%e184800184807%_ _%spath184798%_)
               (_%$%E184802184811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184800184807%_)))
               (_%$%E184801184866%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184800184807%_)
                      (let ((_%$%e184803184815%_
                             (gx#syntax-e _%$%e184800184807%_)))
                        (let ((_%$%hd184804184818%_
                               (##car _%$%e184803184815%_))
                              (_%$%tl184805184820%_
                               (##cdr _%$%e184803184815%_)))
                          (let* ((_%origin184823%_ _%$%hd184804184818%_)
                                 (_%sub184825%_ _%$%tl184805184820%_)
                                 (_%origin-ctx184827%_
                                  (if (gx#stx-false? _%origin184823%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin184823%_))))
                            (let _%lp184829%_ ((_%rest184831%_ _%sub184825%_)
                                               (_%ctx184832%_
                                                _%origin-ctx184827%_))
                              (let* ((_%$%e184833184840%_ _%rest184831%_)
                                     (_%$%E184835184844%_
                                      (lambda () _%ctx184832%_))
                                     (_%$%E184834184862%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e184833184840%_)
                                            (let ((_%$%e184836184848%_
                                                   (gx#syntax-e
                                                    _%$%e184833184840%_)))
                                              (let ((_%$%hd184837184851%_
                                                     (##car _%$%e184836184848%_))
                                                    (_%$%tl184838184853%_
                                                     (##cdr _%$%e184836184848%_)))
                                                (let* ((_%id184856%_
                                                        _%$%hd184837184851%_)
                                                       (_%rest184858%_
                                                        _%$%tl184838184853%_)
                                                       (_%bind184860%_
                                                        (gx#resolve-identifier__%
                                                         _%id184856%_
                                                         '0
                                                         _%ctx184832%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind184860%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind184860%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where184799%_
                                                       _%spath184798%_
                                                       _%id184856%_))
                                                  (_%lp184829%_
                                                   _%rest184858%_
                                                   (##unchecked-structure-ref
                                                    _%bind184860%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E184835184844%_)))))
                                (_%$%E184834184862%_))))))
                      (_%$%E184802184811%_)))))
          (_%$%E184801184866%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd184796%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd184796%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx184291%_ _%internal-expand?184292%_)
        (letrec* ((_%make-export__187896187897%_
                   (lambda (_%bind184744%_
                            _%phi184745%_
                            _%ctx184746%_
                            _%name184747%_)
                     (let* ((_%key184749%_
                             (##unchecked-structure-ref
                              _%bind184744%_
                              '2
                              '#f
                              '#f))
                            (_%export-key184751%_
                             (if _%name184747%_
                                 (gx#core-identifier-key _%name184747%_)
                                 _%key184749%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx184746%_
                        _%key184749%_
                        _%phi184745%_
                        _%export-key184751%_
                        (let ((_%$e184754%_
                               (##structure-instance-of?
                                _%bind184744%_
                                'gx#extern-binding::t)))
                          (if _%$e184754%_
                              _%$e184754%_
                              (##structure-direct-instance-of?
                               _%bind184744%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__187898187901%_
                   (lambda (_%bind184760%_)
                     (let* ((_%phi184762%_ (gx#current-export-expander-phi))
                            (_%ctx184764%_ (gx#current-expander-context))
                            (_%name184766%_ '#f))
                       (_%make-export__187896187897%_
                        _%bind184760%_
                        _%phi184762%_
                        _%ctx184764%_
                        _%name184766%_))))
                  (_%make-export__1__187899187902%_
                   (lambda (_%bind184768%_ _%phi184769%_)
                     (let* ((_%ctx184771%_ (gx#current-expander-context))
                            (_%name184773%_ '#f))
                       (_%make-export__187896187897%_
                        _%bind184768%_
                        _%phi184769%_
                        _%ctx184771%_
                        _%name184773%_))))
                  (_%make-export__2__187900187903%_
                   (lambda (_%bind184775%_ _%phi184776%_ _%ctx184777%_)
                     (let ((_%name184779%_ '#f))
                       (_%make-export__187896187897%_
                        _%bind184775%_
                        _%phi184776%_
                        _%ctx184777%_
                        _%name184779%_))))
                  (_%make-export184294%_
                   (lambda _g187970_
                     (let ((_g187971_ (##length _g187970_)))
                       (cond ((##fx= _g187971_ 1)
                              (apply _%make-export__0__187898187901%_
                                     _g187970_))
                             ((##fx= _g187971_ 2)
                              (apply _%make-export__1__187899187902%_
                                     _g187970_))
                             ((##fx= _g187971_ 3)
                              (apply _%make-export__2__187900187903%_
                                     _g187970_))
                             ((##fx= _g187971_ 4)
                              (apply _%make-export__187896187897%_ _g187970_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g187970_))))))
                  (_%expand1184295%_
                   (lambda (_%hd184449%_
                            _%K184450%_
                            _%rest184451%_
                            _%r184452%_)
                     (let* ((_%$%e184453184485%_ _%hd184449%_)
                            (_%$%E184480184489%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx184291%_
                                _%hd184449%_)))
                            (_%$%E184470184573%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e184453184485%_)
                                   (let ((_%$%e184481184493%_
                                          (gx#syntax-e _%$%e184453184485%_)))
                                     (let ((_%$%hd184482184496%_
                                            (##car _%$%e184481184493%_))
                                           (_%$%tl184483184498%_
                                            (##cdr _%$%e184481184493%_)))
                                       (if (eq? (gx#stx-e _%$%hd184482184496%_)
                                                'import:)
                                           (let ((_%in184501%_
                                                  _%$%tl184483184498%_))
                                             (if (gx#stx-list? _%in184501%_)
                                                 (let _%lp184503%_ ((_%in-rest184505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in184501%_)
                            (_%r184506%_ _%r184452%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e184507184514%_
                                                           _%in-rest184505%_)
                                                          (_%$%E184509184518%_
                                                           (lambda ()
                                                             (_%K184450%_
                                                              _%rest184451%_
                                                              _%r184506%_)))
                                                          (_%$%E184508184569%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e184507184514%_)
                         (let ((_%$%e184510184522%_
                                (gx#syntax-e _%$%e184507184514%_)))
                           (let ((_%$%hd184511184525%_
                                  (##car _%$%e184510184522%_))
                                 (_%$%tl184512184527%_
                                  (##cdr _%$%e184510184522%_)))
                             (let* ((_%hd184530%_ _%$%hd184511184525%_)
                                    (_%in-rest184532%_ _%$%tl184512184527%_)
                                    (_%src184567%_
                                     (if (gx#core-bound-module? _%hd184530%_)
                                         (gx#syntax-local-e__0 _%hd184530%_)
                                         (if (gx#core-library-module-path?
                                              _%hd184530%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd184530%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd184530%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd184530%_))
                                                 (if (gx#stx-string?
                                                      _%hd184530%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd184530%_
                                                       (gx#stx-source
                                                        _%stx184291%_)))
                                                     (let* ((_%$%e184538184545%_
                                                             _%hd184530%_)
                                                            (_%$%E184540184549%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx184291%_
                                                                _%hd184530%_)))
                                                            (_%$%E184539184563%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e184538184545%_)
                           (let ((_%$%e184541184553%_
                                  (gx#syntax-e _%$%e184538184545%_)))
                             (let ((_%$%hd184542184556%_
                                    (##car _%$%e184541184553%_))
                                   (_%$%tl184543184558%_
                                    (##cdr _%$%e184541184553%_)))
                               (if (eq? (gx#stx-e _%$%hd184542184556%_) 'in:)
                                   (let ((_%spath184561%_
                                          _%$%tl184543184558%_))
                                     (gx#core-import-nested-module
                                      _%spath184561%_
                                      _%stx184291%_))
                                   (_%$%E184540184549%_))))
                           (_%$%E184540184549%_)))))
               (_%$%E184539184563%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp184503%_
                                _%in-rest184532%_
                                (_%export-imports184296%_
                                 _%src184567%_
                                 _%r184506%_)))))
                         (_%$%E184509184518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E184508184569%_)))
                                                 (_%$%E184480184489%_)))
                                           (_%$%E184480184489%_))))
                                   (_%$%E184480184489%_))))
                            (_%$%E184457184613%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e184453184485%_)
                                   (let ((_%$%e184471184577%_
                                          (gx#syntax-e _%$%e184453184485%_)))
                                     (let ((_%$%hd184472184580%_
                                            (##car _%$%e184471184577%_))
                                           (_%$%tl184473184582%_
                                            (##cdr _%$%e184471184577%_)))
                                       (if (eq? (gx#stx-e _%$%hd184472184580%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl184473184582%_)
                                               (let ((_%$%e184474184585%_
                                                      (gx#syntax-e
                                                       _%$%tl184473184582%_)))
                                                 (let ((_%$%hd184475184588%_
                                                        (##car _%$%e184474184585%_))
                                                       (_%$%tl184476184590%_
                                                        (##cdr _%$%e184474184585%_)))
                                                   (let ((_%id184593%_
                                                          _%$%hd184475184588%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl184476184590%_)
                                                         (let ((_%$%e184477184595%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl184476184590%_)))
                   (let ((_%$%hd184478184598%_ (##car _%$%e184477184595%_))
                         (_%$%tl184479184600%_ (##cdr _%$%e184477184595%_)))
                     (let ((_%name184603%_ _%$%hd184478184598%_))
                       (if (gx#stx-null? _%$%tl184479184600%_)
                           (let* ((_%phi184605%_
                                   (gx#current-export-expander-phi))
                                  (_%$e184607%_
                                   (gx#core-resolve-identifier__1
                                    _%id184593%_
                                    _%phi184605%_)))
                             (if _%$e184607%_
                                 (_%K184450%_
                                  _%rest184451%_
                                  (cons (_%make-export__187896187897%_
                                         _%$e184607%_
                                         _%phi184605%_
                                         (gx#current-expander-context)
                                         _%name184603%_)
                                        _%r184452%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx184291%_
                                  _%hd184449%_
                                  _%id184593%_)))
                           (_%$%E184470184573%_)))))
                 (_%$%E184470184573%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E184470184573%_))
                                           (_%$%E184470184573%_))))
                                   (_%$%E184470184573%_))))
                            (_%$%E184456184663%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e184453184485%_)
                                   (let ((_%$%e184458184617%_
                                          (gx#syntax-e _%$%e184453184485%_)))
                                     (let ((_%$%hd184459184620%_
                                            (##car _%$%e184458184617%_))
                                           (_%$%tl184460184622%_
                                            (##cdr _%$%e184458184617%_)))
                                       (if (eq? (gx#stx-e _%$%hd184459184620%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl184460184622%_)
                                               (let ((_%$%e184461184625%_
                                                      (gx#syntax-e
                                                       _%$%tl184460184622%_)))
                                                 (let ((_%$%hd184462184628%_
                                                        (##car _%$%e184461184625%_))
                                                       (_%$%tl184463184630%_
                                                        (##cdr _%$%e184461184625%_)))
                                                   (let ((_%phi184633%_
                                                          _%$%hd184462184628%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl184463184630%_)
                                                         (let ((_%$%e184464184635%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl184463184630%_)))
                   (let ((_%$%hd184465184638%_ (##car _%$%e184464184635%_))
                         (_%$%tl184466184640%_ (##cdr _%$%e184464184635%_)))
                     (let ((_%id184643%_ _%$%hd184465184638%_))
                       (if (gx#stx-pair? _%$%tl184466184640%_)
                           (let ((_%$%e184467184645%_
                                  (gx#syntax-e _%$%tl184466184640%_)))
                             (let ((_%$%hd184468184648%_
                                    (##car _%$%e184467184645%_))
                                   (_%$%tl184469184650%_
                                    (##cdr _%$%e184467184645%_)))
                               (let ((_%name184653%_ _%$%hd184468184648%_))
                                 (if (gx#stx-null? _%$%tl184469184650%_)
                                     (if (and (gx#stx-fixnum? _%phi184633%_)
                                              (gx#identifier? _%id184643%_)
                                              (gx#identifier? _%name184653%_))
                                         (let* ((_%phi184655%_
                                                 (gx#stx-e _%phi184633%_))
                                                (_%$e184657%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id184643%_
                                                  _%phi184655%_)))
                                           (if _%$e184657%_
                                               (_%K184450%_
                                                _%rest184451%_
                                                (cons (_%make-export__187896187897%_
                                                       _%$e184657%_
                                                       _%phi184655%_
                                                       (gx#current-expander-context)
                                                       _%name184653%_)
                                                      _%r184452%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx184291%_
                                                _%hd184449%_
                                                _%id184643%_)))
                                         (_%$%E184457184613%_))
                                     (_%$%E184457184613%_)))))
                           (_%$%E184457184613%_)))))
                 (_%$%E184457184613%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E184457184613%_))
                                           (_%$%E184457184613%_))))
                                   (_%$%E184457184613%_))))
                            (_%$%E184455184675%_
                             (lambda ()
                               (let ((_%id184667%_ _%$%e184453184485%_))
                                 (if (gx#identifier? _%id184667%_)
                                     (let ((_%$e184669%_
                                            (gx#core-resolve-identifier__1
                                             _%id184667%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e184669%_
                                           (_%K184450%_
                                            _%rest184451%_
                                            (cons (_%make-export__0__187898187901%_
                                                   _%$e184669%_)
                                                  _%r184452%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx184291%_
                                            _%hd184449%_)))
                                     (_%$%E184456184663%_)))))
                            (_%$%E184454184739%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e184453184485%_) '#t)
                                   (let* ((_%current-ctx184679%_
                                           (gx#current-expander-context))
                                          (_%current-phi184681%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx184683%_
                                           (gx#core-context-shift
                                            _%current-ctx184679%_
                                            _%current-phi184681%_))
                                          (_%phi-bind184685%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx184683%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp184688%_ ((_%bind-rest184690%_
                                                         _%phi-bind184685%_)
                                                        (_%set184691%_ '()))
                                       (let* ((_%$%bind-rest184692184702%_
                                               _%bind-rest184690%_)
                                              (_%$%else184694184710%_
                                               (lambda ()
                                                 (_%K184450%_
                                                  _%rest184451%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi184681%_
                                                         _%set184691%_)
                                                        _%r184452%_))))
                                              (_%$%K184696184720%_
                                               (lambda (_%bind-rest184713%_
                                                        _%bind184714%_
                                                        _%key184715%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind184714%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind184714%_))
                                                     (_%lp184688%_
                                                      _%bind-rest184713%_
                                                      _%set184691%_)
                                                     (_%lp184688%_
                                                      _%bind-rest184713%_
                                                      (cons (_%make-export__2__187900187903%_
                                                             _%bind184714%_
                                                             _%current-phi184681%_
                                                             _%current-ctx184679%_)
                                                            _%set184691%_))))))
                                         (if (pair? _%$%bind-rest184692184702%_)
                                             (let ((_%$%hd184697184723%_
                                                    (##car _%$%bind-rest184692184702%_))
                                                   (_%$%tl184698184725%_
                                                    (##cdr _%$%bind-rest184692184702%_)))
                                               (if (pair? _%$%hd184697184723%_)
                                                   (let ((_%$%hd184699184728%_
                                                          (##car _%$%hd184697184723%_))
                                                         (_%$%tl184700184730%_
                                                          (##cdr _%$%hd184697184723%_)))
                                                     (let* ((_%key184733%_
                                                             _%$%hd184699184728%_)
                                                            (_%bind184735%_
                                                             _%$%tl184700184730%_)
                                                            (_%bind-rest184737%_
                                                             _%$%tl184698184725%_))
                                                       (_%$%K184696184720%_
                                                        _%bind-rest184737%_
                                                        _%bind184735%_
                                                        _%key184733%_)))
                                                   (_%$%else184694184710%_)))
                                             (_%$%else184694184710%_)))))
                                   (_%$%E184455184675%_)))))
                       (_%$%E184454184739%_))))
                  (_%export-imports184296%_
                   (lambda (_%src184326%_ _%r184327%_)
                     (letrec* ((_%current-ctx184329%_
                                (gx#current-expander-context))
                               (_%current-phi184330%_
                                (gx#current-export-expander-phi))
                               (_%import->export184331%_
                                (lambda (_%in184412%_)
                                  (let* ((_%$%in184413184421%_ _%in184412%_)
                                         (_%$%E184415184424%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in184413184421%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K184416184431%_
                                          (lambda (_%phi184427%_
                                                   _%key184428%_
                                                   _%out184429%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx184329%_
                                             _%key184428%_
                                             _%phi184427%_
                                             _%key184428%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in184413184421%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e184417184434%_
                                                (##unchecked-structure-ref
                                                 _%$%in184413184421%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out184437%_
                                                _%$%e184417184434%_)
                                               (_%$%e184418184439%_
                                                (##unchecked-structure-ref
                                                 _%$%in184413184421%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key184442%_
                                                _%$%e184418184439%_)
                                               (_%$%e184419184444%_
                                                (##unchecked-structure-ref
                                                 _%$%in184413184421%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi184447%_
                                                _%$%e184419184444%_))
                                          (_%$%K184416184431%_
                                           _%phi184447%_
                                           _%key184442%_
                                           _%out184437%_))
                                        (_%$%E184415184424%_)))))
                               (_%fold-e184332%_
                                (lambda (_%in184334%_ _%r184335%_)
                                  (let* ((_%$%in184336184350%_ _%in184334%_)
                                         (_%$%else184339184358%_
                                          (lambda () _%r184335%_)))
                                    (let ((_%$%K184345184394%_
                                           (lambda (_%phi184390%_
                                                    _%key184391%_
                                                    _%out184392%_)
                                             (if (and (fx= _%phi184390%_
                                                           _%current-phi184330%_)
                                                      (eq? _%src184326%_
                                                           (##unchecked-structure-ref
                                                            _%out184392%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export184331%_
                                                        _%in184334%_)
                                                       _%r184335%_)
                                                 _%r184335%_)))
                                          (_%$%K184341184369%_
                                           (lambda (_%imports184362%_
                                                    _%phi184363%_
                                                    _%ctx184364%_)
                                             (if (and (fx= _%phi184363%_
                                                           _%current-phi184330%_)
                                                      (eq? _%src184326%_
                                                           _%ctx184364%_))
                                                 (foldl__0
                                                  (lambda (_%in184366%_
                                                           _%r184367%_)
                                                    (cons (_%import->export184331%_
                                                           _%in184366%_)
                                                          _%r184367%_))
                                                  _%r184335%_
                                                  _%imports184362%_)
                                                 _%r184335%_))))
                                      (let ((_%$%try-match184338184387%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in184336184350%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e184342184372%_
                                                           (##unchecked-structure-ref
                                                            _%$%in184336184350%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e184343184377%_
                                                           (##unchecked-structure-ref
                                                            _%$%in184336184350%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e184344184382%_
                                                           (##unchecked-structure-ref
                                                            _%$%in184336184350%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx184375%_
                                                            _%$%e184342184372%_)
                                                           (_%phi184380%_
                                                            _%$%e184343184377%_)
                                                           (_%imports184385%_
                                                            _%$%e184344184382%_))
                                                       (_%$%K184341184369%_
                                                        _%imports184385%_
                                                        _%phi184380%_
                                                        _%ctx184375%_)))
                                                   (_%$%else184339184358%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in184336184350%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e184346184397%_
                                                    (##unchecked-structure-ref
                                                     _%$%in184336184350%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e184347184402%_
                                                    (##unchecked-structure-ref
                                                     _%$%in184336184350%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e184348184407%_
                                                    (##unchecked-structure-ref
                                                     _%$%in184336184350%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out184400%_
                                                     _%$%e184346184397%_)
                                                    (_%key184405%_
                                                     _%$%e184347184402%_)
                                                    (_%phi184410%_
                                                     _%$%e184348184407%_))
                                                (_%$%K184345184394%_
                                                 _%phi184410%_
                                                 _%key184405%_
                                                 _%out184400%_)))
                                            (_%$%try-match184338184387%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src184326%_
                              _%current-phi184330%_
                              (foldl__0
                               _%fold-e184332%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx184329%_
                                '8
                                '#f
                                '#f)))
                             _%r184327%_))))
                  (_%export!184297%_
                   (lambda (_%rbody184313%_)
                     (letrec* ((_%current-ctx184315%_
                                (gx#current-expander-context))
                               (_%fold-e184316%_
                                (lambda (_%out184320%_ _%r184321%_)
                                  (if (##structure-direct-instance-of?
                                       _%out184320%_
                                       'gx#module-export::t)
                                      (cons _%out184320%_ _%r184321%_)
                                      (if (##structure-direct-instance-of?
                                           _%out184320%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r184321%_
                                           (##unchecked-structure-ref
                                            _%out184320%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r184321%_)))))
                       (let ((_%body184318%_ (reverse _%rbody184313%_)))
                         (##unchecked-structure-set!
                          _%current-ctx184315%_
                          (foldl__0
                           _%fold-e184316%_
                           (##unchecked-structure-ref
                            _%current-ctx184315%_
                            '9
                            '#f
                            '#f)
                           _%body184318%_)
                          '9
                          '#f
                          '#f)
                         _%body184318%_))))
                  (_%expanded-export?184298%_
                   (lambda (_%e184308%_)
                     (let ((_%$e184310%_
                            (##structure-direct-instance-of?
                             _%e184308%_
                             'gx#module-export::t)))
                       (if _%$e184310%_
                           _%$e184310%_
                           (##structure-direct-instance-of?
                            _%e184308%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?184292%_)
              (let ((_%rbody184304%_
                     (gx#core-expand-import/export
                      _%stx184291%_
                      _%expanded-export?184298%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1184295%_)))
                (if _%internal-expand?184292%_
                    (reverse _%rbody184304%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!184297%_ _%rbody184304%_))
                     (gx#stx-source _%stx184291%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx184291%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx184291%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx184789%_)
        (let ((_%internal-expand?184791%_ '#f))
          (gx#core-expand-export%__%
           _%stx184789%_
           _%internal-expand?184791%_))))
    (define gx#core-expand-export%
      (lambda _g187972_
        (let ((_g187973_ (##length _g187972_)))
          (cond ((##fx= _g187973_ 1)
                 (apply gx#core-expand-export%__0 _g187972_))
                ((##fx= _g187973_ 2)
                 (apply gx#core-expand-export%__% _g187972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g187972_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd184288%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd184288%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx184258%_)
        (let* ((_%$%e184259184266%_ _%stx184258%_)
               (_%$%E184261184270%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184259184266%_)))
               (_%$%E184260184284%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184259184266%_)
                      (let ((_%$%e184262184274%_
                             (gx#syntax-e _%$%e184259184266%_)))
                        (let ((_%$%hd184263184277%_
                               (##car _%$%e184262184274%_))
                              (_%$%tl184264184279%_
                               (##cdr _%$%e184262184274%_)))
                          (let ((_%body184282%_ _%$%tl184264184279%_))
                            (if (gx#identifier-list? _%body184282%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body184282%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body184282%_))
                                   (gx#stx-source _%stx184258%_)))
                                (_%$%E184261184270%_)))))
                      (_%$%E184261184270%_)))))
          (_%$%E184260184284%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id184224%_ _%private?184225%_ _%phi184226%_ _%ctx184227%_)
        (gx#core-bind-syntax!__%
         _%id184224%_
         ((if _%private?184225%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id184224%_))
         _%private?184225%_
         _%phi184226%_
         _%ctx184227%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id184232%_)
        (let* ((_%private?184234%_ '#f)
               (_%phi184236%_ (gx#current-expander-phi))
               (_%ctx184238%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id184232%_
           _%private?184234%_
           _%phi184236%_
           _%ctx184238%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id184240%_ _%private?184241%_)
        (let* ((_%phi184243%_ (gx#current-expander-phi))
               (_%ctx184245%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id184240%_
           _%private?184241%_
           _%phi184243%_
           _%ctx184245%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id184247%_ _%private?184248%_ _%phi184249%_)
        (let ((_%ctx184251%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id184247%_
           _%private?184248%_
           _%phi184249%_
           _%ctx184251%_))))
    (define gx#core-bind-feature!
      (lambda _g187974_
        (let ((_g187975_ (##length _g187974_)))
          (cond ((##fx= _g187975_ 1)
                 (apply gx#core-bind-feature!__0 _g187974_))
                ((##fx= _g187975_ 2)
                 (apply gx#core-bind-feature!__1 _g187974_))
                ((##fx= _g187975_ 3)
                 (apply gx#core-bind-feature!__2 _g187974_))
                ((##fx= _g187975_ 4)
                 (apply gx#core-bind-feature!__% _g187974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g187974_))))))))
