(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770505718)
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args182372%_
        (apply make-instance gx#module-import::t _%$args182372%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args182369%_
        (apply make-instance gx#module-export::t _%$args182369%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args182366%_
        (apply make-instance gx#import-set::t _%$args182366%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args182363%_
        (apply make-instance gx#export-set::t _%$args182363%_)))
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
      (lambda _%$args182360%_
        (apply make-instance gx#import-expander::t _%$args182360%_)))
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
      (lambda _%$args182357%_
        (apply make-instance gx#export-expander::t _%$args182357%_)))
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
      (lambda _%$args182354%_
        (apply make-instance gx#import-export-expander::t _%$args182354%_)))
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
      (lambda (_%path182351%_ _%fun182352%_)
        (call-with-input-file
         (cons 'path: (cons _%path182351%_ gx#source-file-settings))
         _%fun182352%_)))
    (define gx#module-context:::init!
      (lambda (_%self182334%_
               _%id182335%_
               _%super182336%_
               _%ns182337%_
               _%path182338%_)
        (let ((_%self182341%_ _%self182334%_))
          (if (##fx< '11 (##structure-length _%self182341%_))
              (begin
                (##unchecked-structure-set!
                 _%self182341%_
                 _%id182335%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182341%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182341%_
                 _%super182336%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self182341%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self182341%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self182341%_
                 _%ns182337%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182341%_
                 _%path182338%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self182341%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self182341%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self182341%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self182341%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self182341%_
                     '11
                     (##structure-length _%self182341%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self182167%_ _%ctx182168%_ _%root182169%_)
        (let* ((_%self182172%_ _%self182167%_)
               (_%super182188%_
                (let ((_%$e182182%_ _%root182169%_))
                  (if _%$e182182%_
                      _%$e182182%_
                      (let ((_%$e182185%_ (gx#core-context-root__0)))
                        (if _%$e182185%_
                            _%$e182185%_
                            (let ((__obj182416
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor182417
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj182416
                                      ':init!)))
                                (if __constructor182417
                                    (__constructor182417 __obj182416)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj182416)))))))
          (if _%ctx182168%_
              (let ((_%id182191%_
                     (##structure-ref
                      _%ctx182168%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path182192%_
                     (##structure-ref
                      _%ctx182168%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in182193%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx182168%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e182194%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx182168%_)))))
                (if (##fx< '8 (##structure-length _%self182172%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self182172%_
                       _%id182191%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182172%_
                       (make-hash-table-eq 'size: (##length _%in182193%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182172%_
                       _%super182188%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182172%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182172%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182172%_
                       _%path182192%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182172%_
                       _%in182193%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182172%_
                       _%e182194%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self182172%_
                           '8
                           (##structure-length _%self182172%_)))
                (##for-each
                 (lambda (_%g182195182197%_)
                   (gx#core-bind-weak-import!__%
                    _%g182195182197%_
                    _%self182172%_))
                 _%in182193%_))
              (if (##fx< '8 (##structure-length _%self182172%_))
                  (begin
                    (##unchecked-structure-set! _%self182172%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self182172%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self182172%_
                     _%super182188%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self182172%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self182172%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self182172%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self182172%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self182172%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self182172%_
                         '8
                         (##structure-length _%self182172%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self182203%_ _%ctx182204%_)
        (let ((_%root182206%_ '#f))
          (gx#prelude-context:::init!__%
           _%self182203%_
           _%ctx182204%_
           _%root182206%_))))
    (define gx#prelude-context:::init!
      (lambda _g182423_
        (let ((_g182424_ (##length _g182423_)))
          (cond ((##fx= _g182424_ 2)
                 (apply gx#prelude-context:::init!__0 _g182423_))
                ((##fx= _g182424_ 3)
                 (apply gx#prelude-context:::init!__% _g182423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g182423_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self182041%_ _%e182042%_)
        (if (##fx< '3 (##structure-length _%self182041%_))
            (begin
              (##unchecked-structure-set!
               _%self182041%_
               _%e182042%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self182041%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self182041%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self182041%_
                   '3
                   (##structure-length _%self182041%_)))))
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
      (lambda (_%g181667181670%_ _%g181668181672%_)
        (gx#core-apply-user-expander__%
         _%g181667181670%_
         _%g181668181672%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g181538181541%_ _%g181539181543%_)
        (gx#core-apply-user-expander__%
         _%g181538181541%_
         _%g181539181543%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx181409%_)
        (let* ((_%path181411%_
                (##structure-ref _%ctx181409%_ '7 gx#module-context::t '#f))
               (_%path181413%_
                (if (pair? _%path181411%_)
                    (##last _%path181411%_)
                    _%path181411%_)))
          (if (string? _%path181413%_) _%path181413%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path181385%_ _%reload?181386%_ _%eval?181387%_)
        (let ((_%ctx181389%_
               ((gx#current-expander-module-import)
                _%path181385%_
                _%reload?181386%_)))
          (if (and _%ctx181389%_ _%eval?181387%_)
              (gx#eval-module _%ctx181389%_)
              '#!void)
          _%ctx181389%_)))
    (define gx#import-module__0
      (lambda (_%path181394%_)
        (let* ((_%reload?181396%_ '#f) (_%eval?181398%_ '#f))
          (gx#import-module__%
           _%path181394%_
           _%reload?181396%_
           _%eval?181398%_))))
    (define gx#import-module__1
      (lambda (_%path181400%_ _%reload?181401%_)
        (let ((_%eval?181403%_ '#f))
          (gx#import-module__%
           _%path181400%_
           _%reload?181401%_
           _%eval?181403%_))))
    (define gx#import-module
      (lambda _g182425_
        (let ((_g182426_ (##length _g182425_)))
          (cond ((##fx= _g182426_ 1) (apply gx#import-module__0 _g182425_))
                ((##fx= _g182426_ 2) (apply gx#import-module__1 _g182425_))
                ((##fx= _g182426_ 3) (apply gx#import-module__% _g182425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g182425_))))))
    (define gx#eval-module
      (lambda (_%mod181382%_)
        ((gx#current-expander-module-eval) _%mod181382%_)))
    (define gx#core-eval-module
      (lambda (_%obj181361%_)
        (letrec ((_%force-e181363%_
                  (lambda (_%getf181377%_ _%e181378%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf181377%_ _%e181378%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e181378%_))))
          (let _%recur181365%_ ((_%e181367%_ _%obj181361%_))
            (if (##structure-instance-of? _%e181367%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e181370%_
                         (gx#core-context-prelude__% _%e181367%_)))
                    (if _%$e181370%_ (_%recur181365%_ _%$e181370%_) '#!void))
                  (_%force-e181363%_ gx#module-context-e _%e181367%_))
                (if (##structure-instance-of?
                     _%e181367%_
                     'gx#prelude-context::t)
                    (_%force-e181363%_ gx#prelude-context-e _%e181367%_)
                    (if (gx#stx-string? _%e181367%_)
                        (_%recur181365%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e181367%_)))
                        (if (gx#core-library-module-path? _%e181367%_)
                            (_%recur181365%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e181367%_)))
                            (error '"cannot eval module" _%obj181361%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx181341%_)
        (let _%lp181343%_ ((_%e181345%_ _%ctx181341%_))
          (if (or (##structure-instance-of? _%e181345%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e181345%_ 'gx#local-context::t))
              (_%lp181343%_ (##unchecked-structure-ref _%e181345%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e181345%_ 'gx#prelude-context::t)
                  _%e181345%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx181357%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx181357%_))))
    (define gx#core-context-prelude
      (lambda _g182427_
        (let ((_g182428_ (##length _g182427_)))
          (cond ((##fx= _g182428_ 0)
                 (apply gx#core-context-prelude__0 _g182427_))
                ((##fx= _g182428_ 1)
                 (apply gx#core-context-prelude__% _g182427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g182427_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx181332%_)
        (let ((_%$e181334%_ (__hash-get gx#__module-registry _%ctx181332%_)))
          (if _%$e181334%_
              _%$e181334%_
              (let ((_%pre181338%_
                     (let ((__obj182418
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
                        __obj182418
                        _%ctx181332%_)
                       __obj182418)))
                (__hash-put! gx#__module-registry _%ctx181332%_ _%pre181338%_)
                _%pre181338%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath181200%_ _%reload?181201%_)
        (letrec ((_%import-source181203%_
                  (lambda (_%path181291%_)
                    (if (member _%path181291%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path181291%_)
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
                                      (let ((_g182429_
                                             (gx#core-read-module
                                              _%path181291%_)))
                                        (begin
                                          (let ((_g182430_
                                                 (if (##values? _g182429_)
                                                     (##values-length
                                                      _g182429_)
                                                     1)))
                                            (if (not (##fx= _g182430_ 4))
                                                (error "Context expects 4 values"
                                                       _g182430_)))
                                          (let ((_%pre181299%_
                                                 (##values-ref _g182429_ 0))
                                                (_%id181300%_
                                                 (##values-ref _g182429_ 1))
                                                (_%ns181301%_
                                                 (##values-ref _g182429_ 2))
                                                (_%body181302%_
                                                 (##values-ref _g182429_ 3)))
                                            (let* ((_%prelude181312%_
                                                    (if (##structure-instance-of?
                                                         _%pre181299%_
                                                         'gx#prelude-context::t)
                                                        _%pre181299%_
                                                        (if (##structure-instance-of?
                                                             _%pre181299%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre181299%_)
                                                            (if (string? _%pre181299%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre181299%_))
                        (if (not _%pre181299%_)
                            (let ((_%$e181308%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e181308%_
                                  _%$e181308%_
                                  (let ((__obj182419
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
                                     __obj182419
                                     '#f)
                                    __obj182419)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath181200%_
                                   _%pre181299%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx181314%_
                                                    (let ((__obj182420
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
                                                       __obj182420
                                                       _%id181300%_
                                                       _%prelude181312%_
                                                       _%ns181301%_
                                                       _%path181291%_)
                                                      __obj182420))
                                                   (_%body181316%_
                                                    (gx#core-expand-module-begin
                                                     _%body181302%_
                                                     _%ctx181314%_))
                                                   (_%body181318%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body181316%_)
                                                     _%path181291%_
                                                     _%ctx181314%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx181314%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body181318%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx181314%_
                                               _%body181318%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path181291%_
                                               _%ctx181314%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id181300%_
                                               _%ctx181314%_)
                                              _%ctx181314%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path181291%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule181204%_
                  (lambda (_%rpath181220%_)
                    (let* ((_%rpath181221181228%_ _%rpath181220%_)
                           (_%E181223181231%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath181221181228%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K181224181279%_
                            (lambda (_%refs181234%_ _%origin181235%_)
                              (let ((_%ctx181237%_
                                     (if _%origin181235%_
                                         (gx#core-import-module__%
                                          _%origin181235%_
                                          _%reload?181201%_)
                                         (gx#current-expander-context))))
                                (let _%lp181239%_ ((_%rest181241%_
                                                    _%refs181234%_)
                                                   (_%ctx181242%_
                                                    _%ctx181237%_))
                                  (let* ((_%rest181243181251%_ _%rest181241%_)
                                         (_%else181245181259%_
                                          (lambda () _%ctx181242%_))
                                         (_%K181247181267%_
                                          (lambda (_%rest181262%_ _%id181263%_)
                                            (let ((_%bind181265%_
                                                   (gx#resolve-identifier__%
                                                    _%id181263%_
                                                    '0
                                                    _%ctx181242%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind181265%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind181265%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp181239%_
                                                   _%rest181262%_
                                                   (##unchecked-structure-ref
                                                    _%bind181265%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath181220%_
                                                         _%id181263%_
                                                         _%bind181265%_))))))
                                    (if (pair? _%rest181243181251%_)
                                        (let ((_%hd181248181270%_
                                               (##car _%rest181243181251%_))
                                              (_%tl181249181272%_
                                               (##cdr _%rest181243181251%_)))
                                          (let* ((_%id181275%_
                                                  _%hd181248181270%_)
                                                 (_%rest181277%_
                                                  _%tl181249181272%_))
                                            (_%K181247181267%_
                                             _%rest181277%_
                                             _%id181275%_)))
                                        (_%else181245181259%_))))))))
                      (if (pair? _%rpath181221181228%_)
                          (let ((_%hd181225181282%_
                                 (##car _%rpath181221181228%_))
                                (_%tl181226181284%_
                                 (##cdr _%rpath181221181228%_)))
                            (let* ((_%origin181287%_ _%hd181225181282%_)
                                   (_%refs181289%_ _%tl181226181284%_))
                              (_%K181224181279%_
                               _%refs181289%_
                               _%origin181287%_)))
                          (_%E181223181231%_))))))
          (let ((_%$e181206%_
                 (if (not _%reload?181201%_)
                     (__hash-get gx#__module-registry _%rpath181200%_)
                     '#f)))
            (if _%$e181206%_
                _%$e181206%_
                (if (list? _%rpath181200%_)
                    (_%import-submodule181204%_ _%rpath181200%_)
                    (if (gx#core-library-module-path? _%rpath181200%_)
                        (let ((_%ctx181211%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath181200%_)
                                _%reload?181201%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath181200%_
                           _%ctx181211%_)
                          _%ctx181211%_)
                        (let* ((_%npath181214%_
                                (path-normalize _%rpath181200%_))
                               (_%$e181216%_
                                (if (not _%reload?181201%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath181214%_)
                                    '#f)))
                          (if _%$e181216%_
                              _%$e181216%_
                              (_%import-source181203%_
                               _%npath181214%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath181325%_)
        (let ((_%reload?181327%_ '#f))
          (gx#core-import-module__% _%rpath181325%_ _%reload?181327%_))))
    (define gx#core-import-module
      (lambda _g182431_
        (let ((_g182432_ (##length _g182431_)))
          (cond ((##fx= _g182432_ 1)
                 (apply gx#core-import-module__0 _g182431_))
                ((##fx= _g182432_ 2)
                 (apply gx#core-import-module__% _g182431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g182431_))))))
    (define gx#core-read-module
      (lambda (_%path181189%_)
        (__with-catch
         (lambda (_%exn181191%_)
           (if (and (datum-parsing-exception? _%exn181191%_)
                    (eq? (datum-parsing-exception-filepos _%exn181191%_) '0))
               (gx#core-read-module/lang _%path181189%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path181189%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g181193181195%_)
                      (display-exception__% _%exn181191%_ _%g181193181195%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path181189%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path181041%_)
        (let _%lp181043%_ ((_%body181045%_
                            (read-syntax-from-file _%path181041%_))
                           (_%pre181046%_ '#f)
                           (_%ns181047%_ '#f)
                           (_%pkg181048%_ '#f))
          (let* ((_%e181049181073%_ _%body181045%_)
                 (_%E181065181099%_
                  (lambda ()
                    (let ((_g182433_
                           (if _%pkg181048%_
                               (values _%pre181046%_
                                       _%ns181047%_
                                       _%pkg181048%_)
                               (gx#core-read-module-package
                                _%path181041%_
                                _%pre181046%_
                                _%ns181047%_))))
                      (begin
                        (let ((_g182434_
                               (if (##values? _g182433_)
                                   (##values-length _g182433_)
                                   1)))
                          (if (not (##fx= _g182434_ 3))
                              (error "Context expects 3 values" _g182434_)))
                        (let ((_%pre181077%_ (##values-ref _g182433_ 0))
                              (_%ns181078%_ (##values-ref _g182433_ 1))
                              (_%pkg181079%_ (##values-ref _g182433_ 2)))
                          (let* ((_%prelude181085%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre181077%_)
                                      (gx#syntax-local-e__0 _%pre181077%_)
                                      (if (gx#core-library-module-path?
                                           _%pre181077%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre181077%_)
                                          (if (gx#stx-string? _%pre181077%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre181077%_
                                               _%path181041%_)
                                              (gx#stx-e _%pre181077%_)))))
                                 (_%path-id181087%_
                                  (gx#core-module-path->namespace
                                   _%path181041%_))
                                 (_%pkg-id181089%_
                                  (if _%pkg181079%_
                                      (##string-append
                                       _%pkg181079%_
                                       '"/"
                                       _%path-id181087%_)
                                      _%path-id181087%_))
                                 (_%module-id181091%_
                                  (##string->symbol _%pkg-id181089%_))
                                 (_%module-ns181096%_
                                  (if (eq? _%ns181078%_ '#!void)
                                      '#f
                                      (let ((_%$e181093%_ _%ns181078%_))
                                        (if _%$e181093%_
                                            _%$e181093%_
                                            _%pkg-id181089%_)))))
                            (values _%prelude181085%_
                                    _%module-id181091%_
                                    _%module-ns181096%_
                                    _%body181045%_)))))))
                 (_%E181058181131%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181049181073%_)
                        (let ((_%e181066181103%_
                               (gx#syntax-e _%e181049181073%_)))
                          (let ((_%hd181067181106%_ (##car _%e181066181103%_))
                                (_%tl181068181108%_ (##cdr _%e181066181103%_)))
                            (if (eq? (gx#stx-e _%hd181067181106%_) 'package:)
                                (if (gx#stx-pair? _%tl181068181108%_)
                                    (let ((_%e181069181111%_
                                           (gx#syntax-e _%tl181068181108%_)))
                                      (let ((_%hd181070181114%_
                                             (##car _%e181069181111%_))
                                            (_%tl181071181116%_
                                             (##cdr _%e181069181111%_)))
                                        (let* ((_%pkg181119%_
                                                _%hd181070181114%_)
                                               (_%rest181121%_
                                                _%tl181071181116%_)
                                               (_%pkg181129%_
                                                (if (gx#identifier?
                                                     _%pkg181119%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg181119%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg181119%_)
                                                            (gx#stx-false?
                                                             _%pkg181119%_))
                                                        (gx#stx-e
                                                         _%pkg181119%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg181119%_)))))
                                          (_%lp181043%_
                                           _%rest181121%_
                                           _%pre181046%_
                                           _%ns181047%_
                                           _%pkg181129%_))))
                                    (_%E181065181099%_))
                                (_%E181065181099%_))))
                        (_%E181065181099%_))))
                 (_%E181051181161%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181049181073%_)
                        (let ((_%e181059181135%_
                               (gx#syntax-e _%e181049181073%_)))
                          (let ((_%hd181060181138%_ (##car _%e181059181135%_))
                                (_%tl181061181140%_ (##cdr _%e181059181135%_)))
                            (if (eq? (gx#stx-e _%hd181060181138%_) 'namespace:)
                                (if (gx#stx-pair? _%tl181061181140%_)
                                    (let ((_%e181062181143%_
                                           (gx#syntax-e _%tl181061181140%_)))
                                      (let ((_%hd181063181146%_
                                             (##car _%e181062181143%_))
                                            (_%tl181064181148%_
                                             (##cdr _%e181062181143%_)))
                                        (let* ((_%ns181151%_
                                                _%hd181063181146%_)
                                               (_%rest181153%_
                                                _%tl181064181148%_)
                                               (_%ns181159%_
                                                (if (gx#identifier?
                                                     _%ns181151%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns181151%_))
                                                    (if (gx#stx-string?
                                                         _%ns181151%_)
                                                        (gx#stx-e _%ns181151%_)
                                                        (if (gx#stx-false?
                                                             _%ns181151%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns181151%_))))))
                                          (_%lp181043%_
                                           _%rest181153%_
                                           _%pre181046%_
                                           _%ns181159%_
                                           _%pkg181048%_))))
                                    (_%E181058181131%_))
                                (_%E181058181131%_))))
                        (_%E181058181131%_))))
                 (_%E181050181185%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181049181073%_)
                        (let ((_%e181052181165%_
                               (gx#syntax-e _%e181049181073%_)))
                          (let ((_%hd181053181168%_ (##car _%e181052181165%_))
                                (_%tl181054181170%_ (##cdr _%e181052181165%_)))
                            (if (eq? (gx#stx-e _%hd181053181168%_) 'prelude:)
                                (if (gx#stx-pair? _%tl181054181170%_)
                                    (let ((_%e181055181173%_
                                           (gx#syntax-e _%tl181054181170%_)))
                                      (let ((_%hd181056181176%_
                                             (##car _%e181055181173%_))
                                            (_%tl181057181178%_
                                             (##cdr _%e181055181173%_)))
                                        (let* ((_%prelude181181%_
                                                _%hd181056181176%_)
                                               (_%rest181183%_
                                                _%tl181057181178%_))
                                          (_%lp181043%_
                                           _%rest181183%_
                                           _%prelude181181%_
                                           _%ns181047%_
                                           _%pkg181048%_))))
                                    (_%E181051181161%_))
                                (_%E181051181161%_))))
                        (_%E181051181161%_)))))
            (_%E181050181185%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path180862%_)
        (letrec ((_%default-read-module-body180864%_
                  (lambda (_%inp181033%_)
                    (let _%lp181035%_ ((_%body181037%_ '()))
                      (let ((_%next181039%_ (read-syntax__% _%inp181033%_)))
                        (if (eof-object? _%next181039%_)
                            (reverse _%body181037%_)
                            (_%lp181035%_
                             (cons _%next181039%_ _%body181037%_)))))))
                 (_%read-body180865%_
                  (lambda (_%inp180950%_
                           _%pre180951%_
                           _%ns180952%_
                           _%pkg180953%_
                           _%args180954%_)
                    (let ((_g182435_
                           (if _%pkg180953%_
                               (values _%pre180951%_
                                       _%ns180952%_
                                       _%pkg180953%_)
                               (gx#core-read-module-package
                                _%path180862%_
                                _%pre180951%_
                                _%ns180952%_))))
                      (begin
                        (let ((_g182436_
                               (if (##values? _g182435_)
                                   (##values-length _g182435_)
                                   1)))
                          (if (not (##fx= _g182436_ 3))
                              (error "Context expects 3 values" _g182436_)))
                        (let ((_%pre180956%_ (##values-ref _g182435_ 0))
                              (_%ns180957%_ (##values-ref _g182435_ 1))
                              (_%pkg180958%_ (##values-ref _g182435_ 2)))
                          (let* ((_%prelude180960%_
                                  (gx#import-module__0 _%pre180956%_))
                                 (_%read-module-body181015%_
                                  (let ((_%$e181006%_
                                         (__find (lambda (_%e180961180963%_)
                                                   (let* ((_%e180961180965180975%_
                                                           _%e180961180963%_)
                                                          (_%else180967180983%_
                                                           (lambda () '#f))
                                                          (_%K180969180987%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e180961180965180975%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e180970180990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e180961180965180975%_
                          '1
                          '#f
                          '#f))
                        (_%e180971180993%_
                         (##unchecked-structure-ref
                          _%e180961180965180975%_
                          '2
                          '#f
                          '#f))
                        (_%e180972180996%_
                         (##unchecked-structure-ref
                          _%e180961180965180975%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e180972180996%_ '1)
                       (let ((_%e180973180999%_
                              (##unchecked-structure-ref
                               _%e180961180965180975%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g181001181003%_)
                                (eq? _%g181001181003%_ 'read-module-body))
                              _%e180973180999%_)
                             (_%K180969180987%_)
                             (_%else180967180983%_)))
                       (_%else180967180983%_)))
                 (_%else180967180983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude180960%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e181006%_
                                        ((lambda (_%xport181009%_)
                                           (let ((_%proc181012%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport181009%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc181012%_)
                                                 _%proc181012%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path180862%_
                                                  _%pre180956%_
                                                  _%proc181012%_))))
                                         _%$e181006%_)
                                        _%default-read-module-body180864%_)))
                                 (_%path-id181017%_
                                  (gx#core-module-path->namespace
                                   _%path180862%_))
                                 (_%pkg-id181019%_
                                  (if _%pkg180958%_
                                      (##string-append
                                       _%pkg180958%_
                                       '"/"
                                       _%path-id181017%_)
                                      _%path-id181017%_))
                                 (_%module-id181021%_
                                  (##string->symbol _%pkg-id181019%_))
                                 (_%module-ns181026%_
                                  (let ((_%$e181023%_ _%ns180957%_))
                                    (if _%$e181023%_
                                        _%$e181023%_
                                        _%pkg-id181019%_)))
                                 (_%body181030%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body181015%_
                                         _%inp180950%_))
                                      gx#current-module-reader-args
                                      _%args180954%_))
                                   gx#current-module-reader-path
                                   _%path180862%_)))
                            (values _%prelude180960%_
                                    _%module-id181021%_
                                    _%module-ns181026%_
                                    _%body181030%_)))))))
                 (_%string-e180866%_
                  (lambda (_%obj180944%_ _%what180945%_)
                    (if (string? _%obj180944%_)
                        _%obj180944%_
                        (if (symbol? _%obj180944%_)
                            (##symbol->string _%obj180944%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what180945%_)
                             _%path180862%_
                             _%obj180944%_)))))
                 (_%read-lang-args180867%_
                  (lambda (_%inp180899%_ _%args180900%_)
                    (let* ((_%args180901180909%_ _%args180900%_)
                           (_%else180903180917%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path180862%_)))
                           (_%K180905180932%_
                            (lambda (_%args180920%_ _%prelude180921%_)
                              (let* ((_%pkg180923%_
                                      (pgetq__0 'package: _%args180920%_))
                                     (_%pkg180925%_
                                      (if _%pkg180923%_
                                          (_%string-e180866%_
                                           _%pkg180923%_
                                           '"package")
                                          '#f))
                                     (_%ns180927%_
                                      (pgetq__0 'namespace: _%args180920%_))
                                     (_%ns180929%_
                                      (if _%ns180927%_
                                          (_%string-e180866%_
                                           _%ns180927%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body180865%_
                                 _%inp180899%_
                                 _%prelude180921%_
                                 _%ns180929%_
                                 _%pkg180925%_
                                 _%args180920%_)))))
                      (if (pair? _%args180901180909%_)
                          (let ((_%hd180906180935%_
                                 (##car _%args180901180909%_))
                                (_%tl180907180937%_
                                 (##cdr _%args180901180909%_)))
                            (let* ((_%prelude180940%_ _%hd180906180935%_)
                                   (_%args180942%_ _%tl180907180937%_))
                              (_%K180905180932%_
                               _%args180942%_
                               _%prelude180940%_)))
                          (_%else180903180917%_)))))
                 (_%read-lang180868%_
                  (lambda (_%inp180873%_)
                    (let* ((_%head180875%_ (read-line _%inp180873%_))
                           (_%$e180877%_
                            (string-index__0 _%head180875%_ '#\space)))
                      (if _%$e180877%_
                          ((lambda (_%ix180880%_)
                             (let ((_%lang180882%_
                                    (substring
                                     _%head180875%_
                                     '0
                                     _%ix180880%_)))
                               (if (equal? _%lang180882%_ '"#lang")
                                   (let* ((_%rest180884%_
                                           (substring
                                            _%head180875%_
                                            (##fx+ _%ix180880%_ '1)
                                            (string-length _%head180875%_)))
                                          (_%args180895%_
                                           (__with-catch
                                            (lambda (_%g180885180887%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path180862%_
                                               _%g180885180887%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest180884%_
                                               (lambda (_%g180890180892%_)
                                                 (read-all
                                                  _%g180890180892%_
                                                  read)))))))
                                     (_%read-lang-args180867%_
                                      _%inp180873%_
                                      _%args180895%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path180862%_))))
                           _%$e180877%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path180862%_)))))
                 (_%read-e180869%_
                  (lambda (_%inp180871%_)
                    (if (eq? (peek-char _%inp180871%_) '#\#)
                        (_%read-lang180868%_ _%inp180871%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path180862%_)))))
          (gx#call-with-input-source-file _%path180862%_ _%read-e180869%_))))
    (define gx#core-read-module-package
      (lambda (_%path180810%_ _%pre180811%_ _%ns180812%_)
        (letrec ((_%string-e180814%_
                  (lambda (_%e180857%_)
                    (if (symbol? _%e180857%_)
                        (##symbol->string _%e180857%_)
                        (if (string? _%e180857%_)
                            _%e180857%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e180857%_))))))
          (let _%lp180816%_ ((_%dir180818%_ (path-directory _%path180810%_))
                             (_%pkg-path180819%_ '()))
            (let ((_%gerbil.pkg180821%_
                   (path-expand '"gerbil.pkg" _%dir180818%_)))
              (if (##file-exists? _%gerbil.pkg180821%_)
                  (let ((_%plist180823%_
                         (gx#core-library-package-plist__% _%dir180818%_ '#t)))
                    (if (null? _%plist180823%_)
                        (let ((_%pkg180826%_
                               (if (null? _%pkg-path180819%_)
                                   '#f
                                   (string-join _%pkg-path180819%_ '"/"))))
                          (values _%pre180811%_ _%ns180812%_ _%pkg180826%_))
                        (if (list? _%plist180823%_)
                            (let* ((_%root180829%_
                                    (pgetq__0 'package: _%plist180823%_))
                                   (_%pkg180833%_
                                    (let ((_%pkg-path180831%_
                                           (if _%root180829%_
                                               (cons (_%string-e180814%_
                                                      _%root180829%_)
                                                     _%pkg-path180819%_)
                                               _%pkg-path180819%_)))
                                      (if (null? _%pkg-path180831%_)
                                          '#f
                                          (string-join
                                           _%pkg-path180831%_
                                           '"/"))))
                                   (_%ns180840%_
                                    (let ((_%ns180838%_
                                           (let ((_%$e180835%_ _%ns180812%_))
                                             (if _%$e180835%_
                                                 _%$e180835%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist180823%_)))))
                                      (if _%ns180838%_
                                          (_%string-e180814%_ _%ns180838%_)
                                          '#f)))
                                   (_%pre180845%_
                                    (let ((_%$e180842%_ _%pre180811%_))
                                      (if _%$e180842%_
                                          _%$e180842%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist180823%_)))))
                              (values _%pre180845%_
                                      _%ns180840%_
                                      _%pkg180833%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist180823%_))))
                  (let ((_%dir*180849%_
                         (path-strip-trailing-directory-separator
                          _%dir180818%_)))
                    (if (or (__string-empty? _%dir*180849%_)
                            (equal? _%dir180818%_ _%dir*180849%_))
                        (values _%pre180811%_ _%ns180812%_ '#f)
                        (let ((_%xpath180854%_
                               (path-strip-directory _%dir*180849%_))
                              (_%xdir180855%_ (path-directory _%dir*180849%_)))
                          (_%lp180816%_
                           _%xdir180855%_
                           (cons _%xpath180854%_ _%pkg-path180819%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path180808%_)
        (path-strip-extension (path-strip-directory _%path180808%_))))
    (define gx#core-module-path->id
      (lambda (_%path180806%_)
        (##string->symbol (gx#core-module-path->namespace _%path180806%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path180785%_ _%rel180786%_)
        (let* ((_%path180788%_ (gx#stx-e _%stx-path180785%_))
               (_%path180790%_
                (if (__string-empty? (path-extension _%path180788%_))
                    (##string-append _%path180788%_ '".ss")
                    _%path180788%_)))
          (gx#core-resolve-path__%
           _%path180790%_
           (let ((_%$e180793%_ (gx#stx-source _%stx-path180785%_)))
             (if _%$e180793%_ _%$e180793%_ _%rel180786%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path180799%_)
        (let ((_%rel180801%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path180799%_ _%rel180801%_))))
    (define gx#core-resolve-module-path
      (lambda _g182437_
        (let ((_g182438_ (##length _g182437_)))
          (cond ((##fx= _g182438_ 1)
                 (apply gx#core-resolve-module-path__0 _g182437_))
                ((##fx= _g182438_ 2)
                 (apply gx#core-resolve-module-path__% _g182437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g182437_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath180670%_)
        (let* ((_%spath180672%_ (symbol->string (gx#stx-e _%libpath180670%_)))
               (_%spath180674%_
                (substring
                 _%spath180672%_
                 '1
                 (##string-length _%spath180672%_)))
               (_%ext180676%_ (path-extension _%spath180674%_))
               (_%ssi180678%_
                (if (__string-empty? _%ext180676%_)
                    (##string-append _%spath180674%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath180674%_)
                     '".ssi")))
               (_%srcs180682%_
                (if (__string-empty? _%ext180676%_)
                    (##map (lambda (_%ext180680%_)
                             (string-append _%spath180674%_ _%ext180680%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath180674%_ '()))))
          (let _%lp180685%_ ((_%rest180687%_ (load-path)))
            (let* ((_%rest180688180697%_ _%rest180687%_)
                   (_%E180691180701%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest180688180697%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K180693180772%_
                     (lambda (_%rest180712%_ _%dir180713%_)
                       (letrec ((_%resolve180715%_
                                 (lambda (_%ssi180728%_ _%srcs180729%_)
                                   (let ((_%compiled-path180731%_
                                          (path-expand
                                           _%ssi180728%_
                                           _%dir180713%_)))
                                     (if (##file-exists?
                                          _%compiled-path180731%_)
                                         (path-normalize
                                          _%compiled-path180731%_)
                                         (let _%lpr180733%_ ((_%rest-src180735%_
                                                              _%srcs180729%_))
                                           (let* ((_%rest-src180736180744%_
                                                   _%rest-src180735%_)
                                                  (_%else180738180752%_
                                                   (lambda ()
                                                     (_%lp180685%_
                                                      _%rest180712%_)))
                                                  (_%K180740180760%_
                                                   (lambda (_%rest-src180755%_
                                                            _%src180756%_)
                                                     (let ((_%src-path180758%_
                                                            (path-expand
                                                             _%src180756%_
                                                             _%dir180713%_)))
                                                       (if (##file-exists?
                                                            _%src-path180758%_)
                                                           (path-normalize
                                                            _%src-path180758%_)
                                                           (_%lpr180733%_
                                                            _%rest-src180755%_))))))
                                             (if (pair? _%rest-src180736180744%_)
                                                 (let ((_%hd180741180763%_
                                                        (##car _%rest-src180736180744%_))
                                                       (_%tl180742180765%_
                                                        (##cdr _%rest-src180736180744%_)))
                                                   (let* ((_%src180768%_
                                                           _%hd180741180763%_)
                                                          (_%rest-src180770%_
                                                           _%tl180742180765%_))
                                                     (_%K180740180760%_
                                                      _%rest-src180770%_
                                                      _%src180768%_)))
                                                 (_%else180738180752%_)))))))))
                         (let ((_%$e180717%_
                                (gx#core-library-package-path-prefix
                                 _%dir180713%_)))
                           (if _%$e180717%_
                               ((lambda (_%prefix180720%_)
                                  (if (string-prefix?
                                       _%prefix180720%_
                                       _%spath180674%_)
                                      (let ((_%ssi180724%_
                                             (substring
                                              _%ssi180678%_
                                              (string-length _%prefix180720%_)
                                              (##string-length _%ssi180678%_)))
                                            (_%srcs180725%_
                                             (##map (lambda (_%src180722%_)
                                                      (substring
                                                       _%src180722%_
                                                       (string-length
                                                        _%prefix180720%_)
                                                       (string-length
                                                        _%src180722%_)))
                                                    _%srcs180682%_)))
                                        (_%resolve180715%_
                                         _%ssi180724%_
                                         _%srcs180725%_))
                                      (_%lp180685%_ _%rest180712%_)))
                                _%$e180717%_)
                               (_%resolve180715%_
                                _%ssi180678%_
                                _%srcs180682%_))))))
                    (_%K180692180706%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath180670%_))))
                (let ((_%try-match180690180709%_
                       (lambda ()
                         (if (null? _%rest180688180697%_)
                             (_%K180692180706%_)
                             (_%E180691180701%_)))))
                  (if (pair? _%rest180688180697%_)
                      (let ((_%tl180695180777%_ (##cdr _%rest180688180697%_))
                            (_%hd180694180775%_ (##car _%rest180688180697%_)))
                        (let ((_%dir180780%_ _%hd180694180775%_)
                              (_%rest180782%_ _%tl180695180777%_))
                          (_%K180693180772%_ _%rest180782%_ _%dir180780%_)))
                      (_%try-match180690180709%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath180638%_)
        (letrec ((_%resolve180640%_
                  (lambda (_%path180661%_ _%base180662%_)
                    (let ((_%$e180664%_
                           (string-rindex__0 _%base180662%_ '#\/)))
                      (if _%$e180664%_
                          ((lambda (_%idx180667%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base180662%_ '0 _%idx180667%_)
                                '"/"
                                _%path180661%_))))
                           _%$e180664%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path180661%_))))))))
          (let ((_%spath180642%_ (symbol->string (gx#stx-e _%modpath180638%_)))
                (_%mod180643%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod180643%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath180638%_))
            (let ((_%mpath180645%_
                   (symbol->string
                    (##structure-ref
                     _%mod180643%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp180647%_ ((_%spath180649%_ _%spath180642%_)
                                 (_%mpath180650%_ _%mpath180645%_))
                (if (string-prefix? '"../" _%spath180649%_)
                    (let ((_%$e180653%_
                           (string-rindex__0 _%mpath180650%_ '#\/)))
                      (if _%$e180653%_
                          ((lambda (_%idx180656%_)
                             (_%lp180647%_
                              (substring
                               _%spath180649%_
                               '3
                               (string-length _%spath180649%_))
                              (substring _%mpath180650%_ '0 _%idx180656%_)))
                           _%$e180653%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath180638%_)))
                    (if (string-prefix? '"./" _%spath180649%_)
                        (_%lp180647%_
                         (substring
                          _%spath180649%_
                          '2
                          (string-length _%spath180649%_))
                         _%mpath180650%_)
                        (_%resolve180640%_
                         _%spath180649%_
                         _%mpath180650%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir180630%_)
        (let ((_%$e180632%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir180630%_))))
          (if _%$e180632%_
              ((lambda (_%pkg180635%_)
                 (##string-append (symbol->string _%pkg180635%_) '"/"))
               _%$e180632%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir180600%_ _%exists?180601%_)
        (let ((_%$e180603%_ (__hash-get gx#__module-pkg-cache _%dir180600%_)))
          (if _%$e180603%_
              _%$e180603%_
              (let* ((_%gerbil.pkg180607%_
                      (path-expand '"gerbil.pkg" _%dir180600%_))
                     (_%plist180617%_
                      (if (or _%exists?180601%_
                              (##file-exists? _%gerbil.pkg180607%_))
                          (let ((_%e180612%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg180607%_
                                  read)))
                            (if (eof-object? _%e180612%_)
                                '()
                                (if (list? _%e180612%_)
                                    _%e180612%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg180607%_
                                     _%e180612%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir180600%_
                 _%plist180617%_)
                _%plist180617%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir180623%_)
        (let ((_%exists?180625%_ '#f))
          (gx#core-library-package-plist__% _%dir180623%_ _%exists?180625%_))))
    (define gx#core-library-package-plist
      (lambda _g182439_
        (let ((_g182440_ (##length _g182439_)))
          (cond ((##fx= _g182440_ 1)
                 (apply gx#core-library-package-plist__0 _g182439_))
                ((##fx= _g182440_ 2)
                 (apply gx#core-library-package-plist__% _g182439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g182439_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx180597%_)
        (gx#core-special-module-path? _%stx180597%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx180595%_)
        (gx#core-special-module-path? _%stx180595%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx180590%_ _%char180591%_)
        (if (gx#identifier? _%stx180590%_)
            (if (interned-symbol? (gx#stx-e _%stx180590%_))
                (let ((_%str180593%_
                       (symbol->string (gx#stx-e _%stx180590%_))))
                  (if (##fx> (##string-length _%str180593%_) '1)
                      (eq? (string-ref _%str180593%_ '0) _%char180591%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx180584%_)
        (gx#core-bound-identifier?__%
         _%stx180584%_
         (lambda (_%g180585180587%_)
           (gx#expander-binding?__% _%g180585180587%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx180578%_)
        (gx#core-bound-identifier?__%
         _%stx180578%_
         (lambda (_%g180579180581%_)
           (gx#expander-binding?__% _%g180579180581%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx180565%_)
        (letrec ((_%module-prelude?180567%_
                  (lambda (_%e180573%_)
                    (let ((_%$e180575%_
                           (##structure-instance-of?
                            _%e180573%_
                            'gx#module-context::t)))
                      (if _%$e180575%_
                          _%$e180575%_
                          (##structure-instance-of?
                           _%e180573%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx180565%_
           (lambda (_%g180568180570%_)
             (gx#expander-binding?__%
              _%g180568180570%_
              _%module-prelude?180567%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in180496%_ _%ctx180497%_ _%force-weak?180498%_)
        (let* ((_%in180499180508%_ _%in180496%_)
               (_%E180501180511%_
                (lambda ()
                  (error '"No clause matching"
                         _%in180499180508%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K180502180524%_
                (lambda (_%weak?180514%_
                         _%phi180515%_
                         _%key180516%_
                         _%source180517%_)
                  (gx#core-bind!__%
                   _%key180516%_
                   (let* ((_%e180519%_
                           (gx#core-resolve-module-export _%source180517%_))
                          (__obj182421
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
                      __obj182421
                      (##unchecked-structure-ref _%e180519%_ '1 '#f '#f)
                      _%key180516%_
                      _%phi180515%_
                      _%e180519%_
                      (##unchecked-structure-ref _%source180517%_ '1 '#f '#f)
                      (let ((_%$e180521%_ _%force-weak?180498%_))
                        (if _%$e180521%_ _%$e180521%_ _%weak?180514%_)))
                     __obj182421)
                   gx#core-context-rebind?
                   _%phi180515%_
                   _%ctx180497%_))))
          (if (##structure-direct-instance-of?
               _%in180499180508%_
               'gx#module-import::t)
              (let* ((_%e180503180527%_
                      (##unchecked-structure-ref
                       _%in180499180508%_
                       '1
                       '#f
                       '#f))
                     (_%source180530%_ _%e180503180527%_)
                     (_%e180504180532%_
                      (##unchecked-structure-ref
                       _%in180499180508%_
                       '2
                       '#f
                       '#f))
                     (_%key180535%_ _%e180504180532%_)
                     (_%e180505180537%_
                      (##unchecked-structure-ref
                       _%in180499180508%_
                       '3
                       '#f
                       '#f))
                     (_%phi180540%_ _%e180505180537%_)
                     (_%e180506180542%_
                      (##unchecked-structure-ref
                       _%in180499180508%_
                       '4
                       '#f
                       '#f))
                     (_%weak?180545%_ _%e180506180542%_))
                (_%K180502180524%_
                 _%weak?180545%_
                 _%phi180540%_
                 _%key180535%_
                 _%source180530%_))
              (_%E180501180511%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in180550%_)
        (let* ((_%ctx180552%_ (gx#current-expander-context))
               (_%force-weak?180554%_ '#f))
          (gx#core-bind-import!__%
           _%in180550%_
           _%ctx180552%_
           _%force-weak?180554%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in180556%_ _%ctx180557%_)
        (let ((_%force-weak?180559%_ '#f))
          (gx#core-bind-import!__%
           _%in180556%_
           _%ctx180557%_
           _%force-weak?180559%_))))
    (define gx#core-bind-import!
      (lambda _g182441_
        (let ((_g182442_ (##length _g182441_)))
          (cond ((##fx= _g182442_ 1) (apply gx#core-bind-import!__0 _g182441_))
                ((##fx= _g182442_ 2) (apply gx#core-bind-import!__1 _g182441_))
                ((##fx= _g182442_ 3) (apply gx#core-bind-import!__% _g182441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g182441_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in180482%_ _%ctx180483%_)
        (gx#core-bind-import!__% _%in180482%_ _%ctx180483%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in180488%_)
        (let ((_%ctx180490%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in180488%_ _%ctx180490%_))))
    (define gx#core-bind-weak-import!
      (lambda _g182443_
        (let ((_g182444_ (##length _g182443_)))
          (cond ((##fx= _g182444_ 1)
                 (apply gx#core-bind-weak-import!__0 _g182443_))
                ((##fx= _g182444_ 2)
                 (apply gx#core-bind-weak-import!__% _g182443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g182443_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out180375%_)
        (letrec ((_%subst180377%_
                  (lambda (_%key180422%_)
                    (let* ((_%key180423180431%_ _%key180422%_)
                           (_%else180425180439%_ (lambda () _%key180422%_))
                           (_%K180427180469%_
                            (lambda (_%mark180442%_ _%id180443%_)
                              (let* ((_%mark180444180450%_ _%mark180442%_)
                                     (_%E180446180453%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark180444180450%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K180447180461%_
                                      (lambda (_%subst180456%_)
                                        (let ((_%$e180458%_
                                               (if _%subst180456%_
                                                   (hash-get
                                                    _%subst180456%_
                                                    _%id180443%_)
                                                   '#f)))
                                          (if _%$e180458%_
                                              _%$e180458%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key180422%_))))))
                                (if (##structure-instance-of?
                                     _%mark180444180450%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e180448180464%_
                                            (##unchecked-structure-ref
                                             _%mark180444180450%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst180467%_ _%e180448180464%_))
                                      (_%K180447180461%_ _%subst180467%_))
                                    (_%E180446180453%_))))))
                      (if (pair? _%key180423180431%_)
                          (let ((_%hd180428180472%_
                                 (##car _%key180423180431%_))
                                (_%tl180429180474%_
                                 (##cdr _%key180423180431%_)))
                            (let* ((_%id180477%_ _%hd180428180472%_)
                                   (_%mark180479%_ _%tl180429180474%_))
                              (_%K180427180469%_ _%mark180479%_ _%id180477%_)))
                          (_%else180425180439%_))))))
          (let* ((_%out180378180388%_ _%out180375%_)
                 (_%E180380180391%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out180378180388%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K180381180398%_
                  (lambda (_%phi180394%_ _%key180395%_ _%ctx180396%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx180396%_ _%phi180394%_)
                     (_%subst180377%_ _%key180395%_)))))
            (if (##structure-direct-instance-of?
                 _%out180378180388%_
                 'gx#module-export::t)
                (let* ((_%e180382180401%_
                        (##unchecked-structure-ref
                         _%out180378180388%_
                         '1
                         '#f
                         '#f))
                       (_%ctx180404%_ _%e180382180401%_)
                       (_%e180383180406%_
                        (##unchecked-structure-ref
                         _%out180378180388%_
                         '2
                         '#f
                         '#f))
                       (_%key180409%_ _%e180383180406%_)
                       (_%e180384180411%_
                        (##unchecked-structure-ref
                         _%out180378180388%_
                         '3
                         '#f
                         '#f))
                       (_%phi180414%_ _%e180384180411%_)
                       (_%e180385180416%_
                        (##unchecked-structure-ref
                         _%out180378180388%_
                         '4
                         '#f
                         '#f))
                       (_%e180386180419%_
                        (##unchecked-structure-ref
                         _%out180378180388%_
                         '5
                         '#f
                         '#f)))
                  (_%K180381180398%_
                   _%phi180414%_
                   _%key180409%_
                   _%ctx180404%_))
                (_%E180380180391%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out180301%_ _%rename180302%_ _%dphi180303%_)
        (let* ((_%out180304180314%_ _%out180301%_)
               (_%E180306180317%_
                (lambda ()
                  (error '"No clause matching"
                         _%out180304180314%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K180307180329%_
                (lambda (_%weak?180320%_
                         _%name180321%_
                         _%phi180322%_
                         _%key180323%_
                         _%ctx180324%_)
                  (##structure
                   gx#module-import::t
                   _%out180301%_
                   (let ((_%$e180326%_ _%rename180302%_))
                     (if _%$e180326%_ _%$e180326%_ _%name180321%_))
                   (fx+ _%phi180322%_ _%dphi180303%_)
                   _%weak?180320%_))))
          (if (##structure-direct-instance-of?
               _%out180304180314%_
               'gx#module-export::t)
              (let* ((_%e180308180332%_
                      (##unchecked-structure-ref
                       _%out180304180314%_
                       '1
                       '#f
                       '#f))
                     (_%ctx180335%_ _%e180308180332%_)
                     (_%e180309180337%_
                      (##unchecked-structure-ref
                       _%out180304180314%_
                       '2
                       '#f
                       '#f))
                     (_%key180340%_ _%e180309180337%_)
                     (_%e180310180342%_
                      (##unchecked-structure-ref
                       _%out180304180314%_
                       '3
                       '#f
                       '#f))
                     (_%phi180345%_ _%e180310180342%_)
                     (_%e180311180347%_
                      (##unchecked-structure-ref
                       _%out180304180314%_
                       '4
                       '#f
                       '#f))
                     (_%name180350%_ _%e180311180347%_)
                     (_%e180312180352%_
                      (##unchecked-structure-ref
                       _%out180304180314%_
                       '5
                       '#f
                       '#f))
                     (_%weak?180355%_ _%e180312180352%_))
                (_%K180307180329%_
                 _%weak?180355%_
                 _%name180350%_
                 _%phi180345%_
                 _%key180340%_
                 _%ctx180335%_))
              (_%E180306180317%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out180360%_)
        (let* ((_%rename180362%_ '#f) (_%dphi180364%_ '0))
          (gx#core-module-export->import__%
           _%out180360%_
           _%rename180362%_
           _%dphi180364%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out180366%_ _%rename180367%_)
        (let ((_%dphi180369%_ '0))
          (gx#core-module-export->import__%
           _%out180366%_
           _%rename180367%_
           _%dphi180369%_))))
    (define gx#core-module-export->import
      (lambda _g182445_
        (let ((_g182446_ (##length _g182445_)))
          (cond ((##fx= _g182446_ 1)
                 (apply gx#core-module-export->import__0 _g182445_))
                ((##fx= _g182446_ 2)
                 (apply gx#core-module-export->import__1 _g182445_))
                ((##fx= _g182446_ 3)
                 (apply gx#core-module-export->import__% _g182445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g182445_))))))
    (define gx#core-expand-module%
      (lambda (_%stx180200%_)
        (letrec ((_%make-context180202%_
                  (lambda (_%id180279%_)
                    (let* ((_%super180281%_ (gx#current-expander-context))
                           (_%bind-id180283%_ (gx#stx-e _%id180279%_))
                           (_%mod-id180285%_
                            (if (##structure-instance-of?
                                 _%super180281%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super180281%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id180283%_)
                                _%bind-id180283%_))
                           (_%ns180287%_ (symbol->string _%mod-id180285%_))
                           (_%path180297%_
                            (if (##structure-instance-of?
                                 _%super180281%_
                                 'gx#module-context::t)
                                (let ((_%path180289%_
                                       (##unchecked-structure-ref
                                        _%super180281%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path180289%_)
                                          (null? _%path180289%_))
                                      (cons _%bind-id180283%_ _%path180289%_)
                                      (if (not _%path180289%_)
                                          _%bind-id180283%_
                                          (cons _%bind-id180283%_
                                                (cons _%path180289%_ '())))))
                                _%bind-id180283%_))
                           (__obj182422
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
                       __obj182422
                       _%mod-id180285%_
                       _%super180281%_
                       _%ns180287%_
                       _%path180297%_)
                      __obj182422)))
                 (_%valid-module-id?180203%_
                  (lambda (_%id180254%_)
                    (let* ((_%str180256%_ (symbol->string _%id180254%_))
                           (_%len180258%_ (##string-length _%str180256%_)))
                      (if (##fx>= _%len180258%_ '1)
                          (let _%loop180261%_ ((_%index180263%_
                                                (##fx- (##string-length
                                                        _%str180256%_)
                                                       '1)))
                            (if (##fx>= _%index180263%_ '0)
                                (let ((_%c180265%_
                                       (string-ref
                                        _%str180256%_
                                        _%index180263%_)))
                                  (if (or (and (##char>=? _%c180265%_ '#\a)
                                               (##char<=? _%c180265%_ '#\z))
                                          (and (##char>=? _%c180265%_ '#\A)
                                               (##char<=? _%c180265%_ '#\Z))
                                          (and (##char>=? _%c180265%_ '#\0)
                                               (##char<=? _%c180265%_ '#\9))
                                          (##char=? _%c180265%_ '#\_)
                                          (##char=? _%c180265%_ '#\-))
                                      (_%loop180261%_
                                       (##fx- _%index180263%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e180204180214%_ _%stx180200%_)
                 (_%E180206180218%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180204180214%_)))
                 (_%E180205180250%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180204180214%_)
                        (let ((_%e180207180222%_
                               (gx#syntax-e _%e180204180214%_)))
                          (let ((_%hd180208180225%_ (##car _%e180207180222%_))
                                (_%tl180209180227%_ (##cdr _%e180207180222%_)))
                            (if (gx#stx-pair? _%tl180209180227%_)
                                (let ((_%e180210180230%_
                                       (gx#syntax-e _%tl180209180227%_)))
                                  (let ((_%hd180211180233%_
                                         (##car _%e180210180230%_))
                                        (_%tl180212180235%_
                                         (##cdr _%e180210180230%_)))
                                    (let* ((_%id180238%_ _%hd180211180233%_)
                                           (_%body180240%_ _%tl180212180235%_))
                                      (if (and (gx#identifier? _%id180238%_)
                                               (gx#stx-list? _%body180240%_))
                                          (if (_%valid-module-id?180203%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx180242%_
                                                      (_%make-context180202%_
                                                       _%id180238%_))
                                                     (_%body180244%_
                                                      (gx#core-expand-module-begin
                                                       _%body180240%_
                                                       _%ctx180242%_))
                                                     (_%body180246%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body180244%_)
                                                       (gx#stx-source
                                                        _%stx180200%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx180242%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body180246%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx180242%_
                                                 _%body180246%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id180238%_
                                                 _%ctx180242%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id180238%_)
                                                  _%body180246%_)
                                                 (gx#stx-source
                                                  _%stx180200%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx180200%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E180206180218%_)))))
                                (_%E180206180218%_))))
                        (_%E180206180218%_)))))
            (_%E180205180250%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body180165%_ _%ctx180166%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx180170%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body180165%_)))
                     (_%e180171180178%_ _%stx180170%_)
                     (_%E180173180182%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx180170%_)))
                     (_%E180172180196%_
                      (lambda ()
                        (if (gx#stx-pair? _%e180171180178%_)
                            (let ((_%e180174180186%_
                                   (gx#syntax-e _%e180171180178%_)))
                              (let ((_%hd180175180189%_
                                     (##car _%e180174180186%_))
                                    (_%tl180176180191%_
                                     (##cdr _%e180174180186%_)))
                                (if (and (gx#identifier? _%hd180175180189%_)
                                         (gx#core-identifier=?
                                          _%hd180175180189%_
                                          '%#begin-module))
                                    (let ((_%body180194%_ _%tl180176180191%_))
                                      (if (gx#sealed-syntax? _%stx180170%_)
                                          _%body180194%_
                                          (gx#core-expand-module-body
                                           _%body180194%_)))
                                    (_%E180173180182%_))))
                            (_%E180173180182%_)))))
                (_%E180172180196%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx180166%_)))
    (define gx#core-expand-module-body
      (lambda (_%body179961%_)
        (letrec ((_%expand-special179963%_
                  (lambda (_%hd180092%_ _%K180093%_ _%rest180094%_ _%r180095%_)
                    (let* ((_%e180096180113%_ _%hd180092%_)
                           (_%E180108180117%_
                            (lambda ()
                              (_%K180093%_
                               _%rest180094%_
                               (cons (gx#core-expand-top _%hd180092%_)
                                     _%r180095%_))))
                           (_%E180098180129%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180096180113%_)
                                  (let ((_%e180109180121%_
                                         (gx#syntax-e _%e180096180113%_)))
                                    (let ((_%hd180110180124%_
                                           (##car _%e180109180121%_))
                                          (_%tl180111180126%_
                                           (##cdr _%e180109180121%_)))
                                      (if (and (gx#identifier?
                                                _%hd180110180124%_)
                                               (gx#core-identifier=?
                                                _%hd180110180124%_
                                                '%#export))
                                          (_%K180093%_
                                           _%rest180094%_
                                           (cons _%hd180092%_ _%r180095%_))
                                          (_%E180108180117%_))))
                                  (_%E180108180117%_))))
                           (_%E180097180161%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180096180113%_)
                                  (let ((_%e180099180133%_
                                         (gx#syntax-e _%e180096180113%_)))
                                    (let ((_%hd180100180136%_
                                           (##car _%e180099180133%_))
                                          (_%tl180101180138%_
                                           (##cdr _%e180099180133%_)))
                                      (if (and (gx#identifier?
                                                _%hd180100180136%_)
                                               (gx#core-identifier=?
                                                _%hd180100180136%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl180101180138%_)
                                              (let ((_%e180102180141%_
                                                     (gx#syntax-e
                                                      _%tl180101180138%_)))
                                                (let ((_%hd180103180144%_
                                                       (##car _%e180102180141%_))
                                                      (_%tl180104180146%_
                                                       (##cdr _%e180102180141%_)))
                                                  (let ((_%hd-bind180149%_
                                                         _%hd180103180144%_))
                                                    (if (gx#stx-pair?
                                                         _%tl180104180146%_)
                                                        (let ((_%e180105180151%_
                                                               (gx#syntax-e
                                                                _%tl180104180146%_)))
                                                          (let ((_%hd180106180154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180105180151%_))
                        (_%tl180107180156%_ (##cdr _%e180105180151%_)))
                    (let ((_%expr180159%_ _%hd180106180154%_))
                      (if (gx#stx-null? _%tl180107180156%_)
                          (if (gx#core-bind-values? _%hd-bind180149%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind180149%_)
                                (_%K180093%_
                                 _%rest180094%_
                                 (cons _%hd180092%_ _%r180095%_)))
                              (_%E180098180129%_))
                          (_%E180098180129%_)))))
                (_%E180098180129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180098180129%_))
                                          (_%E180098180129%_))))
                                  (_%E180098180129%_)))))
                      (_%E180097180161%_))))
                 (_%expand-body179964%_
                  (lambda (_%rbody179966%_)
                    (let _%lp179968%_ ((_%rest179970%_ _%rbody179966%_)
                                       (_%body179971%_ '()))
                      (let* ((_%rest179972179980%_ _%rest179970%_)
                             (_%else179974179988%_ (lambda () _%body179971%_))
                             (_%K179976180080%_
                              (lambda (_%rest179991%_ _%hd179992%_)
                                (let* ((_%e179993180014%_ _%hd179992%_)
                                       (_%E180009180018%_
                                        (lambda ()
                                          (_%lp179968%_
                                           _%rest179991%_
                                           (cons (gx#core-expand-expression
                                                  _%hd179992%_)
                                                 _%body179971%_))))
                                       (_%E180005180032%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179993180014%_)
                                              (let ((_%e180010180022%_
                                                     (gx#syntax-e
                                                      _%e179993180014%_)))
                                                (let ((_%hd180011180025%_
                                                       (##car _%e180010180022%_))
                                                      (_%tl180012180027%_
                                                       (##cdr _%e180010180022%_)))
                                                  (let ((_%form180030%_
                                                         _%hd180011180025%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form180030%_
                                                         gx#special-form-binding?)
                                                        (_%lp179968%_
                                                         _%rest179991%_
                                                         (cons _%hd179992%_
                                                               _%body179971%_))
                                                        (_%E180009180018%_)))))
                                              (_%E180009180018%_))))
                                       (_%E179995180044%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179993180014%_)
                                              (let ((_%e180006180036%_
                                                     (gx#syntax-e
                                                      _%e179993180014%_)))
                                                (let ((_%hd180007180039%_
                                                       (##car _%e180006180036%_))
                                                      (_%tl180008180041%_
                                                       (##cdr _%e180006180036%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd180007180039%_)
                                                           (gx#core-identifier=?
                                                            _%hd180007180039%_
                                                            '%#export))
                                                      (_%lp179968%_
                                                       _%rest179991%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd179992%_)
                                                             _%body179971%_))
                                                      (_%E180005180032%_))))
                                              (_%E180005180032%_))))
                                       (_%E179994180076%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179993180014%_)
                                              (let ((_%e179996180048%_
                                                     (gx#syntax-e
                                                      _%e179993180014%_)))
                                                (let ((_%hd179997180051%_
                                                       (##car _%e179996180048%_))
                                                      (_%tl179998180053%_
                                                       (##cdr _%e179996180048%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd179997180051%_)
                                                           (gx#core-identifier=?
                                                            _%hd179997180051%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl179998180053%_)
                                                          (let ((_%e179999180056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl179998180053%_)))
                    (let ((_%hd180000180059%_ (##car _%e179999180056%_))
                          (_%tl180001180061%_ (##cdr _%e179999180056%_)))
                      (let ((_%hd-bind180064%_ _%hd180000180059%_))
                        (if (gx#stx-pair? _%tl180001180061%_)
                            (let ((_%e180002180066%_
                                   (gx#syntax-e _%tl180001180061%_)))
                              (let ((_%hd180003180069%_
                                     (##car _%e180002180066%_))
                                    (_%tl180004180071%_
                                     (##cdr _%e180002180066%_)))
                                (let ((_%expr180074%_ _%hd180003180069%_))
                                  (if (gx#stx-null? _%tl180004180071%_)
                                      (_%lp179968%_
                                       _%rest179991%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind180064%_)
                                               (gx#core-expand-expression
                                                _%expr180074%_))
                                              (gx#stx-source _%hd179992%_))
                                             _%body179971%_))
                                      (_%E179995180044%_)))))
                            (_%E179995180044%_)))))
                  (_%E179995180044%_))
              (_%E179995180044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179995180044%_)))))
                                  (_%E179994180076%_)))))
                        (if (pair? _%rest179972179980%_)
                            (let ((_%hd179977180083%_
                                   (##car _%rest179972179980%_))
                                  (_%tl179978180085%_
                                   (##cdr _%rest179972179980%_)))
                              (let* ((_%hd180088%_ _%hd179977180083%_)
                                     (_%rest180090%_ _%tl179978180085%_))
                                (_%K179976180080%_
                                 _%rest180090%_
                                 _%hd180088%_)))
                            (_%else179974179988%_)))))))
          (_%expand-body179964%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body179961%_)
            _%expand-special179963%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx179802%_
               _%expanded?179803%_
               _%method179804%_
               _%current-phi179805%_
               _%expand1179806%_)
        (letrec ((_%K179808%_
                  (lambda (_%rest179928%_ _%r179929%_)
                    (let* ((_%e179930179937%_ _%rest179928%_)
                           (_%E179932179941%_ (lambda () _%r179929%_))
                           (_%E179931179957%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179930179937%_)
                                  (let ((_%e179933179945%_
                                         (gx#syntax-e _%e179930179937%_)))
                                    (let ((_%hd179934179948%_
                                           (##car _%e179933179945%_))
                                          (_%tl179935179950%_
                                           (##cdr _%e179933179945%_)))
                                      (let* ((_%hd179953%_ _%hd179934179948%_)
                                             (_%rest179955%_
                                              _%tl179935179950%_))
                                        (_%step179809%_
                                         _%hd179953%_
                                         _%rest179955%_
                                         _%r179929%_))))
                                  (_%E179932179941%_)))))
                      (_%E179931179957%_))))
                 (_%step179809%_
                  (lambda (_%hd179842%_ _%rest179843%_ _%r179844%_)
                    (let* ((_%e179845179863%_ _%hd179842%_)
                           (_%E179858179867%_
                            (lambda ()
                              (if (_%expanded?179803%_ (gx#stx-e _%hd179842%_))
                                  (_%K179808%_
                                   _%rest179843%_
                                   (cons (gx#stx-e _%hd179842%_) _%r179844%_))
                                  (_%expand1179806%_
                                   _%hd179842%_
                                   _%K179808%_
                                   _%rest179843%_
                                   _%r179844%_))))
                           (_%E179854179883%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179845179863%_)
                                  (let ((_%e179859179871%_
                                         (gx#syntax-e _%e179845179863%_)))
                                    (let ((_%hd179860179874%_
                                           (##car _%e179859179871%_))
                                          (_%tl179861179876%_
                                           (##cdr _%e179859179871%_)))
                                      (let* ((_%macro179879%_
                                              _%hd179860179874%_)
                                             (_%body179881%_
                                              _%tl179861179876%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro179879%_
                                             gx#syntax-binding?)
                                            (_%K179808%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro179879%_)
                                                    _%hd179842%_
                                                    _%method179804%_)
                                                   _%rest179843%_)
                                             _%r179844%_)
                                            (_%E179858179867%_)))))
                                  (_%E179858179867%_))))
                           (_%E179847179897%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179845179863%_)
                                  (let ((_%e179855179887%_
                                         (gx#syntax-e _%e179845179863%_)))
                                    (let ((_%hd179856179890%_
                                           (##car _%e179855179887%_))
                                          (_%tl179857179892%_
                                           (##cdr _%e179855179887%_)))
                                      (if (eq? (gx#stx-e _%hd179856179890%_)
                                               'begin:)
                                          (let ((_%body179895%_
                                                 _%tl179857179892%_))
                                            (_%K179808%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest179843%_
                                              _%body179895%_)
                                             _%r179844%_))
                                          (_%E179854179883%_))))
                                  (_%E179854179883%_))))
                           (_%E179846179924%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179845179863%_)
                                  (let ((_%e179848179901%_
                                         (gx#syntax-e _%e179845179863%_)))
                                    (let ((_%hd179849179904%_
                                           (##car _%e179848179901%_))
                                          (_%tl179850179906%_
                                           (##cdr _%e179848179901%_)))
                                      (if (eq? (gx#stx-e _%hd179849179904%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl179850179906%_)
                                              (let ((_%e179851179909%_
                                                     (gx#syntax-e
                                                      _%tl179850179906%_)))
                                                (let ((_%hd179852179912%_
                                                       (##car _%e179851179909%_))
                                                      (_%tl179853179914%_
                                                       (##cdr _%e179851179909%_)))
                                                  (let* ((_%dphi179917%_
                                                          _%hd179852179912%_)
                                                         (_%body179919%_
                                                          _%tl179853179914%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi179917%_)
                                                        (let ((_%rbody179922%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K179808%_ _%body179919%_ '()))
                        _%current-phi179805%_
                        (fx+ (gx#stx-e _%dphi179917%_)
                             (_%current-phi179805%_)))))
                  (_%K179808%_
                   _%rest179843%_
                   (foldr__0 cons _%r179844%_ _%rbody179922%_)))
                (_%E179847179897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179847179897%_))
                                          (_%E179847179897%_))))
                                  (_%E179847179897%_)))))
                      (_%E179846179924%_)))))
          (let* ((_%e179810179817%_ _%stx179802%_)
                 (_%E179812179821%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179810179817%_)))
                 (_%E179811179838%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179810179817%_)
                        (let ((_%e179813179825%_
                               (gx#syntax-e _%e179810179817%_)))
                          (let ((_%hd179814179828%_ (##car _%e179813179825%_))
                                (_%tl179815179830%_ (##cdr _%e179813179825%_)))
                            (let ((_%body179833%_ _%tl179815179830%_))
                              (if (_%current-phi179805%_)
                                  (_%K179808%_ _%body179833%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K179808%_ _%body179833%_ '()))
                                   _%current-phi179805%_
                                   (gx#current-expander-phi))))))
                        (_%E179812179821%_)))))
            (_%E179811179838%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx179456%_ _%internal-expand?179457%_)
        (letrec ((_%expand1179459%_
                  (lambda (_%hd179774%_ _%K179775%_ _%rest179776%_ _%r179777%_)
                    (if (gx#core-bound-module? _%hd179774%_)
                        (_%import1179460%_
                         (gx#syntax-local-e__0 _%hd179774%_)
                         _%K179775%_
                         _%rest179776%_
                         _%r179777%_)
                        (if (gx#core-library-module-path? _%hd179774%_)
                            (_%import1179460%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd179774%_))
                             _%K179775%_
                             _%rest179776%_
                             _%r179777%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd179774%_)
                                (_%import1179460%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd179774%_))
                                 _%K179775%_
                                 _%rest179776%_
                                 _%r179777%_)
                                (let ((_%e179783%_ (gx#stx-e _%hd179774%_)))
                                  (if (pair? _%e179783%_)
                                      (let ((_%$e179786%_
                                             (gx#stx-e (##car _%e179783%_))))
                                        (if (eq? 'spec: _%$e179786%_)
                                            (_%import-spec179463%_
                                             _%hd179774%_
                                             _%K179775%_
                                             _%rest179776%_
                                             _%r179777%_)
                                            (if (eq? 'in: _%$e179786%_)
                                                (_%import-submodule179461%_
                                                 _%hd179774%_
                                                 _%K179775%_
                                                 _%rest179776%_
                                                 _%r179777%_)
                                                (if (eq? 'runtime:
                                                         _%$e179786%_)
                                                    (_%import-runtime179462%_
                                                     _%hd179774%_
                                                     _%K179775%_
                                                     _%rest179776%_
                                                     _%r179777%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx179456%_
                                                     _%hd179774%_)))))
                                      (if (string? _%e179783%_)
                                          (_%import1179460%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd179774%_
                                             (gx#stx-source _%stx179456%_)))
                                           _%K179775%_
                                           _%rest179776%_
                                           _%r179777%_)
                                          (if (##structure-instance-of?
                                               _%e179783%_
                                               'gx#module-context::t)
                                              (_%K179775%_
                                               _%rest179776%_
                                               (cons _%e179783%_ _%r179777%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx179456%_
                                               _%hd179774%_))))))))))
                 (_%import1179460%_
                  (lambda (_%ctx179763%_
                           _%K179764%_
                           _%rest179765%_
                           _%r179766%_)
                    (let ((_%dphi179768%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K179764%_
                       _%rest179765%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx179763%_
                              _%dphi179768%_
                              (map (lambda (_%g179769179771%_)
                                     (gx#core-module-export->import__%
                                      _%g179769179771%_
                                      '#f
                                      _%dphi179768%_))
                                   (##unchecked-structure-ref
                                    _%ctx179763%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r179766%_)))))
                 (_%import-submodule179461%_
                  (lambda (_%hd179730%_ _%K179731%_ _%rest179732%_ _%r179733%_)
                    (let* ((_%e179734179741%_ _%hd179730%_)
                           (_%E179736179745%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179734179741%_)))
                           (_%E179735179759%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179734179741%_)
                                  (let ((_%e179737179749%_
                                         (gx#syntax-e _%e179734179741%_)))
                                    (let ((_%hd179738179752%_
                                           (##car _%e179737179749%_))
                                          (_%tl179739179754%_
                                           (##cdr _%e179737179749%_)))
                                      (let ((_%spath179757%_
                                             _%tl179739179754%_))
                                        (_%import1179460%_
                                         (_%import-spec-source179464%_
                                          _%spath179757%_)
                                         _%K179731%_
                                         _%rest179732%_
                                         _%r179733%_))))
                                  (_%E179736179745%_)))))
                      (_%E179735179759%_))))
                 (_%import-runtime179462%_
                  (lambda (_%hd179697%_ _%K179698%_ _%rest179699%_ _%r179700%_)
                    (let* ((_%e179701179708%_ _%hd179697%_)
                           (_%E179703179712%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179701179708%_)))
                           (_%E179702179726%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179701179708%_)
                                  (let ((_%e179704179716%_
                                         (gx#syntax-e _%e179701179708%_)))
                                    (let ((_%hd179705179719%_
                                           (##car _%e179704179716%_))
                                          (_%tl179706179721%_
                                           (##cdr _%e179704179716%_)))
                                      (let ((_%spath179724%_
                                             _%tl179706179721%_))
                                        (_%K179698%_
                                         _%rest179699%_
                                         (cons (_%import-spec-source179464%_
                                                _%spath179724%_)
                                               _%r179700%_)))))
                                  (_%E179703179712%_)))))
                      (_%E179702179726%_))))
                 (_%import-spec179463%_
                  (lambda (_%hd179535%_ _%K179536%_ _%rest179537%_ _%r179538%_)
                    (let* ((_%e179539179556%_ _%hd179535%_)
                           (_%E179548179560%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179539179556%_)))
                           (_%E179541179671%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179539179556%_)
                                  (let ((_%e179549179564%_
                                         (gx#syntax-e _%e179539179556%_)))
                                    (let ((_%hd179550179567%_
                                           (##car _%e179549179564%_))
                                          (_%tl179551179569%_
                                           (##cdr _%e179549179564%_)))
                                      (if (gx#stx-pair? _%tl179551179569%_)
                                          (let ((_%e179552179572%_
                                                 (gx#syntax-e
                                                  _%tl179551179569%_)))
                                            (let ((_%hd179553179575%_
                                                   (##car _%e179552179572%_))
                                                  (_%tl179554179577%_
                                                   (##cdr _%e179552179572%_)))
                                              (let* ((_%path179580%_
                                                      _%hd179553179575%_)
                                                     (_%specs179582%_
                                                      _%tl179554179577%_))
                                                (let ((_%src-ctx179584%_
                                                       (_%import-spec-source179464%_
                                                        _%path179580%_))
                                                      (_%exports179585%_
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
                                                      (_%specs179586%_
                                                       (gx#syntax->list
                                                        _%specs179582%_)))
                                                  (for-each
                                                   (lambda (_%out179588%_)
                                                     (__hash-put!
                                                      _%exports179585%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out179588%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out179588%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out179588%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx179584%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K179536%_
                                                   _%rest179537%_
                                                   (foldl__0
                                                    (lambda (_%spec179590%_
                                                             _%r179591%_)
                                                      (let* ((_%e179592179608%_
                                                              _%spec179590%_)
                                                             (_%E179594179612%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e179592179608%_)))
                     (_%E179593179667%_
                      (lambda ()
                        (if (gx#stx-pair? _%e179592179608%_)
                            (let ((_%e179595179616%_
                                   (gx#syntax-e _%e179592179608%_)))
                              (let ((_%hd179596179619%_
                                     (##car _%e179595179616%_))
                                    (_%tl179597179621%_
                                     (##cdr _%e179595179616%_)))
                                (let ((_%phi179624%_ _%hd179596179619%_))
                                  (if (gx#stx-pair? _%tl179597179621%_)
                                      (let ((_%e179598179626%_
                                             (gx#syntax-e _%tl179597179621%_)))
                                        (let ((_%hd179599179629%_
                                               (##car _%e179598179626%_))
                                              (_%tl179600179631%_
                                               (##cdr _%e179598179626%_)))
                                          (let ((_%name179634%_
                                                 _%hd179599179629%_))
                                            (if (gx#stx-pair?
                                                 _%tl179600179631%_)
                                                (let ((_%e179601179636%_
                                                       (gx#syntax-e
                                                        _%tl179600179631%_)))
                                                  (let ((_%hd179602179639%_
                                                         (##car _%e179601179636%_))
                                                        (_%tl179603179641%_
                                                         (##cdr _%e179601179636%_)))
                                                    (let ((_%src-phi179644%_
                                                           _%hd179602179639%_))
                                                      (if (gx#stx-pair?
                                                           _%tl179603179641%_)
                                                          (let ((_%e179604179646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl179603179641%_)))
                    (let ((_%hd179605179649%_ (##car _%e179604179646%_))
                          (_%tl179606179651%_ (##cdr _%e179604179646%_)))
                      (let ((_%src-name179654%_ _%hd179605179649%_))
                        (if (gx#stx-null? _%tl179606179651%_)
                            (if (and (gx#stx-fixnum? _%src-phi179644%_)
                                     (gx#identifier? _%src-name179654%_)
                                     (gx#stx-fixnum? _%phi179624%_)
                                     (gx#identifier? _%name179634%_))
                                (let ((_%src-phi179656%_
                                       (gx#stx-e _%src-phi179644%_))
                                      (_%src-name179657%_
                                       (gx#core-identifier-key
                                        _%src-name179654%_))
                                      (_%phi179658%_ (gx#stx-e _%phi179624%_))
                                      (_%name179659%_
                                       (gx#core-identifier-key
                                        _%name179634%_)))
                                  (let ((_%$e179661%_
                                         (__hash-get
                                          _%exports179585%_
                                          (cons _%src-phi179656%_
                                                _%src-name179657%_))))
                                    (if _%$e179661%_
                                        ((lambda (_%out179664%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out179664%_
                                                  _%name179659%_
                                                  (fx- _%phi179658%_
                                                       _%src-phi179656%_))
                                                 _%r179591%_))
                                         _%$e179661%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx179456%_
                                         _%hd179535%_))))
                                (_%E179594179612%_))
                            (_%E179594179612%_)))))
                  (_%E179594179612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179594179612%_)))))
                                      (_%E179594179612%_)))))
                            (_%E179594179612%_)))))
                (_%E179593179667%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r179538%_
                                                    _%specs179586%_))))))
                                          (_%E179548179560%_))))
                                  (_%E179548179560%_))))
                           (_%E179540179693%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179539179556%_)
                                  (let ((_%e179542179675%_
                                         (gx#syntax-e _%e179539179556%_)))
                                    (let ((_%hd179543179678%_
                                           (##car _%e179542179675%_))
                                          (_%tl179544179680%_
                                           (##cdr _%e179542179675%_)))
                                      (if (gx#stx-pair? _%tl179544179680%_)
                                          (let ((_%e179545179683%_
                                                 (gx#syntax-e
                                                  _%tl179544179680%_)))
                                            (let ((_%hd179546179686%_
                                                   (##car _%e179545179683%_))
                                                  (_%tl179547179688%_
                                                   (##cdr _%e179545179683%_)))
                                              (let ((_%path179691%_
                                                     _%hd179546179686%_))
                                                (if (gx#stx-null?
                                                     _%tl179547179688%_)
                                                    (_%K179536%_
                                                     _%rest179537%_
                                                     (cons (_%import-spec-source179464%_
                                                            _%path179691%_)
                                                           _%r179538%_))
                                                    (_%E179541179671%_)))))
                                          (_%E179541179671%_))))
                                  (_%E179541179671%_)))))
                      (_%E179540179693%_))))
                 (_%import-spec-source179464%_
                  (lambda (_%spath179533%_)
                    (gx#core-import-nested-module
                     _%spath179533%_
                     _%stx179456%_)))
                 (_%import!179465%_
                  (lambda (_%rbody179478%_)
                    (letrec* ((_%current-ctx179480%_
                               (gx#current-expander-context))
                              (_%deps179481%_ (make-hash-table-eq))
                              (_%bind!179482%_
                               (lambda (_%hd179531%_)
                                 (gx#core-bind-import!__1
                                  _%hd179531%_
                                  _%current-ctx179480%_))))
                      (let _%lp179484%_ ((_%rest179486%_ _%rbody179478%_)
                                         (_%body179487%_ '()))
                        (let* ((_%rest179488179496%_ _%rest179486%_)
                               (_%else179490179507%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx179480%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx179480%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx179480%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body179487%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx179504%_ _%_179505%_)
                                     (gx#eval-module _%ctx179504%_))
                                   _%deps179481%_)
                                  _%body179487%_))
                               (_%K179492179519%_
                                (lambda (_%rest179510%_ _%hd179511%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd179511%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!179482%_ _%hd179511%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd179511%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd179511%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps179481%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd179511%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd179511%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!179482%_
                                             (##unchecked-structure-ref
                                              _%hd179511%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd179511%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps179481%_
                                                 (##unchecked-structure-ref
                                                  _%hd179511%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e179515%_
                                                 (##structure-instance-of?
                                                  _%hd179511%_
                                                  'gx#module-context::t)))
                                            (if _%$e179515%_
                                                _%$e179515%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx179456%_
                                                 _%hd179511%_)))))
                                  (_%lp179484%_
                                   _%rest179510%_
                                   (cons _%hd179511%_ _%body179487%_)))))
                          (if (pair? _%rest179488179496%_)
                              (let ((_%hd179493179522%_
                                     (##car _%rest179488179496%_))
                                    (_%tl179494179524%_
                                     (##cdr _%rest179488179496%_)))
                                (let* ((_%hd179527%_ _%hd179493179522%_)
                                       (_%rest179529%_ _%tl179494179524%_))
                                  (_%K179492179519%_
                                   _%rest179529%_
                                   _%hd179527%_)))
                              (_%else179490179507%_)))))))
                 (_%expanded-import?179466%_
                  (lambda (_%e179470%_)
                    (let ((_%$e179472%_
                           (##structure-direct-instance-of?
                            _%e179470%_
                            'gx#import-set::t)))
                      (if _%$e179472%_
                          _%$e179472%_
                          (let ((_%$e179475%_
                                 (##structure-direct-instance-of?
                                  _%e179470%_
                                  'gx#module-import::t)))
                            (if _%$e179475%_
                                _%$e179475%_
                                (##structure-instance-of?
                                 _%e179470%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody179468%_
                 (gx#core-expand-import/export
                  _%stx179456%_
                  _%expanded-import?179466%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1179459%_)))
            (if _%internal-expand?179457%_
                (reverse _%rbody179468%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!179465%_ _%rbody179468%_))
                 (gx#stx-source _%stx179456%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx179795%_)
        (let ((_%internal-expand?179797%_ '#f))
          (gx#core-expand-import%__%
           _%stx179795%_
           _%internal-expand?179797%_))))
    (define gx#core-expand-import%
      (lambda _g182447_
        (let ((_g182448_ (##length _g182447_)))
          (cond ((##fx= _g182448_ 1)
                 (apply gx#core-expand-import%__0 _g182447_))
                ((##fx= _g182448_ 2)
                 (apply gx#core-expand-import%__% _g182447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g182447_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath179383%_ _%where179384%_)
        (let* ((_%e179385179392%_ _%spath179383%_)
               (_%E179387179396%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179385179392%_)))
               (_%E179386179451%_
                (lambda ()
                  (if (gx#stx-pair? _%e179385179392%_)
                      (let ((_%e179388179400%_
                             (gx#syntax-e _%e179385179392%_)))
                        (let ((_%hd179389179403%_ (##car _%e179388179400%_))
                              (_%tl179390179405%_ (##cdr _%e179388179400%_)))
                          (let* ((_%origin179408%_ _%hd179389179403%_)
                                 (_%sub179410%_ _%tl179390179405%_)
                                 (_%origin-ctx179412%_
                                  (if (gx#stx-false? _%origin179408%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin179408%_))))
                            (let _%lp179414%_ ((_%rest179416%_ _%sub179410%_)
                                               (_%ctx179417%_
                                                _%origin-ctx179412%_))
                              (let* ((_%e179418179425%_ _%rest179416%_)
                                     (_%E179420179429%_
                                      (lambda () _%ctx179417%_))
                                     (_%E179419179447%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e179418179425%_)
                                            (let ((_%e179421179433%_
                                                   (gx#syntax-e
                                                    _%e179418179425%_)))
                                              (let ((_%hd179422179436%_
                                                     (##car _%e179421179433%_))
                                                    (_%tl179423179438%_
                                                     (##cdr _%e179421179433%_)))
                                                (let* ((_%id179441%_
                                                        _%hd179422179436%_)
                                                       (_%rest179443%_
                                                        _%tl179423179438%_)
                                                       (_%bind179445%_
                                                        (gx#resolve-identifier__%
                                                         _%id179441%_
                                                         '0
                                                         _%ctx179417%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind179445%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind179445%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where179384%_
                                                       _%spath179383%_
                                                       _%id179441%_))
                                                  (_%lp179414%_
                                                   _%rest179443%_
                                                   (##unchecked-structure-ref
                                                    _%bind179445%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E179420179429%_)))))
                                (_%E179419179447%_))))))
                      (_%E179387179396%_)))))
          (_%E179386179451%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd179381%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd179381%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx178876%_ _%internal-expand?178877%_)
        (letrec* ((_%make-export__182375182376%_
                   (lambda (_%bind179329%_
                            _%phi179330%_
                            _%ctx179331%_
                            _%name179332%_)
                     (let* ((_%key179334%_
                             (##unchecked-structure-ref
                              _%bind179329%_
                              '2
                              '#f
                              '#f))
                            (_%export-key179336%_
                             (if _%name179332%_
                                 (gx#core-identifier-key _%name179332%_)
                                 _%key179334%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx179331%_
                        _%key179334%_
                        _%phi179330%_
                        _%export-key179336%_
                        (let ((_%$e179339%_
                               (##structure-instance-of?
                                _%bind179329%_
                                'gx#extern-binding::t)))
                          (if _%$e179339%_
                              _%$e179339%_
                              (##structure-direct-instance-of?
                               _%bind179329%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__182377182380%_
                   (lambda (_%bind179345%_)
                     (let* ((_%phi179347%_ (gx#current-export-expander-phi))
                            (_%ctx179349%_ (gx#current-expander-context))
                            (_%name179351%_ '#f))
                       (_%make-export__182375182376%_
                        _%bind179345%_
                        _%phi179347%_
                        _%ctx179349%_
                        _%name179351%_))))
                  (_%make-export__1__182378182381%_
                   (lambda (_%bind179353%_ _%phi179354%_)
                     (let* ((_%ctx179356%_ (gx#current-expander-context))
                            (_%name179358%_ '#f))
                       (_%make-export__182375182376%_
                        _%bind179353%_
                        _%phi179354%_
                        _%ctx179356%_
                        _%name179358%_))))
                  (_%make-export__2__182379182382%_
                   (lambda (_%bind179360%_ _%phi179361%_ _%ctx179362%_)
                     (let ((_%name179364%_ '#f))
                       (_%make-export__182375182376%_
                        _%bind179360%_
                        _%phi179361%_
                        _%ctx179362%_
                        _%name179364%_))))
                  (_%make-export178879%_
                   (lambda _g182449_
                     (let ((_g182450_ (##length _g182449_)))
                       (cond ((##fx= _g182450_ 1)
                              (apply _%make-export__0__182377182380%_
                                     _g182449_))
                             ((##fx= _g182450_ 2)
                              (apply _%make-export__1__182378182381%_
                                     _g182449_))
                             ((##fx= _g182450_ 3)
                              (apply _%make-export__2__182379182382%_
                                     _g182449_))
                             ((##fx= _g182450_ 4)
                              (apply _%make-export__182375182376%_ _g182449_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g182449_))))))
                  (_%expand1178880%_
                   (lambda (_%hd179034%_
                            _%K179035%_
                            _%rest179036%_
                            _%r179037%_)
                     (let* ((_%e179038179070%_ _%hd179034%_)
                            (_%E179065179074%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx178876%_
                                _%hd179034%_)))
                            (_%E179055179158%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179038179070%_)
                                   (let ((_%e179066179078%_
                                          (gx#syntax-e _%e179038179070%_)))
                                     (let ((_%hd179067179081%_
                                            (##car _%e179066179078%_))
                                           (_%tl179068179083%_
                                            (##cdr _%e179066179078%_)))
                                       (if (eq? (gx#stx-e _%hd179067179081%_)
                                                'import:)
                                           (let ((_%in179086%_
                                                  _%tl179068179083%_))
                                             (if (gx#stx-list? _%in179086%_)
                                                 (let _%lp179088%_ ((_%in-rest179090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in179086%_)
                            (_%r179091%_ _%r179037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e179092179099%_
                                                           _%in-rest179090%_)
                                                          (_%E179094179103%_
                                                           (lambda ()
                                                             (_%K179035%_
                                                              _%rest179036%_
                                                              _%r179091%_)))
                                                          (_%E179093179154%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e179092179099%_)
                         (let ((_%e179095179107%_
                                (gx#syntax-e _%e179092179099%_)))
                           (let ((_%hd179096179110%_ (##car _%e179095179107%_))
                                 (_%tl179097179112%_
                                  (##cdr _%e179095179107%_)))
                             (let* ((_%hd179115%_ _%hd179096179110%_)
                                    (_%in-rest179117%_ _%tl179097179112%_)
                                    (_%src179152%_
                                     (if (gx#core-bound-module? _%hd179115%_)
                                         (gx#syntax-local-e__0 _%hd179115%_)
                                         (if (gx#core-library-module-path?
                                              _%hd179115%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd179115%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd179115%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd179115%_))
                                                 (if (gx#stx-string?
                                                      _%hd179115%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd179115%_
                                                       (gx#stx-source
                                                        _%stx178876%_)))
                                                     (let* ((_%e179123179130%_
                                                             _%hd179115%_)
                                                            (_%E179125179134%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx178876%_
                                                                _%hd179115%_)))
                                                            (_%E179124179148%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e179123179130%_)
                           (let ((_%e179126179138%_
                                  (gx#syntax-e _%e179123179130%_)))
                             (let ((_%hd179127179141%_
                                    (##car _%e179126179138%_))
                                   (_%tl179128179143%_
                                    (##cdr _%e179126179138%_)))
                               (if (eq? (gx#stx-e _%hd179127179141%_) 'in:)
                                   (let ((_%spath179146%_ _%tl179128179143%_))
                                     (gx#core-import-nested-module
                                      _%spath179146%_
                                      _%stx178876%_))
                                   (_%E179125179134%_))))
                           (_%E179125179134%_)))))
               (_%E179124179148%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp179088%_
                                _%in-rest179117%_
                                (_%export-imports178881%_
                                 _%src179152%_
                                 _%r179091%_)))))
                         (_%E179094179103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E179093179154%_)))
                                                 (_%E179065179074%_)))
                                           (_%E179065179074%_))))
                                   (_%E179065179074%_))))
                            (_%E179042179198%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179038179070%_)
                                   (let ((_%e179056179162%_
                                          (gx#syntax-e _%e179038179070%_)))
                                     (let ((_%hd179057179165%_
                                            (##car _%e179056179162%_))
                                           (_%tl179058179167%_
                                            (##cdr _%e179056179162%_)))
                                       (if (eq? (gx#stx-e _%hd179057179165%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl179058179167%_)
                                               (let ((_%e179059179170%_
                                                      (gx#syntax-e
                                                       _%tl179058179167%_)))
                                                 (let ((_%hd179060179173%_
                                                        (##car _%e179059179170%_))
                                                       (_%tl179061179175%_
                                                        (##cdr _%e179059179170%_)))
                                                   (let ((_%id179178%_
                                                          _%hd179060179173%_))
                                                     (if (gx#stx-pair?
                                                          _%tl179061179175%_)
                                                         (let ((_%e179062179180%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl179061179175%_)))
                   (let ((_%hd179063179183%_ (##car _%e179062179180%_))
                         (_%tl179064179185%_ (##cdr _%e179062179180%_)))
                     (let ((_%name179188%_ _%hd179063179183%_))
                       (if (gx#stx-null? _%tl179064179185%_)
                           (let* ((_%phi179190%_
                                   (gx#current-export-expander-phi))
                                  (_%$e179192%_
                                   (gx#core-resolve-identifier__1
                                    _%id179178%_
                                    _%phi179190%_)))
                             (if _%$e179192%_
                                 ((lambda (_%bind179195%_)
                                    (_%K179035%_
                                     _%rest179036%_
                                     (cons (_%make-export__182375182376%_
                                            _%bind179195%_
                                            _%phi179190%_
                                            (gx#current-expander-context)
                                            _%name179188%_)
                                           _%r179037%_)))
                                  _%$e179192%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx178876%_
                                  _%hd179034%_
                                  _%id179178%_)))
                           (_%E179055179158%_)))))
                 (_%E179055179158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179055179158%_))
                                           (_%E179055179158%_))))
                                   (_%E179055179158%_))))
                            (_%E179041179248%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179038179070%_)
                                   (let ((_%e179043179202%_
                                          (gx#syntax-e _%e179038179070%_)))
                                     (let ((_%hd179044179205%_
                                            (##car _%e179043179202%_))
                                           (_%tl179045179207%_
                                            (##cdr _%e179043179202%_)))
                                       (if (eq? (gx#stx-e _%hd179044179205%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl179045179207%_)
                                               (let ((_%e179046179210%_
                                                      (gx#syntax-e
                                                       _%tl179045179207%_)))
                                                 (let ((_%hd179047179213%_
                                                        (##car _%e179046179210%_))
                                                       (_%tl179048179215%_
                                                        (##cdr _%e179046179210%_)))
                                                   (let ((_%phi179218%_
                                                          _%hd179047179213%_))
                                                     (if (gx#stx-pair?
                                                          _%tl179048179215%_)
                                                         (let ((_%e179049179220%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl179048179215%_)))
                   (let ((_%hd179050179223%_ (##car _%e179049179220%_))
                         (_%tl179051179225%_ (##cdr _%e179049179220%_)))
                     (let ((_%id179228%_ _%hd179050179223%_))
                       (if (gx#stx-pair? _%tl179051179225%_)
                           (let ((_%e179052179230%_
                                  (gx#syntax-e _%tl179051179225%_)))
                             (let ((_%hd179053179233%_
                                    (##car _%e179052179230%_))
                                   (_%tl179054179235%_
                                    (##cdr _%e179052179230%_)))
                               (let ((_%name179238%_ _%hd179053179233%_))
                                 (if (gx#stx-null? _%tl179054179235%_)
                                     (if (and (gx#stx-fixnum? _%phi179218%_)
                                              (gx#identifier? _%id179228%_)
                                              (gx#identifier? _%name179238%_))
                                         (let* ((_%phi179240%_
                                                 (gx#stx-e _%phi179218%_))
                                                (_%$e179242%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id179228%_
                                                  _%phi179240%_)))
                                           (if _%$e179242%_
                                               ((lambda (_%bind179245%_)
                                                  (_%K179035%_
                                                   _%rest179036%_
                                                   (cons (_%make-export__182375182376%_
                                                          _%bind179245%_
                                                          _%phi179240%_
                                                          (gx#current-expander-context)
                                                          _%name179238%_)
                                                         _%r179037%_)))
                                                _%$e179242%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx178876%_
                                                _%hd179034%_
                                                _%id179228%_)))
                                         (_%E179042179198%_))
                                     (_%E179042179198%_)))))
                           (_%E179042179198%_)))))
                 (_%E179042179198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179042179198%_))
                                           (_%E179042179198%_))))
                                   (_%E179042179198%_))))
                            (_%E179040179260%_
                             (lambda ()
                               (let ((_%id179252%_ _%e179038179070%_))
                                 (if (gx#identifier? _%id179252%_)
                                     (let ((_%$e179254%_
                                            (gx#core-resolve-identifier__1
                                             _%id179252%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e179254%_
                                           ((lambda (_%bind179257%_)
                                              (_%K179035%_
                                               _%rest179036%_
                                               (cons (_%make-export__0__182377182380%_
                                                      _%bind179257%_)
                                                     _%r179037%_)))
                                            _%$e179254%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx178876%_
                                            _%hd179034%_)))
                                     (_%E179041179248%_)))))
                            (_%E179039179324%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e179038179070%_) '#t)
                                   (let* ((_%current-ctx179264%_
                                           (gx#current-expander-context))
                                          (_%current-phi179266%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx179268%_
                                           (gx#core-context-shift
                                            _%current-ctx179264%_
                                            _%current-phi179266%_))
                                          (_%phi-bind179270%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx179268%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp179273%_ ((_%bind-rest179275%_
                                                         _%phi-bind179270%_)
                                                        (_%set179276%_ '()))
                                       (let* ((_%bind-rest179277179287%_
                                               _%bind-rest179275%_)
                                              (_%else179279179295%_
                                               (lambda ()
                                                 (_%K179035%_
                                                  _%rest179036%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi179266%_
                                                         _%set179276%_)
                                                        _%r179037%_))))
                                              (_%K179281179305%_
                                               (lambda (_%bind-rest179298%_
                                                        _%bind179299%_
                                                        _%key179300%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind179299%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind179299%_))
                                                     (_%lp179273%_
                                                      _%bind-rest179298%_
                                                      _%set179276%_)
                                                     (_%lp179273%_
                                                      _%bind-rest179298%_
                                                      (cons (_%make-export__2__182379182382%_
                                                             _%bind179299%_
                                                             _%current-phi179266%_
                                                             _%current-ctx179264%_)
                                                            _%set179276%_))))))
                                         (if (pair? _%bind-rest179277179287%_)
                                             (let ((_%hd179282179308%_
                                                    (##car _%bind-rest179277179287%_))
                                                   (_%tl179283179310%_
                                                    (##cdr _%bind-rest179277179287%_)))
                                               (if (pair? _%hd179282179308%_)
                                                   (let ((_%hd179284179313%_
                                                          (##car _%hd179282179308%_))
                                                         (_%tl179285179315%_
                                                          (##cdr _%hd179282179308%_)))
                                                     (let* ((_%key179318%_
                                                             _%hd179284179313%_)
                                                            (_%bind179320%_
                                                             _%tl179285179315%_)
                                                            (_%bind-rest179322%_
                                                             _%tl179283179310%_))
                                                       (_%K179281179305%_
                                                        _%bind-rest179322%_
                                                        _%bind179320%_
                                                        _%key179318%_)))
                                                   (_%else179279179295%_)))
                                             (_%else179279179295%_)))))
                                   (_%E179040179260%_)))))
                       (_%E179039179324%_))))
                  (_%export-imports178881%_
                   (lambda (_%src178911%_ _%r178912%_)
                     (letrec* ((_%current-ctx178914%_
                                (gx#current-expander-context))
                               (_%current-phi178915%_
                                (gx#current-export-expander-phi))
                               (_%import->export178916%_
                                (lambda (_%in178997%_)
                                  (let* ((_%in178998179006%_ _%in178997%_)
                                         (_%E179000179009%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in178998179006%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K179001179016%_
                                          (lambda (_%phi179012%_
                                                   _%key179013%_
                                                   _%out179014%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx178914%_
                                             _%key179013%_
                                             _%phi179012%_
                                             _%key179013%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in178998179006%_
                                         'gx#module-import::t)
                                        (let* ((_%e179002179019%_
                                                (##unchecked-structure-ref
                                                 _%in178998179006%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out179022%_
                                                _%e179002179019%_)
                                               (_%e179003179024%_
                                                (##unchecked-structure-ref
                                                 _%in178998179006%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key179027%_
                                                _%e179003179024%_)
                                               (_%e179004179029%_
                                                (##unchecked-structure-ref
                                                 _%in178998179006%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi179032%_
                                                _%e179004179029%_))
                                          (_%K179001179016%_
                                           _%phi179032%_
                                           _%key179027%_
                                           _%out179022%_))
                                        (_%E179000179009%_)))))
                               (_%fold-e178917%_
                                (lambda (_%in178919%_ _%r178920%_)
                                  (let* ((_%in178921178935%_ _%in178919%_)
                                         (_%else178924178943%_
                                          (lambda () _%r178920%_)))
                                    (let ((_%K178930178979%_
                                           (lambda (_%phi178975%_
                                                    _%key178976%_
                                                    _%out178977%_)
                                             (if (and (fx= _%phi178975%_
                                                           _%current-phi178915%_)
                                                      (eq? _%src178911%_
                                                           (##unchecked-structure-ref
                                                            _%out178977%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export178916%_
                                                        _%in178919%_)
                                                       _%r178920%_)
                                                 _%r178920%_)))
                                          (_%K178926178954%_
                                           (lambda (_%imports178947%_
                                                    _%phi178948%_
                                                    _%ctx178949%_)
                                             (if (and (fx= _%phi178948%_
                                                           _%current-phi178915%_)
                                                      (eq? _%src178911%_
                                                           _%ctx178949%_))
                                                 (foldl__0
                                                  (lambda (_%in178951%_
                                                           _%r178952%_)
                                                    (cons (_%import->export178916%_
                                                           _%in178951%_)
                                                          _%r178952%_))
                                                  _%r178920%_
                                                  _%imports178947%_)
                                                 _%r178920%_))))
                                      (let ((_%try-match178923178972%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in178921178935%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e178927178957%_
                                                           (##unchecked-structure-ref
                                                            _%in178921178935%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e178928178962%_
                                                           (##unchecked-structure-ref
                                                            _%in178921178935%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e178929178967%_
                                                           (##unchecked-structure-ref
                                                            _%in178921178935%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx178960%_
                                                            _%e178927178957%_)
                                                           (_%phi178965%_
                                                            _%e178928178962%_)
                                                           (_%imports178970%_
                                                            _%e178929178967%_))
                                                       (_%K178926178954%_
                                                        _%imports178970%_
                                                        _%phi178965%_
                                                        _%ctx178960%_)))
                                                   (_%else178924178943%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in178921178935%_
                                             'gx#module-import::t)
                                            (let* ((_%e178931178982%_
                                                    (##unchecked-structure-ref
                                                     _%in178921178935%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e178932178987%_
                                                    (##unchecked-structure-ref
                                                     _%in178921178935%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e178933178992%_
                                                    (##unchecked-structure-ref
                                                     _%in178921178935%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out178985%_
                                                     _%e178931178982%_)
                                                    (_%key178990%_
                                                     _%e178932178987%_)
                                                    (_%phi178995%_
                                                     _%e178933178992%_))
                                                (_%K178930178979%_
                                                 _%phi178995%_
                                                 _%key178990%_
                                                 _%out178985%_)))
                                            (_%try-match178923178972%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src178911%_
                              _%current-phi178915%_
                              (foldl__0
                               _%fold-e178917%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx178914%_
                                '8
                                '#f
                                '#f)))
                             _%r178912%_))))
                  (_%export!178882%_
                   (lambda (_%rbody178898%_)
                     (letrec* ((_%current-ctx178900%_
                                (gx#current-expander-context))
                               (_%fold-e178901%_
                                (lambda (_%out178905%_ _%r178906%_)
                                  (if (##structure-direct-instance-of?
                                       _%out178905%_
                                       'gx#module-export::t)
                                      (cons _%out178905%_ _%r178906%_)
                                      (if (##structure-direct-instance-of?
                                           _%out178905%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r178906%_
                                           (##unchecked-structure-ref
                                            _%out178905%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r178906%_)))))
                       (let ((_%body178903%_ (reverse _%rbody178898%_)))
                         (##unchecked-structure-set!
                          _%current-ctx178900%_
                          (foldl__0
                           _%fold-e178901%_
                           (##unchecked-structure-ref
                            _%current-ctx178900%_
                            '9
                            '#f
                            '#f)
                           _%body178903%_)
                          '9
                          '#f
                          '#f)
                         _%body178903%_))))
                  (_%expanded-export?178883%_
                   (lambda (_%e178893%_)
                     (let ((_%$e178895%_
                            (##structure-direct-instance-of?
                             _%e178893%_
                             'gx#module-export::t)))
                       (if _%$e178895%_
                           _%$e178895%_
                           (##structure-direct-instance-of?
                            _%e178893%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?178877%_)
              (let ((_%rbody178889%_
                     (gx#core-expand-import/export
                      _%stx178876%_
                      _%expanded-export?178883%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1178880%_)))
                (if _%internal-expand?178877%_
                    (reverse _%rbody178889%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!178882%_ _%rbody178889%_))
                     (gx#stx-source _%stx178876%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx178876%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx178876%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx179374%_)
        (let ((_%internal-expand?179376%_ '#f))
          (gx#core-expand-export%__%
           _%stx179374%_
           _%internal-expand?179376%_))))
    (define gx#core-expand-export%
      (lambda _g182451_
        (let ((_g182452_ (##length _g182451_)))
          (cond ((##fx= _g182452_ 1)
                 (apply gx#core-expand-export%__0 _g182451_))
                ((##fx= _g182452_ 2)
                 (apply gx#core-expand-export%__% _g182451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g182451_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd178873%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd178873%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx178843%_)
        (let* ((_%e178844178851%_ _%stx178843%_)
               (_%E178846178855%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178844178851%_)))
               (_%E178845178869%_
                (lambda ()
                  (if (gx#stx-pair? _%e178844178851%_)
                      (let ((_%e178847178859%_
                             (gx#syntax-e _%e178844178851%_)))
                        (let ((_%hd178848178862%_ (##car _%e178847178859%_))
                              (_%tl178849178864%_ (##cdr _%e178847178859%_)))
                          (let ((_%body178867%_ _%tl178849178864%_))
                            (if (gx#identifier-list? _%body178867%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body178867%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body178867%_))
                                   (gx#stx-source _%stx178843%_)))
                                (_%E178846178855%_)))))
                      (_%E178846178855%_)))))
          (_%E178845178869%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id178809%_ _%private?178810%_ _%phi178811%_ _%ctx178812%_)
        (gx#core-bind-syntax!__%
         _%id178809%_
         ((if _%private?178810%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id178809%_))
         _%private?178810%_
         _%phi178811%_
         _%ctx178812%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id178817%_)
        (let* ((_%private?178819%_ '#f)
               (_%phi178821%_ (gx#current-expander-phi))
               (_%ctx178823%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178817%_
           _%private?178819%_
           _%phi178821%_
           _%ctx178823%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id178825%_ _%private?178826%_)
        (let* ((_%phi178828%_ (gx#current-expander-phi))
               (_%ctx178830%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178825%_
           _%private?178826%_
           _%phi178828%_
           _%ctx178830%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id178832%_ _%private?178833%_ _%phi178834%_)
        (let ((_%ctx178836%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178832%_
           _%private?178833%_
           _%phi178834%_
           _%ctx178836%_))))
    (define gx#core-bind-feature!
      (lambda _g182453_
        (let ((_g182454_ (##length _g182453_)))
          (cond ((##fx= _g182454_ 1)
                 (apply gx#core-bind-feature!__0 _g182453_))
                ((##fx= _g182454_ 2)
                 (apply gx#core-bind-feature!__1 _g182453_))
                ((##fx= _g182454_ 3)
                 (apply gx#core-bind-feature!__2 _g182453_))
                ((##fx= _g182454_ 4)
                 (apply gx#core-bind-feature!__% _g182453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g182453_))))))))
