(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770336543)
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
      (lambda _%$args152631%_
        (apply make-instance gx#module-import::t _%$args152631%_)))
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
      (lambda _%$args152628%_
        (apply make-instance gx#module-export::t _%$args152628%_)))
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
      (lambda _%$args152625%_
        (apply make-instance gx#import-set::t _%$args152625%_)))
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
      (lambda _%$args152622%_
        (apply make-instance gx#export-set::t _%$args152622%_)))
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
      (lambda _%$args152619%_
        (apply make-instance gx#import-expander::t _%$args152619%_)))
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
      (lambda _%$args152616%_
        (apply make-instance gx#export-expander::t _%$args152616%_)))
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
      (lambda _%$args152613%_
        (apply make-instance gx#import-export-expander::t _%$args152613%_)))
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
      (lambda (_%path152610%_ _%fun152611%_)
        (call-with-input-file
         (cons 'path: (cons _%path152610%_ gx#source-file-settings))
         _%fun152611%_)))
    (define gx#module-context:::init!
      (lambda (_%self152593%_
               _%id152594%_
               _%super152595%_
               _%ns152596%_
               _%path152597%_)
        (let ((_%self152600%_ _%self152593%_))
          (if (##fx< '11 (##structure-length _%self152600%_))
              (begin
                (##unchecked-structure-set!
                 _%self152600%_
                 _%id152594%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152600%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152600%_
                 _%super152595%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152600%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self152600%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self152600%_
                 _%ns152596%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152600%_
                 _%path152597%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152600%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self152600%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self152600%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self152600%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self152600%_
                     '11
                     (##structure-length _%self152600%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self152426%_ _%ctx152427%_ _%root152428%_)
        (let* ((_%self152431%_ _%self152426%_)
               (_%super152447%_
                (let ((_%$e152441%_ _%root152428%_))
                  (if _%$e152441%_
                      _%$e152441%_
                      (let ((_%$e152444%_ (gx#core-context-root__0)))
                        (if _%$e152444%_
                            _%$e152444%_
                            (let ((__obj152675
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor152676
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj152675
                                      ':init!)))
                                (if __constructor152676
                                    (__constructor152676 __obj152675)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj152675)))))))
          (if _%ctx152427%_
              (let ((_%id152450%_
                     (##structure-ref
                      _%ctx152427%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path152451%_
                     (##structure-ref
                      _%ctx152427%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in152452%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx152427%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e152453%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx152427%_)))))
                (if (##fx< '8 (##structure-length _%self152431%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self152431%_
                       _%id152450%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152431%_
                       (make-hash-table-eq 'size: (##length _%in152452%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152431%_
                       _%super152447%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152431%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152431%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152431%_
                       _%path152451%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152431%_
                       _%in152452%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152431%_
                       _%e152453%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self152431%_
                           '8
                           (##structure-length _%self152431%_)))
                (##for-each
                 (lambda (_%g152454152456%_)
                   (gx#core-bind-weak-import!__%
                    _%g152454152456%_
                    _%self152431%_))
                 _%in152452%_))
              (if (##fx< '8 (##structure-length _%self152431%_))
                  (begin
                    (##unchecked-structure-set! _%self152431%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self152431%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self152431%_
                     _%super152447%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self152431%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self152431%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self152431%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self152431%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self152431%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self152431%_
                         '8
                         (##structure-length _%self152431%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self152462%_ _%ctx152463%_)
        (let ((_%root152465%_ '#f))
          (gx#prelude-context:::init!__%
           _%self152462%_
           _%ctx152463%_
           _%root152465%_))))
    (define gx#prelude-context:::init!
      (lambda _g152682_
        (let ((_g152683_ (##length _g152682_)))
          (cond ((##fx= _g152683_ 2)
                 (apply gx#prelude-context:::init!__0 _g152682_))
                ((##fx= _g152683_ 3)
                 (apply gx#prelude-context:::init!__% _g152682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g152682_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self152300%_ _%e152301%_)
        (if (##fx< '3 (##structure-length _%self152300%_))
            (begin
              (##unchecked-structure-set!
               _%self152300%_
               _%e152301%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152300%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152300%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self152300%_
                   '3
                   (##structure-length _%self152300%_)))))
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
      (lambda (_%g151926151929%_ _%g151927151931%_)
        (gx#core-apply-user-expander__%
         _%g151926151929%_
         _%g151927151931%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g151797151800%_ _%g151798151802%_)
        (gx#core-apply-user-expander__%
         _%g151797151800%_
         _%g151798151802%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx151668%_)
        (let* ((_%path151670%_
                (##structure-ref _%ctx151668%_ '7 gx#module-context::t '#f))
               (_%path151672%_
                (if (pair? _%path151670%_)
                    (##last _%path151670%_)
                    _%path151670%_)))
          (if (string? _%path151672%_) _%path151672%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path151644%_ _%reload?151645%_ _%eval?151646%_)
        (let ((_%ctx151648%_
               ((gx#current-expander-module-import)
                _%path151644%_
                _%reload?151645%_)))
          (if (and _%ctx151648%_ _%eval?151646%_)
              (gx#eval-module _%ctx151648%_)
              '#!void)
          _%ctx151648%_)))
    (define gx#import-module__0
      (lambda (_%path151653%_)
        (let* ((_%reload?151655%_ '#f) (_%eval?151657%_ '#f))
          (gx#import-module__%
           _%path151653%_
           _%reload?151655%_
           _%eval?151657%_))))
    (define gx#import-module__1
      (lambda (_%path151659%_ _%reload?151660%_)
        (let ((_%eval?151662%_ '#f))
          (gx#import-module__%
           _%path151659%_
           _%reload?151660%_
           _%eval?151662%_))))
    (define gx#import-module
      (lambda _g152684_
        (let ((_g152685_ (##length _g152684_)))
          (cond ((##fx= _g152685_ 1) (apply gx#import-module__0 _g152684_))
                ((##fx= _g152685_ 2) (apply gx#import-module__1 _g152684_))
                ((##fx= _g152685_ 3) (apply gx#import-module__% _g152684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g152684_))))))
    (define gx#eval-module
      (lambda (_%mod151641%_)
        ((gx#current-expander-module-eval) _%mod151641%_)))
    (define gx#core-eval-module
      (lambda (_%obj151620%_)
        (letrec ((_%force-e151622%_
                  (lambda (_%getf151636%_ _%e151637%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf151636%_ _%e151637%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e151637%_))))
          (let _%recur151624%_ ((_%e151626%_ _%obj151620%_))
            (if (##structure-instance-of? _%e151626%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e151629%_
                         (gx#core-context-prelude__% _%e151626%_)))
                    (if _%$e151629%_ (_%recur151624%_ _%$e151629%_) '#!void))
                  (_%force-e151622%_ gx#module-context-e _%e151626%_))
                (if (##structure-instance-of?
                     _%e151626%_
                     'gx#prelude-context::t)
                    (_%force-e151622%_ gx#prelude-context-e _%e151626%_)
                    (if (gx#stx-string? _%e151626%_)
                        (_%recur151624%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e151626%_)))
                        (if (gx#core-library-module-path? _%e151626%_)
                            (_%recur151624%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e151626%_)))
                            (error '"cannot eval module" _%obj151620%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx151600%_)
        (let _%lp151602%_ ((_%e151604%_ _%ctx151600%_))
          (if (or (##structure-instance-of? _%e151604%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e151604%_ 'gx#local-context::t))
              (_%lp151602%_ (##unchecked-structure-ref _%e151604%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e151604%_ 'gx#prelude-context::t)
                  _%e151604%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx151616%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx151616%_))))
    (define gx#core-context-prelude
      (lambda _g152686_
        (let ((_g152687_ (##length _g152686_)))
          (cond ((##fx= _g152687_ 0)
                 (apply gx#core-context-prelude__0 _g152686_))
                ((##fx= _g152687_ 1)
                 (apply gx#core-context-prelude__% _g152686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g152686_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx151591%_)
        (let ((_%$e151593%_ (__hash-get gx#__module-registry _%ctx151591%_)))
          (if _%$e151593%_
              _%$e151593%_
              (let ((_%pre151597%_
                     (let ((__obj152677
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
                        __obj152677
                        _%ctx151591%_)
                       __obj152677)))
                (__hash-put! gx#__module-registry _%ctx151591%_ _%pre151597%_)
                _%pre151597%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath151459%_ _%reload?151460%_)
        (letrec ((_%import-source151462%_
                  (lambda (_%path151550%_)
                    (if (member _%path151550%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path151550%_)
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
                                      (let ((_g152688_
                                             (gx#core-read-module
                                              _%path151550%_)))
                                        (begin
                                          (let ((_g152689_
                                                 (if (##values? _g152688_)
                                                     (##values-length
                                                      _g152688_)
                                                     1)))
                                            (if (not (##fx= _g152689_ 4))
                                                (error "Context expects 4 values"
                                                       _g152689_)))
                                          (let ((_%pre151558%_
                                                 (##values-ref _g152688_ 0))
                                                (_%id151559%_
                                                 (##values-ref _g152688_ 1))
                                                (_%ns151560%_
                                                 (##values-ref _g152688_ 2))
                                                (_%body151561%_
                                                 (##values-ref _g152688_ 3)))
                                            (let* ((_%prelude151571%_
                                                    (if (##structure-instance-of?
                                                         _%pre151558%_
                                                         'gx#prelude-context::t)
                                                        _%pre151558%_
                                                        (if (##structure-instance-of?
                                                             _%pre151558%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre151558%_)
                                                            (if (string? _%pre151558%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre151558%_))
                        (if (not _%pre151558%_)
                            (let ((_%$e151567%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e151567%_
                                  _%$e151567%_
                                  (let ((__obj152678
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
                                     __obj152678
                                     '#f)
                                    __obj152678)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath151459%_
                                   _%pre151558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx151573%_
                                                    (let ((__obj152679
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
                                                       __obj152679
                                                       _%id151559%_
                                                       _%prelude151571%_
                                                       _%ns151560%_
                                                       _%path151550%_)
                                                      __obj152679))
                                                   (_%body151575%_
                                                    (gx#core-expand-module-begin
                                                     _%body151561%_
                                                     _%ctx151573%_))
                                                   (_%body151577%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body151575%_)
                                                     _%path151550%_
                                                     _%ctx151573%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx151573%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body151577%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx151573%_
                                               _%body151577%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path151550%_
                                               _%ctx151573%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id151559%_
                                               _%ctx151573%_)
                                              _%ctx151573%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path151550%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule151463%_
                  (lambda (_%rpath151479%_)
                    (let* ((_%rpath151480151487%_ _%rpath151479%_)
                           (_%E151482151490%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath151480151487%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K151483151538%_
                            (lambda (_%refs151493%_ _%origin151494%_)
                              (let ((_%ctx151496%_
                                     (if _%origin151494%_
                                         (gx#core-import-module__%
                                          _%origin151494%_
                                          _%reload?151460%_)
                                         (gx#current-expander-context))))
                                (let _%lp151498%_ ((_%rest151500%_
                                                    _%refs151493%_)
                                                   (_%ctx151501%_
                                                    _%ctx151496%_))
                                  (let* ((_%rest151502151510%_ _%rest151500%_)
                                         (_%else151504151518%_
                                          (lambda () _%ctx151501%_))
                                         (_%K151506151526%_
                                          (lambda (_%rest151521%_ _%id151522%_)
                                            (let ((_%bind151524%_
                                                   (gx#resolve-identifier__%
                                                    _%id151522%_
                                                    '0
                                                    _%ctx151501%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind151524%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind151524%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp151498%_
                                                   _%rest151521%_
                                                   (##unchecked-structure-ref
                                                    _%bind151524%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath151479%_
                                                         _%id151522%_
                                                         _%bind151524%_))))))
                                    (if (pair? _%rest151502151510%_)
                                        (let ((_%hd151507151529%_
                                               (##car _%rest151502151510%_))
                                              (_%tl151508151531%_
                                               (##cdr _%rest151502151510%_)))
                                          (let* ((_%id151534%_
                                                  _%hd151507151529%_)
                                                 (_%rest151536%_
                                                  _%tl151508151531%_))
                                            (_%K151506151526%_
                                             _%rest151536%_
                                             _%id151534%_)))
                                        (_%else151504151518%_))))))))
                      (if (pair? _%rpath151480151487%_)
                          (let ((_%hd151484151541%_
                                 (##car _%rpath151480151487%_))
                                (_%tl151485151543%_
                                 (##cdr _%rpath151480151487%_)))
                            (let* ((_%origin151546%_ _%hd151484151541%_)
                                   (_%refs151548%_ _%tl151485151543%_))
                              (_%K151483151538%_
                               _%refs151548%_
                               _%origin151546%_)))
                          (_%E151482151490%_))))))
          (let ((_%$e151465%_
                 (if (not _%reload?151460%_)
                     (__hash-get gx#__module-registry _%rpath151459%_)
                     '#f)))
            (if _%$e151465%_
                _%$e151465%_
                (if (list? _%rpath151459%_)
                    (_%import-submodule151463%_ _%rpath151459%_)
                    (if (gx#core-library-module-path? _%rpath151459%_)
                        (let ((_%ctx151470%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath151459%_)
                                _%reload?151460%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath151459%_
                           _%ctx151470%_)
                          _%ctx151470%_)
                        (let* ((_%npath151473%_
                                (path-normalize _%rpath151459%_))
                               (_%$e151475%_
                                (if (not _%reload?151460%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath151473%_)
                                    '#f)))
                          (if _%$e151475%_
                              _%$e151475%_
                              (_%import-source151462%_
                               _%npath151473%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath151584%_)
        (let ((_%reload?151586%_ '#f))
          (gx#core-import-module__% _%rpath151584%_ _%reload?151586%_))))
    (define gx#core-import-module
      (lambda _g152690_
        (let ((_g152691_ (##length _g152690_)))
          (cond ((##fx= _g152691_ 1)
                 (apply gx#core-import-module__0 _g152690_))
                ((##fx= _g152691_ 2)
                 (apply gx#core-import-module__% _g152690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g152690_))))))
    (define gx#core-read-module
      (lambda (_%path151448%_)
        (__with-catch
         (lambda (_%exn151450%_)
           (if (and (datum-parsing-exception? _%exn151450%_)
                    (eq? (datum-parsing-exception-filepos _%exn151450%_) '0))
               (gx#core-read-module/lang _%path151448%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path151448%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g151452151454%_)
                      (display-exception__% _%exn151450%_ _%g151452151454%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path151448%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path151300%_)
        (let _%lp151302%_ ((_%body151304%_
                            (read-syntax-from-file _%path151300%_))
                           (_%pre151305%_ '#f)
                           (_%ns151306%_ '#f)
                           (_%pkg151307%_ '#f))
          (let* ((_%e151308151332%_ _%body151304%_)
                 (_%E151324151358%_
                  (lambda ()
                    (let ((_g152692_
                           (if _%pkg151307%_
                               (values _%pre151305%_
                                       _%ns151306%_
                                       _%pkg151307%_)
                               (gx#core-read-module-package
                                _%path151300%_
                                _%pre151305%_
                                _%ns151306%_))))
                      (begin
                        (let ((_g152693_
                               (if (##values? _g152692_)
                                   (##values-length _g152692_)
                                   1)))
                          (if (not (##fx= _g152693_ 3))
                              (error "Context expects 3 values" _g152693_)))
                        (let ((_%pre151336%_ (##values-ref _g152692_ 0))
                              (_%ns151337%_ (##values-ref _g152692_ 1))
                              (_%pkg151338%_ (##values-ref _g152692_ 2)))
                          (let* ((_%prelude151344%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre151336%_)
                                      (gx#syntax-local-e__0 _%pre151336%_)
                                      (if (gx#core-library-module-path?
                                           _%pre151336%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre151336%_)
                                          (if (gx#stx-string? _%pre151336%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre151336%_
                                               _%path151300%_)
                                              (gx#stx-e _%pre151336%_)))))
                                 (_%path-id151346%_
                                  (gx#core-module-path->namespace
                                   _%path151300%_))
                                 (_%pkg-id151348%_
                                  (if _%pkg151338%_
                                      (##string-append
                                       _%pkg151338%_
                                       '"/"
                                       _%path-id151346%_)
                                      _%path-id151346%_))
                                 (_%module-id151350%_
                                  (##string->symbol _%pkg-id151348%_))
                                 (_%module-ns151355%_
                                  (if (eq? _%ns151337%_ '#!void)
                                      '#f
                                      (let ((_%$e151352%_ _%ns151337%_))
                                        (if _%$e151352%_
                                            _%$e151352%_
                                            _%pkg-id151348%_)))))
                            (values _%prelude151344%_
                                    _%module-id151350%_
                                    _%module-ns151355%_
                                    _%body151304%_)))))))
                 (_%E151317151390%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151308151332%_)
                        (let ((_%e151325151362%_
                               (gx#syntax-e _%e151308151332%_)))
                          (let ((_%hd151326151365%_ (##car _%e151325151362%_))
                                (_%tl151327151367%_ (##cdr _%e151325151362%_)))
                            (if (eq? (gx#stx-e _%hd151326151365%_) 'package:)
                                (if (gx#stx-pair? _%tl151327151367%_)
                                    (let ((_%e151328151370%_
                                           (gx#syntax-e _%tl151327151367%_)))
                                      (let ((_%hd151329151373%_
                                             (##car _%e151328151370%_))
                                            (_%tl151330151375%_
                                             (##cdr _%e151328151370%_)))
                                        (let* ((_%pkg151378%_
                                                _%hd151329151373%_)
                                               (_%rest151380%_
                                                _%tl151330151375%_)
                                               (_%pkg151388%_
                                                (if (gx#identifier?
                                                     _%pkg151378%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg151378%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg151378%_)
                                                            (gx#stx-false?
                                                             _%pkg151378%_))
                                                        (gx#stx-e
                                                         _%pkg151378%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg151378%_)))))
                                          (_%lp151302%_
                                           _%rest151380%_
                                           _%pre151305%_
                                           _%ns151306%_
                                           _%pkg151388%_))))
                                    (_%E151324151358%_))
                                (_%E151324151358%_))))
                        (_%E151324151358%_))))
                 (_%E151310151420%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151308151332%_)
                        (let ((_%e151318151394%_
                               (gx#syntax-e _%e151308151332%_)))
                          (let ((_%hd151319151397%_ (##car _%e151318151394%_))
                                (_%tl151320151399%_ (##cdr _%e151318151394%_)))
                            (if (eq? (gx#stx-e _%hd151319151397%_) 'namespace:)
                                (if (gx#stx-pair? _%tl151320151399%_)
                                    (let ((_%e151321151402%_
                                           (gx#syntax-e _%tl151320151399%_)))
                                      (let ((_%hd151322151405%_
                                             (##car _%e151321151402%_))
                                            (_%tl151323151407%_
                                             (##cdr _%e151321151402%_)))
                                        (let* ((_%ns151410%_
                                                _%hd151322151405%_)
                                               (_%rest151412%_
                                                _%tl151323151407%_)
                                               (_%ns151418%_
                                                (if (gx#identifier?
                                                     _%ns151410%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns151410%_))
                                                    (if (gx#stx-string?
                                                         _%ns151410%_)
                                                        (gx#stx-e _%ns151410%_)
                                                        (if (gx#stx-false?
                                                             _%ns151410%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns151410%_))))))
                                          (_%lp151302%_
                                           _%rest151412%_
                                           _%pre151305%_
                                           _%ns151418%_
                                           _%pkg151307%_))))
                                    (_%E151317151390%_))
                                (_%E151317151390%_))))
                        (_%E151317151390%_))))
                 (_%E151309151444%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151308151332%_)
                        (let ((_%e151311151424%_
                               (gx#syntax-e _%e151308151332%_)))
                          (let ((_%hd151312151427%_ (##car _%e151311151424%_))
                                (_%tl151313151429%_ (##cdr _%e151311151424%_)))
                            (if (eq? (gx#stx-e _%hd151312151427%_) 'prelude:)
                                (if (gx#stx-pair? _%tl151313151429%_)
                                    (let ((_%e151314151432%_
                                           (gx#syntax-e _%tl151313151429%_)))
                                      (let ((_%hd151315151435%_
                                             (##car _%e151314151432%_))
                                            (_%tl151316151437%_
                                             (##cdr _%e151314151432%_)))
                                        (let* ((_%prelude151440%_
                                                _%hd151315151435%_)
                                               (_%rest151442%_
                                                _%tl151316151437%_))
                                          (_%lp151302%_
                                           _%rest151442%_
                                           _%prelude151440%_
                                           _%ns151306%_
                                           _%pkg151307%_))))
                                    (_%E151310151420%_))
                                (_%E151310151420%_))))
                        (_%E151310151420%_)))))
            (_%E151309151444%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path151121%_)
        (letrec ((_%default-read-module-body151123%_
                  (lambda (_%inp151292%_)
                    (let _%lp151294%_ ((_%body151296%_ '()))
                      (let ((_%next151298%_ (read-syntax__% _%inp151292%_)))
                        (if (eof-object? _%next151298%_)
                            (reverse _%body151296%_)
                            (_%lp151294%_
                             (cons _%next151298%_ _%body151296%_)))))))
                 (_%read-body151124%_
                  (lambda (_%inp151209%_
                           _%pre151210%_
                           _%ns151211%_
                           _%pkg151212%_
                           _%args151213%_)
                    (let ((_g152694_
                           (if _%pkg151212%_
                               (values _%pre151210%_
                                       _%ns151211%_
                                       _%pkg151212%_)
                               (gx#core-read-module-package
                                _%path151121%_
                                _%pre151210%_
                                _%ns151211%_))))
                      (begin
                        (let ((_g152695_
                               (if (##values? _g152694_)
                                   (##values-length _g152694_)
                                   1)))
                          (if (not (##fx= _g152695_ 3))
                              (error "Context expects 3 values" _g152695_)))
                        (let ((_%pre151215%_ (##values-ref _g152694_ 0))
                              (_%ns151216%_ (##values-ref _g152694_ 1))
                              (_%pkg151217%_ (##values-ref _g152694_ 2)))
                          (let* ((_%prelude151219%_
                                  (gx#import-module__0 _%pre151215%_))
                                 (_%read-module-body151274%_
                                  (let ((_%$e151265%_
                                         (__find (lambda (_%e151220151222%_)
                                                   (let* ((_%e151220151224151234%_
                                                           _%e151220151222%_)
                                                          (_%else151226151242%_
                                                           (lambda () '#f))
                                                          (_%K151228151246%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e151220151224151234%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e151229151249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e151220151224151234%_
                          '1
                          '#f
                          '#f))
                        (_%e151230151252%_
                         (##unchecked-structure-ref
                          _%e151220151224151234%_
                          '2
                          '#f
                          '#f))
                        (_%e151231151255%_
                         (##unchecked-structure-ref
                          _%e151220151224151234%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e151231151255%_ '1)
                       (let ((_%e151232151258%_
                              (##unchecked-structure-ref
                               _%e151220151224151234%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g151260151262%_)
                                (eq? _%g151260151262%_ 'read-module-body))
                              _%e151232151258%_)
                             (_%K151228151246%_)
                             (_%else151226151242%_)))
                       (_%else151226151242%_)))
                 (_%else151226151242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude151219%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e151265%_
                                        ((lambda (_%xport151268%_)
                                           (let ((_%proc151271%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport151268%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc151271%_)
                                                 _%proc151271%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path151121%_
                                                  _%pre151215%_
                                                  _%proc151271%_))))
                                         _%$e151265%_)
                                        _%default-read-module-body151123%_)))
                                 (_%path-id151276%_
                                  (gx#core-module-path->namespace
                                   _%path151121%_))
                                 (_%pkg-id151278%_
                                  (if _%pkg151217%_
                                      (##string-append
                                       _%pkg151217%_
                                       '"/"
                                       _%path-id151276%_)
                                      _%path-id151276%_))
                                 (_%module-id151280%_
                                  (##string->symbol _%pkg-id151278%_))
                                 (_%module-ns151285%_
                                  (let ((_%$e151282%_ _%ns151216%_))
                                    (if _%$e151282%_
                                        _%$e151282%_
                                        _%pkg-id151278%_)))
                                 (_%body151289%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body151274%_
                                         _%inp151209%_))
                                      gx#current-module-reader-args
                                      _%args151213%_))
                                   gx#current-module-reader-path
                                   _%path151121%_)))
                            (values _%prelude151219%_
                                    _%module-id151280%_
                                    _%module-ns151285%_
                                    _%body151289%_)))))))
                 (_%string-e151125%_
                  (lambda (_%obj151203%_ _%what151204%_)
                    (if (string? _%obj151203%_)
                        _%obj151203%_
                        (if (symbol? _%obj151203%_)
                            (##symbol->string _%obj151203%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what151204%_)
                             _%path151121%_
                             _%obj151203%_)))))
                 (_%read-lang-args151126%_
                  (lambda (_%inp151158%_ _%args151159%_)
                    (let* ((_%args151160151168%_ _%args151159%_)
                           (_%else151162151176%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path151121%_)))
                           (_%K151164151191%_
                            (lambda (_%args151179%_ _%prelude151180%_)
                              (let* ((_%pkg151182%_
                                      (pgetq__0 'package: _%args151179%_))
                                     (_%pkg151184%_
                                      (if _%pkg151182%_
                                          (_%string-e151125%_
                                           _%pkg151182%_
                                           '"package")
                                          '#f))
                                     (_%ns151186%_
                                      (pgetq__0 'namespace: _%args151179%_))
                                     (_%ns151188%_
                                      (if _%ns151186%_
                                          (_%string-e151125%_
                                           _%ns151186%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body151124%_
                                 _%inp151158%_
                                 _%prelude151180%_
                                 _%ns151188%_
                                 _%pkg151184%_
                                 _%args151179%_)))))
                      (if (pair? _%args151160151168%_)
                          (let ((_%hd151165151194%_
                                 (##car _%args151160151168%_))
                                (_%tl151166151196%_
                                 (##cdr _%args151160151168%_)))
                            (let* ((_%prelude151199%_ _%hd151165151194%_)
                                   (_%args151201%_ _%tl151166151196%_))
                              (_%K151164151191%_
                               _%args151201%_
                               _%prelude151199%_)))
                          (_%else151162151176%_)))))
                 (_%read-lang151127%_
                  (lambda (_%inp151132%_)
                    (let* ((_%head151134%_ (read-line _%inp151132%_))
                           (_%$e151136%_
                            (string-index__0 _%head151134%_ '#\space)))
                      (if _%$e151136%_
                          ((lambda (_%ix151139%_)
                             (let ((_%lang151141%_
                                    (substring
                                     _%head151134%_
                                     '0
                                     _%ix151139%_)))
                               (if (equal? _%lang151141%_ '"#lang")
                                   (let* ((_%rest151143%_
                                           (substring
                                            _%head151134%_
                                            (##fx+ _%ix151139%_ '1)
                                            (string-length _%head151134%_)))
                                          (_%args151154%_
                                           (__with-catch
                                            (lambda (_%g151144151146%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path151121%_
                                               _%g151144151146%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest151143%_
                                               (lambda (_%g151149151151%_)
                                                 (read-all
                                                  _%g151149151151%_
                                                  read)))))))
                                     (_%read-lang-args151126%_
                                      _%inp151132%_
                                      _%args151154%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path151121%_))))
                           _%$e151136%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path151121%_)))))
                 (_%read-e151128%_
                  (lambda (_%inp151130%_)
                    (if (eq? (peek-char _%inp151130%_) '#\#)
                        (_%read-lang151127%_ _%inp151130%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path151121%_)))))
          (gx#call-with-input-source-file _%path151121%_ _%read-e151128%_))))
    (define gx#core-read-module-package
      (lambda (_%path151069%_ _%pre151070%_ _%ns151071%_)
        (letrec ((_%string-e151073%_
                  (lambda (_%e151116%_)
                    (if (symbol? _%e151116%_)
                        (##symbol->string _%e151116%_)
                        (if (string? _%e151116%_)
                            _%e151116%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e151116%_))))))
          (let _%lp151075%_ ((_%dir151077%_ (path-directory _%path151069%_))
                             (_%pkg-path151078%_ '()))
            (let ((_%gerbil.pkg151080%_
                   (path-expand '"gerbil.pkg" _%dir151077%_)))
              (if (##file-exists? _%gerbil.pkg151080%_)
                  (let ((_%plist151082%_
                         (gx#core-library-package-plist__% _%dir151077%_ '#t)))
                    (if (null? _%plist151082%_)
                        (let ((_%pkg151085%_
                               (if (null? _%pkg-path151078%_)
                                   '#f
                                   (string-join _%pkg-path151078%_ '"/"))))
                          (values _%pre151070%_ _%ns151071%_ _%pkg151085%_))
                        (if (list? _%plist151082%_)
                            (let* ((_%root151088%_
                                    (pgetq__0 'package: _%plist151082%_))
                                   (_%pkg151092%_
                                    (let ((_%pkg-path151090%_
                                           (if _%root151088%_
                                               (cons (_%string-e151073%_
                                                      _%root151088%_)
                                                     _%pkg-path151078%_)
                                               _%pkg-path151078%_)))
                                      (if (null? _%pkg-path151090%_)
                                          '#f
                                          (string-join
                                           _%pkg-path151090%_
                                           '"/"))))
                                   (_%ns151099%_
                                    (let ((_%ns151097%_
                                           (let ((_%$e151094%_ _%ns151071%_))
                                             (if _%$e151094%_
                                                 _%$e151094%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist151082%_)))))
                                      (if _%ns151097%_
                                          (_%string-e151073%_ _%ns151097%_)
                                          '#f)))
                                   (_%pre151104%_
                                    (let ((_%$e151101%_ _%pre151070%_))
                                      (if _%$e151101%_
                                          _%$e151101%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist151082%_)))))
                              (values _%pre151104%_
                                      _%ns151099%_
                                      _%pkg151092%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist151082%_))))
                  (let ((_%dir*151108%_
                         (path-strip-trailing-directory-separator
                          _%dir151077%_)))
                    (if (or (__string-empty? _%dir*151108%_)
                            (equal? _%dir151077%_ _%dir*151108%_))
                        (values _%pre151070%_ _%ns151071%_ '#f)
                        (let ((_%xpath151113%_
                               (path-strip-directory _%dir*151108%_))
                              (_%xdir151114%_ (path-directory _%dir*151108%_)))
                          (_%lp151075%_
                           _%xdir151114%_
                           (cons _%xpath151113%_ _%pkg-path151078%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path151067%_)
        (path-strip-extension (path-strip-directory _%path151067%_))))
    (define gx#core-module-path->id
      (lambda (_%path151065%_)
        (##string->symbol (gx#core-module-path->namespace _%path151065%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path151044%_ _%rel151045%_)
        (let* ((_%path151047%_ (gx#stx-e _%stx-path151044%_))
               (_%path151049%_
                (if (__string-empty? (path-extension _%path151047%_))
                    (##string-append _%path151047%_ '".ss")
                    _%path151047%_)))
          (gx#core-resolve-path__%
           _%path151049%_
           (let ((_%$e151052%_ (gx#stx-source _%stx-path151044%_)))
             (if _%$e151052%_ _%$e151052%_ _%rel151045%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path151058%_)
        (let ((_%rel151060%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path151058%_ _%rel151060%_))))
    (define gx#core-resolve-module-path
      (lambda _g152696_
        (let ((_g152697_ (##length _g152696_)))
          (cond ((##fx= _g152697_ 1)
                 (apply gx#core-resolve-module-path__0 _g152696_))
                ((##fx= _g152697_ 2)
                 (apply gx#core-resolve-module-path__% _g152696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g152696_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath150929%_)
        (let* ((_%spath150931%_ (symbol->string (gx#stx-e _%libpath150929%_)))
               (_%spath150933%_
                (substring
                 _%spath150931%_
                 '1
                 (##string-length _%spath150931%_)))
               (_%ext150935%_ (path-extension _%spath150933%_))
               (_%ssi150937%_
                (if (__string-empty? _%ext150935%_)
                    (##string-append _%spath150933%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath150933%_)
                     '".ssi")))
               (_%srcs150941%_
                (if (__string-empty? _%ext150935%_)
                    (##map (lambda (_%ext150939%_)
                             (string-append _%spath150933%_ _%ext150939%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath150933%_ '()))))
          (let _%lp150944%_ ((_%rest150946%_ (load-path)))
            (let* ((_%rest150947150956%_ _%rest150946%_)
                   (_%E150950150960%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest150947150956%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K150952151031%_
                     (lambda (_%rest150971%_ _%dir150972%_)
                       (letrec ((_%resolve150974%_
                                 (lambda (_%ssi150987%_ _%srcs150988%_)
                                   (let ((_%compiled-path150990%_
                                          (path-expand
                                           _%ssi150987%_
                                           _%dir150972%_)))
                                     (if (##file-exists?
                                          _%compiled-path150990%_)
                                         (path-normalize
                                          _%compiled-path150990%_)
                                         (let _%lpr150992%_ ((_%rest-src150994%_
                                                              _%srcs150988%_))
                                           (let* ((_%rest-src150995151003%_
                                                   _%rest-src150994%_)
                                                  (_%else150997151011%_
                                                   (lambda ()
                                                     (_%lp150944%_
                                                      _%rest150971%_)))
                                                  (_%K150999151019%_
                                                   (lambda (_%rest-src151014%_
                                                            _%src151015%_)
                                                     (let ((_%src-path151017%_
                                                            (path-expand
                                                             _%src151015%_
                                                             _%dir150972%_)))
                                                       (if (##file-exists?
                                                            _%src-path151017%_)
                                                           (path-normalize
                                                            _%src-path151017%_)
                                                           (_%lpr150992%_
                                                            _%rest-src151014%_))))))
                                             (if (pair? _%rest-src150995151003%_)
                                                 (let ((_%hd151000151022%_
                                                        (##car _%rest-src150995151003%_))
                                                       (_%tl151001151024%_
                                                        (##cdr _%rest-src150995151003%_)))
                                                   (let* ((_%src151027%_
                                                           _%hd151000151022%_)
                                                          (_%rest-src151029%_
                                                           _%tl151001151024%_))
                                                     (_%K150999151019%_
                                                      _%rest-src151029%_
                                                      _%src151027%_)))
                                                 (_%else150997151011%_)))))))))
                         (let ((_%$e150976%_
                                (gx#core-library-package-path-prefix
                                 _%dir150972%_)))
                           (if _%$e150976%_
                               ((lambda (_%prefix150979%_)
                                  (if (string-prefix?
                                       _%prefix150979%_
                                       _%spath150933%_)
                                      (let ((_%ssi150983%_
                                             (substring
                                              _%ssi150937%_
                                              (string-length _%prefix150979%_)
                                              (##string-length _%ssi150937%_)))
                                            (_%srcs150984%_
                                             (##map (lambda (_%src150981%_)
                                                      (substring
                                                       _%src150981%_
                                                       (string-length
                                                        _%prefix150979%_)
                                                       (string-length
                                                        _%src150981%_)))
                                                    _%srcs150941%_)))
                                        (_%resolve150974%_
                                         _%ssi150983%_
                                         _%srcs150984%_))
                                      (_%lp150944%_ _%rest150971%_)))
                                _%$e150976%_)
                               (_%resolve150974%_
                                _%ssi150937%_
                                _%srcs150941%_))))))
                    (_%K150951150965%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath150929%_))))
                (let ((_%try-match150949150968%_
                       (lambda ()
                         (if (null? _%rest150947150956%_)
                             (_%K150951150965%_)
                             (_%E150950150960%_)))))
                  (if (pair? _%rest150947150956%_)
                      (let ((_%tl150954151036%_ (##cdr _%rest150947150956%_))
                            (_%hd150953151034%_ (##car _%rest150947150956%_)))
                        (let ((_%dir151039%_ _%hd150953151034%_)
                              (_%rest151041%_ _%tl150954151036%_))
                          (_%K150952151031%_ _%rest151041%_ _%dir151039%_)))
                      (_%try-match150949150968%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath150897%_)
        (letrec ((_%resolve150899%_
                  (lambda (_%path150920%_ _%base150921%_)
                    (let ((_%$e150923%_
                           (string-rindex__0 _%base150921%_ '#\/)))
                      (if _%$e150923%_
                          ((lambda (_%idx150926%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base150921%_ '0 _%idx150926%_)
                                '"/"
                                _%path150920%_))))
                           _%$e150923%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path150920%_))))))))
          (let ((_%spath150901%_ (symbol->string (gx#stx-e _%modpath150897%_)))
                (_%mod150902%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod150902%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath150897%_))
            (let ((_%mpath150904%_
                   (symbol->string
                    (##structure-ref
                     _%mod150902%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp150906%_ ((_%spath150908%_ _%spath150901%_)
                                 (_%mpath150909%_ _%mpath150904%_))
                (if (string-prefix? '"../" _%spath150908%_)
                    (let ((_%$e150912%_
                           (string-rindex__0 _%mpath150909%_ '#\/)))
                      (if _%$e150912%_
                          ((lambda (_%idx150915%_)
                             (_%lp150906%_
                              (substring
                               _%spath150908%_
                               '3
                               (string-length _%spath150908%_))
                              (substring _%mpath150909%_ '0 _%idx150915%_)))
                           _%$e150912%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath150897%_)))
                    (if (string-prefix? '"./" _%spath150908%_)
                        (_%lp150906%_
                         (substring
                          _%spath150908%_
                          '2
                          (string-length _%spath150908%_))
                         _%mpath150909%_)
                        (_%resolve150899%_
                         _%spath150908%_
                         _%mpath150909%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir150889%_)
        (let ((_%$e150891%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir150889%_))))
          (if _%$e150891%_
              ((lambda (_%pkg150894%_)
                 (##string-append (symbol->string _%pkg150894%_) '"/"))
               _%$e150891%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir150859%_ _%exists?150860%_)
        (let ((_%$e150862%_ (__hash-get gx#__module-pkg-cache _%dir150859%_)))
          (if _%$e150862%_
              _%$e150862%_
              (let* ((_%gerbil.pkg150866%_
                      (path-expand '"gerbil.pkg" _%dir150859%_))
                     (_%plist150876%_
                      (if (or _%exists?150860%_
                              (##file-exists? _%gerbil.pkg150866%_))
                          (let ((_%e150871%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg150866%_
                                  read)))
                            (if (eof-object? _%e150871%_)
                                '()
                                (if (list? _%e150871%_)
                                    _%e150871%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg150866%_
                                     _%e150871%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir150859%_
                 _%plist150876%_)
                _%plist150876%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir150882%_)
        (let ((_%exists?150884%_ '#f))
          (gx#core-library-package-plist__% _%dir150882%_ _%exists?150884%_))))
    (define gx#core-library-package-plist
      (lambda _g152698_
        (let ((_g152699_ (##length _g152698_)))
          (cond ((##fx= _g152699_ 1)
                 (apply gx#core-library-package-plist__0 _g152698_))
                ((##fx= _g152699_ 2)
                 (apply gx#core-library-package-plist__% _g152698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g152698_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx150856%_)
        (gx#core-special-module-path? _%stx150856%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx150854%_)
        (gx#core-special-module-path? _%stx150854%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx150849%_ _%char150850%_)
        (if (gx#identifier? _%stx150849%_)
            (if (interned-symbol? (gx#stx-e _%stx150849%_))
                (let ((_%str150852%_
                       (symbol->string (gx#stx-e _%stx150849%_))))
                  (if (##fx> (##string-length _%str150852%_) '1)
                      (eq? (string-ref _%str150852%_ '0) _%char150850%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx150843%_)
        (gx#core-bound-identifier?__%
         _%stx150843%_
         (lambda (_%g150844150846%_)
           (gx#expander-binding?__% _%g150844150846%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx150837%_)
        (gx#core-bound-identifier?__%
         _%stx150837%_
         (lambda (_%g150838150840%_)
           (gx#expander-binding?__% _%g150838150840%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx150824%_)
        (letrec ((_%module-prelude?150826%_
                  (lambda (_%e150832%_)
                    (let ((_%$e150834%_
                           (##structure-instance-of?
                            _%e150832%_
                            'gx#module-context::t)))
                      (if _%$e150834%_
                          _%$e150834%_
                          (##structure-instance-of?
                           _%e150832%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx150824%_
           (lambda (_%g150827150829%_)
             (gx#expander-binding?__%
              _%g150827150829%_
              _%module-prelude?150826%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in150755%_ _%ctx150756%_ _%force-weak?150757%_)
        (let* ((_%in150758150767%_ _%in150755%_)
               (_%E150760150770%_
                (lambda ()
                  (error '"No clause matching"
                         _%in150758150767%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K150761150783%_
                (lambda (_%weak?150773%_
                         _%phi150774%_
                         _%key150775%_
                         _%source150776%_)
                  (gx#core-bind!__%
                   _%key150775%_
                   (let* ((_%e150778%_
                           (gx#core-resolve-module-export _%source150776%_))
                          (__obj152680
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
                      __obj152680
                      (##unchecked-structure-ref _%e150778%_ '1 '#f '#f)
                      _%key150775%_
                      _%phi150774%_
                      _%e150778%_
                      (##unchecked-structure-ref _%source150776%_ '1 '#f '#f)
                      (let ((_%$e150780%_ _%force-weak?150757%_))
                        (if _%$e150780%_ _%$e150780%_ _%weak?150773%_)))
                     __obj152680)
                   gx#core-context-rebind?
                   _%phi150774%_
                   _%ctx150756%_))))
          (if (##structure-direct-instance-of?
               _%in150758150767%_
               'gx#module-import::t)
              (let* ((_%e150762150786%_
                      (##unchecked-structure-ref
                       _%in150758150767%_
                       '1
                       '#f
                       '#f))
                     (_%source150789%_ _%e150762150786%_)
                     (_%e150763150791%_
                      (##unchecked-structure-ref
                       _%in150758150767%_
                       '2
                       '#f
                       '#f))
                     (_%key150794%_ _%e150763150791%_)
                     (_%e150764150796%_
                      (##unchecked-structure-ref
                       _%in150758150767%_
                       '3
                       '#f
                       '#f))
                     (_%phi150799%_ _%e150764150796%_)
                     (_%e150765150801%_
                      (##unchecked-structure-ref
                       _%in150758150767%_
                       '4
                       '#f
                       '#f))
                     (_%weak?150804%_ _%e150765150801%_))
                (_%K150761150783%_
                 _%weak?150804%_
                 _%phi150799%_
                 _%key150794%_
                 _%source150789%_))
              (_%E150760150770%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in150809%_)
        (let* ((_%ctx150811%_ (gx#current-expander-context))
               (_%force-weak?150813%_ '#f))
          (gx#core-bind-import!__%
           _%in150809%_
           _%ctx150811%_
           _%force-weak?150813%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in150815%_ _%ctx150816%_)
        (let ((_%force-weak?150818%_ '#f))
          (gx#core-bind-import!__%
           _%in150815%_
           _%ctx150816%_
           _%force-weak?150818%_))))
    (define gx#core-bind-import!
      (lambda _g152700_
        (let ((_g152701_ (##length _g152700_)))
          (cond ((##fx= _g152701_ 1) (apply gx#core-bind-import!__0 _g152700_))
                ((##fx= _g152701_ 2) (apply gx#core-bind-import!__1 _g152700_))
                ((##fx= _g152701_ 3) (apply gx#core-bind-import!__% _g152700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g152700_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in150741%_ _%ctx150742%_)
        (gx#core-bind-import!__% _%in150741%_ _%ctx150742%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in150747%_)
        (let ((_%ctx150749%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in150747%_ _%ctx150749%_))))
    (define gx#core-bind-weak-import!
      (lambda _g152702_
        (let ((_g152703_ (##length _g152702_)))
          (cond ((##fx= _g152703_ 1)
                 (apply gx#core-bind-weak-import!__0 _g152702_))
                ((##fx= _g152703_ 2)
                 (apply gx#core-bind-weak-import!__% _g152702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g152702_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out150634%_)
        (letrec ((_%subst150636%_
                  (lambda (_%key150681%_)
                    (let* ((_%key150682150690%_ _%key150681%_)
                           (_%else150684150698%_ (lambda () _%key150681%_))
                           (_%K150686150728%_
                            (lambda (_%mark150701%_ _%id150702%_)
                              (let* ((_%mark150703150709%_ _%mark150701%_)
                                     (_%E150705150712%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark150703150709%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K150706150720%_
                                      (lambda (_%subst150715%_)
                                        (let ((_%$e150717%_
                                               (if _%subst150715%_
                                                   (hash-get
                                                    _%subst150715%_
                                                    _%id150702%_)
                                                   '#f)))
                                          (if _%$e150717%_
                                              _%$e150717%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key150681%_))))))
                                (if (##structure-instance-of?
                                     _%mark150703150709%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e150707150723%_
                                            (##unchecked-structure-ref
                                             _%mark150703150709%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst150726%_ _%e150707150723%_))
                                      (_%K150706150720%_ _%subst150726%_))
                                    (_%E150705150712%_))))))
                      (if (pair? _%key150682150690%_)
                          (let ((_%hd150687150731%_
                                 (##car _%key150682150690%_))
                                (_%tl150688150733%_
                                 (##cdr _%key150682150690%_)))
                            (let* ((_%id150736%_ _%hd150687150731%_)
                                   (_%mark150738%_ _%tl150688150733%_))
                              (_%K150686150728%_ _%mark150738%_ _%id150736%_)))
                          (_%else150684150698%_))))))
          (let* ((_%out150637150647%_ _%out150634%_)
                 (_%E150639150650%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out150637150647%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K150640150657%_
                  (lambda (_%phi150653%_ _%key150654%_ _%ctx150655%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx150655%_ _%phi150653%_)
                     (_%subst150636%_ _%key150654%_)))))
            (if (##structure-direct-instance-of?
                 _%out150637150647%_
                 'gx#module-export::t)
                (let* ((_%e150641150660%_
                        (##unchecked-structure-ref
                         _%out150637150647%_
                         '1
                         '#f
                         '#f))
                       (_%ctx150663%_ _%e150641150660%_)
                       (_%e150642150665%_
                        (##unchecked-structure-ref
                         _%out150637150647%_
                         '2
                         '#f
                         '#f))
                       (_%key150668%_ _%e150642150665%_)
                       (_%e150643150670%_
                        (##unchecked-structure-ref
                         _%out150637150647%_
                         '3
                         '#f
                         '#f))
                       (_%phi150673%_ _%e150643150670%_)
                       (_%e150644150675%_
                        (##unchecked-structure-ref
                         _%out150637150647%_
                         '4
                         '#f
                         '#f))
                       (_%e150645150678%_
                        (##unchecked-structure-ref
                         _%out150637150647%_
                         '5
                         '#f
                         '#f)))
                  (_%K150640150657%_
                   _%phi150673%_
                   _%key150668%_
                   _%ctx150663%_))
                (_%E150639150650%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out150560%_ _%rename150561%_ _%dphi150562%_)
        (let* ((_%out150563150573%_ _%out150560%_)
               (_%E150565150576%_
                (lambda ()
                  (error '"No clause matching"
                         _%out150563150573%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K150566150588%_
                (lambda (_%weak?150579%_
                         _%name150580%_
                         _%phi150581%_
                         _%key150582%_
                         _%ctx150583%_)
                  (##structure
                   gx#module-import::t
                   _%out150560%_
                   (let ((_%$e150585%_ _%rename150561%_))
                     (if _%$e150585%_ _%$e150585%_ _%name150580%_))
                   (fx+ _%phi150581%_ _%dphi150562%_)
                   _%weak?150579%_))))
          (if (##structure-direct-instance-of?
               _%out150563150573%_
               'gx#module-export::t)
              (let* ((_%e150567150591%_
                      (##unchecked-structure-ref
                       _%out150563150573%_
                       '1
                       '#f
                       '#f))
                     (_%ctx150594%_ _%e150567150591%_)
                     (_%e150568150596%_
                      (##unchecked-structure-ref
                       _%out150563150573%_
                       '2
                       '#f
                       '#f))
                     (_%key150599%_ _%e150568150596%_)
                     (_%e150569150601%_
                      (##unchecked-structure-ref
                       _%out150563150573%_
                       '3
                       '#f
                       '#f))
                     (_%phi150604%_ _%e150569150601%_)
                     (_%e150570150606%_
                      (##unchecked-structure-ref
                       _%out150563150573%_
                       '4
                       '#f
                       '#f))
                     (_%name150609%_ _%e150570150606%_)
                     (_%e150571150611%_
                      (##unchecked-structure-ref
                       _%out150563150573%_
                       '5
                       '#f
                       '#f))
                     (_%weak?150614%_ _%e150571150611%_))
                (_%K150566150588%_
                 _%weak?150614%_
                 _%name150609%_
                 _%phi150604%_
                 _%key150599%_
                 _%ctx150594%_))
              (_%E150565150576%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out150619%_)
        (let* ((_%rename150621%_ '#f) (_%dphi150623%_ '0))
          (gx#core-module-export->import__%
           _%out150619%_
           _%rename150621%_
           _%dphi150623%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out150625%_ _%rename150626%_)
        (let ((_%dphi150628%_ '0))
          (gx#core-module-export->import__%
           _%out150625%_
           _%rename150626%_
           _%dphi150628%_))))
    (define gx#core-module-export->import
      (lambda _g152704_
        (let ((_g152705_ (##length _g152704_)))
          (cond ((##fx= _g152705_ 1)
                 (apply gx#core-module-export->import__0 _g152704_))
                ((##fx= _g152705_ 2)
                 (apply gx#core-module-export->import__1 _g152704_))
                ((##fx= _g152705_ 3)
                 (apply gx#core-module-export->import__% _g152704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g152704_))))))
    (define gx#core-expand-module%
      (lambda (_%stx150459%_)
        (letrec ((_%make-context150461%_
                  (lambda (_%id150538%_)
                    (let* ((_%super150540%_ (gx#current-expander-context))
                           (_%bind-id150542%_ (gx#stx-e _%id150538%_))
                           (_%mod-id150544%_
                            (if (##structure-instance-of?
                                 _%super150540%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super150540%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id150542%_)
                                _%bind-id150542%_))
                           (_%ns150546%_ (symbol->string _%mod-id150544%_))
                           (_%path150556%_
                            (if (##structure-instance-of?
                                 _%super150540%_
                                 'gx#module-context::t)
                                (let ((_%path150548%_
                                       (##unchecked-structure-ref
                                        _%super150540%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path150548%_)
                                          (null? _%path150548%_))
                                      (cons _%bind-id150542%_ _%path150548%_)
                                      (if (not _%path150548%_)
                                          _%bind-id150542%_
                                          (cons _%bind-id150542%_
                                                (cons _%path150548%_ '())))))
                                _%bind-id150542%_))
                           (__obj152681
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
                       __obj152681
                       _%mod-id150544%_
                       _%super150540%_
                       _%ns150546%_
                       _%path150556%_)
                      __obj152681)))
                 (_%valid-module-id?150462%_
                  (lambda (_%id150513%_)
                    (let* ((_%str150515%_ (symbol->string _%id150513%_))
                           (_%len150517%_ (##string-length _%str150515%_)))
                      (if (##fx>= _%len150517%_ '1)
                          (let _%loop150520%_ ((_%index150522%_
                                                (##fx- (##string-length
                                                        _%str150515%_)
                                                       '1)))
                            (if (##fx>= _%index150522%_ '0)
                                (let ((_%c150524%_
                                       (string-ref
                                        _%str150515%_
                                        _%index150522%_)))
                                  (if (or (and (##char>=? _%c150524%_ '#\a)
                                               (##char<=? _%c150524%_ '#\z))
                                          (and (##char>=? _%c150524%_ '#\A)
                                               (##char<=? _%c150524%_ '#\Z))
                                          (and (##char>=? _%c150524%_ '#\0)
                                               (##char<=? _%c150524%_ '#\9))
                                          (##char=? _%c150524%_ '#\_)
                                          (##char=? _%c150524%_ '#\-))
                                      (_%loop150520%_
                                       (##fx- _%index150522%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e150463150473%_ _%stx150459%_)
                 (_%E150465150477%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150463150473%_)))
                 (_%E150464150509%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150463150473%_)
                        (let ((_%e150466150481%_
                               (gx#syntax-e _%e150463150473%_)))
                          (let ((_%hd150467150484%_ (##car _%e150466150481%_))
                                (_%tl150468150486%_ (##cdr _%e150466150481%_)))
                            (if (gx#stx-pair? _%tl150468150486%_)
                                (let ((_%e150469150489%_
                                       (gx#syntax-e _%tl150468150486%_)))
                                  (let ((_%hd150470150492%_
                                         (##car _%e150469150489%_))
                                        (_%tl150471150494%_
                                         (##cdr _%e150469150489%_)))
                                    (let* ((_%id150497%_ _%hd150470150492%_)
                                           (_%body150499%_ _%tl150471150494%_))
                                      (if (and (gx#identifier? _%id150497%_)
                                               (gx#stx-list? _%body150499%_))
                                          (if (_%valid-module-id?150462%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx150501%_
                                                      (_%make-context150461%_
                                                       _%id150497%_))
                                                     (_%body150503%_
                                                      (gx#core-expand-module-begin
                                                       _%body150499%_
                                                       _%ctx150501%_))
                                                     (_%body150505%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body150503%_)
                                                       (gx#stx-source
                                                        _%stx150459%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx150501%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body150505%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx150501%_
                                                 _%body150505%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id150497%_
                                                 _%ctx150501%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id150497%_)
                                                  _%body150505%_)
                                                 (gx#stx-source
                                                  _%stx150459%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx150459%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E150465150477%_)))))
                                (_%E150465150477%_))))
                        (_%E150465150477%_)))))
            (_%E150464150509%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body150424%_ _%ctx150425%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx150429%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body150424%_)))
                     (_%e150430150437%_ _%stx150429%_)
                     (_%E150432150441%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx150429%_)))
                     (_%E150431150455%_
                      (lambda ()
                        (if (gx#stx-pair? _%e150430150437%_)
                            (let ((_%e150433150445%_
                                   (gx#syntax-e _%e150430150437%_)))
                              (let ((_%hd150434150448%_
                                     (##car _%e150433150445%_))
                                    (_%tl150435150450%_
                                     (##cdr _%e150433150445%_)))
                                (if (and (gx#identifier? _%hd150434150448%_)
                                         (gx#core-identifier=?
                                          _%hd150434150448%_
                                          '%#begin-module))
                                    (let ((_%body150453%_ _%tl150435150450%_))
                                      (if (gx#sealed-syntax? _%stx150429%_)
                                          _%body150453%_
                                          (gx#core-expand-module-body
                                           _%body150453%_)))
                                    (_%E150432150441%_))))
                            (_%E150432150441%_)))))
                (_%E150431150455%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx150425%_)))
    (define gx#core-expand-module-body
      (lambda (_%body150220%_)
        (letrec ((_%expand-special150222%_
                  (lambda (_%hd150351%_ _%K150352%_ _%rest150353%_ _%r150354%_)
                    (let* ((_%e150355150372%_ _%hd150351%_)
                           (_%E150367150376%_
                            (lambda ()
                              (_%K150352%_
                               _%rest150353%_
                               (cons (gx#core-expand-top _%hd150351%_)
                                     _%r150354%_))))
                           (_%E150357150388%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150355150372%_)
                                  (let ((_%e150368150380%_
                                         (gx#syntax-e _%e150355150372%_)))
                                    (let ((_%hd150369150383%_
                                           (##car _%e150368150380%_))
                                          (_%tl150370150385%_
                                           (##cdr _%e150368150380%_)))
                                      (if (and (gx#identifier?
                                                _%hd150369150383%_)
                                               (gx#core-identifier=?
                                                _%hd150369150383%_
                                                '%#export))
                                          (_%K150352%_
                                           _%rest150353%_
                                           (cons _%hd150351%_ _%r150354%_))
                                          (_%E150367150376%_))))
                                  (_%E150367150376%_))))
                           (_%E150356150420%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150355150372%_)
                                  (let ((_%e150358150392%_
                                         (gx#syntax-e _%e150355150372%_)))
                                    (let ((_%hd150359150395%_
                                           (##car _%e150358150392%_))
                                          (_%tl150360150397%_
                                           (##cdr _%e150358150392%_)))
                                      (if (and (gx#identifier?
                                                _%hd150359150395%_)
                                               (gx#core-identifier=?
                                                _%hd150359150395%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl150360150397%_)
                                              (let ((_%e150361150400%_
                                                     (gx#syntax-e
                                                      _%tl150360150397%_)))
                                                (let ((_%hd150362150403%_
                                                       (##car _%e150361150400%_))
                                                      (_%tl150363150405%_
                                                       (##cdr _%e150361150400%_)))
                                                  (let ((_%hd-bind150408%_
                                                         _%hd150362150403%_))
                                                    (if (gx#stx-pair?
                                                         _%tl150363150405%_)
                                                        (let ((_%e150364150410%_
                                                               (gx#syntax-e
                                                                _%tl150363150405%_)))
                                                          (let ((_%hd150365150413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e150364150410%_))
                        (_%tl150366150415%_ (##cdr _%e150364150410%_)))
                    (let ((_%expr150418%_ _%hd150365150413%_))
                      (if (gx#stx-null? _%tl150366150415%_)
                          (if (gx#core-bind-values? _%hd-bind150408%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind150408%_)
                                (_%K150352%_
                                 _%rest150353%_
                                 (cons _%hd150351%_ _%r150354%_)))
                              (_%E150357150388%_))
                          (_%E150357150388%_)))))
                (_%E150357150388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150357150388%_))
                                          (_%E150357150388%_))))
                                  (_%E150357150388%_)))))
                      (_%E150356150420%_))))
                 (_%expand-body150223%_
                  (lambda (_%rbody150225%_)
                    (let _%lp150227%_ ((_%rest150229%_ _%rbody150225%_)
                                       (_%body150230%_ '()))
                      (let* ((_%rest150231150239%_ _%rest150229%_)
                             (_%else150233150247%_ (lambda () _%body150230%_))
                             (_%K150235150339%_
                              (lambda (_%rest150250%_ _%hd150251%_)
                                (let* ((_%e150252150273%_ _%hd150251%_)
                                       (_%E150268150277%_
                                        (lambda ()
                                          (_%lp150227%_
                                           _%rest150250%_
                                           (cons (gx#core-expand-expression
                                                  _%hd150251%_)
                                                 _%body150230%_))))
                                       (_%E150264150291%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150252150273%_)
                                              (let ((_%e150269150281%_
                                                     (gx#syntax-e
                                                      _%e150252150273%_)))
                                                (let ((_%hd150270150284%_
                                                       (##car _%e150269150281%_))
                                                      (_%tl150271150286%_
                                                       (##cdr _%e150269150281%_)))
                                                  (let ((_%form150289%_
                                                         _%hd150270150284%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form150289%_
                                                         gx#special-form-binding?)
                                                        (_%lp150227%_
                                                         _%rest150250%_
                                                         (cons _%hd150251%_
                                                               _%body150230%_))
                                                        (_%E150268150277%_)))))
                                              (_%E150268150277%_))))
                                       (_%E150254150303%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150252150273%_)
                                              (let ((_%e150265150295%_
                                                     (gx#syntax-e
                                                      _%e150252150273%_)))
                                                (let ((_%hd150266150298%_
                                                       (##car _%e150265150295%_))
                                                      (_%tl150267150300%_
                                                       (##cdr _%e150265150295%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150266150298%_)
                                                           (gx#core-identifier=?
                                                            _%hd150266150298%_
                                                            '%#export))
                                                      (_%lp150227%_
                                                       _%rest150250%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd150251%_)
                                                             _%body150230%_))
                                                      (_%E150264150291%_))))
                                              (_%E150264150291%_))))
                                       (_%E150253150335%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150252150273%_)
                                              (let ((_%e150255150307%_
                                                     (gx#syntax-e
                                                      _%e150252150273%_)))
                                                (let ((_%hd150256150310%_
                                                       (##car _%e150255150307%_))
                                                      (_%tl150257150312%_
                                                       (##cdr _%e150255150307%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150256150310%_)
                                                           (gx#core-identifier=?
                                                            _%hd150256150310%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl150257150312%_)
                                                          (let ((_%e150258150315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl150257150312%_)))
                    (let ((_%hd150259150318%_ (##car _%e150258150315%_))
                          (_%tl150260150320%_ (##cdr _%e150258150315%_)))
                      (let ((_%hd-bind150323%_ _%hd150259150318%_))
                        (if (gx#stx-pair? _%tl150260150320%_)
                            (let ((_%e150261150325%_
                                   (gx#syntax-e _%tl150260150320%_)))
                              (let ((_%hd150262150328%_
                                     (##car _%e150261150325%_))
                                    (_%tl150263150330%_
                                     (##cdr _%e150261150325%_)))
                                (let ((_%expr150333%_ _%hd150262150328%_))
                                  (if (gx#stx-null? _%tl150263150330%_)
                                      (_%lp150227%_
                                       _%rest150250%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind150323%_)
                                               (gx#core-expand-expression
                                                _%expr150333%_))
                                              (gx#stx-source _%hd150251%_))
                                             _%body150230%_))
                                      (_%E150254150303%_)))))
                            (_%E150254150303%_)))))
                  (_%E150254150303%_))
              (_%E150254150303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150254150303%_)))))
                                  (_%E150253150335%_)))))
                        (if (pair? _%rest150231150239%_)
                            (let ((_%hd150236150342%_
                                   (##car _%rest150231150239%_))
                                  (_%tl150237150344%_
                                   (##cdr _%rest150231150239%_)))
                              (let* ((_%hd150347%_ _%hd150236150342%_)
                                     (_%rest150349%_ _%tl150237150344%_))
                                (_%K150235150339%_
                                 _%rest150349%_
                                 _%hd150347%_)))
                            (_%else150233150247%_)))))))
          (_%expand-body150223%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body150220%_)
            _%expand-special150222%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx150061%_
               _%expanded?150062%_
               _%method150063%_
               _%current-phi150064%_
               _%expand1150065%_)
        (letrec ((_%K150067%_
                  (lambda (_%rest150187%_ _%r150188%_)
                    (let* ((_%e150189150196%_ _%rest150187%_)
                           (_%E150191150200%_ (lambda () _%r150188%_))
                           (_%E150190150216%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150189150196%_)
                                  (let ((_%e150192150204%_
                                         (gx#syntax-e _%e150189150196%_)))
                                    (let ((_%hd150193150207%_
                                           (##car _%e150192150204%_))
                                          (_%tl150194150209%_
                                           (##cdr _%e150192150204%_)))
                                      (let* ((_%hd150212%_ _%hd150193150207%_)
                                             (_%rest150214%_
                                              _%tl150194150209%_))
                                        (_%step150068%_
                                         _%hd150212%_
                                         _%rest150214%_
                                         _%r150188%_))))
                                  (_%E150191150200%_)))))
                      (_%E150190150216%_))))
                 (_%step150068%_
                  (lambda (_%hd150101%_ _%rest150102%_ _%r150103%_)
                    (let* ((_%e150104150122%_ _%hd150101%_)
                           (_%E150117150126%_
                            (lambda ()
                              (if (_%expanded?150062%_ (gx#stx-e _%hd150101%_))
                                  (_%K150067%_
                                   _%rest150102%_
                                   (cons (gx#stx-e _%hd150101%_) _%r150103%_))
                                  (_%expand1150065%_
                                   _%hd150101%_
                                   _%K150067%_
                                   _%rest150102%_
                                   _%r150103%_))))
                           (_%E150113150142%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150104150122%_)
                                  (let ((_%e150118150130%_
                                         (gx#syntax-e _%e150104150122%_)))
                                    (let ((_%hd150119150133%_
                                           (##car _%e150118150130%_))
                                          (_%tl150120150135%_
                                           (##cdr _%e150118150130%_)))
                                      (let* ((_%macro150138%_
                                              _%hd150119150133%_)
                                             (_%body150140%_
                                              _%tl150120150135%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro150138%_
                                             gx#syntax-binding?)
                                            (_%K150067%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro150138%_)
                                                    _%hd150101%_
                                                    _%method150063%_)
                                                   _%rest150102%_)
                                             _%r150103%_)
                                            (_%E150117150126%_)))))
                                  (_%E150117150126%_))))
                           (_%E150106150156%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150104150122%_)
                                  (let ((_%e150114150146%_
                                         (gx#syntax-e _%e150104150122%_)))
                                    (let ((_%hd150115150149%_
                                           (##car _%e150114150146%_))
                                          (_%tl150116150151%_
                                           (##cdr _%e150114150146%_)))
                                      (if (eq? (gx#stx-e _%hd150115150149%_)
                                               'begin:)
                                          (let ((_%body150154%_
                                                 _%tl150116150151%_))
                                            (_%K150067%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest150102%_
                                              _%body150154%_)
                                             _%r150103%_))
                                          (_%E150113150142%_))))
                                  (_%E150113150142%_))))
                           (_%E150105150183%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150104150122%_)
                                  (let ((_%e150107150160%_
                                         (gx#syntax-e _%e150104150122%_)))
                                    (let ((_%hd150108150163%_
                                           (##car _%e150107150160%_))
                                          (_%tl150109150165%_
                                           (##cdr _%e150107150160%_)))
                                      (if (eq? (gx#stx-e _%hd150108150163%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl150109150165%_)
                                              (let ((_%e150110150168%_
                                                     (gx#syntax-e
                                                      _%tl150109150165%_)))
                                                (let ((_%hd150111150171%_
                                                       (##car _%e150110150168%_))
                                                      (_%tl150112150173%_
                                                       (##cdr _%e150110150168%_)))
                                                  (let* ((_%dphi150176%_
                                                          _%hd150111150171%_)
                                                         (_%body150178%_
                                                          _%tl150112150173%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi150176%_)
                                                        (let ((_%rbody150181%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K150067%_ _%body150178%_ '()))
                        _%current-phi150064%_
                        (fx+ (gx#stx-e _%dphi150176%_)
                             (_%current-phi150064%_)))))
                  (_%K150067%_
                   _%rest150102%_
                   (__foldr1 cons _%r150103%_ _%rbody150181%_)))
                (_%E150106150156%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150106150156%_))
                                          (_%E150106150156%_))))
                                  (_%E150106150156%_)))))
                      (_%E150105150183%_)))))
          (let* ((_%e150069150076%_ _%stx150061%_)
                 (_%E150071150080%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150069150076%_)))
                 (_%E150070150097%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150069150076%_)
                        (let ((_%e150072150084%_
                               (gx#syntax-e _%e150069150076%_)))
                          (let ((_%hd150073150087%_ (##car _%e150072150084%_))
                                (_%tl150074150089%_ (##cdr _%e150072150084%_)))
                            (let ((_%body150092%_ _%tl150074150089%_))
                              (if (_%current-phi150064%_)
                                  (_%K150067%_ _%body150092%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K150067%_ _%body150092%_ '()))
                                   _%current-phi150064%_
                                   (gx#current-expander-phi))))))
                        (_%E150071150080%_)))))
            (_%E150070150097%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx149715%_ _%internal-expand?149716%_)
        (letrec ((_%expand1149718%_
                  (lambda (_%hd150033%_ _%K150034%_ _%rest150035%_ _%r150036%_)
                    (if (gx#core-bound-module? _%hd150033%_)
                        (_%import1149719%_
                         (gx#syntax-local-e__0 _%hd150033%_)
                         _%K150034%_
                         _%rest150035%_
                         _%r150036%_)
                        (if (gx#core-library-module-path? _%hd150033%_)
                            (_%import1149719%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd150033%_))
                             _%K150034%_
                             _%rest150035%_
                             _%r150036%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd150033%_)
                                (_%import1149719%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd150033%_))
                                 _%K150034%_
                                 _%rest150035%_
                                 _%r150036%_)
                                (let ((_%e150042%_ (gx#stx-e _%hd150033%_)))
                                  (if (pair? _%e150042%_)
                                      (let ((_%$e150045%_
                                             (gx#stx-e (##car _%e150042%_))))
                                        (if (eq? 'spec: _%$e150045%_)
                                            (_%import-spec149722%_
                                             _%hd150033%_
                                             _%K150034%_
                                             _%rest150035%_
                                             _%r150036%_)
                                            (if (eq? 'in: _%$e150045%_)
                                                (_%import-submodule149720%_
                                                 _%hd150033%_
                                                 _%K150034%_
                                                 _%rest150035%_
                                                 _%r150036%_)
                                                (if (eq? 'runtime:
                                                         _%$e150045%_)
                                                    (_%import-runtime149721%_
                                                     _%hd150033%_
                                                     _%K150034%_
                                                     _%rest150035%_
                                                     _%r150036%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx149715%_
                                                     _%hd150033%_)))))
                                      (if (string? _%e150042%_)
                                          (_%import1149719%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd150033%_
                                             (gx#stx-source _%stx149715%_)))
                                           _%K150034%_
                                           _%rest150035%_
                                           _%r150036%_)
                                          (if (##structure-instance-of?
                                               _%e150042%_
                                               'gx#module-context::t)
                                              (_%K150034%_
                                               _%rest150035%_
                                               (cons _%e150042%_ _%r150036%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx149715%_
                                               _%hd150033%_))))))))))
                 (_%import1149719%_
                  (lambda (_%ctx150022%_
                           _%K150023%_
                           _%rest150024%_
                           _%r150025%_)
                    (let ((_%dphi150027%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K150023%_
                       _%rest150024%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx150022%_
                              _%dphi150027%_
                              (map (lambda (_%g150028150030%_)
                                     (gx#core-module-export->import__%
                                      _%g150028150030%_
                                      '#f
                                      _%dphi150027%_))
                                   (##unchecked-structure-ref
                                    _%ctx150022%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r150025%_)))))
                 (_%import-submodule149720%_
                  (lambda (_%hd149989%_ _%K149990%_ _%rest149991%_ _%r149992%_)
                    (let* ((_%e149993150000%_ _%hd149989%_)
                           (_%E149995150004%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149993150000%_)))
                           (_%E149994150018%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149993150000%_)
                                  (let ((_%e149996150008%_
                                         (gx#syntax-e _%e149993150000%_)))
                                    (let ((_%hd149997150011%_
                                           (##car _%e149996150008%_))
                                          (_%tl149998150013%_
                                           (##cdr _%e149996150008%_)))
                                      (let ((_%spath150016%_
                                             _%tl149998150013%_))
                                        (_%import1149719%_
                                         (_%import-spec-source149723%_
                                          _%spath150016%_)
                                         _%K149990%_
                                         _%rest149991%_
                                         _%r149992%_))))
                                  (_%E149995150004%_)))))
                      (_%E149994150018%_))))
                 (_%import-runtime149721%_
                  (lambda (_%hd149956%_ _%K149957%_ _%rest149958%_ _%r149959%_)
                    (let* ((_%e149960149967%_ _%hd149956%_)
                           (_%E149962149971%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149960149967%_)))
                           (_%E149961149985%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149960149967%_)
                                  (let ((_%e149963149975%_
                                         (gx#syntax-e _%e149960149967%_)))
                                    (let ((_%hd149964149978%_
                                           (##car _%e149963149975%_))
                                          (_%tl149965149980%_
                                           (##cdr _%e149963149975%_)))
                                      (let ((_%spath149983%_
                                             _%tl149965149980%_))
                                        (_%K149957%_
                                         _%rest149958%_
                                         (cons (_%import-spec-source149723%_
                                                _%spath149983%_)
                                               _%r149959%_)))))
                                  (_%E149962149971%_)))))
                      (_%E149961149985%_))))
                 (_%import-spec149722%_
                  (lambda (_%hd149794%_ _%K149795%_ _%rest149796%_ _%r149797%_)
                    (let* ((_%e149798149815%_ _%hd149794%_)
                           (_%E149807149819%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149798149815%_)))
                           (_%E149800149930%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149798149815%_)
                                  (let ((_%e149808149823%_
                                         (gx#syntax-e _%e149798149815%_)))
                                    (let ((_%hd149809149826%_
                                           (##car _%e149808149823%_))
                                          (_%tl149810149828%_
                                           (##cdr _%e149808149823%_)))
                                      (if (gx#stx-pair? _%tl149810149828%_)
                                          (let ((_%e149811149831%_
                                                 (gx#syntax-e
                                                  _%tl149810149828%_)))
                                            (let ((_%hd149812149834%_
                                                   (##car _%e149811149831%_))
                                                  (_%tl149813149836%_
                                                   (##cdr _%e149811149831%_)))
                                              (let* ((_%path149839%_
                                                      _%hd149812149834%_)
                                                     (_%specs149841%_
                                                      _%tl149813149836%_))
                                                (let ((_%src-ctx149843%_
                                                       (_%import-spec-source149723%_
                                                        _%path149839%_))
                                                      (_%exports149844%_
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
                                                      (_%specs149845%_
                                                       (gx#syntax->list
                                                        _%specs149841%_)))
                                                  (for-each
                                                   (lambda (_%out149847%_)
                                                     (__hash-put!
                                                      _%exports149844%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out149847%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out149847%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out149847%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx149843%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K149795%_
                                                   _%rest149796%_
                                                   (__foldl1
                                                    (lambda (_%spec149849%_
                                                             _%r149850%_)
                                                      (let* ((_%e149851149867%_
                                                              _%spec149849%_)
                                                             (_%E149853149871%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e149851149867%_)))
                     (_%E149852149926%_
                      (lambda ()
                        (if (gx#stx-pair? _%e149851149867%_)
                            (let ((_%e149854149875%_
                                   (gx#syntax-e _%e149851149867%_)))
                              (let ((_%hd149855149878%_
                                     (##car _%e149854149875%_))
                                    (_%tl149856149880%_
                                     (##cdr _%e149854149875%_)))
                                (let ((_%phi149883%_ _%hd149855149878%_))
                                  (if (gx#stx-pair? _%tl149856149880%_)
                                      (let ((_%e149857149885%_
                                             (gx#syntax-e _%tl149856149880%_)))
                                        (let ((_%hd149858149888%_
                                               (##car _%e149857149885%_))
                                              (_%tl149859149890%_
                                               (##cdr _%e149857149885%_)))
                                          (let ((_%name149893%_
                                                 _%hd149858149888%_))
                                            (if (gx#stx-pair?
                                                 _%tl149859149890%_)
                                                (let ((_%e149860149895%_
                                                       (gx#syntax-e
                                                        _%tl149859149890%_)))
                                                  (let ((_%hd149861149898%_
                                                         (##car _%e149860149895%_))
                                                        (_%tl149862149900%_
                                                         (##cdr _%e149860149895%_)))
                                                    (let ((_%src-phi149903%_
                                                           _%hd149861149898%_))
                                                      (if (gx#stx-pair?
                                                           _%tl149862149900%_)
                                                          (let ((_%e149863149905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl149862149900%_)))
                    (let ((_%hd149864149908%_ (##car _%e149863149905%_))
                          (_%tl149865149910%_ (##cdr _%e149863149905%_)))
                      (let ((_%src-name149913%_ _%hd149864149908%_))
                        (if (gx#stx-null? _%tl149865149910%_)
                            (if (and (gx#stx-fixnum? _%src-phi149903%_)
                                     (gx#identifier? _%src-name149913%_)
                                     (gx#stx-fixnum? _%phi149883%_)
                                     (gx#identifier? _%name149893%_))
                                (let ((_%src-phi149915%_
                                       (gx#stx-e _%src-phi149903%_))
                                      (_%src-name149916%_
                                       (gx#core-identifier-key
                                        _%src-name149913%_))
                                      (_%phi149917%_ (gx#stx-e _%phi149883%_))
                                      (_%name149918%_
                                       (gx#core-identifier-key
                                        _%name149893%_)))
                                  (let ((_%$e149920%_
                                         (__hash-get
                                          _%exports149844%_
                                          (cons _%src-phi149915%_
                                                _%src-name149916%_))))
                                    (if _%$e149920%_
                                        ((lambda (_%out149923%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out149923%_
                                                  _%name149918%_
                                                  (fx- _%phi149917%_
                                                       _%src-phi149915%_))
                                                 _%r149850%_))
                                         _%$e149920%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx149715%_
                                         _%hd149794%_))))
                                (_%E149853149871%_))
                            (_%E149853149871%_)))))
                  (_%E149853149871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E149853149871%_)))))
                                      (_%E149853149871%_)))))
                            (_%E149853149871%_)))))
                (_%E149852149926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r149797%_
                                                    _%specs149845%_))))))
                                          (_%E149807149819%_))))
                                  (_%E149807149819%_))))
                           (_%E149799149952%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149798149815%_)
                                  (let ((_%e149801149934%_
                                         (gx#syntax-e _%e149798149815%_)))
                                    (let ((_%hd149802149937%_
                                           (##car _%e149801149934%_))
                                          (_%tl149803149939%_
                                           (##cdr _%e149801149934%_)))
                                      (if (gx#stx-pair? _%tl149803149939%_)
                                          (let ((_%e149804149942%_
                                                 (gx#syntax-e
                                                  _%tl149803149939%_)))
                                            (let ((_%hd149805149945%_
                                                   (##car _%e149804149942%_))
                                                  (_%tl149806149947%_
                                                   (##cdr _%e149804149942%_)))
                                              (let ((_%path149950%_
                                                     _%hd149805149945%_))
                                                (if (gx#stx-null?
                                                     _%tl149806149947%_)
                                                    (_%K149795%_
                                                     _%rest149796%_
                                                     (cons (_%import-spec-source149723%_
                                                            _%path149950%_)
                                                           _%r149797%_))
                                                    (_%E149800149930%_)))))
                                          (_%E149800149930%_))))
                                  (_%E149800149930%_)))))
                      (_%E149799149952%_))))
                 (_%import-spec-source149723%_
                  (lambda (_%spath149792%_)
                    (gx#core-import-nested-module
                     _%spath149792%_
                     _%stx149715%_)))
                 (_%import!149724%_
                  (lambda (_%rbody149737%_)
                    (letrec* ((_%current-ctx149739%_
                               (gx#current-expander-context))
                              (_%deps149740%_ (make-hash-table-eq))
                              (_%bind!149741%_
                               (lambda (_%hd149790%_)
                                 (gx#core-bind-import!__1
                                  _%hd149790%_
                                  _%current-ctx149739%_))))
                      (let _%lp149743%_ ((_%rest149745%_ _%rbody149737%_)
                                         (_%body149746%_ '()))
                        (let* ((_%rest149747149755%_ _%rest149745%_)
                               (_%else149749149766%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx149739%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx149739%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx149739%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body149746%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx149763%_ _%_149764%_)
                                     (gx#eval-module _%ctx149763%_))
                                   _%deps149740%_)
                                  _%body149746%_))
                               (_%K149751149778%_
                                (lambda (_%rest149769%_ _%hd149770%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd149770%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!149741%_ _%hd149770%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd149770%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd149770%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps149740%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd149770%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd149770%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!149741%_
                                             (##unchecked-structure-ref
                                              _%hd149770%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd149770%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps149740%_
                                                 (##unchecked-structure-ref
                                                  _%hd149770%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e149774%_
                                                 (##structure-instance-of?
                                                  _%hd149770%_
                                                  'gx#module-context::t)))
                                            (if _%$e149774%_
                                                _%$e149774%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx149715%_
                                                 _%hd149770%_)))))
                                  (_%lp149743%_
                                   _%rest149769%_
                                   (cons _%hd149770%_ _%body149746%_)))))
                          (if (pair? _%rest149747149755%_)
                              (let ((_%hd149752149781%_
                                     (##car _%rest149747149755%_))
                                    (_%tl149753149783%_
                                     (##cdr _%rest149747149755%_)))
                                (let* ((_%hd149786%_ _%hd149752149781%_)
                                       (_%rest149788%_ _%tl149753149783%_))
                                  (_%K149751149778%_
                                   _%rest149788%_
                                   _%hd149786%_)))
                              (_%else149749149766%_)))))))
                 (_%expanded-import?149725%_
                  (lambda (_%e149729%_)
                    (let ((_%$e149731%_
                           (##structure-direct-instance-of?
                            _%e149729%_
                            'gx#import-set::t)))
                      (if _%$e149731%_
                          _%$e149731%_
                          (let ((_%$e149734%_
                                 (##structure-direct-instance-of?
                                  _%e149729%_
                                  'gx#module-import::t)))
                            (if _%$e149734%_
                                _%$e149734%_
                                (##structure-instance-of?
                                 _%e149729%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody149727%_
                 (gx#core-expand-import/export
                  _%stx149715%_
                  _%expanded-import?149725%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1149718%_)))
            (if _%internal-expand?149716%_
                (reverse _%rbody149727%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!149724%_ _%rbody149727%_))
                 (gx#stx-source _%stx149715%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx150054%_)
        (let ((_%internal-expand?150056%_ '#f))
          (gx#core-expand-import%__%
           _%stx150054%_
           _%internal-expand?150056%_))))
    (define gx#core-expand-import%
      (lambda _g152706_
        (let ((_g152707_ (##length _g152706_)))
          (cond ((##fx= _g152707_ 1)
                 (apply gx#core-expand-import%__0 _g152706_))
                ((##fx= _g152707_ 2)
                 (apply gx#core-expand-import%__% _g152706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g152706_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath149642%_ _%where149643%_)
        (let* ((_%e149644149651%_ _%spath149642%_)
               (_%E149646149655%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149644149651%_)))
               (_%E149645149710%_
                (lambda ()
                  (if (gx#stx-pair? _%e149644149651%_)
                      (let ((_%e149647149659%_
                             (gx#syntax-e _%e149644149651%_)))
                        (let ((_%hd149648149662%_ (##car _%e149647149659%_))
                              (_%tl149649149664%_ (##cdr _%e149647149659%_)))
                          (let* ((_%origin149667%_ _%hd149648149662%_)
                                 (_%sub149669%_ _%tl149649149664%_)
                                 (_%origin-ctx149671%_
                                  (if (gx#stx-false? _%origin149667%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin149667%_))))
                            (let _%lp149673%_ ((_%rest149675%_ _%sub149669%_)
                                               (_%ctx149676%_
                                                _%origin-ctx149671%_))
                              (let* ((_%e149677149684%_ _%rest149675%_)
                                     (_%E149679149688%_
                                      (lambda () _%ctx149676%_))
                                     (_%E149678149706%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e149677149684%_)
                                            (let ((_%e149680149692%_
                                                   (gx#syntax-e
                                                    _%e149677149684%_)))
                                              (let ((_%hd149681149695%_
                                                     (##car _%e149680149692%_))
                                                    (_%tl149682149697%_
                                                     (##cdr _%e149680149692%_)))
                                                (let* ((_%id149700%_
                                                        _%hd149681149695%_)
                                                       (_%rest149702%_
                                                        _%tl149682149697%_)
                                                       (_%bind149704%_
                                                        (gx#resolve-identifier__%
                                                         _%id149700%_
                                                         '0
                                                         _%ctx149676%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind149704%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind149704%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where149643%_
                                                       _%spath149642%_
                                                       _%id149700%_))
                                                  (_%lp149673%_
                                                   _%rest149702%_
                                                   (##unchecked-structure-ref
                                                    _%bind149704%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E149679149688%_)))))
                                (_%E149678149706%_))))))
                      (_%E149646149655%_)))))
          (_%E149645149710%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd149640%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd149640%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx149135%_ _%internal-expand?149136%_)
        (letrec* ((_%make-export__152634152635%_
                   (lambda (_%bind149588%_
                            _%phi149589%_
                            _%ctx149590%_
                            _%name149591%_)
                     (let* ((_%key149593%_
                             (##unchecked-structure-ref
                              _%bind149588%_
                              '2
                              '#f
                              '#f))
                            (_%export-key149595%_
                             (if _%name149591%_
                                 (gx#core-identifier-key _%name149591%_)
                                 _%key149593%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx149590%_
                        _%key149593%_
                        _%phi149589%_
                        _%export-key149595%_
                        (let ((_%$e149598%_
                               (##structure-instance-of?
                                _%bind149588%_
                                'gx#extern-binding::t)))
                          (if _%$e149598%_
                              _%$e149598%_
                              (##structure-direct-instance-of?
                               _%bind149588%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__152636152639%_
                   (lambda (_%bind149604%_)
                     (let* ((_%phi149606%_ (gx#current-export-expander-phi))
                            (_%ctx149608%_ (gx#current-expander-context))
                            (_%name149610%_ '#f))
                       (_%make-export__152634152635%_
                        _%bind149604%_
                        _%phi149606%_
                        _%ctx149608%_
                        _%name149610%_))))
                  (_%make-export__1__152637152640%_
                   (lambda (_%bind149612%_ _%phi149613%_)
                     (let* ((_%ctx149615%_ (gx#current-expander-context))
                            (_%name149617%_ '#f))
                       (_%make-export__152634152635%_
                        _%bind149612%_
                        _%phi149613%_
                        _%ctx149615%_
                        _%name149617%_))))
                  (_%make-export__2__152638152641%_
                   (lambda (_%bind149619%_ _%phi149620%_ _%ctx149621%_)
                     (let ((_%name149623%_ '#f))
                       (_%make-export__152634152635%_
                        _%bind149619%_
                        _%phi149620%_
                        _%ctx149621%_
                        _%name149623%_))))
                  (_%make-export149138%_
                   (lambda _g152708_
                     (let ((_g152709_ (##length _g152708_)))
                       (cond ((##fx= _g152709_ 1)
                              (apply _%make-export__0__152636152639%_
                                     _g152708_))
                             ((##fx= _g152709_ 2)
                              (apply _%make-export__1__152637152640%_
                                     _g152708_))
                             ((##fx= _g152709_ 3)
                              (apply _%make-export__2__152638152641%_
                                     _g152708_))
                             ((##fx= _g152709_ 4)
                              (apply _%make-export__152634152635%_ _g152708_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g152708_))))))
                  (_%expand1149139%_
                   (lambda (_%hd149293%_
                            _%K149294%_
                            _%rest149295%_
                            _%r149296%_)
                     (let* ((_%e149297149329%_ _%hd149293%_)
                            (_%E149324149333%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx149135%_
                                _%hd149293%_)))
                            (_%E149314149417%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149297149329%_)
                                   (let ((_%e149325149337%_
                                          (gx#syntax-e _%e149297149329%_)))
                                     (let ((_%hd149326149340%_
                                            (##car _%e149325149337%_))
                                           (_%tl149327149342%_
                                            (##cdr _%e149325149337%_)))
                                       (if (eq? (gx#stx-e _%hd149326149340%_)
                                                'import:)
                                           (let ((_%in149345%_
                                                  _%tl149327149342%_))
                                             (if (gx#stx-list? _%in149345%_)
                                                 (let _%lp149347%_ ((_%in-rest149349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in149345%_)
                            (_%r149350%_ _%r149296%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e149351149358%_
                                                           _%in-rest149349%_)
                                                          (_%E149353149362%_
                                                           (lambda ()
                                                             (_%K149294%_
                                                              _%rest149295%_
                                                              _%r149350%_)))
                                                          (_%E149352149413%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e149351149358%_)
                         (let ((_%e149354149366%_
                                (gx#syntax-e _%e149351149358%_)))
                           (let ((_%hd149355149369%_ (##car _%e149354149366%_))
                                 (_%tl149356149371%_
                                  (##cdr _%e149354149366%_)))
                             (let* ((_%hd149374%_ _%hd149355149369%_)
                                    (_%in-rest149376%_ _%tl149356149371%_)
                                    (_%src149411%_
                                     (if (gx#core-bound-module? _%hd149374%_)
                                         (gx#syntax-local-e__0 _%hd149374%_)
                                         (if (gx#core-library-module-path?
                                              _%hd149374%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd149374%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd149374%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd149374%_))
                                                 (if (gx#stx-string?
                                                      _%hd149374%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd149374%_
                                                       (gx#stx-source
                                                        _%stx149135%_)))
                                                     (let* ((_%e149382149389%_
                                                             _%hd149374%_)
                                                            (_%E149384149393%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx149135%_
                                                                _%hd149374%_)))
                                                            (_%E149383149407%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e149382149389%_)
                           (let ((_%e149385149397%_
                                  (gx#syntax-e _%e149382149389%_)))
                             (let ((_%hd149386149400%_
                                    (##car _%e149385149397%_))
                                   (_%tl149387149402%_
                                    (##cdr _%e149385149397%_)))
                               (if (eq? (gx#stx-e _%hd149386149400%_) 'in:)
                                   (let ((_%spath149405%_ _%tl149387149402%_))
                                     (gx#core-import-nested-module
                                      _%spath149405%_
                                      _%stx149135%_))
                                   (_%E149384149393%_))))
                           (_%E149384149393%_)))))
               (_%E149383149407%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp149347%_
                                _%in-rest149376%_
                                (_%export-imports149140%_
                                 _%src149411%_
                                 _%r149350%_)))))
                         (_%E149353149362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E149352149413%_)))
                                                 (_%E149324149333%_)))
                                           (_%E149324149333%_))))
                                   (_%E149324149333%_))))
                            (_%E149301149457%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149297149329%_)
                                   (let ((_%e149315149421%_
                                          (gx#syntax-e _%e149297149329%_)))
                                     (let ((_%hd149316149424%_
                                            (##car _%e149315149421%_))
                                           (_%tl149317149426%_
                                            (##cdr _%e149315149421%_)))
                                       (if (eq? (gx#stx-e _%hd149316149424%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl149317149426%_)
                                               (let ((_%e149318149429%_
                                                      (gx#syntax-e
                                                       _%tl149317149426%_)))
                                                 (let ((_%hd149319149432%_
                                                        (##car _%e149318149429%_))
                                                       (_%tl149320149434%_
                                                        (##cdr _%e149318149429%_)))
                                                   (let ((_%id149437%_
                                                          _%hd149319149432%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149320149434%_)
                                                         (let ((_%e149321149439%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149320149434%_)))
                   (let ((_%hd149322149442%_ (##car _%e149321149439%_))
                         (_%tl149323149444%_ (##cdr _%e149321149439%_)))
                     (let ((_%name149447%_ _%hd149322149442%_))
                       (if (gx#stx-null? _%tl149323149444%_)
                           (let* ((_%phi149449%_
                                   (gx#current-export-expander-phi))
                                  (_%$e149451%_
                                   (gx#core-resolve-identifier__1
                                    _%id149437%_
                                    _%phi149449%_)))
                             (if _%$e149451%_
                                 ((lambda (_%bind149454%_)
                                    (_%K149294%_
                                     _%rest149295%_
                                     (cons (_%make-export__152634152635%_
                                            _%bind149454%_
                                            _%phi149449%_
                                            (gx#current-expander-context)
                                            _%name149447%_)
                                           _%r149296%_)))
                                  _%$e149451%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx149135%_
                                  _%hd149293%_
                                  _%id149437%_)))
                           (_%E149314149417%_)))))
                 (_%E149314149417%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149314149417%_))
                                           (_%E149314149417%_))))
                                   (_%E149314149417%_))))
                            (_%E149300149507%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149297149329%_)
                                   (let ((_%e149302149461%_
                                          (gx#syntax-e _%e149297149329%_)))
                                     (let ((_%hd149303149464%_
                                            (##car _%e149302149461%_))
                                           (_%tl149304149466%_
                                            (##cdr _%e149302149461%_)))
                                       (if (eq? (gx#stx-e _%hd149303149464%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl149304149466%_)
                                               (let ((_%e149305149469%_
                                                      (gx#syntax-e
                                                       _%tl149304149466%_)))
                                                 (let ((_%hd149306149472%_
                                                        (##car _%e149305149469%_))
                                                       (_%tl149307149474%_
                                                        (##cdr _%e149305149469%_)))
                                                   (let ((_%phi149477%_
                                                          _%hd149306149472%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149307149474%_)
                                                         (let ((_%e149308149479%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149307149474%_)))
                   (let ((_%hd149309149482%_ (##car _%e149308149479%_))
                         (_%tl149310149484%_ (##cdr _%e149308149479%_)))
                     (let ((_%id149487%_ _%hd149309149482%_))
                       (if (gx#stx-pair? _%tl149310149484%_)
                           (let ((_%e149311149489%_
                                  (gx#syntax-e _%tl149310149484%_)))
                             (let ((_%hd149312149492%_
                                    (##car _%e149311149489%_))
                                   (_%tl149313149494%_
                                    (##cdr _%e149311149489%_)))
                               (let ((_%name149497%_ _%hd149312149492%_))
                                 (if (gx#stx-null? _%tl149313149494%_)
                                     (if (and (gx#stx-fixnum? _%phi149477%_)
                                              (gx#identifier? _%id149487%_)
                                              (gx#identifier? _%name149497%_))
                                         (let* ((_%phi149499%_
                                                 (gx#stx-e _%phi149477%_))
                                                (_%$e149501%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id149487%_
                                                  _%phi149499%_)))
                                           (if _%$e149501%_
                                               ((lambda (_%bind149504%_)
                                                  (_%K149294%_
                                                   _%rest149295%_
                                                   (cons (_%make-export__152634152635%_
                                                          _%bind149504%_
                                                          _%phi149499%_
                                                          (gx#current-expander-context)
                                                          _%name149497%_)
                                                         _%r149296%_)))
                                                _%$e149501%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx149135%_
                                                _%hd149293%_
                                                _%id149487%_)))
                                         (_%E149301149457%_))
                                     (_%E149301149457%_)))))
                           (_%E149301149457%_)))))
                 (_%E149301149457%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149301149457%_))
                                           (_%E149301149457%_))))
                                   (_%E149301149457%_))))
                            (_%E149299149519%_
                             (lambda ()
                               (let ((_%id149511%_ _%e149297149329%_))
                                 (if (gx#identifier? _%id149511%_)
                                     (let ((_%$e149513%_
                                            (gx#core-resolve-identifier__1
                                             _%id149511%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e149513%_
                                           ((lambda (_%bind149516%_)
                                              (_%K149294%_
                                               _%rest149295%_
                                               (cons (_%make-export__0__152636152639%_
                                                      _%bind149516%_)
                                                     _%r149296%_)))
                                            _%$e149513%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx149135%_
                                            _%hd149293%_)))
                                     (_%E149300149507%_)))))
                            (_%E149298149583%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e149297149329%_) '#t)
                                   (let* ((_%current-ctx149523%_
                                           (gx#current-expander-context))
                                          (_%current-phi149525%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx149527%_
                                           (gx#core-context-shift
                                            _%current-ctx149523%_
                                            _%current-phi149525%_))
                                          (_%phi-bind149529%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx149527%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp149532%_ ((_%bind-rest149534%_
                                                         _%phi-bind149529%_)
                                                        (_%set149535%_ '()))
                                       (let* ((_%bind-rest149536149546%_
                                               _%bind-rest149534%_)
                                              (_%else149538149554%_
                                               (lambda ()
                                                 (_%K149294%_
                                                  _%rest149295%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi149525%_
                                                         _%set149535%_)
                                                        _%r149296%_))))
                                              (_%K149540149564%_
                                               (lambda (_%bind-rest149557%_
                                                        _%bind149558%_
                                                        _%key149559%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind149558%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind149558%_))
                                                     (_%lp149532%_
                                                      _%bind-rest149557%_
                                                      _%set149535%_)
                                                     (_%lp149532%_
                                                      _%bind-rest149557%_
                                                      (cons (_%make-export__2__152638152641%_
                                                             _%bind149558%_
                                                             _%current-phi149525%_
                                                             _%current-ctx149523%_)
                                                            _%set149535%_))))))
                                         (if (pair? _%bind-rest149536149546%_)
                                             (let ((_%hd149541149567%_
                                                    (##car _%bind-rest149536149546%_))
                                                   (_%tl149542149569%_
                                                    (##cdr _%bind-rest149536149546%_)))
                                               (if (pair? _%hd149541149567%_)
                                                   (let ((_%hd149543149572%_
                                                          (##car _%hd149541149567%_))
                                                         (_%tl149544149574%_
                                                          (##cdr _%hd149541149567%_)))
                                                     (let* ((_%key149577%_
                                                             _%hd149543149572%_)
                                                            (_%bind149579%_
                                                             _%tl149544149574%_)
                                                            (_%bind-rest149581%_
                                                             _%tl149542149569%_))
                                                       (_%K149540149564%_
                                                        _%bind-rest149581%_
                                                        _%bind149579%_
                                                        _%key149577%_)))
                                                   (_%else149538149554%_)))
                                             (_%else149538149554%_)))))
                                   (_%E149299149519%_)))))
                       (_%E149298149583%_))))
                  (_%export-imports149140%_
                   (lambda (_%src149170%_ _%r149171%_)
                     (letrec* ((_%current-ctx149173%_
                                (gx#current-expander-context))
                               (_%current-phi149174%_
                                (gx#current-export-expander-phi))
                               (_%import->export149175%_
                                (lambda (_%in149256%_)
                                  (let* ((_%in149257149265%_ _%in149256%_)
                                         (_%E149259149268%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in149257149265%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K149260149275%_
                                          (lambda (_%phi149271%_
                                                   _%key149272%_
                                                   _%out149273%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx149173%_
                                             _%key149272%_
                                             _%phi149271%_
                                             _%key149272%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in149257149265%_
                                         'gx#module-import::t)
                                        (let* ((_%e149261149278%_
                                                (##unchecked-structure-ref
                                                 _%in149257149265%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out149281%_
                                                _%e149261149278%_)
                                               (_%e149262149283%_
                                                (##unchecked-structure-ref
                                                 _%in149257149265%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key149286%_
                                                _%e149262149283%_)
                                               (_%e149263149288%_
                                                (##unchecked-structure-ref
                                                 _%in149257149265%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi149291%_
                                                _%e149263149288%_))
                                          (_%K149260149275%_
                                           _%phi149291%_
                                           _%key149286%_
                                           _%out149281%_))
                                        (_%E149259149268%_)))))
                               (_%fold-e149176%_
                                (lambda (_%in149178%_ _%r149179%_)
                                  (let* ((_%in149180149194%_ _%in149178%_)
                                         (_%else149183149202%_
                                          (lambda () _%r149179%_)))
                                    (let ((_%K149189149238%_
                                           (lambda (_%phi149234%_
                                                    _%key149235%_
                                                    _%out149236%_)
                                             (if (and (fx= _%phi149234%_
                                                           _%current-phi149174%_)
                                                      (eq? _%src149170%_
                                                           (##unchecked-structure-ref
                                                            _%out149236%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export149175%_
                                                        _%in149178%_)
                                                       _%r149179%_)
                                                 _%r149179%_)))
                                          (_%K149185149213%_
                                           (lambda (_%imports149206%_
                                                    _%phi149207%_
                                                    _%ctx149208%_)
                                             (if (and (fx= _%phi149207%_
                                                           _%current-phi149174%_)
                                                      (eq? _%src149170%_
                                                           _%ctx149208%_))
                                                 (__foldl1
                                                  (lambda (_%in149210%_
                                                           _%r149211%_)
                                                    (cons (_%import->export149175%_
                                                           _%in149210%_)
                                                          _%r149211%_))
                                                  _%r149179%_
                                                  _%imports149206%_)
                                                 _%r149179%_))))
                                      (let ((_%try-match149182149231%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in149180149194%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e149186149216%_
                                                           (##unchecked-structure-ref
                                                            _%in149180149194%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e149187149221%_
                                                           (##unchecked-structure-ref
                                                            _%in149180149194%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e149188149226%_
                                                           (##unchecked-structure-ref
                                                            _%in149180149194%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx149219%_
                                                            _%e149186149216%_)
                                                           (_%phi149224%_
                                                            _%e149187149221%_)
                                                           (_%imports149229%_
                                                            _%e149188149226%_))
                                                       (_%K149185149213%_
                                                        _%imports149229%_
                                                        _%phi149224%_
                                                        _%ctx149219%_)))
                                                   (_%else149183149202%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in149180149194%_
                                             'gx#module-import::t)
                                            (let* ((_%e149190149241%_
                                                    (##unchecked-structure-ref
                                                     _%in149180149194%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e149191149246%_
                                                    (##unchecked-structure-ref
                                                     _%in149180149194%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e149192149251%_
                                                    (##unchecked-structure-ref
                                                     _%in149180149194%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out149244%_
                                                     _%e149190149241%_)
                                                    (_%key149249%_
                                                     _%e149191149246%_)
                                                    (_%phi149254%_
                                                     _%e149192149251%_))
                                                (_%K149189149238%_
                                                 _%phi149254%_
                                                 _%key149249%_
                                                 _%out149244%_)))
                                            (_%try-match149182149231%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src149170%_
                              _%current-phi149174%_
                              (__foldl1
                               _%fold-e149176%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx149173%_
                                '8
                                '#f
                                '#f)))
                             _%r149171%_))))
                  (_%export!149141%_
                   (lambda (_%rbody149157%_)
                     (letrec* ((_%current-ctx149159%_
                                (gx#current-expander-context))
                               (_%fold-e149160%_
                                (lambda (_%out149164%_ _%r149165%_)
                                  (if (##structure-direct-instance-of?
                                       _%out149164%_
                                       'gx#module-export::t)
                                      (cons _%out149164%_ _%r149165%_)
                                      (if (##structure-direct-instance-of?
                                           _%out149164%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r149165%_
                                           (##unchecked-structure-ref
                                            _%out149164%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r149165%_)))))
                       (let ((_%body149162%_ (reverse _%rbody149157%_)))
                         (##unchecked-structure-set!
                          _%current-ctx149159%_
                          (__foldl1
                           _%fold-e149160%_
                           (##unchecked-structure-ref
                            _%current-ctx149159%_
                            '9
                            '#f
                            '#f)
                           _%body149162%_)
                          '9
                          '#f
                          '#f)
                         _%body149162%_))))
                  (_%expanded-export?149142%_
                   (lambda (_%e149152%_)
                     (let ((_%$e149154%_
                            (##structure-direct-instance-of?
                             _%e149152%_
                             'gx#module-export::t)))
                       (if _%$e149154%_
                           _%$e149154%_
                           (##structure-direct-instance-of?
                            _%e149152%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?149136%_)
              (let ((_%rbody149148%_
                     (gx#core-expand-import/export
                      _%stx149135%_
                      _%expanded-export?149142%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1149139%_)))
                (if _%internal-expand?149136%_
                    (reverse _%rbody149148%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!149141%_ _%rbody149148%_))
                     (gx#stx-source _%stx149135%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx149135%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx149135%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx149633%_)
        (let ((_%internal-expand?149635%_ '#f))
          (gx#core-expand-export%__%
           _%stx149633%_
           _%internal-expand?149635%_))))
    (define gx#core-expand-export%
      (lambda _g152710_
        (let ((_g152711_ (##length _g152710_)))
          (cond ((##fx= _g152711_ 1)
                 (apply gx#core-expand-export%__0 _g152710_))
                ((##fx= _g152711_ 2)
                 (apply gx#core-expand-export%__% _g152710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g152710_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd149132%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd149132%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx149102%_)
        (let* ((_%e149103149110%_ _%stx149102%_)
               (_%E149105149114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149103149110%_)))
               (_%E149104149128%_
                (lambda ()
                  (if (gx#stx-pair? _%e149103149110%_)
                      (let ((_%e149106149118%_
                             (gx#syntax-e _%e149103149110%_)))
                        (let ((_%hd149107149121%_ (##car _%e149106149118%_))
                              (_%tl149108149123%_ (##cdr _%e149106149118%_)))
                          (let ((_%body149126%_ _%tl149108149123%_))
                            (if (gx#identifier-list? _%body149126%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body149126%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body149126%_))
                                   (gx#stx-source _%stx149102%_)))
                                (_%E149105149114%_)))))
                      (_%E149105149114%_)))))
          (_%E149104149128%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id149068%_ _%private?149069%_ _%phi149070%_ _%ctx149071%_)
        (gx#core-bind-syntax!__%
         _%id149068%_
         ((if _%private?149069%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id149068%_))
         _%private?149069%_
         _%phi149070%_
         _%ctx149071%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id149076%_)
        (let* ((_%private?149078%_ '#f)
               (_%phi149080%_ (gx#current-expander-phi))
               (_%ctx149082%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149076%_
           _%private?149078%_
           _%phi149080%_
           _%ctx149082%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id149084%_ _%private?149085%_)
        (let* ((_%phi149087%_ (gx#current-expander-phi))
               (_%ctx149089%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149084%_
           _%private?149085%_
           _%phi149087%_
           _%ctx149089%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id149091%_ _%private?149092%_ _%phi149093%_)
        (let ((_%ctx149095%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149091%_
           _%private?149092%_
           _%phi149093%_
           _%ctx149095%_))))
    (define gx#core-bind-feature!
      (lambda _g152712_
        (let ((_g152713_ (##length _g152712_)))
          (cond ((##fx= _g152713_ 1)
                 (apply gx#core-bind-feature!__0 _g152712_))
                ((##fx= _g152713_ 2)
                 (apply gx#core-bind-feature!__1 _g152712_))
                ((##fx= _g152713_ 3)
                 (apply gx#core-bind-feature!__2 _g152712_))
                ((##fx= _g152713_ 4)
                 (apply gx#core-bind-feature!__% _g152712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g152712_))))))))
