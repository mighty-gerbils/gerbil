(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1734131747)
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
      (lambda _%$args129066%_
        (apply make-instance gx#module-import::t _%$args129066%_)))
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
      (lambda _%$args129063%_
        (apply make-instance gx#module-export::t _%$args129063%_)))
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
      (lambda _%$args129060%_
        (apply make-instance gx#import-set::t _%$args129060%_)))
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
      (lambda _%$args129057%_
        (apply make-instance gx#export-set::t _%$args129057%_)))
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
      (lambda _%$args129054%_
        (apply make-instance gx#import-expander::t _%$args129054%_)))
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
      (lambda _%$args129051%_
        (apply make-instance gx#export-expander::t _%$args129051%_)))
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
      (lambda _%$args129048%_
        (apply make-instance gx#import-export-expander::t _%$args129048%_)))
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
      (lambda (_%path129045%_ _%fun129046%_)
        (call-with-input-file
         (cons 'path: (cons _%path129045%_ gx#source-file-settings))
         _%fun129046%_)))
    (define gx#module-context:::init!
      (lambda (_%self125497129026%_
               _%id129028%_
               _%super129029%_
               _%ns129030%_
               _%path129031%_)
        (let* ((_%self129033%_ _%self125497129026%_)
               (_%self129035%_ _%self129033%_))
          (if (##fx< '11 (##structure-length _%self129035%_))
              (begin
                (##unchecked-structure-set!
                 _%self129035%_
                 _%id129028%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129035%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129035%_
                 _%super129029%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129035%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129035%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self129035%_
                 _%ns129030%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129035%_
                 _%path129031%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129035%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self129035%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self129035%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self129035%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129035%_
                     '11
                     (##vector-length _%self129035%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125498128857%_ _%ctx128859%_ _%root128860%_)
        (let* ((_%self128862%_ _%self125498128857%_)
               (_%self128864%_ _%self128862%_)
               (_%super128880%_
                (let ((_%$e128874%_ _%root128860%_))
                  (if _%$e128874%_
                      _%$e128874%_
                      (let ((_%$e128877%_ (gx#core-context-root__0)))
                        (if _%$e128877%_
                            _%$e128877%_
                            (let ((__obj129110
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor129111
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj129110
                                      ':init!)))
                                (if __constructor129111
                                    (__constructor129111 __obj129110)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj129110)))))))
          (if _%ctx128859%_
              (let ((_%id128883%_
                     (##structure-ref
                      _%ctx128859%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path128884%_
                     (##structure-ref
                      _%ctx128859%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in128885%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx128859%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e128886%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx128859%_)))))
                (if (##fx< '8 (##structure-length _%self128864%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self128864%_
                       _%id128883%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128864%_
                       (make-hash-table-eq 'size: (##length _%in128885%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128864%_
                       _%super128880%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128864%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128864%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128864%_
                       _%path128884%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128864%_
                       _%in128885%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128864%_
                       _%e128886%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self128864%_
                           '8
                           (##vector-length _%self128864%_)))
                (##for-each
                 (lambda (_%g128887128889%_)
                   (gx#core-bind-weak-import!__%
                    _%g128887128889%_
                    _%self128864%_))
                 _%in128885%_))
              (if (##fx< '8 (##structure-length _%self128864%_))
                  (begin
                    (##unchecked-structure-set! _%self128864%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self128864%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self128864%_
                     _%super128880%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self128864%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self128864%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self128864%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self128864%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self128864%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self128864%_
                         '8
                         (##vector-length _%self128864%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125498128895%_ _%ctx128896%_)
        (let ((_%root128898%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125498128895%_
           _%ctx128896%_
           _%root128898%_))))
    (define gx#prelude-context:::init!
      (lambda _g129117_
        (let ((_g129116_ (##length _g129117_)))
          (cond ((##fx= _g129116_ 2)
                 (apply gx#prelude-context:::init!__0 _g129117_))
                ((##fx= _g129116_ 3)
                 (apply gx#prelude-context:::init!__% _g129117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g129117_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self128731%_ _%e128732%_)
        (if (##fx< '3 (##structure-length _%self128731%_))
            (begin
              (##unchecked-structure-set!
               _%self128731%_
               _%e128732%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128731%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128731%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self128731%_
                   '3
                   (##vector-length _%self128731%_)))))
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
      (lambda (_%g128357128360%_ _%g128358128362%_)
        (gx#core-apply-user-expander__%
         _%g128357128360%_
         _%g128358128362%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g128228128231%_ _%g128229128233%_)
        (gx#core-apply-user-expander__%
         _%g128228128231%_
         _%g128229128233%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx128099%_)
        (let* ((_%path128101%_
                (##structure-ref _%ctx128099%_ '7 gx#module-context::t '#f))
               (_%path128103%_
                (if (pair? _%path128101%_)
                    (##last _%path128101%_)
                    _%path128101%_)))
          (if (string? _%path128103%_) _%path128103%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path128075%_ _%reload?128076%_ _%eval?128077%_)
        (let ((_%ctx128079%_
               ((gx#current-expander-module-import)
                _%path128075%_
                _%reload?128076%_)))
          (if (and _%ctx128079%_ _%eval?128077%_)
              (gx#eval-module _%ctx128079%_)
              '#!void)
          _%ctx128079%_)))
    (define gx#import-module__0
      (lambda (_%path128084%_)
        (let* ((_%reload?128086%_ '#f) (_%eval?128088%_ '#f))
          (gx#import-module__%
           _%path128084%_
           _%reload?128086%_
           _%eval?128088%_))))
    (define gx#import-module__1
      (lambda (_%path128090%_ _%reload?128091%_)
        (let ((_%eval?128093%_ '#f))
          (gx#import-module__%
           _%path128090%_
           _%reload?128091%_
           _%eval?128093%_))))
    (define gx#import-module
      (lambda _g129119_
        (let ((_g129118_ (##length _g129119_)))
          (cond ((##fx= _g129118_ 1) (apply gx#import-module__0 _g129119_))
                ((##fx= _g129118_ 2) (apply gx#import-module__1 _g129119_))
                ((##fx= _g129118_ 3) (apply gx#import-module__% _g129119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g129119_))))))
    (define gx#eval-module
      (lambda (_%mod128072%_)
        ((gx#current-expander-module-eval) _%mod128072%_)))
    (define gx#core-eval-module
      (lambda (_%obj128052%_)
        (letrec ((_%force-e128054%_
                  (lambda (_%getf128068%_ _%e128069%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf128068%_ _%e128069%_)))
                     gx#current-expander-context
                     _%e128069%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur128056%_ ((_%e128058%_ _%obj128052%_))
            (if (##structure-instance-of? _%e128058%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e128061%_
                         (gx#core-context-prelude__% _%e128058%_)))
                    (if _%$e128061%_ (_%recur128056%_ _%$e128061%_) '#!void))
                  (_%force-e128054%_ gx#module-context-e _%e128058%_))
                (if (##structure-instance-of?
                     _%e128058%_
                     'gx#prelude-context::t)
                    (_%force-e128054%_ gx#prelude-context-e _%e128058%_)
                    (if (gx#stx-string? _%e128058%_)
                        (_%recur128056%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e128058%_)))
                        (if (gx#core-library-module-path? _%e128058%_)
                            (_%recur128056%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e128058%_)))
                            (error '"cannot eval module" _%obj128052%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx128032%_)
        (let _%lp128034%_ ((_%e128036%_ _%ctx128032%_))
          (if (or (##structure-instance-of? _%e128036%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e128036%_ 'gx#local-context::t))
              (_%lp128034%_ (##unchecked-structure-ref _%e128036%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e128036%_ 'gx#prelude-context::t)
                  _%e128036%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx128048%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx128048%_))))
    (define gx#core-context-prelude
      (lambda _g129121_
        (let ((_g129120_ (##length _g129121_)))
          (cond ((##fx= _g129120_ 0)
                 (apply gx#core-context-prelude__0 _g129121_))
                ((##fx= _g129120_ 1)
                 (apply gx#core-context-prelude__% _g129121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g129121_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx128023%_)
        (let ((_%$e128025%_ (__hash-get gx#__module-registry _%ctx128023%_)))
          (if _%$e128025%_
              _%$e128025%_
              (let ((_%pre128029%_
                     (let ((__obj129112
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
                        __obj129112
                        _%ctx128023%_)
                       __obj129112)))
                (__hash-put! gx#__module-registry _%ctx128023%_ _%pre128029%_)
                _%pre128029%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath127895%_ _%reload?127896%_)
        (letrec ((_%import-source127898%_
                  (lambda (_%path127987%_)
                    (if (member _%path127987%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path127987%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g129122_ (gx#core-read-module _%path127987%_)))
                         (begin
                           (let ((_g129123_
                                  (if (##values? _g129122_)
                                      (##values-length _g129122_)
                                      1)))
                             (if (not (##fx= _g129123_ 4))
                                 (error "Context expects 4 values" _g129123_)))
                           (let ((_%pre127990%_ (##values-ref _g129122_ 0))
                                 (_%id127991%_ (##values-ref _g129122_ 1))
                                 (_%ns127992%_ (##values-ref _g129122_ 2))
                                 (_%body127993%_ (##values-ref _g129122_ 3)))
                             (let* ((_%prelude128003%_
                                     (if (##structure-instance-of?
                                          _%pre127990%_
                                          'gx#prelude-context::t)
                                         _%pre127990%_
                                         (if (##structure-instance-of?
                                              _%pre127990%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre127990%_)
                                             (if (string? _%pre127990%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre127990%_))
                                                 (if (not _%pre127990%_)
                                                     (let ((_%$e127999%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e127999%_
                                                           _%$e127999%_
                                                           (let ((__obj129113
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
                     (gx#prelude-context:::init!__0 __obj129113 '#f)
                     __obj129113)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath127895%_
                                                            _%pre127990%_))))))
                                    (_%ctx128005%_
                                     (let ((__obj129114
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
                                        __obj129114
                                        _%id127991%_
                                        _%prelude128003%_
                                        _%ns127992%_
                                        _%path127987%_)
                                       __obj129114))
                                    (_%body128007%_
                                     (gx#core-expand-module-begin
                                      _%body127993%_
                                      _%ctx128005%_))
                                    (_%body128009%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128007%_)
                                      _%path127987%_
                                      _%ctx128005%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128005%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128009%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128005%_
                                _%body128009%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path127987%_
                                _%ctx128005%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id127991%_
                                _%ctx128005%_)
                               _%ctx128005%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path127987%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule127899%_
                  (lambda (_%rpath127915%_)
                    (let* ((_%rpath127916127923%_ _%rpath127915%_)
                           (_%E127918127927%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath127916127923%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K127919127975%_
                            (lambda (_%refs127930%_ _%origin127931%_)
                              (let ((_%ctx127933%_
                                     (if _%origin127931%_
                                         (gx#core-import-module__%
                                          _%origin127931%_
                                          _%reload?127896%_)
                                         (gx#current-expander-context))))
                                (let _%lp127935%_ ((_%rest127937%_
                                                    _%refs127930%_)
                                                   (_%ctx127938%_
                                                    _%ctx127933%_))
                                  (let* ((_%rest127939127947%_ _%rest127937%_)
                                         (_%else127941127955%_
                                          (lambda () _%ctx127938%_))
                                         (_%K127943127963%_
                                          (lambda (_%rest127958%_ _%id127959%_)
                                            (let ((_%bind127961%_
                                                   (gx#resolve-identifier__%
                                                    _%id127959%_
                                                    '0
                                                    _%ctx127938%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind127961%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind127961%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp127935%_
                                                   _%rest127958%_
                                                   (##unchecked-structure-ref
                                                    _%bind127961%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath127915%_
                                                         _%id127959%_
                                                         _%bind127961%_))))))
                                    (if (pair? _%rest127939127947%_)
                                        (let ((_%hd127944127966%_
                                               (##car _%rest127939127947%_))
                                              (_%tl127945127968%_
                                               (##cdr _%rest127939127947%_)))
                                          (let* ((_%id127971%_
                                                  _%hd127944127966%_)
                                                 (_%rest127973%_
                                                  _%tl127945127968%_))
                                            (_%K127943127963%_
                                             _%rest127973%_
                                             _%id127971%_)))
                                        (_%else127941127955%_))))))))
                      (if (pair? _%rpath127916127923%_)
                          (let ((_%hd127920127978%_
                                 (##car _%rpath127916127923%_))
                                (_%tl127921127980%_
                                 (##cdr _%rpath127916127923%_)))
                            (let* ((_%origin127983%_ _%hd127920127978%_)
                                   (_%refs127985%_ _%tl127921127980%_))
                              (_%K127919127975%_
                               _%refs127985%_
                               _%origin127983%_)))
                          (_%E127918127927%_))))))
          (let ((_%$e127901%_
                 (if (not _%reload?127896%_)
                     (__hash-get gx#__module-registry _%rpath127895%_)
                     '#f)))
            (if _%$e127901%_
                _%$e127901%_
                (if (list? _%rpath127895%_)
                    (_%import-submodule127899%_ _%rpath127895%_)
                    (if (gx#core-library-module-path? _%rpath127895%_)
                        (let ((_%ctx127906%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath127895%_)
                                _%reload?127896%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath127895%_
                           _%ctx127906%_)
                          _%ctx127906%_)
                        (let* ((_%npath127909%_
                                (path-normalize _%rpath127895%_))
                               (_%$e127911%_
                                (if (not _%reload?127896%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath127909%_)
                                    '#f)))
                          (if _%$e127911%_
                              _%$e127911%_
                              (_%import-source127898%_
                               _%npath127909%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath128016%_)
        (let ((_%reload?128018%_ '#f))
          (gx#core-import-module__% _%rpath128016%_ _%reload?128018%_))))
    (define gx#core-import-module
      (lambda _g129125_
        (let ((_g129124_ (##length _g129125_)))
          (cond ((##fx= _g129124_ 1)
                 (apply gx#core-import-module__0 _g129125_))
                ((##fx= _g129124_ 2)
                 (apply gx#core-import-module__% _g129125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g129125_))))))
    (define gx#core-read-module
      (lambda (_%path127884%_)
        (__with-catch
         (lambda (_%exn127886%_)
           (if (and (datum-parsing-exception? _%exn127886%_)
                    (eq? (datum-parsing-exception-filepos _%exn127886%_) '0))
               (gx#core-read-module/lang _%path127884%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path127884%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g127888127890%_)
                      (display-exception__% _%exn127886%_ _%g127888127890%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path127884%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path127736%_)
        (let _%lp127738%_ ((_%body127740%_
                            (read-syntax-from-file _%path127736%_))
                           (_%pre127741%_ '#f)
                           (_%ns127742%_ '#f)
                           (_%pkg127743%_ '#f))
          (let* ((_%e127744127768%_ _%body127740%_)
                 (_%E127760127794%_
                  (lambda ()
                    (let ((_g129126_
                           (if _%pkg127743%_
                               (values _%pre127741%_
                                       _%ns127742%_
                                       _%pkg127743%_)
                               (gx#core-read-module-package
                                _%path127736%_
                                _%pre127741%_
                                _%ns127742%_))))
                      (begin
                        (let ((_g129127_
                               (if (##values? _g129126_)
                                   (##values-length _g129126_)
                                   1)))
                          (if (not (##fx= _g129127_ 3))
                              (error "Context expects 3 values" _g129127_)))
                        (let ((_%pre127772%_ (##values-ref _g129126_ 0))
                              (_%ns127773%_ (##values-ref _g129126_ 1))
                              (_%pkg127774%_ (##values-ref _g129126_ 2)))
                          (let* ((_%prelude127780%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre127772%_)
                                      (gx#syntax-local-e__0 _%pre127772%_)
                                      (if (gx#core-library-module-path?
                                           _%pre127772%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre127772%_)
                                          (if (gx#stx-string? _%pre127772%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre127772%_
                                               _%path127736%_)
                                              (gx#stx-e _%pre127772%_)))))
                                 (_%path-id127782%_
                                  (gx#core-module-path->namespace
                                   _%path127736%_))
                                 (_%pkg-id127784%_
                                  (if _%pkg127774%_
                                      (##string-append
                                       _%pkg127774%_
                                       '"/"
                                       _%path-id127782%_)
                                      _%path-id127782%_))
                                 (_%module-id127786%_
                                  (##string->symbol _%pkg-id127784%_))
                                 (_%module-ns127791%_
                                  (if (eq? _%ns127773%_ '#!void)
                                      '#f
                                      (let ((_%$e127788%_ _%ns127773%_))
                                        (if _%$e127788%_
                                            _%$e127788%_
                                            _%pkg-id127784%_)))))
                            (values _%prelude127780%_
                                    _%module-id127786%_
                                    _%module-ns127791%_
                                    _%body127740%_)))))))
                 (_%E127753127826%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127744127768%_)
                        (let ((_%e127761127798%_
                               (gx#syntax-e _%e127744127768%_)))
                          (let ((_%hd127762127801%_ (##car _%e127761127798%_))
                                (_%tl127763127803%_ (##cdr _%e127761127798%_)))
                            (if (eq? (gx#stx-e _%hd127762127801%_) 'package:)
                                (if (gx#stx-pair? _%tl127763127803%_)
                                    (let ((_%e127764127806%_
                                           (gx#syntax-e _%tl127763127803%_)))
                                      (let ((_%hd127765127809%_
                                             (##car _%e127764127806%_))
                                            (_%tl127766127811%_
                                             (##cdr _%e127764127806%_)))
                                        (let* ((_%pkg127814%_
                                                _%hd127765127809%_)
                                               (_%rest127816%_
                                                _%tl127766127811%_)
                                               (_%pkg127824%_
                                                (if (gx#identifier?
                                                     _%pkg127814%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg127814%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg127814%_)
                                                            (gx#stx-false?
                                                             _%pkg127814%_))
                                                        (gx#stx-e
                                                         _%pkg127814%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg127814%_)))))
                                          (_%lp127738%_
                                           _%rest127816%_
                                           _%pre127741%_
                                           _%ns127742%_
                                           _%pkg127824%_))))
                                    (_%E127760127794%_))
                                (_%E127760127794%_))))
                        (_%E127760127794%_))))
                 (_%E127746127856%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127744127768%_)
                        (let ((_%e127754127830%_
                               (gx#syntax-e _%e127744127768%_)))
                          (let ((_%hd127755127833%_ (##car _%e127754127830%_))
                                (_%tl127756127835%_ (##cdr _%e127754127830%_)))
                            (if (eq? (gx#stx-e _%hd127755127833%_) 'namespace:)
                                (if (gx#stx-pair? _%tl127756127835%_)
                                    (let ((_%e127757127838%_
                                           (gx#syntax-e _%tl127756127835%_)))
                                      (let ((_%hd127758127841%_
                                             (##car _%e127757127838%_))
                                            (_%tl127759127843%_
                                             (##cdr _%e127757127838%_)))
                                        (let* ((_%ns127846%_
                                                _%hd127758127841%_)
                                               (_%rest127848%_
                                                _%tl127759127843%_)
                                               (_%ns127854%_
                                                (if (gx#identifier?
                                                     _%ns127846%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns127846%_))
                                                    (if (gx#stx-string?
                                                         _%ns127846%_)
                                                        (gx#stx-e _%ns127846%_)
                                                        (if (gx#stx-false?
                                                             _%ns127846%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns127846%_))))))
                                          (_%lp127738%_
                                           _%rest127848%_
                                           _%pre127741%_
                                           _%ns127854%_
                                           _%pkg127743%_))))
                                    (_%E127753127826%_))
                                (_%E127753127826%_))))
                        (_%E127753127826%_))))
                 (_%E127745127880%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127744127768%_)
                        (let ((_%e127747127860%_
                               (gx#syntax-e _%e127744127768%_)))
                          (let ((_%hd127748127863%_ (##car _%e127747127860%_))
                                (_%tl127749127865%_ (##cdr _%e127747127860%_)))
                            (if (eq? (gx#stx-e _%hd127748127863%_) 'prelude:)
                                (if (gx#stx-pair? _%tl127749127865%_)
                                    (let ((_%e127750127868%_
                                           (gx#syntax-e _%tl127749127865%_)))
                                      (let ((_%hd127751127871%_
                                             (##car _%e127750127868%_))
                                            (_%tl127752127873%_
                                             (##cdr _%e127750127868%_)))
                                        (let* ((_%prelude127876%_
                                                _%hd127751127871%_)
                                               (_%rest127878%_
                                                _%tl127752127873%_))
                                          (_%lp127738%_
                                           _%rest127878%_
                                           _%prelude127876%_
                                           _%ns127742%_
                                           _%pkg127743%_))))
                                    (_%E127746127856%_))
                                (_%E127746127856%_))))
                        (_%E127746127856%_)))))
            (_%E127745127880%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path127558%_)
        (letrec ((_%default-read-module-body127560%_
                  (lambda (_%inp127728%_)
                    (let _%lp127730%_ ((_%body127732%_ '()))
                      (let ((_%next127734%_ (read-syntax__% _%inp127728%_)))
                        (if (eof-object? _%next127734%_)
                            (reverse _%body127732%_)
                            (_%lp127730%_
                             (cons _%next127734%_ _%body127732%_)))))))
                 (_%read-body127561%_
                  (lambda (_%inp127646%_
                           _%pre127647%_
                           _%ns127648%_
                           _%pkg127649%_
                           _%args127650%_)
                    (let ((_g129128_
                           (if _%pkg127649%_
                               (values _%pre127647%_
                                       _%ns127648%_
                                       _%pkg127649%_)
                               (gx#core-read-module-package
                                _%path127558%_
                                _%pre127647%_
                                _%ns127648%_))))
                      (begin
                        (let ((_g129129_
                               (if (##values? _g129128_)
                                   (##values-length _g129128_)
                                   1)))
                          (if (not (##fx= _g129129_ 3))
                              (error "Context expects 3 values" _g129129_)))
                        (let ((_%pre127652%_ (##values-ref _g129128_ 0))
                              (_%ns127653%_ (##values-ref _g129128_ 1))
                              (_%pkg127654%_ (##values-ref _g129128_ 2)))
                          (let* ((_%prelude127656%_
                                  (gx#import-module__0 _%pre127652%_))
                                 (_%read-module-body127711%_
                                  (let ((_%$e127702%_
                                         (__find (lambda (_%e127657127659%_)
                                                   (let* ((_%g127661127671%_
                                                           _%e127657127659%_)
                                                          (_%else127663127679%_
                                                           (lambda () '#f))
                                                          (_%K127665127683%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g127661127671%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e127666127686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g127661127671%_
                          '1
                          '#f
                          '#f))
                        (_%e127667127689%_
                         (##unchecked-structure-ref
                          _%g127661127671%_
                          '2
                          '#f
                          '#f))
                        (_%e127668127692%_
                         (##unchecked-structure-ref
                          _%g127661127671%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e127668127692%_ '1)
                       (let ((_%e127669127695%_
                              (##unchecked-structure-ref
                               _%g127661127671%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g127697127699%_)
                                (eq? _%g127697127699%_ 'read-module-body))
                              _%e127669127695%_)
                             (_%K127665127683%_)
                             (_%else127663127679%_)))
                       (_%else127663127679%_)))
                 (_%else127663127679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude127656%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e127702%_
                                        ((lambda (_%xport127705%_)
                                           (let ((_%proc127708%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport127705%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc127708%_)
                                                 _%proc127708%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path127558%_
                                                  _%pre127652%_
                                                  _%proc127708%_))))
                                         _%$e127702%_)
                                        _%default-read-module-body127560%_)))
                                 (_%path-id127713%_
                                  (gx#core-module-path->namespace
                                   _%path127558%_))
                                 (_%pkg-id127715%_
                                  (if _%pkg127654%_
                                      (##string-append
                                       _%pkg127654%_
                                       '"/"
                                       _%path-id127713%_)
                                      _%path-id127713%_))
                                 (_%module-id127717%_
                                  (##string->symbol _%pkg-id127715%_))
                                 (_%module-ns127722%_
                                  (let ((_%$e127719%_ _%ns127653%_))
                                    (if _%$e127719%_
                                        _%$e127719%_
                                        _%pkg-id127715%_)))
                                 (_%body127725%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body127711%_
                                      _%inp127646%_))
                                   gx#current-module-reader-path
                                   _%path127558%_
                                   gx#current-module-reader-args
                                   _%args127650%_)))
                            (values _%prelude127656%_
                                    _%module-id127717%_
                                    _%module-ns127722%_
                                    _%body127725%_)))))))
                 (_%string-e127562%_
                  (lambda (_%obj127640%_ _%what127641%_)
                    (if (string? _%obj127640%_)
                        _%obj127640%_
                        (if (symbol? _%obj127640%_)
                            (##symbol->string _%obj127640%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what127641%_)
                             _%path127558%_
                             _%obj127640%_)))))
                 (_%read-lang-args127563%_
                  (lambda (_%inp127595%_ _%args127596%_)
                    (let* ((_%args127597127605%_ _%args127596%_)
                           (_%else127599127613%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path127558%_)))
                           (_%K127601127628%_
                            (lambda (_%args127616%_ _%prelude127617%_)
                              (let* ((_%pkg127619%_
                                      (pgetq__0 'package: _%args127616%_))
                                     (_%pkg127621%_
                                      (if _%pkg127619%_
                                          (_%string-e127562%_
                                           _%pkg127619%_
                                           '"package")
                                          '#f))
                                     (_%ns127623%_
                                      (pgetq__0 'namespace: _%args127616%_))
                                     (_%ns127625%_
                                      (if _%ns127623%_
                                          (_%string-e127562%_
                                           _%ns127623%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body127561%_
                                 _%inp127595%_
                                 _%prelude127617%_
                                 _%ns127625%_
                                 _%pkg127621%_
                                 _%args127616%_)))))
                      (if (pair? _%args127597127605%_)
                          (let ((_%hd127602127631%_
                                 (##car _%args127597127605%_))
                                (_%tl127603127633%_
                                 (##cdr _%args127597127605%_)))
                            (let* ((_%prelude127636%_ _%hd127602127631%_)
                                   (_%args127638%_ _%tl127603127633%_))
                              (_%K127601127628%_
                               _%args127638%_
                               _%prelude127636%_)))
                          (_%else127599127613%_)))))
                 (_%read-lang127564%_
                  (lambda (_%inp127569%_)
                    (let* ((_%head127571%_ (read-line _%inp127569%_))
                           (_%$e127573%_
                            (string-index__0 _%head127571%_ '#\space)))
                      (if _%$e127573%_
                          ((lambda (_%ix127576%_)
                             (let ((_%lang127578%_
                                    (substring
                                     _%head127571%_
                                     '0
                                     _%ix127576%_)))
                               (if (equal? _%lang127578%_ '"#lang")
                                   (let* ((_%rest127580%_
                                           (substring
                                            _%head127571%_
                                            (##fx+ _%ix127576%_ '1)
                                            (string-length _%head127571%_)))
                                          (_%args127591%_
                                           (__with-catch
                                            (lambda (_%g127581127583%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path127558%_
                                               _%g127581127583%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest127580%_
                                               (lambda (_%g127586127588%_)
                                                 (read-all
                                                  _%g127586127588%_
                                                  read)))))))
                                     (_%read-lang-args127563%_
                                      _%inp127569%_
                                      _%args127591%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path127558%_))))
                           _%$e127573%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path127558%_)))))
                 (_%read-e127565%_
                  (lambda (_%inp127567%_)
                    (if (eq? (peek-char _%inp127567%_) '#\#)
                        (_%read-lang127564%_ _%inp127567%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path127558%_)))))
          (gx#call-with-input-source-file _%path127558%_ _%read-e127565%_))))
    (define gx#core-read-module-package
      (lambda (_%path127506%_ _%pre127507%_ _%ns127508%_)
        (letrec ((_%string-e127510%_
                  (lambda (_%e127553%_)
                    (if (symbol? _%e127553%_)
                        (##symbol->string _%e127553%_)
                        (if (string? _%e127553%_)
                            _%e127553%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e127553%_))))))
          (let _%lp127512%_ ((_%dir127514%_ (path-directory _%path127506%_))
                             (_%pkg-path127515%_ '()))
            (let ((_%gerbil.pkg127517%_
                   (path-expand '"gerbil.pkg" _%dir127514%_)))
              (if (##file-exists? _%gerbil.pkg127517%_)
                  (let ((_%plist127519%_
                         (gx#core-library-package-plist__% _%dir127514%_ '#t)))
                    (if (null? _%plist127519%_)
                        (let ((_%pkg127522%_
                               (if (null? _%pkg-path127515%_)
                                   '#f
                                   (string-join _%pkg-path127515%_ '"/"))))
                          (values _%pre127507%_ _%ns127508%_ _%pkg127522%_))
                        (if (list? _%plist127519%_)
                            (let* ((_%root127525%_
                                    (pgetq__0 'package: _%plist127519%_))
                                   (_%pkg127529%_
                                    (let ((_%pkg-path127527%_
                                           (if _%root127525%_
                                               (cons (_%string-e127510%_
                                                      _%root127525%_)
                                                     _%pkg-path127515%_)
                                               _%pkg-path127515%_)))
                                      (if (null? _%pkg-path127527%_)
                                          '#f
                                          (string-join
                                           _%pkg-path127527%_
                                           '"/"))))
                                   (_%ns127536%_
                                    (let ((_%ns127534%_
                                           (let ((_%$e127531%_ _%ns127508%_))
                                             (if _%$e127531%_
                                                 _%$e127531%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist127519%_)))))
                                      (if _%ns127534%_
                                          (_%string-e127510%_ _%ns127534%_)
                                          '#f)))
                                   (_%pre127541%_
                                    (let ((_%$e127538%_ _%pre127507%_))
                                      (if _%$e127538%_
                                          _%$e127538%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist127519%_)))))
                              (values _%pre127541%_
                                      _%ns127536%_
                                      _%pkg127529%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist127519%_))))
                  (let ((_%dir*127545%_
                         (path-strip-trailing-directory-separator
                          _%dir127514%_)))
                    (if (or (__string-empty? _%dir*127545%_)
                            (equal? _%dir127514%_ _%dir*127545%_))
                        (values _%pre127507%_ _%ns127508%_ '#f)
                        (let ((_%xpath127550%_
                               (path-strip-directory _%dir*127545%_))
                              (_%xdir127551%_ (path-directory _%dir*127545%_)))
                          (_%lp127512%_
                           _%xdir127551%_
                           (cons _%xpath127550%_ _%pkg-path127515%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path127504%_)
        (path-strip-extension (path-strip-directory _%path127504%_))))
    (define gx#core-module-path->id
      (lambda (_%path127502%_)
        (##string->symbol (gx#core-module-path->namespace _%path127502%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path127481%_ _%rel127482%_)
        (let* ((_%path127484%_ (gx#stx-e _%stx-path127481%_))
               (_%path127486%_
                (if (__string-empty? (path-extension _%path127484%_))
                    (##string-append _%path127484%_ '".ss")
                    _%path127484%_)))
          (gx#core-resolve-path__%
           _%path127486%_
           (let ((_%$e127489%_ (gx#stx-source _%stx-path127481%_)))
             (if _%$e127489%_ _%$e127489%_ _%rel127482%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path127495%_)
        (let ((_%rel127497%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path127495%_ _%rel127497%_))))
    (define gx#core-resolve-module-path
      (lambda _g129131_
        (let ((_g129130_ (##length _g129131_)))
          (cond ((##fx= _g129130_ 1)
                 (apply gx#core-resolve-module-path__0 _g129131_))
                ((##fx= _g129130_ 2)
                 (apply gx#core-resolve-module-path__% _g129131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g129131_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath127366%_)
        (let* ((_%spath127368%_ (symbol->string (gx#stx-e _%libpath127366%_)))
               (_%spath127370%_
                (substring
                 _%spath127368%_
                 '1
                 (##string-length _%spath127368%_)))
               (_%ext127372%_ (path-extension _%spath127370%_))
               (_%ssi127374%_
                (if (__string-empty? _%ext127372%_)
                    (##string-append _%spath127370%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath127370%_)
                     '".ssi")))
               (_%srcs127378%_
                (if (__string-empty? _%ext127372%_)
                    (##map (lambda (_%ext127376%_)
                             (string-append _%spath127370%_ _%ext127376%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath127370%_ '()))))
          (let _%lp127381%_ ((_%rest127383%_ (load-path)))
            (let* ((_%rest127384127393%_ _%rest127383%_)
                   (_%E127387127397%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest127384127393%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K127389127468%_
                     (lambda (_%rest127408%_ _%dir127409%_)
                       (letrec ((_%resolve127411%_
                                 (lambda (_%ssi127424%_ _%srcs127425%_)
                                   (let ((_%compiled-path127427%_
                                          (path-expand
                                           _%ssi127424%_
                                           _%dir127409%_)))
                                     (if (##file-exists?
                                          _%compiled-path127427%_)
                                         (path-normalize
                                          _%compiled-path127427%_)
                                         (let _%lpr127429%_ ((_%rest-src127431%_
                                                              _%srcs127425%_))
                                           (let* ((_%rest-src127432127440%_
                                                   _%rest-src127431%_)
                                                  (_%else127434127448%_
                                                   (lambda ()
                                                     (_%lp127381%_
                                                      _%rest127408%_)))
                                                  (_%K127436127456%_
                                                   (lambda (_%rest-src127451%_
                                                            _%src127452%_)
                                                     (let ((_%src-path127454%_
                                                            (path-expand
                                                             _%src127452%_
                                                             _%dir127409%_)))
                                                       (if (##file-exists?
                                                            _%src-path127454%_)
                                                           (path-normalize
                                                            _%src-path127454%_)
                                                           (_%lpr127429%_
                                                            _%rest-src127451%_))))))
                                             (if (pair? _%rest-src127432127440%_)
                                                 (let ((_%hd127437127459%_
                                                        (##car _%rest-src127432127440%_))
                                                       (_%tl127438127461%_
                                                        (##cdr _%rest-src127432127440%_)))
                                                   (let* ((_%src127464%_
                                                           _%hd127437127459%_)
                                                          (_%rest-src127466%_
                                                           _%tl127438127461%_))
                                                     (_%K127436127456%_
                                                      _%rest-src127466%_
                                                      _%src127464%_)))
                                                 (_%else127434127448%_)))))))))
                         (let ((_%$e127413%_
                                (gx#core-library-package-path-prefix
                                 _%dir127409%_)))
                           (if _%$e127413%_
                               ((lambda (_%prefix127416%_)
                                  (if (string-prefix?
                                       _%prefix127416%_
                                       _%spath127370%_)
                                      (let ((_%ssi127420%_
                                             (substring
                                              _%ssi127374%_
                                              (string-length _%prefix127416%_)
                                              (##string-length _%ssi127374%_)))
                                            (_%srcs127421%_
                                             (##map (lambda (_%src127418%_)
                                                      (substring
                                                       _%src127418%_
                                                       (string-length
                                                        _%prefix127416%_)
                                                       (string-length
                                                        _%src127418%_)))
                                                    _%srcs127378%_)))
                                        (_%resolve127411%_
                                         _%ssi127420%_
                                         _%srcs127421%_))
                                      (_%lp127381%_ _%rest127408%_)))
                                _%$e127413%_)
                               (_%resolve127411%_
                                _%ssi127374%_
                                _%srcs127378%_))))))
                    (_%K127388127402%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath127366%_))))
                (let ((_%try-match127386127405%_
                       (lambda ()
                         (if (null? _%rest127384127393%_)
                             (_%K127388127402%_)
                             (_%E127387127397%_)))))
                  (if (pair? _%rest127384127393%_)
                      (let ((_%tl127391127473%_ (##cdr _%rest127384127393%_))
                            (_%hd127390127471%_ (##car _%rest127384127393%_)))
                        (let ((_%dir127476%_ _%hd127390127471%_)
                              (_%rest127478%_ _%tl127391127473%_))
                          (_%K127389127468%_ _%rest127478%_ _%dir127476%_)))
                      (_%try-match127386127405%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath127334%_)
        (letrec ((_%resolve127336%_
                  (lambda (_%path127357%_ _%base127358%_)
                    (let ((_%$e127360%_
                           (string-rindex__0 _%base127358%_ '#\/)))
                      (if _%$e127360%_
                          ((lambda (_%idx127363%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base127358%_ '0 _%idx127363%_)
                                '"/"
                                _%path127357%_))))
                           _%$e127360%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path127357%_))))))))
          (let ((_%spath127338%_ (symbol->string (gx#stx-e _%modpath127334%_)))
                (_%mod127339%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod127339%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath127334%_))
            (let ((_%mpath127341%_
                   (symbol->string
                    (##structure-ref
                     _%mod127339%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp127343%_ ((_%spath127345%_ _%spath127338%_)
                                 (_%mpath127346%_ _%mpath127341%_))
                (if (string-prefix? '"../" _%spath127345%_)
                    (let ((_%$e127349%_
                           (string-rindex__0 _%mpath127346%_ '#\/)))
                      (if _%$e127349%_
                          ((lambda (_%idx127352%_)
                             (_%lp127343%_
                              (substring
                               _%spath127345%_
                               '3
                               (string-length _%spath127345%_))
                              (substring _%mpath127346%_ '0 _%idx127352%_)))
                           _%$e127349%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath127334%_)))
                    (if (string-prefix? '"./" _%spath127345%_)
                        (_%lp127343%_
                         (substring
                          _%spath127345%_
                          '2
                          (string-length _%spath127345%_))
                         _%mpath127346%_)
                        (_%resolve127336%_
                         _%spath127345%_
                         _%mpath127346%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir127326%_)
        (let ((_%$e127328%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir127326%_))))
          (if _%$e127328%_
              ((lambda (_%pkg127331%_)
                 (##string-append (symbol->string _%pkg127331%_) '"/"))
               _%$e127328%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir127296%_ _%exists?127297%_)
        (let ((_%$e127299%_ (__hash-get gx#__module-pkg-cache _%dir127296%_)))
          (if _%$e127299%_
              _%$e127299%_
              (let* ((_%gerbil.pkg127303%_
                      (path-expand '"gerbil.pkg" _%dir127296%_))
                     (_%plist127313%_
                      (if (or _%exists?127297%_
                              (##file-exists? _%gerbil.pkg127303%_))
                          (let ((_%e127308%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg127303%_
                                  read)))
                            (if (eof-object? _%e127308%_)
                                '()
                                (if (list? _%e127308%_)
                                    _%e127308%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg127303%_
                                     _%e127308%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir127296%_
                 _%plist127313%_)
                _%plist127313%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir127319%_)
        (let ((_%exists?127321%_ '#f))
          (gx#core-library-package-plist__% _%dir127319%_ _%exists?127321%_))))
    (define gx#core-library-package-plist
      (lambda _g129133_
        (let ((_g129132_ (##length _g129133_)))
          (cond ((##fx= _g129132_ 1)
                 (apply gx#core-library-package-plist__0 _g129133_))
                ((##fx= _g129132_ 2)
                 (apply gx#core-library-package-plist__% _g129133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g129133_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx127293%_)
        (gx#core-special-module-path? _%stx127293%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx127291%_)
        (gx#core-special-module-path? _%stx127291%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx127286%_ _%char127287%_)
        (if (gx#identifier? _%stx127286%_)
            (if (interned-symbol? (gx#stx-e _%stx127286%_))
                (let ((_%str127289%_
                       (symbol->string (gx#stx-e _%stx127286%_))))
                  (if (##fx> (##string-length _%str127289%_) '1)
                      (eq? (string-ref _%str127289%_ '0) _%char127287%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx127280%_)
        (gx#core-bound-identifier?__%
         _%stx127280%_
         (lambda (_%g127281127283%_)
           (gx#expander-binding?__% _%g127281127283%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx127274%_)
        (gx#core-bound-identifier?__%
         _%stx127274%_
         (lambda (_%g127275127277%_)
           (gx#expander-binding?__% _%g127275127277%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx127261%_)
        (letrec ((_%module-prelude?127263%_
                  (lambda (_%e127269%_)
                    (let ((_%$e127271%_
                           (##structure-instance-of?
                            _%e127269%_
                            'gx#module-context::t)))
                      (if _%$e127271%_
                          _%$e127271%_
                          (##structure-instance-of?
                           _%e127269%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx127261%_
           (lambda (_%g127264127266%_)
             (gx#expander-binding?__%
              _%g127264127266%_
              _%module-prelude?127263%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in127191%_ _%ctx127192%_ _%force-weak?127193%_)
        (let* ((_%in127194127203%_ _%in127191%_)
               (_%E127196127207%_
                (lambda ()
                  (error '"No clause matching"
                         _%in127194127203%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K127197127220%_
                (lambda (_%weak?127210%_
                         _%phi127211%_
                         _%key127212%_
                         _%source127213%_)
                  (gx#core-bind!__%
                   _%key127212%_
                   (let ((_%e127215%_
                          (gx#core-resolve-module-export _%source127213%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e127215%_ '1 '#f '#f)
                      _%key127212%_
                      _%phi127211%_
                      _%e127215%_
                      (##unchecked-structure-ref _%source127213%_ '1 '#f '#f)
                      (let ((_%$e127217%_ _%force-weak?127193%_))
                        (if _%$e127217%_ _%$e127217%_ _%weak?127210%_))))
                   gx#core-context-rebind?
                   _%phi127211%_
                   _%ctx127192%_))))
          (if (##structure-direct-instance-of?
               _%in127194127203%_
               'gx#module-import::t)
              (let* ((_%e127198127223%_
                      (##unchecked-structure-ref
                       _%in127194127203%_
                       '1
                       '#f
                       '#f))
                     (_%source127226%_ _%e127198127223%_)
                     (_%e127199127228%_
                      (##unchecked-structure-ref
                       _%in127194127203%_
                       '2
                       '#f
                       '#f))
                     (_%key127231%_ _%e127199127228%_)
                     (_%e127200127233%_
                      (##unchecked-structure-ref
                       _%in127194127203%_
                       '3
                       '#f
                       '#f))
                     (_%phi127236%_ _%e127200127233%_)
                     (_%e127201127238%_
                      (##unchecked-structure-ref
                       _%in127194127203%_
                       '4
                       '#f
                       '#f))
                     (_%weak?127241%_ _%e127201127238%_))
                (_%K127197127220%_
                 _%weak?127241%_
                 _%phi127236%_
                 _%key127231%_
                 _%source127226%_))
              (_%E127196127207%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in127246%_)
        (let* ((_%ctx127248%_ (gx#current-expander-context))
               (_%force-weak?127250%_ '#f))
          (gx#core-bind-import!__%
           _%in127246%_
           _%ctx127248%_
           _%force-weak?127250%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in127252%_ _%ctx127253%_)
        (let ((_%force-weak?127255%_ '#f))
          (gx#core-bind-import!__%
           _%in127252%_
           _%ctx127253%_
           _%force-weak?127255%_))))
    (define gx#core-bind-import!
      (lambda _g129135_
        (let ((_g129134_ (##length _g129135_)))
          (cond ((##fx= _g129134_ 1) (apply gx#core-bind-import!__0 _g129135_))
                ((##fx= _g129134_ 2) (apply gx#core-bind-import!__1 _g129135_))
                ((##fx= _g129134_ 3) (apply gx#core-bind-import!__% _g129135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g129135_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in127177%_ _%ctx127178%_)
        (gx#core-bind-import!__% _%in127177%_ _%ctx127178%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in127183%_)
        (let ((_%ctx127185%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in127183%_ _%ctx127185%_))))
    (define gx#core-bind-weak-import!
      (lambda _g129137_
        (let ((_g129136_ (##length _g129137_)))
          (cond ((##fx= _g129136_ 1)
                 (apply gx#core-bind-weak-import!__0 _g129137_))
                ((##fx= _g129136_ 2)
                 (apply gx#core-bind-weak-import!__% _g129137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g129137_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out127068%_)
        (letrec ((_%subst127070%_
                  (lambda (_%key127116%_)
                    (let* ((_%key127117127125%_ _%key127116%_)
                           (_%else127119127133%_ (lambda () _%key127116%_))
                           (_%K127121127164%_
                            (lambda (_%mark127136%_ _%id127137%_)
                              (let* ((_%mark127138127144%_ _%mark127136%_)
                                     (_%E127140127148%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark127138127144%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K127141127156%_
                                      (lambda (_%subst127151%_)
                                        (let ((_%$e127153%_
                                               (if _%subst127151%_
                                                   (hash-get
                                                    _%subst127151%_
                                                    _%id127137%_)
                                                   '#f)))
                                          (if _%$e127153%_
                                              _%$e127153%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key127116%_))))))
                                (if (##structure-instance-of?
                                     _%mark127138127144%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e127142127159%_
                                            (##unchecked-structure-ref
                                             _%mark127138127144%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127162%_ _%e127142127159%_))
                                      (_%K127141127156%_ _%subst127162%_))
                                    (_%E127140127148%_))))))
                      (if (pair? _%key127117127125%_)
                          (let ((_%hd127122127167%_
                                 (##car _%key127117127125%_))
                                (_%tl127123127169%_
                                 (##cdr _%key127117127125%_)))
                            (let* ((_%id127172%_ _%hd127122127167%_)
                                   (_%mark127174%_ _%tl127123127169%_))
                              (_%K127121127164%_ _%mark127174%_ _%id127172%_)))
                          (_%else127119127133%_))))))
          (let* ((_%out127071127081%_ _%out127068%_)
                 (_%E127073127085%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out127071127081%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K127074127092%_
                  (lambda (_%phi127088%_ _%key127089%_ _%ctx127090%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx127090%_ _%phi127088%_)
                     (_%subst127070%_ _%key127089%_)))))
            (if (##structure-direct-instance-of?
                 _%out127071127081%_
                 'gx#module-export::t)
                (let* ((_%e127075127095%_
                        (##unchecked-structure-ref
                         _%out127071127081%_
                         '1
                         '#f
                         '#f))
                       (_%ctx127098%_ _%e127075127095%_)
                       (_%e127076127100%_
                        (##unchecked-structure-ref
                         _%out127071127081%_
                         '2
                         '#f
                         '#f))
                       (_%key127103%_ _%e127076127100%_)
                       (_%e127077127105%_
                        (##unchecked-structure-ref
                         _%out127071127081%_
                         '3
                         '#f
                         '#f))
                       (_%phi127108%_ _%e127077127105%_)
                       (_%e127078127110%_
                        (##unchecked-structure-ref
                         _%out127071127081%_
                         '4
                         '#f
                         '#f))
                       (_%e127079127113%_
                        (##unchecked-structure-ref
                         _%out127071127081%_
                         '5
                         '#f
                         '#f)))
                  (_%K127074127092%_
                   _%phi127108%_
                   _%key127103%_
                   _%ctx127098%_))
                (_%E127073127085%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out126993%_ _%rename126994%_ _%dphi126995%_)
        (let* ((_%out126996127006%_ _%out126993%_)
               (_%E126998127010%_
                (lambda ()
                  (error '"No clause matching"
                         _%out126996127006%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K126999127022%_
                (lambda (_%weak?127013%_
                         _%name127014%_
                         _%phi127015%_
                         _%key127016%_
                         _%ctx127017%_)
                  (##structure
                   gx#module-import::t
                   _%out126993%_
                   (let ((_%$e127019%_ _%rename126994%_))
                     (if _%$e127019%_ _%$e127019%_ _%name127014%_))
                   (fx+ _%phi127015%_ _%dphi126995%_)
                   _%weak?127013%_))))
          (if (##structure-direct-instance-of?
               _%out126996127006%_
               'gx#module-export::t)
              (let* ((_%e127000127025%_
                      (##unchecked-structure-ref
                       _%out126996127006%_
                       '1
                       '#f
                       '#f))
                     (_%ctx127028%_ _%e127000127025%_)
                     (_%e127001127030%_
                      (##unchecked-structure-ref
                       _%out126996127006%_
                       '2
                       '#f
                       '#f))
                     (_%key127033%_ _%e127001127030%_)
                     (_%e127002127035%_
                      (##unchecked-structure-ref
                       _%out126996127006%_
                       '3
                       '#f
                       '#f))
                     (_%phi127038%_ _%e127002127035%_)
                     (_%e127003127040%_
                      (##unchecked-structure-ref
                       _%out126996127006%_
                       '4
                       '#f
                       '#f))
                     (_%name127043%_ _%e127003127040%_)
                     (_%e127004127045%_
                      (##unchecked-structure-ref
                       _%out126996127006%_
                       '5
                       '#f
                       '#f))
                     (_%weak?127048%_ _%e127004127045%_))
                (_%K126999127022%_
                 _%weak?127048%_
                 _%name127043%_
                 _%phi127038%_
                 _%key127033%_
                 _%ctx127028%_))
              (_%E126998127010%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out127053%_)
        (let* ((_%rename127055%_ '#f) (_%dphi127057%_ '0))
          (gx#core-module-export->import__%
           _%out127053%_
           _%rename127055%_
           _%dphi127057%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out127059%_ _%rename127060%_)
        (let ((_%dphi127062%_ '0))
          (gx#core-module-export->import__%
           _%out127059%_
           _%rename127060%_
           _%dphi127062%_))))
    (define gx#core-module-export->import
      (lambda _g129139_
        (let ((_g129138_ (##length _g129139_)))
          (cond ((##fx= _g129138_ 1)
                 (apply gx#core-module-export->import__0 _g129139_))
                ((##fx= _g129138_ 2)
                 (apply gx#core-module-export->import__1 _g129139_))
                ((##fx= _g129138_ 3)
                 (apply gx#core-module-export->import__% _g129139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g129139_))))))
    (define gx#core-expand-module%
      (lambda (_%stx126892%_)
        (letrec ((_%make-context126894%_
                  (lambda (_%id126971%_)
                    (let* ((_%super126973%_ (gx#current-expander-context))
                           (_%bind-id126975%_ (gx#stx-e _%id126971%_))
                           (_%mod-id126977%_
                            (if (##structure-instance-of?
                                 _%super126973%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super126973%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id126975%_)
                                _%bind-id126975%_))
                           (_%ns126979%_ (symbol->string _%mod-id126977%_))
                           (_%path126989%_
                            (if (##structure-instance-of?
                                 _%super126973%_
                                 'gx#module-context::t)
                                (let ((_%path126981%_
                                       (##unchecked-structure-ref
                                        _%super126973%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path126981%_)
                                          (null? _%path126981%_))
                                      (cons _%bind-id126975%_ _%path126981%_)
                                      (if (not _%path126981%_)
                                          _%bind-id126975%_
                                          (cons _%bind-id126975%_
                                                (cons _%path126981%_ '())))))
                                _%bind-id126975%_))
                           (__obj129115
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
                       __obj129115
                       _%mod-id126977%_
                       _%super126973%_
                       _%ns126979%_
                       _%path126989%_)
                      __obj129115)))
                 (_%valid-module-id?126895%_
                  (lambda (_%id126946%_)
                    (let* ((_%str126948%_ (symbol->string _%id126946%_))
                           (_%len126950%_ (##string-length _%str126948%_)))
                      (if (##fx>= _%len126950%_ '1)
                          (let _%loop126953%_ ((_%index126955%_
                                                (##fx- (##string-length
                                                        _%str126948%_)
                                                       '1)))
                            (if (##fx>= _%index126955%_ '0)
                                (let ((_%c126957%_
                                       (string-ref
                                        _%str126948%_
                                        _%index126955%_)))
                                  (if (or (and (##char>=? _%c126957%_ '#\a)
                                               (##char<=? _%c126957%_ '#\z))
                                          (and (##char>=? _%c126957%_ '#\A)
                                               (##char<=? _%c126957%_ '#\Z))
                                          (and (##char>=? _%c126957%_ '#\0)
                                               (##char<=? _%c126957%_ '#\9))
                                          (##char=? _%c126957%_ '#\_)
                                          (##char=? _%c126957%_ '#\-))
                                      (_%loop126953%_
                                       (##fx- _%index126955%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e126896126906%_ _%stx126892%_)
                 (_%E126898126910%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126896126906%_)))
                 (_%E126897126942%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126896126906%_)
                        (let ((_%e126899126914%_
                               (gx#syntax-e _%e126896126906%_)))
                          (let ((_%hd126900126917%_ (##car _%e126899126914%_))
                                (_%tl126901126919%_ (##cdr _%e126899126914%_)))
                            (if (gx#stx-pair? _%tl126901126919%_)
                                (let ((_%e126902126922%_
                                       (gx#syntax-e _%tl126901126919%_)))
                                  (let ((_%hd126903126925%_
                                         (##car _%e126902126922%_))
                                        (_%tl126904126927%_
                                         (##cdr _%e126902126922%_)))
                                    (let* ((_%id126930%_ _%hd126903126925%_)
                                           (_%body126932%_ _%tl126904126927%_))
                                      (if (and (gx#identifier? _%id126930%_)
                                               (gx#stx-list? _%body126932%_))
                                          (if (_%valid-module-id?126895%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx126934%_
                                                      (_%make-context126894%_
                                                       _%id126930%_))
                                                     (_%body126936%_
                                                      (gx#core-expand-module-begin
                                                       _%body126932%_
                                                       _%ctx126934%_))
                                                     (_%body126938%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body126936%_)
                                                       (gx#stx-source
                                                        _%stx126892%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx126934%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body126938%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx126934%_
                                                 _%body126938%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id126930%_
                                                 _%ctx126934%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id126930%_)
                                                  _%body126938%_)
                                                 (gx#stx-source
                                                  _%stx126892%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx126892%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E126898126910%_)))))
                                (_%E126898126910%_))))
                        (_%E126898126910%_)))))
            (_%E126897126942%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body126858%_ _%ctx126859%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx126862%_
                   (gx#core-expand-head (cons '%%begin-module _%body126858%_)))
                  (_%e126863126870%_ _%stx126862%_)
                  (_%E126865126874%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx126862%_)))
                  (_%E126864126888%_
                   (lambda ()
                     (if (gx#stx-pair? _%e126863126870%_)
                         (let ((_%e126866126878%_
                                (gx#syntax-e _%e126863126870%_)))
                           (let ((_%hd126867126881%_ (##car _%e126866126878%_))
                                 (_%tl126868126883%_
                                  (##cdr _%e126866126878%_)))
                             (if (and (gx#identifier? _%hd126867126881%_)
                                      (gx#core-identifier=?
                                       _%hd126867126881%_
                                       '%#begin-module))
                                 (let ((_%body126886%_ _%tl126868126883%_))
                                   (if (gx#sealed-syntax? _%stx126862%_)
                                       _%body126886%_
                                       (gx#core-expand-module-body
                                        _%body126886%_)))
                                 (_%E126865126874%_))))
                         (_%E126865126874%_)))))
             (_%E126864126888%_)))
         gx#current-expander-context
         _%ctx126859%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body126654%_)
        (letrec ((_%expand-special126656%_
                  (lambda (_%hd126785%_ _%K126786%_ _%rest126787%_ _%r126788%_)
                    (let* ((_%e126789126806%_ _%hd126785%_)
                           (_%E126801126810%_
                            (lambda ()
                              (_%K126786%_
                               _%rest126787%_
                               (cons (gx#core-expand-top _%hd126785%_)
                                     _%r126788%_))))
                           (_%E126791126822%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126789126806%_)
                                  (let ((_%e126802126814%_
                                         (gx#syntax-e _%e126789126806%_)))
                                    (let ((_%hd126803126817%_
                                           (##car _%e126802126814%_))
                                          (_%tl126804126819%_
                                           (##cdr _%e126802126814%_)))
                                      (if (and (gx#identifier?
                                                _%hd126803126817%_)
                                               (gx#core-identifier=?
                                                _%hd126803126817%_
                                                '%#export))
                                          (_%K126786%_
                                           _%rest126787%_
                                           (cons _%hd126785%_ _%r126788%_))
                                          (_%E126801126810%_))))
                                  (_%E126801126810%_))))
                           (_%E126790126854%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126789126806%_)
                                  (let ((_%e126792126826%_
                                         (gx#syntax-e _%e126789126806%_)))
                                    (let ((_%hd126793126829%_
                                           (##car _%e126792126826%_))
                                          (_%tl126794126831%_
                                           (##cdr _%e126792126826%_)))
                                      (if (and (gx#identifier?
                                                _%hd126793126829%_)
                                               (gx#core-identifier=?
                                                _%hd126793126829%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126794126831%_)
                                              (let ((_%e126795126834%_
                                                     (gx#syntax-e
                                                      _%tl126794126831%_)))
                                                (let ((_%hd126796126837%_
                                                       (##car _%e126795126834%_))
                                                      (_%tl126797126839%_
                                                       (##cdr _%e126795126834%_)))
                                                  (let ((_%hd-bind126842%_
                                                         _%hd126796126837%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126797126839%_)
                                                        (let ((_%e126798126844%_
                                                               (gx#syntax-e
                                                                _%tl126797126839%_)))
                                                          (let ((_%hd126799126847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126798126844%_))
                        (_%tl126800126849%_ (##cdr _%e126798126844%_)))
                    (let ((_%expr126852%_ _%hd126799126847%_))
                      (if (gx#stx-null? _%tl126800126849%_)
                          (if (gx#core-bind-values? _%hd-bind126842%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126842%_)
                                (_%K126786%_
                                 _%rest126787%_
                                 (cons _%hd126785%_ _%r126788%_)))
                              (_%E126791126822%_))
                          (_%E126791126822%_)))))
                (_%E126791126822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126791126822%_))
                                          (_%E126791126822%_))))
                                  (_%E126791126822%_)))))
                      (_%E126790126854%_))))
                 (_%expand-body126657%_
                  (lambda (_%rbody126659%_)
                    (let _%lp126661%_ ((_%rest126663%_ _%rbody126659%_)
                                       (_%body126664%_ '()))
                      (let* ((_%rest126665126673%_ _%rest126663%_)
                             (_%else126667126681%_ (lambda () _%body126664%_))
                             (_%K126669126773%_
                              (lambda (_%rest126684%_ _%hd126685%_)
                                (let* ((_%e126686126707%_ _%hd126685%_)
                                       (_%E126702126711%_
                                        (lambda ()
                                          (_%lp126661%_
                                           _%rest126684%_
                                           (cons (gx#core-expand-expression
                                                  _%hd126685%_)
                                                 _%body126664%_))))
                                       (_%E126698126725%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126686126707%_)
                                              (let ((_%e126703126715%_
                                                     (gx#syntax-e
                                                      _%e126686126707%_)))
                                                (let ((_%hd126704126718%_
                                                       (##car _%e126703126715%_))
                                                      (_%tl126705126720%_
                                                       (##cdr _%e126703126715%_)))
                                                  (let ((_%form126723%_
                                                         _%hd126704126718%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form126723%_
                                                         gx#special-form-binding?)
                                                        (_%lp126661%_
                                                         _%rest126684%_
                                                         (cons _%hd126685%_
                                                               _%body126664%_))
                                                        (_%E126702126711%_)))))
                                              (_%E126702126711%_))))
                                       (_%E126688126737%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126686126707%_)
                                              (let ((_%e126699126729%_
                                                     (gx#syntax-e
                                                      _%e126686126707%_)))
                                                (let ((_%hd126700126732%_
                                                       (##car _%e126699126729%_))
                                                      (_%tl126701126734%_
                                                       (##cdr _%e126699126729%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126700126732%_)
                                                           (gx#core-identifier=?
                                                            _%hd126700126732%_
                                                            '%#export))
                                                      (_%lp126661%_
                                                       _%rest126684%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd126685%_)
                                                             _%body126664%_))
                                                      (_%E126698126725%_))))
                                              (_%E126698126725%_))))
                                       (_%E126687126769%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126686126707%_)
                                              (let ((_%e126689126741%_
                                                     (gx#syntax-e
                                                      _%e126686126707%_)))
                                                (let ((_%hd126690126744%_
                                                       (##car _%e126689126741%_))
                                                      (_%tl126691126746%_
                                                       (##cdr _%e126689126741%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126690126744%_)
                                                           (gx#core-identifier=?
                                                            _%hd126690126744%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126691126746%_)
                                                          (let ((_%e126692126749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126691126746%_)))
                    (let ((_%hd126693126752%_ (##car _%e126692126749%_))
                          (_%tl126694126754%_ (##cdr _%e126692126749%_)))
                      (let ((_%hd-bind126757%_ _%hd126693126752%_))
                        (if (gx#stx-pair? _%tl126694126754%_)
                            (let ((_%e126695126759%_
                                   (gx#syntax-e _%tl126694126754%_)))
                              (let ((_%hd126696126762%_
                                     (##car _%e126695126759%_))
                                    (_%tl126697126764%_
                                     (##cdr _%e126695126759%_)))
                                (let ((_%expr126767%_ _%hd126696126762%_))
                                  (if (gx#stx-null? _%tl126697126764%_)
                                      (_%lp126661%_
                                       _%rest126684%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind126757%_)
                                               (gx#core-expand-expression
                                                _%expr126767%_))
                                              (gx#stx-source _%hd126685%_))
                                             _%body126664%_))
                                      (_%E126688126737%_)))))
                            (_%E126688126737%_)))))
                  (_%E126688126737%_))
              (_%E126688126737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126688126737%_)))))
                                  (_%E126687126769%_)))))
                        (if (pair? _%rest126665126673%_)
                            (let ((_%hd126670126776%_
                                   (##car _%rest126665126673%_))
                                  (_%tl126671126778%_
                                   (##cdr _%rest126665126673%_)))
                              (let* ((_%hd126781%_ _%hd126670126776%_)
                                     (_%rest126783%_ _%tl126671126778%_))
                                (_%K126669126773%_
                                 _%rest126783%_
                                 _%hd126781%_)))
                            (_%else126667126681%_)))))))
          (_%expand-body126657%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body126654%_)
            _%expand-special126656%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx126495%_
               _%expanded?126496%_
               _%method126497%_
               _%current-phi126498%_
               _%expand1126499%_)
        (letrec ((_%K126501%_
                  (lambda (_%rest126621%_ _%r126622%_)
                    (let* ((_%e126623126630%_ _%rest126621%_)
                           (_%E126625126634%_ (lambda () _%r126622%_))
                           (_%E126624126650%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126623126630%_)
                                  (let ((_%e126626126638%_
                                         (gx#syntax-e _%e126623126630%_)))
                                    (let ((_%hd126627126641%_
                                           (##car _%e126626126638%_))
                                          (_%tl126628126643%_
                                           (##cdr _%e126626126638%_)))
                                      (let* ((_%hd126646%_ _%hd126627126641%_)
                                             (_%rest126648%_
                                              _%tl126628126643%_))
                                        (_%step126502%_
                                         _%hd126646%_
                                         _%rest126648%_
                                         _%r126622%_))))
                                  (_%E126625126634%_)))))
                      (_%E126624126650%_))))
                 (_%step126502%_
                  (lambda (_%hd126535%_ _%rest126536%_ _%r126537%_)
                    (let* ((_%e126538126556%_ _%hd126535%_)
                           (_%E126551126560%_
                            (lambda ()
                              (if (_%expanded?126496%_ (gx#stx-e _%hd126535%_))
                                  (_%K126501%_
                                   _%rest126536%_
                                   (cons (gx#stx-e _%hd126535%_) _%r126537%_))
                                  (_%expand1126499%_
                                   _%hd126535%_
                                   _%K126501%_
                                   _%rest126536%_
                                   _%r126537%_))))
                           (_%E126547126576%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126538126556%_)
                                  (let ((_%e126552126564%_
                                         (gx#syntax-e _%e126538126556%_)))
                                    (let ((_%hd126553126567%_
                                           (##car _%e126552126564%_))
                                          (_%tl126554126569%_
                                           (##cdr _%e126552126564%_)))
                                      (let* ((_%macro126572%_
                                              _%hd126553126567%_)
                                             (_%body126574%_
                                              _%tl126554126569%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro126572%_
                                             gx#syntax-binding?)
                                            (_%K126501%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro126572%_)
                                                    _%hd126535%_
                                                    _%method126497%_)
                                                   _%rest126536%_)
                                             _%r126537%_)
                                            (_%E126551126560%_)))))
                                  (_%E126551126560%_))))
                           (_%E126540126590%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126538126556%_)
                                  (let ((_%e126548126580%_
                                         (gx#syntax-e _%e126538126556%_)))
                                    (let ((_%hd126549126583%_
                                           (##car _%e126548126580%_))
                                          (_%tl126550126585%_
                                           (##cdr _%e126548126580%_)))
                                      (if (eq? (gx#stx-e _%hd126549126583%_)
                                               'begin:)
                                          (let ((_%body126588%_
                                                 _%tl126550126585%_))
                                            (_%K126501%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest126536%_
                                              _%body126588%_)
                                             _%r126537%_))
                                          (_%E126547126576%_))))
                                  (_%E126547126576%_))))
                           (_%E126539126617%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126538126556%_)
                                  (let ((_%e126541126594%_
                                         (gx#syntax-e _%e126538126556%_)))
                                    (let ((_%hd126542126597%_
                                           (##car _%e126541126594%_))
                                          (_%tl126543126599%_
                                           (##cdr _%e126541126594%_)))
                                      (if (eq? (gx#stx-e _%hd126542126597%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl126543126599%_)
                                              (let ((_%e126544126602%_
                                                     (gx#syntax-e
                                                      _%tl126543126599%_)))
                                                (let ((_%hd126545126605%_
                                                       (##car _%e126544126602%_))
                                                      (_%tl126546126607%_
                                                       (##cdr _%e126544126602%_)))
                                                  (let* ((_%dphi126610%_
                                                          _%hd126545126605%_)
                                                         (_%body126612%_
                                                          _%tl126546126607%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi126610%_)
                                                        (let ((_%rbody126615%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K126501%_ _%body126612%_ '()))
                        _%current-phi126498%_
                        (fx+ (gx#stx-e _%dphi126610%_)
                             (_%current-phi126498%_)))))
                  (_%K126501%_
                   _%rest126536%_
                   (__foldr1 cons _%r126537%_ _%rbody126615%_)))
                (_%E126540126590%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126540126590%_))
                                          (_%E126540126590%_))))
                                  (_%E126540126590%_)))))
                      (_%E126539126617%_)))))
          (let* ((_%e126503126510%_ _%stx126495%_)
                 (_%E126505126514%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126503126510%_)))
                 (_%E126504126531%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126503126510%_)
                        (let ((_%e126506126518%_
                               (gx#syntax-e _%e126503126510%_)))
                          (let ((_%hd126507126521%_ (##car _%e126506126518%_))
                                (_%tl126508126523%_ (##cdr _%e126506126518%_)))
                            (let ((_%body126526%_ _%tl126508126523%_))
                              (if (_%current-phi126498%_)
                                  (_%K126501%_ _%body126526%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K126501%_ _%body126526%_ '()))
                                   _%current-phi126498%_
                                   (gx#current-expander-phi))))))
                        (_%E126505126514%_)))))
            (_%E126504126531%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx126149%_ _%internal-expand?126150%_)
        (letrec ((_%expand1126152%_
                  (lambda (_%hd126467%_ _%K126468%_ _%rest126469%_ _%r126470%_)
                    (if (gx#core-bound-module? _%hd126467%_)
                        (_%import1126153%_
                         (gx#syntax-local-e__0 _%hd126467%_)
                         _%K126468%_
                         _%rest126469%_
                         _%r126470%_)
                        (if (gx#core-library-module-path? _%hd126467%_)
                            (_%import1126153%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd126467%_))
                             _%K126468%_
                             _%rest126469%_
                             _%r126470%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd126467%_)
                                (_%import1126153%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd126467%_))
                                 _%K126468%_
                                 _%rest126469%_
                                 _%r126470%_)
                                (let ((_%e126476%_ (gx#stx-e _%hd126467%_)))
                                  (if (pair? _%e126476%_)
                                      (let ((_%$e126479%_
                                             (gx#stx-e (##car _%e126476%_))))
                                        (if (eq? 'spec: _%$e126479%_)
                                            (_%import-spec126156%_
                                             _%hd126467%_
                                             _%K126468%_
                                             _%rest126469%_
                                             _%r126470%_)
                                            (if (eq? 'in: _%$e126479%_)
                                                (_%import-submodule126154%_
                                                 _%hd126467%_
                                                 _%K126468%_
                                                 _%rest126469%_
                                                 _%r126470%_)
                                                (if (eq? 'runtime:
                                                         _%$e126479%_)
                                                    (_%import-runtime126155%_
                                                     _%hd126467%_
                                                     _%K126468%_
                                                     _%rest126469%_
                                                     _%r126470%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx126149%_
                                                     _%hd126467%_)))))
                                      (if (string? _%e126476%_)
                                          (_%import1126153%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd126467%_
                                             (gx#stx-source _%stx126149%_)))
                                           _%K126468%_
                                           _%rest126469%_
                                           _%r126470%_)
                                          (if (##structure-instance-of?
                                               _%e126476%_
                                               'gx#module-context::t)
                                              (_%K126468%_
                                               _%rest126469%_
                                               (cons _%e126476%_ _%r126470%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx126149%_
                                               _%hd126467%_))))))))))
                 (_%import1126153%_
                  (lambda (_%ctx126456%_
                           _%K126457%_
                           _%rest126458%_
                           _%r126459%_)
                    (let ((_%dphi126461%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K126457%_
                       _%rest126458%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx126456%_
                              _%dphi126461%_
                              (map (lambda (_%g126462126464%_)
                                     (gx#core-module-export->import__%
                                      _%g126462126464%_
                                      '#f
                                      _%dphi126461%_))
                                   (##unchecked-structure-ref
                                    _%ctx126456%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r126459%_)))))
                 (_%import-submodule126154%_
                  (lambda (_%hd126423%_ _%K126424%_ _%rest126425%_ _%r126426%_)
                    (let* ((_%e126427126434%_ _%hd126423%_)
                           (_%E126429126438%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126427126434%_)))
                           (_%E126428126452%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126427126434%_)
                                  (let ((_%e126430126442%_
                                         (gx#syntax-e _%e126427126434%_)))
                                    (let ((_%hd126431126445%_
                                           (##car _%e126430126442%_))
                                          (_%tl126432126447%_
                                           (##cdr _%e126430126442%_)))
                                      (let ((_%spath126450%_
                                             _%tl126432126447%_))
                                        (_%import1126153%_
                                         (_%import-spec-source126157%_
                                          _%spath126450%_)
                                         _%K126424%_
                                         _%rest126425%_
                                         _%r126426%_))))
                                  (_%E126429126438%_)))))
                      (_%E126428126452%_))))
                 (_%import-runtime126155%_
                  (lambda (_%hd126390%_ _%K126391%_ _%rest126392%_ _%r126393%_)
                    (let* ((_%e126394126401%_ _%hd126390%_)
                           (_%E126396126405%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126394126401%_)))
                           (_%E126395126419%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126394126401%_)
                                  (let ((_%e126397126409%_
                                         (gx#syntax-e _%e126394126401%_)))
                                    (let ((_%hd126398126412%_
                                           (##car _%e126397126409%_))
                                          (_%tl126399126414%_
                                           (##cdr _%e126397126409%_)))
                                      (let ((_%spath126417%_
                                             _%tl126399126414%_))
                                        (_%K126391%_
                                         _%rest126392%_
                                         (cons (_%import-spec-source126157%_
                                                _%spath126417%_)
                                               _%r126393%_)))))
                                  (_%E126396126405%_)))))
                      (_%E126395126419%_))))
                 (_%import-spec126156%_
                  (lambda (_%hd126228%_ _%K126229%_ _%rest126230%_ _%r126231%_)
                    (let* ((_%e126232126249%_ _%hd126228%_)
                           (_%E126241126253%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126232126249%_)))
                           (_%E126234126364%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126232126249%_)
                                  (let ((_%e126242126257%_
                                         (gx#syntax-e _%e126232126249%_)))
                                    (let ((_%hd126243126260%_
                                           (##car _%e126242126257%_))
                                          (_%tl126244126262%_
                                           (##cdr _%e126242126257%_)))
                                      (if (gx#stx-pair? _%tl126244126262%_)
                                          (let ((_%e126245126265%_
                                                 (gx#syntax-e
                                                  _%tl126244126262%_)))
                                            (let ((_%hd126246126268%_
                                                   (##car _%e126245126265%_))
                                                  (_%tl126247126270%_
                                                   (##cdr _%e126245126265%_)))
                                              (let* ((_%path126273%_
                                                      _%hd126246126268%_)
                                                     (_%specs126275%_
                                                      _%tl126247126270%_))
                                                (let ((_%src-ctx126277%_
                                                       (_%import-spec-source126157%_
                                                        _%path126273%_))
                                                      (_%exports126278%_
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
                                                      (_%specs126279%_
                                                       (gx#syntax->list
                                                        _%specs126275%_)))
                                                  (for-each
                                                   (lambda (_%out126281%_)
                                                     (__hash-put!
                                                      _%exports126278%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out126281%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out126281%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out126281%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx126277%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K126229%_
                                                   _%rest126230%_
                                                   (__foldl1
                                                    (lambda (_%spec126283%_
                                                             _%r126284%_)
                                                      (let* ((_%e126285126301%_
                                                              _%spec126283%_)
                                                             (_%E126287126305%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e126285126301%_)))
                     (_%E126286126360%_
                      (lambda ()
                        (if (gx#stx-pair? _%e126285126301%_)
                            (let ((_%e126288126309%_
                                   (gx#syntax-e _%e126285126301%_)))
                              (let ((_%hd126289126312%_
                                     (##car _%e126288126309%_))
                                    (_%tl126290126314%_
                                     (##cdr _%e126288126309%_)))
                                (let ((_%phi126317%_ _%hd126289126312%_))
                                  (if (gx#stx-pair? _%tl126290126314%_)
                                      (let ((_%e126291126319%_
                                             (gx#syntax-e _%tl126290126314%_)))
                                        (let ((_%hd126292126322%_
                                               (##car _%e126291126319%_))
                                              (_%tl126293126324%_
                                               (##cdr _%e126291126319%_)))
                                          (let ((_%name126327%_
                                                 _%hd126292126322%_))
                                            (if (gx#stx-pair?
                                                 _%tl126293126324%_)
                                                (let ((_%e126294126329%_
                                                       (gx#syntax-e
                                                        _%tl126293126324%_)))
                                                  (let ((_%hd126295126332%_
                                                         (##car _%e126294126329%_))
                                                        (_%tl126296126334%_
                                                         (##cdr _%e126294126329%_)))
                                                    (let ((_%src-phi126337%_
                                                           _%hd126295126332%_))
                                                      (if (gx#stx-pair?
                                                           _%tl126296126334%_)
                                                          (let ((_%e126297126339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126296126334%_)))
                    (let ((_%hd126298126342%_ (##car _%e126297126339%_))
                          (_%tl126299126344%_ (##cdr _%e126297126339%_)))
                      (let ((_%src-name126347%_ _%hd126298126342%_))
                        (if (gx#stx-null? _%tl126299126344%_)
                            (if (and (gx#stx-fixnum? _%src-phi126337%_)
                                     (gx#identifier? _%src-name126347%_)
                                     (gx#stx-fixnum? _%phi126317%_)
                                     (gx#identifier? _%name126327%_))
                                (let ((_%src-phi126349%_
                                       (gx#stx-e _%src-phi126337%_))
                                      (_%src-name126350%_
                                       (gx#core-identifier-key
                                        _%src-name126347%_))
                                      (_%phi126351%_ (gx#stx-e _%phi126317%_))
                                      (_%name126352%_
                                       (gx#core-identifier-key
                                        _%name126327%_)))
                                  (let ((_%$e126354%_
                                         (__hash-get
                                          _%exports126278%_
                                          (cons _%src-phi126349%_
                                                _%src-name126350%_))))
                                    (if _%$e126354%_
                                        ((lambda (_%out126357%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out126357%_
                                                  _%name126352%_
                                                  (fx- _%phi126351%_
                                                       _%src-phi126349%_))
                                                 _%r126284%_))
                                         _%$e126354%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx126149%_
                                         _%hd126228%_))))
                                (_%E126287126305%_))
                            (_%E126287126305%_)))))
                  (_%E126287126305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E126287126305%_)))))
                                      (_%E126287126305%_)))))
                            (_%E126287126305%_)))))
                (_%E126286126360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r126231%_
                                                    _%specs126279%_))))))
                                          (_%E126241126253%_))))
                                  (_%E126241126253%_))))
                           (_%E126233126386%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126232126249%_)
                                  (let ((_%e126235126368%_
                                         (gx#syntax-e _%e126232126249%_)))
                                    (let ((_%hd126236126371%_
                                           (##car _%e126235126368%_))
                                          (_%tl126237126373%_
                                           (##cdr _%e126235126368%_)))
                                      (if (gx#stx-pair? _%tl126237126373%_)
                                          (let ((_%e126238126376%_
                                                 (gx#syntax-e
                                                  _%tl126237126373%_)))
                                            (let ((_%hd126239126379%_
                                                   (##car _%e126238126376%_))
                                                  (_%tl126240126381%_
                                                   (##cdr _%e126238126376%_)))
                                              (let ((_%path126384%_
                                                     _%hd126239126379%_))
                                                (if (gx#stx-null?
                                                     _%tl126240126381%_)
                                                    (_%K126229%_
                                                     _%rest126230%_
                                                     (cons (_%import-spec-source126157%_
                                                            _%path126384%_)
                                                           _%r126231%_))
                                                    (_%E126234126364%_)))))
                                          (_%E126234126364%_))))
                                  (_%E126234126364%_)))))
                      (_%E126233126386%_))))
                 (_%import-spec-source126157%_
                  (lambda (_%spath126226%_)
                    (gx#core-import-nested-module
                     _%spath126226%_
                     _%stx126149%_)))
                 (_%import!126158%_
                  (lambda (_%rbody126171%_)
                    (letrec* ((_%current-ctx126173%_
                               (gx#current-expander-context))
                              (_%deps126174%_ (make-hash-table-eq))
                              (_%bind!126175%_
                               (lambda (_%hd126224%_)
                                 (gx#core-bind-import!__1
                                  _%hd126224%_
                                  _%current-ctx126173%_))))
                      (let _%lp126177%_ ((_%rest126179%_ _%rbody126171%_)
                                         (_%body126180%_ '()))
                        (let* ((_%rest126181126189%_ _%rest126179%_)
                               (_%else126183126200%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx126173%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx126173%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx126173%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body126180%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx126197%_ _%_126198%_)
                                     (gx#eval-module _%ctx126197%_))
                                   _%deps126174%_)
                                  _%body126180%_))
                               (_%K126185126212%_
                                (lambda (_%rest126203%_ _%hd126204%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd126204%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!126175%_ _%hd126204%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd126204%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd126204%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps126174%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd126204%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd126204%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!126175%_
                                             (##unchecked-structure-ref
                                              _%hd126204%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd126204%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps126174%_
                                                 (##unchecked-structure-ref
                                                  _%hd126204%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e126208%_
                                                 (##structure-instance-of?
                                                  _%hd126204%_
                                                  'gx#module-context::t)))
                                            (if _%$e126208%_
                                                _%$e126208%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx126149%_
                                                 _%hd126204%_)))))
                                  (_%lp126177%_
                                   _%rest126203%_
                                   (cons _%hd126204%_ _%body126180%_)))))
                          (if (pair? _%rest126181126189%_)
                              (let ((_%hd126186126215%_
                                     (##car _%rest126181126189%_))
                                    (_%tl126187126217%_
                                     (##cdr _%rest126181126189%_)))
                                (let* ((_%hd126220%_ _%hd126186126215%_)
                                       (_%rest126222%_ _%tl126187126217%_))
                                  (_%K126185126212%_
                                   _%rest126222%_
                                   _%hd126220%_)))
                              (_%else126183126200%_)))))))
                 (_%expanded-import?126159%_
                  (lambda (_%e126163%_)
                    (let ((_%$e126165%_
                           (##structure-direct-instance-of?
                            _%e126163%_
                            'gx#import-set::t)))
                      (if _%$e126165%_
                          _%$e126165%_
                          (let ((_%$e126168%_
                                 (##structure-direct-instance-of?
                                  _%e126163%_
                                  'gx#module-import::t)))
                            (if _%$e126168%_
                                _%$e126168%_
                                (##structure-instance-of?
                                 _%e126163%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody126161%_
                 (gx#core-expand-import/export
                  _%stx126149%_
                  _%expanded-import?126159%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1126152%_)))
            (if _%internal-expand?126150%_
                (reverse _%rbody126161%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!126158%_ _%rbody126161%_))
                 (gx#stx-source _%stx126149%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx126488%_)
        (let ((_%internal-expand?126490%_ '#f))
          (gx#core-expand-import%__%
           _%stx126488%_
           _%internal-expand?126490%_))))
    (define gx#core-expand-import%
      (lambda _g129141_
        (let ((_g129140_ (##length _g129141_)))
          (cond ((##fx= _g129140_ 1)
                 (apply gx#core-expand-import%__0 _g129141_))
                ((##fx= _g129140_ 2)
                 (apply gx#core-expand-import%__% _g129141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g129141_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath126076%_ _%where126077%_)
        (let* ((_%e126078126085%_ _%spath126076%_)
               (_%E126080126089%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126078126085%_)))
               (_%E126079126144%_
                (lambda ()
                  (if (gx#stx-pair? _%e126078126085%_)
                      (let ((_%e126081126093%_
                             (gx#syntax-e _%e126078126085%_)))
                        (let ((_%hd126082126096%_ (##car _%e126081126093%_))
                              (_%tl126083126098%_ (##cdr _%e126081126093%_)))
                          (let* ((_%origin126101%_ _%hd126082126096%_)
                                 (_%sub126103%_ _%tl126083126098%_)
                                 (_%origin-ctx126105%_
                                  (if (gx#stx-false? _%origin126101%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin126101%_))))
                            (let _%lp126107%_ ((_%rest126109%_ _%sub126103%_)
                                               (_%ctx126110%_
                                                _%origin-ctx126105%_))
                              (let* ((_%e126111126118%_ _%rest126109%_)
                                     (_%E126113126122%_
                                      (lambda () _%ctx126110%_))
                                     (_%E126112126140%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e126111126118%_)
                                            (let ((_%e126114126126%_
                                                   (gx#syntax-e
                                                    _%e126111126118%_)))
                                              (let ((_%hd126115126129%_
                                                     (##car _%e126114126126%_))
                                                    (_%tl126116126131%_
                                                     (##cdr _%e126114126126%_)))
                                                (let* ((_%id126134%_
                                                        _%hd126115126129%_)
                                                       (_%rest126136%_
                                                        _%tl126116126131%_)
                                                       (_%bind126138%_
                                                        (gx#resolve-identifier__%
                                                         _%id126134%_
                                                         '0
                                                         _%ctx126110%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind126138%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind126138%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where126077%_
                                                       _%spath126076%_
                                                       _%id126134%_))
                                                  (_%lp126107%_
                                                   _%rest126136%_
                                                   (##unchecked-structure-ref
                                                    _%bind126138%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E126113126122%_)))))
                                (_%E126112126140%_))))))
                      (_%E126080126089%_)))))
          (_%E126079126144%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd126074%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd126074%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx125568%_ _%internal-expand?125569%_)
        (letrec* ((_%make-export__129069129070%_
                   (lambda (_%bind126022%_
                            _%phi126023%_
                            _%ctx126024%_
                            _%name126025%_)
                     (let* ((_%key126027%_
                             (##unchecked-structure-ref
                              _%bind126022%_
                              '2
                              '#f
                              '#f))
                            (_%export-key126029%_
                             (if _%name126025%_
                                 (gx#core-identifier-key _%name126025%_)
                                 _%key126027%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx126024%_
                        _%key126027%_
                        _%phi126023%_
                        _%export-key126029%_
                        (let ((_%$e126032%_
                               (##structure-instance-of?
                                _%bind126022%_
                                'gx#extern-binding::t)))
                          (if _%$e126032%_
                              _%$e126032%_
                              (##structure-direct-instance-of?
                               _%bind126022%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__129071129074%_
                   (lambda (_%bind126038%_)
                     (let* ((_%phi126040%_ (gx#current-export-expander-phi))
                            (_%ctx126042%_ (gx#current-expander-context))
                            (_%name126044%_ '#f))
                       (_%make-export__129069129070%_
                        _%bind126038%_
                        _%phi126040%_
                        _%ctx126042%_
                        _%name126044%_))))
                  (_%make-export__1__129072129075%_
                   (lambda (_%bind126046%_ _%phi126047%_)
                     (let* ((_%ctx126049%_ (gx#current-expander-context))
                            (_%name126051%_ '#f))
                       (_%make-export__129069129070%_
                        _%bind126046%_
                        _%phi126047%_
                        _%ctx126049%_
                        _%name126051%_))))
                  (_%make-export__2__129073129076%_
                   (lambda (_%bind126053%_ _%phi126054%_ _%ctx126055%_)
                     (let ((_%name126057%_ '#f))
                       (_%make-export__129069129070%_
                        _%bind126053%_
                        _%phi126054%_
                        _%ctx126055%_
                        _%name126057%_))))
                  (_%make-export125571%_
                   (lambda _g129143_
                     (let ((_g129142_ (##length _g129143_)))
                       (cond ((##fx= _g129142_ 1)
                              (apply _%make-export__0__129071129074%_
                                     _g129143_))
                             ((##fx= _g129142_ 2)
                              (apply _%make-export__1__129072129075%_
                                     _g129143_))
                             ((##fx= _g129142_ 3)
                              (apply _%make-export__2__129073129076%_
                                     _g129143_))
                             ((##fx= _g129142_ 4)
                              (apply _%make-export__129069129070%_ _g129143_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129143_))))))
                  (_%expand1125572%_
                   (lambda (_%hd125727%_
                            _%K125728%_
                            _%rest125729%_
                            _%r125730%_)
                     (let* ((_%e125731125763%_ _%hd125727%_)
                            (_%E125758125767%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx125568%_
                                _%hd125727%_)))
                            (_%E125748125851%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125731125763%_)
                                   (let ((_%e125759125771%_
                                          (gx#syntax-e _%e125731125763%_)))
                                     (let ((_%hd125760125774%_
                                            (##car _%e125759125771%_))
                                           (_%tl125761125776%_
                                            (##cdr _%e125759125771%_)))
                                       (if (eq? (gx#stx-e _%hd125760125774%_)
                                                'import:)
                                           (let ((_%in125779%_
                                                  _%tl125761125776%_))
                                             (if (gx#stx-list? _%in125779%_)
                                                 (let _%lp125781%_ ((_%in-rest125783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in125779%_)
                            (_%r125784%_ _%r125730%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e125785125792%_
                                                           _%in-rest125783%_)
                                                          (_%E125787125796%_
                                                           (lambda ()
                                                             (_%K125728%_
                                                              _%rest125729%_
                                                              _%r125784%_)))
                                                          (_%E125786125847%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e125785125792%_)
                         (let ((_%e125788125800%_
                                (gx#syntax-e _%e125785125792%_)))
                           (let ((_%hd125789125803%_ (##car _%e125788125800%_))
                                 (_%tl125790125805%_
                                  (##cdr _%e125788125800%_)))
                             (let* ((_%hd125808%_ _%hd125789125803%_)
                                    (_%in-rest125810%_ _%tl125790125805%_)
                                    (_%src125845%_
                                     (if (gx#core-bound-module? _%hd125808%_)
                                         (gx#syntax-local-e__0 _%hd125808%_)
                                         (if (gx#core-library-module-path?
                                              _%hd125808%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd125808%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd125808%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd125808%_))
                                                 (if (gx#stx-string?
                                                      _%hd125808%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd125808%_
                                                       (gx#stx-source
                                                        _%stx125568%_)))
                                                     (let* ((_%e125816125823%_
                                                             _%hd125808%_)
                                                            (_%E125818125827%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx125568%_
                                                                _%hd125808%_)))
                                                            (_%E125817125841%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e125816125823%_)
                           (let ((_%e125819125831%_
                                  (gx#syntax-e _%e125816125823%_)))
                             (let ((_%hd125820125834%_
                                    (##car _%e125819125831%_))
                                   (_%tl125821125836%_
                                    (##cdr _%e125819125831%_)))
                               (if (eq? (gx#stx-e _%hd125820125834%_) 'in:)
                                   (let ((_%spath125839%_ _%tl125821125836%_))
                                     (gx#core-import-nested-module
                                      _%spath125839%_
                                      _%stx125568%_))
                                   (_%E125818125827%_))))
                           (_%E125818125827%_)))))
               (_%E125817125841%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp125781%_
                                _%in-rest125810%_
                                (_%export-imports125573%_
                                 _%src125845%_
                                 _%r125784%_)))))
                         (_%E125787125796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125786125847%_)))
                                                 (_%E125758125767%_)))
                                           (_%E125758125767%_))))
                                   (_%E125758125767%_))))
                            (_%E125735125891%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125731125763%_)
                                   (let ((_%e125749125855%_
                                          (gx#syntax-e _%e125731125763%_)))
                                     (let ((_%hd125750125858%_
                                            (##car _%e125749125855%_))
                                           (_%tl125751125860%_
                                            (##cdr _%e125749125855%_)))
                                       (if (eq? (gx#stx-e _%hd125750125858%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl125751125860%_)
                                               (let ((_%e125752125863%_
                                                      (gx#syntax-e
                                                       _%tl125751125860%_)))
                                                 (let ((_%hd125753125866%_
                                                        (##car _%e125752125863%_))
                                                       (_%tl125754125868%_
                                                        (##cdr _%e125752125863%_)))
                                                   (let ((_%id125871%_
                                                          _%hd125753125866%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125754125868%_)
                                                         (let ((_%e125755125873%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125754125868%_)))
                   (let ((_%hd125756125876%_ (##car _%e125755125873%_))
                         (_%tl125757125878%_ (##cdr _%e125755125873%_)))
                     (let ((_%name125881%_ _%hd125756125876%_))
                       (if (gx#stx-null? _%tl125757125878%_)
                           (let* ((_%phi125883%_
                                   (gx#current-export-expander-phi))
                                  (_%$e125885%_
                                   (gx#core-resolve-identifier__1
                                    _%id125871%_
                                    _%phi125883%_)))
                             (if _%$e125885%_
                                 ((lambda (_%bind125888%_)
                                    (_%K125728%_
                                     _%rest125729%_
                                     (cons (_%make-export__129069129070%_
                                            _%bind125888%_
                                            _%phi125883%_
                                            (gx#current-expander-context)
                                            _%name125881%_)
                                           _%r125730%_)))
                                  _%$e125885%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx125568%_
                                  _%hd125727%_
                                  _%id125871%_)))
                           (_%E125748125851%_)))))
                 (_%E125748125851%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125748125851%_))
                                           (_%E125748125851%_))))
                                   (_%E125748125851%_))))
                            (_%E125734125941%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125731125763%_)
                                   (let ((_%e125736125895%_
                                          (gx#syntax-e _%e125731125763%_)))
                                     (let ((_%hd125737125898%_
                                            (##car _%e125736125895%_))
                                           (_%tl125738125900%_
                                            (##cdr _%e125736125895%_)))
                                       (if (eq? (gx#stx-e _%hd125737125898%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl125738125900%_)
                                               (let ((_%e125739125903%_
                                                      (gx#syntax-e
                                                       _%tl125738125900%_)))
                                                 (let ((_%hd125740125906%_
                                                        (##car _%e125739125903%_))
                                                       (_%tl125741125908%_
                                                        (##cdr _%e125739125903%_)))
                                                   (let ((_%phi125911%_
                                                          _%hd125740125906%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125741125908%_)
                                                         (let ((_%e125742125913%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125741125908%_)))
                   (let ((_%hd125743125916%_ (##car _%e125742125913%_))
                         (_%tl125744125918%_ (##cdr _%e125742125913%_)))
                     (let ((_%id125921%_ _%hd125743125916%_))
                       (if (gx#stx-pair? _%tl125744125918%_)
                           (let ((_%e125745125923%_
                                  (gx#syntax-e _%tl125744125918%_)))
                             (let ((_%hd125746125926%_
                                    (##car _%e125745125923%_))
                                   (_%tl125747125928%_
                                    (##cdr _%e125745125923%_)))
                               (let ((_%name125931%_ _%hd125746125926%_))
                                 (if (gx#stx-null? _%tl125747125928%_)
                                     (if (and (gx#stx-fixnum? _%phi125911%_)
                                              (gx#identifier? _%id125921%_)
                                              (gx#identifier? _%name125931%_))
                                         (let* ((_%phi125933%_
                                                 (gx#stx-e _%phi125911%_))
                                                (_%$e125935%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id125921%_
                                                  _%phi125933%_)))
                                           (if _%$e125935%_
                                               ((lambda (_%bind125938%_)
                                                  (_%K125728%_
                                                   _%rest125729%_
                                                   (cons (_%make-export__129069129070%_
                                                          _%bind125938%_
                                                          _%phi125933%_
                                                          (gx#current-expander-context)
                                                          _%name125931%_)
                                                         _%r125730%_)))
                                                _%$e125935%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx125568%_
                                                _%hd125727%_
                                                _%id125921%_)))
                                         (_%E125735125891%_))
                                     (_%E125735125891%_)))))
                           (_%E125735125891%_)))))
                 (_%E125735125891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125735125891%_))
                                           (_%E125735125891%_))))
                                   (_%E125735125891%_))))
                            (_%E125733125953%_
                             (lambda ()
                               (let ((_%id125945%_ _%e125731125763%_))
                                 (if (gx#identifier? _%id125945%_)
                                     (let ((_%$e125947%_
                                            (gx#core-resolve-identifier__1
                                             _%id125945%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e125947%_
                                           ((lambda (_%bind125950%_)
                                              (_%K125728%_
                                               _%rest125729%_
                                               (cons (_%make-export__0__129071129074%_
                                                      _%bind125950%_)
                                                     _%r125730%_)))
                                            _%$e125947%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx125568%_
                                            _%hd125727%_)))
                                     (_%E125734125941%_)))))
                            (_%E125732126017%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e125731125763%_) '#t)
                                   (let* ((_%current-ctx125957%_
                                           (gx#current-expander-context))
                                          (_%current-phi125959%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx125961%_
                                           (gx#core-context-shift
                                            _%current-ctx125957%_
                                            _%current-phi125959%_))
                                          (_%phi-bind125963%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx125961%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp125966%_ ((_%bind-rest125968%_
                                                         _%phi-bind125963%_)
                                                        (_%set125969%_ '()))
                                       (let* ((_%bind-rest125970125980%_
                                               _%bind-rest125968%_)
                                              (_%else125972125988%_
                                               (lambda ()
                                                 (_%K125728%_
                                                  _%rest125729%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi125959%_
                                                         _%set125969%_)
                                                        _%r125730%_))))
                                              (_%K125974125998%_
                                               (lambda (_%bind-rest125991%_
                                                        _%bind125992%_
                                                        _%key125993%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind125992%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind125992%_))
                                                     (_%lp125966%_
                                                      _%bind-rest125991%_
                                                      _%set125969%_)
                                                     (_%lp125966%_
                                                      _%bind-rest125991%_
                                                      (cons (_%make-export__2__129073129076%_
                                                             _%bind125992%_
                                                             _%current-phi125959%_
                                                             _%current-ctx125957%_)
                                                            _%set125969%_))))))
                                         (if (pair? _%bind-rest125970125980%_)
                                             (let ((_%hd125975126001%_
                                                    (##car _%bind-rest125970125980%_))
                                                   (_%tl125976126003%_
                                                    (##cdr _%bind-rest125970125980%_)))
                                               (if (pair? _%hd125975126001%_)
                                                   (let ((_%hd125977126006%_
                                                          (##car _%hd125975126001%_))
                                                         (_%tl125978126008%_
                                                          (##cdr _%hd125975126001%_)))
                                                     (let* ((_%key126011%_
                                                             _%hd125977126006%_)
                                                            (_%bind126013%_
                                                             _%tl125978126008%_)
                                                            (_%bind-rest126015%_
                                                             _%tl125976126003%_))
                                                       (_%K125974125998%_
                                                        _%bind-rest126015%_
                                                        _%bind126013%_
                                                        _%key126011%_)))
                                                   (_%else125972125988%_)))
                                             (_%else125972125988%_)))))
                                   (_%E125733125953%_)))))
                       (_%E125732126017%_))))
                  (_%export-imports125573%_
                   (lambda (_%src125603%_ _%r125604%_)
                     (letrec* ((_%current-ctx125606%_
                                (gx#current-expander-context))
                               (_%current-phi125607%_
                                (gx#current-export-expander-phi))
                               (_%import->export125608%_
                                (lambda (_%in125689%_)
                                  (let* ((_%in125690125698%_ _%in125689%_)
                                         (_%E125692125702%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in125690125698%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K125693125709%_
                                          (lambda (_%phi125705%_
                                                   _%key125706%_
                                                   _%out125707%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx125606%_
                                             _%key125706%_
                                             _%phi125705%_
                                             _%key125706%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in125690125698%_
                                         'gx#module-import::t)
                                        (let* ((_%e125694125712%_
                                                (##unchecked-structure-ref
                                                 _%in125690125698%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out125715%_
                                                _%e125694125712%_)
                                               (_%e125695125717%_
                                                (##unchecked-structure-ref
                                                 _%in125690125698%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key125720%_
                                                _%e125695125717%_)
                                               (_%e125696125722%_
                                                (##unchecked-structure-ref
                                                 _%in125690125698%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi125725%_
                                                _%e125696125722%_))
                                          (_%K125693125709%_
                                           _%phi125725%_
                                           _%key125720%_
                                           _%out125715%_))
                                        (_%E125692125702%_)))))
                               (_%fold-e125609%_
                                (lambda (_%in125611%_ _%r125612%_)
                                  (let* ((_%in125613125627%_ _%in125611%_)
                                         (_%else125616125635%_
                                          (lambda () _%r125612%_)))
                                    (let ((_%K125622125671%_
                                           (lambda (_%phi125667%_
                                                    _%key125668%_
                                                    _%out125669%_)
                                             (if (and (fx= _%phi125667%_
                                                           _%current-phi125607%_)
                                                      (eq? _%src125603%_
                                                           (##unchecked-structure-ref
                                                            _%out125669%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export125608%_
                                                        _%in125611%_)
                                                       _%r125612%_)
                                                 _%r125612%_)))
                                          (_%K125618125646%_
                                           (lambda (_%imports125639%_
                                                    _%phi125640%_
                                                    _%ctx125641%_)
                                             (if (and (fx= _%phi125640%_
                                                           _%current-phi125607%_)
                                                      (eq? _%src125603%_
                                                           _%ctx125641%_))
                                                 (__foldl1
                                                  (lambda (_%in125643%_
                                                           _%r125644%_)
                                                    (cons (_%import->export125608%_
                                                           _%in125643%_)
                                                          _%r125644%_))
                                                  _%r125612%_
                                                  _%imports125639%_)
                                                 _%r125612%_))))
                                      (let ((_%try-match125615125664%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in125613125627%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e125619125649%_
                                                           (##unchecked-structure-ref
                                                            _%in125613125627%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e125620125654%_
                                                           (##unchecked-structure-ref
                                                            _%in125613125627%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e125621125659%_
                                                           (##unchecked-structure-ref
                                                            _%in125613125627%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx125652%_
                                                            _%e125619125649%_)
                                                           (_%phi125657%_
                                                            _%e125620125654%_)
                                                           (_%imports125662%_
                                                            _%e125621125659%_))
                                                       (_%K125618125646%_
                                                        _%imports125662%_
                                                        _%phi125657%_
                                                        _%ctx125652%_)))
                                                   (_%else125616125635%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in125613125627%_
                                             'gx#module-import::t)
                                            (let* ((_%e125623125674%_
                                                    (##unchecked-structure-ref
                                                     _%in125613125627%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e125624125679%_
                                                    (##unchecked-structure-ref
                                                     _%in125613125627%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e125625125684%_
                                                    (##unchecked-structure-ref
                                                     _%in125613125627%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out125677%_
                                                     _%e125623125674%_)
                                                    (_%key125682%_
                                                     _%e125624125679%_)
                                                    (_%phi125687%_
                                                     _%e125625125684%_))
                                                (_%K125622125671%_
                                                 _%phi125687%_
                                                 _%key125682%_
                                                 _%out125677%_)))
                                            (_%try-match125615125664%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src125603%_
                              _%current-phi125607%_
                              (__foldl1
                               _%fold-e125609%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx125606%_
                                '8
                                '#f
                                '#f)))
                             _%r125604%_))))
                  (_%export!125574%_
                   (lambda (_%rbody125590%_)
                     (letrec* ((_%current-ctx125592%_
                                (gx#current-expander-context))
                               (_%fold-e125593%_
                                (lambda (_%out125597%_ _%r125598%_)
                                  (if (##structure-direct-instance-of?
                                       _%out125597%_
                                       'gx#module-export::t)
                                      (cons _%out125597%_ _%r125598%_)
                                      (if (##structure-direct-instance-of?
                                           _%out125597%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r125598%_
                                           (##unchecked-structure-ref
                                            _%out125597%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r125598%_)))))
                       (let ((_%body125595%_ (reverse _%rbody125590%_)))
                         (##unchecked-structure-set!
                          _%current-ctx125592%_
                          (__foldl1
                           _%fold-e125593%_
                           (##unchecked-structure-ref
                            _%current-ctx125592%_
                            '9
                            '#f
                            '#f)
                           _%body125595%_)
                          '9
                          '#f
                          '#f)
                         _%body125595%_))))
                  (_%expanded-export?125575%_
                   (lambda (_%e125585%_)
                     (let ((_%$e125587%_
                            (##structure-direct-instance-of?
                             _%e125585%_
                             'gx#module-export::t)))
                       (if _%$e125587%_
                           _%$e125587%_
                           (##structure-direct-instance-of?
                            _%e125585%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?125569%_)
              (let ((_%rbody125581%_
                     (gx#core-expand-import/export
                      _%stx125568%_
                      _%expanded-export?125575%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1125572%_)))
                (if _%internal-expand?125569%_
                    (reverse _%rbody125581%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!125574%_ _%rbody125581%_))
                     (gx#stx-source _%stx125568%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx125568%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx125568%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx126067%_)
        (let ((_%internal-expand?126069%_ '#f))
          (gx#core-expand-export%__%
           _%stx126067%_
           _%internal-expand?126069%_))))
    (define gx#core-expand-export%
      (lambda _g129145_
        (let ((_g129144_ (##length _g129145_)))
          (cond ((##fx= _g129144_ 1)
                 (apply gx#core-expand-export%__0 _g129145_))
                ((##fx= _g129144_ 2)
                 (apply gx#core-expand-export%__% _g129145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g129145_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd125565%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd125565%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx125535%_)
        (let* ((_%e125536125543%_ _%stx125535%_)
               (_%E125538125547%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125536125543%_)))
               (_%E125537125561%_
                (lambda ()
                  (if (gx#stx-pair? _%e125536125543%_)
                      (let ((_%e125539125551%_
                             (gx#syntax-e _%e125536125543%_)))
                        (let ((_%hd125540125554%_ (##car _%e125539125551%_))
                              (_%tl125541125556%_ (##cdr _%e125539125551%_)))
                          (let ((_%body125559%_ _%tl125541125556%_))
                            (if (gx#identifier-list? _%body125559%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body125559%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body125559%_))
                                   (gx#stx-source _%stx125535%_)))
                                (_%E125538125547%_)))))
                      (_%E125538125547%_)))))
          (_%E125537125561%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id125501%_ _%private?125502%_ _%phi125503%_ _%ctx125504%_)
        (gx#core-bind-syntax!__%
         _%id125501%_
         ((if _%private?125502%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id125501%_))
         _%private?125502%_
         _%phi125503%_
         _%ctx125504%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id125509%_)
        (let* ((_%private?125511%_ '#f)
               (_%phi125513%_ (gx#current-expander-phi))
               (_%ctx125515%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125509%_
           _%private?125511%_
           _%phi125513%_
           _%ctx125515%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id125517%_ _%private?125518%_)
        (let* ((_%phi125520%_ (gx#current-expander-phi))
               (_%ctx125522%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125517%_
           _%private?125518%_
           _%phi125520%_
           _%ctx125522%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id125524%_ _%private?125525%_ _%phi125526%_)
        (let ((_%ctx125528%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125524%_
           _%private?125525%_
           _%phi125526%_
           _%ctx125528%_))))
    (define gx#core-bind-feature!
      (lambda _g129147_
        (let ((_g129146_ (##length _g129147_)))
          (cond ((##fx= _g129146_ 1)
                 (apply gx#core-bind-feature!__0 _g129147_))
                ((##fx= _g129146_ 2)
                 (apply gx#core-bind-feature!__1 _g129147_))
                ((##fx= _g129146_ 3)
                 (apply gx#core-bind-feature!__2 _g129147_))
                ((##fx= _g129146_ 4)
                 (apply gx#core-bind-feature!__% _g129147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g129147_))))))))
