(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1713631266)
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source name phi weak?))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args128764%_
        (apply make-instance gx#module-import::t _%$args128764%_)))
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
      (lambda _%$args128761%_
        (apply make-instance gx#module-export::t _%$args128761%_)))
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
      (lambda _%$args128758%_
        (apply make-instance gx#import-set::t _%$args128758%_)))
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
      (lambda _%$args128755%_
        (apply make-instance gx#export-set::t _%$args128755%_)))
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
      (lambda _%$args128752%_
        (apply make-instance gx#import-expander::t _%$args128752%_)))
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
      (lambda _%$args128749%_
        (apply make-instance gx#export-expander::t _%$args128749%_)))
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
      (lambda _%$args128746%_
        (apply make-instance gx#import-export-expander::t _%$args128746%_)))
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
      (lambda (_%path128743%_ _%fun128744%_)
        (call-with-input-file
         (cons 'path: (cons _%path128743%_ gx#source-file-settings))
         _%fun128744%_)))
    (define gx#module-context:::init!
      (lambda (_%self125195128724%_
               _%id128726%_
               _%super128727%_
               _%ns128728%_
               _%path128729%_)
        (let* ((_%self128731%_ _%self125195128724%_)
               (_%self128733%_ _%self128731%_))
          (if (##fx< '11 (##structure-length _%self128733%_))
              (begin
                (##unchecked-structure-set!
                 _%self128733%_
                 _%id128726%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128733%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128733%_
                 _%super128727%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128733%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self128733%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self128733%_
                 _%ns128728%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128733%_
                 _%path128729%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128733%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self128733%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self128733%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self128733%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128733%_
                     '11
                     (##vector-length _%self128733%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125196128555%_ _%ctx128557%_ _%root128558%_)
        (let* ((_%self128560%_ _%self125196128555%_)
               (_%self128562%_ _%self128560%_)
               (_%super128578%_
                (let ((_%$e128572%_ _%root128558%_))
                  (if _%$e128572%_
                      _%$e128572%_
                      (let ((_%$e128575%_ (gx#core-context-root__0)))
                        (if _%$e128575%_
                            _%$e128575%_
                            (let ((__obj128808
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor128809
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj128808
                                      ':init!)))
                                (if __constructor128809
                                    (__constructor128809 __obj128808)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj128808)))))))
          (if _%ctx128557%_
              (let ((_%id128581%_
                     (##structure-ref
                      _%ctx128557%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path128582%_
                     (##structure-ref
                      _%ctx128557%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in128583%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx128557%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e128584%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx128557%_)))))
                (if (##fx< '8 (##structure-length _%self128562%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self128562%_
                       _%id128581%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128562%_
                       (make-hash-table-eq 'size: (##length _%in128583%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128562%_
                       _%super128578%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128562%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128562%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128562%_
                       _%path128582%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128562%_
                       _%in128583%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128562%_
                       _%e128584%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self128562%_
                           '8
                           (##vector-length _%self128562%_)))
                (##for-each
                 (lambda (_%g128585128587%_)
                   (gx#core-bind-weak-import!__%
                    _%g128585128587%_
                    _%self128562%_))
                 _%in128583%_))
              (if (##fx< '8 (##structure-length _%self128562%_))
                  (begin
                    (##unchecked-structure-set! _%self128562%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self128562%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self128562%_
                     _%super128578%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self128562%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self128562%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self128562%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self128562%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self128562%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self128562%_
                         '8
                         (##vector-length _%self128562%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125196128593%_ _%ctx128594%_)
        (let ((_%root128596%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125196128593%_
           _%ctx128594%_
           _%root128596%_))))
    (define gx#prelude-context:::init!
      (lambda _g128815_
        (let ((_g128814_ (##length _g128815_)))
          (cond ((##fx= _g128814_ 2)
                 (apply gx#prelude-context:::init!__0 _g128815_))
                ((##fx= _g128814_ 3)
                 (apply gx#prelude-context:::init!__% _g128815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g128815_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self128429%_ _%e128430%_)
        (if (##fx< '3 (##structure-length _%self128429%_))
            (begin
              (##unchecked-structure-set!
               _%self128429%_
               _%e128430%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128429%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128429%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self128429%_
                   '3
                   (##vector-length _%self128429%_)))))
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
      (lambda (_%g128055128058%_ _%g128056128060%_)
        (gx#core-apply-user-expander__%
         _%g128055128058%_
         _%g128056128060%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g127926127929%_ _%g127927127931%_)
        (gx#core-apply-user-expander__%
         _%g127926127929%_
         _%g127927127931%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx127797%_)
        (let* ((_%path127799%_
                (##structure-ref _%ctx127797%_ '7 gx#module-context::t '#f))
               (_%path127801%_
                (if (pair? _%path127799%_)
                    (##last _%path127799%_)
                    _%path127799%_)))
          (if (string? _%path127801%_) _%path127801%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path127773%_ _%reload?127774%_ _%eval?127775%_)
        (let ((_%ctx127777%_
               ((gx#current-expander-module-import)
                _%path127773%_
                _%reload?127774%_)))
          (if (and _%ctx127777%_ _%eval?127775%_)
              (gx#eval-module _%ctx127777%_)
              '#!void)
          _%ctx127777%_)))
    (define gx#import-module__0
      (lambda (_%path127782%_)
        (let* ((_%reload?127784%_ '#f) (_%eval?127786%_ '#f))
          (gx#import-module__%
           _%path127782%_
           _%reload?127784%_
           _%eval?127786%_))))
    (define gx#import-module__1
      (lambda (_%path127788%_ _%reload?127789%_)
        (let ((_%eval?127791%_ '#f))
          (gx#import-module__%
           _%path127788%_
           _%reload?127789%_
           _%eval?127791%_))))
    (define gx#import-module
      (lambda _g128817_
        (let ((_g128816_ (##length _g128817_)))
          (cond ((##fx= _g128816_ 1) (apply gx#import-module__0 _g128817_))
                ((##fx= _g128816_ 2) (apply gx#import-module__1 _g128817_))
                ((##fx= _g128816_ 3) (apply gx#import-module__% _g128817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g128817_))))))
    (define gx#eval-module
      (lambda (_%mod127770%_)
        ((gx#current-expander-module-eval) _%mod127770%_)))
    (define gx#core-eval-module
      (lambda (_%obj127750%_)
        (letrec ((_%force-e127752%_
                  (lambda (_%getf127766%_ _%e127767%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf127766%_ _%e127767%_)))
                     gx#current-expander-context
                     _%e127767%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur127754%_ ((_%e127756%_ _%obj127750%_))
            (if (##structure-instance-of? _%e127756%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e127759%_
                         (gx#core-context-prelude__% _%e127756%_)))
                    (if _%$e127759%_ (_%recur127754%_ _%$e127759%_) '#!void))
                  (_%force-e127752%_ gx#module-context-e _%e127756%_))
                (if (##structure-instance-of?
                     _%e127756%_
                     'gx#prelude-context::t)
                    (_%force-e127752%_ gx#prelude-context-e _%e127756%_)
                    (if (gx#stx-string? _%e127756%_)
                        (_%recur127754%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e127756%_)))
                        (if (gx#core-library-module-path? _%e127756%_)
                            (_%recur127754%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e127756%_)))
                            (error '"cannot eval module" _%obj127750%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx127730%_)
        (let _%lp127732%_ ((_%e127734%_ _%ctx127730%_))
          (if (or (##structure-instance-of? _%e127734%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e127734%_ 'gx#local-context::t))
              (_%lp127732%_ (##unchecked-structure-ref _%e127734%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e127734%_ 'gx#prelude-context::t)
                  _%e127734%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx127746%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx127746%_))))
    (define gx#core-context-prelude
      (lambda _g128819_
        (let ((_g128818_ (##length _g128819_)))
          (cond ((##fx= _g128818_ 0)
                 (apply gx#core-context-prelude__0 _g128819_))
                ((##fx= _g128818_ 1)
                 (apply gx#core-context-prelude__% _g128819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g128819_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx127721%_)
        (let ((_%$e127723%_ (__hash-get gx#__module-registry _%ctx127721%_)))
          (if _%$e127723%_
              _%$e127723%_
              (let ((_%pre127727%_
                     (let ((__obj128810
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
                        __obj128810
                        _%ctx127721%_)
                       __obj128810)))
                (__hash-put! gx#__module-registry _%ctx127721%_ _%pre127727%_)
                _%pre127727%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath127593%_ _%reload?127594%_)
        (letrec ((_%import-source127596%_
                  (lambda (_%path127685%_)
                    (if (member _%path127685%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path127685%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g128820_ (gx#core-read-module _%path127685%_)))
                         (begin
                           (let ((_g128821_
                                  (if (##values? _g128820_)
                                      (##vector-length _g128820_)
                                      1)))
                             (if (not (##fx= _g128821_ 4))
                                 (error "Context expects 4 values" _g128821_)))
                           (let ((_%pre127688%_ (##vector-ref _g128820_ 0))
                                 (_%id127689%_ (##vector-ref _g128820_ 1))
                                 (_%ns127690%_ (##vector-ref _g128820_ 2))
                                 (_%body127691%_ (##vector-ref _g128820_ 3)))
                             (let* ((_%prelude127701%_
                                     (if (##structure-instance-of?
                                          _%pre127688%_
                                          'gx#prelude-context::t)
                                         _%pre127688%_
                                         (if (##structure-instance-of?
                                              _%pre127688%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre127688%_)
                                             (if (string? _%pre127688%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre127688%_))
                                                 (if (not _%pre127688%_)
                                                     (let ((_%$e127697%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e127697%_
                                                           _%$e127697%_
                                                           (let ((__obj128811
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
                     (gx#prelude-context:::init!__0 __obj128811 '#f)
                     __obj128811)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath127593%_
                                                            _%pre127688%_))))))
                                    (_%ctx127703%_
                                     (let ((__obj128812
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
                                        __obj128812
                                        _%id127689%_
                                        _%prelude127701%_
                                        _%ns127690%_
                                        _%path127685%_)
                                       __obj128812))
                                    (_%body127705%_
                                     (gx#core-expand-module-begin
                                      _%body127691%_
                                      _%ctx127703%_))
                                    (_%body127707%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body127705%_)
                                      _%path127685%_
                                      _%ctx127703%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx127703%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body127707%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx127703%_
                                _%body127707%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path127685%_
                                _%ctx127703%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id127689%_
                                _%ctx127703%_)
                               _%ctx127703%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path127685%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule127597%_
                  (lambda (_%rpath127613%_)
                    (let* ((_%rpath127614127621%_ _%rpath127613%_)
                           (_%E127616127625%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath127614127621%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K127617127673%_
                            (lambda (_%refs127628%_ _%origin127629%_)
                              (let ((_%ctx127631%_
                                     (if _%origin127629%_
                                         (gx#core-import-module__%
                                          _%origin127629%_
                                          _%reload?127594%_)
                                         (gx#current-expander-context))))
                                (let _%lp127633%_ ((_%rest127635%_
                                                    _%refs127628%_)
                                                   (_%ctx127636%_
                                                    _%ctx127631%_))
                                  (let* ((_%rest127637127645%_ _%rest127635%_)
                                         (_%else127639127653%_
                                          (lambda () _%ctx127636%_))
                                         (_%K127641127661%_
                                          (lambda (_%rest127656%_ _%id127657%_)
                                            (let ((_%bind127659%_
                                                   (gx#resolve-identifier__%
                                                    _%id127657%_
                                                    '0
                                                    _%ctx127636%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind127659%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind127659%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp127633%_
                                                   _%rest127656%_
                                                   (##unchecked-structure-ref
                                                    _%bind127659%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath127613%_
                                                         _%id127657%_
                                                         _%bind127659%_))))))
                                    (if (pair? _%rest127637127645%_)
                                        (let ((_%hd127642127664%_
                                               (##car _%rest127637127645%_))
                                              (_%tl127643127666%_
                                               (##cdr _%rest127637127645%_)))
                                          (let* ((_%id127669%_
                                                  _%hd127642127664%_)
                                                 (_%rest127671%_
                                                  _%tl127643127666%_))
                                            (_%K127641127661%_
                                             _%rest127671%_
                                             _%id127669%_)))
                                        (_%else127639127653%_))))))))
                      (if (pair? _%rpath127614127621%_)
                          (let ((_%hd127618127676%_
                                 (##car _%rpath127614127621%_))
                                (_%tl127619127678%_
                                 (##cdr _%rpath127614127621%_)))
                            (let* ((_%origin127681%_ _%hd127618127676%_)
                                   (_%refs127683%_ _%tl127619127678%_))
                              (_%K127617127673%_
                               _%refs127683%_
                               _%origin127681%_)))
                          (_%E127616127625%_))))))
          (let ((_%$e127599%_
                 (if (not _%reload?127594%_)
                     (__hash-get gx#__module-registry _%rpath127593%_)
                     '#f)))
            (if _%$e127599%_
                _%$e127599%_
                (if (list? _%rpath127593%_)
                    (_%import-submodule127597%_ _%rpath127593%_)
                    (if (gx#core-library-module-path? _%rpath127593%_)
                        (let ((_%ctx127604%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath127593%_)
                                _%reload?127594%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath127593%_
                           _%ctx127604%_)
                          _%ctx127604%_)
                        (let* ((_%npath127607%_
                                (path-normalize _%rpath127593%_))
                               (_%$e127609%_
                                (if (not _%reload?127594%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath127607%_)
                                    '#f)))
                          (if _%$e127609%_
                              _%$e127609%_
                              (_%import-source127596%_
                               _%npath127607%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath127714%_)
        (let ((_%reload?127716%_ '#f))
          (gx#core-import-module__% _%rpath127714%_ _%reload?127716%_))))
    (define gx#core-import-module
      (lambda _g128823_
        (let ((_g128822_ (##length _g128823_)))
          (cond ((##fx= _g128822_ 1)
                 (apply gx#core-import-module__0 _g128823_))
                ((##fx= _g128822_ 2)
                 (apply gx#core-import-module__% _g128823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g128823_))))))
    (define gx#core-read-module
      (lambda (_%path127582%_)
        (__with-catch
         (lambda (_%exn127584%_)
           (if (and (datum-parsing-exception? _%exn127584%_)
                    (eq? (datum-parsing-exception-filepos _%exn127584%_) '0))
               (gx#core-read-module/lang _%path127582%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path127582%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g127586127588%_)
                      (display-exception__% _%exn127584%_ _%g127586127588%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path127582%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path127434%_)
        (let _%lp127436%_ ((_%body127438%_
                            (read-syntax-from-file _%path127434%_))
                           (_%pre127439%_ '#f)
                           (_%ns127440%_ '#f)
                           (_%pkg127441%_ '#f))
          (let* ((_%e127442127466%_ _%body127438%_)
                 (_%E127458127492%_
                  (lambda ()
                    (let ((_g128824_
                           (if _%pkg127441%_
                               (values _%pre127439%_
                                       _%ns127440%_
                                       _%pkg127441%_)
                               (gx#core-read-module-package
                                _%path127434%_
                                _%pre127439%_
                                _%ns127440%_))))
                      (begin
                        (let ((_g128825_
                               (if (##values? _g128824_)
                                   (##vector-length _g128824_)
                                   1)))
                          (if (not (##fx= _g128825_ 3))
                              (error "Context expects 3 values" _g128825_)))
                        (let ((_%pre127470%_ (##vector-ref _g128824_ 0))
                              (_%ns127471%_ (##vector-ref _g128824_ 1))
                              (_%pkg127472%_ (##vector-ref _g128824_ 2)))
                          (let* ((_%prelude127478%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre127470%_)
                                      (gx#syntax-local-e__0 _%pre127470%_)
                                      (if (gx#core-library-module-path?
                                           _%pre127470%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre127470%_)
                                          (if (gx#stx-string? _%pre127470%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre127470%_
                                               _%path127434%_)
                                              (gx#stx-e _%pre127470%_)))))
                                 (_%path-id127480%_
                                  (gx#core-module-path->namespace
                                   _%path127434%_))
                                 (_%pkg-id127482%_
                                  (if _%pkg127472%_
                                      (##string-append
                                       _%pkg127472%_
                                       '"/"
                                       _%path-id127480%_)
                                      _%path-id127480%_))
                                 (_%module-id127484%_
                                  (##string->symbol _%pkg-id127482%_))
                                 (_%module-ns127489%_
                                  (if (eq? _%ns127471%_ '#!void)
                                      '#f
                                      (let ((_%$e127486%_ _%ns127471%_))
                                        (if _%$e127486%_
                                            _%$e127486%_
                                            _%pkg-id127482%_)))))
                            (values _%prelude127478%_
                                    _%module-id127484%_
                                    _%module-ns127489%_
                                    _%body127438%_)))))))
                 (_%E127451127524%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127442127466%_)
                        (let ((_%e127459127496%_
                               (gx#syntax-e _%e127442127466%_)))
                          (let ((_%hd127460127499%_ (##car _%e127459127496%_))
                                (_%tl127461127501%_ (##cdr _%e127459127496%_)))
                            (if (eq? (gx#stx-e _%hd127460127499%_) 'package:)
                                (if (gx#stx-pair? _%tl127461127501%_)
                                    (let ((_%e127462127504%_
                                           (gx#syntax-e _%tl127461127501%_)))
                                      (let ((_%hd127463127507%_
                                             (##car _%e127462127504%_))
                                            (_%tl127464127509%_
                                             (##cdr _%e127462127504%_)))
                                        (let* ((_%pkg127512%_
                                                _%hd127463127507%_)
                                               (_%rest127514%_
                                                _%tl127464127509%_)
                                               (_%pkg127522%_
                                                (if (gx#identifier?
                                                     _%pkg127512%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg127512%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg127512%_)
                                                            (gx#stx-false?
                                                             _%pkg127512%_))
                                                        (gx#stx-e
                                                         _%pkg127512%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg127512%_)))))
                                          (_%lp127436%_
                                           _%rest127514%_
                                           _%pre127439%_
                                           _%ns127440%_
                                           _%pkg127522%_))))
                                    (_%E127458127492%_))
                                (_%E127458127492%_))))
                        (_%E127458127492%_))))
                 (_%E127444127554%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127442127466%_)
                        (let ((_%e127452127528%_
                               (gx#syntax-e _%e127442127466%_)))
                          (let ((_%hd127453127531%_ (##car _%e127452127528%_))
                                (_%tl127454127533%_ (##cdr _%e127452127528%_)))
                            (if (eq? (gx#stx-e _%hd127453127531%_) 'namespace:)
                                (if (gx#stx-pair? _%tl127454127533%_)
                                    (let ((_%e127455127536%_
                                           (gx#syntax-e _%tl127454127533%_)))
                                      (let ((_%hd127456127539%_
                                             (##car _%e127455127536%_))
                                            (_%tl127457127541%_
                                             (##cdr _%e127455127536%_)))
                                        (let* ((_%ns127544%_
                                                _%hd127456127539%_)
                                               (_%rest127546%_
                                                _%tl127457127541%_)
                                               (_%ns127552%_
                                                (if (gx#identifier?
                                                     _%ns127544%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns127544%_))
                                                    (if (gx#stx-string?
                                                         _%ns127544%_)
                                                        (gx#stx-e _%ns127544%_)
                                                        (if (gx#stx-false?
                                                             _%ns127544%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns127544%_))))))
                                          (_%lp127436%_
                                           _%rest127546%_
                                           _%pre127439%_
                                           _%ns127552%_
                                           _%pkg127441%_))))
                                    (_%E127451127524%_))
                                (_%E127451127524%_))))
                        (_%E127451127524%_))))
                 (_%E127443127578%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127442127466%_)
                        (let ((_%e127445127558%_
                               (gx#syntax-e _%e127442127466%_)))
                          (let ((_%hd127446127561%_ (##car _%e127445127558%_))
                                (_%tl127447127563%_ (##cdr _%e127445127558%_)))
                            (if (eq? (gx#stx-e _%hd127446127561%_) 'prelude:)
                                (if (gx#stx-pair? _%tl127447127563%_)
                                    (let ((_%e127448127566%_
                                           (gx#syntax-e _%tl127447127563%_)))
                                      (let ((_%hd127449127569%_
                                             (##car _%e127448127566%_))
                                            (_%tl127450127571%_
                                             (##cdr _%e127448127566%_)))
                                        (let* ((_%prelude127574%_
                                                _%hd127449127569%_)
                                               (_%rest127576%_
                                                _%tl127450127571%_))
                                          (_%lp127436%_
                                           _%rest127576%_
                                           _%prelude127574%_
                                           _%ns127440%_
                                           _%pkg127441%_))))
                                    (_%E127444127554%_))
                                (_%E127444127554%_))))
                        (_%E127444127554%_)))))
            (_%E127443127578%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path127256%_)
        (letrec ((_%default-read-module-body127258%_
                  (lambda (_%inp127426%_)
                    (let _%lp127428%_ ((_%body127430%_ '()))
                      (let ((_%next127432%_ (read-syntax__% _%inp127426%_)))
                        (if (eof-object? _%next127432%_)
                            (reverse _%body127430%_)
                            (_%lp127428%_
                             (cons _%next127432%_ _%body127430%_)))))))
                 (_%read-body127259%_
                  (lambda (_%inp127344%_
                           _%pre127345%_
                           _%ns127346%_
                           _%pkg127347%_
                           _%args127348%_)
                    (let ((_g128826_
                           (if _%pkg127347%_
                               (values _%pre127345%_
                                       _%ns127346%_
                                       _%pkg127347%_)
                               (gx#core-read-module-package
                                _%path127256%_
                                _%pre127345%_
                                _%ns127346%_))))
                      (begin
                        (let ((_g128827_
                               (if (##values? _g128826_)
                                   (##vector-length _g128826_)
                                   1)))
                          (if (not (##fx= _g128827_ 3))
                              (error "Context expects 3 values" _g128827_)))
                        (let ((_%pre127350%_ (##vector-ref _g128826_ 0))
                              (_%ns127351%_ (##vector-ref _g128826_ 1))
                              (_%pkg127352%_ (##vector-ref _g128826_ 2)))
                          (let* ((_%prelude127354%_
                                  (gx#import-module__0 _%pre127350%_))
                                 (_%read-module-body127409%_
                                  (let ((_%$e127400%_
                                         (__find (lambda (_%e127355127357%_)
                                                   (let* ((_%g127359127369%_
                                                           _%e127355127357%_)
                                                          (_%else127361127377%_
                                                           (lambda () '#f))
                                                          (_%K127363127381%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g127359127369%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e127364127384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g127359127369%_
                          '1
                          '#f
                          '#f))
                        (_%e127365127387%_
                         (##unchecked-structure-ref
                          _%g127359127369%_
                          '2
                          '#f
                          '#f))
                        (_%e127366127390%_
                         (##unchecked-structure-ref
                          _%g127359127369%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e127366127390%_ '1)
                       (let ((_%e127367127393%_
                              (##unchecked-structure-ref
                               _%g127359127369%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g127395127397%_)
                                (eq? _%g127395127397%_ 'read-module-body))
                              _%e127367127393%_)
                             (_%K127363127381%_)
                             (_%else127361127377%_)))
                       (_%else127361127377%_)))
                 (_%else127361127377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude127354%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e127400%_
                                        ((lambda (_%xport127403%_)
                                           (let ((_%proc127406%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport127403%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc127406%_)
                                                 _%proc127406%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path127256%_
                                                  _%pre127350%_
                                                  _%proc127406%_))))
                                         _%$e127400%_)
                                        _%default-read-module-body127258%_)))
                                 (_%path-id127411%_
                                  (gx#core-module-path->namespace
                                   _%path127256%_))
                                 (_%pkg-id127413%_
                                  (if _%pkg127352%_
                                      (##string-append
                                       _%pkg127352%_
                                       '"/"
                                       _%path-id127411%_)
                                      _%path-id127411%_))
                                 (_%module-id127415%_
                                  (##string->symbol _%pkg-id127413%_))
                                 (_%module-ns127420%_
                                  (let ((_%$e127417%_ _%ns127351%_))
                                    (if _%$e127417%_
                                        _%$e127417%_
                                        _%pkg-id127413%_)))
                                 (_%body127423%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body127409%_
                                      _%inp127344%_))
                                   gx#current-module-reader-path
                                   _%path127256%_
                                   gx#current-module-reader-args
                                   _%args127348%_)))
                            (values _%prelude127354%_
                                    _%module-id127415%_
                                    _%module-ns127420%_
                                    _%body127423%_)))))))
                 (_%string-e127260%_
                  (lambda (_%obj127338%_ _%what127339%_)
                    (if (string? _%obj127338%_)
                        _%obj127338%_
                        (if (symbol? _%obj127338%_)
                            (##symbol->string _%obj127338%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what127339%_)
                             _%path127256%_
                             _%obj127338%_)))))
                 (_%read-lang-args127261%_
                  (lambda (_%inp127293%_ _%args127294%_)
                    (let* ((_%args127295127303%_ _%args127294%_)
                           (_%else127297127311%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path127256%_)))
                           (_%K127299127326%_
                            (lambda (_%args127314%_ _%prelude127315%_)
                              (let* ((_%pkg127317%_
                                      (pgetq__0 'package: _%args127314%_))
                                     (_%pkg127319%_
                                      (if _%pkg127317%_
                                          (_%string-e127260%_
                                           _%pkg127317%_
                                           '"package")
                                          '#f))
                                     (_%ns127321%_
                                      (pgetq__0 'namespace: _%args127314%_))
                                     (_%ns127323%_
                                      (if _%ns127321%_
                                          (_%string-e127260%_
                                           _%ns127321%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body127259%_
                                 _%inp127293%_
                                 _%prelude127315%_
                                 _%ns127323%_
                                 _%pkg127319%_
                                 _%args127314%_)))))
                      (if (pair? _%args127295127303%_)
                          (let ((_%hd127300127329%_
                                 (##car _%args127295127303%_))
                                (_%tl127301127331%_
                                 (##cdr _%args127295127303%_)))
                            (let* ((_%prelude127334%_ _%hd127300127329%_)
                                   (_%args127336%_ _%tl127301127331%_))
                              (_%K127299127326%_
                               _%args127336%_
                               _%prelude127334%_)))
                          (_%else127297127311%_)))))
                 (_%read-lang127262%_
                  (lambda (_%inp127267%_)
                    (let* ((_%head127269%_ (read-line _%inp127267%_))
                           (_%$e127271%_
                            (string-index__0 _%head127269%_ '#\space)))
                      (if _%$e127271%_
                          ((lambda (_%ix127274%_)
                             (let ((_%lang127276%_
                                    (substring
                                     _%head127269%_
                                     '0
                                     _%ix127274%_)))
                               (if (equal? _%lang127276%_ '"#lang")
                                   (let* ((_%rest127278%_
                                           (substring
                                            _%head127269%_
                                            (##fx+ _%ix127274%_ '1)
                                            (string-length _%head127269%_)))
                                          (_%args127289%_
                                           (__with-catch
                                            (lambda (_%g127279127281%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path127256%_
                                               _%g127279127281%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest127278%_
                                               (lambda (_%g127284127286%_)
                                                 (read-all
                                                  _%g127284127286%_
                                                  read)))))))
                                     (_%read-lang-args127261%_
                                      _%inp127267%_
                                      _%args127289%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path127256%_))))
                           _%$e127271%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path127256%_)))))
                 (_%read-e127263%_
                  (lambda (_%inp127265%_)
                    (if (eq? (peek-char _%inp127265%_) '#\#)
                        (_%read-lang127262%_ _%inp127265%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path127256%_)))))
          (gx#call-with-input-source-file _%path127256%_ _%read-e127263%_))))
    (define gx#core-read-module-package
      (lambda (_%path127204%_ _%pre127205%_ _%ns127206%_)
        (letrec ((_%string-e127208%_
                  (lambda (_%e127251%_)
                    (if (symbol? _%e127251%_)
                        (##symbol->string _%e127251%_)
                        (if (string? _%e127251%_)
                            _%e127251%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e127251%_))))))
          (let _%lp127210%_ ((_%dir127212%_ (path-directory _%path127204%_))
                             (_%pkg-path127213%_ '()))
            (let ((_%gerbil.pkg127215%_
                   (path-expand '"gerbil.pkg" _%dir127212%_)))
              (if (##file-exists? _%gerbil.pkg127215%_)
                  (let ((_%plist127217%_
                         (gx#core-library-package-plist__% _%dir127212%_ '#t)))
                    (if (null? _%plist127217%_)
                        (let ((_%pkg127220%_
                               (if (null? _%pkg-path127213%_)
                                   '#f
                                   (string-join _%pkg-path127213%_ '"/"))))
                          (values _%pre127205%_ _%ns127206%_ _%pkg127220%_))
                        (if (list? _%plist127217%_)
                            (let* ((_%root127223%_
                                    (pgetq__0 'package: _%plist127217%_))
                                   (_%pkg127227%_
                                    (let ((_%pkg-path127225%_
                                           (if _%root127223%_
                                               (cons (_%string-e127208%_
                                                      _%root127223%_)
                                                     _%pkg-path127213%_)
                                               _%pkg-path127213%_)))
                                      (if (null? _%pkg-path127225%_)
                                          '#f
                                          (string-join
                                           _%pkg-path127225%_
                                           '"/"))))
                                   (_%ns127234%_
                                    (let ((_%ns127232%_
                                           (let ((_%$e127229%_ _%ns127206%_))
                                             (if _%$e127229%_
                                                 _%$e127229%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist127217%_)))))
                                      (if _%ns127232%_
                                          (_%string-e127208%_ _%ns127232%_)
                                          '#f)))
                                   (_%pre127239%_
                                    (let ((_%$e127236%_ _%pre127205%_))
                                      (if _%$e127236%_
                                          _%$e127236%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist127217%_)))))
                              (values _%pre127239%_
                                      _%ns127234%_
                                      _%pkg127227%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist127217%_))))
                  (let ((_%dir*127243%_
                         (path-strip-trailing-directory-separator
                          _%dir127212%_)))
                    (if (or (__string-empty? _%dir*127243%_)
                            (equal? _%dir127212%_ _%dir*127243%_))
                        (values _%pre127205%_ _%ns127206%_ '#f)
                        (let ((_%xpath127248%_
                               (path-strip-directory _%dir*127243%_))
                              (_%xdir127249%_ (path-directory _%dir*127243%_)))
                          (_%lp127210%_
                           _%xdir127249%_
                           (cons _%xpath127248%_ _%pkg-path127213%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path127202%_)
        (path-strip-extension (path-strip-directory _%path127202%_))))
    (define gx#core-module-path->id
      (lambda (_%path127200%_)
        (##string->symbol (gx#core-module-path->namespace _%path127200%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path127179%_ _%rel127180%_)
        (let* ((_%path127182%_ (gx#stx-e _%stx-path127179%_))
               (_%path127184%_
                (if (__string-empty? (path-extension _%path127182%_))
                    (##string-append _%path127182%_ '".ss")
                    _%path127182%_)))
          (gx#core-resolve-path__%
           _%path127184%_
           (let ((_%$e127187%_ (gx#stx-source _%stx-path127179%_)))
             (if _%$e127187%_ _%$e127187%_ _%rel127180%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path127193%_)
        (let ((_%rel127195%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path127193%_ _%rel127195%_))))
    (define gx#core-resolve-module-path
      (lambda _g128829_
        (let ((_g128828_ (##length _g128829_)))
          (cond ((##fx= _g128828_ 1)
                 (apply gx#core-resolve-module-path__0 _g128829_))
                ((##fx= _g128828_ 2)
                 (apply gx#core-resolve-module-path__% _g128829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g128829_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath127064%_)
        (let* ((_%spath127066%_ (symbol->string (gx#stx-e _%libpath127064%_)))
               (_%spath127068%_
                (substring
                 _%spath127066%_
                 '1
                 (##string-length _%spath127066%_)))
               (_%ext127070%_ (path-extension _%spath127068%_))
               (_%ssi127072%_
                (if (__string-empty? _%ext127070%_)
                    (##string-append _%spath127068%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath127068%_)
                     '".ssi")))
               (_%srcs127076%_
                (if (__string-empty? _%ext127070%_)
                    (##map (lambda (_%ext127074%_)
                             (string-append _%spath127068%_ _%ext127074%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath127068%_ '()))))
          (let _%lp127079%_ ((_%rest127081%_ (load-path)))
            (let* ((_%rest127082127091%_ _%rest127081%_)
                   (_%E127085127095%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest127082127091%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K127087127166%_
                     (lambda (_%rest127106%_ _%dir127107%_)
                       (letrec ((_%resolve127109%_
                                 (lambda (_%ssi127122%_ _%srcs127123%_)
                                   (let ((_%compiled-path127125%_
                                          (path-expand
                                           _%ssi127122%_
                                           _%dir127107%_)))
                                     (if (##file-exists?
                                          _%compiled-path127125%_)
                                         (path-normalize
                                          _%compiled-path127125%_)
                                         (let _%lpr127127%_ ((_%rest-src127129%_
                                                              _%srcs127123%_))
                                           (let* ((_%rest-src127130127138%_
                                                   _%rest-src127129%_)
                                                  (_%else127132127146%_
                                                   (lambda ()
                                                     (_%lp127079%_
                                                      _%rest127106%_)))
                                                  (_%K127134127154%_
                                                   (lambda (_%rest-src127149%_
                                                            _%src127150%_)
                                                     (let ((_%src-path127152%_
                                                            (path-expand
                                                             _%src127150%_
                                                             _%dir127107%_)))
                                                       (if (##file-exists?
                                                            _%src-path127152%_)
                                                           (path-normalize
                                                            _%src-path127152%_)
                                                           (_%lpr127127%_
                                                            _%rest-src127149%_))))))
                                             (if (pair? _%rest-src127130127138%_)
                                                 (let ((_%hd127135127157%_
                                                        (##car _%rest-src127130127138%_))
                                                       (_%tl127136127159%_
                                                        (##cdr _%rest-src127130127138%_)))
                                                   (let* ((_%src127162%_
                                                           _%hd127135127157%_)
                                                          (_%rest-src127164%_
                                                           _%tl127136127159%_))
                                                     (_%K127134127154%_
                                                      _%rest-src127164%_
                                                      _%src127162%_)))
                                                 (_%else127132127146%_)))))))))
                         (let ((_%$e127111%_
                                (gx#core-library-package-path-prefix
                                 _%dir127107%_)))
                           (if _%$e127111%_
                               ((lambda (_%prefix127114%_)
                                  (if (string-prefix?
                                       _%prefix127114%_
                                       _%spath127068%_)
                                      (let ((_%ssi127118%_
                                             (substring
                                              _%ssi127072%_
                                              (string-length _%prefix127114%_)
                                              (##string-length _%ssi127072%_)))
                                            (_%srcs127119%_
                                             (##map (lambda (_%src127116%_)
                                                      (substring
                                                       _%src127116%_
                                                       (string-length
                                                        _%prefix127114%_)
                                                       (string-length
                                                        _%src127116%_)))
                                                    _%srcs127076%_)))
                                        (_%resolve127109%_
                                         _%ssi127118%_
                                         _%srcs127119%_))
                                      (_%lp127079%_ _%rest127106%_)))
                                _%$e127111%_)
                               (_%resolve127109%_
                                _%ssi127072%_
                                _%srcs127076%_))))))
                    (_%K127086127100%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath127064%_))))
                (let ((_%try-match127084127103%_
                       (lambda ()
                         (if (null? _%rest127082127091%_)
                             (_%K127086127100%_)
                             (_%E127085127095%_)))))
                  (if (pair? _%rest127082127091%_)
                      (let ((_%tl127089127171%_ (##cdr _%rest127082127091%_))
                            (_%hd127088127169%_ (##car _%rest127082127091%_)))
                        (let ((_%dir127174%_ _%hd127088127169%_)
                              (_%rest127176%_ _%tl127089127171%_))
                          (_%K127087127166%_ _%rest127176%_ _%dir127174%_)))
                      (_%try-match127084127103%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath127032%_)
        (letrec ((_%resolve127034%_
                  (lambda (_%path127055%_ _%base127056%_)
                    (let ((_%$e127058%_
                           (string-rindex__0 _%base127056%_ '#\/)))
                      (if _%$e127058%_
                          ((lambda (_%idx127061%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base127056%_ '0 _%idx127061%_)
                                '"/"
                                _%path127055%_))))
                           _%$e127058%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path127055%_))))))))
          (let ((_%spath127036%_ (symbol->string (gx#stx-e _%modpath127032%_)))
                (_%mod127037%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod127037%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath127032%_))
            (let ((_%mpath127039%_
                   (symbol->string
                    (##structure-ref
                     _%mod127037%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp127041%_ ((_%spath127043%_ _%spath127036%_)
                                 (_%mpath127044%_ _%mpath127039%_))
                (if (string-prefix? '"../" _%spath127043%_)
                    (let ((_%$e127047%_
                           (string-rindex__0 _%mpath127044%_ '#\/)))
                      (if _%$e127047%_
                          ((lambda (_%idx127050%_)
                             (_%lp127041%_
                              (substring
                               _%spath127043%_
                               '3
                               (string-length _%spath127043%_))
                              (substring _%mpath127044%_ '0 _%idx127050%_)))
                           _%$e127047%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath127032%_)))
                    (if (string-prefix? '"./" _%spath127043%_)
                        (_%lp127041%_
                         (substring
                          _%spath127043%_
                          '2
                          (string-length _%spath127043%_))
                         _%mpath127044%_)
                        (_%resolve127034%_
                         _%spath127043%_
                         _%mpath127044%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir127024%_)
        (let ((_%$e127026%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir127024%_))))
          (if _%$e127026%_
              ((lambda (_%pkg127029%_)
                 (##string-append (symbol->string _%pkg127029%_) '"/"))
               _%$e127026%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir126994%_ _%exists?126995%_)
        (let ((_%$e126997%_ (__hash-get gx#__module-pkg-cache _%dir126994%_)))
          (if _%$e126997%_
              _%$e126997%_
              (let* ((_%gerbil.pkg127001%_
                      (path-expand '"gerbil.pkg" _%dir126994%_))
                     (_%plist127011%_
                      (if (or _%exists?126995%_
                              (##file-exists? _%gerbil.pkg127001%_))
                          (let ((_%e127006%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg127001%_
                                  read)))
                            (if (eof-object? _%e127006%_)
                                '()
                                (if (list? _%e127006%_)
                                    _%e127006%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg127001%_
                                     _%e127006%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir126994%_
                 _%plist127011%_)
                _%plist127011%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir127017%_)
        (let ((_%exists?127019%_ '#f))
          (gx#core-library-package-plist__% _%dir127017%_ _%exists?127019%_))))
    (define gx#core-library-package-plist
      (lambda _g128831_
        (let ((_g128830_ (##length _g128831_)))
          (cond ((##fx= _g128830_ 1)
                 (apply gx#core-library-package-plist__0 _g128831_))
                ((##fx= _g128830_ 2)
                 (apply gx#core-library-package-plist__% _g128831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g128831_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx126991%_)
        (gx#core-special-module-path? _%stx126991%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx126989%_)
        (gx#core-special-module-path? _%stx126989%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx126984%_ _%char126985%_)
        (if (gx#identifier? _%stx126984%_)
            (if (interned-symbol? (gx#stx-e _%stx126984%_))
                (let ((_%str126987%_
                       (symbol->string (gx#stx-e _%stx126984%_))))
                  (if (##fx> (##string-length _%str126987%_) '1)
                      (eq? (string-ref _%str126987%_ '0) _%char126985%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx126978%_)
        (gx#core-bound-identifier?__%
         _%stx126978%_
         (lambda (_%g126979126981%_)
           (gx#expander-binding?__% _%g126979126981%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx126972%_)
        (gx#core-bound-identifier?__%
         _%stx126972%_
         (lambda (_%g126973126975%_)
           (gx#expander-binding?__% _%g126973126975%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx126959%_)
        (letrec ((_%module-prelude?126961%_
                  (lambda (_%e126967%_)
                    (let ((_%$e126969%_
                           (##structure-instance-of?
                            _%e126967%_
                            'gx#module-context::t)))
                      (if _%$e126969%_
                          _%$e126969%_
                          (##structure-instance-of?
                           _%e126967%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx126959%_
           (lambda (_%g126962126964%_)
             (gx#expander-binding?__%
              _%g126962126964%_
              _%module-prelude?126961%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in126889%_ _%ctx126890%_ _%force-weak?126891%_)
        (let* ((_%in126892126901%_ _%in126889%_)
               (_%E126894126905%_
                (lambda ()
                  (error '"No clause matching"
                         _%in126892126901%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K126895126918%_
                (lambda (_%weak?126908%_
                         _%phi126909%_
                         _%key126910%_
                         _%source126911%_)
                  (gx#core-bind!__%
                   _%key126910%_
                   (let ((_%e126913%_
                          (gx#core-resolve-module-export _%source126911%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e126913%_ '1 '#f '#f)
                      _%key126910%_
                      _%phi126909%_
                      _%e126913%_
                      (##unchecked-structure-ref _%source126911%_ '1 '#f '#f)
                      (let ((_%$e126915%_ _%force-weak?126891%_))
                        (if _%$e126915%_ _%$e126915%_ _%weak?126908%_))))
                   gx#core-context-rebind?
                   _%phi126909%_
                   _%ctx126890%_))))
          (if (##structure-direct-instance-of?
               _%in126892126901%_
               'gx#module-import::t)
              (let* ((_%e126896126921%_
                      (##unchecked-structure-ref
                       _%in126892126901%_
                       '1
                       '#f
                       '#f))
                     (_%source126924%_ _%e126896126921%_)
                     (_%e126897126926%_
                      (##unchecked-structure-ref
                       _%in126892126901%_
                       '2
                       '#f
                       '#f))
                     (_%key126929%_ _%e126897126926%_)
                     (_%e126898126931%_
                      (##unchecked-structure-ref
                       _%in126892126901%_
                       '3
                       '#f
                       '#f))
                     (_%phi126934%_ _%e126898126931%_)
                     (_%e126899126936%_
                      (##unchecked-structure-ref
                       _%in126892126901%_
                       '4
                       '#f
                       '#f))
                     (_%weak?126939%_ _%e126899126936%_))
                (_%K126895126918%_
                 _%weak?126939%_
                 _%phi126934%_
                 _%key126929%_
                 _%source126924%_))
              (_%E126894126905%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in126944%_)
        (let* ((_%ctx126946%_ (gx#current-expander-context))
               (_%force-weak?126948%_ '#f))
          (gx#core-bind-import!__%
           _%in126944%_
           _%ctx126946%_
           _%force-weak?126948%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in126950%_ _%ctx126951%_)
        (let ((_%force-weak?126953%_ '#f))
          (gx#core-bind-import!__%
           _%in126950%_
           _%ctx126951%_
           _%force-weak?126953%_))))
    (define gx#core-bind-import!
      (lambda _g128833_
        (let ((_g128832_ (##length _g128833_)))
          (cond ((##fx= _g128832_ 1) (apply gx#core-bind-import!__0 _g128833_))
                ((##fx= _g128832_ 2) (apply gx#core-bind-import!__1 _g128833_))
                ((##fx= _g128832_ 3) (apply gx#core-bind-import!__% _g128833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g128833_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in126875%_ _%ctx126876%_)
        (gx#core-bind-import!__% _%in126875%_ _%ctx126876%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in126881%_)
        (let ((_%ctx126883%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in126881%_ _%ctx126883%_))))
    (define gx#core-bind-weak-import!
      (lambda _g128835_
        (let ((_g128834_ (##length _g128835_)))
          (cond ((##fx= _g128834_ 1)
                 (apply gx#core-bind-weak-import!__0 _g128835_))
                ((##fx= _g128834_ 2)
                 (apply gx#core-bind-weak-import!__% _g128835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g128835_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out126766%_)
        (letrec ((_%subst126768%_
                  (lambda (_%key126814%_)
                    (let* ((_%key126815126823%_ _%key126814%_)
                           (_%else126817126831%_ (lambda () _%key126814%_))
                           (_%K126819126862%_
                            (lambda (_%mark126834%_ _%id126835%_)
                              (let* ((_%mark126836126842%_ _%mark126834%_)
                                     (_%E126838126846%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark126836126842%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K126839126854%_
                                      (lambda (_%subst126849%_)
                                        (let ((_%$e126851%_
                                               (if _%subst126849%_
                                                   (hash-get
                                                    _%subst126849%_
                                                    _%id126835%_)
                                                   '#f)))
                                          (if _%$e126851%_
                                              _%$e126851%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key126814%_))))))
                                (if (##structure-instance-of?
                                     _%mark126836126842%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e126840126857%_
                                            (##unchecked-structure-ref
                                             _%mark126836126842%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst126860%_ _%e126840126857%_))
                                      (_%K126839126854%_ _%subst126860%_))
                                    (_%E126838126846%_))))))
                      (if (pair? _%key126815126823%_)
                          (let ((_%hd126820126865%_
                                 (##car _%key126815126823%_))
                                (_%tl126821126867%_
                                 (##cdr _%key126815126823%_)))
                            (let* ((_%id126870%_ _%hd126820126865%_)
                                   (_%mark126872%_ _%tl126821126867%_))
                              (_%K126819126862%_ _%mark126872%_ _%id126870%_)))
                          (_%else126817126831%_))))))
          (let* ((_%out126769126779%_ _%out126766%_)
                 (_%E126771126783%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out126769126779%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K126772126790%_
                  (lambda (_%phi126786%_ _%key126787%_ _%ctx126788%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx126788%_ _%phi126786%_)
                     (_%subst126768%_ _%key126787%_)))))
            (if (##structure-direct-instance-of?
                 _%out126769126779%_
                 'gx#module-export::t)
                (let* ((_%e126773126793%_
                        (##unchecked-structure-ref
                         _%out126769126779%_
                         '1
                         '#f
                         '#f))
                       (_%ctx126796%_ _%e126773126793%_)
                       (_%e126774126798%_
                        (##unchecked-structure-ref
                         _%out126769126779%_
                         '2
                         '#f
                         '#f))
                       (_%key126801%_ _%e126774126798%_)
                       (_%e126775126803%_
                        (##unchecked-structure-ref
                         _%out126769126779%_
                         '3
                         '#f
                         '#f))
                       (_%phi126806%_ _%e126775126803%_)
                       (_%e126776126808%_
                        (##unchecked-structure-ref
                         _%out126769126779%_
                         '4
                         '#f
                         '#f))
                       (_%e126777126811%_
                        (##unchecked-structure-ref
                         _%out126769126779%_
                         '5
                         '#f
                         '#f)))
                  (_%K126772126790%_
                   _%phi126806%_
                   _%key126801%_
                   _%ctx126796%_))
                (_%E126771126783%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out126691%_ _%rename126692%_ _%dphi126693%_)
        (let* ((_%out126694126704%_ _%out126691%_)
               (_%E126696126708%_
                (lambda ()
                  (error '"No clause matching"
                         _%out126694126704%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K126697126720%_
                (lambda (_%weak?126711%_
                         _%name126712%_
                         _%phi126713%_
                         _%key126714%_
                         _%ctx126715%_)
                  (##structure
                   gx#module-import::t
                   _%out126691%_
                   (let ((_%$e126717%_ _%rename126692%_))
                     (if _%$e126717%_ _%$e126717%_ _%name126712%_))
                   (fx+ _%phi126713%_ _%dphi126693%_)
                   _%weak?126711%_))))
          (if (##structure-direct-instance-of?
               _%out126694126704%_
               'gx#module-export::t)
              (let* ((_%e126698126723%_
                      (##unchecked-structure-ref
                       _%out126694126704%_
                       '1
                       '#f
                       '#f))
                     (_%ctx126726%_ _%e126698126723%_)
                     (_%e126699126728%_
                      (##unchecked-structure-ref
                       _%out126694126704%_
                       '2
                       '#f
                       '#f))
                     (_%key126731%_ _%e126699126728%_)
                     (_%e126700126733%_
                      (##unchecked-structure-ref
                       _%out126694126704%_
                       '3
                       '#f
                       '#f))
                     (_%phi126736%_ _%e126700126733%_)
                     (_%e126701126738%_
                      (##unchecked-structure-ref
                       _%out126694126704%_
                       '4
                       '#f
                       '#f))
                     (_%name126741%_ _%e126701126738%_)
                     (_%e126702126743%_
                      (##unchecked-structure-ref
                       _%out126694126704%_
                       '5
                       '#f
                       '#f))
                     (_%weak?126746%_ _%e126702126743%_))
                (_%K126697126720%_
                 _%weak?126746%_
                 _%name126741%_
                 _%phi126736%_
                 _%key126731%_
                 _%ctx126726%_))
              (_%E126696126708%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out126751%_)
        (let* ((_%rename126753%_ '#f) (_%dphi126755%_ '0))
          (gx#core-module-export->import__%
           _%out126751%_
           _%rename126753%_
           _%dphi126755%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out126757%_ _%rename126758%_)
        (let ((_%dphi126760%_ '0))
          (gx#core-module-export->import__%
           _%out126757%_
           _%rename126758%_
           _%dphi126760%_))))
    (define gx#core-module-export->import
      (lambda _g128837_
        (let ((_g128836_ (##length _g128837_)))
          (cond ((##fx= _g128836_ 1)
                 (apply gx#core-module-export->import__0 _g128837_))
                ((##fx= _g128836_ 2)
                 (apply gx#core-module-export->import__1 _g128837_))
                ((##fx= _g128836_ 3)
                 (apply gx#core-module-export->import__% _g128837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g128837_))))))
    (define gx#core-expand-module%
      (lambda (_%stx126590%_)
        (letrec ((_%make-context126592%_
                  (lambda (_%id126669%_)
                    (let* ((_%super126671%_ (gx#current-expander-context))
                           (_%bind-id126673%_ (gx#stx-e _%id126669%_))
                           (_%mod-id126675%_
                            (if (##structure-instance-of?
                                 _%super126671%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super126671%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id126673%_)
                                _%bind-id126673%_))
                           (_%ns126677%_ (symbol->string _%mod-id126675%_))
                           (_%path126687%_
                            (if (##structure-instance-of?
                                 _%super126671%_
                                 'gx#module-context::t)
                                (let ((_%path126679%_
                                       (##unchecked-structure-ref
                                        _%super126671%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path126679%_)
                                          (null? _%path126679%_))
                                      (cons _%bind-id126673%_ _%path126679%_)
                                      (if (not _%path126679%_)
                                          _%bind-id126673%_
                                          (cons _%bind-id126673%_
                                                (cons _%path126679%_ '())))))
                                _%bind-id126673%_))
                           (__obj128813
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
                       __obj128813
                       _%mod-id126675%_
                       _%super126671%_
                       _%ns126677%_
                       _%path126687%_)
                      __obj128813)))
                 (_%valid-module-id?126593%_
                  (lambda (_%id126644%_)
                    (let* ((_%str126646%_ (symbol->string _%id126644%_))
                           (_%len126648%_ (##string-length _%str126646%_)))
                      (if (##fx>= _%len126648%_ '1)
                          (let _%loop126651%_ ((_%index126653%_
                                                (##fx- (##string-length
                                                        _%str126646%_)
                                                       '1)))
                            (if (##fx>= _%index126653%_ '0)
                                (let ((_%c126655%_
                                       (string-ref
                                        _%str126646%_
                                        _%index126653%_)))
                                  (if (or (and (##char>=? _%c126655%_ '#\a)
                                               (##char<=? _%c126655%_ '#\z))
                                          (and (##char>=? _%c126655%_ '#\A)
                                               (##char<=? _%c126655%_ '#\Z))
                                          (and (##char>=? _%c126655%_ '#\0)
                                               (##char<=? _%c126655%_ '#\9))
                                          (##char=? _%c126655%_ '#\_)
                                          (##char=? _%c126655%_ '#\-))
                                      (_%loop126651%_
                                       (##fx- _%index126653%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e126594126604%_ _%stx126590%_)
                 (_%E126596126608%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126594126604%_)))
                 (_%E126595126640%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126594126604%_)
                        (let ((_%e126597126612%_
                               (gx#syntax-e _%e126594126604%_)))
                          (let ((_%hd126598126615%_ (##car _%e126597126612%_))
                                (_%tl126599126617%_ (##cdr _%e126597126612%_)))
                            (if (gx#stx-pair? _%tl126599126617%_)
                                (let ((_%e126600126620%_
                                       (gx#syntax-e _%tl126599126617%_)))
                                  (let ((_%hd126601126623%_
                                         (##car _%e126600126620%_))
                                        (_%tl126602126625%_
                                         (##cdr _%e126600126620%_)))
                                    (let* ((_%id126628%_ _%hd126601126623%_)
                                           (_%body126630%_ _%tl126602126625%_))
                                      (if (and (gx#identifier? _%id126628%_)
                                               (gx#stx-list? _%body126630%_))
                                          (if (_%valid-module-id?126593%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx126632%_
                                                      (_%make-context126592%_
                                                       _%id126628%_))
                                                     (_%body126634%_
                                                      (gx#core-expand-module-begin
                                                       _%body126630%_
                                                       _%ctx126632%_))
                                                     (_%body126636%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body126634%_)
                                                       (gx#stx-source
                                                        _%stx126590%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx126632%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body126636%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx126632%_
                                                 _%body126636%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id126628%_
                                                 _%ctx126632%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id126628%_)
                                                  _%body126636%_)
                                                 (gx#stx-source
                                                  _%stx126590%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx126590%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E126596126608%_)))))
                                (_%E126596126608%_))))
                        (_%E126596126608%_)))))
            (_%E126595126640%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body126556%_ _%ctx126557%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx126560%_
                   (gx#core-expand-head (cons '%%begin-module _%body126556%_)))
                  (_%e126561126568%_ _%stx126560%_)
                  (_%E126563126572%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx126560%_)))
                  (_%E126562126586%_
                   (lambda ()
                     (if (gx#stx-pair? _%e126561126568%_)
                         (let ((_%e126564126576%_
                                (gx#syntax-e _%e126561126568%_)))
                           (let ((_%hd126565126579%_ (##car _%e126564126576%_))
                                 (_%tl126566126581%_
                                  (##cdr _%e126564126576%_)))
                             (if (and (gx#identifier? _%hd126565126579%_)
                                      (gx#core-identifier=?
                                       _%hd126565126579%_
                                       '%#begin-module))
                                 (let ((_%body126584%_ _%tl126566126581%_))
                                   (if (gx#sealed-syntax? _%stx126560%_)
                                       _%body126584%_
                                       (gx#core-expand-module-body
                                        _%body126584%_)))
                                 (_%E126563126572%_))))
                         (_%E126563126572%_)))))
             (_%E126562126586%_)))
         gx#current-expander-context
         _%ctx126557%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body126352%_)
        (letrec ((_%expand-special126354%_
                  (lambda (_%hd126483%_ _%K126484%_ _%rest126485%_ _%r126486%_)
                    (let* ((_%e126487126504%_ _%hd126483%_)
                           (_%E126499126508%_
                            (lambda ()
                              (_%K126484%_
                               _%rest126485%_
                               (cons (gx#core-expand-top _%hd126483%_)
                                     _%r126486%_))))
                           (_%E126489126520%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126487126504%_)
                                  (let ((_%e126500126512%_
                                         (gx#syntax-e _%e126487126504%_)))
                                    (let ((_%hd126501126515%_
                                           (##car _%e126500126512%_))
                                          (_%tl126502126517%_
                                           (##cdr _%e126500126512%_)))
                                      (if (and (gx#identifier?
                                                _%hd126501126515%_)
                                               (gx#core-identifier=?
                                                _%hd126501126515%_
                                                '%#export))
                                          (_%K126484%_
                                           _%rest126485%_
                                           (cons _%hd126483%_ _%r126486%_))
                                          (_%E126499126508%_))))
                                  (_%E126499126508%_))))
                           (_%E126488126552%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126487126504%_)
                                  (let ((_%e126490126524%_
                                         (gx#syntax-e _%e126487126504%_)))
                                    (let ((_%hd126491126527%_
                                           (##car _%e126490126524%_))
                                          (_%tl126492126529%_
                                           (##cdr _%e126490126524%_)))
                                      (if (and (gx#identifier?
                                                _%hd126491126527%_)
                                               (gx#core-identifier=?
                                                _%hd126491126527%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126492126529%_)
                                              (let ((_%e126493126532%_
                                                     (gx#syntax-e
                                                      _%tl126492126529%_)))
                                                (let ((_%hd126494126535%_
                                                       (##car _%e126493126532%_))
                                                      (_%tl126495126537%_
                                                       (##cdr _%e126493126532%_)))
                                                  (let ((_%hd-bind126540%_
                                                         _%hd126494126535%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126495126537%_)
                                                        (let ((_%e126496126542%_
                                                               (gx#syntax-e
                                                                _%tl126495126537%_)))
                                                          (let ((_%hd126497126545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126496126542%_))
                        (_%tl126498126547%_ (##cdr _%e126496126542%_)))
                    (let ((_%expr126550%_ _%hd126497126545%_))
                      (if (gx#stx-null? _%tl126498126547%_)
                          (if (gx#core-bind-values? _%hd-bind126540%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126540%_)
                                (_%K126484%_
                                 _%rest126485%_
                                 (cons _%hd126483%_ _%r126486%_)))
                              (_%E126489126520%_))
                          (_%E126489126520%_)))))
                (_%E126489126520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126489126520%_))
                                          (_%E126489126520%_))))
                                  (_%E126489126520%_)))))
                      (_%E126488126552%_))))
                 (_%expand-body126355%_
                  (lambda (_%rbody126357%_)
                    (let _%lp126359%_ ((_%rest126361%_ _%rbody126357%_)
                                       (_%body126362%_ '()))
                      (let* ((_%rest126363126371%_ _%rest126361%_)
                             (_%else126365126379%_ (lambda () _%body126362%_))
                             (_%K126367126471%_
                              (lambda (_%rest126382%_ _%hd126383%_)
                                (let* ((_%e126384126405%_ _%hd126383%_)
                                       (_%E126400126409%_
                                        (lambda ()
                                          (_%lp126359%_
                                           _%rest126382%_
                                           (cons (gx#core-expand-expression
                                                  _%hd126383%_)
                                                 _%body126362%_))))
                                       (_%E126396126423%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126384126405%_)
                                              (let ((_%e126401126413%_
                                                     (gx#syntax-e
                                                      _%e126384126405%_)))
                                                (let ((_%hd126402126416%_
                                                       (##car _%e126401126413%_))
                                                      (_%tl126403126418%_
                                                       (##cdr _%e126401126413%_)))
                                                  (let ((_%form126421%_
                                                         _%hd126402126416%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form126421%_
                                                         gx#special-form-binding?)
                                                        (_%lp126359%_
                                                         _%rest126382%_
                                                         (cons _%hd126383%_
                                                               _%body126362%_))
                                                        (_%E126400126409%_)))))
                                              (_%E126400126409%_))))
                                       (_%E126386126435%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126384126405%_)
                                              (let ((_%e126397126427%_
                                                     (gx#syntax-e
                                                      _%e126384126405%_)))
                                                (let ((_%hd126398126430%_
                                                       (##car _%e126397126427%_))
                                                      (_%tl126399126432%_
                                                       (##cdr _%e126397126427%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126398126430%_)
                                                           (gx#core-identifier=?
                                                            _%hd126398126430%_
                                                            '%#export))
                                                      (_%lp126359%_
                                                       _%rest126382%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd126383%_)
                                                             _%body126362%_))
                                                      (_%E126396126423%_))))
                                              (_%E126396126423%_))))
                                       (_%E126385126467%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126384126405%_)
                                              (let ((_%e126387126439%_
                                                     (gx#syntax-e
                                                      _%e126384126405%_)))
                                                (let ((_%hd126388126442%_
                                                       (##car _%e126387126439%_))
                                                      (_%tl126389126444%_
                                                       (##cdr _%e126387126439%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126388126442%_)
                                                           (gx#core-identifier=?
                                                            _%hd126388126442%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126389126444%_)
                                                          (let ((_%e126390126447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126389126444%_)))
                    (let ((_%hd126391126450%_ (##car _%e126390126447%_))
                          (_%tl126392126452%_ (##cdr _%e126390126447%_)))
                      (let ((_%hd-bind126455%_ _%hd126391126450%_))
                        (if (gx#stx-pair? _%tl126392126452%_)
                            (let ((_%e126393126457%_
                                   (gx#syntax-e _%tl126392126452%_)))
                              (let ((_%hd126394126460%_
                                     (##car _%e126393126457%_))
                                    (_%tl126395126462%_
                                     (##cdr _%e126393126457%_)))
                                (let ((_%expr126465%_ _%hd126394126460%_))
                                  (if (gx#stx-null? _%tl126395126462%_)
                                      (_%lp126359%_
                                       _%rest126382%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind126455%_)
                                               (gx#core-expand-expression
                                                _%expr126465%_))
                                              (gx#stx-source _%hd126383%_))
                                             _%body126362%_))
                                      (_%E126386126435%_)))))
                            (_%E126386126435%_)))))
                  (_%E126386126435%_))
              (_%E126386126435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126386126435%_)))))
                                  (_%E126385126467%_)))))
                        (if (pair? _%rest126363126371%_)
                            (let ((_%hd126368126474%_
                                   (##car _%rest126363126371%_))
                                  (_%tl126369126476%_
                                   (##cdr _%rest126363126371%_)))
                              (let* ((_%hd126479%_ _%hd126368126474%_)
                                     (_%rest126481%_ _%tl126369126476%_))
                                (_%K126367126471%_
                                 _%rest126481%_
                                 _%hd126479%_)))
                            (_%else126365126379%_)))))))
          (_%expand-body126355%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body126352%_)
            _%expand-special126354%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx126193%_
               _%expanded?126194%_
               _%method126195%_
               _%current-phi126196%_
               _%expand1126197%_)
        (letrec ((_%K126199%_
                  (lambda (_%rest126319%_ _%r126320%_)
                    (let* ((_%e126321126328%_ _%rest126319%_)
                           (_%E126323126332%_ (lambda () _%r126320%_))
                           (_%E126322126348%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126321126328%_)
                                  (let ((_%e126324126336%_
                                         (gx#syntax-e _%e126321126328%_)))
                                    (let ((_%hd126325126339%_
                                           (##car _%e126324126336%_))
                                          (_%tl126326126341%_
                                           (##cdr _%e126324126336%_)))
                                      (let* ((_%hd126344%_ _%hd126325126339%_)
                                             (_%rest126346%_
                                              _%tl126326126341%_))
                                        (_%step126200%_
                                         _%hd126344%_
                                         _%rest126346%_
                                         _%r126320%_))))
                                  (_%E126323126332%_)))))
                      (_%E126322126348%_))))
                 (_%step126200%_
                  (lambda (_%hd126233%_ _%rest126234%_ _%r126235%_)
                    (let* ((_%e126236126254%_ _%hd126233%_)
                           (_%E126249126258%_
                            (lambda ()
                              (if (_%expanded?126194%_ (gx#stx-e _%hd126233%_))
                                  (_%K126199%_
                                   _%rest126234%_
                                   (cons (gx#stx-e _%hd126233%_) _%r126235%_))
                                  (_%expand1126197%_
                                   _%hd126233%_
                                   _%K126199%_
                                   _%rest126234%_
                                   _%r126235%_))))
                           (_%E126245126274%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126236126254%_)
                                  (let ((_%e126250126262%_
                                         (gx#syntax-e _%e126236126254%_)))
                                    (let ((_%hd126251126265%_
                                           (##car _%e126250126262%_))
                                          (_%tl126252126267%_
                                           (##cdr _%e126250126262%_)))
                                      (let* ((_%macro126270%_
                                              _%hd126251126265%_)
                                             (_%body126272%_
                                              _%tl126252126267%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro126270%_
                                             gx#syntax-binding?)
                                            (_%K126199%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro126270%_)
                                                    _%hd126233%_
                                                    _%method126195%_)
                                                   _%rest126234%_)
                                             _%r126235%_)
                                            (_%E126249126258%_)))))
                                  (_%E126249126258%_))))
                           (_%E126238126288%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126236126254%_)
                                  (let ((_%e126246126278%_
                                         (gx#syntax-e _%e126236126254%_)))
                                    (let ((_%hd126247126281%_
                                           (##car _%e126246126278%_))
                                          (_%tl126248126283%_
                                           (##cdr _%e126246126278%_)))
                                      (if (eq? (gx#stx-e _%hd126247126281%_)
                                               'begin:)
                                          (let ((_%body126286%_
                                                 _%tl126248126283%_))
                                            (_%K126199%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest126234%_
                                              _%body126286%_)
                                             _%r126235%_))
                                          (_%E126245126274%_))))
                                  (_%E126245126274%_))))
                           (_%E126237126315%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126236126254%_)
                                  (let ((_%e126239126292%_
                                         (gx#syntax-e _%e126236126254%_)))
                                    (let ((_%hd126240126295%_
                                           (##car _%e126239126292%_))
                                          (_%tl126241126297%_
                                           (##cdr _%e126239126292%_)))
                                      (if (eq? (gx#stx-e _%hd126240126295%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl126241126297%_)
                                              (let ((_%e126242126300%_
                                                     (gx#syntax-e
                                                      _%tl126241126297%_)))
                                                (let ((_%hd126243126303%_
                                                       (##car _%e126242126300%_))
                                                      (_%tl126244126305%_
                                                       (##cdr _%e126242126300%_)))
                                                  (let* ((_%dphi126308%_
                                                          _%hd126243126303%_)
                                                         (_%body126310%_
                                                          _%tl126244126305%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi126308%_)
                                                        (let ((_%rbody126313%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K126199%_ _%body126310%_ '()))
                        _%current-phi126196%_
                        (fx+ (gx#stx-e _%dphi126308%_)
                             (_%current-phi126196%_)))))
                  (_%K126199%_
                   _%rest126234%_
                   (__foldr1 cons _%r126235%_ _%rbody126313%_)))
                (_%E126238126288%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126238126288%_))
                                          (_%E126238126288%_))))
                                  (_%E126238126288%_)))))
                      (_%E126237126315%_)))))
          (let* ((_%e126201126208%_ _%stx126193%_)
                 (_%E126203126212%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126201126208%_)))
                 (_%E126202126229%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126201126208%_)
                        (let ((_%e126204126216%_
                               (gx#syntax-e _%e126201126208%_)))
                          (let ((_%hd126205126219%_ (##car _%e126204126216%_))
                                (_%tl126206126221%_ (##cdr _%e126204126216%_)))
                            (let ((_%body126224%_ _%tl126206126221%_))
                              (if (_%current-phi126196%_)
                                  (_%K126199%_ _%body126224%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K126199%_ _%body126224%_ '()))
                                   _%current-phi126196%_
                                   (gx#current-expander-phi))))))
                        (_%E126203126212%_)))))
            (_%E126202126229%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx125847%_ _%internal-expand?125848%_)
        (letrec ((_%expand1125850%_
                  (lambda (_%hd126165%_ _%K126166%_ _%rest126167%_ _%r126168%_)
                    (if (gx#core-bound-module? _%hd126165%_)
                        (_%import1125851%_
                         (gx#syntax-local-e__0 _%hd126165%_)
                         _%K126166%_
                         _%rest126167%_
                         _%r126168%_)
                        (if (gx#core-library-module-path? _%hd126165%_)
                            (_%import1125851%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd126165%_))
                             _%K126166%_
                             _%rest126167%_
                             _%r126168%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd126165%_)
                                (_%import1125851%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd126165%_))
                                 _%K126166%_
                                 _%rest126167%_
                                 _%r126168%_)
                                (let ((_%e126174%_ (gx#stx-e _%hd126165%_)))
                                  (if (pair? _%e126174%_)
                                      (let ((_%$e126177%_
                                             (gx#stx-e (##car _%e126174%_))))
                                        (if (eq? 'spec: _%$e126177%_)
                                            (_%import-spec125854%_
                                             _%hd126165%_
                                             _%K126166%_
                                             _%rest126167%_
                                             _%r126168%_)
                                            (if (eq? 'in: _%$e126177%_)
                                                (_%import-submodule125852%_
                                                 _%hd126165%_
                                                 _%K126166%_
                                                 _%rest126167%_
                                                 _%r126168%_)
                                                (if (eq? 'runtime:
                                                         _%$e126177%_)
                                                    (_%import-runtime125853%_
                                                     _%hd126165%_
                                                     _%K126166%_
                                                     _%rest126167%_
                                                     _%r126168%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx125847%_
                                                     _%hd126165%_)))))
                                      (if (string? _%e126174%_)
                                          (_%import1125851%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd126165%_
                                             (gx#stx-source _%stx125847%_)))
                                           _%K126166%_
                                           _%rest126167%_
                                           _%r126168%_)
                                          (if (##structure-instance-of?
                                               _%e126174%_
                                               'gx#module-context::t)
                                              (_%K126166%_
                                               _%rest126167%_
                                               (cons _%e126174%_ _%r126168%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx125847%_
                                               _%hd126165%_))))))))))
                 (_%import1125851%_
                  (lambda (_%ctx126154%_
                           _%K126155%_
                           _%rest126156%_
                           _%r126157%_)
                    (let ((_%dphi126159%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K126155%_
                       _%rest126156%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx126154%_
                              _%dphi126159%_
                              (map (lambda (_%g126160126162%_)
                                     (gx#core-module-export->import__%
                                      _%g126160126162%_
                                      '#f
                                      _%dphi126159%_))
                                   (##unchecked-structure-ref
                                    _%ctx126154%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r126157%_)))))
                 (_%import-submodule125852%_
                  (lambda (_%hd126121%_ _%K126122%_ _%rest126123%_ _%r126124%_)
                    (let* ((_%e126125126132%_ _%hd126121%_)
                           (_%E126127126136%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126125126132%_)))
                           (_%E126126126150%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126125126132%_)
                                  (let ((_%e126128126140%_
                                         (gx#syntax-e _%e126125126132%_)))
                                    (let ((_%hd126129126143%_
                                           (##car _%e126128126140%_))
                                          (_%tl126130126145%_
                                           (##cdr _%e126128126140%_)))
                                      (let ((_%spath126148%_
                                             _%tl126130126145%_))
                                        (_%import1125851%_
                                         (_%import-spec-source125855%_
                                          _%spath126148%_)
                                         _%K126122%_
                                         _%rest126123%_
                                         _%r126124%_))))
                                  (_%E126127126136%_)))))
                      (_%E126126126150%_))))
                 (_%import-runtime125853%_
                  (lambda (_%hd126088%_ _%K126089%_ _%rest126090%_ _%r126091%_)
                    (let* ((_%e126092126099%_ _%hd126088%_)
                           (_%E126094126103%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126092126099%_)))
                           (_%E126093126117%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126092126099%_)
                                  (let ((_%e126095126107%_
                                         (gx#syntax-e _%e126092126099%_)))
                                    (let ((_%hd126096126110%_
                                           (##car _%e126095126107%_))
                                          (_%tl126097126112%_
                                           (##cdr _%e126095126107%_)))
                                      (let ((_%spath126115%_
                                             _%tl126097126112%_))
                                        (_%K126089%_
                                         _%rest126090%_
                                         (cons (_%import-spec-source125855%_
                                                _%spath126115%_)
                                               _%r126091%_)))))
                                  (_%E126094126103%_)))))
                      (_%E126093126117%_))))
                 (_%import-spec125854%_
                  (lambda (_%hd125926%_ _%K125927%_ _%rest125928%_ _%r125929%_)
                    (let* ((_%e125930125947%_ _%hd125926%_)
                           (_%E125939125951%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125930125947%_)))
                           (_%E125932126062%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125930125947%_)
                                  (let ((_%e125940125955%_
                                         (gx#syntax-e _%e125930125947%_)))
                                    (let ((_%hd125941125958%_
                                           (##car _%e125940125955%_))
                                          (_%tl125942125960%_
                                           (##cdr _%e125940125955%_)))
                                      (if (gx#stx-pair? _%tl125942125960%_)
                                          (let ((_%e125943125963%_
                                                 (gx#syntax-e
                                                  _%tl125942125960%_)))
                                            (let ((_%hd125944125966%_
                                                   (##car _%e125943125963%_))
                                                  (_%tl125945125968%_
                                                   (##cdr _%e125943125963%_)))
                                              (let* ((_%path125971%_
                                                      _%hd125944125966%_)
                                                     (_%specs125973%_
                                                      _%tl125945125968%_))
                                                (let ((_%src-ctx125975%_
                                                       (_%import-spec-source125855%_
                                                        _%path125971%_))
                                                      (_%exports125976%_
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
                                                      (_%specs125977%_
                                                       (gx#syntax->list
                                                        _%specs125973%_)))
                                                  (for-each
                                                   (lambda (_%out125979%_)
                                                     (__hash-put!
                                                      _%exports125976%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out125979%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out125979%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out125979%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx125975%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K125927%_
                                                   _%rest125928%_
                                                   (__foldl1
                                                    (lambda (_%spec125981%_
                                                             _%r125982%_)
                                                      (let* ((_%e125983125999%_
                                                              _%spec125981%_)
                                                             (_%E125985126003%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e125983125999%_)))
                     (_%E125984126058%_
                      (lambda ()
                        (if (gx#stx-pair? _%e125983125999%_)
                            (let ((_%e125986126007%_
                                   (gx#syntax-e _%e125983125999%_)))
                              (let ((_%hd125987126010%_
                                     (##car _%e125986126007%_))
                                    (_%tl125988126012%_
                                     (##cdr _%e125986126007%_)))
                                (let ((_%phi126015%_ _%hd125987126010%_))
                                  (if (gx#stx-pair? _%tl125988126012%_)
                                      (let ((_%e125989126017%_
                                             (gx#syntax-e _%tl125988126012%_)))
                                        (let ((_%hd125990126020%_
                                               (##car _%e125989126017%_))
                                              (_%tl125991126022%_
                                               (##cdr _%e125989126017%_)))
                                          (let ((_%name126025%_
                                                 _%hd125990126020%_))
                                            (if (gx#stx-pair?
                                                 _%tl125991126022%_)
                                                (let ((_%e125992126027%_
                                                       (gx#syntax-e
                                                        _%tl125991126022%_)))
                                                  (let ((_%hd125993126030%_
                                                         (##car _%e125992126027%_))
                                                        (_%tl125994126032%_
                                                         (##cdr _%e125992126027%_)))
                                                    (let ((_%src-phi126035%_
                                                           _%hd125993126030%_))
                                                      (if (gx#stx-pair?
                                                           _%tl125994126032%_)
                                                          (let ((_%e125995126037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125994126032%_)))
                    (let ((_%hd125996126040%_ (##car _%e125995126037%_))
                          (_%tl125997126042%_ (##cdr _%e125995126037%_)))
                      (let ((_%src-name126045%_ _%hd125996126040%_))
                        (if (gx#stx-null? _%tl125997126042%_)
                            (if (and (gx#stx-fixnum? _%src-phi126035%_)
                                     (gx#identifier? _%src-name126045%_)
                                     (gx#stx-fixnum? _%phi126015%_)
                                     (gx#identifier? _%name126025%_))
                                (let ((_%src-phi126047%_
                                       (gx#stx-e _%src-phi126035%_))
                                      (_%src-name126048%_
                                       (gx#core-identifier-key
                                        _%src-name126045%_))
                                      (_%phi126049%_ (gx#stx-e _%phi126015%_))
                                      (_%name126050%_
                                       (gx#core-identifier-key
                                        _%name126025%_)))
                                  (let ((_%$e126052%_
                                         (__hash-get
                                          _%exports125976%_
                                          (cons _%src-phi126047%_
                                                _%src-name126048%_))))
                                    (if _%$e126052%_
                                        ((lambda (_%out126055%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out126055%_
                                                  _%name126050%_
                                                  (fx- _%phi126049%_
                                                       _%src-phi126047%_))
                                                 _%r125982%_))
                                         _%$e126052%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx125847%_
                                         _%hd125926%_))))
                                (_%E125985126003%_))
                            (_%E125985126003%_)))))
                  (_%E125985126003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E125985126003%_)))))
                                      (_%E125985126003%_)))))
                            (_%E125985126003%_)))))
                (_%E125984126058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r125929%_
                                                    _%specs125977%_))))))
                                          (_%E125939125951%_))))
                                  (_%E125939125951%_))))
                           (_%E125931126084%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125930125947%_)
                                  (let ((_%e125933126066%_
                                         (gx#syntax-e _%e125930125947%_)))
                                    (let ((_%hd125934126069%_
                                           (##car _%e125933126066%_))
                                          (_%tl125935126071%_
                                           (##cdr _%e125933126066%_)))
                                      (if (gx#stx-pair? _%tl125935126071%_)
                                          (let ((_%e125936126074%_
                                                 (gx#syntax-e
                                                  _%tl125935126071%_)))
                                            (let ((_%hd125937126077%_
                                                   (##car _%e125936126074%_))
                                                  (_%tl125938126079%_
                                                   (##cdr _%e125936126074%_)))
                                              (let ((_%path126082%_
                                                     _%hd125937126077%_))
                                                (if (gx#stx-null?
                                                     _%tl125938126079%_)
                                                    (_%K125927%_
                                                     _%rest125928%_
                                                     (cons (_%import-spec-source125855%_
                                                            _%path126082%_)
                                                           _%r125929%_))
                                                    (_%E125932126062%_)))))
                                          (_%E125932126062%_))))
                                  (_%E125932126062%_)))))
                      (_%E125931126084%_))))
                 (_%import-spec-source125855%_
                  (lambda (_%spath125924%_)
                    (gx#core-import-nested-module
                     _%spath125924%_
                     _%stx125847%_)))
                 (_%import!125856%_
                  (lambda (_%rbody125869%_)
                    (letrec* ((_%current-ctx125871%_
                               (gx#current-expander-context))
                              (_%deps125872%_ (make-hash-table-eq))
                              (_%bind!125873%_
                               (lambda (_%hd125922%_)
                                 (gx#core-bind-import!__1
                                  _%hd125922%_
                                  _%current-ctx125871%_))))
                      (let _%lp125875%_ ((_%rest125877%_ _%rbody125869%_)
                                         (_%body125878%_ '()))
                        (let* ((_%rest125879125887%_ _%rest125877%_)
                               (_%else125881125898%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx125871%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx125871%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx125871%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body125878%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx125895%_ _%_125896%_)
                                     (gx#eval-module _%ctx125895%_))
                                   _%deps125872%_)
                                  _%body125878%_))
                               (_%K125883125910%_
                                (lambda (_%rest125901%_ _%hd125902%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd125902%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!125873%_ _%hd125902%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd125902%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd125902%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps125872%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd125902%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd125902%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!125873%_
                                             (##unchecked-structure-ref
                                              _%hd125902%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd125902%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps125872%_
                                                 (##unchecked-structure-ref
                                                  _%hd125902%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e125906%_
                                                 (##structure-instance-of?
                                                  _%hd125902%_
                                                  'gx#module-context::t)))
                                            (if _%$e125906%_
                                                _%$e125906%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx125847%_
                                                 _%hd125902%_)))))
                                  (_%lp125875%_
                                   _%rest125901%_
                                   (cons _%hd125902%_ _%body125878%_)))))
                          (if (pair? _%rest125879125887%_)
                              (let ((_%hd125884125913%_
                                     (##car _%rest125879125887%_))
                                    (_%tl125885125915%_
                                     (##cdr _%rest125879125887%_)))
                                (let* ((_%hd125918%_ _%hd125884125913%_)
                                       (_%rest125920%_ _%tl125885125915%_))
                                  (_%K125883125910%_
                                   _%rest125920%_
                                   _%hd125918%_)))
                              (_%else125881125898%_)))))))
                 (_%expanded-import?125857%_
                  (lambda (_%e125861%_)
                    (let ((_%$e125863%_
                           (##structure-direct-instance-of?
                            _%e125861%_
                            'gx#import-set::t)))
                      (if _%$e125863%_
                          _%$e125863%_
                          (let ((_%$e125866%_
                                 (##structure-direct-instance-of?
                                  _%e125861%_
                                  'gx#module-import::t)))
                            (if _%$e125866%_
                                _%$e125866%_
                                (##structure-instance-of?
                                 _%e125861%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody125859%_
                 (gx#core-expand-import/export
                  _%stx125847%_
                  _%expanded-import?125857%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1125850%_)))
            (if _%internal-expand?125848%_
                (reverse _%rbody125859%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!125856%_ _%rbody125859%_))
                 (gx#stx-source _%stx125847%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx126186%_)
        (let ((_%internal-expand?126188%_ '#f))
          (gx#core-expand-import%__%
           _%stx126186%_
           _%internal-expand?126188%_))))
    (define gx#core-expand-import%
      (lambda _g128839_
        (let ((_g128838_ (##length _g128839_)))
          (cond ((##fx= _g128838_ 1)
                 (apply gx#core-expand-import%__0 _g128839_))
                ((##fx= _g128838_ 2)
                 (apply gx#core-expand-import%__% _g128839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g128839_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath125774%_ _%where125775%_)
        (let* ((_%e125776125783%_ _%spath125774%_)
               (_%E125778125787%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125776125783%_)))
               (_%E125777125842%_
                (lambda ()
                  (if (gx#stx-pair? _%e125776125783%_)
                      (let ((_%e125779125791%_
                             (gx#syntax-e _%e125776125783%_)))
                        (let ((_%hd125780125794%_ (##car _%e125779125791%_))
                              (_%tl125781125796%_ (##cdr _%e125779125791%_)))
                          (let* ((_%origin125799%_ _%hd125780125794%_)
                                 (_%sub125801%_ _%tl125781125796%_)
                                 (_%origin-ctx125803%_
                                  (if (gx#stx-false? _%origin125799%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin125799%_))))
                            (let _%lp125805%_ ((_%rest125807%_ _%sub125801%_)
                                               (_%ctx125808%_
                                                _%origin-ctx125803%_))
                              (let* ((_%e125809125816%_ _%rest125807%_)
                                     (_%E125811125820%_
                                      (lambda () _%ctx125808%_))
                                     (_%E125810125838%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125809125816%_)
                                            (let ((_%e125812125824%_
                                                   (gx#syntax-e
                                                    _%e125809125816%_)))
                                              (let ((_%hd125813125827%_
                                                     (##car _%e125812125824%_))
                                                    (_%tl125814125829%_
                                                     (##cdr _%e125812125824%_)))
                                                (let* ((_%id125832%_
                                                        _%hd125813125827%_)
                                                       (_%rest125834%_
                                                        _%tl125814125829%_)
                                                       (_%bind125836%_
                                                        (gx#resolve-identifier__%
                                                         _%id125832%_
                                                         '0
                                                         _%ctx125808%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind125836%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind125836%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where125775%_
                                                       _%spath125774%_
                                                       _%id125832%_))
                                                  (_%lp125805%_
                                                   _%rest125834%_
                                                   (##unchecked-structure-ref
                                                    _%bind125836%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E125811125820%_)))))
                                (_%E125810125838%_))))))
                      (_%E125778125787%_)))))
          (_%E125777125842%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd125772%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd125772%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx125266%_ _%internal-expand?125267%_)
        (letrec* ((_%make-export__128767128768%_
                   (lambda (_%bind125720%_
                            _%phi125721%_
                            _%ctx125722%_
                            _%name125723%_)
                     (let* ((_%key125725%_
                             (##unchecked-structure-ref
                              _%bind125720%_
                              '2
                              '#f
                              '#f))
                            (_%export-key125727%_
                             (if _%name125723%_
                                 (gx#core-identifier-key _%name125723%_)
                                 _%key125725%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx125722%_
                        _%key125725%_
                        _%phi125721%_
                        _%export-key125727%_
                        (let ((_%$e125730%_
                               (##structure-instance-of?
                                _%bind125720%_
                                'gx#extern-binding::t)))
                          (if _%$e125730%_
                              _%$e125730%_
                              (##structure-direct-instance-of?
                               _%bind125720%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__128769128772%_
                   (lambda (_%bind125736%_)
                     (let* ((_%phi125738%_ (gx#current-export-expander-phi))
                            (_%ctx125740%_ (gx#current-expander-context))
                            (_%name125742%_ '#f))
                       (_%make-export__128767128768%_
                        _%bind125736%_
                        _%phi125738%_
                        _%ctx125740%_
                        _%name125742%_))))
                  (_%make-export__1__128770128773%_
                   (lambda (_%bind125744%_ _%phi125745%_)
                     (let* ((_%ctx125747%_ (gx#current-expander-context))
                            (_%name125749%_ '#f))
                       (_%make-export__128767128768%_
                        _%bind125744%_
                        _%phi125745%_
                        _%ctx125747%_
                        _%name125749%_))))
                  (_%make-export__2__128771128774%_
                   (lambda (_%bind125751%_ _%phi125752%_ _%ctx125753%_)
                     (let ((_%name125755%_ '#f))
                       (_%make-export__128767128768%_
                        _%bind125751%_
                        _%phi125752%_
                        _%ctx125753%_
                        _%name125755%_))))
                  (_%make-export125269%_
                   (lambda _g128841_
                     (let ((_g128840_ (##length _g128841_)))
                       (cond ((##fx= _g128840_ 1)
                              (apply _%make-export__0__128769128772%_
                                     _g128841_))
                             ((##fx= _g128840_ 2)
                              (apply _%make-export__1__128770128773%_
                                     _g128841_))
                             ((##fx= _g128840_ 3)
                              (apply _%make-export__2__128771128774%_
                                     _g128841_))
                             ((##fx= _g128840_ 4)
                              (apply _%make-export__128767128768%_ _g128841_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128841_))))))
                  (_%expand1125270%_
                   (lambda (_%hd125425%_
                            _%K125426%_
                            _%rest125427%_
                            _%r125428%_)
                     (let* ((_%e125429125461%_ _%hd125425%_)
                            (_%E125456125465%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx125266%_
                                _%hd125425%_)))
                            (_%E125446125549%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125429125461%_)
                                   (let ((_%e125457125469%_
                                          (gx#syntax-e _%e125429125461%_)))
                                     (let ((_%hd125458125472%_
                                            (##car _%e125457125469%_))
                                           (_%tl125459125474%_
                                            (##cdr _%e125457125469%_)))
                                       (if (eq? (gx#stx-e _%hd125458125472%_)
                                                'import:)
                                           (let ((_%in125477%_
                                                  _%tl125459125474%_))
                                             (if (gx#stx-list? _%in125477%_)
                                                 (let _%lp125479%_ ((_%in-rest125481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in125477%_)
                            (_%r125482%_ _%r125428%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e125483125490%_
                                                           _%in-rest125481%_)
                                                          (_%E125485125494%_
                                                           (lambda ()
                                                             (_%K125426%_
                                                              _%rest125427%_
                                                              _%r125482%_)))
                                                          (_%E125484125545%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e125483125490%_)
                         (let ((_%e125486125498%_
                                (gx#syntax-e _%e125483125490%_)))
                           (let ((_%hd125487125501%_ (##car _%e125486125498%_))
                                 (_%tl125488125503%_
                                  (##cdr _%e125486125498%_)))
                             (let* ((_%hd125506%_ _%hd125487125501%_)
                                    (_%in-rest125508%_ _%tl125488125503%_)
                                    (_%src125543%_
                                     (if (gx#core-bound-module? _%hd125506%_)
                                         (gx#syntax-local-e__0 _%hd125506%_)
                                         (if (gx#core-library-module-path?
                                              _%hd125506%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd125506%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd125506%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd125506%_))
                                                 (if (gx#stx-string?
                                                      _%hd125506%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd125506%_
                                                       (gx#stx-source
                                                        _%stx125266%_)))
                                                     (let* ((_%e125514125521%_
                                                             _%hd125506%_)
                                                            (_%E125516125525%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx125266%_
                                                                _%hd125506%_)))
                                                            (_%E125515125539%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e125514125521%_)
                           (let ((_%e125517125529%_
                                  (gx#syntax-e _%e125514125521%_)))
                             (let ((_%hd125518125532%_
                                    (##car _%e125517125529%_))
                                   (_%tl125519125534%_
                                    (##cdr _%e125517125529%_)))
                               (if (eq? (gx#stx-e _%hd125518125532%_) 'in:)
                                   (let ((_%spath125537%_ _%tl125519125534%_))
                                     (gx#core-import-nested-module
                                      _%spath125537%_
                                      _%stx125266%_))
                                   (_%E125516125525%_))))
                           (_%E125516125525%_)))))
               (_%E125515125539%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp125479%_
                                _%in-rest125508%_
                                (_%export-imports125271%_
                                 _%src125543%_
                                 _%r125482%_)))))
                         (_%E125485125494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125484125545%_)))
                                                 (_%E125456125465%_)))
                                           (_%E125456125465%_))))
                                   (_%E125456125465%_))))
                            (_%E125433125589%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125429125461%_)
                                   (let ((_%e125447125553%_
                                          (gx#syntax-e _%e125429125461%_)))
                                     (let ((_%hd125448125556%_
                                            (##car _%e125447125553%_))
                                           (_%tl125449125558%_
                                            (##cdr _%e125447125553%_)))
                                       (if (eq? (gx#stx-e _%hd125448125556%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl125449125558%_)
                                               (let ((_%e125450125561%_
                                                      (gx#syntax-e
                                                       _%tl125449125558%_)))
                                                 (let ((_%hd125451125564%_
                                                        (##car _%e125450125561%_))
                                                       (_%tl125452125566%_
                                                        (##cdr _%e125450125561%_)))
                                                   (let ((_%id125569%_
                                                          _%hd125451125564%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125452125566%_)
                                                         (let ((_%e125453125571%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125452125566%_)))
                   (let ((_%hd125454125574%_ (##car _%e125453125571%_))
                         (_%tl125455125576%_ (##cdr _%e125453125571%_)))
                     (let ((_%name125579%_ _%hd125454125574%_))
                       (if (gx#stx-null? _%tl125455125576%_)
                           (let* ((_%phi125581%_
                                   (gx#current-export-expander-phi))
                                  (_%$e125583%_
                                   (gx#core-resolve-identifier__1
                                    _%id125569%_
                                    _%phi125581%_)))
                             (if _%$e125583%_
                                 ((lambda (_%bind125586%_)
                                    (_%K125426%_
                                     _%rest125427%_
                                     (cons (_%make-export__128767128768%_
                                            _%bind125586%_
                                            _%phi125581%_
                                            (gx#current-expander-context)
                                            _%name125579%_)
                                           _%r125428%_)))
                                  _%$e125583%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx125266%_
                                  _%hd125425%_
                                  _%id125569%_)))
                           (_%E125446125549%_)))))
                 (_%E125446125549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125446125549%_))
                                           (_%E125446125549%_))))
                                   (_%E125446125549%_))))
                            (_%E125432125639%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125429125461%_)
                                   (let ((_%e125434125593%_
                                          (gx#syntax-e _%e125429125461%_)))
                                     (let ((_%hd125435125596%_
                                            (##car _%e125434125593%_))
                                           (_%tl125436125598%_
                                            (##cdr _%e125434125593%_)))
                                       (if (eq? (gx#stx-e _%hd125435125596%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl125436125598%_)
                                               (let ((_%e125437125601%_
                                                      (gx#syntax-e
                                                       _%tl125436125598%_)))
                                                 (let ((_%hd125438125604%_
                                                        (##car _%e125437125601%_))
                                                       (_%tl125439125606%_
                                                        (##cdr _%e125437125601%_)))
                                                   (let ((_%phi125609%_
                                                          _%hd125438125604%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125439125606%_)
                                                         (let ((_%e125440125611%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125439125606%_)))
                   (let ((_%hd125441125614%_ (##car _%e125440125611%_))
                         (_%tl125442125616%_ (##cdr _%e125440125611%_)))
                     (let ((_%id125619%_ _%hd125441125614%_))
                       (if (gx#stx-pair? _%tl125442125616%_)
                           (let ((_%e125443125621%_
                                  (gx#syntax-e _%tl125442125616%_)))
                             (let ((_%hd125444125624%_
                                    (##car _%e125443125621%_))
                                   (_%tl125445125626%_
                                    (##cdr _%e125443125621%_)))
                               (let ((_%name125629%_ _%hd125444125624%_))
                                 (if (gx#stx-null? _%tl125445125626%_)
                                     (if (and (gx#stx-fixnum? _%phi125609%_)
                                              (gx#identifier? _%id125619%_)
                                              (gx#identifier? _%name125629%_))
                                         (let* ((_%phi125631%_
                                                 (gx#stx-e _%phi125609%_))
                                                (_%$e125633%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id125619%_
                                                  _%phi125631%_)))
                                           (if _%$e125633%_
                                               ((lambda (_%bind125636%_)
                                                  (_%K125426%_
                                                   _%rest125427%_
                                                   (cons (_%make-export__128767128768%_
                                                          _%bind125636%_
                                                          _%phi125631%_
                                                          (gx#current-expander-context)
                                                          _%name125629%_)
                                                         _%r125428%_)))
                                                _%$e125633%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx125266%_
                                                _%hd125425%_
                                                _%id125619%_)))
                                         (_%E125433125589%_))
                                     (_%E125433125589%_)))))
                           (_%E125433125589%_)))))
                 (_%E125433125589%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125433125589%_))
                                           (_%E125433125589%_))))
                                   (_%E125433125589%_))))
                            (_%E125431125651%_
                             (lambda ()
                               (let ((_%id125643%_ _%e125429125461%_))
                                 (if (gx#identifier? _%id125643%_)
                                     (let ((_%$e125645%_
                                            (gx#core-resolve-identifier__1
                                             _%id125643%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e125645%_
                                           ((lambda (_%bind125648%_)
                                              (_%K125426%_
                                               _%rest125427%_
                                               (cons (_%make-export__0__128769128772%_
                                                      _%bind125648%_)
                                                     _%r125428%_)))
                                            _%$e125645%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx125266%_
                                            _%hd125425%_)))
                                     (_%E125432125639%_)))))
                            (_%E125430125715%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e125429125461%_) '#t)
                                   (let* ((_%current-ctx125655%_
                                           (gx#current-expander-context))
                                          (_%current-phi125657%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx125659%_
                                           (gx#core-context-shift
                                            _%current-ctx125655%_
                                            _%current-phi125657%_))
                                          (_%phi-bind125661%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx125659%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp125664%_ ((_%bind-rest125666%_
                                                         _%phi-bind125661%_)
                                                        (_%set125667%_ '()))
                                       (let* ((_%bind-rest125668125678%_
                                               _%bind-rest125666%_)
                                              (_%else125670125686%_
                                               (lambda ()
                                                 (_%K125426%_
                                                  _%rest125427%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi125657%_
                                                         _%set125667%_)
                                                        _%r125428%_))))
                                              (_%K125672125696%_
                                               (lambda (_%bind-rest125689%_
                                                        _%bind125690%_
                                                        _%key125691%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind125690%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind125690%_))
                                                     (_%lp125664%_
                                                      _%bind-rest125689%_
                                                      _%set125667%_)
                                                     (_%lp125664%_
                                                      _%bind-rest125689%_
                                                      (cons (_%make-export__2__128771128774%_
                                                             _%bind125690%_
                                                             _%current-phi125657%_
                                                             _%current-ctx125655%_)
                                                            _%set125667%_))))))
                                         (if (pair? _%bind-rest125668125678%_)
                                             (let ((_%hd125673125699%_
                                                    (##car _%bind-rest125668125678%_))
                                                   (_%tl125674125701%_
                                                    (##cdr _%bind-rest125668125678%_)))
                                               (if (pair? _%hd125673125699%_)
                                                   (let ((_%hd125675125704%_
                                                          (##car _%hd125673125699%_))
                                                         (_%tl125676125706%_
                                                          (##cdr _%hd125673125699%_)))
                                                     (let* ((_%key125709%_
                                                             _%hd125675125704%_)
                                                            (_%bind125711%_
                                                             _%tl125676125706%_)
                                                            (_%bind-rest125713%_
                                                             _%tl125674125701%_))
                                                       (_%K125672125696%_
                                                        _%bind-rest125713%_
                                                        _%bind125711%_
                                                        _%key125709%_)))
                                                   (_%else125670125686%_)))
                                             (_%else125670125686%_)))))
                                   (_%E125431125651%_)))))
                       (_%E125430125715%_))))
                  (_%export-imports125271%_
                   (lambda (_%src125301%_ _%r125302%_)
                     (letrec* ((_%current-ctx125304%_
                                (gx#current-expander-context))
                               (_%current-phi125305%_
                                (gx#current-export-expander-phi))
                               (_%import->export125306%_
                                (lambda (_%in125387%_)
                                  (let* ((_%in125388125396%_ _%in125387%_)
                                         (_%E125390125400%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in125388125396%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K125391125407%_
                                          (lambda (_%phi125403%_
                                                   _%key125404%_
                                                   _%out125405%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx125304%_
                                             _%key125404%_
                                             _%phi125403%_
                                             _%key125404%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in125388125396%_
                                         'gx#module-import::t)
                                        (let* ((_%e125392125410%_
                                                (##unchecked-structure-ref
                                                 _%in125388125396%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out125413%_
                                                _%e125392125410%_)
                                               (_%e125393125415%_
                                                (##unchecked-structure-ref
                                                 _%in125388125396%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key125418%_
                                                _%e125393125415%_)
                                               (_%e125394125420%_
                                                (##unchecked-structure-ref
                                                 _%in125388125396%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi125423%_
                                                _%e125394125420%_))
                                          (_%K125391125407%_
                                           _%phi125423%_
                                           _%key125418%_
                                           _%out125413%_))
                                        (_%E125390125400%_)))))
                               (_%fold-e125307%_
                                (lambda (_%in125309%_ _%r125310%_)
                                  (let* ((_%in125311125325%_ _%in125309%_)
                                         (_%else125314125333%_
                                          (lambda () _%r125310%_)))
                                    (let ((_%K125320125369%_
                                           (lambda (_%phi125365%_
                                                    _%key125366%_
                                                    _%out125367%_)
                                             (if (and (fx= _%phi125365%_
                                                           _%current-phi125305%_)
                                                      (eq? _%src125301%_
                                                           (##unchecked-structure-ref
                                                            _%out125367%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export125306%_
                                                        _%in125309%_)
                                                       _%r125310%_)
                                                 _%r125310%_)))
                                          (_%K125316125344%_
                                           (lambda (_%imports125337%_
                                                    _%phi125338%_
                                                    _%ctx125339%_)
                                             (if (and (fx= _%phi125338%_
                                                           _%current-phi125305%_)
                                                      (eq? _%src125301%_
                                                           _%ctx125339%_))
                                                 (__foldl1
                                                  (lambda (_%in125341%_
                                                           _%r125342%_)
                                                    (cons (_%import->export125306%_
                                                           _%in125341%_)
                                                          _%r125342%_))
                                                  _%r125310%_
                                                  _%imports125337%_)
                                                 _%r125310%_))))
                                      (let ((_%try-match125313125362%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in125311125325%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e125317125347%_
                                                           (##unchecked-structure-ref
                                                            _%in125311125325%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e125318125352%_
                                                           (##unchecked-structure-ref
                                                            _%in125311125325%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e125319125357%_
                                                           (##unchecked-structure-ref
                                                            _%in125311125325%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx125350%_
                                                            _%e125317125347%_)
                                                           (_%phi125355%_
                                                            _%e125318125352%_)
                                                           (_%imports125360%_
                                                            _%e125319125357%_))
                                                       (_%K125316125344%_
                                                        _%imports125360%_
                                                        _%phi125355%_
                                                        _%ctx125350%_)))
                                                   (_%else125314125333%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in125311125325%_
                                             'gx#module-import::t)
                                            (let* ((_%e125321125372%_
                                                    (##unchecked-structure-ref
                                                     _%in125311125325%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e125322125377%_
                                                    (##unchecked-structure-ref
                                                     _%in125311125325%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e125323125382%_
                                                    (##unchecked-structure-ref
                                                     _%in125311125325%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out125375%_
                                                     _%e125321125372%_)
                                                    (_%key125380%_
                                                     _%e125322125377%_)
                                                    (_%phi125385%_
                                                     _%e125323125382%_))
                                                (_%K125320125369%_
                                                 _%phi125385%_
                                                 _%key125380%_
                                                 _%out125375%_)))
                                            (_%try-match125313125362%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src125301%_
                              _%current-phi125305%_
                              (__foldl1
                               _%fold-e125307%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx125304%_
                                '8
                                '#f
                                '#f)))
                             _%r125302%_))))
                  (_%export!125272%_
                   (lambda (_%rbody125288%_)
                     (letrec* ((_%current-ctx125290%_
                                (gx#current-expander-context))
                               (_%fold-e125291%_
                                (lambda (_%out125295%_ _%r125296%_)
                                  (if (##structure-direct-instance-of?
                                       _%out125295%_
                                       'gx#module-export::t)
                                      (cons _%out125295%_ _%r125296%_)
                                      (if (##structure-direct-instance-of?
                                           _%out125295%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r125296%_
                                           (##unchecked-structure-ref
                                            _%out125295%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r125296%_)))))
                       (let ((_%body125293%_ (reverse _%rbody125288%_)))
                         (##unchecked-structure-set!
                          _%current-ctx125290%_
                          (__foldl1
                           _%fold-e125291%_
                           (##unchecked-structure-ref
                            _%current-ctx125290%_
                            '9
                            '#f
                            '#f)
                           _%body125293%_)
                          '9
                          '#f
                          '#f)
                         _%body125293%_))))
                  (_%expanded-export?125273%_
                   (lambda (_%e125283%_)
                     (let ((_%$e125285%_
                            (##structure-direct-instance-of?
                             _%e125283%_
                             'gx#module-export::t)))
                       (if _%$e125285%_
                           _%$e125285%_
                           (##structure-direct-instance-of?
                            _%e125283%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?125267%_)
              (let ((_%rbody125279%_
                     (gx#core-expand-import/export
                      _%stx125266%_
                      _%expanded-export?125273%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1125270%_)))
                (if _%internal-expand?125267%_
                    (reverse _%rbody125279%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!125272%_ _%rbody125279%_))
                     (gx#stx-source _%stx125266%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx125266%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx125266%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx125765%_)
        (let ((_%internal-expand?125767%_ '#f))
          (gx#core-expand-export%__%
           _%stx125765%_
           _%internal-expand?125767%_))))
    (define gx#core-expand-export%
      (lambda _g128843_
        (let ((_g128842_ (##length _g128843_)))
          (cond ((##fx= _g128842_ 1)
                 (apply gx#core-expand-export%__0 _g128843_))
                ((##fx= _g128842_ 2)
                 (apply gx#core-expand-export%__% _g128843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g128843_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd125263%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd125263%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx125233%_)
        (let* ((_%e125234125241%_ _%stx125233%_)
               (_%E125236125245%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125234125241%_)))
               (_%E125235125259%_
                (lambda ()
                  (if (gx#stx-pair? _%e125234125241%_)
                      (let ((_%e125237125249%_
                             (gx#syntax-e _%e125234125241%_)))
                        (let ((_%hd125238125252%_ (##car _%e125237125249%_))
                              (_%tl125239125254%_ (##cdr _%e125237125249%_)))
                          (let ((_%body125257%_ _%tl125239125254%_))
                            (if (gx#identifier-list? _%body125257%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body125257%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body125257%_))
                                   (gx#stx-source _%stx125233%_)))
                                (_%E125236125245%_)))))
                      (_%E125236125245%_)))))
          (_%E125235125259%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id125199%_ _%private?125200%_ _%phi125201%_ _%ctx125202%_)
        (gx#core-bind-syntax!__%
         _%id125199%_
         ((if _%private?125200%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id125199%_))
         _%private?125200%_
         _%phi125201%_
         _%ctx125202%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id125207%_)
        (let* ((_%private?125209%_ '#f)
               (_%phi125211%_ (gx#current-expander-phi))
               (_%ctx125213%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125207%_
           _%private?125209%_
           _%phi125211%_
           _%ctx125213%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id125215%_ _%private?125216%_)
        (let* ((_%phi125218%_ (gx#current-expander-phi))
               (_%ctx125220%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125215%_
           _%private?125216%_
           _%phi125218%_
           _%ctx125220%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id125222%_ _%private?125223%_ _%phi125224%_)
        (let ((_%ctx125226%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125222%_
           _%private?125223%_
           _%phi125224%_
           _%ctx125226%_))))
    (define gx#core-bind-feature!
      (lambda _g128845_
        (let ((_g128844_ (##length _g128845_)))
          (cond ((##fx= _g128844_ 1)
                 (apply gx#core-bind-feature!__0 _g128845_))
                ((##fx= _g128844_ 2)
                 (apply gx#core-bind-feature!__1 _g128845_))
                ((##fx= _g128844_ 3)
                 (apply gx#core-bind-feature!__2 _g128845_))
                ((##fx= _g128844_ 4)
                 (apply gx#core-bind-feature!__% _g128845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g128845_))))))))
