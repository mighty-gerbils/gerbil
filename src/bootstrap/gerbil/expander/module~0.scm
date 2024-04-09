(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712573431)
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
      (lambda _%$args124891%_
        (apply make-instance gx#module-import::t _%$args124891%_)))
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
      (lambda _%$args124888%_
        (apply make-instance gx#module-export::t _%$args124888%_)))
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
      (lambda _%$args124885%_
        (apply make-instance gx#import-set::t _%$args124885%_)))
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
      (lambda _%$args124882%_
        (apply make-instance gx#export-set::t _%$args124882%_)))
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
      (lambda _%$args124879%_
        (apply make-instance gx#import-expander::t _%$args124879%_)))
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
      (lambda _%$args124876%_
        (apply make-instance gx#export-expander::t _%$args124876%_)))
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
      (lambda _%$args124873%_
        (apply make-instance gx#import-export-expander::t _%$args124873%_)))
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
      (lambda (_%path124870%_ _%fun124871%_)
        (call-with-input-file
         (cons 'path: (cons _%path124870%_ gx#source-file-settings))
         _%fun124871%_)))
    (define gx#module-context:::init!
      (lambda (_%self124853%_
               _%id124854%_
               _%super124855%_
               _%ns124856%_
               _%path124857%_)
        (let ((_%self124860%_ _%self124853%_))
          (if (##fx< '11 (##structure-length _%self124860%_))
              (begin
                (##unchecked-structure-set!
                 _%self124860%_
                 _%id124854%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124860%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124860%_
                 _%super124855%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self124860%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self124860%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self124860%_
                 _%ns124856%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124860%_
                 _%path124857%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self124860%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self124860%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self124860%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self124860%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self124860%_
                     '11
                     (##vector-length _%self124860%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124686%_ _%ctx124687%_ _%root124688%_)
        (let* ((_%self124691%_ _%self124686%_)
               (_%super124707%_
                (let ((_%$e124701%_ _%root124688%_))
                  (if _%$e124701%_
                      _%$e124701%_
                      (let ((_%$e124704%_ (gx#core-context-root__0)))
                        (if _%$e124704%_
                            _%$e124704%_
                            (let ((__obj124935
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor124936
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj124935
                                      ':init!)))
                                (if __constructor124936
                                    (__constructor124936 __obj124935)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj124935)))))))
          (if _%ctx124687%_
              (let ((_%id124710%_
                     (##structure-ref
                      _%ctx124687%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path124711%_
                     (##structure-ref
                      _%ctx124687%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in124712%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx124687%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e124713%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx124687%_)))))
                (if (##fx< '8 (##structure-length _%self124691%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self124691%_
                       _%id124710%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124691%_
                       (make-hash-table-eq 'size: (##length _%in124712%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124691%_
                       _%super124707%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124691%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124691%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124691%_
                       _%path124711%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124691%_
                       _%in124712%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124691%_
                       _%e124713%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self124691%_
                           '8
                           (##vector-length _%self124691%_)))
                (##for-each
                 (lambda (_%g124714124716%_)
                   (gx#core-bind-weak-import!__%
                    _%g124714124716%_
                    _%self124691%_))
                 _%in124712%_))
              (if (##fx< '8 (##structure-length _%self124691%_))
                  (begin
                    (##unchecked-structure-set! _%self124691%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self124691%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self124691%_
                     _%super124707%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self124691%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self124691%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self124691%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self124691%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self124691%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self124691%_
                         '8
                         (##vector-length _%self124691%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124722%_ _%ctx124723%_)
        (let ((_%root124725%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124722%_
           _%ctx124723%_
           _%root124725%_))))
    (define gx#prelude-context:::init!
      (lambda _g124942_
        (let ((_g124941_ (##length _g124942_)))
          (cond ((##fx= _g124941_ 2)
                 (apply gx#prelude-context:::init!__0 _g124942_))
                ((##fx= _g124941_ 3)
                 (apply gx#prelude-context:::init!__% _g124942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g124942_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124560%_ _%e124561%_)
        (if (##fx< '3 (##structure-length _%self124560%_))
            (begin
              (##unchecked-structure-set!
               _%self124560%_
               _%e124561%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124560%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124560%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124560%_
                   '3
                   (##vector-length _%self124560%_)))))
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
      (lambda (_%g124186124189%_ _%g124187124191%_)
        (gx#core-apply-user-expander__%
         _%g124186124189%_
         _%g124187124191%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124057124060%_ _%g124058124062%_)
        (gx#core-apply-user-expander__%
         _%g124057124060%_
         _%g124058124062%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx123928%_)
        (let* ((_%path123930%_
                (##structure-ref _%ctx123928%_ '7 gx#module-context::t '#f))
               (_%path123932%_
                (if (pair? _%path123930%_)
                    (last _%path123930%_)
                    _%path123930%_)))
          (if (string? _%path123932%_) _%path123932%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path123904%_ _%reload?123905%_ _%eval?123906%_)
        (let ((_%ctx123908%_
               ((gx#current-expander-module-import)
                _%path123904%_
                _%reload?123905%_)))
          (if (and _%ctx123908%_ _%eval?123906%_)
              (gx#eval-module _%ctx123908%_)
              '#!void)
          _%ctx123908%_)))
    (define gx#import-module__0
      (lambda (_%path123913%_)
        (let* ((_%reload?123915%_ '#f) (_%eval?123917%_ '#f))
          (gx#import-module__%
           _%path123913%_
           _%reload?123915%_
           _%eval?123917%_))))
    (define gx#import-module__1
      (lambda (_%path123919%_ _%reload?123920%_)
        (let ((_%eval?123922%_ '#f))
          (gx#import-module__%
           _%path123919%_
           _%reload?123920%_
           _%eval?123922%_))))
    (define gx#import-module
      (lambda _g124944_
        (let ((_g124943_ (##length _g124944_)))
          (cond ((##fx= _g124943_ 1) (apply gx#import-module__0 _g124944_))
                ((##fx= _g124943_ 2) (apply gx#import-module__1 _g124944_))
                ((##fx= _g124943_ 3) (apply gx#import-module__% _g124944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g124944_))))))
    (define gx#eval-module
      (lambda (_%mod123901%_)
        ((gx#current-expander-module-eval) _%mod123901%_)))
    (define gx#core-eval-module
      (lambda (_%obj123881%_)
        (letrec ((_%force-e123883%_
                  (lambda (_%getf123897%_ _%e123898%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf123897%_ _%e123898%_)))
                     gx#current-expander-context
                     _%e123898%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur123885%_ ((_%e123887%_ _%obj123881%_))
            (if (##structure-instance-of? _%e123887%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e123890%_
                         (gx#core-context-prelude__% _%e123887%_)))
                    (if _%$e123890%_ (_%recur123885%_ _%$e123890%_) '#!void))
                  (_%force-e123883%_ gx#module-context-e _%e123887%_))
                (if (##structure-instance-of?
                     _%e123887%_
                     'gx#prelude-context::t)
                    (_%force-e123883%_ gx#prelude-context-e _%e123887%_)
                    (if (gx#stx-string? _%e123887%_)
                        (_%recur123885%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e123887%_)))
                        (if (gx#core-library-module-path? _%e123887%_)
                            (_%recur123885%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e123887%_)))
                            (error '"cannot eval module" _%obj123881%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx123861%_)
        (let _%lp123863%_ ((_%e123865%_ _%ctx123861%_))
          (if (or (##structure-instance-of? _%e123865%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e123865%_ 'gx#local-context::t))
              (_%lp123863%_ (##unchecked-structure-ref _%e123865%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e123865%_ 'gx#prelude-context::t)
                  _%e123865%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx123877%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx123877%_))))
    (define gx#core-context-prelude
      (lambda _g124946_
        (let ((_g124945_ (##length _g124946_)))
          (cond ((##fx= _g124945_ 0)
                 (apply gx#core-context-prelude__0 _g124946_))
                ((##fx= _g124945_ 1)
                 (apply gx#core-context-prelude__% _g124946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g124946_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx123852%_)
        (let ((_%$e123854%_ (hash-get gx#__module-registry _%ctx123852%_)))
          (if _%$e123854%_
              _%$e123854%_
              (let ((_%pre123858%_
                     (let ((__obj124937
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
                       (gx#prelude-context:::init! __obj124937 _%ctx123852%_)
                       __obj124937)))
                (hash-put! gx#__module-registry _%ctx123852%_ _%pre123858%_)
                _%pre123858%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath123724%_ _%reload?123725%_)
        (letrec ((_%import-source123727%_
                  (lambda (_%path123816%_)
                    (if (member _%path123816%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path123816%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g124947_ (gx#core-read-module _%path123816%_)))
                         (begin
                           (let ((_g124948_
                                  (if (##values? _g124947_)
                                      (##vector-length _g124947_)
                                      1)))
                             (if (not (##fx= _g124948_ 4))
                                 (error "Context expects 4 values" _g124948_)))
                           (let ((_%pre123819%_ (##vector-ref _g124947_ 0))
                                 (_%id123820%_ (##vector-ref _g124947_ 1))
                                 (_%ns123821%_ (##vector-ref _g124947_ 2))
                                 (_%body123822%_ (##vector-ref _g124947_ 3)))
                             (let* ((_%prelude123832%_
                                     (if (##structure-instance-of?
                                          _%pre123819%_
                                          'gx#prelude-context::t)
                                         _%pre123819%_
                                         (if (##structure-instance-of?
                                              _%pre123819%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre123819%_)
                                             (if (string? _%pre123819%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre123819%_))
                                                 (if (not _%pre123819%_)
                                                     (let ((_%$e123828%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e123828%_
                                                           _%$e123828%_
                                                           (let ((__obj124938
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
                     (gx#prelude-context:::init! __obj124938 '#f)
                     __obj124938)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath123724%_
                                                            _%pre123819%_))))))
                                    (_%ctx123834%_
                                     (let ((__obj124939
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
                                        __obj124939
                                        _%id123820%_
                                        _%prelude123832%_
                                        _%ns123821%_
                                        _%path123816%_)
                                       __obj124939))
                                    (_%body123836%_
                                     (gx#core-expand-module-begin
                                      _%body123822%_
                                      _%ctx123834%_))
                                    (_%body123838%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body123836%_)
                                      _%path123816%_
                                      _%ctx123834%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx123834%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body123838%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx123834%_
                                _%body123838%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path123816%_
                                _%ctx123834%_)
                               (hash-put!
                                gx#__module-registry
                                _%id123820%_
                                _%ctx123834%_)
                               _%ctx123834%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path123816%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule123728%_
                  (lambda (_%rpath123744%_)
                    (let* ((_%rpath123745123752%_ _%rpath123744%_)
                           (_%E123747123756%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath123745123752%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K123748123804%_
                            (lambda (_%refs123759%_ _%origin123760%_)
                              (let ((_%ctx123762%_
                                     (if _%origin123760%_
                                         (gx#core-import-module__%
                                          _%origin123760%_
                                          _%reload?123725%_)
                                         (gx#current-expander-context))))
                                (let _%lp123764%_ ((_%rest123766%_
                                                    _%refs123759%_)
                                                   (_%ctx123767%_
                                                    _%ctx123762%_))
                                  (let* ((_%rest123768123776%_ _%rest123766%_)
                                         (_%else123770123784%_
                                          (lambda () _%ctx123767%_))
                                         (_%K123772123792%_
                                          (lambda (_%rest123787%_ _%id123788%_)
                                            (let ((_%bind123790%_
                                                   (gx#resolve-identifier__%
                                                    _%id123788%_
                                                    '0
                                                    _%ctx123767%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind123790%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind123790%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp123764%_
                                                   _%rest123787%_
                                                   (##unchecked-structure-ref
                                                    _%bind123790%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath123744%_
                                                         _%id123788%_
                                                         _%bind123790%_))))))
                                    (if (##pair? _%rest123768123776%_)
                                        (let ((_%hd123773123795%_
                                               (##car _%rest123768123776%_))
                                              (_%tl123774123797%_
                                               (##cdr _%rest123768123776%_)))
                                          (let* ((_%id123800%_
                                                  _%hd123773123795%_)
                                                 (_%rest123802%_
                                                  _%tl123774123797%_))
                                            (_%K123772123792%_
                                             _%rest123802%_
                                             _%id123800%_)))
                                        (_%else123770123784%_))))))))
                      (if (##pair? _%rpath123745123752%_)
                          (let ((_%hd123749123807%_
                                 (##car _%rpath123745123752%_))
                                (_%tl123750123809%_
                                 (##cdr _%rpath123745123752%_)))
                            (let* ((_%origin123812%_ _%hd123749123807%_)
                                   (_%refs123814%_ _%tl123750123809%_))
                              (_%K123748123804%_
                               _%refs123814%_
                               _%origin123812%_)))
                          (_%E123747123756%_))))))
          (let ((_%$e123730%_
                 (if (not _%reload?123725%_)
                     (hash-get gx#__module-registry _%rpath123724%_)
                     '#f)))
            (if _%$e123730%_
                _%$e123730%_
                (if (list? _%rpath123724%_)
                    (_%import-submodule123728%_ _%rpath123724%_)
                    (if (gx#core-library-module-path? _%rpath123724%_)
                        (let ((_%ctx123735%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath123724%_)
                                _%reload?123725%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath123724%_
                           _%ctx123735%_)
                          _%ctx123735%_)
                        (let* ((_%npath123738%_
                                (path-normalize _%rpath123724%_))
                               (_%$e123740%_
                                (if (not _%reload?123725%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath123738%_)
                                    '#f)))
                          (if _%$e123740%_
                              _%$e123740%_
                              (_%import-source123727%_
                               _%npath123738%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath123845%_)
        (let ((_%reload?123847%_ '#f))
          (gx#core-import-module__% _%rpath123845%_ _%reload?123847%_))))
    (define gx#core-import-module
      (lambda _g124950_
        (let ((_g124949_ (##length _g124950_)))
          (cond ((##fx= _g124949_ 1)
                 (apply gx#core-import-module__0 _g124950_))
                ((##fx= _g124949_ 2)
                 (apply gx#core-import-module__% _g124950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g124950_))))))
    (define gx#core-read-module
      (lambda (_%path123713%_)
        (__with-catch
         (lambda (_%exn123715%_)
           (if (and (datum-parsing-exception? _%exn123715%_)
                    (eq? (datum-parsing-exception-filepos _%exn123715%_) '0))
               (gx#core-read-module/lang _%path123713%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path123713%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g123717123719%_)
                      (display-exception _%exn123715%_ _%g123717123719%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path123713%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123565%_)
        (let _%lp123567%_ ((_%body123569%_
                            (read-syntax-from-file _%path123565%_))
                           (_%pre123570%_ '#f)
                           (_%ns123571%_ '#f)
                           (_%pkg123572%_ '#f))
          (let* ((_%e123573123597%_ _%body123569%_)
                 (_%E123589123623%_
                  (lambda ()
                    (let ((_g124951_
                           (if _%pkg123572%_
                               (values _%pre123570%_
                                       _%ns123571%_
                                       _%pkg123572%_)
                               (gx#core-read-module-package
                                _%path123565%_
                                _%pre123570%_
                                _%ns123571%_))))
                      (begin
                        (let ((_g124952_
                               (if (##values? _g124951_)
                                   (##vector-length _g124951_)
                                   1)))
                          (if (not (##fx= _g124952_ 3))
                              (error "Context expects 3 values" _g124952_)))
                        (let ((_%pre123601%_ (##vector-ref _g124951_ 0))
                              (_%ns123602%_ (##vector-ref _g124951_ 1))
                              (_%pkg123603%_ (##vector-ref _g124951_ 2)))
                          (let* ((_%prelude123609%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123601%_)
                                      (gx#syntax-local-e__0 _%pre123601%_)
                                      (if (gx#core-library-module-path?
                                           _%pre123601%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre123601%_)
                                          (if (gx#stx-string? _%pre123601%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre123601%_
                                               _%path123565%_)
                                              (gx#stx-e _%pre123601%_)))))
                                 (_%path-id123611%_
                                  (gx#core-module-path->namespace
                                   _%path123565%_))
                                 (_%pkg-id123613%_
                                  (if _%pkg123603%_
                                      (string-append
                                       _%pkg123603%_
                                       '"/"
                                       _%path-id123611%_)
                                      _%path-id123611%_))
                                 (_%module-id123615%_
                                  (string->symbol _%pkg-id123613%_))
                                 (_%module-ns123620%_
                                  (if (eq? _%ns123602%_ '#!void)
                                      '#f
                                      (let ((_%$e123617%_ _%ns123602%_))
                                        (if _%$e123617%_
                                            _%$e123617%_
                                            _%pkg-id123613%_)))))
                            (values _%prelude123609%_
                                    _%module-id123615%_
                                    _%module-ns123620%_
                                    _%body123569%_)))))))
                 (_%E123582123655%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123573123597%_)
                        (let ((_%e123590123627%_
                               (gx#syntax-e _%e123573123597%_)))
                          (let ((_%hd123591123630%_ (##car _%e123590123627%_))
                                (_%tl123592123632%_ (##cdr _%e123590123627%_)))
                            (if (eq? (gx#stx-e _%hd123591123630%_) 'package:)
                                (if (gx#stx-pair? _%tl123592123632%_)
                                    (let ((_%e123593123635%_
                                           (gx#syntax-e _%tl123592123632%_)))
                                      (let ((_%hd123594123638%_
                                             (##car _%e123593123635%_))
                                            (_%tl123595123640%_
                                             (##cdr _%e123593123635%_)))
                                        (let* ((_%pkg123643%_
                                                _%hd123594123638%_)
                                               (_%rest123645%_
                                                _%tl123595123640%_))
                                          (if '#t
                                              (let ((_%pkg123653%_
                                                     (if (gx#identifier?
                                                          _%pkg123643%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg123643%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123643%_)
                         (gx#stx-false? _%pkg123643%_))
                     (gx#stx-e _%pkg123643%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg123643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123567%_
                                                 _%rest123645%_
                                                 _%pre123570%_
                                                 _%ns123571%_
                                                 _%pkg123653%_))
                                              (_%E123589123623%_)))))
                                    (_%E123589123623%_))
                                (_%E123589123623%_))))
                        (_%E123589123623%_))))
                 (_%E123575123685%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123573123597%_)
                        (let ((_%e123583123659%_
                               (gx#syntax-e _%e123573123597%_)))
                          (let ((_%hd123584123662%_ (##car _%e123583123659%_))
                                (_%tl123585123664%_ (##cdr _%e123583123659%_)))
                            (if (eq? (gx#stx-e _%hd123584123662%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123585123664%_)
                                    (let ((_%e123586123667%_
                                           (gx#syntax-e _%tl123585123664%_)))
                                      (let ((_%hd123587123670%_
                                             (##car _%e123586123667%_))
                                            (_%tl123588123672%_
                                             (##cdr _%e123586123667%_)))
                                        (let* ((_%ns123675%_
                                                _%hd123587123670%_)
                                               (_%rest123677%_
                                                _%tl123588123672%_))
                                          (if '#t
                                              (let ((_%ns123683%_
                                                     (if (gx#identifier?
                                                          _%ns123675%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns123675%_))
                                                         (if (gx#stx-string?
                                                              _%ns123675%_)
                                                             (gx#stx-e
                                                              _%ns123675%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123675%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns123675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123567%_
                                                 _%rest123677%_
                                                 _%pre123570%_
                                                 _%ns123683%_
                                                 _%pkg123572%_))
                                              (_%E123582123655%_)))))
                                    (_%E123582123655%_))
                                (_%E123582123655%_))))
                        (_%E123582123655%_))))
                 (_%E123574123709%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123573123597%_)
                        (let ((_%e123576123689%_
                               (gx#syntax-e _%e123573123597%_)))
                          (let ((_%hd123577123692%_ (##car _%e123576123689%_))
                                (_%tl123578123694%_ (##cdr _%e123576123689%_)))
                            (if (eq? (gx#stx-e _%hd123577123692%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123578123694%_)
                                    (let ((_%e123579123697%_
                                           (gx#syntax-e _%tl123578123694%_)))
                                      (let ((_%hd123580123700%_
                                             (##car _%e123579123697%_))
                                            (_%tl123581123702%_
                                             (##cdr _%e123579123697%_)))
                                        (let* ((_%prelude123705%_
                                                _%hd123580123700%_)
                                               (_%rest123707%_
                                                _%tl123581123702%_))
                                          (if '#t
                                              (_%lp123567%_
                                               _%rest123707%_
                                               _%prelude123705%_
                                               _%ns123571%_
                                               _%pkg123572%_)
                                              (_%E123575123685%_)))))
                                    (_%E123575123685%_))
                                (_%E123575123685%_))))
                        (_%E123575123685%_)))))
            (_%E123574123709%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123387%_)
        (letrec ((_%default-read-module-body123389%_
                  (lambda (_%inp123557%_)
                    (let _%lp123559%_ ((_%body123561%_ '()))
                      (let ((_%next123563%_ (read-syntax__% _%inp123557%_)))
                        (if (eof-object? _%next123563%_)
                            (reverse _%body123561%_)
                            (_%lp123559%_
                             (cons _%next123563%_ _%body123561%_)))))))
                 (_%read-body123390%_
                  (lambda (_%inp123475%_
                           _%pre123476%_
                           _%ns123477%_
                           _%pkg123478%_
                           _%args123479%_)
                    (let ((_g124953_
                           (if _%pkg123478%_
                               (values _%pre123476%_
                                       _%ns123477%_
                                       _%pkg123478%_)
                               (gx#core-read-module-package
                                _%path123387%_
                                _%pre123476%_
                                _%ns123477%_))))
                      (begin
                        (let ((_g124954_
                               (if (##values? _g124953_)
                                   (##vector-length _g124953_)
                                   1)))
                          (if (not (##fx= _g124954_ 3))
                              (error "Context expects 3 values" _g124954_)))
                        (let ((_%pre123481%_ (##vector-ref _g124953_ 0))
                              (_%ns123482%_ (##vector-ref _g124953_ 1))
                              (_%pkg123483%_ (##vector-ref _g124953_ 2)))
                          (let* ((_%prelude123485%_
                                  (gx#import-module__0 _%pre123481%_))
                                 (_%read-module-body123540%_
                                  (let ((_%$e123531%_
                                         (__find (lambda (_%e123486123488%_)
                                                   (let* ((_%g123490123500%_
                                                           _%e123486123488%_)
                                                          (_%else123492123508%_
                                                           (lambda () '#f))
                                                          (_%K123494123512%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123490123500%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123495123515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123490123500%_
                          '1
                          '#f
                          '#f))
                        (_%e123496123518%_
                         (##unchecked-structure-ref
                          _%g123490123500%_
                          '2
                          '#f
                          '#f))
                        (_%e123497123521%_
                         (##unchecked-structure-ref
                          _%g123490123500%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123497123521%_ '1)
                       (let ((_%e123498123524%_
                              (##unchecked-structure-ref
                               _%g123490123500%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123526123528%_)
                                (eq? _%g123526123528%_ 'read-module-body))
                              _%e123498123524%_)
                             (_%K123494123512%_)
                             (_%else123492123508%_)))
                       (_%else123492123508%_)))
                 (_%else123492123508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123485%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123531%_
                                        ((lambda (_%xport123534%_)
                                           (let ((_%proc123537%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123534%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123537%_)
                                                 _%proc123537%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123387%_
                                                  _%pre123481%_
                                                  _%proc123537%_))))
                                         _%$e123531%_)
                                        _%default-read-module-body123389%_)))
                                 (_%path-id123542%_
                                  (gx#core-module-path->namespace
                                   _%path123387%_))
                                 (_%pkg-id123544%_
                                  (if _%pkg123483%_
                                      (string-append
                                       _%pkg123483%_
                                       '"/"
                                       _%path-id123542%_)
                                      _%path-id123542%_))
                                 (_%module-id123546%_
                                  (string->symbol _%pkg-id123544%_))
                                 (_%module-ns123551%_
                                  (let ((_%$e123548%_ _%ns123482%_))
                                    (if _%$e123548%_
                                        _%$e123548%_
                                        _%pkg-id123544%_)))
                                 (_%body123554%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123540%_
                                      _%inp123475%_))
                                   gx#current-module-reader-path
                                   _%path123387%_
                                   gx#current-module-reader-args
                                   _%args123479%_)))
                            (values _%prelude123485%_
                                    _%module-id123546%_
                                    _%module-ns123551%_
                                    _%body123554%_)))))))
                 (_%string-e123391%_
                  (lambda (_%obj123469%_ _%what123470%_)
                    (if (string? _%obj123469%_)
                        _%obj123469%_
                        (if (symbol? _%obj123469%_)
                            (symbol->string _%obj123469%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what123470%_)
                             _%path123387%_
                             _%obj123469%_)))))
                 (_%read-lang-args123392%_
                  (lambda (_%inp123424%_ _%args123425%_)
                    (let* ((_%args123426123434%_ _%args123425%_)
                           (_%else123428123442%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123387%_)))
                           (_%K123430123457%_
                            (lambda (_%args123445%_ _%prelude123446%_)
                              (let* ((_%pkg123448%_
                                      (pgetq__0 'package: _%args123445%_))
                                     (_%pkg123450%_
                                      (if _%pkg123448%_
                                          (_%string-e123391%_
                                           _%pkg123448%_
                                           '"package")
                                          '#f))
                                     (_%ns123452%_
                                      (pgetq__0 'namespace: _%args123445%_))
                                     (_%ns123454%_
                                      (if _%ns123452%_
                                          (_%string-e123391%_
                                           _%ns123452%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123390%_
                                 _%inp123424%_
                                 _%prelude123446%_
                                 _%ns123454%_
                                 _%pkg123450%_
                                 _%args123445%_)))))
                      (if (##pair? _%args123426123434%_)
                          (let ((_%hd123431123460%_
                                 (##car _%args123426123434%_))
                                (_%tl123432123462%_
                                 (##cdr _%args123426123434%_)))
                            (let* ((_%prelude123465%_ _%hd123431123460%_)
                                   (_%args123467%_ _%tl123432123462%_))
                              (_%K123430123457%_
                               _%args123467%_
                               _%prelude123465%_)))
                          (_%else123428123442%_)))))
                 (_%read-lang123393%_
                  (lambda (_%inp123398%_)
                    (let* ((_%head123400%_ (read-line _%inp123398%_))
                           (_%$e123402%_
                            (string-index__0 _%head123400%_ '#\space)))
                      (if _%$e123402%_
                          ((lambda (_%ix123405%_)
                             (let ((_%lang123407%_
                                    (substring
                                     _%head123400%_
                                     '0
                                     _%ix123405%_)))
                               (if (equal? _%lang123407%_ '"#lang")
                                   (let* ((_%rest123409%_
                                           (substring
                                            _%head123400%_
                                            (##fx+ _%ix123405%_ '1)
                                            (string-length _%head123400%_)))
                                          (_%args123420%_
                                           (__with-catch
                                            (lambda (_%g123410123412%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123387%_
                                               _%g123410123412%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123409%_
                                               (lambda (_%g123415123417%_)
                                                 (read-all
                                                  _%g123415123417%_
                                                  read)))))))
                                     (_%read-lang-args123392%_
                                      _%inp123398%_
                                      _%args123420%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123387%_))))
                           _%$e123402%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path123387%_)))))
                 (_%read-e123394%_
                  (lambda (_%inp123396%_)
                    (if (eq? (peek-char _%inp123396%_) '#\#)
                        (_%read-lang123393%_ _%inp123396%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123387%_)))))
          (gx#call-with-input-source-file _%path123387%_ _%read-e123394%_))))
    (define gx#core-read-module-package
      (lambda (_%path123335%_ _%pre123336%_ _%ns123337%_)
        (letrec ((_%string-e123339%_
                  (lambda (_%e123382%_)
                    (if (symbol? _%e123382%_)
                        (symbol->string _%e123382%_)
                        (if (string? _%e123382%_)
                            _%e123382%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e123382%_))))))
          (let _%lp123341%_ ((_%dir123343%_ (path-directory _%path123335%_))
                             (_%pkg-path123344%_ '()))
            (let ((_%gerbil.pkg123346%_
                   (path-expand '"gerbil.pkg" _%dir123343%_)))
              (if (##file-exists? _%gerbil.pkg123346%_)
                  (let ((_%plist123348%_
                         (gx#core-library-package-plist__% _%dir123343%_ '#t)))
                    (if (null? _%plist123348%_)
                        (let ((_%pkg123351%_
                               (if (not (null? _%pkg-path123344%_))
                                   (string-join _%pkg-path123344%_ '"/")
                                   '#f)))
                          (values _%pre123336%_ _%ns123337%_ _%pkg123351%_))
                        (if (list? _%plist123348%_)
                            (let* ((_%root123354%_
                                    (pgetq__0 'package: _%plist123348%_))
                                   (_%pkg123358%_
                                    (let ((_%pkg-path123356%_
                                           (if _%root123354%_
                                               (cons (_%string-e123339%_
                                                      _%root123354%_)
                                                     _%pkg-path123344%_)
                                               _%pkg-path123344%_)))
                                      (if (not (null? _%pkg-path123356%_))
                                          (string-join _%pkg-path123356%_ '"/")
                                          '#f)))
                                   (_%ns123365%_
                                    (let ((_%ns123363%_
                                           (let ((_%$e123360%_ _%ns123337%_))
                                             (if _%$e123360%_
                                                 _%$e123360%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist123348%_)))))
                                      (if _%ns123363%_
                                          (_%string-e123339%_ _%ns123363%_)
                                          '#f)))
                                   (_%pre123370%_
                                    (let ((_%$e123367%_ _%pre123336%_))
                                      (if _%$e123367%_
                                          _%$e123367%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist123348%_)))))
                              (values _%pre123370%_
                                      _%ns123365%_
                                      _%pkg123358%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist123348%_))))
                  (let ((_%dir*123374%_
                         (path-strip-trailing-directory-separator
                          _%dir123343%_)))
                    (if (or (__string-empty? _%dir*123374%_)
                            (equal? _%dir123343%_ _%dir*123374%_))
                        (values _%pre123336%_ _%ns123337%_ '#f)
                        (let ((_%xpath123379%_
                               (path-strip-directory _%dir*123374%_))
                              (_%xdir123380%_ (path-directory _%dir*123374%_)))
                          (_%lp123341%_
                           _%xdir123380%_
                           (cons _%xpath123379%_ _%pkg-path123344%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123333%_)
        (path-strip-extension (path-strip-directory _%path123333%_))))
    (define gx#core-module-path->id
      (lambda (_%path123331%_)
        (##string->symbol (gx#core-module-path->namespace _%path123331%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123310%_ _%rel123311%_)
        (let* ((_%path123313%_ (gx#stx-e _%stx-path123310%_))
               (_%path123315%_
                (if (__string-empty? (path-extension _%path123313%_))
                    (##string-append _%path123313%_ '".ss")
                    _%path123313%_)))
          (gx#core-resolve-path__%
           _%path123315%_
           (let ((_%$e123318%_ (gx#stx-source _%stx-path123310%_)))
             (if _%$e123318%_ _%$e123318%_ _%rel123311%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123324%_)
        (let ((_%rel123326%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123324%_ _%rel123326%_))))
    (define gx#core-resolve-module-path
      (lambda _g124956_
        (let ((_g124955_ (##length _g124956_)))
          (cond ((##fx= _g124955_ 1)
                 (apply gx#core-resolve-module-path__0 _g124956_))
                ((##fx= _g124955_ 2)
                 (apply gx#core-resolve-module-path__% _g124956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g124956_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123195%_)
        (let* ((_%spath123197%_ (symbol->string (gx#stx-e _%libpath123195%_)))
               (_%spath123199%_
                (substring
                 _%spath123197%_
                 '1
                 (##string-length _%spath123197%_)))
               (_%ext123201%_ (path-extension _%spath123199%_))
               (_%ssi123203%_
                (if (__string-empty? _%ext123201%_)
                    (##string-append _%spath123199%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123199%_)
                     '".ssi")))
               (_%srcs123207%_
                (if (__string-empty? _%ext123201%_)
                    (##map (lambda (_%ext123205%_)
                             (string-append _%spath123199%_ _%ext123205%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123199%_ '()))))
          (let _%lp123210%_ ((_%rest123212%_ (load-path)))
            (let* ((_%rest123213123222%_ _%rest123212%_)
                   (_%E123216123226%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123213123222%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123218123297%_
                     (lambda (_%rest123237%_ _%dir123238%_)
                       (letrec ((_%resolve123240%_
                                 (lambda (_%ssi123253%_ _%srcs123254%_)
                                   (let ((_%compiled-path123256%_
                                          (path-expand
                                           _%ssi123253%_
                                           _%dir123238%_)))
                                     (if (##file-exists?
                                          _%compiled-path123256%_)
                                         (path-normalize
                                          _%compiled-path123256%_)
                                         (let _%lpr123258%_ ((_%rest-src123260%_
                                                              _%srcs123254%_))
                                           (let* ((_%rest-src123261123269%_
                                                   _%rest-src123260%_)
                                                  (_%else123263123277%_
                                                   (lambda ()
                                                     (_%lp123210%_
                                                      _%rest123237%_)))
                                                  (_%K123265123285%_
                                                   (lambda (_%rest-src123280%_
                                                            _%src123281%_)
                                                     (let ((_%src-path123283%_
                                                            (path-expand
                                                             _%src123281%_
                                                             _%dir123238%_)))
                                                       (if (##file-exists?
                                                            _%src-path123283%_)
                                                           (path-normalize
                                                            _%src-path123283%_)
                                                           (_%lpr123258%_
                                                            _%rest-src123280%_))))))
                                             (if (##pair? _%rest-src123261123269%_)
                                                 (let ((_%hd123266123288%_
                                                        (##car _%rest-src123261123269%_))
                                                       (_%tl123267123290%_
                                                        (##cdr _%rest-src123261123269%_)))
                                                   (let* ((_%src123293%_
                                                           _%hd123266123288%_)
                                                          (_%rest-src123295%_
                                                           _%tl123267123290%_))
                                                     (_%K123265123285%_
                                                      _%rest-src123295%_
                                                      _%src123293%_)))
                                                 (_%else123263123277%_)))))))))
                         (let ((_%$e123242%_
                                (gx#core-library-package-path-prefix
                                 _%dir123238%_)))
                           (if _%$e123242%_
                               ((lambda (_%prefix123245%_)
                                  (if (string-prefix?
                                       _%prefix123245%_
                                       _%spath123199%_)
                                      (let ((_%ssi123249%_
                                             (substring
                                              _%ssi123203%_
                                              (string-length _%prefix123245%_)
                                              (##string-length _%ssi123203%_)))
                                            (_%srcs123250%_
                                             (##map (lambda (_%src123247%_)
                                                      (substring
                                                       _%src123247%_
                                                       (string-length
                                                        _%prefix123245%_)
                                                       (string-length
                                                        _%src123247%_)))
                                                    _%srcs123207%_)))
                                        (_%resolve123240%_
                                         _%ssi123249%_
                                         _%srcs123250%_))
                                      (_%lp123210%_ _%rest123237%_)))
                                _%$e123242%_)
                               (_%resolve123240%_
                                _%ssi123203%_
                                _%srcs123207%_))))))
                    (_%K123217123231%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123195%_))))
                (let ((_%try-match123215123234%_
                       (lambda ()
                         (if (##null? _%rest123213123222%_)
                             (_%K123217123231%_)
                             (_%E123216123226%_)))))
                  (if (##pair? _%rest123213123222%_)
                      (let ((_%tl123220123302%_ (##cdr _%rest123213123222%_))
                            (_%hd123219123300%_ (##car _%rest123213123222%_)))
                        (let ((_%dir123305%_ _%hd123219123300%_)
                              (_%rest123307%_ _%tl123220123302%_))
                          (_%K123218123297%_ _%rest123307%_ _%dir123305%_)))
                      (_%try-match123215123234%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123163%_)
        (letrec ((_%resolve123165%_
                  (lambda (_%path123186%_ _%base123187%_)
                    (let ((_%$e123189%_
                           (string-rindex__0 _%base123187%_ '#\/)))
                      (if _%$e123189%_
                          ((lambda (_%idx123192%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123187%_ '0 _%idx123192%_)
                                '"/"
                                _%path123186%_))))
                           _%$e123189%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path123186%_))))))))
          (let ((_%spath123167%_ (symbol->string (gx#stx-e _%modpath123163%_)))
                (_%mod123168%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123168%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123163%_))
            (let ((_%mpath123170%_
                   (symbol->string
                    (##structure-ref
                     _%mod123168%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123172%_ ((_%spath123174%_ _%spath123167%_)
                                 (_%mpath123175%_ _%mpath123170%_))
                (if (string-prefix? '"../" _%spath123174%_)
                    (let ((_%$e123178%_
                           (string-rindex__0 _%mpath123175%_ '#\/)))
                      (if _%$e123178%_
                          ((lambda (_%idx123181%_)
                             (_%lp123172%_
                              (substring
                               _%spath123174%_
                               '3
                               (string-length _%spath123174%_))
                              (substring _%mpath123175%_ '0 _%idx123181%_)))
                           _%$e123178%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath123163%_)))
                    (if (string-prefix? '"./" _%spath123174%_)
                        (_%lp123172%_
                         (substring
                          _%spath123174%_
                          '2
                          (string-length _%spath123174%_))
                         _%mpath123175%_)
                        (_%resolve123165%_
                         _%spath123174%_
                         _%mpath123175%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123155%_)
        (let ((_%$e123157%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123155%_))))
          (if _%$e123157%_
              ((lambda (_%pkg123160%_)
                 (##string-append (symbol->string _%pkg123160%_) '"/"))
               _%$e123157%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123125%_ _%exists?123126%_)
        (let ((_%$e123128%_ (hash-get gx#__module-pkg-cache _%dir123125%_)))
          (if _%$e123128%_
              (values _%$e123128%_)
              (let* ((_%gerbil.pkg123132%_
                      (path-expand '"gerbil.pkg" _%dir123125%_))
                     (_%plist123142%_
                      (if (or _%exists?123126%_
                              (##file-exists? _%gerbil.pkg123132%_))
                          (let ((_%e123137%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg123132%_
                                  read)))
                            (if (eof-object? _%e123137%_)
                                '()
                                (if (list? _%e123137%_)
                                    _%e123137%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg123132%_
                                     _%e123137%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir123125%_ _%plist123142%_)
                _%plist123142%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123148%_)
        (let ((_%exists?123150%_ '#f))
          (gx#core-library-package-plist__% _%dir123148%_ _%exists?123150%_))))
    (define gx#core-library-package-plist
      (lambda _g124958_
        (let ((_g124957_ (##length _g124958_)))
          (cond ((##fx= _g124957_ 1)
                 (apply gx#core-library-package-plist__0 _g124958_))
                ((##fx= _g124957_ 2)
                 (apply gx#core-library-package-plist__% _g124958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g124958_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123122%_)
        (gx#core-special-module-path? _%stx123122%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123120%_)
        (gx#core-special-module-path? _%stx123120%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123115%_ _%char123116%_)
        (if (gx#identifier? _%stx123115%_)
            (if (interned-symbol? (gx#stx-e _%stx123115%_))
                (let ((_%str123118%_
                       (symbol->string (gx#stx-e _%stx123115%_))))
                  (if (##fx> (##string-length _%str123118%_) '1)
                      (eq? (string-ref _%str123118%_ '0) _%char123116%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123109%_)
        (gx#core-bound-identifier?__%
         _%stx123109%_
         (lambda (_%g123110123112%_)
           (gx#expander-binding?__% _%g123110123112%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123103%_)
        (gx#core-bound-identifier?__%
         _%stx123103%_
         (lambda (_%g123104123106%_)
           (gx#expander-binding?__% _%g123104123106%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123090%_)
        (letrec ((_%module-prelude?123092%_
                  (lambda (_%e123098%_)
                    (let ((_%$e123100%_
                           (##structure-instance-of?
                            _%e123098%_
                            'gx#module-context::t)))
                      (if _%$e123100%_
                          _%$e123100%_
                          (##structure-instance-of?
                           _%e123098%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123090%_
           (lambda (_%g123093123095%_)
             (gx#expander-binding?__%
              _%g123093123095%_
              _%module-prelude?123092%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123020%_ _%ctx123021%_ _%force-weak?123022%_)
        (let* ((_%in123023123032%_ _%in123020%_)
               (_%E123025123036%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123023123032%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123026123049%_
                (lambda (_%weak?123039%_
                         _%phi123040%_
                         _%key123041%_
                         _%source123042%_)
                  (gx#core-bind!__%
                   _%key123041%_
                   (let ((_%e123044%_
                          (gx#core-resolve-module-export _%source123042%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123044%_ '1 '#f '#f)
                      _%key123041%_
                      _%phi123040%_
                      _%e123044%_
                      (##unchecked-structure-ref _%source123042%_ '1 '#f '#f)
                      (let ((_%$e123046%_ _%force-weak?123022%_))
                        (if _%$e123046%_ _%$e123046%_ _%weak?123039%_))))
                   gx#core-context-rebind?
                   _%phi123040%_
                   _%ctx123021%_))))
          (if (##structure-direct-instance-of?
               _%in123023123032%_
               'gx#module-import::t)
              (let* ((_%e123027123052%_
                      (##unchecked-structure-ref
                       _%in123023123032%_
                       '1
                       '#f
                       '#f))
                     (_%source123055%_ _%e123027123052%_)
                     (_%e123028123057%_
                      (##unchecked-structure-ref
                       _%in123023123032%_
                       '2
                       '#f
                       '#f))
                     (_%key123060%_ _%e123028123057%_)
                     (_%e123029123062%_
                      (##unchecked-structure-ref
                       _%in123023123032%_
                       '3
                       '#f
                       '#f))
                     (_%phi123065%_ _%e123029123062%_)
                     (_%e123030123067%_
                      (##unchecked-structure-ref
                       _%in123023123032%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123070%_ _%e123030123067%_))
                (_%K123026123049%_
                 _%weak?123070%_
                 _%phi123065%_
                 _%key123060%_
                 _%source123055%_))
              (_%E123025123036%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123075%_)
        (let* ((_%ctx123077%_ (gx#current-expander-context))
               (_%force-weak?123079%_ '#f))
          (gx#core-bind-import!__%
           _%in123075%_
           _%ctx123077%_
           _%force-weak?123079%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123081%_ _%ctx123082%_)
        (let ((_%force-weak?123084%_ '#f))
          (gx#core-bind-import!__%
           _%in123081%_
           _%ctx123082%_
           _%force-weak?123084%_))))
    (define gx#core-bind-import!
      (lambda _g124960_
        (let ((_g124959_ (##length _g124960_)))
          (cond ((##fx= _g124959_ 1) (apply gx#core-bind-import!__0 _g124960_))
                ((##fx= _g124959_ 2) (apply gx#core-bind-import!__1 _g124960_))
                ((##fx= _g124959_ 3) (apply gx#core-bind-import!__% _g124960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g124960_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123006%_ _%ctx123007%_)
        (gx#core-bind-import!__% _%in123006%_ _%ctx123007%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123012%_)
        (let ((_%ctx123014%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123012%_ _%ctx123014%_))))
    (define gx#core-bind-weak-import!
      (lambda _g124962_
        (let ((_g124961_ (##length _g124962_)))
          (cond ((##fx= _g124961_ 1)
                 (apply gx#core-bind-weak-import!__0 _g124962_))
                ((##fx= _g124961_ 2)
                 (apply gx#core-bind-weak-import!__% _g124962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g124962_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out122897%_)
        (letrec ((_%subst122899%_
                  (lambda (_%key122945%_)
                    (let* ((_%key122946122954%_ _%key122945%_)
                           (_%else122948122962%_ (lambda () _%key122945%_))
                           (_%K122950122993%_
                            (lambda (_%mark122965%_ _%id122966%_)
                              (let* ((_%mark122967122973%_ _%mark122965%_)
                                     (_%E122969122977%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark122967122973%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K122970122985%_
                                      (lambda (_%subst122980%_)
                                        (let ((_%$e122982%_
                                               (if _%subst122980%_
                                                   (hash-get
                                                    _%subst122980%_
                                                    _%id122966%_)
                                                   '#f)))
                                          (if _%$e122982%_
                                              _%$e122982%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key122945%_))))))
                                (if (##structure-instance-of?
                                     _%mark122967122973%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e122971122988%_
                                            (##unchecked-structure-ref
                                             _%mark122967122973%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst122991%_ _%e122971122988%_))
                                      (_%K122970122985%_ _%subst122991%_))
                                    (_%E122969122977%_))))))
                      (if (##pair? _%key122946122954%_)
                          (let ((_%hd122951122996%_
                                 (##car _%key122946122954%_))
                                (_%tl122952122998%_
                                 (##cdr _%key122946122954%_)))
                            (let* ((_%id123001%_ _%hd122951122996%_)
                                   (_%mark123003%_ _%tl122952122998%_))
                              (_%K122950122993%_ _%mark123003%_ _%id123001%_)))
                          (_%else122948122962%_))))))
          (let* ((_%out122900122910%_ _%out122897%_)
                 (_%E122902122914%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out122900122910%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K122903122921%_
                  (lambda (_%phi122917%_ _%key122918%_ _%ctx122919%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx122919%_ _%phi122917%_)
                     (_%subst122899%_ _%key122918%_)))))
            (if (##structure-direct-instance-of?
                 _%out122900122910%_
                 'gx#module-export::t)
                (let* ((_%e122904122924%_
                        (##unchecked-structure-ref
                         _%out122900122910%_
                         '1
                         '#f
                         '#f))
                       (_%ctx122927%_ _%e122904122924%_)
                       (_%e122905122929%_
                        (##unchecked-structure-ref
                         _%out122900122910%_
                         '2
                         '#f
                         '#f))
                       (_%key122932%_ _%e122905122929%_)
                       (_%e122906122934%_
                        (##unchecked-structure-ref
                         _%out122900122910%_
                         '3
                         '#f
                         '#f))
                       (_%phi122937%_ _%e122906122934%_)
                       (_%e122907122939%_
                        (##unchecked-structure-ref
                         _%out122900122910%_
                         '4
                         '#f
                         '#f))
                       (_%e122908122942%_
                        (##unchecked-structure-ref
                         _%out122900122910%_
                         '5
                         '#f
                         '#f)))
                  (_%K122903122921%_
                   _%phi122937%_
                   _%key122932%_
                   _%ctx122927%_))
                (_%E122902122914%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out122822%_ _%rename122823%_ _%dphi122824%_)
        (let* ((_%out122825122835%_ _%out122822%_)
               (_%E122827122839%_
                (lambda ()
                  (error '"No clause matching"
                         _%out122825122835%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K122828122851%_
                (lambda (_%weak?122842%_
                         _%name122843%_
                         _%phi122844%_
                         _%key122845%_
                         _%ctx122846%_)
                  (##structure
                   gx#module-import::t
                   _%out122822%_
                   (let ((_%$e122848%_ _%rename122823%_))
                     (if _%$e122848%_ _%$e122848%_ _%name122843%_))
                   (fx+ _%phi122844%_ _%dphi122824%_)
                   _%weak?122842%_))))
          (if (##structure-direct-instance-of?
               _%out122825122835%_
               'gx#module-export::t)
              (let* ((_%e122829122854%_
                      (##unchecked-structure-ref
                       _%out122825122835%_
                       '1
                       '#f
                       '#f))
                     (_%ctx122857%_ _%e122829122854%_)
                     (_%e122830122859%_
                      (##unchecked-structure-ref
                       _%out122825122835%_
                       '2
                       '#f
                       '#f))
                     (_%key122862%_ _%e122830122859%_)
                     (_%e122831122864%_
                      (##unchecked-structure-ref
                       _%out122825122835%_
                       '3
                       '#f
                       '#f))
                     (_%phi122867%_ _%e122831122864%_)
                     (_%e122832122869%_
                      (##unchecked-structure-ref
                       _%out122825122835%_
                       '4
                       '#f
                       '#f))
                     (_%name122872%_ _%e122832122869%_)
                     (_%e122833122874%_
                      (##unchecked-structure-ref
                       _%out122825122835%_
                       '5
                       '#f
                       '#f))
                     (_%weak?122877%_ _%e122833122874%_))
                (_%K122828122851%_
                 _%weak?122877%_
                 _%name122872%_
                 _%phi122867%_
                 _%key122862%_
                 _%ctx122857%_))
              (_%E122827122839%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out122882%_)
        (let* ((_%rename122884%_ '#f) (_%dphi122886%_ '0))
          (gx#core-module-export->import__%
           _%out122882%_
           _%rename122884%_
           _%dphi122886%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out122888%_ _%rename122889%_)
        (let ((_%dphi122891%_ '0))
          (gx#core-module-export->import__%
           _%out122888%_
           _%rename122889%_
           _%dphi122891%_))))
    (define gx#core-module-export->import
      (lambda _g124964_
        (let ((_g124963_ (##length _g124964_)))
          (cond ((##fx= _g124963_ 1)
                 (apply gx#core-module-export->import__0 _g124964_))
                ((##fx= _g124963_ 2)
                 (apply gx#core-module-export->import__1 _g124964_))
                ((##fx= _g124963_ 3)
                 (apply gx#core-module-export->import__% _g124964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g124964_))))))
    (define gx#core-expand-module%
      (lambda (_%stx122721%_)
        (letrec ((_%make-context122723%_
                  (lambda (_%id122800%_)
                    (let* ((_%super122802%_ (gx#current-expander-context))
                           (_%bind-id122804%_ (gx#stx-e _%id122800%_))
                           (_%mod-id122806%_
                            (if (##structure-instance-of?
                                 _%super122802%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super122802%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id122804%_)
                                _%bind-id122804%_))
                           (_%ns122808%_ (symbol->string _%mod-id122806%_))
                           (_%path122818%_
                            (if (##structure-instance-of?
                                 _%super122802%_
                                 'gx#module-context::t)
                                (let ((_%path122810%_
                                       (##unchecked-structure-ref
                                        _%super122802%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path122810%_)
                                          (null? _%path122810%_))
                                      (cons _%bind-id122804%_ _%path122810%_)
                                      (if (not _%path122810%_)
                                          _%bind-id122804%_
                                          (cons _%bind-id122804%_
                                                (cons _%path122810%_ '())))))
                                _%bind-id122804%_))
                           (__obj124940
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
                       __obj124940
                       _%mod-id122806%_
                       _%super122802%_
                       _%ns122808%_
                       _%path122818%_)
                      __obj124940)))
                 (_%valid-module-id?122724%_
                  (lambda (_%id122775%_)
                    (let* ((_%str122777%_ (symbol->string _%id122775%_))
                           (_%len122779%_ (##string-length _%str122777%_)))
                      (if (##fx>= _%len122779%_ '1)
                          (let _%loop122782%_ ((_%index122784%_
                                                (##fx- (##string-length
                                                        _%str122777%_)
                                                       '1)))
                            (if (##fx>= _%index122784%_ '0)
                                (let ((_%c122786%_
                                       (string-ref
                                        _%str122777%_
                                        _%index122784%_)))
                                  (if (or (and (##char>=? _%c122786%_ '#\a)
                                               (##char<=? _%c122786%_ '#\z))
                                          (and (##char>=? _%c122786%_ '#\A)
                                               (##char<=? _%c122786%_ '#\Z))
                                          (and (##char>=? _%c122786%_ '#\0)
                                               (##char<=? _%c122786%_ '#\9))
                                          (##char=? _%c122786%_ '#\_)
                                          (##char=? _%c122786%_ '#\-))
                                      (_%loop122782%_
                                       (##fx- _%index122784%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e122725122735%_ _%stx122721%_)
                 (_%E122727122739%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122725122735%_)))
                 (_%E122726122771%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122725122735%_)
                        (let ((_%e122728122743%_
                               (gx#syntax-e _%e122725122735%_)))
                          (let ((_%hd122729122746%_ (##car _%e122728122743%_))
                                (_%tl122730122748%_ (##cdr _%e122728122743%_)))
                            (if (gx#stx-pair? _%tl122730122748%_)
                                (let ((_%e122731122751%_
                                       (gx#syntax-e _%tl122730122748%_)))
                                  (let ((_%hd122732122754%_
                                         (##car _%e122731122751%_))
                                        (_%tl122733122756%_
                                         (##cdr _%e122731122751%_)))
                                    (let* ((_%id122759%_ _%hd122732122754%_)
                                           (_%body122761%_ _%tl122733122756%_))
                                      (if (and (gx#identifier? _%id122759%_)
                                               (gx#stx-list? _%body122761%_))
                                          (if (_%valid-module-id?122724%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx122763%_
                                                      (_%make-context122723%_
                                                       _%id122759%_))
                                                     (_%body122765%_
                                                      (gx#core-expand-module-begin
                                                       _%body122761%_
                                                       _%ctx122763%_))
                                                     (_%body122767%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body122765%_)
                                                       (gx#stx-source
                                                        _%stx122721%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx122763%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body122767%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx122763%_
                                                 _%body122767%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id122759%_
                                                 _%ctx122763%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id122759%_)
                                                  _%body122767%_)
                                                 (gx#stx-source
                                                  _%stx122721%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx122721%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E122727122739%_)))))
                                (_%E122727122739%_))))
                        (_%E122727122739%_)))))
            (_%E122726122771%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122687%_ _%ctx122688%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx122691%_
                   (gx#core-expand-head (cons '%%begin-module _%body122687%_)))
                  (_%e122692122699%_ _%stx122691%_)
                  (_%E122694122703%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx122691%_)))
                  (_%E122693122717%_
                   (lambda ()
                     (if (gx#stx-pair? _%e122692122699%_)
                         (let ((_%e122695122707%_
                                (gx#syntax-e _%e122692122699%_)))
                           (let ((_%hd122696122710%_ (##car _%e122695122707%_))
                                 (_%tl122697122712%_
                                  (##cdr _%e122695122707%_)))
                             (if (and (gx#identifier? _%hd122696122710%_)
                                      (gx#core-identifier=?
                                       _%hd122696122710%_
                                       '%#begin-module))
                                 (let ((_%body122715%_ _%tl122697122712%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx122691%_)
                                           _%body122715%_
                                           (gx#core-expand-module-body
                                            _%body122715%_))
                                       (_%E122694122703%_)))
                                 (_%E122694122703%_))))
                         (_%E122694122703%_)))))
             (_%E122693122717%_)))
         gx#current-expander-context
         _%ctx122688%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122483%_)
        (letrec ((_%expand-special122485%_
                  (lambda (_%hd122614%_ _%K122615%_ _%rest122616%_ _%r122617%_)
                    (let* ((_%e122618122635%_ _%hd122614%_)
                           (_%E122630122639%_
                            (lambda ()
                              (_%K122615%_
                               _%rest122616%_
                               (cons (gx#core-expand-top _%hd122614%_)
                                     _%r122617%_))))
                           (_%E122620122651%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122618122635%_)
                                  (let ((_%e122631122643%_
                                         (gx#syntax-e _%e122618122635%_)))
                                    (let ((_%hd122632122646%_
                                           (##car _%e122631122643%_))
                                          (_%tl122633122648%_
                                           (##cdr _%e122631122643%_)))
                                      (if (and (gx#identifier?
                                                _%hd122632122646%_)
                                               (gx#core-identifier=?
                                                _%hd122632122646%_
                                                '%#export))
                                          (if '#t
                                              (_%K122615%_
                                               _%rest122616%_
                                               (cons _%hd122614%_ _%r122617%_))
                                              (_%E122630122639%_))
                                          (_%E122630122639%_))))
                                  (_%E122630122639%_))))
                           (_%E122619122683%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122618122635%_)
                                  (let ((_%e122621122655%_
                                         (gx#syntax-e _%e122618122635%_)))
                                    (let ((_%hd122622122658%_
                                           (##car _%e122621122655%_))
                                          (_%tl122623122660%_
                                           (##cdr _%e122621122655%_)))
                                      (if (and (gx#identifier?
                                                _%hd122622122658%_)
                                               (gx#core-identifier=?
                                                _%hd122622122658%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122623122660%_)
                                              (let ((_%e122624122663%_
                                                     (gx#syntax-e
                                                      _%tl122623122660%_)))
                                                (let ((_%hd122625122666%_
                                                       (##car _%e122624122663%_))
                                                      (_%tl122626122668%_
                                                       (##cdr _%e122624122663%_)))
                                                  (let ((_%hd-bind122671%_
                                                         _%hd122625122666%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122626122668%_)
                                                        (let ((_%e122627122673%_
                                                               (gx#syntax-e
                                                                _%tl122626122668%_)))
                                                          (let ((_%hd122628122676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122627122673%_))
                        (_%tl122629122678%_ (##cdr _%e122627122673%_)))
                    (let ((_%expr122681%_ _%hd122628122676%_))
                      (if (gx#stx-null? _%tl122629122678%_)
                          (if (gx#core-bind-values? _%hd-bind122671%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122671%_)
                                (_%K122615%_
                                 _%rest122616%_
                                 (cons _%hd122614%_ _%r122617%_)))
                              (_%E122620122651%_))
                          (_%E122620122651%_)))))
                (_%E122620122651%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122620122651%_))
                                          (_%E122620122651%_))))
                                  (_%E122620122651%_)))))
                      (_%E122619122683%_))))
                 (_%expand-body122486%_
                  (lambda (_%rbody122488%_)
                    (let _%lp122490%_ ((_%rest122492%_ _%rbody122488%_)
                                       (_%body122493%_ '()))
                      (let* ((_%rest122494122502%_ _%rest122492%_)
                             (_%else122496122510%_ (lambda () _%body122493%_))
                             (_%K122498122602%_
                              (lambda (_%rest122513%_ _%hd122514%_)
                                (let* ((_%e122515122536%_ _%hd122514%_)
                                       (_%E122531122540%_
                                        (lambda ()
                                          (_%lp122490%_
                                           _%rest122513%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122514%_)
                                                 _%body122493%_))))
                                       (_%E122527122554%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122515122536%_)
                                              (let ((_%e122532122544%_
                                                     (gx#syntax-e
                                                      _%e122515122536%_)))
                                                (let ((_%hd122533122547%_
                                                       (##car _%e122532122544%_))
                                                      (_%tl122534122549%_
                                                       (##cdr _%e122532122544%_)))
                                                  (let ((_%form122552%_
                                                         _%hd122533122547%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122552%_
                                                         gx#special-form-binding?)
                                                        (_%lp122490%_
                                                         _%rest122513%_
                                                         (cons _%hd122514%_
                                                               _%body122493%_))
                                                        (_%E122531122540%_)))))
                                              (_%E122531122540%_))))
                                       (_%E122517122566%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122515122536%_)
                                              (let ((_%e122528122558%_
                                                     (gx#syntax-e
                                                      _%e122515122536%_)))
                                                (let ((_%hd122529122561%_
                                                       (##car _%e122528122558%_))
                                                      (_%tl122530122563%_
                                                       (##cdr _%e122528122558%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122529122561%_)
                                                           (gx#core-identifier=?
                                                            _%hd122529122561%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122490%_
                                                           _%rest122513%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122514%_)
                         _%body122493%_))
                  (_%E122527122554%_))
              (_%E122527122554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122527122554%_))))
                                       (_%E122516122598%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122515122536%_)
                                              (let ((_%e122518122570%_
                                                     (gx#syntax-e
                                                      _%e122515122536%_)))
                                                (let ((_%hd122519122573%_
                                                       (##car _%e122518122570%_))
                                                      (_%tl122520122575%_
                                                       (##cdr _%e122518122570%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122519122573%_)
                                                           (gx#core-identifier=?
                                                            _%hd122519122573%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122520122575%_)
                                                          (let ((_%e122521122578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122520122575%_)))
                    (let ((_%hd122522122581%_ (##car _%e122521122578%_))
                          (_%tl122523122583%_ (##cdr _%e122521122578%_)))
                      (let ((_%hd-bind122586%_ _%hd122522122581%_))
                        (if (gx#stx-pair? _%tl122523122583%_)
                            (let ((_%e122524122588%_
                                   (gx#syntax-e _%tl122523122583%_)))
                              (let ((_%hd122525122591%_
                                     (##car _%e122524122588%_))
                                    (_%tl122526122593%_
                                     (##cdr _%e122524122588%_)))
                                (let ((_%expr122596%_ _%hd122525122591%_))
                                  (if (gx#stx-null? _%tl122526122593%_)
                                      (if '#t
                                          (_%lp122490%_
                                           _%rest122513%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122586%_)
                                                   (gx#core-expand-expression
                                                    _%expr122596%_))
                                                  (gx#stx-source _%hd122514%_))
                                                 _%body122493%_))
                                          (_%E122517122566%_))
                                      (_%E122517122566%_)))))
                            (_%E122517122566%_)))))
                  (_%E122517122566%_))
              (_%E122517122566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122517122566%_)))))
                                  (_%E122516122598%_)))))
                        (if (##pair? _%rest122494122502%_)
                            (let ((_%hd122499122605%_
                                   (##car _%rest122494122502%_))
                                  (_%tl122500122607%_
                                   (##cdr _%rest122494122502%_)))
                              (let* ((_%hd122610%_ _%hd122499122605%_)
                                     (_%rest122612%_ _%tl122500122607%_))
                                (_%K122498122602%_
                                 _%rest122612%_
                                 _%hd122610%_)))
                            (_%else122496122510%_)))))))
          (_%expand-body122486%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122483%_)
            _%expand-special122485%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122324%_
               _%expanded?122325%_
               _%method122326%_
               _%current-phi122327%_
               _%expand1122328%_)
        (letrec ((_%K122330%_
                  (lambda (_%rest122450%_ _%r122451%_)
                    (let* ((_%e122452122459%_ _%rest122450%_)
                           (_%E122454122463%_ (lambda () _%r122451%_))
                           (_%E122453122479%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122452122459%_)
                                  (let ((_%e122455122467%_
                                         (gx#syntax-e _%e122452122459%_)))
                                    (let ((_%hd122456122470%_
                                           (##car _%e122455122467%_))
                                          (_%tl122457122472%_
                                           (##cdr _%e122455122467%_)))
                                      (let* ((_%hd122475%_ _%hd122456122470%_)
                                             (_%rest122477%_
                                              _%tl122457122472%_))
                                        (if '#t
                                            (_%step122331%_
                                             _%hd122475%_
                                             _%rest122477%_
                                             _%r122451%_)
                                            (_%E122454122463%_)))))
                                  (_%E122454122463%_)))))
                      (_%E122453122479%_))))
                 (_%step122331%_
                  (lambda (_%hd122364%_ _%rest122365%_ _%r122366%_)
                    (let* ((_%e122367122385%_ _%hd122364%_)
                           (_%E122380122389%_
                            (lambda ()
                              (if (_%expanded?122325%_ (gx#stx-e _%hd122364%_))
                                  (_%K122330%_
                                   _%rest122365%_
                                   (cons (gx#stx-e _%hd122364%_) _%r122366%_))
                                  (_%expand1122328%_
                                   _%hd122364%_
                                   _%K122330%_
                                   _%rest122365%_
                                   _%r122366%_))))
                           (_%E122376122405%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122367122385%_)
                                  (let ((_%e122381122393%_
                                         (gx#syntax-e _%e122367122385%_)))
                                    (let ((_%hd122382122396%_
                                           (##car _%e122381122393%_))
                                          (_%tl122383122398%_
                                           (##cdr _%e122381122393%_)))
                                      (let* ((_%macro122401%_
                                              _%hd122382122396%_)
                                             (_%body122403%_
                                              _%tl122383122398%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122401%_
                                             gx#syntax-binding?)
                                            (_%K122330%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122401%_)
                                                    _%hd122364%_
                                                    _%method122326%_)
                                                   _%rest122365%_)
                                             _%r122366%_)
                                            (_%E122380122389%_)))))
                                  (_%E122380122389%_))))
                           (_%E122369122419%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122367122385%_)
                                  (let ((_%e122377122409%_
                                         (gx#syntax-e _%e122367122385%_)))
                                    (let ((_%hd122378122412%_
                                           (##car _%e122377122409%_))
                                          (_%tl122379122414%_
                                           (##cdr _%e122377122409%_)))
                                      (if (eq? (gx#stx-e _%hd122378122412%_)
                                               'begin:)
                                          (let ((_%body122417%_
                                                 _%tl122379122414%_))
                                            (if '#t
                                                (_%K122330%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122365%_
                                                  _%body122417%_)
                                                 _%r122366%_)
                                                (_%E122376122405%_)))
                                          (_%E122376122405%_))))
                                  (_%E122376122405%_))))
                           (_%E122368122446%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122367122385%_)
                                  (let ((_%e122370122423%_
                                         (gx#syntax-e _%e122367122385%_)))
                                    (let ((_%hd122371122426%_
                                           (##car _%e122370122423%_))
                                          (_%tl122372122428%_
                                           (##cdr _%e122370122423%_)))
                                      (if (eq? (gx#stx-e _%hd122371122426%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122372122428%_)
                                              (let ((_%e122373122431%_
                                                     (gx#syntax-e
                                                      _%tl122372122428%_)))
                                                (let ((_%hd122374122434%_
                                                       (##car _%e122373122431%_))
                                                      (_%tl122375122436%_
                                                       (##cdr _%e122373122431%_)))
                                                  (let* ((_%dphi122439%_
                                                          _%hd122374122434%_)
                                                         (_%body122441%_
                                                          _%tl122375122436%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122439%_)
                                                        (let ((_%rbody122444%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122330%_ _%body122441%_ '()))
                        _%current-phi122327%_
                        (fx+ (gx#stx-e _%dphi122439%_)
                             (_%current-phi122327%_)))))
                  (_%K122330%_
                   _%rest122365%_
                   (__foldr1 cons _%r122366%_ _%rbody122444%_)))
                (_%E122369122419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122369122419%_))
                                          (_%E122369122419%_))))
                                  (_%E122369122419%_)))))
                      (_%E122368122446%_)))))
          (let* ((_%e122332122339%_ _%stx122324%_)
                 (_%E122334122343%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122332122339%_)))
                 (_%E122333122360%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122332122339%_)
                        (let ((_%e122335122347%_
                               (gx#syntax-e _%e122332122339%_)))
                          (let ((_%hd122336122350%_ (##car _%e122335122347%_))
                                (_%tl122337122352%_ (##cdr _%e122335122347%_)))
                            (let ((_%body122355%_ _%tl122337122352%_))
                              (if '#t
                                  (if (_%current-phi122327%_)
                                      (_%K122330%_ _%body122355%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K122330%_ _%body122355%_ '()))
                                       _%current-phi122327%_
                                       (gx#current-expander-phi)))
                                  (_%E122334122343%_)))))
                        (_%E122334122343%_)))))
            (_%E122333122360%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx121978%_ _%internal-expand?121979%_)
        (letrec ((_%expand1121981%_
                  (lambda (_%hd122296%_ _%K122297%_ _%rest122298%_ _%r122299%_)
                    (if (gx#core-bound-module? _%hd122296%_)
                        (_%import1121982%_
                         (gx#syntax-local-e__0 _%hd122296%_)
                         _%K122297%_
                         _%rest122298%_
                         _%r122299%_)
                        (if (gx#core-library-module-path? _%hd122296%_)
                            (_%import1121982%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd122296%_))
                             _%K122297%_
                             _%rest122298%_
                             _%r122299%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd122296%_)
                                (_%import1121982%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd122296%_))
                                 _%K122297%_
                                 _%rest122298%_
                                 _%r122299%_)
                                (let ((_%e122305%_ (gx#stx-e _%hd122296%_)))
                                  (if (pair? _%e122305%_)
                                      (let ((_%$e122308%_
                                             (gx#stx-e (car _%e122305%_))))
                                        (if (eq? 'spec: _%$e122308%_)
                                            (_%import-spec121985%_
                                             _%hd122296%_
                                             _%K122297%_
                                             _%rest122298%_
                                             _%r122299%_)
                                            (if (eq? 'in: _%$e122308%_)
                                                (_%import-submodule121983%_
                                                 _%hd122296%_
                                                 _%K122297%_
                                                 _%rest122298%_
                                                 _%r122299%_)
                                                (if (eq? 'runtime:
                                                         _%$e122308%_)
                                                    (_%import-runtime121984%_
                                                     _%hd122296%_
                                                     _%K122297%_
                                                     _%rest122298%_
                                                     _%r122299%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx121978%_
                                                     _%hd122296%_)))))
                                      (if (string? _%e122305%_)
                                          (_%import1121982%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd122296%_
                                             (gx#stx-source _%stx121978%_)))
                                           _%K122297%_
                                           _%rest122298%_
                                           _%r122299%_)
                                          (if (##structure-instance-of?
                                               _%e122305%_
                                               'gx#module-context::t)
                                              (_%K122297%_
                                               _%rest122298%_
                                               (cons _%e122305%_ _%r122299%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx121978%_
                                               _%hd122296%_))))))))))
                 (_%import1121982%_
                  (lambda (_%ctx122285%_
                           _%K122286%_
                           _%rest122287%_
                           _%r122288%_)
                    (let ((_%dphi122290%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122286%_
                       _%rest122287%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122285%_
                              _%dphi122290%_
                              (map (lambda (_%g122291122293%_)
                                     (gx#core-module-export->import__%
                                      _%g122291122293%_
                                      '#f
                                      _%dphi122290%_))
                                   (##unchecked-structure-ref
                                    _%ctx122285%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122288%_)))))
                 (_%import-submodule121983%_
                  (lambda (_%hd122252%_ _%K122253%_ _%rest122254%_ _%r122255%_)
                    (let* ((_%e122256122263%_ _%hd122252%_)
                           (_%E122258122267%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122256122263%_)))
                           (_%E122257122281%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122256122263%_)
                                  (let ((_%e122259122271%_
                                         (gx#syntax-e _%e122256122263%_)))
                                    (let ((_%hd122260122274%_
                                           (##car _%e122259122271%_))
                                          (_%tl122261122276%_
                                           (##cdr _%e122259122271%_)))
                                      (let ((_%spath122279%_
                                             _%tl122261122276%_))
                                        (if '#t
                                            (_%import1121982%_
                                             (_%import-spec-source121986%_
                                              _%spath122279%_)
                                             _%K122253%_
                                             _%rest122254%_
                                             _%r122255%_)
                                            (_%E122258122267%_)))))
                                  (_%E122258122267%_)))))
                      (_%E122257122281%_))))
                 (_%import-runtime121984%_
                  (lambda (_%hd122219%_ _%K122220%_ _%rest122221%_ _%r122222%_)
                    (let* ((_%e122223122230%_ _%hd122219%_)
                           (_%E122225122234%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122223122230%_)))
                           (_%E122224122248%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122223122230%_)
                                  (let ((_%e122226122238%_
                                         (gx#syntax-e _%e122223122230%_)))
                                    (let ((_%hd122227122241%_
                                           (##car _%e122226122238%_))
                                          (_%tl122228122243%_
                                           (##cdr _%e122226122238%_)))
                                      (let ((_%spath122246%_
                                             _%tl122228122243%_))
                                        (if '#t
                                            (_%K122220%_
                                             _%rest122221%_
                                             (cons (_%import-spec-source121986%_
                                                    _%spath122246%_)
                                                   _%r122222%_))
                                            (_%E122225122234%_)))))
                                  (_%E122225122234%_)))))
                      (_%E122224122248%_))))
                 (_%import-spec121985%_
                  (lambda (_%hd122057%_ _%K122058%_ _%rest122059%_ _%r122060%_)
                    (let* ((_%e122061122078%_ _%hd122057%_)
                           (_%E122070122082%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122061122078%_)))
                           (_%E122063122193%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122061122078%_)
                                  (let ((_%e122071122086%_
                                         (gx#syntax-e _%e122061122078%_)))
                                    (let ((_%hd122072122089%_
                                           (##car _%e122071122086%_))
                                          (_%tl122073122091%_
                                           (##cdr _%e122071122086%_)))
                                      (if (gx#stx-pair? _%tl122073122091%_)
                                          (let ((_%e122074122094%_
                                                 (gx#syntax-e
                                                  _%tl122073122091%_)))
                                            (let ((_%hd122075122097%_
                                                   (##car _%e122074122094%_))
                                                  (_%tl122076122099%_
                                                   (##cdr _%e122074122094%_)))
                                              (let* ((_%path122102%_
                                                      _%hd122075122097%_)
                                                     (_%specs122104%_
                                                      _%tl122076122099%_))
                                                (if '#t
                                                    (let ((_%src-ctx122106%_
                                                           (_%import-spec-source121986%_
                                                            _%path122102%_))
                                                          (_%exports122107%_
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
                                                          (_%specs122108%_
                                                           (gx#syntax->list
                                                            _%specs122104%_)))
                                                      (for-each
                                                       (lambda (_%out122110%_)
                                                         (hash-put!
                                                          _%exports122107%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122110%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122110%_ '4 '#f '#f))
                  _%out122110%_))
               (##unchecked-structure-ref _%src-ctx122106%_ '9 '#f '#f))
              (_%K122058%_
               _%rest122059%_
               (__foldl1
                (lambda (_%spec122112%_ _%r122113%_)
                  (let* ((_%e122114122130%_ _%spec122112%_)
                         (_%E122116122134%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122114122130%_)))
                         (_%E122115122189%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122114122130%_)
                                (let ((_%e122117122138%_
                                       (gx#syntax-e _%e122114122130%_)))
                                  (let ((_%hd122118122141%_
                                         (##car _%e122117122138%_))
                                        (_%tl122119122143%_
                                         (##cdr _%e122117122138%_)))
                                    (let ((_%phi122146%_ _%hd122118122141%_))
                                      (if (gx#stx-pair? _%tl122119122143%_)
                                          (let ((_%e122120122148%_
                                                 (gx#syntax-e
                                                  _%tl122119122143%_)))
                                            (let ((_%hd122121122151%_
                                                   (##car _%e122120122148%_))
                                                  (_%tl122122122153%_
                                                   (##cdr _%e122120122148%_)))
                                              (let ((_%name122156%_
                                                     _%hd122121122151%_))
                                                (if (gx#stx-pair?
                                                     _%tl122122122153%_)
                                                    (let ((_%e122123122158%_
                                                           (gx#syntax-e
                                                            _%tl122122122153%_)))
                                                      (let ((_%hd122124122161%_
                                                             (##car _%e122123122158%_))
                                                            (_%tl122125122163%_
                                                             (##cdr _%e122123122158%_)))
                                                        (let ((_%src-phi122166%_
                                                               _%hd122124122161%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122125122163%_)
                                                              (let ((_%e122126122168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122125122163%_)))
                        (let ((_%hd122127122171%_ (##car _%e122126122168%_))
                              (_%tl122128122173%_ (##cdr _%e122126122168%_)))
                          (let ((_%src-name122176%_ _%hd122127122171%_))
                            (if (gx#stx-null? _%tl122128122173%_)
                                (if (and (gx#stx-fixnum? _%src-phi122166%_)
                                         (gx#identifier? _%src-name122176%_)
                                         (gx#stx-fixnum? _%phi122146%_)
                                         (gx#identifier? _%name122156%_))
                                    (let ((_%src-phi122178%_
                                           (gx#stx-e _%src-phi122166%_))
                                          (_%src-name122179%_
                                           (gx#core-identifier-key
                                            _%src-name122176%_))
                                          (_%phi122180%_
                                           (gx#stx-e _%phi122146%_))
                                          (_%name122181%_
                                           (gx#core-identifier-key
                                            _%name122156%_)))
                                      (let ((_%$e122183%_
                                             (hash-get
                                              _%exports122107%_
                                              (cons _%src-phi122178%_
                                                    _%src-name122179%_))))
                                        (if _%$e122183%_
                                            ((lambda (_%out122186%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122186%_
                                                      _%name122181%_
                                                      (fx- _%phi122180%_
                                                           _%src-phi122178%_))
                                                     _%r122113%_))
                                             _%$e122183%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx121978%_
                                             _%hd122057%_))))
                                    (_%E122116122134%_))
                                (_%E122116122134%_)))))
                      (_%E122116122134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122116122134%_)))))
                                          (_%E122116122134%_)))))
                                (_%E122116122134%_)))))
                    (_%E122115122189%_)))
                _%r122060%_
                _%specs122108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122070122082%_)))))
                                          (_%E122070122082%_))))
                                  (_%E122070122082%_))))
                           (_%E122062122215%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122061122078%_)
                                  (let ((_%e122064122197%_
                                         (gx#syntax-e _%e122061122078%_)))
                                    (let ((_%hd122065122200%_
                                           (##car _%e122064122197%_))
                                          (_%tl122066122202%_
                                           (##cdr _%e122064122197%_)))
                                      (if (gx#stx-pair? _%tl122066122202%_)
                                          (let ((_%e122067122205%_
                                                 (gx#syntax-e
                                                  _%tl122066122202%_)))
                                            (let ((_%hd122068122208%_
                                                   (##car _%e122067122205%_))
                                                  (_%tl122069122210%_
                                                   (##cdr _%e122067122205%_)))
                                              (let ((_%path122213%_
                                                     _%hd122068122208%_))
                                                (if (gx#stx-null?
                                                     _%tl122069122210%_)
                                                    (if '#t
                                                        (_%K122058%_
                                                         _%rest122059%_
                                                         (cons (_%import-spec-source121986%_
                                                                _%path122213%_)
                                                               _%r122060%_))
                                                        (_%E122063122193%_))
                                                    (_%E122063122193%_)))))
                                          (_%E122063122193%_))))
                                  (_%E122063122193%_)))))
                      (_%E122062122215%_))))
                 (_%import-spec-source121986%_
                  (lambda (_%spath122055%_)
                    (gx#core-import-nested-module
                     _%spath122055%_
                     _%stx121978%_)))
                 (_%import!121987%_
                  (lambda (_%rbody122000%_)
                    (letrec* ((_%current-ctx122002%_
                               (gx#current-expander-context))
                              (_%deps122003%_ (make-hash-table-eq))
                              (_%bind!122004%_
                               (lambda (_%hd122053%_)
                                 (gx#core-bind-import!__1
                                  _%hd122053%_
                                  _%current-ctx122002%_))))
                      (let _%lp122006%_ ((_%rest122008%_ _%rbody122000%_)
                                         (_%body122009%_ '()))
                        (let* ((_%rest122010122018%_ _%rest122008%_)
                               (_%else122012122029%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122002%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122002%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122002%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122009%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122026%_ _%_122027%_)
                                     (gx#eval-module _%ctx122026%_))
                                   _%deps122003%_)
                                  _%body122009%_))
                               (_%K122014122041%_
                                (lambda (_%rest122032%_ _%hd122033%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122033%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122004%_ _%hd122033%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122033%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122033%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122003%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122033%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122033%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122004%_
                                             (##unchecked-structure-ref
                                              _%hd122033%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122033%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122003%_
                                                 (##unchecked-structure-ref
                                                  _%hd122033%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122037%_
                                                 (##structure-instance-of?
                                                  _%hd122033%_
                                                  'gx#module-context::t)))
                                            (if _%$e122037%_
                                                _%$e122037%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx121978%_
                                                 _%hd122033%_)))))
                                  (_%lp122006%_
                                   _%rest122032%_
                                   (cons _%hd122033%_ _%body122009%_)))))
                          (if (##pair? _%rest122010122018%_)
                              (let ((_%hd122015122044%_
                                     (##car _%rest122010122018%_))
                                    (_%tl122016122046%_
                                     (##cdr _%rest122010122018%_)))
                                (let* ((_%hd122049%_ _%hd122015122044%_)
                                       (_%rest122051%_ _%tl122016122046%_))
                                  (_%K122014122041%_
                                   _%rest122051%_
                                   _%hd122049%_)))
                              (_%else122012122029%_)))))))
                 (_%expanded-import?121988%_
                  (lambda (_%e121992%_)
                    (let ((_%$e121994%_
                           (##structure-direct-instance-of?
                            _%e121992%_
                            'gx#import-set::t)))
                      (if _%$e121994%_
                          _%$e121994%_
                          (let ((_%$e121997%_
                                 (##structure-direct-instance-of?
                                  _%e121992%_
                                  'gx#module-import::t)))
                            (if _%$e121997%_
                                _%$e121997%_
                                (##structure-instance-of?
                                 _%e121992%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody121990%_
                 (gx#core-expand-import/export
                  _%stx121978%_
                  _%expanded-import?121988%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1121981%_)))
            (if _%internal-expand?121979%_
                (reverse _%rbody121990%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!121987%_ _%rbody121990%_))
                 (gx#stx-source _%stx121978%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122317%_)
        (let ((_%internal-expand?122319%_ '#f))
          (gx#core-expand-import%__%
           _%stx122317%_
           _%internal-expand?122319%_))))
    (define gx#core-expand-import%
      (lambda _g124966_
        (let ((_g124965_ (##length _g124966_)))
          (cond ((##fx= _g124965_ 1)
                 (apply gx#core-expand-import%__0 _g124966_))
                ((##fx= _g124965_ 2)
                 (apply gx#core-expand-import%__% _g124966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g124966_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath121905%_ _%where121906%_)
        (let* ((_%e121907121914%_ _%spath121905%_)
               (_%E121909121918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121907121914%_)))
               (_%E121908121973%_
                (lambda ()
                  (if (gx#stx-pair? _%e121907121914%_)
                      (let ((_%e121910121922%_
                             (gx#syntax-e _%e121907121914%_)))
                        (let ((_%hd121911121925%_ (##car _%e121910121922%_))
                              (_%tl121912121927%_ (##cdr _%e121910121922%_)))
                          (let* ((_%origin121930%_ _%hd121911121925%_)
                                 (_%sub121932%_ _%tl121912121927%_))
                            (if '#t
                                (let ((_%origin-ctx121934%_
                                       (if (gx#stx-false? _%origin121930%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin121930%_))))
                                  (let _%lp121936%_ ((_%rest121938%_
                                                      _%sub121932%_)
                                                     (_%ctx121939%_
                                                      _%origin-ctx121934%_))
                                    (let* ((_%e121940121947%_ _%rest121938%_)
                                           (_%E121942121951%_
                                            (lambda () _%ctx121939%_))
                                           (_%E121941121969%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e121940121947%_)
                                                  (let ((_%e121943121955%_
                                                         (gx#syntax-e
                                                          _%e121940121947%_)))
                                                    (let ((_%hd121944121958%_
                                                           (##car _%e121943121955%_))
                                                          (_%tl121945121960%_
                                                           (##cdr _%e121943121955%_)))
                                                      (let* ((_%id121963%_
                                                              _%hd121944121958%_)
                                                             (_%rest121965%_
                                                              _%tl121945121960%_))
                                                        (if '#t
                                                            (let ((_%bind121967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id121963%_
                            '0
                            _%ctx121939%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind121967%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind121967%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where121906%_
                           _%spath121905%_
                           _%id121963%_))
                      (_%lp121936%_
                       _%rest121965%_
                       (##unchecked-structure-ref _%bind121967%_ '4 '#f '#f)))
                    (_%E121942121951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121942121951%_)))))
                                      (_%E121941121969%_))))
                                (_%E121909121918%_)))))
                      (_%E121909121918%_)))))
          (_%E121908121973%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd121903%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd121903%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121397%_ _%internal-expand?121398%_)
        (letrec* ((_%make-export__124894124895%_
                   (lambda (_%bind121851%_
                            _%phi121852%_
                            _%ctx121853%_
                            _%name121854%_)
                     (let* ((_%key121856%_
                             (##unchecked-structure-ref
                              _%bind121851%_
                              '2
                              '#f
                              '#f))
                            (_%export-key121858%_
                             (if _%name121854%_
                                 (gx#core-identifier-key _%name121854%_)
                                 _%key121856%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx121853%_
                        _%key121856%_
                        _%phi121852%_
                        _%export-key121858%_
                        (let ((_%$e121861%_
                               (##structure-instance-of?
                                _%bind121851%_
                                'gx#extern-binding::t)))
                          (if _%$e121861%_
                              _%$e121861%_
                              (##structure-direct-instance-of?
                               _%bind121851%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__124896124899%_
                   (lambda (_%bind121867%_)
                     (let* ((_%phi121869%_ (gx#current-export-expander-phi))
                            (_%ctx121871%_ (gx#current-expander-context))
                            (_%name121873%_ '#f))
                       (_%make-export__124894124895%_
                        _%bind121867%_
                        _%phi121869%_
                        _%ctx121871%_
                        _%name121873%_))))
                  (_%make-export__1__124897124900%_
                   (lambda (_%bind121875%_ _%phi121876%_)
                     (let* ((_%ctx121878%_ (gx#current-expander-context))
                            (_%name121880%_ '#f))
                       (_%make-export__124894124895%_
                        _%bind121875%_
                        _%phi121876%_
                        _%ctx121878%_
                        _%name121880%_))))
                  (_%make-export__2__124898124901%_
                   (lambda (_%bind121882%_ _%phi121883%_ _%ctx121884%_)
                     (let ((_%name121886%_ '#f))
                       (_%make-export__124894124895%_
                        _%bind121882%_
                        _%phi121883%_
                        _%ctx121884%_
                        _%name121886%_))))
                  (_%make-export121400%_
                   (lambda _g124968_
                     (let ((_g124967_ (##length _g124968_)))
                       (cond ((##fx= _g124967_ 1)
                              (apply _%make-export__0__124896124899%_
                                     _g124968_))
                             ((##fx= _g124967_ 2)
                              (apply _%make-export__1__124897124900%_
                                     _g124968_))
                             ((##fx= _g124967_ 3)
                              (apply _%make-export__2__124898124901%_
                                     _g124968_))
                             ((##fx= _g124967_ 4)
                              (apply _%make-export__124894124895%_ _g124968_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g124968_))))))
                  (_%expand1121401%_
                   (lambda (_%hd121556%_
                            _%K121557%_
                            _%rest121558%_
                            _%r121559%_)
                     (let* ((_%e121560121592%_ _%hd121556%_)
                            (_%E121587121596%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121397%_
                                _%hd121556%_)))
                            (_%E121577121680%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121560121592%_)
                                   (let ((_%e121588121600%_
                                          (gx#syntax-e _%e121560121592%_)))
                                     (let ((_%hd121589121603%_
                                            (##car _%e121588121600%_))
                                           (_%tl121590121605%_
                                            (##cdr _%e121588121600%_)))
                                       (if (eq? (gx#stx-e _%hd121589121603%_)
                                                'import:)
                                           (let ((_%in121608%_
                                                  _%tl121590121605%_))
                                             (if (gx#stx-list? _%in121608%_)
                                                 (let _%lp121610%_ ((_%in-rest121612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121608%_)
                            (_%r121613%_ _%r121559%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121614121621%_
                                                           _%in-rest121612%_)
                                                          (_%E121616121625%_
                                                           (lambda ()
                                                             (_%K121557%_
                                                              _%rest121558%_
                                                              _%r121613%_)))
                                                          (_%E121615121676%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121614121621%_)
                         (let ((_%e121617121629%_
                                (gx#syntax-e _%e121614121621%_)))
                           (let ((_%hd121618121632%_ (##car _%e121617121629%_))
                                 (_%tl121619121634%_
                                  (##cdr _%e121617121629%_)))
                             (let* ((_%hd121637%_ _%hd121618121632%_)
                                    (_%in-rest121639%_ _%tl121619121634%_))
                               (if '#t
                                   (let ((_%src121674%_
                                          (if (gx#core-bound-module?
                                               _%hd121637%_)
                                              (gx#syntax-local-e__0
                                               _%hd121637%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd121637%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd121637%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121637%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd121637%_))
                                                      (if (gx#stx-string?
                                                           _%hd121637%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd121637%_
                                                            (gx#stx-source
                                                             _%stx121397%_)))
                                                          (let* ((_%e121645121652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd121637%_)
                         (_%E121647121656%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx121397%_
                             _%hd121637%_)))
                         (_%E121646121670%_
                          (lambda ()
                            (if (gx#stx-pair? _%e121645121652%_)
                                (let ((_%e121648121660%_
                                       (gx#syntax-e _%e121645121652%_)))
                                  (let ((_%hd121649121663%_
                                         (##car _%e121648121660%_))
                                        (_%tl121650121665%_
                                         (##cdr _%e121648121660%_)))
                                    (if (eq? (gx#stx-e _%hd121649121663%_)
                                             'in:)
                                        (let ((_%spath121668%_
                                               _%tl121650121665%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath121668%_
                                               _%stx121397%_)
                                              (_%E121647121656%_)))
                                        (_%E121647121656%_))))
                                (_%E121647121656%_)))))
                    (_%E121646121670%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121610%_
                                      _%in-rest121639%_
                                      (_%export-imports121402%_
                                       _%src121674%_
                                       _%r121613%_)))
                                   (_%E121616121625%_)))))
                         (_%E121616121625%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121615121676%_)))
                                                 (_%E121587121596%_)))
                                           (_%E121587121596%_))))
                                   (_%E121587121596%_))))
                            (_%E121564121720%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121560121592%_)
                                   (let ((_%e121578121684%_
                                          (gx#syntax-e _%e121560121592%_)))
                                     (let ((_%hd121579121687%_
                                            (##car _%e121578121684%_))
                                           (_%tl121580121689%_
                                            (##cdr _%e121578121684%_)))
                                       (if (eq? (gx#stx-e _%hd121579121687%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121580121689%_)
                                               (let ((_%e121581121692%_
                                                      (gx#syntax-e
                                                       _%tl121580121689%_)))
                                                 (let ((_%hd121582121695%_
                                                        (##car _%e121581121692%_))
                                                       (_%tl121583121697%_
                                                        (##cdr _%e121581121692%_)))
                                                   (let ((_%id121700%_
                                                          _%hd121582121695%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121583121697%_)
                                                         (let ((_%e121584121702%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121583121697%_)))
                   (let ((_%hd121585121705%_ (##car _%e121584121702%_))
                         (_%tl121586121707%_ (##cdr _%e121584121702%_)))
                     (let ((_%name121710%_ _%hd121585121705%_))
                       (if (gx#stx-null? _%tl121586121707%_)
                           (if '#t
                               (let* ((_%phi121712%_
                                       (gx#current-export-expander-phi))
                                      (_%$e121714%_
                                       (gx#core-resolve-identifier__1
                                        _%id121700%_
                                        _%phi121712%_)))
                                 (if _%$e121714%_
                                     ((lambda (_%bind121717%_)
                                        (_%K121557%_
                                         _%rest121558%_
                                         (cons (_%make-export__124894124895%_
                                                _%bind121717%_
                                                _%phi121712%_
                                                (gx#current-expander-context)
                                                _%name121710%_)
                                               _%r121559%_)))
                                      _%$e121714%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx121397%_
                                      _%hd121556%_
                                      _%id121700%_)))
                               (_%E121577121680%_))
                           (_%E121577121680%_)))))
                 (_%E121577121680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121577121680%_))
                                           (_%E121577121680%_))))
                                   (_%E121577121680%_))))
                            (_%E121563121770%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121560121592%_)
                                   (let ((_%e121565121724%_
                                          (gx#syntax-e _%e121560121592%_)))
                                     (let ((_%hd121566121727%_
                                            (##car _%e121565121724%_))
                                           (_%tl121567121729%_
                                            (##cdr _%e121565121724%_)))
                                       (if (eq? (gx#stx-e _%hd121566121727%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121567121729%_)
                                               (let ((_%e121568121732%_
                                                      (gx#syntax-e
                                                       _%tl121567121729%_)))
                                                 (let ((_%hd121569121735%_
                                                        (##car _%e121568121732%_))
                                                       (_%tl121570121737%_
                                                        (##cdr _%e121568121732%_)))
                                                   (let ((_%phi121740%_
                                                          _%hd121569121735%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121570121737%_)
                                                         (let ((_%e121571121742%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121570121737%_)))
                   (let ((_%hd121572121745%_ (##car _%e121571121742%_))
                         (_%tl121573121747%_ (##cdr _%e121571121742%_)))
                     (let ((_%id121750%_ _%hd121572121745%_))
                       (if (gx#stx-pair? _%tl121573121747%_)
                           (let ((_%e121574121752%_
                                  (gx#syntax-e _%tl121573121747%_)))
                             (let ((_%hd121575121755%_
                                    (##car _%e121574121752%_))
                                   (_%tl121576121757%_
                                    (##cdr _%e121574121752%_)))
                               (let ((_%name121760%_ _%hd121575121755%_))
                                 (if (gx#stx-null? _%tl121576121757%_)
                                     (if (and (gx#stx-fixnum? _%phi121740%_)
                                              (gx#identifier? _%id121750%_)
                                              (gx#identifier? _%name121760%_))
                                         (let* ((_%phi121762%_
                                                 (gx#stx-e _%phi121740%_))
                                                (_%$e121764%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id121750%_
                                                  _%phi121762%_)))
                                           (if _%$e121764%_
                                               ((lambda (_%bind121767%_)
                                                  (_%K121557%_
                                                   _%rest121558%_
                                                   (cons (_%make-export__124894124895%_
                                                          _%bind121767%_
                                                          _%phi121762%_
                                                          (gx#current-expander-context)
                                                          _%name121760%_)
                                                         _%r121559%_)))
                                                _%$e121764%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx121397%_
                                                _%hd121556%_
                                                _%id121750%_)))
                                         (_%E121564121720%_))
                                     (_%E121564121720%_)))))
                           (_%E121564121720%_)))))
                 (_%E121564121720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121564121720%_))
                                           (_%E121564121720%_))))
                                   (_%E121564121720%_))))
                            (_%E121562121782%_
                             (lambda ()
                               (let ((_%id121774%_ _%e121560121592%_))
                                 (if (gx#identifier? _%id121774%_)
                                     (let ((_%$e121776%_
                                            (gx#core-resolve-identifier__1
                                             _%id121774%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e121776%_
                                           ((lambda (_%bind121779%_)
                                              (_%K121557%_
                                               _%rest121558%_
                                               (cons (_%make-export__0__124896124899%_
                                                      _%bind121779%_)
                                                     _%r121559%_)))
                                            _%$e121776%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx121397%_
                                            _%hd121556%_)))
                                     (_%E121563121770%_)))))
                            (_%E121561121846%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121560121592%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx121786%_
                                               (gx#current-expander-context))
                                              (_%current-phi121788%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx121790%_
                                               (gx#core-context-shift
                                                _%current-ctx121786%_
                                                _%current-phi121788%_))
                                              (_%phi-bind121792%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx121790%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp121795%_ ((_%bind-rest121797%_
                                                             _%phi-bind121792%_)
                                                            (_%set121798%_
                                                             '()))
                                           (let* ((_%bind-rest121799121809%_
                                                   _%bind-rest121797%_)
                                                  (_%else121801121817%_
                                                   (lambda ()
                                                     (_%K121557%_
                                                      _%rest121558%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi121788%_
                                                             _%set121798%_)
                                                            _%r121559%_))))
                                                  (_%K121803121827%_
                                                   (lambda (_%bind-rest121820%_
                                                            _%bind121821%_
                                                            _%key121822%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind121821%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind121821%_))
                                                         (_%lp121795%_
                                                          _%bind-rest121820%_
                                                          _%set121798%_)
                                                         (_%lp121795%_
                                                          _%bind-rest121820%_
                                                          (cons (_%make-export__2__124898124901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind121821%_
                         _%current-phi121788%_
                         _%current-ctx121786%_)
                        _%set121798%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest121799121809%_)
                                                 (let ((_%hd121804121830%_
                                                        (##car _%bind-rest121799121809%_))
                                                       (_%tl121805121832%_
                                                        (##cdr _%bind-rest121799121809%_)))
                                                   (if (##pair? _%hd121804121830%_)
                                                       (let ((_%hd121806121835%_
                                                              (##car _%hd121804121830%_))
                                                             (_%tl121807121837%_
                                                              (##cdr _%hd121804121830%_)))
                                                         (let* ((_%key121840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd121806121835%_)
                        (_%bind121842%_ _%tl121807121837%_)
                        (_%bind-rest121844%_ _%tl121805121832%_))
                   (_%K121803121827%_
                    _%bind-rest121844%_
                    _%bind121842%_
                    _%key121840%_)))
               (_%else121801121817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else121801121817%_)))))
                                       (_%E121562121782%_))
                                   (_%E121562121782%_)))))
                       (_%E121561121846%_))))
                  (_%export-imports121402%_
                   (lambda (_%src121432%_ _%r121433%_)
                     (letrec* ((_%current-ctx121435%_
                                (gx#current-expander-context))
                               (_%current-phi121436%_
                                (gx#current-export-expander-phi))
                               (_%import->export121437%_
                                (lambda (_%in121518%_)
                                  (let* ((_%in121519121527%_ _%in121518%_)
                                         (_%E121521121531%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121519121527%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121522121538%_
                                          (lambda (_%phi121534%_
                                                   _%key121535%_
                                                   _%out121536%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121435%_
                                             _%key121535%_
                                             _%phi121534%_
                                             _%key121535%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121519121527%_
                                         'gx#module-import::t)
                                        (let* ((_%e121523121541%_
                                                (##unchecked-structure-ref
                                                 _%in121519121527%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121544%_
                                                _%e121523121541%_)
                                               (_%e121524121546%_
                                                (##unchecked-structure-ref
                                                 _%in121519121527%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121549%_
                                                _%e121524121546%_)
                                               (_%e121525121551%_
                                                (##unchecked-structure-ref
                                                 _%in121519121527%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121554%_
                                                _%e121525121551%_))
                                          (_%K121522121538%_
                                           _%phi121554%_
                                           _%key121549%_
                                           _%out121544%_))
                                        (_%E121521121531%_)))))
                               (_%fold-e121438%_
                                (lambda (_%in121440%_ _%r121441%_)
                                  (let* ((_%in121442121456%_ _%in121440%_)
                                         (_%else121445121464%_
                                          (lambda () _%r121441%_)))
                                    (let ((_%K121451121500%_
                                           (lambda (_%phi121496%_
                                                    _%key121497%_
                                                    _%out121498%_)
                                             (if (and (fx= _%phi121496%_
                                                           _%current-phi121436%_)
                                                      (eq? _%src121432%_
                                                           (##unchecked-structure-ref
                                                            _%out121498%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121437%_
                                                        _%in121440%_)
                                                       _%r121441%_)
                                                 _%r121441%_)))
                                          (_%K121447121475%_
                                           (lambda (_%imports121468%_
                                                    _%phi121469%_
                                                    _%ctx121470%_)
                                             (if (and (fx= _%phi121469%_
                                                           _%current-phi121436%_)
                                                      (eq? _%src121432%_
                                                           _%ctx121470%_))
                                                 (__foldl1
                                                  (lambda (_%in121472%_
                                                           _%r121473%_)
                                                    (cons (_%import->export121437%_
                                                           _%in121472%_)
                                                          _%r121473%_))
                                                  _%r121441%_
                                                  _%imports121468%_)
                                                 _%r121441%_))))
                                      (let ((_%try-match121444121493%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121442121456%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121448121478%_
                                                           (##unchecked-structure-ref
                                                            _%in121442121456%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121449121483%_
                                                           (##unchecked-structure-ref
                                                            _%in121442121456%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121450121488%_
                                                           (##unchecked-structure-ref
                                                            _%in121442121456%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121481%_
                                                            _%e121448121478%_)
                                                           (_%phi121486%_
                                                            _%e121449121483%_)
                                                           (_%imports121491%_
                                                            _%e121450121488%_))
                                                       (_%K121447121475%_
                                                        _%imports121491%_
                                                        _%phi121486%_
                                                        _%ctx121481%_)))
                                                   (_%else121445121464%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121442121456%_
                                             'gx#module-import::t)
                                            (let* ((_%e121452121503%_
                                                    (##unchecked-structure-ref
                                                     _%in121442121456%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121453121508%_
                                                    (##unchecked-structure-ref
                                                     _%in121442121456%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121454121513%_
                                                    (##unchecked-structure-ref
                                                     _%in121442121456%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121506%_
                                                     _%e121452121503%_)
                                                    (_%key121511%_
                                                     _%e121453121508%_)
                                                    (_%phi121516%_
                                                     _%e121454121513%_))
                                                (_%K121451121500%_
                                                 _%phi121516%_
                                                 _%key121511%_
                                                 _%out121506%_)))
                                            (_%try-match121444121493%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121432%_
                              _%current-phi121436%_
                              (__foldl1
                               _%fold-e121438%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121435%_
                                '8
                                '#f
                                '#f)))
                             _%r121433%_))))
                  (_%export!121403%_
                   (lambda (_%rbody121419%_)
                     (letrec* ((_%current-ctx121421%_
                                (gx#current-expander-context))
                               (_%fold-e121422%_
                                (lambda (_%out121426%_ _%r121427%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121426%_
                                       'gx#module-export::t)
                                      (cons _%out121426%_ _%r121427%_)
                                      (if (##structure-direct-instance-of?
                                           _%out121426%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r121427%_
                                           (##unchecked-structure-ref
                                            _%out121426%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r121427%_)))))
                       (let ((_%body121424%_ (reverse _%rbody121419%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121421%_
                          (__foldl1
                           _%fold-e121422%_
                           (##unchecked-structure-ref
                            _%current-ctx121421%_
                            '9
                            '#f
                            '#f)
                           _%body121424%_)
                          '9
                          '#f
                          '#f)
                         _%body121424%_))))
                  (_%expanded-export?121404%_
                   (lambda (_%e121414%_)
                     (let ((_%$e121416%_
                            (##structure-direct-instance-of?
                             _%e121414%_
                             'gx#module-export::t)))
                       (if _%$e121416%_
                           _%$e121416%_
                           (##structure-direct-instance-of?
                            _%e121414%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121398%_)
              (let ((_%rbody121410%_
                     (gx#core-expand-import/export
                      _%stx121397%_
                      _%expanded-export?121404%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1121401%_)))
                (if _%internal-expand?121398%_
                    (reverse _%rbody121410%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!121403%_ _%rbody121410%_))
                     (gx#stx-source _%stx121397%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx121397%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx121397%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx121896%_)
        (let ((_%internal-expand?121898%_ '#f))
          (gx#core-expand-export%__%
           _%stx121896%_
           _%internal-expand?121898%_))))
    (define gx#core-expand-export%
      (lambda _g124970_
        (let ((_g124969_ (##length _g124970_)))
          (cond ((##fx= _g124969_ 1)
                 (apply gx#core-expand-export%__0 _g124970_))
                ((##fx= _g124969_ 2)
                 (apply gx#core-expand-export%__% _g124970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g124970_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121394%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121394%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121364%_)
        (let* ((_%e121365121372%_ _%stx121364%_)
               (_%E121367121376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121365121372%_)))
               (_%E121366121390%_
                (lambda ()
                  (if (gx#stx-pair? _%e121365121372%_)
                      (let ((_%e121368121380%_
                             (gx#syntax-e _%e121365121372%_)))
                        (let ((_%hd121369121383%_ (##car _%e121368121380%_))
                              (_%tl121370121385%_ (##cdr _%e121368121380%_)))
                          (let ((_%body121388%_ _%tl121370121385%_))
                            (if (gx#identifier-list? _%body121388%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121388%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121388%_))
                                   (gx#stx-source _%stx121364%_)))
                                (_%E121367121376%_)))))
                      (_%E121367121376%_)))))
          (_%E121366121390%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121330%_ _%private?121331%_ _%phi121332%_ _%ctx121333%_)
        (gx#core-bind-syntax!__%
         _%id121330%_
         ((if _%private?121331%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121330%_))
         _%private?121331%_
         _%phi121332%_
         _%ctx121333%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121338%_)
        (let* ((_%private?121340%_ '#f)
               (_%phi121342%_ (gx#current-expander-phi))
               (_%ctx121344%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121338%_
           _%private?121340%_
           _%phi121342%_
           _%ctx121344%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121346%_ _%private?121347%_)
        (let* ((_%phi121349%_ (gx#current-expander-phi))
               (_%ctx121351%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121346%_
           _%private?121347%_
           _%phi121349%_
           _%ctx121351%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121353%_ _%private?121354%_ _%phi121355%_)
        (let ((_%ctx121357%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121353%_
           _%private?121354%_
           _%phi121355%_
           _%ctx121357%_))))
    (define gx#core-bind-feature!
      (lambda _g124972_
        (let ((_g124971_ (##length _g124972_)))
          (cond ((##fx= _g124971_ 1)
                 (apply gx#core-bind-feature!__0 _g124972_))
                ((##fx= _g124971_ 2)
                 (apply gx#core-bind-feature!__1 _g124972_))
                ((##fx= _g124971_ 3)
                 (apply gx#core-bind-feature!__2 _g124972_))
                ((##fx= _g124971_ 4)
                 (apply gx#core-bind-feature!__% _g124972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g124972_))))))))
