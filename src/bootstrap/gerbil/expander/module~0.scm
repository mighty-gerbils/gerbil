(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771036676)
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
      (lambda _%$args368249%_
        (apply make-instance gx#module-import::t _%$args368249%_)))
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
      (lambda _%$args368246%_
        (apply make-instance gx#module-export::t _%$args368246%_)))
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
      (lambda _%$args368243%_
        (apply make-instance gx#import-set::t _%$args368243%_)))
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
      (lambda _%$args368240%_
        (apply make-instance gx#export-set::t _%$args368240%_)))
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
      (lambda _%$args368237%_
        (apply make-instance gx#import-expander::t _%$args368237%_)))
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
      (lambda _%$args368234%_
        (apply make-instance gx#export-expander::t _%$args368234%_)))
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
      (lambda _%$args368231%_
        (apply make-instance gx#import-export-expander::t _%$args368231%_)))
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
      (lambda (_%path368228%_ _%fun368229%_)
        (call-with-input-file
         (cons 'path: (cons _%path368228%_ gx#source-file-settings))
         _%fun368229%_)))
    (define gx#module-context:::init!
      (lambda (_%self368211%_
               _%id368212%_
               _%super368213%_
               _%ns368214%_
               _%path368215%_)
        (let ((_%self368218%_ _%self368211%_))
          (if (##fx< '11 (##structure-length _%self368218%_))
              (begin
                (##unchecked-structure-set!
                 _%self368218%_
                 _%id368212%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self368218%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self368218%_
                 _%super368213%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self368218%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self368218%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self368218%_
                 _%ns368214%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self368218%_
                 _%path368215%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self368218%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self368218%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self368218%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self368218%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self368218%_
                     '11
                     (##structure-length _%self368218%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self368044%_ _%ctx368045%_ _%root368046%_)
        (let* ((_%self368049%_ _%self368044%_)
               (_%super368065%_
                (let ((_%$e368059%_ _%root368046%_))
                  (if _%$e368059%_
                      _%$e368059%_
                      (let ((_%$e368062%_ (gx#core-context-root__0)))
                        (if _%$e368062%_
                            _%$e368062%_
                            (let ((__obj368293
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor368294
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj368293
                                      ':init!)))
                                (if __constructor368294
                                    (__constructor368294 __obj368293)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj368293)))))))
          (if _%ctx368045%_
              (let ((_%id368068%_
                     (##structure-ref
                      _%ctx368045%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path368069%_
                     (##structure-ref
                      _%ctx368045%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in368070%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx368045%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e368071%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx368045%_)))))
                (if (##fx< '8 (##structure-length _%self368049%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self368049%_
                       _%id368068%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self368049%_
                       (make-hash-table-eq 'size: (##length _%in368070%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self368049%_
                       _%super368065%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self368049%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self368049%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self368049%_
                       _%path368069%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self368049%_
                       _%in368070%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self368049%_
                       _%e368071%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self368049%_
                           '8
                           (##structure-length _%self368049%_)))
                (##for-each
                 (lambda (_%g368072368074%_)
                   (gx#core-bind-weak-import!__%
                    _%g368072368074%_
                    _%self368049%_))
                 _%in368070%_))
              (if (##fx< '8 (##structure-length _%self368049%_))
                  (begin
                    (##unchecked-structure-set! _%self368049%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self368049%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self368049%_
                     _%super368065%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self368049%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self368049%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self368049%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self368049%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self368049%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self368049%_
                         '8
                         (##structure-length _%self368049%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self368080%_ _%ctx368081%_)
        (let ((_%root368083%_ '#f))
          (gx#prelude-context:::init!__%
           _%self368080%_
           _%ctx368081%_
           _%root368083%_))))
    (define gx#prelude-context:::init!
      (lambda _g368300_
        (let ((_g368301_ (##length _g368300_)))
          (cond ((##fx= _g368301_ 2)
                 (apply gx#prelude-context:::init!__0 _g368300_))
                ((##fx= _g368301_ 3)
                 (apply gx#prelude-context:::init!__% _g368300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g368300_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self367918%_ _%e367919%_)
        (if (##fx< '3 (##structure-length _%self367918%_))
            (begin
              (##unchecked-structure-set!
               _%self367918%_
               _%e367919%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self367918%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self367918%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self367918%_
                   '3
                   (##structure-length _%self367918%_)))))
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
      (lambda (_%g367544367547%_ _%g367545367549%_)
        (gx#core-apply-user-expander__%
         _%g367544367547%_
         _%g367545367549%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g367415367418%_ _%g367416367420%_)
        (gx#core-apply-user-expander__%
         _%g367415367418%_
         _%g367416367420%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx367286%_)
        (let* ((_%path367288%_
                (##structure-ref _%ctx367286%_ '7 gx#module-context::t '#f))
               (_%path367290%_
                (if (pair? _%path367288%_)
                    (##last _%path367288%_)
                    _%path367288%_)))
          (if (string? _%path367290%_) _%path367290%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path367262%_ _%reload?367263%_ _%eval?367264%_)
        (let ((_%ctx367266%_
               ((gx#current-expander-module-import)
                _%path367262%_
                _%reload?367263%_)))
          (if (and _%ctx367266%_ _%eval?367264%_)
              (gx#eval-module _%ctx367266%_)
              '#!void)
          _%ctx367266%_)))
    (define gx#import-module__0
      (lambda (_%path367271%_)
        (let* ((_%reload?367273%_ '#f) (_%eval?367275%_ '#f))
          (gx#import-module__%
           _%path367271%_
           _%reload?367273%_
           _%eval?367275%_))))
    (define gx#import-module__1
      (lambda (_%path367277%_ _%reload?367278%_)
        (let ((_%eval?367280%_ '#f))
          (gx#import-module__%
           _%path367277%_
           _%reload?367278%_
           _%eval?367280%_))))
    (define gx#import-module
      (lambda _g368302_
        (let ((_g368303_ (##length _g368302_)))
          (cond ((##fx= _g368303_ 1) (apply gx#import-module__0 _g368302_))
                ((##fx= _g368303_ 2) (apply gx#import-module__1 _g368302_))
                ((##fx= _g368303_ 3) (apply gx#import-module__% _g368302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g368302_))))))
    (define gx#eval-module
      (lambda (_%mod367259%_)
        ((gx#current-expander-module-eval) _%mod367259%_)))
    (define gx#core-eval-module
      (lambda (_%obj367238%_)
        (letrec ((_%force-e367240%_
                  (lambda (_%getf367254%_ _%e367255%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf367254%_ _%e367255%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e367255%_))))
          (let _%recur367242%_ ((_%e367244%_ _%obj367238%_))
            (if (##structure-instance-of? _%e367244%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e367247%_
                         (gx#core-context-prelude__% _%e367244%_)))
                    (if _%$e367247%_ (_%recur367242%_ _%$e367247%_) '#!void))
                  (_%force-e367240%_ gx#module-context-e _%e367244%_))
                (if (##structure-instance-of?
                     _%e367244%_
                     'gx#prelude-context::t)
                    (_%force-e367240%_ gx#prelude-context-e _%e367244%_)
                    (if (gx#stx-string? _%e367244%_)
                        (_%recur367242%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e367244%_)))
                        (if (gx#core-library-module-path? _%e367244%_)
                            (_%recur367242%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e367244%_)))
                            (error '"cannot eval module" _%obj367238%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx367218%_)
        (let _%lp367220%_ ((_%e367222%_ _%ctx367218%_))
          (if (or (##structure-instance-of? _%e367222%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e367222%_ 'gx#local-context::t))
              (_%lp367220%_ (##unchecked-structure-ref _%e367222%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e367222%_ 'gx#prelude-context::t)
                  _%e367222%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx367234%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx367234%_))))
    (define gx#core-context-prelude
      (lambda _g368304_
        (let ((_g368305_ (##length _g368304_)))
          (cond ((##fx= _g368305_ 0)
                 (apply gx#core-context-prelude__0 _g368304_))
                ((##fx= _g368305_ 1)
                 (apply gx#core-context-prelude__% _g368304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g368304_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx367209%_)
        (let ((_%$e367211%_ (__hash-get gx#__module-registry _%ctx367209%_)))
          (if _%$e367211%_
              _%$e367211%_
              (let ((_%pre367215%_
                     (let ((__obj368295
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
                        __obj368295
                        _%ctx367209%_)
                       __obj368295)))
                (__hash-put! gx#__module-registry _%ctx367209%_ _%pre367215%_)
                _%pre367215%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath367077%_ _%reload?367078%_)
        (letrec ((_%import-source367080%_
                  (lambda (_%path367168%_)
                    (if (member _%path367168%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path367168%_)
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
                                      (let ((_g368306_
                                             (gx#core-read-module
                                              _%path367168%_)))
                                        (begin
                                          (let ((_g368307_
                                                 (if (##values? _g368306_)
                                                     (##values-length
                                                      _g368306_)
                                                     1)))
                                            (if (not (##fx= _g368307_ 4))
                                                (error "Context expects 4 values"
                                                       _g368307_)))
                                          (let ((_%pre367176%_
                                                 (##values-ref _g368306_ 0))
                                                (_%id367177%_
                                                 (##values-ref _g368306_ 1))
                                                (_%ns367178%_
                                                 (##values-ref _g368306_ 2))
                                                (_%body367179%_
                                                 (##values-ref _g368306_ 3)))
                                            (let* ((_%prelude367189%_
                                                    (if (##structure-instance-of?
                                                         _%pre367176%_
                                                         'gx#prelude-context::t)
                                                        _%pre367176%_
                                                        (if (##structure-instance-of?
                                                             _%pre367176%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre367176%_)
                                                            (if (string? _%pre367176%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre367176%_))
                        (if (not _%pre367176%_)
                            (let ((_%$e367185%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e367185%_
                                  _%$e367185%_
                                  (let ((__obj368296
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
                                     __obj368296
                                     '#f)
                                    __obj368296)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath367077%_
                                   _%pre367176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx367191%_
                                                    (let ((__obj368297
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
                                                       __obj368297
                                                       _%id367177%_
                                                       _%prelude367189%_
                                                       _%ns367178%_
                                                       _%path367168%_)
                                                      __obj368297))
                                                   (_%body367193%_
                                                    (gx#core-expand-module-begin
                                                     _%body367179%_
                                                     _%ctx367191%_))
                                                   (_%body367195%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body367193%_)
                                                     _%path367168%_
                                                     _%ctx367191%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx367191%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body367195%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx367191%_
                                               _%body367195%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path367168%_
                                               _%ctx367191%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id367177%_
                                               _%ctx367191%_)
                                              _%ctx367191%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path367168%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule367081%_
                  (lambda (_%rpath367097%_)
                    (let* ((_%rpath367098367105%_ _%rpath367097%_)
                           (_%E367100367108%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath367098367105%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K367101367156%_
                            (lambda (_%refs367111%_ _%origin367112%_)
                              (let ((_%ctx367114%_
                                     (if _%origin367112%_
                                         (gx#core-import-module__%
                                          _%origin367112%_
                                          _%reload?367078%_)
                                         (gx#current-expander-context))))
                                (let _%lp367116%_ ((_%rest367118%_
                                                    _%refs367111%_)
                                                   (_%ctx367119%_
                                                    _%ctx367114%_))
                                  (let* ((_%rest367120367128%_ _%rest367118%_)
                                         (_%else367122367136%_
                                          (lambda () _%ctx367119%_))
                                         (_%K367124367144%_
                                          (lambda (_%rest367139%_ _%id367140%_)
                                            (let ((_%bind367142%_
                                                   (gx#resolve-identifier__%
                                                    _%id367140%_
                                                    '0
                                                    _%ctx367119%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind367142%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind367142%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp367116%_
                                                   _%rest367139%_
                                                   (##unchecked-structure-ref
                                                    _%bind367142%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath367097%_
                                                         _%id367140%_
                                                         _%bind367142%_))))))
                                    (if (pair? _%rest367120367128%_)
                                        (let ((_%hd367125367147%_
                                               (##car _%rest367120367128%_))
                                              (_%tl367126367149%_
                                               (##cdr _%rest367120367128%_)))
                                          (let* ((_%id367152%_
                                                  _%hd367125367147%_)
                                                 (_%rest367154%_
                                                  _%tl367126367149%_))
                                            (_%K367124367144%_
                                             _%rest367154%_
                                             _%id367152%_)))
                                        (_%else367122367136%_))))))))
                      (if (pair? _%rpath367098367105%_)
                          (let ((_%hd367102367159%_
                                 (##car _%rpath367098367105%_))
                                (_%tl367103367161%_
                                 (##cdr _%rpath367098367105%_)))
                            (let* ((_%origin367164%_ _%hd367102367159%_)
                                   (_%refs367166%_ _%tl367103367161%_))
                              (_%K367101367156%_
                               _%refs367166%_
                               _%origin367164%_)))
                          (_%E367100367108%_))))))
          (let ((_%$e367083%_
                 (if (not _%reload?367078%_)
                     (__hash-get gx#__module-registry _%rpath367077%_)
                     '#f)))
            (if _%$e367083%_
                _%$e367083%_
                (if (list? _%rpath367077%_)
                    (_%import-submodule367081%_ _%rpath367077%_)
                    (if (gx#core-library-module-path? _%rpath367077%_)
                        (let ((_%ctx367088%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath367077%_)
                                _%reload?367078%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath367077%_
                           _%ctx367088%_)
                          _%ctx367088%_)
                        (let* ((_%npath367091%_
                                (path-normalize _%rpath367077%_))
                               (_%$e367093%_
                                (if (not _%reload?367078%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath367091%_)
                                    '#f)))
                          (if _%$e367093%_
                              _%$e367093%_
                              (_%import-source367080%_
                               _%npath367091%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath367202%_)
        (let ((_%reload?367204%_ '#f))
          (gx#core-import-module__% _%rpath367202%_ _%reload?367204%_))))
    (define gx#core-import-module
      (lambda _g368308_
        (let ((_g368309_ (##length _g368308_)))
          (cond ((##fx= _g368309_ 1)
                 (apply gx#core-import-module__0 _g368308_))
                ((##fx= _g368309_ 2)
                 (apply gx#core-import-module__% _g368308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g368308_))))))
    (define gx#core-read-module
      (lambda (_%path367059%_)
        (__with-catch
         (lambda (_%exn367061%_)
           (if (datum-parsing-exception? _%exn367061%_)
               (let ((_%pos367063%_
                      (datum-parsing-exception-filepos _%exn367061%_)))
                 (if (= _%pos367063%_ '0)
                     (gx#core-read-module/lang _%path367059%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path367059%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g367065367067%_)
                            (display-exception__%
                             _%exn367061%_
                             _%g367065367067%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos367063%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos367063%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path367059%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g367070367072%_)
                      (display-exception__% _%exn367061%_ _%g367070367072%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path367059%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path366911%_)
        (let _%lp366913%_ ((_%body366915%_
                            (read-syntax-from-file _%path366911%_))
                           (_%pre366916%_ '#f)
                           (_%ns366917%_ '#f)
                           (_%pkg366918%_ '#f))
          (let* ((_%e366919366943%_ _%body366915%_)
                 (_%E366935366969%_
                  (lambda ()
                    (let ((_g368310_
                           (if _%pkg366918%_
                               (values _%pre366916%_
                                       _%ns366917%_
                                       _%pkg366918%_)
                               (gx#core-read-module-package
                                _%path366911%_
                                _%pre366916%_
                                _%ns366917%_))))
                      (begin
                        (let ((_g368311_
                               (if (##values? _g368310_)
                                   (##values-length _g368310_)
                                   1)))
                          (if (not (##fx= _g368311_ 3))
                              (error "Context expects 3 values" _g368311_)))
                        (let ((_%pre366947%_ (##values-ref _g368310_ 0))
                              (_%ns366948%_ (##values-ref _g368310_ 1))
                              (_%pkg366949%_ (##values-ref _g368310_ 2)))
                          (let* ((_%prelude366955%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre366947%_)
                                      (gx#syntax-local-e__0 _%pre366947%_)
                                      (if (gx#core-library-module-path?
                                           _%pre366947%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre366947%_)
                                          (if (gx#stx-string? _%pre366947%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre366947%_
                                               _%path366911%_)
                                              (gx#stx-e _%pre366947%_)))))
                                 (_%path-id366957%_
                                  (gx#core-module-path->namespace
                                   _%path366911%_))
                                 (_%pkg-id366959%_
                                  (if _%pkg366949%_
                                      (##string-append
                                       _%pkg366949%_
                                       '"/"
                                       _%path-id366957%_)
                                      _%path-id366957%_))
                                 (_%module-id366961%_
                                  (##string->symbol _%pkg-id366959%_))
                                 (_%module-ns366966%_
                                  (if (eq? _%ns366948%_ '#!void)
                                      '#f
                                      (let ((_%$e366963%_ _%ns366948%_))
                                        (if _%$e366963%_
                                            _%$e366963%_
                                            _%pkg-id366959%_)))))
                            (values _%prelude366955%_
                                    _%module-id366961%_
                                    _%module-ns366966%_
                                    _%body366915%_)))))))
                 (_%E366928367001%_
                  (lambda ()
                    (if (gx#stx-pair? _%e366919366943%_)
                        (let ((_%e366936366973%_
                               (gx#syntax-e _%e366919366943%_)))
                          (let ((_%hd366937366976%_ (##car _%e366936366973%_))
                                (_%tl366938366978%_ (##cdr _%e366936366973%_)))
                            (if (eq? (gx#stx-e _%hd366937366976%_) 'package:)
                                (if (gx#stx-pair? _%tl366938366978%_)
                                    (let ((_%e366939366981%_
                                           (gx#syntax-e _%tl366938366978%_)))
                                      (let ((_%hd366940366984%_
                                             (##car _%e366939366981%_))
                                            (_%tl366941366986%_
                                             (##cdr _%e366939366981%_)))
                                        (let* ((_%pkg366989%_
                                                _%hd366940366984%_)
                                               (_%rest366991%_
                                                _%tl366941366986%_)
                                               (_%pkg366999%_
                                                (if (gx#identifier?
                                                     _%pkg366989%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg366989%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg366989%_)
                                                            (gx#stx-false?
                                                             _%pkg366989%_))
                                                        (gx#stx-e
                                                         _%pkg366989%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg366989%_)))))
                                          (_%lp366913%_
                                           _%rest366991%_
                                           _%pre366916%_
                                           _%ns366917%_
                                           _%pkg366999%_))))
                                    (_%E366935366969%_))
                                (_%E366935366969%_))))
                        (_%E366935366969%_))))
                 (_%E366921367031%_
                  (lambda ()
                    (if (gx#stx-pair? _%e366919366943%_)
                        (let ((_%e366929367005%_
                               (gx#syntax-e _%e366919366943%_)))
                          (let ((_%hd366930367008%_ (##car _%e366929367005%_))
                                (_%tl366931367010%_ (##cdr _%e366929367005%_)))
                            (if (eq? (gx#stx-e _%hd366930367008%_) 'namespace:)
                                (if (gx#stx-pair? _%tl366931367010%_)
                                    (let ((_%e366932367013%_
                                           (gx#syntax-e _%tl366931367010%_)))
                                      (let ((_%hd366933367016%_
                                             (##car _%e366932367013%_))
                                            (_%tl366934367018%_
                                             (##cdr _%e366932367013%_)))
                                        (let* ((_%ns367021%_
                                                _%hd366933367016%_)
                                               (_%rest367023%_
                                                _%tl366934367018%_)
                                               (_%ns367029%_
                                                (if (gx#identifier?
                                                     _%ns367021%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns367021%_))
                                                    (if (gx#stx-string?
                                                         _%ns367021%_)
                                                        (gx#stx-e _%ns367021%_)
                                                        (if (gx#stx-false?
                                                             _%ns367021%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns367021%_))))))
                                          (_%lp366913%_
                                           _%rest367023%_
                                           _%pre366916%_
                                           _%ns367029%_
                                           _%pkg366918%_))))
                                    (_%E366928367001%_))
                                (_%E366928367001%_))))
                        (_%E366928367001%_))))
                 (_%E366920367055%_
                  (lambda ()
                    (if (gx#stx-pair? _%e366919366943%_)
                        (let ((_%e366922367035%_
                               (gx#syntax-e _%e366919366943%_)))
                          (let ((_%hd366923367038%_ (##car _%e366922367035%_))
                                (_%tl366924367040%_ (##cdr _%e366922367035%_)))
                            (if (eq? (gx#stx-e _%hd366923367038%_) 'prelude:)
                                (if (gx#stx-pair? _%tl366924367040%_)
                                    (let ((_%e366925367043%_
                                           (gx#syntax-e _%tl366924367040%_)))
                                      (let ((_%hd366926367046%_
                                             (##car _%e366925367043%_))
                                            (_%tl366927367048%_
                                             (##cdr _%e366925367043%_)))
                                        (let* ((_%prelude367051%_
                                                _%hd366926367046%_)
                                               (_%rest367053%_
                                                _%tl366927367048%_))
                                          (_%lp366913%_
                                           _%rest367053%_
                                           _%prelude367051%_
                                           _%ns366917%_
                                           _%pkg366918%_))))
                                    (_%E366921367031%_))
                                (_%E366921367031%_))))
                        (_%E366921367031%_)))))
            (_%E366920367055%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path366732%_)
        (letrec ((_%default-read-module-body366734%_
                  (lambda (_%inp366903%_)
                    (let _%lp366905%_ ((_%body366907%_ '()))
                      (let ((_%next366909%_ (read-syntax__% _%inp366903%_)))
                        (if (eof-object? _%next366909%_)
                            (reverse _%body366907%_)
                            (_%lp366905%_
                             (cons _%next366909%_ _%body366907%_)))))))
                 (_%read-body366735%_
                  (lambda (_%inp366820%_
                           _%pre366821%_
                           _%ns366822%_
                           _%pkg366823%_
                           _%args366824%_)
                    (let ((_g368312_
                           (if _%pkg366823%_
                               (values _%pre366821%_
                                       _%ns366822%_
                                       _%pkg366823%_)
                               (gx#core-read-module-package
                                _%path366732%_
                                _%pre366821%_
                                _%ns366822%_))))
                      (begin
                        (let ((_g368313_
                               (if (##values? _g368312_)
                                   (##values-length _g368312_)
                                   1)))
                          (if (not (##fx= _g368313_ 3))
                              (error "Context expects 3 values" _g368313_)))
                        (let ((_%pre366826%_ (##values-ref _g368312_ 0))
                              (_%ns366827%_ (##values-ref _g368312_ 1))
                              (_%pkg366828%_ (##values-ref _g368312_ 2)))
                          (let* ((_%prelude366830%_
                                  (gx#import-module__0 _%pre366826%_))
                                 (_%read-module-body366885%_
                                  (let ((_%$e366876%_
                                         (__find (lambda (_%e366831366833%_)
                                                   (let* ((_%e366831366835366845%_
                                                           _%e366831366833%_)
                                                          (_%else366837366853%_
                                                           (lambda () '#f))
                                                          (_%K366839366857%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e366831366835366845%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e366840366860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e366831366835366845%_
                          '1
                          '#f
                          '#f))
                        (_%e366841366863%_
                         (##unchecked-structure-ref
                          _%e366831366835366845%_
                          '2
                          '#f
                          '#f))
                        (_%e366842366866%_
                         (##unchecked-structure-ref
                          _%e366831366835366845%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e366842366866%_ '1)
                       (let ((_%e366843366869%_
                              (##unchecked-structure-ref
                               _%e366831366835366845%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g366871366873%_)
                                (eq? _%g366871366873%_ 'read-module-body))
                              _%e366843366869%_)
                             (_%K366839366857%_)
                             (_%else366837366853%_)))
                       (_%else366837366853%_)))
                 (_%else366837366853%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude366830%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e366876%_
                                        ((lambda (_%xport366879%_)
                                           (let ((_%proc366882%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport366879%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc366882%_)
                                                 _%proc366882%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path366732%_
                                                  _%pre366826%_
                                                  _%proc366882%_))))
                                         _%$e366876%_)
                                        _%default-read-module-body366734%_)))
                                 (_%path-id366887%_
                                  (gx#core-module-path->namespace
                                   _%path366732%_))
                                 (_%pkg-id366889%_
                                  (if _%pkg366828%_
                                      (##string-append
                                       _%pkg366828%_
                                       '"/"
                                       _%path-id366887%_)
                                      _%path-id366887%_))
                                 (_%module-id366891%_
                                  (##string->symbol _%pkg-id366889%_))
                                 (_%module-ns366896%_
                                  (let ((_%$e366893%_ _%ns366827%_))
                                    (if _%$e366893%_
                                        _%$e366893%_
                                        _%pkg-id366889%_)))
                                 (_%body366900%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body366885%_
                                         _%inp366820%_))
                                      gx#current-module-reader-args
                                      _%args366824%_))
                                   gx#current-module-reader-path
                                   _%path366732%_)))
                            (values _%prelude366830%_
                                    _%module-id366891%_
                                    _%module-ns366896%_
                                    _%body366900%_)))))))
                 (_%string-e366736%_
                  (lambda (_%obj366814%_ _%what366815%_)
                    (if (string? _%obj366814%_)
                        _%obj366814%_
                        (if (symbol? _%obj366814%_)
                            (##symbol->string _%obj366814%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what366815%_)
                             _%path366732%_
                             _%obj366814%_)))))
                 (_%read-lang-args366737%_
                  (lambda (_%inp366769%_ _%args366770%_)
                    (let* ((_%args366771366779%_ _%args366770%_)
                           (_%else366773366787%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path366732%_)))
                           (_%K366775366802%_
                            (lambda (_%args366790%_ _%prelude366791%_)
                              (let* ((_%pkg366793%_
                                      (pgetq__0 'package: _%args366790%_))
                                     (_%pkg366795%_
                                      (if _%pkg366793%_
                                          (_%string-e366736%_
                                           _%pkg366793%_
                                           '"package")
                                          '#f))
                                     (_%ns366797%_
                                      (pgetq__0 'namespace: _%args366790%_))
                                     (_%ns366799%_
                                      (if _%ns366797%_
                                          (_%string-e366736%_
                                           _%ns366797%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body366735%_
                                 _%inp366769%_
                                 _%prelude366791%_
                                 _%ns366799%_
                                 _%pkg366795%_
                                 _%args366790%_)))))
                      (if (pair? _%args366771366779%_)
                          (let ((_%hd366776366805%_
                                 (##car _%args366771366779%_))
                                (_%tl366777366807%_
                                 (##cdr _%args366771366779%_)))
                            (let* ((_%prelude366810%_ _%hd366776366805%_)
                                   (_%args366812%_ _%tl366777366807%_))
                              (_%K366775366802%_
                               _%args366812%_
                               _%prelude366810%_)))
                          (_%else366773366787%_)))))
                 (_%read-lang366738%_
                  (lambda (_%inp366743%_)
                    (let* ((_%head366745%_ (read-line _%inp366743%_))
                           (_%$e366747%_
                            (string-index__0 _%head366745%_ '#\space)))
                      (if _%$e366747%_
                          ((lambda (_%ix366750%_)
                             (let ((_%lang366752%_
                                    (substring
                                     _%head366745%_
                                     '0
                                     _%ix366750%_)))
                               (if (equal? _%lang366752%_ '"#lang")
                                   (let* ((_%rest366754%_
                                           (substring
                                            _%head366745%_
                                            (##fx+ _%ix366750%_ '1)
                                            (string-length _%head366745%_)))
                                          (_%args366765%_
                                           (__with-catch
                                            (lambda (_%g366755366757%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path366732%_
                                               _%g366755366757%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest366754%_
                                               (lambda (_%g366760366762%_)
                                                 (read-all
                                                  _%g366760366762%_
                                                  read)))))))
                                     (_%read-lang-args366737%_
                                      _%inp366743%_
                                      _%args366765%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path366732%_))))
                           _%$e366747%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path366732%_)))))
                 (_%read-e366739%_
                  (lambda (_%inp366741%_)
                    (if (eq? (peek-char _%inp366741%_) '#\#)
                        (_%read-lang366738%_ _%inp366741%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path366732%_)))))
          (gx#call-with-input-source-file _%path366732%_ _%read-e366739%_))))
    (define gx#core-read-module-package
      (lambda (_%path366680%_ _%pre366681%_ _%ns366682%_)
        (letrec ((_%string-e366684%_
                  (lambda (_%e366727%_)
                    (if (symbol? _%e366727%_)
                        (##symbol->string _%e366727%_)
                        (if (string? _%e366727%_)
                            _%e366727%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e366727%_))))))
          (let _%lp366686%_ ((_%dir366688%_ (path-directory _%path366680%_))
                             (_%pkg-path366689%_ '()))
            (let ((_%gerbil.pkg366691%_
                   (path-expand '"gerbil.pkg" _%dir366688%_)))
              (if (##file-exists? _%gerbil.pkg366691%_)
                  (let ((_%plist366693%_
                         (gx#core-library-package-plist__% _%dir366688%_ '#t)))
                    (if (null? _%plist366693%_)
                        (let ((_%pkg366696%_
                               (if (null? _%pkg-path366689%_)
                                   '#f
                                   (string-join _%pkg-path366689%_ '"/"))))
                          (values _%pre366681%_ _%ns366682%_ _%pkg366696%_))
                        (if (list? _%plist366693%_)
                            (let* ((_%root366699%_
                                    (pgetq__0 'package: _%plist366693%_))
                                   (_%pkg366703%_
                                    (let ((_%pkg-path366701%_
                                           (if _%root366699%_
                                               (cons (_%string-e366684%_
                                                      _%root366699%_)
                                                     _%pkg-path366689%_)
                                               _%pkg-path366689%_)))
                                      (if (null? _%pkg-path366701%_)
                                          '#f
                                          (string-join
                                           _%pkg-path366701%_
                                           '"/"))))
                                   (_%ns366710%_
                                    (let ((_%ns366708%_
                                           (let ((_%$e366705%_ _%ns366682%_))
                                             (if _%$e366705%_
                                                 _%$e366705%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist366693%_)))))
                                      (if _%ns366708%_
                                          (_%string-e366684%_ _%ns366708%_)
                                          '#f)))
                                   (_%pre366715%_
                                    (let ((_%$e366712%_ _%pre366681%_))
                                      (if _%$e366712%_
                                          _%$e366712%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist366693%_)))))
                              (values _%pre366715%_
                                      _%ns366710%_
                                      _%pkg366703%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist366693%_))))
                  (let ((_%dir*366719%_
                         (path-strip-trailing-directory-separator
                          _%dir366688%_)))
                    (if (or (__string-empty? _%dir*366719%_)
                            (equal? _%dir366688%_ _%dir*366719%_))
                        (values _%pre366681%_ _%ns366682%_ '#f)
                        (let ((_%xpath366724%_
                               (path-strip-directory _%dir*366719%_))
                              (_%xdir366725%_ (path-directory _%dir*366719%_)))
                          (_%lp366686%_
                           _%xdir366725%_
                           (cons _%xpath366724%_ _%pkg-path366689%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path366678%_)
        (path-strip-extension (path-strip-directory _%path366678%_))))
    (define gx#core-module-path->id
      (lambda (_%path366676%_)
        (##string->symbol (gx#core-module-path->namespace _%path366676%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path366655%_ _%rel366656%_)
        (let* ((_%path366658%_ (gx#stx-e _%stx-path366655%_))
               (_%path366660%_
                (if (__string-empty? (path-extension _%path366658%_))
                    (##string-append _%path366658%_ '".ss")
                    _%path366658%_)))
          (gx#core-resolve-path__%
           _%path366660%_
           (let ((_%$e366663%_ (gx#stx-source _%stx-path366655%_)))
             (if _%$e366663%_ _%$e366663%_ _%rel366656%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path366669%_)
        (let ((_%rel366671%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path366669%_ _%rel366671%_))))
    (define gx#core-resolve-module-path
      (lambda _g368314_
        (let ((_g368315_ (##length _g368314_)))
          (cond ((##fx= _g368315_ 1)
                 (apply gx#core-resolve-module-path__0 _g368314_))
                ((##fx= _g368315_ 2)
                 (apply gx#core-resolve-module-path__% _g368314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g368314_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath366540%_)
        (let* ((_%spath366542%_ (symbol->string (gx#stx-e _%libpath366540%_)))
               (_%spath366544%_
                (substring
                 _%spath366542%_
                 '1
                 (##string-length _%spath366542%_)))
               (_%ext366546%_ (path-extension _%spath366544%_))
               (_%ssi366548%_
                (if (__string-empty? _%ext366546%_)
                    (##string-append _%spath366544%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath366544%_)
                     '".ssi")))
               (_%srcs366552%_
                (if (__string-empty? _%ext366546%_)
                    (##map (lambda (_%ext366550%_)
                             (string-append _%spath366544%_ _%ext366550%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath366544%_ '()))))
          (let _%lp366555%_ ((_%rest366557%_ (load-path)))
            (let* ((_%rest366558366567%_ _%rest366557%_)
                   (_%E366561366571%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest366558366567%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K366563366642%_
                     (lambda (_%rest366582%_ _%dir366583%_)
                       (letrec ((_%resolve366585%_
                                 (lambda (_%ssi366598%_ _%srcs366599%_)
                                   (let ((_%compiled-path366601%_
                                          (path-expand
                                           _%ssi366598%_
                                           _%dir366583%_)))
                                     (if (##file-exists?
                                          _%compiled-path366601%_)
                                         (path-normalize
                                          _%compiled-path366601%_)
                                         (let _%lpr366603%_ ((_%rest-src366605%_
                                                              _%srcs366599%_))
                                           (let* ((_%rest-src366606366614%_
                                                   _%rest-src366605%_)
                                                  (_%else366608366622%_
                                                   (lambda ()
                                                     (_%lp366555%_
                                                      _%rest366582%_)))
                                                  (_%K366610366630%_
                                                   (lambda (_%rest-src366625%_
                                                            _%src366626%_)
                                                     (let ((_%src-path366628%_
                                                            (path-expand
                                                             _%src366626%_
                                                             _%dir366583%_)))
                                                       (if (##file-exists?
                                                            _%src-path366628%_)
                                                           (path-normalize
                                                            _%src-path366628%_)
                                                           (_%lpr366603%_
                                                            _%rest-src366625%_))))))
                                             (if (pair? _%rest-src366606366614%_)
                                                 (let ((_%hd366611366633%_
                                                        (##car _%rest-src366606366614%_))
                                                       (_%tl366612366635%_
                                                        (##cdr _%rest-src366606366614%_)))
                                                   (let* ((_%src366638%_
                                                           _%hd366611366633%_)
                                                          (_%rest-src366640%_
                                                           _%tl366612366635%_))
                                                     (_%K366610366630%_
                                                      _%rest-src366640%_
                                                      _%src366638%_)))
                                                 (_%else366608366622%_)))))))))
                         (let ((_%$e366587%_
                                (gx#core-library-package-path-prefix
                                 _%dir366583%_)))
                           (if _%$e366587%_
                               ((lambda (_%prefix366590%_)
                                  (if (string-prefix?
                                       _%prefix366590%_
                                       _%spath366544%_)
                                      (let ((_%ssi366594%_
                                             (substring
                                              _%ssi366548%_
                                              (string-length _%prefix366590%_)
                                              (##string-length _%ssi366548%_)))
                                            (_%srcs366595%_
                                             (##map (lambda (_%src366592%_)
                                                      (substring
                                                       _%src366592%_
                                                       (string-length
                                                        _%prefix366590%_)
                                                       (string-length
                                                        _%src366592%_)))
                                                    _%srcs366552%_)))
                                        (_%resolve366585%_
                                         _%ssi366594%_
                                         _%srcs366595%_))
                                      (_%lp366555%_ _%rest366582%_)))
                                _%$e366587%_)
                               (_%resolve366585%_
                                _%ssi366548%_
                                _%srcs366552%_))))))
                    (_%K366562366576%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath366540%_))))
                (let ((_%try-match366560366579%_
                       (lambda ()
                         (if (null? _%rest366558366567%_)
                             (_%K366562366576%_)
                             (_%E366561366571%_)))))
                  (if (pair? _%rest366558366567%_)
                      (let ((_%tl366565366647%_ (##cdr _%rest366558366567%_))
                            (_%hd366564366645%_ (##car _%rest366558366567%_)))
                        (let ((_%dir366650%_ _%hd366564366645%_)
                              (_%rest366652%_ _%tl366565366647%_))
                          (_%K366563366642%_ _%rest366652%_ _%dir366650%_)))
                      (_%try-match366560366579%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath366508%_)
        (letrec ((_%resolve366510%_
                  (lambda (_%path366531%_ _%base366532%_)
                    (let ((_%$e366534%_
                           (string-rindex__0 _%base366532%_ '#\/)))
                      (if _%$e366534%_
                          ((lambda (_%idx366537%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base366532%_ '0 _%idx366537%_)
                                '"/"
                                _%path366531%_))))
                           _%$e366534%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path366531%_))))))))
          (let ((_%spath366512%_ (symbol->string (gx#stx-e _%modpath366508%_)))
                (_%mod366513%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod366513%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath366508%_))
            (let ((_%mpath366515%_
                   (symbol->string
                    (##structure-ref
                     _%mod366513%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp366517%_ ((_%spath366519%_ _%spath366512%_)
                                 (_%mpath366520%_ _%mpath366515%_))
                (if (string-prefix? '"../" _%spath366519%_)
                    (let ((_%$e366523%_
                           (string-rindex__0 _%mpath366520%_ '#\/)))
                      (if _%$e366523%_
                          ((lambda (_%idx366526%_)
                             (_%lp366517%_
                              (substring
                               _%spath366519%_
                               '3
                               (string-length _%spath366519%_))
                              (substring _%mpath366520%_ '0 _%idx366526%_)))
                           _%$e366523%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath366508%_)))
                    (if (string-prefix? '"./" _%spath366519%_)
                        (_%lp366517%_
                         (substring
                          _%spath366519%_
                          '2
                          (string-length _%spath366519%_))
                         _%mpath366520%_)
                        (_%resolve366510%_
                         _%spath366519%_
                         _%mpath366520%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir366500%_)
        (let ((_%$e366502%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir366500%_))))
          (if _%$e366502%_
              ((lambda (_%pkg366505%_)
                 (##string-append (symbol->string _%pkg366505%_) '"/"))
               _%$e366502%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir366470%_ _%exists?366471%_)
        (let ((_%$e366473%_ (__hash-get gx#__module-pkg-cache _%dir366470%_)))
          (if _%$e366473%_
              _%$e366473%_
              (let* ((_%gerbil.pkg366477%_
                      (path-expand '"gerbil.pkg" _%dir366470%_))
                     (_%plist366487%_
                      (if (or _%exists?366471%_
                              (##file-exists? _%gerbil.pkg366477%_))
                          (let ((_%e366482%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg366477%_
                                  read)))
                            (if (eof-object? _%e366482%_)
                                '()
                                (if (list? _%e366482%_)
                                    _%e366482%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg366477%_
                                     _%e366482%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir366470%_
                 _%plist366487%_)
                _%plist366487%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir366493%_)
        (let ((_%exists?366495%_ '#f))
          (gx#core-library-package-plist__% _%dir366493%_ _%exists?366495%_))))
    (define gx#core-library-package-plist
      (lambda _g368316_
        (let ((_g368317_ (##length _g368316_)))
          (cond ((##fx= _g368317_ 1)
                 (apply gx#core-library-package-plist__0 _g368316_))
                ((##fx= _g368317_ 2)
                 (apply gx#core-library-package-plist__% _g368316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g368316_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx366467%_)
        (gx#core-special-module-path? _%stx366467%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx366465%_)
        (gx#core-special-module-path? _%stx366465%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx366460%_ _%char366461%_)
        (if (gx#identifier? _%stx366460%_)
            (if (interned-symbol? (gx#stx-e _%stx366460%_))
                (let ((_%str366463%_
                       (symbol->string (gx#stx-e _%stx366460%_))))
                  (if (##fx> (##string-length _%str366463%_) '1)
                      (eq? (string-ref _%str366463%_ '0) _%char366461%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx366454%_)
        (gx#core-bound-identifier?__%
         _%stx366454%_
         (lambda (_%g366455366457%_)
           (gx#expander-binding?__% _%g366455366457%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx366448%_)
        (gx#core-bound-identifier?__%
         _%stx366448%_
         (lambda (_%g366449366451%_)
           (gx#expander-binding?__% _%g366449366451%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx366435%_)
        (letrec ((_%module-prelude?366437%_
                  (lambda (_%e366443%_)
                    (let ((_%$e366445%_
                           (##structure-instance-of?
                            _%e366443%_
                            'gx#module-context::t)))
                      (if _%$e366445%_
                          _%$e366445%_
                          (##structure-instance-of?
                           _%e366443%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx366435%_
           (lambda (_%g366438366440%_)
             (gx#expander-binding?__%
              _%g366438366440%_
              _%module-prelude?366437%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in366366%_ _%ctx366367%_ _%force-weak?366368%_)
        (let* ((_%in366369366378%_ _%in366366%_)
               (_%E366371366381%_
                (lambda ()
                  (error '"No clause matching"
                         _%in366369366378%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K366372366394%_
                (lambda (_%weak?366384%_
                         _%phi366385%_
                         _%key366386%_
                         _%source366387%_)
                  (gx#core-bind!__%
                   _%key366386%_
                   (let* ((_%e366389%_
                           (gx#core-resolve-module-export _%source366387%_))
                          (__obj368298
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
                      __obj368298
                      (##unchecked-structure-ref _%e366389%_ '1 '#f '#f)
                      _%key366386%_
                      _%phi366385%_
                      _%e366389%_
                      (##unchecked-structure-ref _%source366387%_ '1 '#f '#f)
                      (let ((_%$e366391%_ _%force-weak?366368%_))
                        (if _%$e366391%_ _%$e366391%_ _%weak?366384%_)))
                     __obj368298)
                   gx#core-context-rebind?
                   _%phi366385%_
                   _%ctx366367%_))))
          (if (##structure-direct-instance-of?
               _%in366369366378%_
               'gx#module-import::t)
              (let* ((_%e366373366397%_
                      (##unchecked-structure-ref
                       _%in366369366378%_
                       '1
                       '#f
                       '#f))
                     (_%source366400%_ _%e366373366397%_)
                     (_%e366374366402%_
                      (##unchecked-structure-ref
                       _%in366369366378%_
                       '2
                       '#f
                       '#f))
                     (_%key366405%_ _%e366374366402%_)
                     (_%e366375366407%_
                      (##unchecked-structure-ref
                       _%in366369366378%_
                       '3
                       '#f
                       '#f))
                     (_%phi366410%_ _%e366375366407%_)
                     (_%e366376366412%_
                      (##unchecked-structure-ref
                       _%in366369366378%_
                       '4
                       '#f
                       '#f))
                     (_%weak?366415%_ _%e366376366412%_))
                (_%K366372366394%_
                 _%weak?366415%_
                 _%phi366410%_
                 _%key366405%_
                 _%source366400%_))
              (_%E366371366381%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in366420%_)
        (let* ((_%ctx366422%_ (gx#current-expander-context))
               (_%force-weak?366424%_ '#f))
          (gx#core-bind-import!__%
           _%in366420%_
           _%ctx366422%_
           _%force-weak?366424%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in366426%_ _%ctx366427%_)
        (let ((_%force-weak?366429%_ '#f))
          (gx#core-bind-import!__%
           _%in366426%_
           _%ctx366427%_
           _%force-weak?366429%_))))
    (define gx#core-bind-import!
      (lambda _g368318_
        (let ((_g368319_ (##length _g368318_)))
          (cond ((##fx= _g368319_ 1) (apply gx#core-bind-import!__0 _g368318_))
                ((##fx= _g368319_ 2) (apply gx#core-bind-import!__1 _g368318_))
                ((##fx= _g368319_ 3) (apply gx#core-bind-import!__% _g368318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g368318_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in366352%_ _%ctx366353%_)
        (gx#core-bind-import!__% _%in366352%_ _%ctx366353%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in366358%_)
        (let ((_%ctx366360%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in366358%_ _%ctx366360%_))))
    (define gx#core-bind-weak-import!
      (lambda _g368320_
        (let ((_g368321_ (##length _g368320_)))
          (cond ((##fx= _g368321_ 1)
                 (apply gx#core-bind-weak-import!__0 _g368320_))
                ((##fx= _g368321_ 2)
                 (apply gx#core-bind-weak-import!__% _g368320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g368320_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out366245%_)
        (letrec ((_%subst366247%_
                  (lambda (_%key366292%_)
                    (let* ((_%key366293366301%_ _%key366292%_)
                           (_%else366295366309%_ (lambda () _%key366292%_))
                           (_%K366297366339%_
                            (lambda (_%mark366312%_ _%id366313%_)
                              (let* ((_%mark366314366320%_ _%mark366312%_)
                                     (_%E366316366323%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark366314366320%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K366317366331%_
                                      (lambda (_%subst366326%_)
                                        (let ((_%$e366328%_
                                               (if _%subst366326%_
                                                   (hash-get
                                                    _%subst366326%_
                                                    _%id366313%_)
                                                   '#f)))
                                          (if _%$e366328%_
                                              _%$e366328%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key366292%_))))))
                                (if (##structure-instance-of?
                                     _%mark366314366320%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e366318366334%_
                                            (##unchecked-structure-ref
                                             _%mark366314366320%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst366337%_ _%e366318366334%_))
                                      (_%K366317366331%_ _%subst366337%_))
                                    (_%E366316366323%_))))))
                      (if (pair? _%key366293366301%_)
                          (let ((_%hd366298366342%_
                                 (##car _%key366293366301%_))
                                (_%tl366299366344%_
                                 (##cdr _%key366293366301%_)))
                            (let* ((_%id366347%_ _%hd366298366342%_)
                                   (_%mark366349%_ _%tl366299366344%_))
                              (_%K366297366339%_ _%mark366349%_ _%id366347%_)))
                          (_%else366295366309%_))))))
          (let* ((_%out366248366258%_ _%out366245%_)
                 (_%E366250366261%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out366248366258%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K366251366268%_
                  (lambda (_%phi366264%_ _%key366265%_ _%ctx366266%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx366266%_ _%phi366264%_)
                     (_%subst366247%_ _%key366265%_)))))
            (if (##structure-direct-instance-of?
                 _%out366248366258%_
                 'gx#module-export::t)
                (let* ((_%e366252366271%_
                        (##unchecked-structure-ref
                         _%out366248366258%_
                         '1
                         '#f
                         '#f))
                       (_%ctx366274%_ _%e366252366271%_)
                       (_%e366253366276%_
                        (##unchecked-structure-ref
                         _%out366248366258%_
                         '2
                         '#f
                         '#f))
                       (_%key366279%_ _%e366253366276%_)
                       (_%e366254366281%_
                        (##unchecked-structure-ref
                         _%out366248366258%_
                         '3
                         '#f
                         '#f))
                       (_%phi366284%_ _%e366254366281%_)
                       (_%e366255366286%_
                        (##unchecked-structure-ref
                         _%out366248366258%_
                         '4
                         '#f
                         '#f))
                       (_%e366256366289%_
                        (##unchecked-structure-ref
                         _%out366248366258%_
                         '5
                         '#f
                         '#f)))
                  (_%K366251366268%_
                   _%phi366284%_
                   _%key366279%_
                   _%ctx366274%_))
                (_%E366250366261%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out366171%_ _%rename366172%_ _%dphi366173%_)
        (let* ((_%out366174366184%_ _%out366171%_)
               (_%E366176366187%_
                (lambda ()
                  (error '"No clause matching"
                         _%out366174366184%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K366177366199%_
                (lambda (_%weak?366190%_
                         _%name366191%_
                         _%phi366192%_
                         _%key366193%_
                         _%ctx366194%_)
                  (##structure
                   gx#module-import::t
                   _%out366171%_
                   (let ((_%$e366196%_ _%rename366172%_))
                     (if _%$e366196%_ _%$e366196%_ _%name366191%_))
                   (fx+ _%phi366192%_ _%dphi366173%_)
                   _%weak?366190%_))))
          (if (##structure-direct-instance-of?
               _%out366174366184%_
               'gx#module-export::t)
              (let* ((_%e366178366202%_
                      (##unchecked-structure-ref
                       _%out366174366184%_
                       '1
                       '#f
                       '#f))
                     (_%ctx366205%_ _%e366178366202%_)
                     (_%e366179366207%_
                      (##unchecked-structure-ref
                       _%out366174366184%_
                       '2
                       '#f
                       '#f))
                     (_%key366210%_ _%e366179366207%_)
                     (_%e366180366212%_
                      (##unchecked-structure-ref
                       _%out366174366184%_
                       '3
                       '#f
                       '#f))
                     (_%phi366215%_ _%e366180366212%_)
                     (_%e366181366217%_
                      (##unchecked-structure-ref
                       _%out366174366184%_
                       '4
                       '#f
                       '#f))
                     (_%name366220%_ _%e366181366217%_)
                     (_%e366182366222%_
                      (##unchecked-structure-ref
                       _%out366174366184%_
                       '5
                       '#f
                       '#f))
                     (_%weak?366225%_ _%e366182366222%_))
                (_%K366177366199%_
                 _%weak?366225%_
                 _%name366220%_
                 _%phi366215%_
                 _%key366210%_
                 _%ctx366205%_))
              (_%E366176366187%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out366230%_)
        (let* ((_%rename366232%_ '#f) (_%dphi366234%_ '0))
          (gx#core-module-export->import__%
           _%out366230%_
           _%rename366232%_
           _%dphi366234%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out366236%_ _%rename366237%_)
        (let ((_%dphi366239%_ '0))
          (gx#core-module-export->import__%
           _%out366236%_
           _%rename366237%_
           _%dphi366239%_))))
    (define gx#core-module-export->import
      (lambda _g368322_
        (let ((_g368323_ (##length _g368322_)))
          (cond ((##fx= _g368323_ 1)
                 (apply gx#core-module-export->import__0 _g368322_))
                ((##fx= _g368323_ 2)
                 (apply gx#core-module-export->import__1 _g368322_))
                ((##fx= _g368323_ 3)
                 (apply gx#core-module-export->import__% _g368322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g368322_))))))
    (define gx#core-expand-module%
      (lambda (_%stx366070%_)
        (letrec ((_%make-context366072%_
                  (lambda (_%id366149%_)
                    (let* ((_%super366151%_ (gx#current-expander-context))
                           (_%bind-id366153%_ (gx#stx-e _%id366149%_))
                           (_%mod-id366155%_
                            (if (##structure-instance-of?
                                 _%super366151%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super366151%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id366153%_)
                                _%bind-id366153%_))
                           (_%ns366157%_ (symbol->string _%mod-id366155%_))
                           (_%path366167%_
                            (if (##structure-instance-of?
                                 _%super366151%_
                                 'gx#module-context::t)
                                (let ((_%path366159%_
                                       (##unchecked-structure-ref
                                        _%super366151%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path366159%_)
                                          (null? _%path366159%_))
                                      (cons _%bind-id366153%_ _%path366159%_)
                                      (if (not _%path366159%_)
                                          _%bind-id366153%_
                                          (cons _%bind-id366153%_
                                                (cons _%path366159%_ '())))))
                                _%bind-id366153%_))
                           (__obj368299
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
                       __obj368299
                       _%mod-id366155%_
                       _%super366151%_
                       _%ns366157%_
                       _%path366167%_)
                      __obj368299)))
                 (_%valid-module-id?366073%_
                  (lambda (_%id366124%_)
                    (let* ((_%str366126%_ (symbol->string _%id366124%_))
                           (_%len366128%_ (##string-length _%str366126%_)))
                      (if (##fx>= _%len366128%_ '1)
                          (let _%loop366131%_ ((_%index366133%_
                                                (##fx- (##string-length
                                                        _%str366126%_)
                                                       '1)))
                            (if (##fx>= _%index366133%_ '0)
                                (let ((_%c366135%_
                                       (string-ref
                                        _%str366126%_
                                        _%index366133%_)))
                                  (if (or (and (##char>=? _%c366135%_ '#\a)
                                               (##char<=? _%c366135%_ '#\z))
                                          (and (##char>=? _%c366135%_ '#\A)
                                               (##char<=? _%c366135%_ '#\Z))
                                          (and (##char>=? _%c366135%_ '#\0)
                                               (##char<=? _%c366135%_ '#\9))
                                          (##char=? _%c366135%_ '#\_)
                                          (##char=? _%c366135%_ '#\-))
                                      (_%loop366131%_
                                       (##fx- _%index366133%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e366074366084%_ _%stx366070%_)
                 (_%E366076366088%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e366074366084%_)))
                 (_%E366075366120%_
                  (lambda ()
                    (if (gx#stx-pair? _%e366074366084%_)
                        (let ((_%e366077366092%_
                               (gx#syntax-e _%e366074366084%_)))
                          (let ((_%hd366078366095%_ (##car _%e366077366092%_))
                                (_%tl366079366097%_ (##cdr _%e366077366092%_)))
                            (if (gx#stx-pair? _%tl366079366097%_)
                                (let ((_%e366080366100%_
                                       (gx#syntax-e _%tl366079366097%_)))
                                  (let ((_%hd366081366103%_
                                         (##car _%e366080366100%_))
                                        (_%tl366082366105%_
                                         (##cdr _%e366080366100%_)))
                                    (let* ((_%id366108%_ _%hd366081366103%_)
                                           (_%body366110%_ _%tl366082366105%_))
                                      (if (and (gx#identifier? _%id366108%_)
                                               (gx#stx-list? _%body366110%_))
                                          (if (_%valid-module-id?366073%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx366112%_
                                                      (_%make-context366072%_
                                                       _%id366108%_))
                                                     (_%body366114%_
                                                      (gx#core-expand-module-begin
                                                       _%body366110%_
                                                       _%ctx366112%_))
                                                     (_%body366116%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body366114%_)
                                                       (gx#stx-source
                                                        _%stx366070%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx366112%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body366116%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx366112%_
                                                 _%body366116%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id366108%_
                                                 _%ctx366112%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id366108%_)
                                                  _%body366116%_)
                                                 (gx#stx-source
                                                  _%stx366070%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx366070%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E366076366088%_)))))
                                (_%E366076366088%_))))
                        (_%E366076366088%_)))))
            (_%E366075366120%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body366035%_ _%ctx366036%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx366040%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body366035%_)))
                     (_%e366041366048%_ _%stx366040%_)
                     (_%E366043366052%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx366040%_)))
                     (_%E366042366066%_
                      (lambda ()
                        (if (gx#stx-pair? _%e366041366048%_)
                            (let ((_%e366044366056%_
                                   (gx#syntax-e _%e366041366048%_)))
                              (let ((_%hd366045366059%_
                                     (##car _%e366044366056%_))
                                    (_%tl366046366061%_
                                     (##cdr _%e366044366056%_)))
                                (if (and (gx#identifier? _%hd366045366059%_)
                                         (gx#core-identifier=?
                                          _%hd366045366059%_
                                          '%#begin-module))
                                    (let ((_%body366064%_ _%tl366046366061%_))
                                      (if (gx#sealed-syntax? _%stx366040%_)
                                          _%body366064%_
                                          (gx#core-expand-module-body
                                           _%body366064%_)))
                                    (_%E366043366052%_))))
                            (_%E366043366052%_)))))
                (_%E366042366066%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx366036%_)))
    (define gx#core-expand-module-body
      (lambda (_%body365831%_)
        (letrec ((_%expand-special365833%_
                  (lambda (_%hd365962%_ _%K365963%_ _%rest365964%_ _%r365965%_)
                    (let* ((_%e365966365983%_ _%hd365962%_)
                           (_%E365978365987%_
                            (lambda ()
                              (_%K365963%_
                               _%rest365964%_
                               (cons (gx#core-expand-top _%hd365962%_)
                                     _%r365965%_))))
                           (_%E365968365999%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365966365983%_)
                                  (let ((_%e365979365991%_
                                         (gx#syntax-e _%e365966365983%_)))
                                    (let ((_%hd365980365994%_
                                           (##car _%e365979365991%_))
                                          (_%tl365981365996%_
                                           (##cdr _%e365979365991%_)))
                                      (if (and (gx#identifier?
                                                _%hd365980365994%_)
                                               (gx#core-identifier=?
                                                _%hd365980365994%_
                                                '%#export))
                                          (_%K365963%_
                                           _%rest365964%_
                                           (cons _%hd365962%_ _%r365965%_))
                                          (_%E365978365987%_))))
                                  (_%E365978365987%_))))
                           (_%E365967366031%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365966365983%_)
                                  (let ((_%e365969366003%_
                                         (gx#syntax-e _%e365966365983%_)))
                                    (let ((_%hd365970366006%_
                                           (##car _%e365969366003%_))
                                          (_%tl365971366008%_
                                           (##cdr _%e365969366003%_)))
                                      (if (and (gx#identifier?
                                                _%hd365970366006%_)
                                               (gx#core-identifier=?
                                                _%hd365970366006%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl365971366008%_)
                                              (let ((_%e365972366011%_
                                                     (gx#syntax-e
                                                      _%tl365971366008%_)))
                                                (let ((_%hd365973366014%_
                                                       (##car _%e365972366011%_))
                                                      (_%tl365974366016%_
                                                       (##cdr _%e365972366011%_)))
                                                  (let ((_%hd-bind366019%_
                                                         _%hd365973366014%_))
                                                    (if (gx#stx-pair?
                                                         _%tl365974366016%_)
                                                        (let ((_%e365975366021%_
                                                               (gx#syntax-e
                                                                _%tl365974366016%_)))
                                                          (let ((_%hd365976366024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e365975366021%_))
                        (_%tl365977366026%_ (##cdr _%e365975366021%_)))
                    (let ((_%expr366029%_ _%hd365976366024%_))
                      (if (gx#stx-null? _%tl365977366026%_)
                          (if (gx#core-bind-values? _%hd-bind366019%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind366019%_)
                                (_%K365963%_
                                 _%rest365964%_
                                 (cons _%hd365962%_ _%r365965%_)))
                              (_%E365968365999%_))
                          (_%E365968365999%_)))))
                (_%E365968365999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E365968365999%_))
                                          (_%E365968365999%_))))
                                  (_%E365968365999%_)))))
                      (_%E365967366031%_))))
                 (_%expand-body365834%_
                  (lambda (_%rbody365836%_)
                    (let _%lp365838%_ ((_%rest365840%_ _%rbody365836%_)
                                       (_%body365841%_ '()))
                      (let* ((_%rest365842365850%_ _%rest365840%_)
                             (_%else365844365858%_ (lambda () _%body365841%_))
                             (_%K365846365950%_
                              (lambda (_%rest365861%_ _%hd365862%_)
                                (let* ((_%e365863365884%_ _%hd365862%_)
                                       (_%E365879365888%_
                                        (lambda ()
                                          (_%lp365838%_
                                           _%rest365861%_
                                           (cons (gx#core-expand-expression
                                                  _%hd365862%_)
                                                 _%body365841%_))))
                                       (_%E365875365902%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e365863365884%_)
                                              (let ((_%e365880365892%_
                                                     (gx#syntax-e
                                                      _%e365863365884%_)))
                                                (let ((_%hd365881365895%_
                                                       (##car _%e365880365892%_))
                                                      (_%tl365882365897%_
                                                       (##cdr _%e365880365892%_)))
                                                  (let ((_%form365900%_
                                                         _%hd365881365895%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form365900%_
                                                         gx#special-form-binding?)
                                                        (_%lp365838%_
                                                         _%rest365861%_
                                                         (cons _%hd365862%_
                                                               _%body365841%_))
                                                        (_%E365879365888%_)))))
                                              (_%E365879365888%_))))
                                       (_%E365865365914%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e365863365884%_)
                                              (let ((_%e365876365906%_
                                                     (gx#syntax-e
                                                      _%e365863365884%_)))
                                                (let ((_%hd365877365909%_
                                                       (##car _%e365876365906%_))
                                                      (_%tl365878365911%_
                                                       (##cdr _%e365876365906%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd365877365909%_)
                                                           (gx#core-identifier=?
                                                            _%hd365877365909%_
                                                            '%#export))
                                                      (_%lp365838%_
                                                       _%rest365861%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd365862%_)
                                                             _%body365841%_))
                                                      (_%E365875365902%_))))
                                              (_%E365875365902%_))))
                                       (_%E365864365946%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e365863365884%_)
                                              (let ((_%e365866365918%_
                                                     (gx#syntax-e
                                                      _%e365863365884%_)))
                                                (let ((_%hd365867365921%_
                                                       (##car _%e365866365918%_))
                                                      (_%tl365868365923%_
                                                       (##cdr _%e365866365918%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd365867365921%_)
                                                           (gx#core-identifier=?
                                                            _%hd365867365921%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl365868365923%_)
                                                          (let ((_%e365869365926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl365868365923%_)))
                    (let ((_%hd365870365929%_ (##car _%e365869365926%_))
                          (_%tl365871365931%_ (##cdr _%e365869365926%_)))
                      (let ((_%hd-bind365934%_ _%hd365870365929%_))
                        (if (gx#stx-pair? _%tl365871365931%_)
                            (let ((_%e365872365936%_
                                   (gx#syntax-e _%tl365871365931%_)))
                              (let ((_%hd365873365939%_
                                     (##car _%e365872365936%_))
                                    (_%tl365874365941%_
                                     (##cdr _%e365872365936%_)))
                                (let ((_%expr365944%_ _%hd365873365939%_))
                                  (if (gx#stx-null? _%tl365874365941%_)
                                      (_%lp365838%_
                                       _%rest365861%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind365934%_)
                                               (gx#core-expand-expression
                                                _%expr365944%_))
                                              (gx#stx-source _%hd365862%_))
                                             _%body365841%_))
                                      (_%E365865365914%_)))))
                            (_%E365865365914%_)))))
                  (_%E365865365914%_))
              (_%E365865365914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E365865365914%_)))))
                                  (_%E365864365946%_)))))
                        (if (pair? _%rest365842365850%_)
                            (let ((_%hd365847365953%_
                                   (##car _%rest365842365850%_))
                                  (_%tl365848365955%_
                                   (##cdr _%rest365842365850%_)))
                              (let* ((_%hd365958%_ _%hd365847365953%_)
                                     (_%rest365960%_ _%tl365848365955%_))
                                (_%K365846365950%_
                                 _%rest365960%_
                                 _%hd365958%_)))
                            (_%else365844365858%_)))))))
          (_%expand-body365834%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body365831%_)
            _%expand-special365833%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx365672%_
               _%expanded?365673%_
               _%method365674%_
               _%current-phi365675%_
               _%expand1365676%_)
        (letrec ((_%K365678%_
                  (lambda (_%rest365798%_ _%r365799%_)
                    (let* ((_%e365800365807%_ _%rest365798%_)
                           (_%E365802365811%_ (lambda () _%r365799%_))
                           (_%E365801365827%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365800365807%_)
                                  (let ((_%e365803365815%_
                                         (gx#syntax-e _%e365800365807%_)))
                                    (let ((_%hd365804365818%_
                                           (##car _%e365803365815%_))
                                          (_%tl365805365820%_
                                           (##cdr _%e365803365815%_)))
                                      (let* ((_%hd365823%_ _%hd365804365818%_)
                                             (_%rest365825%_
                                              _%tl365805365820%_))
                                        (_%step365679%_
                                         _%hd365823%_
                                         _%rest365825%_
                                         _%r365799%_))))
                                  (_%E365802365811%_)))))
                      (_%E365801365827%_))))
                 (_%step365679%_
                  (lambda (_%hd365712%_ _%rest365713%_ _%r365714%_)
                    (let* ((_%e365715365733%_ _%hd365712%_)
                           (_%E365728365737%_
                            (lambda ()
                              (if (_%expanded?365673%_ (gx#stx-e _%hd365712%_))
                                  (_%K365678%_
                                   _%rest365713%_
                                   (cons (gx#stx-e _%hd365712%_) _%r365714%_))
                                  (_%expand1365676%_
                                   _%hd365712%_
                                   _%K365678%_
                                   _%rest365713%_
                                   _%r365714%_))))
                           (_%E365724365753%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365715365733%_)
                                  (let ((_%e365729365741%_
                                         (gx#syntax-e _%e365715365733%_)))
                                    (let ((_%hd365730365744%_
                                           (##car _%e365729365741%_))
                                          (_%tl365731365746%_
                                           (##cdr _%e365729365741%_)))
                                      (let* ((_%macro365749%_
                                              _%hd365730365744%_)
                                             (_%body365751%_
                                              _%tl365731365746%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro365749%_
                                             gx#syntax-binding?)
                                            (_%K365678%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro365749%_)
                                                    _%hd365712%_
                                                    _%method365674%_)
                                                   _%rest365713%_)
                                             _%r365714%_)
                                            (_%E365728365737%_)))))
                                  (_%E365728365737%_))))
                           (_%E365717365767%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365715365733%_)
                                  (let ((_%e365725365757%_
                                         (gx#syntax-e _%e365715365733%_)))
                                    (let ((_%hd365726365760%_
                                           (##car _%e365725365757%_))
                                          (_%tl365727365762%_
                                           (##cdr _%e365725365757%_)))
                                      (if (eq? (gx#stx-e _%hd365726365760%_)
                                               'begin:)
                                          (let ((_%body365765%_
                                                 _%tl365727365762%_))
                                            (_%K365678%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest365713%_
                                              _%body365765%_)
                                             _%r365714%_))
                                          (_%E365724365753%_))))
                                  (_%E365724365753%_))))
                           (_%E365716365794%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365715365733%_)
                                  (let ((_%e365718365771%_
                                         (gx#syntax-e _%e365715365733%_)))
                                    (let ((_%hd365719365774%_
                                           (##car _%e365718365771%_))
                                          (_%tl365720365776%_
                                           (##cdr _%e365718365771%_)))
                                      (if (eq? (gx#stx-e _%hd365719365774%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl365720365776%_)
                                              (let ((_%e365721365779%_
                                                     (gx#syntax-e
                                                      _%tl365720365776%_)))
                                                (let ((_%hd365722365782%_
                                                       (##car _%e365721365779%_))
                                                      (_%tl365723365784%_
                                                       (##cdr _%e365721365779%_)))
                                                  (let* ((_%dphi365787%_
                                                          _%hd365722365782%_)
                                                         (_%body365789%_
                                                          _%tl365723365784%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi365787%_)
                                                        (let ((_%rbody365792%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K365678%_ _%body365789%_ '()))
                        _%current-phi365675%_
                        (fx+ (gx#stx-e _%dphi365787%_)
                             (_%current-phi365675%_)))))
                  (_%K365678%_
                   _%rest365713%_
                   (foldr__0 cons _%r365714%_ _%rbody365792%_)))
                (_%E365717365767%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E365717365767%_))
                                          (_%E365717365767%_))))
                                  (_%E365717365767%_)))))
                      (_%E365716365794%_)))))
          (let* ((_%e365680365687%_ _%stx365672%_)
                 (_%E365682365691%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e365680365687%_)))
                 (_%E365681365708%_
                  (lambda ()
                    (if (gx#stx-pair? _%e365680365687%_)
                        (let ((_%e365683365695%_
                               (gx#syntax-e _%e365680365687%_)))
                          (let ((_%hd365684365698%_ (##car _%e365683365695%_))
                                (_%tl365685365700%_ (##cdr _%e365683365695%_)))
                            (let ((_%body365703%_ _%tl365685365700%_))
                              (if (_%current-phi365675%_)
                                  (_%K365678%_ _%body365703%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K365678%_ _%body365703%_ '()))
                                   _%current-phi365675%_
                                   (gx#current-expander-phi))))))
                        (_%E365682365691%_)))))
            (_%E365681365708%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx365326%_ _%internal-expand?365327%_)
        (letrec ((_%expand1365329%_
                  (lambda (_%hd365644%_ _%K365645%_ _%rest365646%_ _%r365647%_)
                    (if (gx#core-bound-module? _%hd365644%_)
                        (_%import1365330%_
                         (gx#syntax-local-e__0 _%hd365644%_)
                         _%K365645%_
                         _%rest365646%_
                         _%r365647%_)
                        (if (gx#core-library-module-path? _%hd365644%_)
                            (_%import1365330%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd365644%_))
                             _%K365645%_
                             _%rest365646%_
                             _%r365647%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd365644%_)
                                (_%import1365330%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd365644%_))
                                 _%K365645%_
                                 _%rest365646%_
                                 _%r365647%_)
                                (let ((_%e365653%_ (gx#stx-e _%hd365644%_)))
                                  (if (pair? _%e365653%_)
                                      (let ((_%$e365656%_
                                             (gx#stx-e (##car _%e365653%_))))
                                        (if (eq? 'spec: _%$e365656%_)
                                            (_%import-spec365333%_
                                             _%hd365644%_
                                             _%K365645%_
                                             _%rest365646%_
                                             _%r365647%_)
                                            (if (eq? 'in: _%$e365656%_)
                                                (_%import-submodule365331%_
                                                 _%hd365644%_
                                                 _%K365645%_
                                                 _%rest365646%_
                                                 _%r365647%_)
                                                (if (eq? 'runtime:
                                                         _%$e365656%_)
                                                    (_%import-runtime365332%_
                                                     _%hd365644%_
                                                     _%K365645%_
                                                     _%rest365646%_
                                                     _%r365647%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx365326%_
                                                     _%hd365644%_)))))
                                      (if (string? _%e365653%_)
                                          (_%import1365330%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd365644%_
                                             (gx#stx-source _%stx365326%_)))
                                           _%K365645%_
                                           _%rest365646%_
                                           _%r365647%_)
                                          (if (##structure-instance-of?
                                               _%e365653%_
                                               'gx#module-context::t)
                                              (_%K365645%_
                                               _%rest365646%_
                                               (cons _%e365653%_ _%r365647%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx365326%_
                                               _%hd365644%_))))))))))
                 (_%import1365330%_
                  (lambda (_%ctx365633%_
                           _%K365634%_
                           _%rest365635%_
                           _%r365636%_)
                    (let ((_%dphi365638%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K365634%_
                       _%rest365635%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx365633%_
                              _%dphi365638%_
                              (map (lambda (_%g365639365641%_)
                                     (gx#core-module-export->import__%
                                      _%g365639365641%_
                                      '#f
                                      _%dphi365638%_))
                                   (##unchecked-structure-ref
                                    _%ctx365633%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r365636%_)))))
                 (_%import-submodule365331%_
                  (lambda (_%hd365600%_ _%K365601%_ _%rest365602%_ _%r365603%_)
                    (let* ((_%e365604365611%_ _%hd365600%_)
                           (_%E365606365615%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e365604365611%_)))
                           (_%E365605365629%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365604365611%_)
                                  (let ((_%e365607365619%_
                                         (gx#syntax-e _%e365604365611%_)))
                                    (let ((_%hd365608365622%_
                                           (##car _%e365607365619%_))
                                          (_%tl365609365624%_
                                           (##cdr _%e365607365619%_)))
                                      (let ((_%spath365627%_
                                             _%tl365609365624%_))
                                        (_%import1365330%_
                                         (_%import-spec-source365334%_
                                          _%spath365627%_)
                                         _%K365601%_
                                         _%rest365602%_
                                         _%r365603%_))))
                                  (_%E365606365615%_)))))
                      (_%E365605365629%_))))
                 (_%import-runtime365332%_
                  (lambda (_%hd365567%_ _%K365568%_ _%rest365569%_ _%r365570%_)
                    (let* ((_%e365571365578%_ _%hd365567%_)
                           (_%E365573365582%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e365571365578%_)))
                           (_%E365572365596%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365571365578%_)
                                  (let ((_%e365574365586%_
                                         (gx#syntax-e _%e365571365578%_)))
                                    (let ((_%hd365575365589%_
                                           (##car _%e365574365586%_))
                                          (_%tl365576365591%_
                                           (##cdr _%e365574365586%_)))
                                      (let ((_%spath365594%_
                                             _%tl365576365591%_))
                                        (_%K365568%_
                                         _%rest365569%_
                                         (cons (_%import-spec-source365334%_
                                                _%spath365594%_)
                                               _%r365570%_)))))
                                  (_%E365573365582%_)))))
                      (_%E365572365596%_))))
                 (_%import-spec365333%_
                  (lambda (_%hd365405%_ _%K365406%_ _%rest365407%_ _%r365408%_)
                    (let* ((_%e365409365426%_ _%hd365405%_)
                           (_%E365418365430%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e365409365426%_)))
                           (_%E365411365541%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365409365426%_)
                                  (let ((_%e365419365434%_
                                         (gx#syntax-e _%e365409365426%_)))
                                    (let ((_%hd365420365437%_
                                           (##car _%e365419365434%_))
                                          (_%tl365421365439%_
                                           (##cdr _%e365419365434%_)))
                                      (if (gx#stx-pair? _%tl365421365439%_)
                                          (let ((_%e365422365442%_
                                                 (gx#syntax-e
                                                  _%tl365421365439%_)))
                                            (let ((_%hd365423365445%_
                                                   (##car _%e365422365442%_))
                                                  (_%tl365424365447%_
                                                   (##cdr _%e365422365442%_)))
                                              (let* ((_%path365450%_
                                                      _%hd365423365445%_)
                                                     (_%specs365452%_
                                                      _%tl365424365447%_))
                                                (let ((_%src-ctx365454%_
                                                       (_%import-spec-source365334%_
                                                        _%path365450%_))
                                                      (_%exports365455%_
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
                                                      (_%specs365456%_
                                                       (gx#syntax->list
                                                        _%specs365452%_)))
                                                  (for-each
                                                   (lambda (_%out365458%_)
                                                     (__hash-put!
                                                      _%exports365455%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out365458%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out365458%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out365458%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx365454%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K365406%_
                                                   _%rest365407%_
                                                   (foldl__0
                                                    (lambda (_%spec365460%_
                                                             _%r365461%_)
                                                      (let* ((_%e365462365478%_
                                                              _%spec365460%_)
                                                             (_%E365464365482%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e365462365478%_)))
                     (_%E365463365537%_
                      (lambda ()
                        (if (gx#stx-pair? _%e365462365478%_)
                            (let ((_%e365465365486%_
                                   (gx#syntax-e _%e365462365478%_)))
                              (let ((_%hd365466365489%_
                                     (##car _%e365465365486%_))
                                    (_%tl365467365491%_
                                     (##cdr _%e365465365486%_)))
                                (let ((_%phi365494%_ _%hd365466365489%_))
                                  (if (gx#stx-pair? _%tl365467365491%_)
                                      (let ((_%e365468365496%_
                                             (gx#syntax-e _%tl365467365491%_)))
                                        (let ((_%hd365469365499%_
                                               (##car _%e365468365496%_))
                                              (_%tl365470365501%_
                                               (##cdr _%e365468365496%_)))
                                          (let ((_%name365504%_
                                                 _%hd365469365499%_))
                                            (if (gx#stx-pair?
                                                 _%tl365470365501%_)
                                                (let ((_%e365471365506%_
                                                       (gx#syntax-e
                                                        _%tl365470365501%_)))
                                                  (let ((_%hd365472365509%_
                                                         (##car _%e365471365506%_))
                                                        (_%tl365473365511%_
                                                         (##cdr _%e365471365506%_)))
                                                    (let ((_%src-phi365514%_
                                                           _%hd365472365509%_))
                                                      (if (gx#stx-pair?
                                                           _%tl365473365511%_)
                                                          (let ((_%e365474365516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl365473365511%_)))
                    (let ((_%hd365475365519%_ (##car _%e365474365516%_))
                          (_%tl365476365521%_ (##cdr _%e365474365516%_)))
                      (let ((_%src-name365524%_ _%hd365475365519%_))
                        (if (gx#stx-null? _%tl365476365521%_)
                            (if (and (gx#stx-fixnum? _%src-phi365514%_)
                                     (gx#identifier? _%src-name365524%_)
                                     (gx#stx-fixnum? _%phi365494%_)
                                     (gx#identifier? _%name365504%_))
                                (let ((_%src-phi365526%_
                                       (gx#stx-e _%src-phi365514%_))
                                      (_%src-name365527%_
                                       (gx#core-identifier-key
                                        _%src-name365524%_))
                                      (_%phi365528%_ (gx#stx-e _%phi365494%_))
                                      (_%name365529%_
                                       (gx#core-identifier-key
                                        _%name365504%_)))
                                  (let ((_%$e365531%_
                                         (__hash-get
                                          _%exports365455%_
                                          (cons _%src-phi365526%_
                                                _%src-name365527%_))))
                                    (if _%$e365531%_
                                        ((lambda (_%out365534%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out365534%_
                                                  _%name365529%_
                                                  (fx- _%phi365528%_
                                                       _%src-phi365526%_))
                                                 _%r365461%_))
                                         _%$e365531%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx365326%_
                                         _%hd365405%_))))
                                (_%E365464365482%_))
                            (_%E365464365482%_)))))
                  (_%E365464365482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E365464365482%_)))))
                                      (_%E365464365482%_)))))
                            (_%E365464365482%_)))))
                (_%E365463365537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r365408%_
                                                    _%specs365456%_))))))
                                          (_%E365418365430%_))))
                                  (_%E365418365430%_))))
                           (_%E365410365563%_
                            (lambda ()
                              (if (gx#stx-pair? _%e365409365426%_)
                                  (let ((_%e365412365545%_
                                         (gx#syntax-e _%e365409365426%_)))
                                    (let ((_%hd365413365548%_
                                           (##car _%e365412365545%_))
                                          (_%tl365414365550%_
                                           (##cdr _%e365412365545%_)))
                                      (if (gx#stx-pair? _%tl365414365550%_)
                                          (let ((_%e365415365553%_
                                                 (gx#syntax-e
                                                  _%tl365414365550%_)))
                                            (let ((_%hd365416365556%_
                                                   (##car _%e365415365553%_))
                                                  (_%tl365417365558%_
                                                   (##cdr _%e365415365553%_)))
                                              (let ((_%path365561%_
                                                     _%hd365416365556%_))
                                                (if (gx#stx-null?
                                                     _%tl365417365558%_)
                                                    (_%K365406%_
                                                     _%rest365407%_
                                                     (cons (_%import-spec-source365334%_
                                                            _%path365561%_)
                                                           _%r365408%_))
                                                    (_%E365411365541%_)))))
                                          (_%E365411365541%_))))
                                  (_%E365411365541%_)))))
                      (_%E365410365563%_))))
                 (_%import-spec-source365334%_
                  (lambda (_%spath365403%_)
                    (gx#core-import-nested-module
                     _%spath365403%_
                     _%stx365326%_)))
                 (_%import!365335%_
                  (lambda (_%rbody365348%_)
                    (letrec* ((_%current-ctx365350%_
                               (gx#current-expander-context))
                              (_%deps365351%_ (make-hash-table-eq))
                              (_%bind!365352%_
                               (lambda (_%hd365401%_)
                                 (gx#core-bind-import!__1
                                  _%hd365401%_
                                  _%current-ctx365350%_))))
                      (let _%lp365354%_ ((_%rest365356%_ _%rbody365348%_)
                                         (_%body365357%_ '()))
                        (let* ((_%rest365358365366%_ _%rest365356%_)
                               (_%else365360365377%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx365350%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx365350%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx365350%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body365357%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx365374%_ _%_365375%_)
                                     (gx#eval-module _%ctx365374%_))
                                   _%deps365351%_)
                                  _%body365357%_))
                               (_%K365362365389%_
                                (lambda (_%rest365380%_ _%hd365381%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd365381%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!365352%_ _%hd365381%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd365381%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd365381%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps365351%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd365381%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd365381%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!365352%_
                                             (##unchecked-structure-ref
                                              _%hd365381%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd365381%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps365351%_
                                                 (##unchecked-structure-ref
                                                  _%hd365381%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e365385%_
                                                 (##structure-instance-of?
                                                  _%hd365381%_
                                                  'gx#module-context::t)))
                                            (if _%$e365385%_
                                                _%$e365385%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx365326%_
                                                 _%hd365381%_)))))
                                  (_%lp365354%_
                                   _%rest365380%_
                                   (cons _%hd365381%_ _%body365357%_)))))
                          (if (pair? _%rest365358365366%_)
                              (let ((_%hd365363365392%_
                                     (##car _%rest365358365366%_))
                                    (_%tl365364365394%_
                                     (##cdr _%rest365358365366%_)))
                                (let* ((_%hd365397%_ _%hd365363365392%_)
                                       (_%rest365399%_ _%tl365364365394%_))
                                  (_%K365362365389%_
                                   _%rest365399%_
                                   _%hd365397%_)))
                              (_%else365360365377%_)))))))
                 (_%expanded-import?365336%_
                  (lambda (_%e365340%_)
                    (let ((_%$e365342%_
                           (##structure-direct-instance-of?
                            _%e365340%_
                            'gx#import-set::t)))
                      (if _%$e365342%_
                          _%$e365342%_
                          (let ((_%$e365345%_
                                 (##structure-direct-instance-of?
                                  _%e365340%_
                                  'gx#module-import::t)))
                            (if _%$e365345%_
                                _%$e365345%_
                                (##structure-instance-of?
                                 _%e365340%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody365338%_
                 (gx#core-expand-import/export
                  _%stx365326%_
                  _%expanded-import?365336%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1365329%_)))
            (if _%internal-expand?365327%_
                (reverse _%rbody365338%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!365335%_ _%rbody365338%_))
                 (gx#stx-source _%stx365326%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx365665%_)
        (let ((_%internal-expand?365667%_ '#f))
          (gx#core-expand-import%__%
           _%stx365665%_
           _%internal-expand?365667%_))))
    (define gx#core-expand-import%
      (lambda _g368324_
        (let ((_g368325_ (##length _g368324_)))
          (cond ((##fx= _g368325_ 1)
                 (apply gx#core-expand-import%__0 _g368324_))
                ((##fx= _g368325_ 2)
                 (apply gx#core-expand-import%__% _g368324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g368324_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath365253%_ _%where365254%_)
        (let* ((_%e365255365262%_ _%spath365253%_)
               (_%E365257365266%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e365255365262%_)))
               (_%E365256365321%_
                (lambda ()
                  (if (gx#stx-pair? _%e365255365262%_)
                      (let ((_%e365258365270%_
                             (gx#syntax-e _%e365255365262%_)))
                        (let ((_%hd365259365273%_ (##car _%e365258365270%_))
                              (_%tl365260365275%_ (##cdr _%e365258365270%_)))
                          (let* ((_%origin365278%_ _%hd365259365273%_)
                                 (_%sub365280%_ _%tl365260365275%_)
                                 (_%origin-ctx365282%_
                                  (if (gx#stx-false? _%origin365278%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin365278%_))))
                            (let _%lp365284%_ ((_%rest365286%_ _%sub365280%_)
                                               (_%ctx365287%_
                                                _%origin-ctx365282%_))
                              (let* ((_%e365288365295%_ _%rest365286%_)
                                     (_%E365290365299%_
                                      (lambda () _%ctx365287%_))
                                     (_%E365289365317%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e365288365295%_)
                                            (let ((_%e365291365303%_
                                                   (gx#syntax-e
                                                    _%e365288365295%_)))
                                              (let ((_%hd365292365306%_
                                                     (##car _%e365291365303%_))
                                                    (_%tl365293365308%_
                                                     (##cdr _%e365291365303%_)))
                                                (let* ((_%id365311%_
                                                        _%hd365292365306%_)
                                                       (_%rest365313%_
                                                        _%tl365293365308%_)
                                                       (_%bind365315%_
                                                        (gx#resolve-identifier__%
                                                         _%id365311%_
                                                         '0
                                                         _%ctx365287%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind365315%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind365315%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where365254%_
                                                       _%spath365253%_
                                                       _%id365311%_))
                                                  (_%lp365284%_
                                                   _%rest365313%_
                                                   (##unchecked-structure-ref
                                                    _%bind365315%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E365290365299%_)))))
                                (_%E365289365317%_))))))
                      (_%E365257365266%_)))))
          (_%E365256365321%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd365251%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd365251%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx364746%_ _%internal-expand?364747%_)
        (letrec* ((_%make-export__368252368253%_
                   (lambda (_%bind365199%_
                            _%phi365200%_
                            _%ctx365201%_
                            _%name365202%_)
                     (let* ((_%key365204%_
                             (##unchecked-structure-ref
                              _%bind365199%_
                              '2
                              '#f
                              '#f))
                            (_%export-key365206%_
                             (if _%name365202%_
                                 (gx#core-identifier-key _%name365202%_)
                                 _%key365204%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx365201%_
                        _%key365204%_
                        _%phi365200%_
                        _%export-key365206%_
                        (let ((_%$e365209%_
                               (##structure-instance-of?
                                _%bind365199%_
                                'gx#extern-binding::t)))
                          (if _%$e365209%_
                              _%$e365209%_
                              (##structure-direct-instance-of?
                               _%bind365199%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__368254368257%_
                   (lambda (_%bind365215%_)
                     (let* ((_%phi365217%_ (gx#current-export-expander-phi))
                            (_%ctx365219%_ (gx#current-expander-context))
                            (_%name365221%_ '#f))
                       (_%make-export__368252368253%_
                        _%bind365215%_
                        _%phi365217%_
                        _%ctx365219%_
                        _%name365221%_))))
                  (_%make-export__1__368255368258%_
                   (lambda (_%bind365223%_ _%phi365224%_)
                     (let* ((_%ctx365226%_ (gx#current-expander-context))
                            (_%name365228%_ '#f))
                       (_%make-export__368252368253%_
                        _%bind365223%_
                        _%phi365224%_
                        _%ctx365226%_
                        _%name365228%_))))
                  (_%make-export__2__368256368259%_
                   (lambda (_%bind365230%_ _%phi365231%_ _%ctx365232%_)
                     (let ((_%name365234%_ '#f))
                       (_%make-export__368252368253%_
                        _%bind365230%_
                        _%phi365231%_
                        _%ctx365232%_
                        _%name365234%_))))
                  (_%make-export364749%_
                   (lambda _g368326_
                     (let ((_g368327_ (##length _g368326_)))
                       (cond ((##fx= _g368327_ 1)
                              (apply _%make-export__0__368254368257%_
                                     _g368326_))
                             ((##fx= _g368327_ 2)
                              (apply _%make-export__1__368255368258%_
                                     _g368326_))
                             ((##fx= _g368327_ 3)
                              (apply _%make-export__2__368256368259%_
                                     _g368326_))
                             ((##fx= _g368327_ 4)
                              (apply _%make-export__368252368253%_ _g368326_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g368326_))))))
                  (_%expand1364750%_
                   (lambda (_%hd364904%_
                            _%K364905%_
                            _%rest364906%_
                            _%r364907%_)
                     (let* ((_%e364908364940%_ _%hd364904%_)
                            (_%E364935364944%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx364746%_
                                _%hd364904%_)))
                            (_%E364925365028%_
                             (lambda ()
                               (if (gx#stx-pair? _%e364908364940%_)
                                   (let ((_%e364936364948%_
                                          (gx#syntax-e _%e364908364940%_)))
                                     (let ((_%hd364937364951%_
                                            (##car _%e364936364948%_))
                                           (_%tl364938364953%_
                                            (##cdr _%e364936364948%_)))
                                       (if (eq? (gx#stx-e _%hd364937364951%_)
                                                'import:)
                                           (let ((_%in364956%_
                                                  _%tl364938364953%_))
                                             (if (gx#stx-list? _%in364956%_)
                                                 (let _%lp364958%_ ((_%in-rest364960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in364956%_)
                            (_%r364961%_ _%r364907%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e364962364969%_
                                                           _%in-rest364960%_)
                                                          (_%E364964364973%_
                                                           (lambda ()
                                                             (_%K364905%_
                                                              _%rest364906%_
                                                              _%r364961%_)))
                                                          (_%E364963365024%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e364962364969%_)
                         (let ((_%e364965364977%_
                                (gx#syntax-e _%e364962364969%_)))
                           (let ((_%hd364966364980%_ (##car _%e364965364977%_))
                                 (_%tl364967364982%_
                                  (##cdr _%e364965364977%_)))
                             (let* ((_%hd364985%_ _%hd364966364980%_)
                                    (_%in-rest364987%_ _%tl364967364982%_)
                                    (_%src365022%_
                                     (if (gx#core-bound-module? _%hd364985%_)
                                         (gx#syntax-local-e__0 _%hd364985%_)
                                         (if (gx#core-library-module-path?
                                              _%hd364985%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd364985%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd364985%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd364985%_))
                                                 (if (gx#stx-string?
                                                      _%hd364985%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd364985%_
                                                       (gx#stx-source
                                                        _%stx364746%_)))
                                                     (let* ((_%e364993365000%_
                                                             _%hd364985%_)
                                                            (_%E364995365004%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx364746%_
                                                                _%hd364985%_)))
                                                            (_%E364994365018%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e364993365000%_)
                           (let ((_%e364996365008%_
                                  (gx#syntax-e _%e364993365000%_)))
                             (let ((_%hd364997365011%_
                                    (##car _%e364996365008%_))
                                   (_%tl364998365013%_
                                    (##cdr _%e364996365008%_)))
                               (if (eq? (gx#stx-e _%hd364997365011%_) 'in:)
                                   (let ((_%spath365016%_ _%tl364998365013%_))
                                     (gx#core-import-nested-module
                                      _%spath365016%_
                                      _%stx364746%_))
                                   (_%E364995365004%_))))
                           (_%E364995365004%_)))))
               (_%E364994365018%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp364958%_
                                _%in-rest364987%_
                                (_%export-imports364751%_
                                 _%src365022%_
                                 _%r364961%_)))))
                         (_%E364964364973%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E364963365024%_)))
                                                 (_%E364935364944%_)))
                                           (_%E364935364944%_))))
                                   (_%E364935364944%_))))
                            (_%E364912365068%_
                             (lambda ()
                               (if (gx#stx-pair? _%e364908364940%_)
                                   (let ((_%e364926365032%_
                                          (gx#syntax-e _%e364908364940%_)))
                                     (let ((_%hd364927365035%_
                                            (##car _%e364926365032%_))
                                           (_%tl364928365037%_
                                            (##cdr _%e364926365032%_)))
                                       (if (eq? (gx#stx-e _%hd364927365035%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl364928365037%_)
                                               (let ((_%e364929365040%_
                                                      (gx#syntax-e
                                                       _%tl364928365037%_)))
                                                 (let ((_%hd364930365043%_
                                                        (##car _%e364929365040%_))
                                                       (_%tl364931365045%_
                                                        (##cdr _%e364929365040%_)))
                                                   (let ((_%id365048%_
                                                          _%hd364930365043%_))
                                                     (if (gx#stx-pair?
                                                          _%tl364931365045%_)
                                                         (let ((_%e364932365050%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl364931365045%_)))
                   (let ((_%hd364933365053%_ (##car _%e364932365050%_))
                         (_%tl364934365055%_ (##cdr _%e364932365050%_)))
                     (let ((_%name365058%_ _%hd364933365053%_))
                       (if (gx#stx-null? _%tl364934365055%_)
                           (let* ((_%phi365060%_
                                   (gx#current-export-expander-phi))
                                  (_%$e365062%_
                                   (gx#core-resolve-identifier__1
                                    _%id365048%_
                                    _%phi365060%_)))
                             (if _%$e365062%_
                                 ((lambda (_%bind365065%_)
                                    (_%K364905%_
                                     _%rest364906%_
                                     (cons (_%make-export__368252368253%_
                                            _%bind365065%_
                                            _%phi365060%_
                                            (gx#current-expander-context)
                                            _%name365058%_)
                                           _%r364907%_)))
                                  _%$e365062%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx364746%_
                                  _%hd364904%_
                                  _%id365048%_)))
                           (_%E364925365028%_)))))
                 (_%E364925365028%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E364925365028%_))
                                           (_%E364925365028%_))))
                                   (_%E364925365028%_))))
                            (_%E364911365118%_
                             (lambda ()
                               (if (gx#stx-pair? _%e364908364940%_)
                                   (let ((_%e364913365072%_
                                          (gx#syntax-e _%e364908364940%_)))
                                     (let ((_%hd364914365075%_
                                            (##car _%e364913365072%_))
                                           (_%tl364915365077%_
                                            (##cdr _%e364913365072%_)))
                                       (if (eq? (gx#stx-e _%hd364914365075%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl364915365077%_)
                                               (let ((_%e364916365080%_
                                                      (gx#syntax-e
                                                       _%tl364915365077%_)))
                                                 (let ((_%hd364917365083%_
                                                        (##car _%e364916365080%_))
                                                       (_%tl364918365085%_
                                                        (##cdr _%e364916365080%_)))
                                                   (let ((_%phi365088%_
                                                          _%hd364917365083%_))
                                                     (if (gx#stx-pair?
                                                          _%tl364918365085%_)
                                                         (let ((_%e364919365090%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl364918365085%_)))
                   (let ((_%hd364920365093%_ (##car _%e364919365090%_))
                         (_%tl364921365095%_ (##cdr _%e364919365090%_)))
                     (let ((_%id365098%_ _%hd364920365093%_))
                       (if (gx#stx-pair? _%tl364921365095%_)
                           (let ((_%e364922365100%_
                                  (gx#syntax-e _%tl364921365095%_)))
                             (let ((_%hd364923365103%_
                                    (##car _%e364922365100%_))
                                   (_%tl364924365105%_
                                    (##cdr _%e364922365100%_)))
                               (let ((_%name365108%_ _%hd364923365103%_))
                                 (if (gx#stx-null? _%tl364924365105%_)
                                     (if (and (gx#stx-fixnum? _%phi365088%_)
                                              (gx#identifier? _%id365098%_)
                                              (gx#identifier? _%name365108%_))
                                         (let* ((_%phi365110%_
                                                 (gx#stx-e _%phi365088%_))
                                                (_%$e365112%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id365098%_
                                                  _%phi365110%_)))
                                           (if _%$e365112%_
                                               ((lambda (_%bind365115%_)
                                                  (_%K364905%_
                                                   _%rest364906%_
                                                   (cons (_%make-export__368252368253%_
                                                          _%bind365115%_
                                                          _%phi365110%_
                                                          (gx#current-expander-context)
                                                          _%name365108%_)
                                                         _%r364907%_)))
                                                _%$e365112%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx364746%_
                                                _%hd364904%_
                                                _%id365098%_)))
                                         (_%E364912365068%_))
                                     (_%E364912365068%_)))))
                           (_%E364912365068%_)))))
                 (_%E364912365068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E364912365068%_))
                                           (_%E364912365068%_))))
                                   (_%E364912365068%_))))
                            (_%E364910365130%_
                             (lambda ()
                               (let ((_%id365122%_ _%e364908364940%_))
                                 (if (gx#identifier? _%id365122%_)
                                     (let ((_%$e365124%_
                                            (gx#core-resolve-identifier__1
                                             _%id365122%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e365124%_
                                           ((lambda (_%bind365127%_)
                                              (_%K364905%_
                                               _%rest364906%_
                                               (cons (_%make-export__0__368254368257%_
                                                      _%bind365127%_)
                                                     _%r364907%_)))
                                            _%$e365124%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx364746%_
                                            _%hd364904%_)))
                                     (_%E364911365118%_)))))
                            (_%E364909365194%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e364908364940%_) '#t)
                                   (let* ((_%current-ctx365134%_
                                           (gx#current-expander-context))
                                          (_%current-phi365136%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx365138%_
                                           (gx#core-context-shift
                                            _%current-ctx365134%_
                                            _%current-phi365136%_))
                                          (_%phi-bind365140%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx365138%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp365143%_ ((_%bind-rest365145%_
                                                         _%phi-bind365140%_)
                                                        (_%set365146%_ '()))
                                       (let* ((_%bind-rest365147365157%_
                                               _%bind-rest365145%_)
                                              (_%else365149365165%_
                                               (lambda ()
                                                 (_%K364905%_
                                                  _%rest364906%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi365136%_
                                                         _%set365146%_)
                                                        _%r364907%_))))
                                              (_%K365151365175%_
                                               (lambda (_%bind-rest365168%_
                                                        _%bind365169%_
                                                        _%key365170%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind365169%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind365169%_))
                                                     (_%lp365143%_
                                                      _%bind-rest365168%_
                                                      _%set365146%_)
                                                     (_%lp365143%_
                                                      _%bind-rest365168%_
                                                      (cons (_%make-export__2__368256368259%_
                                                             _%bind365169%_
                                                             _%current-phi365136%_
                                                             _%current-ctx365134%_)
                                                            _%set365146%_))))))
                                         (if (pair? _%bind-rest365147365157%_)
                                             (let ((_%hd365152365178%_
                                                    (##car _%bind-rest365147365157%_))
                                                   (_%tl365153365180%_
                                                    (##cdr _%bind-rest365147365157%_)))
                                               (if (pair? _%hd365152365178%_)
                                                   (let ((_%hd365154365183%_
                                                          (##car _%hd365152365178%_))
                                                         (_%tl365155365185%_
                                                          (##cdr _%hd365152365178%_)))
                                                     (let* ((_%key365188%_
                                                             _%hd365154365183%_)
                                                            (_%bind365190%_
                                                             _%tl365155365185%_)
                                                            (_%bind-rest365192%_
                                                             _%tl365153365180%_))
                                                       (_%K365151365175%_
                                                        _%bind-rest365192%_
                                                        _%bind365190%_
                                                        _%key365188%_)))
                                                   (_%else365149365165%_)))
                                             (_%else365149365165%_)))))
                                   (_%E364910365130%_)))))
                       (_%E364909365194%_))))
                  (_%export-imports364751%_
                   (lambda (_%src364781%_ _%r364782%_)
                     (letrec* ((_%current-ctx364784%_
                                (gx#current-expander-context))
                               (_%current-phi364785%_
                                (gx#current-export-expander-phi))
                               (_%import->export364786%_
                                (lambda (_%in364867%_)
                                  (let* ((_%in364868364876%_ _%in364867%_)
                                         (_%E364870364879%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in364868364876%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K364871364886%_
                                          (lambda (_%phi364882%_
                                                   _%key364883%_
                                                   _%out364884%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx364784%_
                                             _%key364883%_
                                             _%phi364882%_
                                             _%key364883%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in364868364876%_
                                         'gx#module-import::t)
                                        (let* ((_%e364872364889%_
                                                (##unchecked-structure-ref
                                                 _%in364868364876%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out364892%_
                                                _%e364872364889%_)
                                               (_%e364873364894%_
                                                (##unchecked-structure-ref
                                                 _%in364868364876%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key364897%_
                                                _%e364873364894%_)
                                               (_%e364874364899%_
                                                (##unchecked-structure-ref
                                                 _%in364868364876%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi364902%_
                                                _%e364874364899%_))
                                          (_%K364871364886%_
                                           _%phi364902%_
                                           _%key364897%_
                                           _%out364892%_))
                                        (_%E364870364879%_)))))
                               (_%fold-e364787%_
                                (lambda (_%in364789%_ _%r364790%_)
                                  (let* ((_%in364791364805%_ _%in364789%_)
                                         (_%else364794364813%_
                                          (lambda () _%r364790%_)))
                                    (let ((_%K364800364849%_
                                           (lambda (_%phi364845%_
                                                    _%key364846%_
                                                    _%out364847%_)
                                             (if (and (fx= _%phi364845%_
                                                           _%current-phi364785%_)
                                                      (eq? _%src364781%_
                                                           (##unchecked-structure-ref
                                                            _%out364847%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export364786%_
                                                        _%in364789%_)
                                                       _%r364790%_)
                                                 _%r364790%_)))
                                          (_%K364796364824%_
                                           (lambda (_%imports364817%_
                                                    _%phi364818%_
                                                    _%ctx364819%_)
                                             (if (and (fx= _%phi364818%_
                                                           _%current-phi364785%_)
                                                      (eq? _%src364781%_
                                                           _%ctx364819%_))
                                                 (foldl__0
                                                  (lambda (_%in364821%_
                                                           _%r364822%_)
                                                    (cons (_%import->export364786%_
                                                           _%in364821%_)
                                                          _%r364822%_))
                                                  _%r364790%_
                                                  _%imports364817%_)
                                                 _%r364790%_))))
                                      (let ((_%try-match364793364842%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in364791364805%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e364797364827%_
                                                           (##unchecked-structure-ref
                                                            _%in364791364805%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e364798364832%_
                                                           (##unchecked-structure-ref
                                                            _%in364791364805%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e364799364837%_
                                                           (##unchecked-structure-ref
                                                            _%in364791364805%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx364830%_
                                                            _%e364797364827%_)
                                                           (_%phi364835%_
                                                            _%e364798364832%_)
                                                           (_%imports364840%_
                                                            _%e364799364837%_))
                                                       (_%K364796364824%_
                                                        _%imports364840%_
                                                        _%phi364835%_
                                                        _%ctx364830%_)))
                                                   (_%else364794364813%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in364791364805%_
                                             'gx#module-import::t)
                                            (let* ((_%e364801364852%_
                                                    (##unchecked-structure-ref
                                                     _%in364791364805%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e364802364857%_
                                                    (##unchecked-structure-ref
                                                     _%in364791364805%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e364803364862%_
                                                    (##unchecked-structure-ref
                                                     _%in364791364805%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out364855%_
                                                     _%e364801364852%_)
                                                    (_%key364860%_
                                                     _%e364802364857%_)
                                                    (_%phi364865%_
                                                     _%e364803364862%_))
                                                (_%K364800364849%_
                                                 _%phi364865%_
                                                 _%key364860%_
                                                 _%out364855%_)))
                                            (_%try-match364793364842%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src364781%_
                              _%current-phi364785%_
                              (foldl__0
                               _%fold-e364787%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx364784%_
                                '8
                                '#f
                                '#f)))
                             _%r364782%_))))
                  (_%export!364752%_
                   (lambda (_%rbody364768%_)
                     (letrec* ((_%current-ctx364770%_
                                (gx#current-expander-context))
                               (_%fold-e364771%_
                                (lambda (_%out364775%_ _%r364776%_)
                                  (if (##structure-direct-instance-of?
                                       _%out364775%_
                                       'gx#module-export::t)
                                      (cons _%out364775%_ _%r364776%_)
                                      (if (##structure-direct-instance-of?
                                           _%out364775%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r364776%_
                                           (##unchecked-structure-ref
                                            _%out364775%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r364776%_)))))
                       (let ((_%body364773%_ (reverse _%rbody364768%_)))
                         (##unchecked-structure-set!
                          _%current-ctx364770%_
                          (foldl__0
                           _%fold-e364771%_
                           (##unchecked-structure-ref
                            _%current-ctx364770%_
                            '9
                            '#f
                            '#f)
                           _%body364773%_)
                          '9
                          '#f
                          '#f)
                         _%body364773%_))))
                  (_%expanded-export?364753%_
                   (lambda (_%e364763%_)
                     (let ((_%$e364765%_
                            (##structure-direct-instance-of?
                             _%e364763%_
                             'gx#module-export::t)))
                       (if _%$e364765%_
                           _%$e364765%_
                           (##structure-direct-instance-of?
                            _%e364763%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?364747%_)
              (let ((_%rbody364759%_
                     (gx#core-expand-import/export
                      _%stx364746%_
                      _%expanded-export?364753%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1364750%_)))
                (if _%internal-expand?364747%_
                    (reverse _%rbody364759%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!364752%_ _%rbody364759%_))
                     (gx#stx-source _%stx364746%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx364746%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx364746%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx365244%_)
        (let ((_%internal-expand?365246%_ '#f))
          (gx#core-expand-export%__%
           _%stx365244%_
           _%internal-expand?365246%_))))
    (define gx#core-expand-export%
      (lambda _g368328_
        (let ((_g368329_ (##length _g368328_)))
          (cond ((##fx= _g368329_ 1)
                 (apply gx#core-expand-export%__0 _g368328_))
                ((##fx= _g368329_ 2)
                 (apply gx#core-expand-export%__% _g368328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g368328_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd364743%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd364743%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx364713%_)
        (let* ((_%e364714364721%_ _%stx364713%_)
               (_%E364716364725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e364714364721%_)))
               (_%E364715364739%_
                (lambda ()
                  (if (gx#stx-pair? _%e364714364721%_)
                      (let ((_%e364717364729%_
                             (gx#syntax-e _%e364714364721%_)))
                        (let ((_%hd364718364732%_ (##car _%e364717364729%_))
                              (_%tl364719364734%_ (##cdr _%e364717364729%_)))
                          (let ((_%body364737%_ _%tl364719364734%_))
                            (if (gx#identifier-list? _%body364737%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body364737%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body364737%_))
                                   (gx#stx-source _%stx364713%_)))
                                (_%E364716364725%_)))))
                      (_%E364716364725%_)))))
          (_%E364715364739%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id364679%_ _%private?364680%_ _%phi364681%_ _%ctx364682%_)
        (gx#core-bind-syntax!__%
         _%id364679%_
         ((if _%private?364680%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id364679%_))
         _%private?364680%_
         _%phi364681%_
         _%ctx364682%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id364687%_)
        (let* ((_%private?364689%_ '#f)
               (_%phi364691%_ (gx#current-expander-phi))
               (_%ctx364693%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id364687%_
           _%private?364689%_
           _%phi364691%_
           _%ctx364693%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id364695%_ _%private?364696%_)
        (let* ((_%phi364698%_ (gx#current-expander-phi))
               (_%ctx364700%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id364695%_
           _%private?364696%_
           _%phi364698%_
           _%ctx364700%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id364702%_ _%private?364703%_ _%phi364704%_)
        (let ((_%ctx364706%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id364702%_
           _%private?364703%_
           _%phi364704%_
           _%ctx364706%_))))
    (define gx#core-bind-feature!
      (lambda _g368330_
        (let ((_g368331_ (##length _g368330_)))
          (cond ((##fx= _g368331_ 1)
                 (apply gx#core-bind-feature!__0 _g368330_))
                ((##fx= _g368331_ 2)
                 (apply gx#core-bind-feature!__1 _g368330_))
                ((##fx= _g368331_ 3)
                 (apply gx#core-bind-feature!__2 _g368330_))
                ((##fx= _g368331_ 4)
                 (apply gx#core-bind-feature!__% _g368330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g368330_))))))))
