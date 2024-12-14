(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1734215270)
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
      (lambda _%$args129168%_
        (apply make-instance gx#module-import::t _%$args129168%_)))
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
      (lambda _%$args129165%_
        (apply make-instance gx#module-export::t _%$args129165%_)))
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
      (lambda _%$args129162%_
        (apply make-instance gx#import-set::t _%$args129162%_)))
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
      (lambda _%$args129159%_
        (apply make-instance gx#export-set::t _%$args129159%_)))
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
      (lambda _%$args129156%_
        (apply make-instance gx#import-expander::t _%$args129156%_)))
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
      (lambda _%$args129153%_
        (apply make-instance gx#export-expander::t _%$args129153%_)))
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
      (lambda _%$args129150%_
        (apply make-instance gx#import-export-expander::t _%$args129150%_)))
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
      (lambda (_%path129147%_ _%fun129148%_)
        (call-with-input-file
         (cons 'path: (cons _%path129147%_ gx#source-file-settings))
         _%fun129148%_)))
    (define gx#module-context:::init!
      (lambda (_%self125599129128%_
               _%id129130%_
               _%super129131%_
               _%ns129132%_
               _%path129133%_)
        (let* ((_%self129135%_ _%self125599129128%_)
               (_%self129137%_ _%self129135%_))
          (if (##fx< '11 (##structure-length _%self129137%_))
              (begin
                (##unchecked-structure-set!
                 _%self129137%_
                 _%id129130%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129137%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129137%_
                 _%super129131%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129137%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129137%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self129137%_
                 _%ns129132%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129137%_
                 _%path129133%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129137%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self129137%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self129137%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self129137%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129137%_
                     '11
                     (##vector-length _%self129137%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125600128959%_ _%ctx128961%_ _%root128962%_)
        (let* ((_%self128964%_ _%self125600128959%_)
               (_%self128966%_ _%self128964%_)
               (_%super128982%_
                (let ((_%$e128976%_ _%root128962%_))
                  (if _%$e128976%_
                      _%$e128976%_
                      (let ((_%$e128979%_ (gx#core-context-root__0)))
                        (if _%$e128979%_
                            _%$e128979%_
                            (let ((__obj129212
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor129213
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj129212
                                      ':init!)))
                                (if __constructor129213
                                    (__constructor129213 __obj129212)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj129212)))))))
          (if _%ctx128961%_
              (let ((_%id128985%_
                     (##structure-ref
                      _%ctx128961%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path128986%_
                     (##structure-ref
                      _%ctx128961%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in128987%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx128961%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e128988%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx128961%_)))))
                (if (##fx< '8 (##structure-length _%self128966%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self128966%_
                       _%id128985%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128966%_
                       (make-hash-table-eq 'size: (##length _%in128987%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128966%_
                       _%super128982%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128966%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128966%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128966%_
                       _%path128986%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128966%_
                       _%in128987%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128966%_
                       _%e128988%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self128966%_
                           '8
                           (##vector-length _%self128966%_)))
                (##for-each
                 (lambda (_%g128989128991%_)
                   (gx#core-bind-weak-import!__%
                    _%g128989128991%_
                    _%self128966%_))
                 _%in128987%_))
              (if (##fx< '8 (##structure-length _%self128966%_))
                  (begin
                    (##unchecked-structure-set! _%self128966%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self128966%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self128966%_
                     _%super128982%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self128966%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self128966%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self128966%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self128966%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self128966%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self128966%_
                         '8
                         (##vector-length _%self128966%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125600128997%_ _%ctx128998%_)
        (let ((_%root129000%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125600128997%_
           _%ctx128998%_
           _%root129000%_))))
    (define gx#prelude-context:::init!
      (lambda _g129219_
        (let ((_g129218_ (##length _g129219_)))
          (cond ((##fx= _g129218_ 2)
                 (apply gx#prelude-context:::init!__0 _g129219_))
                ((##fx= _g129218_ 3)
                 (apply gx#prelude-context:::init!__% _g129219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g129219_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self128833%_ _%e128834%_)
        (if (##fx< '3 (##structure-length _%self128833%_))
            (begin
              (##unchecked-structure-set!
               _%self128833%_
               _%e128834%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128833%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128833%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self128833%_
                   '3
                   (##vector-length _%self128833%_)))))
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
      (lambda (_%g128459128462%_ _%g128460128464%_)
        (gx#core-apply-user-expander__%
         _%g128459128462%_
         _%g128460128464%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g128330128333%_ _%g128331128335%_)
        (gx#core-apply-user-expander__%
         _%g128330128333%_
         _%g128331128335%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx128201%_)
        (let* ((_%path128203%_
                (##structure-ref _%ctx128201%_ '7 gx#module-context::t '#f))
               (_%path128205%_
                (if (pair? _%path128203%_)
                    (##last _%path128203%_)
                    _%path128203%_)))
          (if (string? _%path128205%_) _%path128205%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path128177%_ _%reload?128178%_ _%eval?128179%_)
        (let ((_%ctx128181%_
               ((gx#current-expander-module-import)
                _%path128177%_
                _%reload?128178%_)))
          (if (and _%ctx128181%_ _%eval?128179%_)
              (gx#eval-module _%ctx128181%_)
              '#!void)
          _%ctx128181%_)))
    (define gx#import-module__0
      (lambda (_%path128186%_)
        (let* ((_%reload?128188%_ '#f) (_%eval?128190%_ '#f))
          (gx#import-module__%
           _%path128186%_
           _%reload?128188%_
           _%eval?128190%_))))
    (define gx#import-module__1
      (lambda (_%path128192%_ _%reload?128193%_)
        (let ((_%eval?128195%_ '#f))
          (gx#import-module__%
           _%path128192%_
           _%reload?128193%_
           _%eval?128195%_))))
    (define gx#import-module
      (lambda _g129221_
        (let ((_g129220_ (##length _g129221_)))
          (cond ((##fx= _g129220_ 1) (apply gx#import-module__0 _g129221_))
                ((##fx= _g129220_ 2) (apply gx#import-module__1 _g129221_))
                ((##fx= _g129220_ 3) (apply gx#import-module__% _g129221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g129221_))))))
    (define gx#eval-module
      (lambda (_%mod128174%_)
        ((gx#current-expander-module-eval) _%mod128174%_)))
    (define gx#core-eval-module
      (lambda (_%obj128154%_)
        (letrec ((_%force-e128156%_
                  (lambda (_%getf128170%_ _%e128171%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf128170%_ _%e128171%_)))
                     gx#current-expander-context
                     _%e128171%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur128158%_ ((_%e128160%_ _%obj128154%_))
            (if (##structure-instance-of? _%e128160%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e128163%_
                         (gx#core-context-prelude__% _%e128160%_)))
                    (if _%$e128163%_ (_%recur128158%_ _%$e128163%_) '#!void))
                  (_%force-e128156%_ gx#module-context-e _%e128160%_))
                (if (##structure-instance-of?
                     _%e128160%_
                     'gx#prelude-context::t)
                    (_%force-e128156%_ gx#prelude-context-e _%e128160%_)
                    (if (gx#stx-string? _%e128160%_)
                        (_%recur128158%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e128160%_)))
                        (if (gx#core-library-module-path? _%e128160%_)
                            (_%recur128158%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e128160%_)))
                            (error '"cannot eval module" _%obj128154%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx128134%_)
        (let _%lp128136%_ ((_%e128138%_ _%ctx128134%_))
          (if (or (##structure-instance-of? _%e128138%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e128138%_ 'gx#local-context::t))
              (_%lp128136%_ (##unchecked-structure-ref _%e128138%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e128138%_ 'gx#prelude-context::t)
                  _%e128138%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx128150%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx128150%_))))
    (define gx#core-context-prelude
      (lambda _g129223_
        (let ((_g129222_ (##length _g129223_)))
          (cond ((##fx= _g129222_ 0)
                 (apply gx#core-context-prelude__0 _g129223_))
                ((##fx= _g129222_ 1)
                 (apply gx#core-context-prelude__% _g129223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g129223_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx128125%_)
        (let ((_%$e128127%_ (__hash-get gx#__module-registry _%ctx128125%_)))
          (if _%$e128127%_
              _%$e128127%_
              (let ((_%pre128131%_
                     (let ((__obj129214
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
                        __obj129214
                        _%ctx128125%_)
                       __obj129214)))
                (__hash-put! gx#__module-registry _%ctx128125%_ _%pre128131%_)
                _%pre128131%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath127997%_ _%reload?127998%_)
        (letrec ((_%import-source128000%_
                  (lambda (_%path128089%_)
                    (if (member _%path128089%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path128089%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g129224_ (gx#core-read-module _%path128089%_)))
                         (begin
                           (let ((_g129225_
                                  (if (##values? _g129224_)
                                      (##values-length _g129224_)
                                      1)))
                             (if (not (##fx= _g129225_ 4))
                                 (error "Context expects 4 values" _g129225_)))
                           (let ((_%pre128092%_ (##values-ref _g129224_ 0))
                                 (_%id128093%_ (##values-ref _g129224_ 1))
                                 (_%ns128094%_ (##values-ref _g129224_ 2))
                                 (_%body128095%_ (##values-ref _g129224_ 3)))
                             (let* ((_%prelude128105%_
                                     (if (##structure-instance-of?
                                          _%pre128092%_
                                          'gx#prelude-context::t)
                                         _%pre128092%_
                                         (if (##structure-instance-of?
                                              _%pre128092%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre128092%_)
                                             (if (string? _%pre128092%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre128092%_))
                                                 (if (not _%pre128092%_)
                                                     (let ((_%$e128101%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e128101%_
                                                           _%$e128101%_
                                                           (let ((__obj129215
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
                     (gx#prelude-context:::init!__0 __obj129215 '#f)
                     __obj129215)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath127997%_
                                                            _%pre128092%_))))))
                                    (_%ctx128107%_
                                     (let ((__obj129216
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
                                        __obj129216
                                        _%id128093%_
                                        _%prelude128105%_
                                        _%ns128094%_
                                        _%path128089%_)
                                       __obj129216))
                                    (_%body128109%_
                                     (gx#core-expand-module-begin
                                      _%body128095%_
                                      _%ctx128107%_))
                                    (_%body128111%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128109%_)
                                      _%path128089%_
                                      _%ctx128107%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128107%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128111%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128107%_
                                _%body128111%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path128089%_
                                _%ctx128107%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id128093%_
                                _%ctx128107%_)
                               _%ctx128107%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path128089%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule128001%_
                  (lambda (_%rpath128017%_)
                    (let* ((_%rpath128018128025%_ _%rpath128017%_)
                           (_%E128020128029%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath128018128025%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K128021128077%_
                            (lambda (_%refs128032%_ _%origin128033%_)
                              (let ((_%ctx128035%_
                                     (if _%origin128033%_
                                         (gx#core-import-module__%
                                          _%origin128033%_
                                          _%reload?127998%_)
                                         (gx#current-expander-context))))
                                (let _%lp128037%_ ((_%rest128039%_
                                                    _%refs128032%_)
                                                   (_%ctx128040%_
                                                    _%ctx128035%_))
                                  (let* ((_%rest128041128049%_ _%rest128039%_)
                                         (_%else128043128057%_
                                          (lambda () _%ctx128040%_))
                                         (_%K128045128065%_
                                          (lambda (_%rest128060%_ _%id128061%_)
                                            (let ((_%bind128063%_
                                                   (gx#resolve-identifier__%
                                                    _%id128061%_
                                                    '0
                                                    _%ctx128040%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind128063%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind128063%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp128037%_
                                                   _%rest128060%_
                                                   (##unchecked-structure-ref
                                                    _%bind128063%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath128017%_
                                                         _%id128061%_
                                                         _%bind128063%_))))))
                                    (if (pair? _%rest128041128049%_)
                                        (let ((_%hd128046128068%_
                                               (##car _%rest128041128049%_))
                                              (_%tl128047128070%_
                                               (##cdr _%rest128041128049%_)))
                                          (let* ((_%id128073%_
                                                  _%hd128046128068%_)
                                                 (_%rest128075%_
                                                  _%tl128047128070%_))
                                            (_%K128045128065%_
                                             _%rest128075%_
                                             _%id128073%_)))
                                        (_%else128043128057%_))))))))
                      (if (pair? _%rpath128018128025%_)
                          (let ((_%hd128022128080%_
                                 (##car _%rpath128018128025%_))
                                (_%tl128023128082%_
                                 (##cdr _%rpath128018128025%_)))
                            (let* ((_%origin128085%_ _%hd128022128080%_)
                                   (_%refs128087%_ _%tl128023128082%_))
                              (_%K128021128077%_
                               _%refs128087%_
                               _%origin128085%_)))
                          (_%E128020128029%_))))))
          (let ((_%$e128003%_
                 (if (not _%reload?127998%_)
                     (__hash-get gx#__module-registry _%rpath127997%_)
                     '#f)))
            (if _%$e128003%_
                _%$e128003%_
                (if (list? _%rpath127997%_)
                    (_%import-submodule128001%_ _%rpath127997%_)
                    (if (gx#core-library-module-path? _%rpath127997%_)
                        (let ((_%ctx128008%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath127997%_)
                                _%reload?127998%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath127997%_
                           _%ctx128008%_)
                          _%ctx128008%_)
                        (let* ((_%npath128011%_
                                (path-normalize _%rpath127997%_))
                               (_%$e128013%_
                                (if (not _%reload?127998%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath128011%_)
                                    '#f)))
                          (if _%$e128013%_
                              _%$e128013%_
                              (_%import-source128000%_
                               _%npath128011%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath128118%_)
        (let ((_%reload?128120%_ '#f))
          (gx#core-import-module__% _%rpath128118%_ _%reload?128120%_))))
    (define gx#core-import-module
      (lambda _g129227_
        (let ((_g129226_ (##length _g129227_)))
          (cond ((##fx= _g129226_ 1)
                 (apply gx#core-import-module__0 _g129227_))
                ((##fx= _g129226_ 2)
                 (apply gx#core-import-module__% _g129227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g129227_))))))
    (define gx#core-read-module
      (lambda (_%path127986%_)
        (__with-catch
         (lambda (_%exn127988%_)
           (if (and (datum-parsing-exception? _%exn127988%_)
                    (eq? (datum-parsing-exception-filepos _%exn127988%_) '0))
               (gx#core-read-module/lang _%path127986%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path127986%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g127990127992%_)
                      (display-exception__% _%exn127988%_ _%g127990127992%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path127986%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path127838%_)
        (let _%lp127840%_ ((_%body127842%_
                            (read-syntax-from-file _%path127838%_))
                           (_%pre127843%_ '#f)
                           (_%ns127844%_ '#f)
                           (_%pkg127845%_ '#f))
          (let* ((_%e127846127870%_ _%body127842%_)
                 (_%E127862127896%_
                  (lambda ()
                    (let ((_g129228_
                           (if _%pkg127845%_
                               (values _%pre127843%_
                                       _%ns127844%_
                                       _%pkg127845%_)
                               (gx#core-read-module-package
                                _%path127838%_
                                _%pre127843%_
                                _%ns127844%_))))
                      (begin
                        (let ((_g129229_
                               (if (##values? _g129228_)
                                   (##values-length _g129228_)
                                   1)))
                          (if (not (##fx= _g129229_ 3))
                              (error "Context expects 3 values" _g129229_)))
                        (let ((_%pre127874%_ (##values-ref _g129228_ 0))
                              (_%ns127875%_ (##values-ref _g129228_ 1))
                              (_%pkg127876%_ (##values-ref _g129228_ 2)))
                          (let* ((_%prelude127882%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre127874%_)
                                      (gx#syntax-local-e__0 _%pre127874%_)
                                      (if (gx#core-library-module-path?
                                           _%pre127874%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre127874%_)
                                          (if (gx#stx-string? _%pre127874%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre127874%_
                                               _%path127838%_)
                                              (gx#stx-e _%pre127874%_)))))
                                 (_%path-id127884%_
                                  (gx#core-module-path->namespace
                                   _%path127838%_))
                                 (_%pkg-id127886%_
                                  (if _%pkg127876%_
                                      (##string-append
                                       _%pkg127876%_
                                       '"/"
                                       _%path-id127884%_)
                                      _%path-id127884%_))
                                 (_%module-id127888%_
                                  (##string->symbol _%pkg-id127886%_))
                                 (_%module-ns127893%_
                                  (if (eq? _%ns127875%_ '#!void)
                                      '#f
                                      (let ((_%$e127890%_ _%ns127875%_))
                                        (if _%$e127890%_
                                            _%$e127890%_
                                            _%pkg-id127886%_)))))
                            (values _%prelude127882%_
                                    _%module-id127888%_
                                    _%module-ns127893%_
                                    _%body127842%_)))))))
                 (_%E127855127928%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127846127870%_)
                        (let ((_%e127863127900%_
                               (gx#syntax-e _%e127846127870%_)))
                          (let ((_%hd127864127903%_ (##car _%e127863127900%_))
                                (_%tl127865127905%_ (##cdr _%e127863127900%_)))
                            (if (eq? (gx#stx-e _%hd127864127903%_) 'package:)
                                (if (gx#stx-pair? _%tl127865127905%_)
                                    (let ((_%e127866127908%_
                                           (gx#syntax-e _%tl127865127905%_)))
                                      (let ((_%hd127867127911%_
                                             (##car _%e127866127908%_))
                                            (_%tl127868127913%_
                                             (##cdr _%e127866127908%_)))
                                        (let* ((_%pkg127916%_
                                                _%hd127867127911%_)
                                               (_%rest127918%_
                                                _%tl127868127913%_)
                                               (_%pkg127926%_
                                                (if (gx#identifier?
                                                     _%pkg127916%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg127916%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg127916%_)
                                                            (gx#stx-false?
                                                             _%pkg127916%_))
                                                        (gx#stx-e
                                                         _%pkg127916%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg127916%_)))))
                                          (_%lp127840%_
                                           _%rest127918%_
                                           _%pre127843%_
                                           _%ns127844%_
                                           _%pkg127926%_))))
                                    (_%E127862127896%_))
                                (_%E127862127896%_))))
                        (_%E127862127896%_))))
                 (_%E127848127958%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127846127870%_)
                        (let ((_%e127856127932%_
                               (gx#syntax-e _%e127846127870%_)))
                          (let ((_%hd127857127935%_ (##car _%e127856127932%_))
                                (_%tl127858127937%_ (##cdr _%e127856127932%_)))
                            (if (eq? (gx#stx-e _%hd127857127935%_) 'namespace:)
                                (if (gx#stx-pair? _%tl127858127937%_)
                                    (let ((_%e127859127940%_
                                           (gx#syntax-e _%tl127858127937%_)))
                                      (let ((_%hd127860127943%_
                                             (##car _%e127859127940%_))
                                            (_%tl127861127945%_
                                             (##cdr _%e127859127940%_)))
                                        (let* ((_%ns127948%_
                                                _%hd127860127943%_)
                                               (_%rest127950%_
                                                _%tl127861127945%_)
                                               (_%ns127956%_
                                                (if (gx#identifier?
                                                     _%ns127948%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns127948%_))
                                                    (if (gx#stx-string?
                                                         _%ns127948%_)
                                                        (gx#stx-e _%ns127948%_)
                                                        (if (gx#stx-false?
                                                             _%ns127948%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns127948%_))))))
                                          (_%lp127840%_
                                           _%rest127950%_
                                           _%pre127843%_
                                           _%ns127956%_
                                           _%pkg127845%_))))
                                    (_%E127855127928%_))
                                (_%E127855127928%_))))
                        (_%E127855127928%_))))
                 (_%E127847127982%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127846127870%_)
                        (let ((_%e127849127962%_
                               (gx#syntax-e _%e127846127870%_)))
                          (let ((_%hd127850127965%_ (##car _%e127849127962%_))
                                (_%tl127851127967%_ (##cdr _%e127849127962%_)))
                            (if (eq? (gx#stx-e _%hd127850127965%_) 'prelude:)
                                (if (gx#stx-pair? _%tl127851127967%_)
                                    (let ((_%e127852127970%_
                                           (gx#syntax-e _%tl127851127967%_)))
                                      (let ((_%hd127853127973%_
                                             (##car _%e127852127970%_))
                                            (_%tl127854127975%_
                                             (##cdr _%e127852127970%_)))
                                        (let* ((_%prelude127978%_
                                                _%hd127853127973%_)
                                               (_%rest127980%_
                                                _%tl127854127975%_))
                                          (_%lp127840%_
                                           _%rest127980%_
                                           _%prelude127978%_
                                           _%ns127844%_
                                           _%pkg127845%_))))
                                    (_%E127848127958%_))
                                (_%E127848127958%_))))
                        (_%E127848127958%_)))))
            (_%E127847127982%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path127660%_)
        (letrec ((_%default-read-module-body127662%_
                  (lambda (_%inp127830%_)
                    (let _%lp127832%_ ((_%body127834%_ '()))
                      (let ((_%next127836%_ (read-syntax__% _%inp127830%_)))
                        (if (eof-object? _%next127836%_)
                            (reverse _%body127834%_)
                            (_%lp127832%_
                             (cons _%next127836%_ _%body127834%_)))))))
                 (_%read-body127663%_
                  (lambda (_%inp127748%_
                           _%pre127749%_
                           _%ns127750%_
                           _%pkg127751%_
                           _%args127752%_)
                    (let ((_g129230_
                           (if _%pkg127751%_
                               (values _%pre127749%_
                                       _%ns127750%_
                                       _%pkg127751%_)
                               (gx#core-read-module-package
                                _%path127660%_
                                _%pre127749%_
                                _%ns127750%_))))
                      (begin
                        (let ((_g129231_
                               (if (##values? _g129230_)
                                   (##values-length _g129230_)
                                   1)))
                          (if (not (##fx= _g129231_ 3))
                              (error "Context expects 3 values" _g129231_)))
                        (let ((_%pre127754%_ (##values-ref _g129230_ 0))
                              (_%ns127755%_ (##values-ref _g129230_ 1))
                              (_%pkg127756%_ (##values-ref _g129230_ 2)))
                          (let* ((_%prelude127758%_
                                  (gx#import-module__0 _%pre127754%_))
                                 (_%read-module-body127813%_
                                  (let ((_%$e127804%_
                                         (__find (lambda (_%e127759127761%_)
                                                   (let* ((_%g127763127773%_
                                                           _%e127759127761%_)
                                                          (_%else127765127781%_
                                                           (lambda () '#f))
                                                          (_%K127767127785%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g127763127773%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e127768127788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g127763127773%_
                          '1
                          '#f
                          '#f))
                        (_%e127769127791%_
                         (##unchecked-structure-ref
                          _%g127763127773%_
                          '2
                          '#f
                          '#f))
                        (_%e127770127794%_
                         (##unchecked-structure-ref
                          _%g127763127773%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e127770127794%_ '1)
                       (let ((_%e127771127797%_
                              (##unchecked-structure-ref
                               _%g127763127773%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g127799127801%_)
                                (eq? _%g127799127801%_ 'read-module-body))
                              _%e127771127797%_)
                             (_%K127767127785%_)
                             (_%else127765127781%_)))
                       (_%else127765127781%_)))
                 (_%else127765127781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude127758%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e127804%_
                                        ((lambda (_%xport127807%_)
                                           (let ((_%proc127810%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport127807%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc127810%_)
                                                 _%proc127810%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path127660%_
                                                  _%pre127754%_
                                                  _%proc127810%_))))
                                         _%$e127804%_)
                                        _%default-read-module-body127662%_)))
                                 (_%path-id127815%_
                                  (gx#core-module-path->namespace
                                   _%path127660%_))
                                 (_%pkg-id127817%_
                                  (if _%pkg127756%_
                                      (##string-append
                                       _%pkg127756%_
                                       '"/"
                                       _%path-id127815%_)
                                      _%path-id127815%_))
                                 (_%module-id127819%_
                                  (##string->symbol _%pkg-id127817%_))
                                 (_%module-ns127824%_
                                  (let ((_%$e127821%_ _%ns127755%_))
                                    (if _%$e127821%_
                                        _%$e127821%_
                                        _%pkg-id127817%_)))
                                 (_%body127827%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body127813%_
                                      _%inp127748%_))
                                   gx#current-module-reader-path
                                   _%path127660%_
                                   gx#current-module-reader-args
                                   _%args127752%_)))
                            (values _%prelude127758%_
                                    _%module-id127819%_
                                    _%module-ns127824%_
                                    _%body127827%_)))))))
                 (_%string-e127664%_
                  (lambda (_%obj127742%_ _%what127743%_)
                    (if (string? _%obj127742%_)
                        _%obj127742%_
                        (if (symbol? _%obj127742%_)
                            (##symbol->string _%obj127742%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what127743%_)
                             _%path127660%_
                             _%obj127742%_)))))
                 (_%read-lang-args127665%_
                  (lambda (_%inp127697%_ _%args127698%_)
                    (let* ((_%args127699127707%_ _%args127698%_)
                           (_%else127701127715%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path127660%_)))
                           (_%K127703127730%_
                            (lambda (_%args127718%_ _%prelude127719%_)
                              (let* ((_%pkg127721%_
                                      (pgetq__0 'package: _%args127718%_))
                                     (_%pkg127723%_
                                      (if _%pkg127721%_
                                          (_%string-e127664%_
                                           _%pkg127721%_
                                           '"package")
                                          '#f))
                                     (_%ns127725%_
                                      (pgetq__0 'namespace: _%args127718%_))
                                     (_%ns127727%_
                                      (if _%ns127725%_
                                          (_%string-e127664%_
                                           _%ns127725%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body127663%_
                                 _%inp127697%_
                                 _%prelude127719%_
                                 _%ns127727%_
                                 _%pkg127723%_
                                 _%args127718%_)))))
                      (if (pair? _%args127699127707%_)
                          (let ((_%hd127704127733%_
                                 (##car _%args127699127707%_))
                                (_%tl127705127735%_
                                 (##cdr _%args127699127707%_)))
                            (let* ((_%prelude127738%_ _%hd127704127733%_)
                                   (_%args127740%_ _%tl127705127735%_))
                              (_%K127703127730%_
                               _%args127740%_
                               _%prelude127738%_)))
                          (_%else127701127715%_)))))
                 (_%read-lang127666%_
                  (lambda (_%inp127671%_)
                    (let* ((_%head127673%_ (read-line _%inp127671%_))
                           (_%$e127675%_
                            (string-index__0 _%head127673%_ '#\space)))
                      (if _%$e127675%_
                          ((lambda (_%ix127678%_)
                             (let ((_%lang127680%_
                                    (substring
                                     _%head127673%_
                                     '0
                                     _%ix127678%_)))
                               (if (equal? _%lang127680%_ '"#lang")
                                   (let* ((_%rest127682%_
                                           (substring
                                            _%head127673%_
                                            (##fx+ _%ix127678%_ '1)
                                            (string-length _%head127673%_)))
                                          (_%args127693%_
                                           (__with-catch
                                            (lambda (_%g127683127685%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path127660%_
                                               _%g127683127685%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest127682%_
                                               (lambda (_%g127688127690%_)
                                                 (read-all
                                                  _%g127688127690%_
                                                  read)))))))
                                     (_%read-lang-args127665%_
                                      _%inp127671%_
                                      _%args127693%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path127660%_))))
                           _%$e127675%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path127660%_)))))
                 (_%read-e127667%_
                  (lambda (_%inp127669%_)
                    (if (eq? (peek-char _%inp127669%_) '#\#)
                        (_%read-lang127666%_ _%inp127669%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path127660%_)))))
          (gx#call-with-input-source-file _%path127660%_ _%read-e127667%_))))
    (define gx#core-read-module-package
      (lambda (_%path127608%_ _%pre127609%_ _%ns127610%_)
        (letrec ((_%string-e127612%_
                  (lambda (_%e127655%_)
                    (if (symbol? _%e127655%_)
                        (##symbol->string _%e127655%_)
                        (if (string? _%e127655%_)
                            _%e127655%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e127655%_))))))
          (let _%lp127614%_ ((_%dir127616%_ (path-directory _%path127608%_))
                             (_%pkg-path127617%_ '()))
            (let ((_%gerbil.pkg127619%_
                   (path-expand '"gerbil.pkg" _%dir127616%_)))
              (if (##file-exists? _%gerbil.pkg127619%_)
                  (let ((_%plist127621%_
                         (gx#core-library-package-plist__% _%dir127616%_ '#t)))
                    (if (null? _%plist127621%_)
                        (let ((_%pkg127624%_
                               (if (null? _%pkg-path127617%_)
                                   '#f
                                   (string-join _%pkg-path127617%_ '"/"))))
                          (values _%pre127609%_ _%ns127610%_ _%pkg127624%_))
                        (if (list? _%plist127621%_)
                            (let* ((_%root127627%_
                                    (pgetq__0 'package: _%plist127621%_))
                                   (_%pkg127631%_
                                    (let ((_%pkg-path127629%_
                                           (if _%root127627%_
                                               (cons (_%string-e127612%_
                                                      _%root127627%_)
                                                     _%pkg-path127617%_)
                                               _%pkg-path127617%_)))
                                      (if (null? _%pkg-path127629%_)
                                          '#f
                                          (string-join
                                           _%pkg-path127629%_
                                           '"/"))))
                                   (_%ns127638%_
                                    (let ((_%ns127636%_
                                           (let ((_%$e127633%_ _%ns127610%_))
                                             (if _%$e127633%_
                                                 _%$e127633%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist127621%_)))))
                                      (if _%ns127636%_
                                          (_%string-e127612%_ _%ns127636%_)
                                          '#f)))
                                   (_%pre127643%_
                                    (let ((_%$e127640%_ _%pre127609%_))
                                      (if _%$e127640%_
                                          _%$e127640%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist127621%_)))))
                              (values _%pre127643%_
                                      _%ns127638%_
                                      _%pkg127631%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist127621%_))))
                  (let ((_%dir*127647%_
                         (path-strip-trailing-directory-separator
                          _%dir127616%_)))
                    (if (or (__string-empty? _%dir*127647%_)
                            (equal? _%dir127616%_ _%dir*127647%_))
                        (values _%pre127609%_ _%ns127610%_ '#f)
                        (let ((_%xpath127652%_
                               (path-strip-directory _%dir*127647%_))
                              (_%xdir127653%_ (path-directory _%dir*127647%_)))
                          (_%lp127614%_
                           _%xdir127653%_
                           (cons _%xpath127652%_ _%pkg-path127617%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path127606%_)
        (path-strip-extension (path-strip-directory _%path127606%_))))
    (define gx#core-module-path->id
      (lambda (_%path127604%_)
        (##string->symbol (gx#core-module-path->namespace _%path127604%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path127583%_ _%rel127584%_)
        (let* ((_%path127586%_ (gx#stx-e _%stx-path127583%_))
               (_%path127588%_
                (if (__string-empty? (path-extension _%path127586%_))
                    (##string-append _%path127586%_ '".ss")
                    _%path127586%_)))
          (gx#core-resolve-path__%
           _%path127588%_
           (let ((_%$e127591%_ (gx#stx-source _%stx-path127583%_)))
             (if _%$e127591%_ _%$e127591%_ _%rel127584%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path127597%_)
        (let ((_%rel127599%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path127597%_ _%rel127599%_))))
    (define gx#core-resolve-module-path
      (lambda _g129233_
        (let ((_g129232_ (##length _g129233_)))
          (cond ((##fx= _g129232_ 1)
                 (apply gx#core-resolve-module-path__0 _g129233_))
                ((##fx= _g129232_ 2)
                 (apply gx#core-resolve-module-path__% _g129233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g129233_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath127468%_)
        (let* ((_%spath127470%_ (symbol->string (gx#stx-e _%libpath127468%_)))
               (_%spath127472%_
                (substring
                 _%spath127470%_
                 '1
                 (##string-length _%spath127470%_)))
               (_%ext127474%_ (path-extension _%spath127472%_))
               (_%ssi127476%_
                (if (__string-empty? _%ext127474%_)
                    (##string-append _%spath127472%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath127472%_)
                     '".ssi")))
               (_%srcs127480%_
                (if (__string-empty? _%ext127474%_)
                    (##map (lambda (_%ext127478%_)
                             (string-append _%spath127472%_ _%ext127478%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath127472%_ '()))))
          (let _%lp127483%_ ((_%rest127485%_ (load-path)))
            (let* ((_%rest127486127495%_ _%rest127485%_)
                   (_%E127489127499%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest127486127495%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K127491127570%_
                     (lambda (_%rest127510%_ _%dir127511%_)
                       (letrec ((_%resolve127513%_
                                 (lambda (_%ssi127526%_ _%srcs127527%_)
                                   (let ((_%compiled-path127529%_
                                          (path-expand
                                           _%ssi127526%_
                                           _%dir127511%_)))
                                     (if (##file-exists?
                                          _%compiled-path127529%_)
                                         (path-normalize
                                          _%compiled-path127529%_)
                                         (let _%lpr127531%_ ((_%rest-src127533%_
                                                              _%srcs127527%_))
                                           (let* ((_%rest-src127534127542%_
                                                   _%rest-src127533%_)
                                                  (_%else127536127550%_
                                                   (lambda ()
                                                     (_%lp127483%_
                                                      _%rest127510%_)))
                                                  (_%K127538127558%_
                                                   (lambda (_%rest-src127553%_
                                                            _%src127554%_)
                                                     (let ((_%src-path127556%_
                                                            (path-expand
                                                             _%src127554%_
                                                             _%dir127511%_)))
                                                       (if (##file-exists?
                                                            _%src-path127556%_)
                                                           (path-normalize
                                                            _%src-path127556%_)
                                                           (_%lpr127531%_
                                                            _%rest-src127553%_))))))
                                             (if (pair? _%rest-src127534127542%_)
                                                 (let ((_%hd127539127561%_
                                                        (##car _%rest-src127534127542%_))
                                                       (_%tl127540127563%_
                                                        (##cdr _%rest-src127534127542%_)))
                                                   (let* ((_%src127566%_
                                                           _%hd127539127561%_)
                                                          (_%rest-src127568%_
                                                           _%tl127540127563%_))
                                                     (_%K127538127558%_
                                                      _%rest-src127568%_
                                                      _%src127566%_)))
                                                 (_%else127536127550%_)))))))))
                         (let ((_%$e127515%_
                                (gx#core-library-package-path-prefix
                                 _%dir127511%_)))
                           (if _%$e127515%_
                               ((lambda (_%prefix127518%_)
                                  (if (string-prefix?
                                       _%prefix127518%_
                                       _%spath127472%_)
                                      (let ((_%ssi127522%_
                                             (substring
                                              _%ssi127476%_
                                              (string-length _%prefix127518%_)
                                              (##string-length _%ssi127476%_)))
                                            (_%srcs127523%_
                                             (##map (lambda (_%src127520%_)
                                                      (substring
                                                       _%src127520%_
                                                       (string-length
                                                        _%prefix127518%_)
                                                       (string-length
                                                        _%src127520%_)))
                                                    _%srcs127480%_)))
                                        (_%resolve127513%_
                                         _%ssi127522%_
                                         _%srcs127523%_))
                                      (_%lp127483%_ _%rest127510%_)))
                                _%$e127515%_)
                               (_%resolve127513%_
                                _%ssi127476%_
                                _%srcs127480%_))))))
                    (_%K127490127504%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath127468%_))))
                (let ((_%try-match127488127507%_
                       (lambda ()
                         (if (null? _%rest127486127495%_)
                             (_%K127490127504%_)
                             (_%E127489127499%_)))))
                  (if (pair? _%rest127486127495%_)
                      (let ((_%tl127493127575%_ (##cdr _%rest127486127495%_))
                            (_%hd127492127573%_ (##car _%rest127486127495%_)))
                        (let ((_%dir127578%_ _%hd127492127573%_)
                              (_%rest127580%_ _%tl127493127575%_))
                          (_%K127491127570%_ _%rest127580%_ _%dir127578%_)))
                      (_%try-match127488127507%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath127436%_)
        (letrec ((_%resolve127438%_
                  (lambda (_%path127459%_ _%base127460%_)
                    (let ((_%$e127462%_
                           (string-rindex__0 _%base127460%_ '#\/)))
                      (if _%$e127462%_
                          ((lambda (_%idx127465%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base127460%_ '0 _%idx127465%_)
                                '"/"
                                _%path127459%_))))
                           _%$e127462%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path127459%_))))))))
          (let ((_%spath127440%_ (symbol->string (gx#stx-e _%modpath127436%_)))
                (_%mod127441%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod127441%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath127436%_))
            (let ((_%mpath127443%_
                   (symbol->string
                    (##structure-ref
                     _%mod127441%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp127445%_ ((_%spath127447%_ _%spath127440%_)
                                 (_%mpath127448%_ _%mpath127443%_))
                (if (string-prefix? '"../" _%spath127447%_)
                    (let ((_%$e127451%_
                           (string-rindex__0 _%mpath127448%_ '#\/)))
                      (if _%$e127451%_
                          ((lambda (_%idx127454%_)
                             (_%lp127445%_
                              (substring
                               _%spath127447%_
                               '3
                               (string-length _%spath127447%_))
                              (substring _%mpath127448%_ '0 _%idx127454%_)))
                           _%$e127451%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath127436%_)))
                    (if (string-prefix? '"./" _%spath127447%_)
                        (_%lp127445%_
                         (substring
                          _%spath127447%_
                          '2
                          (string-length _%spath127447%_))
                         _%mpath127448%_)
                        (_%resolve127438%_
                         _%spath127447%_
                         _%mpath127448%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir127428%_)
        (let ((_%$e127430%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir127428%_))))
          (if _%$e127430%_
              ((lambda (_%pkg127433%_)
                 (##string-append (symbol->string _%pkg127433%_) '"/"))
               _%$e127430%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir127398%_ _%exists?127399%_)
        (let ((_%$e127401%_ (__hash-get gx#__module-pkg-cache _%dir127398%_)))
          (if _%$e127401%_
              _%$e127401%_
              (let* ((_%gerbil.pkg127405%_
                      (path-expand '"gerbil.pkg" _%dir127398%_))
                     (_%plist127415%_
                      (if (or _%exists?127399%_
                              (##file-exists? _%gerbil.pkg127405%_))
                          (let ((_%e127410%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg127405%_
                                  read)))
                            (if (eof-object? _%e127410%_)
                                '()
                                (if (list? _%e127410%_)
                                    _%e127410%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg127405%_
                                     _%e127410%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir127398%_
                 _%plist127415%_)
                _%plist127415%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir127421%_)
        (let ((_%exists?127423%_ '#f))
          (gx#core-library-package-plist__% _%dir127421%_ _%exists?127423%_))))
    (define gx#core-library-package-plist
      (lambda _g129235_
        (let ((_g129234_ (##length _g129235_)))
          (cond ((##fx= _g129234_ 1)
                 (apply gx#core-library-package-plist__0 _g129235_))
                ((##fx= _g129234_ 2)
                 (apply gx#core-library-package-plist__% _g129235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g129235_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx127395%_)
        (gx#core-special-module-path? _%stx127395%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx127393%_)
        (gx#core-special-module-path? _%stx127393%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx127388%_ _%char127389%_)
        (if (gx#identifier? _%stx127388%_)
            (if (interned-symbol? (gx#stx-e _%stx127388%_))
                (let ((_%str127391%_
                       (symbol->string (gx#stx-e _%stx127388%_))))
                  (if (##fx> (##string-length _%str127391%_) '1)
                      (eq? (string-ref _%str127391%_ '0) _%char127389%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx127382%_)
        (gx#core-bound-identifier?__%
         _%stx127382%_
         (lambda (_%g127383127385%_)
           (gx#expander-binding?__% _%g127383127385%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx127376%_)
        (gx#core-bound-identifier?__%
         _%stx127376%_
         (lambda (_%g127377127379%_)
           (gx#expander-binding?__% _%g127377127379%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx127363%_)
        (letrec ((_%module-prelude?127365%_
                  (lambda (_%e127371%_)
                    (let ((_%$e127373%_
                           (##structure-instance-of?
                            _%e127371%_
                            'gx#module-context::t)))
                      (if _%$e127373%_
                          _%$e127373%_
                          (##structure-instance-of?
                           _%e127371%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx127363%_
           (lambda (_%g127366127368%_)
             (gx#expander-binding?__%
              _%g127366127368%_
              _%module-prelude?127365%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in127293%_ _%ctx127294%_ _%force-weak?127295%_)
        (let* ((_%in127296127305%_ _%in127293%_)
               (_%E127298127309%_
                (lambda ()
                  (error '"No clause matching"
                         _%in127296127305%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K127299127322%_
                (lambda (_%weak?127312%_
                         _%phi127313%_
                         _%key127314%_
                         _%source127315%_)
                  (gx#core-bind!__%
                   _%key127314%_
                   (let ((_%e127317%_
                          (gx#core-resolve-module-export _%source127315%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e127317%_ '1 '#f '#f)
                      _%key127314%_
                      _%phi127313%_
                      _%e127317%_
                      (##unchecked-structure-ref _%source127315%_ '1 '#f '#f)
                      (let ((_%$e127319%_ _%force-weak?127295%_))
                        (if _%$e127319%_ _%$e127319%_ _%weak?127312%_))))
                   gx#core-context-rebind?
                   _%phi127313%_
                   _%ctx127294%_))))
          (if (##structure-direct-instance-of?
               _%in127296127305%_
               'gx#module-import::t)
              (let* ((_%e127300127325%_
                      (##unchecked-structure-ref
                       _%in127296127305%_
                       '1
                       '#f
                       '#f))
                     (_%source127328%_ _%e127300127325%_)
                     (_%e127301127330%_
                      (##unchecked-structure-ref
                       _%in127296127305%_
                       '2
                       '#f
                       '#f))
                     (_%key127333%_ _%e127301127330%_)
                     (_%e127302127335%_
                      (##unchecked-structure-ref
                       _%in127296127305%_
                       '3
                       '#f
                       '#f))
                     (_%phi127338%_ _%e127302127335%_)
                     (_%e127303127340%_
                      (##unchecked-structure-ref
                       _%in127296127305%_
                       '4
                       '#f
                       '#f))
                     (_%weak?127343%_ _%e127303127340%_))
                (_%K127299127322%_
                 _%weak?127343%_
                 _%phi127338%_
                 _%key127333%_
                 _%source127328%_))
              (_%E127298127309%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in127348%_)
        (let* ((_%ctx127350%_ (gx#current-expander-context))
               (_%force-weak?127352%_ '#f))
          (gx#core-bind-import!__%
           _%in127348%_
           _%ctx127350%_
           _%force-weak?127352%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in127354%_ _%ctx127355%_)
        (let ((_%force-weak?127357%_ '#f))
          (gx#core-bind-import!__%
           _%in127354%_
           _%ctx127355%_
           _%force-weak?127357%_))))
    (define gx#core-bind-import!
      (lambda _g129237_
        (let ((_g129236_ (##length _g129237_)))
          (cond ((##fx= _g129236_ 1) (apply gx#core-bind-import!__0 _g129237_))
                ((##fx= _g129236_ 2) (apply gx#core-bind-import!__1 _g129237_))
                ((##fx= _g129236_ 3) (apply gx#core-bind-import!__% _g129237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g129237_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in127279%_ _%ctx127280%_)
        (gx#core-bind-import!__% _%in127279%_ _%ctx127280%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in127285%_)
        (let ((_%ctx127287%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in127285%_ _%ctx127287%_))))
    (define gx#core-bind-weak-import!
      (lambda _g129239_
        (let ((_g129238_ (##length _g129239_)))
          (cond ((##fx= _g129238_ 1)
                 (apply gx#core-bind-weak-import!__0 _g129239_))
                ((##fx= _g129238_ 2)
                 (apply gx#core-bind-weak-import!__% _g129239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g129239_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out127170%_)
        (letrec ((_%subst127172%_
                  (lambda (_%key127218%_)
                    (let* ((_%key127219127227%_ _%key127218%_)
                           (_%else127221127235%_ (lambda () _%key127218%_))
                           (_%K127223127266%_
                            (lambda (_%mark127238%_ _%id127239%_)
                              (let* ((_%mark127240127246%_ _%mark127238%_)
                                     (_%E127242127250%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark127240127246%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K127243127258%_
                                      (lambda (_%subst127253%_)
                                        (let ((_%$e127255%_
                                               (if _%subst127253%_
                                                   (hash-get
                                                    _%subst127253%_
                                                    _%id127239%_)
                                                   '#f)))
                                          (if _%$e127255%_
                                              _%$e127255%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key127218%_))))))
                                (if (##structure-instance-of?
                                     _%mark127240127246%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e127244127261%_
                                            (##unchecked-structure-ref
                                             _%mark127240127246%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127264%_ _%e127244127261%_))
                                      (_%K127243127258%_ _%subst127264%_))
                                    (_%E127242127250%_))))))
                      (if (pair? _%key127219127227%_)
                          (let ((_%hd127224127269%_
                                 (##car _%key127219127227%_))
                                (_%tl127225127271%_
                                 (##cdr _%key127219127227%_)))
                            (let* ((_%id127274%_ _%hd127224127269%_)
                                   (_%mark127276%_ _%tl127225127271%_))
                              (_%K127223127266%_ _%mark127276%_ _%id127274%_)))
                          (_%else127221127235%_))))))
          (let* ((_%out127173127183%_ _%out127170%_)
                 (_%E127175127187%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out127173127183%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K127176127194%_
                  (lambda (_%phi127190%_ _%key127191%_ _%ctx127192%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx127192%_ _%phi127190%_)
                     (_%subst127172%_ _%key127191%_)))))
            (if (##structure-direct-instance-of?
                 _%out127173127183%_
                 'gx#module-export::t)
                (let* ((_%e127177127197%_
                        (##unchecked-structure-ref
                         _%out127173127183%_
                         '1
                         '#f
                         '#f))
                       (_%ctx127200%_ _%e127177127197%_)
                       (_%e127178127202%_
                        (##unchecked-structure-ref
                         _%out127173127183%_
                         '2
                         '#f
                         '#f))
                       (_%key127205%_ _%e127178127202%_)
                       (_%e127179127207%_
                        (##unchecked-structure-ref
                         _%out127173127183%_
                         '3
                         '#f
                         '#f))
                       (_%phi127210%_ _%e127179127207%_)
                       (_%e127180127212%_
                        (##unchecked-structure-ref
                         _%out127173127183%_
                         '4
                         '#f
                         '#f))
                       (_%e127181127215%_
                        (##unchecked-structure-ref
                         _%out127173127183%_
                         '5
                         '#f
                         '#f)))
                  (_%K127176127194%_
                   _%phi127210%_
                   _%key127205%_
                   _%ctx127200%_))
                (_%E127175127187%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out127095%_ _%rename127096%_ _%dphi127097%_)
        (let* ((_%out127098127108%_ _%out127095%_)
               (_%E127100127112%_
                (lambda ()
                  (error '"No clause matching"
                         _%out127098127108%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K127101127124%_
                (lambda (_%weak?127115%_
                         _%name127116%_
                         _%phi127117%_
                         _%key127118%_
                         _%ctx127119%_)
                  (##structure
                   gx#module-import::t
                   _%out127095%_
                   (let ((_%$e127121%_ _%rename127096%_))
                     (if _%$e127121%_ _%$e127121%_ _%name127116%_))
                   (fx+ _%phi127117%_ _%dphi127097%_)
                   _%weak?127115%_))))
          (if (##structure-direct-instance-of?
               _%out127098127108%_
               'gx#module-export::t)
              (let* ((_%e127102127127%_
                      (##unchecked-structure-ref
                       _%out127098127108%_
                       '1
                       '#f
                       '#f))
                     (_%ctx127130%_ _%e127102127127%_)
                     (_%e127103127132%_
                      (##unchecked-structure-ref
                       _%out127098127108%_
                       '2
                       '#f
                       '#f))
                     (_%key127135%_ _%e127103127132%_)
                     (_%e127104127137%_
                      (##unchecked-structure-ref
                       _%out127098127108%_
                       '3
                       '#f
                       '#f))
                     (_%phi127140%_ _%e127104127137%_)
                     (_%e127105127142%_
                      (##unchecked-structure-ref
                       _%out127098127108%_
                       '4
                       '#f
                       '#f))
                     (_%name127145%_ _%e127105127142%_)
                     (_%e127106127147%_
                      (##unchecked-structure-ref
                       _%out127098127108%_
                       '5
                       '#f
                       '#f))
                     (_%weak?127150%_ _%e127106127147%_))
                (_%K127101127124%_
                 _%weak?127150%_
                 _%name127145%_
                 _%phi127140%_
                 _%key127135%_
                 _%ctx127130%_))
              (_%E127100127112%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out127155%_)
        (let* ((_%rename127157%_ '#f) (_%dphi127159%_ '0))
          (gx#core-module-export->import__%
           _%out127155%_
           _%rename127157%_
           _%dphi127159%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out127161%_ _%rename127162%_)
        (let ((_%dphi127164%_ '0))
          (gx#core-module-export->import__%
           _%out127161%_
           _%rename127162%_
           _%dphi127164%_))))
    (define gx#core-module-export->import
      (lambda _g129241_
        (let ((_g129240_ (##length _g129241_)))
          (cond ((##fx= _g129240_ 1)
                 (apply gx#core-module-export->import__0 _g129241_))
                ((##fx= _g129240_ 2)
                 (apply gx#core-module-export->import__1 _g129241_))
                ((##fx= _g129240_ 3)
                 (apply gx#core-module-export->import__% _g129241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g129241_))))))
    (define gx#core-expand-module%
      (lambda (_%stx126994%_)
        (letrec ((_%make-context126996%_
                  (lambda (_%id127073%_)
                    (let* ((_%super127075%_ (gx#current-expander-context))
                           (_%bind-id127077%_ (gx#stx-e _%id127073%_))
                           (_%mod-id127079%_
                            (if (##structure-instance-of?
                                 _%super127075%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super127075%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id127077%_)
                                _%bind-id127077%_))
                           (_%ns127081%_ (symbol->string _%mod-id127079%_))
                           (_%path127091%_
                            (if (##structure-instance-of?
                                 _%super127075%_
                                 'gx#module-context::t)
                                (let ((_%path127083%_
                                       (##unchecked-structure-ref
                                        _%super127075%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path127083%_)
                                          (null? _%path127083%_))
                                      (cons _%bind-id127077%_ _%path127083%_)
                                      (if (not _%path127083%_)
                                          _%bind-id127077%_
                                          (cons _%bind-id127077%_
                                                (cons _%path127083%_ '())))))
                                _%bind-id127077%_))
                           (__obj129217
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
                       __obj129217
                       _%mod-id127079%_
                       _%super127075%_
                       _%ns127081%_
                       _%path127091%_)
                      __obj129217)))
                 (_%valid-module-id?126997%_
                  (lambda (_%id127048%_)
                    (let* ((_%str127050%_ (symbol->string _%id127048%_))
                           (_%len127052%_ (##string-length _%str127050%_)))
                      (if (##fx>= _%len127052%_ '1)
                          (let _%loop127055%_ ((_%index127057%_
                                                (##fx- (##string-length
                                                        _%str127050%_)
                                                       '1)))
                            (if (##fx>= _%index127057%_ '0)
                                (let ((_%c127059%_
                                       (string-ref
                                        _%str127050%_
                                        _%index127057%_)))
                                  (if (or (and (##char>=? _%c127059%_ '#\a)
                                               (##char<=? _%c127059%_ '#\z))
                                          (and (##char>=? _%c127059%_ '#\A)
                                               (##char<=? _%c127059%_ '#\Z))
                                          (and (##char>=? _%c127059%_ '#\0)
                                               (##char<=? _%c127059%_ '#\9))
                                          (##char=? _%c127059%_ '#\_)
                                          (##char=? _%c127059%_ '#\-))
                                      (_%loop127055%_
                                       (##fx- _%index127057%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e126998127008%_ _%stx126994%_)
                 (_%E127000127012%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126998127008%_)))
                 (_%E126999127044%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126998127008%_)
                        (let ((_%e127001127016%_
                               (gx#syntax-e _%e126998127008%_)))
                          (let ((_%hd127002127019%_ (##car _%e127001127016%_))
                                (_%tl127003127021%_ (##cdr _%e127001127016%_)))
                            (if (gx#stx-pair? _%tl127003127021%_)
                                (let ((_%e127004127024%_
                                       (gx#syntax-e _%tl127003127021%_)))
                                  (let ((_%hd127005127027%_
                                         (##car _%e127004127024%_))
                                        (_%tl127006127029%_
                                         (##cdr _%e127004127024%_)))
                                    (let* ((_%id127032%_ _%hd127005127027%_)
                                           (_%body127034%_ _%tl127006127029%_))
                                      (if (and (gx#identifier? _%id127032%_)
                                               (gx#stx-list? _%body127034%_))
                                          (if (_%valid-module-id?126997%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx127036%_
                                                      (_%make-context126996%_
                                                       _%id127032%_))
                                                     (_%body127038%_
                                                      (gx#core-expand-module-begin
                                                       _%body127034%_
                                                       _%ctx127036%_))
                                                     (_%body127040%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body127038%_)
                                                       (gx#stx-source
                                                        _%stx126994%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx127036%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body127040%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx127036%_
                                                 _%body127040%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id127032%_
                                                 _%ctx127036%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id127032%_)
                                                  _%body127040%_)
                                                 (gx#stx-source
                                                  _%stx126994%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx126994%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E127000127012%_)))))
                                (_%E127000127012%_))))
                        (_%E127000127012%_)))))
            (_%E126999127044%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body126960%_ _%ctx126961%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx126964%_
                   (gx#core-expand-head (cons '%%begin-module _%body126960%_)))
                  (_%e126965126972%_ _%stx126964%_)
                  (_%E126967126976%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx126964%_)))
                  (_%E126966126990%_
                   (lambda ()
                     (if (gx#stx-pair? _%e126965126972%_)
                         (let ((_%e126968126980%_
                                (gx#syntax-e _%e126965126972%_)))
                           (let ((_%hd126969126983%_ (##car _%e126968126980%_))
                                 (_%tl126970126985%_
                                  (##cdr _%e126968126980%_)))
                             (if (and (gx#identifier? _%hd126969126983%_)
                                      (gx#core-identifier=?
                                       _%hd126969126983%_
                                       '%#begin-module))
                                 (let ((_%body126988%_ _%tl126970126985%_))
                                   (if (gx#sealed-syntax? _%stx126964%_)
                                       _%body126988%_
                                       (gx#core-expand-module-body
                                        _%body126988%_)))
                                 (_%E126967126976%_))))
                         (_%E126967126976%_)))))
             (_%E126966126990%_)))
         gx#current-expander-context
         _%ctx126961%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body126756%_)
        (letrec ((_%expand-special126758%_
                  (lambda (_%hd126887%_ _%K126888%_ _%rest126889%_ _%r126890%_)
                    (let* ((_%e126891126908%_ _%hd126887%_)
                           (_%E126903126912%_
                            (lambda ()
                              (_%K126888%_
                               _%rest126889%_
                               (cons (gx#core-expand-top _%hd126887%_)
                                     _%r126890%_))))
                           (_%E126893126924%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126891126908%_)
                                  (let ((_%e126904126916%_
                                         (gx#syntax-e _%e126891126908%_)))
                                    (let ((_%hd126905126919%_
                                           (##car _%e126904126916%_))
                                          (_%tl126906126921%_
                                           (##cdr _%e126904126916%_)))
                                      (if (and (gx#identifier?
                                                _%hd126905126919%_)
                                               (gx#core-identifier=?
                                                _%hd126905126919%_
                                                '%#export))
                                          (_%K126888%_
                                           _%rest126889%_
                                           (cons _%hd126887%_ _%r126890%_))
                                          (_%E126903126912%_))))
                                  (_%E126903126912%_))))
                           (_%E126892126956%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126891126908%_)
                                  (let ((_%e126894126928%_
                                         (gx#syntax-e _%e126891126908%_)))
                                    (let ((_%hd126895126931%_
                                           (##car _%e126894126928%_))
                                          (_%tl126896126933%_
                                           (##cdr _%e126894126928%_)))
                                      (if (and (gx#identifier?
                                                _%hd126895126931%_)
                                               (gx#core-identifier=?
                                                _%hd126895126931%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126896126933%_)
                                              (let ((_%e126897126936%_
                                                     (gx#syntax-e
                                                      _%tl126896126933%_)))
                                                (let ((_%hd126898126939%_
                                                       (##car _%e126897126936%_))
                                                      (_%tl126899126941%_
                                                       (##cdr _%e126897126936%_)))
                                                  (let ((_%hd-bind126944%_
                                                         _%hd126898126939%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126899126941%_)
                                                        (let ((_%e126900126946%_
                                                               (gx#syntax-e
                                                                _%tl126899126941%_)))
                                                          (let ((_%hd126901126949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126900126946%_))
                        (_%tl126902126951%_ (##cdr _%e126900126946%_)))
                    (let ((_%expr126954%_ _%hd126901126949%_))
                      (if (gx#stx-null? _%tl126902126951%_)
                          (if (gx#core-bind-values? _%hd-bind126944%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126944%_)
                                (_%K126888%_
                                 _%rest126889%_
                                 (cons _%hd126887%_ _%r126890%_)))
                              (_%E126893126924%_))
                          (_%E126893126924%_)))))
                (_%E126893126924%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126893126924%_))
                                          (_%E126893126924%_))))
                                  (_%E126893126924%_)))))
                      (_%E126892126956%_))))
                 (_%expand-body126759%_
                  (lambda (_%rbody126761%_)
                    (let _%lp126763%_ ((_%rest126765%_ _%rbody126761%_)
                                       (_%body126766%_ '()))
                      (let* ((_%rest126767126775%_ _%rest126765%_)
                             (_%else126769126783%_ (lambda () _%body126766%_))
                             (_%K126771126875%_
                              (lambda (_%rest126786%_ _%hd126787%_)
                                (let* ((_%e126788126809%_ _%hd126787%_)
                                       (_%E126804126813%_
                                        (lambda ()
                                          (_%lp126763%_
                                           _%rest126786%_
                                           (cons (gx#core-expand-expression
                                                  _%hd126787%_)
                                                 _%body126766%_))))
                                       (_%E126800126827%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126788126809%_)
                                              (let ((_%e126805126817%_
                                                     (gx#syntax-e
                                                      _%e126788126809%_)))
                                                (let ((_%hd126806126820%_
                                                       (##car _%e126805126817%_))
                                                      (_%tl126807126822%_
                                                       (##cdr _%e126805126817%_)))
                                                  (let ((_%form126825%_
                                                         _%hd126806126820%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form126825%_
                                                         gx#special-form-binding?)
                                                        (_%lp126763%_
                                                         _%rest126786%_
                                                         (cons _%hd126787%_
                                                               _%body126766%_))
                                                        (_%E126804126813%_)))))
                                              (_%E126804126813%_))))
                                       (_%E126790126839%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126788126809%_)
                                              (let ((_%e126801126831%_
                                                     (gx#syntax-e
                                                      _%e126788126809%_)))
                                                (let ((_%hd126802126834%_
                                                       (##car _%e126801126831%_))
                                                      (_%tl126803126836%_
                                                       (##cdr _%e126801126831%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126802126834%_)
                                                           (gx#core-identifier=?
                                                            _%hd126802126834%_
                                                            '%#export))
                                                      (_%lp126763%_
                                                       _%rest126786%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd126787%_)
                                                             _%body126766%_))
                                                      (_%E126800126827%_))))
                                              (_%E126800126827%_))))
                                       (_%E126789126871%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126788126809%_)
                                              (let ((_%e126791126843%_
                                                     (gx#syntax-e
                                                      _%e126788126809%_)))
                                                (let ((_%hd126792126846%_
                                                       (##car _%e126791126843%_))
                                                      (_%tl126793126848%_
                                                       (##cdr _%e126791126843%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126792126846%_)
                                                           (gx#core-identifier=?
                                                            _%hd126792126846%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126793126848%_)
                                                          (let ((_%e126794126851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126793126848%_)))
                    (let ((_%hd126795126854%_ (##car _%e126794126851%_))
                          (_%tl126796126856%_ (##cdr _%e126794126851%_)))
                      (let ((_%hd-bind126859%_ _%hd126795126854%_))
                        (if (gx#stx-pair? _%tl126796126856%_)
                            (let ((_%e126797126861%_
                                   (gx#syntax-e _%tl126796126856%_)))
                              (let ((_%hd126798126864%_
                                     (##car _%e126797126861%_))
                                    (_%tl126799126866%_
                                     (##cdr _%e126797126861%_)))
                                (let ((_%expr126869%_ _%hd126798126864%_))
                                  (if (gx#stx-null? _%tl126799126866%_)
                                      (_%lp126763%_
                                       _%rest126786%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind126859%_)
                                               (gx#core-expand-expression
                                                _%expr126869%_))
                                              (gx#stx-source _%hd126787%_))
                                             _%body126766%_))
                                      (_%E126790126839%_)))))
                            (_%E126790126839%_)))))
                  (_%E126790126839%_))
              (_%E126790126839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126790126839%_)))))
                                  (_%E126789126871%_)))))
                        (if (pair? _%rest126767126775%_)
                            (let ((_%hd126772126878%_
                                   (##car _%rest126767126775%_))
                                  (_%tl126773126880%_
                                   (##cdr _%rest126767126775%_)))
                              (let* ((_%hd126883%_ _%hd126772126878%_)
                                     (_%rest126885%_ _%tl126773126880%_))
                                (_%K126771126875%_
                                 _%rest126885%_
                                 _%hd126883%_)))
                            (_%else126769126783%_)))))))
          (_%expand-body126759%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body126756%_)
            _%expand-special126758%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx126597%_
               _%expanded?126598%_
               _%method126599%_
               _%current-phi126600%_
               _%expand1126601%_)
        (letrec ((_%K126603%_
                  (lambda (_%rest126723%_ _%r126724%_)
                    (let* ((_%e126725126732%_ _%rest126723%_)
                           (_%E126727126736%_ (lambda () _%r126724%_))
                           (_%E126726126752%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126725126732%_)
                                  (let ((_%e126728126740%_
                                         (gx#syntax-e _%e126725126732%_)))
                                    (let ((_%hd126729126743%_
                                           (##car _%e126728126740%_))
                                          (_%tl126730126745%_
                                           (##cdr _%e126728126740%_)))
                                      (let* ((_%hd126748%_ _%hd126729126743%_)
                                             (_%rest126750%_
                                              _%tl126730126745%_))
                                        (_%step126604%_
                                         _%hd126748%_
                                         _%rest126750%_
                                         _%r126724%_))))
                                  (_%E126727126736%_)))))
                      (_%E126726126752%_))))
                 (_%step126604%_
                  (lambda (_%hd126637%_ _%rest126638%_ _%r126639%_)
                    (let* ((_%e126640126658%_ _%hd126637%_)
                           (_%E126653126662%_
                            (lambda ()
                              (if (_%expanded?126598%_ (gx#stx-e _%hd126637%_))
                                  (_%K126603%_
                                   _%rest126638%_
                                   (cons (gx#stx-e _%hd126637%_) _%r126639%_))
                                  (_%expand1126601%_
                                   _%hd126637%_
                                   _%K126603%_
                                   _%rest126638%_
                                   _%r126639%_))))
                           (_%E126649126678%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126640126658%_)
                                  (let ((_%e126654126666%_
                                         (gx#syntax-e _%e126640126658%_)))
                                    (let ((_%hd126655126669%_
                                           (##car _%e126654126666%_))
                                          (_%tl126656126671%_
                                           (##cdr _%e126654126666%_)))
                                      (let* ((_%macro126674%_
                                              _%hd126655126669%_)
                                             (_%body126676%_
                                              _%tl126656126671%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro126674%_
                                             gx#syntax-binding?)
                                            (_%K126603%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro126674%_)
                                                    _%hd126637%_
                                                    _%method126599%_)
                                                   _%rest126638%_)
                                             _%r126639%_)
                                            (_%E126653126662%_)))))
                                  (_%E126653126662%_))))
                           (_%E126642126692%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126640126658%_)
                                  (let ((_%e126650126682%_
                                         (gx#syntax-e _%e126640126658%_)))
                                    (let ((_%hd126651126685%_
                                           (##car _%e126650126682%_))
                                          (_%tl126652126687%_
                                           (##cdr _%e126650126682%_)))
                                      (if (eq? (gx#stx-e _%hd126651126685%_)
                                               'begin:)
                                          (let ((_%body126690%_
                                                 _%tl126652126687%_))
                                            (_%K126603%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest126638%_
                                              _%body126690%_)
                                             _%r126639%_))
                                          (_%E126649126678%_))))
                                  (_%E126649126678%_))))
                           (_%E126641126719%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126640126658%_)
                                  (let ((_%e126643126696%_
                                         (gx#syntax-e _%e126640126658%_)))
                                    (let ((_%hd126644126699%_
                                           (##car _%e126643126696%_))
                                          (_%tl126645126701%_
                                           (##cdr _%e126643126696%_)))
                                      (if (eq? (gx#stx-e _%hd126644126699%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl126645126701%_)
                                              (let ((_%e126646126704%_
                                                     (gx#syntax-e
                                                      _%tl126645126701%_)))
                                                (let ((_%hd126647126707%_
                                                       (##car _%e126646126704%_))
                                                      (_%tl126648126709%_
                                                       (##cdr _%e126646126704%_)))
                                                  (let* ((_%dphi126712%_
                                                          _%hd126647126707%_)
                                                         (_%body126714%_
                                                          _%tl126648126709%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi126712%_)
                                                        (let ((_%rbody126717%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K126603%_ _%body126714%_ '()))
                        _%current-phi126600%_
                        (fx+ (gx#stx-e _%dphi126712%_)
                             (_%current-phi126600%_)))))
                  (_%K126603%_
                   _%rest126638%_
                   (__foldr1 cons _%r126639%_ _%rbody126717%_)))
                (_%E126642126692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126642126692%_))
                                          (_%E126642126692%_))))
                                  (_%E126642126692%_)))))
                      (_%E126641126719%_)))))
          (let* ((_%e126605126612%_ _%stx126597%_)
                 (_%E126607126616%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126605126612%_)))
                 (_%E126606126633%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126605126612%_)
                        (let ((_%e126608126620%_
                               (gx#syntax-e _%e126605126612%_)))
                          (let ((_%hd126609126623%_ (##car _%e126608126620%_))
                                (_%tl126610126625%_ (##cdr _%e126608126620%_)))
                            (let ((_%body126628%_ _%tl126610126625%_))
                              (if (_%current-phi126600%_)
                                  (_%K126603%_ _%body126628%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K126603%_ _%body126628%_ '()))
                                   _%current-phi126600%_
                                   (gx#current-expander-phi))))))
                        (_%E126607126616%_)))))
            (_%E126606126633%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx126251%_ _%internal-expand?126252%_)
        (letrec ((_%expand1126254%_
                  (lambda (_%hd126569%_ _%K126570%_ _%rest126571%_ _%r126572%_)
                    (if (gx#core-bound-module? _%hd126569%_)
                        (_%import1126255%_
                         (gx#syntax-local-e__0 _%hd126569%_)
                         _%K126570%_
                         _%rest126571%_
                         _%r126572%_)
                        (if (gx#core-library-module-path? _%hd126569%_)
                            (_%import1126255%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd126569%_))
                             _%K126570%_
                             _%rest126571%_
                             _%r126572%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd126569%_)
                                (_%import1126255%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd126569%_))
                                 _%K126570%_
                                 _%rest126571%_
                                 _%r126572%_)
                                (let ((_%e126578%_ (gx#stx-e _%hd126569%_)))
                                  (if (pair? _%e126578%_)
                                      (let ((_%$e126581%_
                                             (gx#stx-e (##car _%e126578%_))))
                                        (if (eq? 'spec: _%$e126581%_)
                                            (_%import-spec126258%_
                                             _%hd126569%_
                                             _%K126570%_
                                             _%rest126571%_
                                             _%r126572%_)
                                            (if (eq? 'in: _%$e126581%_)
                                                (_%import-submodule126256%_
                                                 _%hd126569%_
                                                 _%K126570%_
                                                 _%rest126571%_
                                                 _%r126572%_)
                                                (if (eq? 'runtime:
                                                         _%$e126581%_)
                                                    (_%import-runtime126257%_
                                                     _%hd126569%_
                                                     _%K126570%_
                                                     _%rest126571%_
                                                     _%r126572%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx126251%_
                                                     _%hd126569%_)))))
                                      (if (string? _%e126578%_)
                                          (_%import1126255%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd126569%_
                                             (gx#stx-source _%stx126251%_)))
                                           _%K126570%_
                                           _%rest126571%_
                                           _%r126572%_)
                                          (if (##structure-instance-of?
                                               _%e126578%_
                                               'gx#module-context::t)
                                              (_%K126570%_
                                               _%rest126571%_
                                               (cons _%e126578%_ _%r126572%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx126251%_
                                               _%hd126569%_))))))))))
                 (_%import1126255%_
                  (lambda (_%ctx126558%_
                           _%K126559%_
                           _%rest126560%_
                           _%r126561%_)
                    (let ((_%dphi126563%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K126559%_
                       _%rest126560%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx126558%_
                              _%dphi126563%_
                              (map (lambda (_%g126564126566%_)
                                     (gx#core-module-export->import__%
                                      _%g126564126566%_
                                      '#f
                                      _%dphi126563%_))
                                   (##unchecked-structure-ref
                                    _%ctx126558%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r126561%_)))))
                 (_%import-submodule126256%_
                  (lambda (_%hd126525%_ _%K126526%_ _%rest126527%_ _%r126528%_)
                    (let* ((_%e126529126536%_ _%hd126525%_)
                           (_%E126531126540%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126529126536%_)))
                           (_%E126530126554%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126529126536%_)
                                  (let ((_%e126532126544%_
                                         (gx#syntax-e _%e126529126536%_)))
                                    (let ((_%hd126533126547%_
                                           (##car _%e126532126544%_))
                                          (_%tl126534126549%_
                                           (##cdr _%e126532126544%_)))
                                      (let ((_%spath126552%_
                                             _%tl126534126549%_))
                                        (_%import1126255%_
                                         (_%import-spec-source126259%_
                                          _%spath126552%_)
                                         _%K126526%_
                                         _%rest126527%_
                                         _%r126528%_))))
                                  (_%E126531126540%_)))))
                      (_%E126530126554%_))))
                 (_%import-runtime126257%_
                  (lambda (_%hd126492%_ _%K126493%_ _%rest126494%_ _%r126495%_)
                    (let* ((_%e126496126503%_ _%hd126492%_)
                           (_%E126498126507%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126496126503%_)))
                           (_%E126497126521%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126496126503%_)
                                  (let ((_%e126499126511%_
                                         (gx#syntax-e _%e126496126503%_)))
                                    (let ((_%hd126500126514%_
                                           (##car _%e126499126511%_))
                                          (_%tl126501126516%_
                                           (##cdr _%e126499126511%_)))
                                      (let ((_%spath126519%_
                                             _%tl126501126516%_))
                                        (_%K126493%_
                                         _%rest126494%_
                                         (cons (_%import-spec-source126259%_
                                                _%spath126519%_)
                                               _%r126495%_)))))
                                  (_%E126498126507%_)))))
                      (_%E126497126521%_))))
                 (_%import-spec126258%_
                  (lambda (_%hd126330%_ _%K126331%_ _%rest126332%_ _%r126333%_)
                    (let* ((_%e126334126351%_ _%hd126330%_)
                           (_%E126343126355%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126334126351%_)))
                           (_%E126336126466%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126334126351%_)
                                  (let ((_%e126344126359%_
                                         (gx#syntax-e _%e126334126351%_)))
                                    (let ((_%hd126345126362%_
                                           (##car _%e126344126359%_))
                                          (_%tl126346126364%_
                                           (##cdr _%e126344126359%_)))
                                      (if (gx#stx-pair? _%tl126346126364%_)
                                          (let ((_%e126347126367%_
                                                 (gx#syntax-e
                                                  _%tl126346126364%_)))
                                            (let ((_%hd126348126370%_
                                                   (##car _%e126347126367%_))
                                                  (_%tl126349126372%_
                                                   (##cdr _%e126347126367%_)))
                                              (let* ((_%path126375%_
                                                      _%hd126348126370%_)
                                                     (_%specs126377%_
                                                      _%tl126349126372%_))
                                                (let ((_%src-ctx126379%_
                                                       (_%import-spec-source126259%_
                                                        _%path126375%_))
                                                      (_%exports126380%_
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
                                                      (_%specs126381%_
                                                       (gx#syntax->list
                                                        _%specs126377%_)))
                                                  (for-each
                                                   (lambda (_%out126383%_)
                                                     (__hash-put!
                                                      _%exports126380%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out126383%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out126383%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out126383%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx126379%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K126331%_
                                                   _%rest126332%_
                                                   (__foldl1
                                                    (lambda (_%spec126385%_
                                                             _%r126386%_)
                                                      (let* ((_%e126387126403%_
                                                              _%spec126385%_)
                                                             (_%E126389126407%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e126387126403%_)))
                     (_%E126388126462%_
                      (lambda ()
                        (if (gx#stx-pair? _%e126387126403%_)
                            (let ((_%e126390126411%_
                                   (gx#syntax-e _%e126387126403%_)))
                              (let ((_%hd126391126414%_
                                     (##car _%e126390126411%_))
                                    (_%tl126392126416%_
                                     (##cdr _%e126390126411%_)))
                                (let ((_%phi126419%_ _%hd126391126414%_))
                                  (if (gx#stx-pair? _%tl126392126416%_)
                                      (let ((_%e126393126421%_
                                             (gx#syntax-e _%tl126392126416%_)))
                                        (let ((_%hd126394126424%_
                                               (##car _%e126393126421%_))
                                              (_%tl126395126426%_
                                               (##cdr _%e126393126421%_)))
                                          (let ((_%name126429%_
                                                 _%hd126394126424%_))
                                            (if (gx#stx-pair?
                                                 _%tl126395126426%_)
                                                (let ((_%e126396126431%_
                                                       (gx#syntax-e
                                                        _%tl126395126426%_)))
                                                  (let ((_%hd126397126434%_
                                                         (##car _%e126396126431%_))
                                                        (_%tl126398126436%_
                                                         (##cdr _%e126396126431%_)))
                                                    (let ((_%src-phi126439%_
                                                           _%hd126397126434%_))
                                                      (if (gx#stx-pair?
                                                           _%tl126398126436%_)
                                                          (let ((_%e126399126441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126398126436%_)))
                    (let ((_%hd126400126444%_ (##car _%e126399126441%_))
                          (_%tl126401126446%_ (##cdr _%e126399126441%_)))
                      (let ((_%src-name126449%_ _%hd126400126444%_))
                        (if (gx#stx-null? _%tl126401126446%_)
                            (if (and (gx#stx-fixnum? _%src-phi126439%_)
                                     (gx#identifier? _%src-name126449%_)
                                     (gx#stx-fixnum? _%phi126419%_)
                                     (gx#identifier? _%name126429%_))
                                (let ((_%src-phi126451%_
                                       (gx#stx-e _%src-phi126439%_))
                                      (_%src-name126452%_
                                       (gx#core-identifier-key
                                        _%src-name126449%_))
                                      (_%phi126453%_ (gx#stx-e _%phi126419%_))
                                      (_%name126454%_
                                       (gx#core-identifier-key
                                        _%name126429%_)))
                                  (let ((_%$e126456%_
                                         (__hash-get
                                          _%exports126380%_
                                          (cons _%src-phi126451%_
                                                _%src-name126452%_))))
                                    (if _%$e126456%_
                                        ((lambda (_%out126459%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out126459%_
                                                  _%name126454%_
                                                  (fx- _%phi126453%_
                                                       _%src-phi126451%_))
                                                 _%r126386%_))
                                         _%$e126456%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx126251%_
                                         _%hd126330%_))))
                                (_%E126389126407%_))
                            (_%E126389126407%_)))))
                  (_%E126389126407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E126389126407%_)))))
                                      (_%E126389126407%_)))))
                            (_%E126389126407%_)))))
                (_%E126388126462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r126333%_
                                                    _%specs126381%_))))))
                                          (_%E126343126355%_))))
                                  (_%E126343126355%_))))
                           (_%E126335126488%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126334126351%_)
                                  (let ((_%e126337126470%_
                                         (gx#syntax-e _%e126334126351%_)))
                                    (let ((_%hd126338126473%_
                                           (##car _%e126337126470%_))
                                          (_%tl126339126475%_
                                           (##cdr _%e126337126470%_)))
                                      (if (gx#stx-pair? _%tl126339126475%_)
                                          (let ((_%e126340126478%_
                                                 (gx#syntax-e
                                                  _%tl126339126475%_)))
                                            (let ((_%hd126341126481%_
                                                   (##car _%e126340126478%_))
                                                  (_%tl126342126483%_
                                                   (##cdr _%e126340126478%_)))
                                              (let ((_%path126486%_
                                                     _%hd126341126481%_))
                                                (if (gx#stx-null?
                                                     _%tl126342126483%_)
                                                    (_%K126331%_
                                                     _%rest126332%_
                                                     (cons (_%import-spec-source126259%_
                                                            _%path126486%_)
                                                           _%r126333%_))
                                                    (_%E126336126466%_)))))
                                          (_%E126336126466%_))))
                                  (_%E126336126466%_)))))
                      (_%E126335126488%_))))
                 (_%import-spec-source126259%_
                  (lambda (_%spath126328%_)
                    (gx#core-import-nested-module
                     _%spath126328%_
                     _%stx126251%_)))
                 (_%import!126260%_
                  (lambda (_%rbody126273%_)
                    (letrec* ((_%current-ctx126275%_
                               (gx#current-expander-context))
                              (_%deps126276%_ (make-hash-table-eq))
                              (_%bind!126277%_
                               (lambda (_%hd126326%_)
                                 (gx#core-bind-import!__1
                                  _%hd126326%_
                                  _%current-ctx126275%_))))
                      (let _%lp126279%_ ((_%rest126281%_ _%rbody126273%_)
                                         (_%body126282%_ '()))
                        (let* ((_%rest126283126291%_ _%rest126281%_)
                               (_%else126285126302%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx126275%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx126275%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx126275%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body126282%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx126299%_ _%_126300%_)
                                     (gx#eval-module _%ctx126299%_))
                                   _%deps126276%_)
                                  _%body126282%_))
                               (_%K126287126314%_
                                (lambda (_%rest126305%_ _%hd126306%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd126306%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!126277%_ _%hd126306%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd126306%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd126306%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps126276%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd126306%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd126306%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!126277%_
                                             (##unchecked-structure-ref
                                              _%hd126306%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd126306%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps126276%_
                                                 (##unchecked-structure-ref
                                                  _%hd126306%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e126310%_
                                                 (##structure-instance-of?
                                                  _%hd126306%_
                                                  'gx#module-context::t)))
                                            (if _%$e126310%_
                                                _%$e126310%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx126251%_
                                                 _%hd126306%_)))))
                                  (_%lp126279%_
                                   _%rest126305%_
                                   (cons _%hd126306%_ _%body126282%_)))))
                          (if (pair? _%rest126283126291%_)
                              (let ((_%hd126288126317%_
                                     (##car _%rest126283126291%_))
                                    (_%tl126289126319%_
                                     (##cdr _%rest126283126291%_)))
                                (let* ((_%hd126322%_ _%hd126288126317%_)
                                       (_%rest126324%_ _%tl126289126319%_))
                                  (_%K126287126314%_
                                   _%rest126324%_
                                   _%hd126322%_)))
                              (_%else126285126302%_)))))))
                 (_%expanded-import?126261%_
                  (lambda (_%e126265%_)
                    (let ((_%$e126267%_
                           (##structure-direct-instance-of?
                            _%e126265%_
                            'gx#import-set::t)))
                      (if _%$e126267%_
                          _%$e126267%_
                          (let ((_%$e126270%_
                                 (##structure-direct-instance-of?
                                  _%e126265%_
                                  'gx#module-import::t)))
                            (if _%$e126270%_
                                _%$e126270%_
                                (##structure-instance-of?
                                 _%e126265%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody126263%_
                 (gx#core-expand-import/export
                  _%stx126251%_
                  _%expanded-import?126261%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1126254%_)))
            (if _%internal-expand?126252%_
                (reverse _%rbody126263%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!126260%_ _%rbody126263%_))
                 (gx#stx-source _%stx126251%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx126590%_)
        (let ((_%internal-expand?126592%_ '#f))
          (gx#core-expand-import%__%
           _%stx126590%_
           _%internal-expand?126592%_))))
    (define gx#core-expand-import%
      (lambda _g129243_
        (let ((_g129242_ (##length _g129243_)))
          (cond ((##fx= _g129242_ 1)
                 (apply gx#core-expand-import%__0 _g129243_))
                ((##fx= _g129242_ 2)
                 (apply gx#core-expand-import%__% _g129243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g129243_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath126178%_ _%where126179%_)
        (let* ((_%e126180126187%_ _%spath126178%_)
               (_%E126182126191%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126180126187%_)))
               (_%E126181126246%_
                (lambda ()
                  (if (gx#stx-pair? _%e126180126187%_)
                      (let ((_%e126183126195%_
                             (gx#syntax-e _%e126180126187%_)))
                        (let ((_%hd126184126198%_ (##car _%e126183126195%_))
                              (_%tl126185126200%_ (##cdr _%e126183126195%_)))
                          (let* ((_%origin126203%_ _%hd126184126198%_)
                                 (_%sub126205%_ _%tl126185126200%_)
                                 (_%origin-ctx126207%_
                                  (if (gx#stx-false? _%origin126203%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin126203%_))))
                            (let _%lp126209%_ ((_%rest126211%_ _%sub126205%_)
                                               (_%ctx126212%_
                                                _%origin-ctx126207%_))
                              (let* ((_%e126213126220%_ _%rest126211%_)
                                     (_%E126215126224%_
                                      (lambda () _%ctx126212%_))
                                     (_%E126214126242%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e126213126220%_)
                                            (let ((_%e126216126228%_
                                                   (gx#syntax-e
                                                    _%e126213126220%_)))
                                              (let ((_%hd126217126231%_
                                                     (##car _%e126216126228%_))
                                                    (_%tl126218126233%_
                                                     (##cdr _%e126216126228%_)))
                                                (let* ((_%id126236%_
                                                        _%hd126217126231%_)
                                                       (_%rest126238%_
                                                        _%tl126218126233%_)
                                                       (_%bind126240%_
                                                        (gx#resolve-identifier__%
                                                         _%id126236%_
                                                         '0
                                                         _%ctx126212%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind126240%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind126240%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where126179%_
                                                       _%spath126178%_
                                                       _%id126236%_))
                                                  (_%lp126209%_
                                                   _%rest126238%_
                                                   (##unchecked-structure-ref
                                                    _%bind126240%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E126215126224%_)))))
                                (_%E126214126242%_))))))
                      (_%E126182126191%_)))))
          (_%E126181126246%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd126176%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd126176%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx125670%_ _%internal-expand?125671%_)
        (letrec* ((_%make-export__129171129172%_
                   (lambda (_%bind126124%_
                            _%phi126125%_
                            _%ctx126126%_
                            _%name126127%_)
                     (let* ((_%key126129%_
                             (##unchecked-structure-ref
                              _%bind126124%_
                              '2
                              '#f
                              '#f))
                            (_%export-key126131%_
                             (if _%name126127%_
                                 (gx#core-identifier-key _%name126127%_)
                                 _%key126129%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx126126%_
                        _%key126129%_
                        _%phi126125%_
                        _%export-key126131%_
                        (let ((_%$e126134%_
                               (##structure-instance-of?
                                _%bind126124%_
                                'gx#extern-binding::t)))
                          (if _%$e126134%_
                              _%$e126134%_
                              (##structure-direct-instance-of?
                               _%bind126124%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__129173129176%_
                   (lambda (_%bind126140%_)
                     (let* ((_%phi126142%_ (gx#current-export-expander-phi))
                            (_%ctx126144%_ (gx#current-expander-context))
                            (_%name126146%_ '#f))
                       (_%make-export__129171129172%_
                        _%bind126140%_
                        _%phi126142%_
                        _%ctx126144%_
                        _%name126146%_))))
                  (_%make-export__1__129174129177%_
                   (lambda (_%bind126148%_ _%phi126149%_)
                     (let* ((_%ctx126151%_ (gx#current-expander-context))
                            (_%name126153%_ '#f))
                       (_%make-export__129171129172%_
                        _%bind126148%_
                        _%phi126149%_
                        _%ctx126151%_
                        _%name126153%_))))
                  (_%make-export__2__129175129178%_
                   (lambda (_%bind126155%_ _%phi126156%_ _%ctx126157%_)
                     (let ((_%name126159%_ '#f))
                       (_%make-export__129171129172%_
                        _%bind126155%_
                        _%phi126156%_
                        _%ctx126157%_
                        _%name126159%_))))
                  (_%make-export125673%_
                   (lambda _g129245_
                     (let ((_g129244_ (##length _g129245_)))
                       (cond ((##fx= _g129244_ 1)
                              (apply _%make-export__0__129173129176%_
                                     _g129245_))
                             ((##fx= _g129244_ 2)
                              (apply _%make-export__1__129174129177%_
                                     _g129245_))
                             ((##fx= _g129244_ 3)
                              (apply _%make-export__2__129175129178%_
                                     _g129245_))
                             ((##fx= _g129244_ 4)
                              (apply _%make-export__129171129172%_ _g129245_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129245_))))))
                  (_%expand1125674%_
                   (lambda (_%hd125829%_
                            _%K125830%_
                            _%rest125831%_
                            _%r125832%_)
                     (let* ((_%e125833125865%_ _%hd125829%_)
                            (_%E125860125869%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx125670%_
                                _%hd125829%_)))
                            (_%E125850125953%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125833125865%_)
                                   (let ((_%e125861125873%_
                                          (gx#syntax-e _%e125833125865%_)))
                                     (let ((_%hd125862125876%_
                                            (##car _%e125861125873%_))
                                           (_%tl125863125878%_
                                            (##cdr _%e125861125873%_)))
                                       (if (eq? (gx#stx-e _%hd125862125876%_)
                                                'import:)
                                           (let ((_%in125881%_
                                                  _%tl125863125878%_))
                                             (if (gx#stx-list? _%in125881%_)
                                                 (let _%lp125883%_ ((_%in-rest125885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in125881%_)
                            (_%r125886%_ _%r125832%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e125887125894%_
                                                           _%in-rest125885%_)
                                                          (_%E125889125898%_
                                                           (lambda ()
                                                             (_%K125830%_
                                                              _%rest125831%_
                                                              _%r125886%_)))
                                                          (_%E125888125949%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e125887125894%_)
                         (let ((_%e125890125902%_
                                (gx#syntax-e _%e125887125894%_)))
                           (let ((_%hd125891125905%_ (##car _%e125890125902%_))
                                 (_%tl125892125907%_
                                  (##cdr _%e125890125902%_)))
                             (let* ((_%hd125910%_ _%hd125891125905%_)
                                    (_%in-rest125912%_ _%tl125892125907%_)
                                    (_%src125947%_
                                     (if (gx#core-bound-module? _%hd125910%_)
                                         (gx#syntax-local-e__0 _%hd125910%_)
                                         (if (gx#core-library-module-path?
                                              _%hd125910%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd125910%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd125910%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd125910%_))
                                                 (if (gx#stx-string?
                                                      _%hd125910%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd125910%_
                                                       (gx#stx-source
                                                        _%stx125670%_)))
                                                     (let* ((_%e125918125925%_
                                                             _%hd125910%_)
                                                            (_%E125920125929%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx125670%_
                                                                _%hd125910%_)))
                                                            (_%E125919125943%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e125918125925%_)
                           (let ((_%e125921125933%_
                                  (gx#syntax-e _%e125918125925%_)))
                             (let ((_%hd125922125936%_
                                    (##car _%e125921125933%_))
                                   (_%tl125923125938%_
                                    (##cdr _%e125921125933%_)))
                               (if (eq? (gx#stx-e _%hd125922125936%_) 'in:)
                                   (let ((_%spath125941%_ _%tl125923125938%_))
                                     (gx#core-import-nested-module
                                      _%spath125941%_
                                      _%stx125670%_))
                                   (_%E125920125929%_))))
                           (_%E125920125929%_)))))
               (_%E125919125943%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp125883%_
                                _%in-rest125912%_
                                (_%export-imports125675%_
                                 _%src125947%_
                                 _%r125886%_)))))
                         (_%E125889125898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125888125949%_)))
                                                 (_%E125860125869%_)))
                                           (_%E125860125869%_))))
                                   (_%E125860125869%_))))
                            (_%E125837125993%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125833125865%_)
                                   (let ((_%e125851125957%_
                                          (gx#syntax-e _%e125833125865%_)))
                                     (let ((_%hd125852125960%_
                                            (##car _%e125851125957%_))
                                           (_%tl125853125962%_
                                            (##cdr _%e125851125957%_)))
                                       (if (eq? (gx#stx-e _%hd125852125960%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl125853125962%_)
                                               (let ((_%e125854125965%_
                                                      (gx#syntax-e
                                                       _%tl125853125962%_)))
                                                 (let ((_%hd125855125968%_
                                                        (##car _%e125854125965%_))
                                                       (_%tl125856125970%_
                                                        (##cdr _%e125854125965%_)))
                                                   (let ((_%id125973%_
                                                          _%hd125855125968%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125856125970%_)
                                                         (let ((_%e125857125975%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125856125970%_)))
                   (let ((_%hd125858125978%_ (##car _%e125857125975%_))
                         (_%tl125859125980%_ (##cdr _%e125857125975%_)))
                     (let ((_%name125983%_ _%hd125858125978%_))
                       (if (gx#stx-null? _%tl125859125980%_)
                           (let* ((_%phi125985%_
                                   (gx#current-export-expander-phi))
                                  (_%$e125987%_
                                   (gx#core-resolve-identifier__1
                                    _%id125973%_
                                    _%phi125985%_)))
                             (if _%$e125987%_
                                 ((lambda (_%bind125990%_)
                                    (_%K125830%_
                                     _%rest125831%_
                                     (cons (_%make-export__129171129172%_
                                            _%bind125990%_
                                            _%phi125985%_
                                            (gx#current-expander-context)
                                            _%name125983%_)
                                           _%r125832%_)))
                                  _%$e125987%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx125670%_
                                  _%hd125829%_
                                  _%id125973%_)))
                           (_%E125850125953%_)))))
                 (_%E125850125953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125850125953%_))
                                           (_%E125850125953%_))))
                                   (_%E125850125953%_))))
                            (_%E125836126043%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125833125865%_)
                                   (let ((_%e125838125997%_
                                          (gx#syntax-e _%e125833125865%_)))
                                     (let ((_%hd125839126000%_
                                            (##car _%e125838125997%_))
                                           (_%tl125840126002%_
                                            (##cdr _%e125838125997%_)))
                                       (if (eq? (gx#stx-e _%hd125839126000%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl125840126002%_)
                                               (let ((_%e125841126005%_
                                                      (gx#syntax-e
                                                       _%tl125840126002%_)))
                                                 (let ((_%hd125842126008%_
                                                        (##car _%e125841126005%_))
                                                       (_%tl125843126010%_
                                                        (##cdr _%e125841126005%_)))
                                                   (let ((_%phi126013%_
                                                          _%hd125842126008%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125843126010%_)
                                                         (let ((_%e125844126015%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125843126010%_)))
                   (let ((_%hd125845126018%_ (##car _%e125844126015%_))
                         (_%tl125846126020%_ (##cdr _%e125844126015%_)))
                     (let ((_%id126023%_ _%hd125845126018%_))
                       (if (gx#stx-pair? _%tl125846126020%_)
                           (let ((_%e125847126025%_
                                  (gx#syntax-e _%tl125846126020%_)))
                             (let ((_%hd125848126028%_
                                    (##car _%e125847126025%_))
                                   (_%tl125849126030%_
                                    (##cdr _%e125847126025%_)))
                               (let ((_%name126033%_ _%hd125848126028%_))
                                 (if (gx#stx-null? _%tl125849126030%_)
                                     (if (and (gx#stx-fixnum? _%phi126013%_)
                                              (gx#identifier? _%id126023%_)
                                              (gx#identifier? _%name126033%_))
                                         (let* ((_%phi126035%_
                                                 (gx#stx-e _%phi126013%_))
                                                (_%$e126037%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id126023%_
                                                  _%phi126035%_)))
                                           (if _%$e126037%_
                                               ((lambda (_%bind126040%_)
                                                  (_%K125830%_
                                                   _%rest125831%_
                                                   (cons (_%make-export__129171129172%_
                                                          _%bind126040%_
                                                          _%phi126035%_
                                                          (gx#current-expander-context)
                                                          _%name126033%_)
                                                         _%r125832%_)))
                                                _%$e126037%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx125670%_
                                                _%hd125829%_
                                                _%id126023%_)))
                                         (_%E125837125993%_))
                                     (_%E125837125993%_)))))
                           (_%E125837125993%_)))))
                 (_%E125837125993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125837125993%_))
                                           (_%E125837125993%_))))
                                   (_%E125837125993%_))))
                            (_%E125835126055%_
                             (lambda ()
                               (let ((_%id126047%_ _%e125833125865%_))
                                 (if (gx#identifier? _%id126047%_)
                                     (let ((_%$e126049%_
                                            (gx#core-resolve-identifier__1
                                             _%id126047%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e126049%_
                                           ((lambda (_%bind126052%_)
                                              (_%K125830%_
                                               _%rest125831%_
                                               (cons (_%make-export__0__129173129176%_
                                                      _%bind126052%_)
                                                     _%r125832%_)))
                                            _%$e126049%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx125670%_
                                            _%hd125829%_)))
                                     (_%E125836126043%_)))))
                            (_%E125834126119%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e125833125865%_) '#t)
                                   (let* ((_%current-ctx126059%_
                                           (gx#current-expander-context))
                                          (_%current-phi126061%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx126063%_
                                           (gx#core-context-shift
                                            _%current-ctx126059%_
                                            _%current-phi126061%_))
                                          (_%phi-bind126065%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx126063%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp126068%_ ((_%bind-rest126070%_
                                                         _%phi-bind126065%_)
                                                        (_%set126071%_ '()))
                                       (let* ((_%bind-rest126072126082%_
                                               _%bind-rest126070%_)
                                              (_%else126074126090%_
                                               (lambda ()
                                                 (_%K125830%_
                                                  _%rest125831%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi126061%_
                                                         _%set126071%_)
                                                        _%r125832%_))))
                                              (_%K126076126100%_
                                               (lambda (_%bind-rest126093%_
                                                        _%bind126094%_
                                                        _%key126095%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind126094%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind126094%_))
                                                     (_%lp126068%_
                                                      _%bind-rest126093%_
                                                      _%set126071%_)
                                                     (_%lp126068%_
                                                      _%bind-rest126093%_
                                                      (cons (_%make-export__2__129175129178%_
                                                             _%bind126094%_
                                                             _%current-phi126061%_
                                                             _%current-ctx126059%_)
                                                            _%set126071%_))))))
                                         (if (pair? _%bind-rest126072126082%_)
                                             (let ((_%hd126077126103%_
                                                    (##car _%bind-rest126072126082%_))
                                                   (_%tl126078126105%_
                                                    (##cdr _%bind-rest126072126082%_)))
                                               (if (pair? _%hd126077126103%_)
                                                   (let ((_%hd126079126108%_
                                                          (##car _%hd126077126103%_))
                                                         (_%tl126080126110%_
                                                          (##cdr _%hd126077126103%_)))
                                                     (let* ((_%key126113%_
                                                             _%hd126079126108%_)
                                                            (_%bind126115%_
                                                             _%tl126080126110%_)
                                                            (_%bind-rest126117%_
                                                             _%tl126078126105%_))
                                                       (_%K126076126100%_
                                                        _%bind-rest126117%_
                                                        _%bind126115%_
                                                        _%key126113%_)))
                                                   (_%else126074126090%_)))
                                             (_%else126074126090%_)))))
                                   (_%E125835126055%_)))))
                       (_%E125834126119%_))))
                  (_%export-imports125675%_
                   (lambda (_%src125705%_ _%r125706%_)
                     (letrec* ((_%current-ctx125708%_
                                (gx#current-expander-context))
                               (_%current-phi125709%_
                                (gx#current-export-expander-phi))
                               (_%import->export125710%_
                                (lambda (_%in125791%_)
                                  (let* ((_%in125792125800%_ _%in125791%_)
                                         (_%E125794125804%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in125792125800%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K125795125811%_
                                          (lambda (_%phi125807%_
                                                   _%key125808%_
                                                   _%out125809%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx125708%_
                                             _%key125808%_
                                             _%phi125807%_
                                             _%key125808%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in125792125800%_
                                         'gx#module-import::t)
                                        (let* ((_%e125796125814%_
                                                (##unchecked-structure-ref
                                                 _%in125792125800%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out125817%_
                                                _%e125796125814%_)
                                               (_%e125797125819%_
                                                (##unchecked-structure-ref
                                                 _%in125792125800%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key125822%_
                                                _%e125797125819%_)
                                               (_%e125798125824%_
                                                (##unchecked-structure-ref
                                                 _%in125792125800%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi125827%_
                                                _%e125798125824%_))
                                          (_%K125795125811%_
                                           _%phi125827%_
                                           _%key125822%_
                                           _%out125817%_))
                                        (_%E125794125804%_)))))
                               (_%fold-e125711%_
                                (lambda (_%in125713%_ _%r125714%_)
                                  (let* ((_%in125715125729%_ _%in125713%_)
                                         (_%else125718125737%_
                                          (lambda () _%r125714%_)))
                                    (let ((_%K125724125773%_
                                           (lambda (_%phi125769%_
                                                    _%key125770%_
                                                    _%out125771%_)
                                             (if (and (fx= _%phi125769%_
                                                           _%current-phi125709%_)
                                                      (eq? _%src125705%_
                                                           (##unchecked-structure-ref
                                                            _%out125771%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export125710%_
                                                        _%in125713%_)
                                                       _%r125714%_)
                                                 _%r125714%_)))
                                          (_%K125720125748%_
                                           (lambda (_%imports125741%_
                                                    _%phi125742%_
                                                    _%ctx125743%_)
                                             (if (and (fx= _%phi125742%_
                                                           _%current-phi125709%_)
                                                      (eq? _%src125705%_
                                                           _%ctx125743%_))
                                                 (__foldl1
                                                  (lambda (_%in125745%_
                                                           _%r125746%_)
                                                    (cons (_%import->export125710%_
                                                           _%in125745%_)
                                                          _%r125746%_))
                                                  _%r125714%_
                                                  _%imports125741%_)
                                                 _%r125714%_))))
                                      (let ((_%try-match125717125766%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in125715125729%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e125721125751%_
                                                           (##unchecked-structure-ref
                                                            _%in125715125729%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e125722125756%_
                                                           (##unchecked-structure-ref
                                                            _%in125715125729%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e125723125761%_
                                                           (##unchecked-structure-ref
                                                            _%in125715125729%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx125754%_
                                                            _%e125721125751%_)
                                                           (_%phi125759%_
                                                            _%e125722125756%_)
                                                           (_%imports125764%_
                                                            _%e125723125761%_))
                                                       (_%K125720125748%_
                                                        _%imports125764%_
                                                        _%phi125759%_
                                                        _%ctx125754%_)))
                                                   (_%else125718125737%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in125715125729%_
                                             'gx#module-import::t)
                                            (let* ((_%e125725125776%_
                                                    (##unchecked-structure-ref
                                                     _%in125715125729%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e125726125781%_
                                                    (##unchecked-structure-ref
                                                     _%in125715125729%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e125727125786%_
                                                    (##unchecked-structure-ref
                                                     _%in125715125729%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out125779%_
                                                     _%e125725125776%_)
                                                    (_%key125784%_
                                                     _%e125726125781%_)
                                                    (_%phi125789%_
                                                     _%e125727125786%_))
                                                (_%K125724125773%_
                                                 _%phi125789%_
                                                 _%key125784%_
                                                 _%out125779%_)))
                                            (_%try-match125717125766%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src125705%_
                              _%current-phi125709%_
                              (__foldl1
                               _%fold-e125711%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx125708%_
                                '8
                                '#f
                                '#f)))
                             _%r125706%_))))
                  (_%export!125676%_
                   (lambda (_%rbody125692%_)
                     (letrec* ((_%current-ctx125694%_
                                (gx#current-expander-context))
                               (_%fold-e125695%_
                                (lambda (_%out125699%_ _%r125700%_)
                                  (if (##structure-direct-instance-of?
                                       _%out125699%_
                                       'gx#module-export::t)
                                      (cons _%out125699%_ _%r125700%_)
                                      (if (##structure-direct-instance-of?
                                           _%out125699%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r125700%_
                                           (##unchecked-structure-ref
                                            _%out125699%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r125700%_)))))
                       (let ((_%body125697%_ (reverse _%rbody125692%_)))
                         (##unchecked-structure-set!
                          _%current-ctx125694%_
                          (__foldl1
                           _%fold-e125695%_
                           (##unchecked-structure-ref
                            _%current-ctx125694%_
                            '9
                            '#f
                            '#f)
                           _%body125697%_)
                          '9
                          '#f
                          '#f)
                         _%body125697%_))))
                  (_%expanded-export?125677%_
                   (lambda (_%e125687%_)
                     (let ((_%$e125689%_
                            (##structure-direct-instance-of?
                             _%e125687%_
                             'gx#module-export::t)))
                       (if _%$e125689%_
                           _%$e125689%_
                           (##structure-direct-instance-of?
                            _%e125687%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?125671%_)
              (let ((_%rbody125683%_
                     (gx#core-expand-import/export
                      _%stx125670%_
                      _%expanded-export?125677%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1125674%_)))
                (if _%internal-expand?125671%_
                    (reverse _%rbody125683%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!125676%_ _%rbody125683%_))
                     (gx#stx-source _%stx125670%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx125670%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx125670%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx126169%_)
        (let ((_%internal-expand?126171%_ '#f))
          (gx#core-expand-export%__%
           _%stx126169%_
           _%internal-expand?126171%_))))
    (define gx#core-expand-export%
      (lambda _g129247_
        (let ((_g129246_ (##length _g129247_)))
          (cond ((##fx= _g129246_ 1)
                 (apply gx#core-expand-export%__0 _g129247_))
                ((##fx= _g129246_ 2)
                 (apply gx#core-expand-export%__% _g129247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g129247_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd125667%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd125667%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx125637%_)
        (let* ((_%e125638125645%_ _%stx125637%_)
               (_%E125640125649%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125638125645%_)))
               (_%E125639125663%_
                (lambda ()
                  (if (gx#stx-pair? _%e125638125645%_)
                      (let ((_%e125641125653%_
                             (gx#syntax-e _%e125638125645%_)))
                        (let ((_%hd125642125656%_ (##car _%e125641125653%_))
                              (_%tl125643125658%_ (##cdr _%e125641125653%_)))
                          (let ((_%body125661%_ _%tl125643125658%_))
                            (if (gx#identifier-list? _%body125661%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body125661%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body125661%_))
                                   (gx#stx-source _%stx125637%_)))
                                (_%E125640125649%_)))))
                      (_%E125640125649%_)))))
          (_%E125639125663%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id125603%_ _%private?125604%_ _%phi125605%_ _%ctx125606%_)
        (gx#core-bind-syntax!__%
         _%id125603%_
         ((if _%private?125604%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id125603%_))
         _%private?125604%_
         _%phi125605%_
         _%ctx125606%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id125611%_)
        (let* ((_%private?125613%_ '#f)
               (_%phi125615%_ (gx#current-expander-phi))
               (_%ctx125617%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125611%_
           _%private?125613%_
           _%phi125615%_
           _%ctx125617%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id125619%_ _%private?125620%_)
        (let* ((_%phi125622%_ (gx#current-expander-phi))
               (_%ctx125624%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125619%_
           _%private?125620%_
           _%phi125622%_
           _%ctx125624%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id125626%_ _%private?125627%_ _%phi125628%_)
        (let ((_%ctx125630%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125626%_
           _%private?125627%_
           _%phi125628%_
           _%ctx125630%_))))
    (define gx#core-bind-feature!
      (lambda _g129249_
        (let ((_g129248_ (##length _g129249_)))
          (cond ((##fx= _g129248_ 1)
                 (apply gx#core-bind-feature!__0 _g129249_))
                ((##fx= _g129248_ 2)
                 (apply gx#core-bind-feature!__1 _g129249_))
                ((##fx= _g129248_ 3)
                 (apply gx#core-bind-feature!__2 _g129249_))
                ((##fx= _g129248_ 4)
                 (apply gx#core-bind-feature!__% _g129249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g129249_))))))))
