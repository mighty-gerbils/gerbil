(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1779289640)
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
      (lambda _%$args187232%_
        (apply make-instance gx#module-import::t _%$args187232%_)))
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
      (lambda _%$args187229%_
        (apply make-instance gx#module-export::t _%$args187229%_)))
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
      (lambda _%$args187226%_
        (apply make-instance gx#import-set::t _%$args187226%_)))
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
      (lambda _%$args187223%_
        (apply make-instance gx#export-set::t _%$args187223%_)))
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
      (lambda _%$args187220%_
        (apply make-instance gx#import-expander::t _%$args187220%_)))
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
      (lambda _%$args187217%_
        (apply make-instance gx#export-expander::t _%$args187217%_)))
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
      (lambda _%$args187214%_
        (apply make-instance gx#import-export-expander::t _%$args187214%_)))
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
      (lambda (_%path187211%_ _%fun187212%_)
        (call-with-input-file
         (cons 'path: (cons _%path187211%_ gx#source-file-settings))
         _%fun187212%_)))
    (define gx#module-context:::init!
      (lambda (_%self187194%_
               _%id187195%_
               _%super187196%_
               _%ns187197%_
               _%path187198%_)
        (let ((_%self187201%_ _%self187194%_))
          (if (##fx< '11 (##structure-length _%self187201%_))
              (begin
                (##unchecked-structure-set!
                 _%self187201%_
                 _%id187195%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187201%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187201%_
                 _%super187196%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187201%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self187201%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self187201%_
                 _%ns187197%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187201%_
                 _%path187198%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187201%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self187201%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self187201%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self187201%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187201%_
                     '11
                     (##structure-length _%self187201%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self187027%_ _%ctx187028%_ _%root187029%_)
        (let* ((_%self187032%_ _%self187027%_)
               (_%super187048%_
                (let ((_%$e187042%_ _%root187029%_))
                  (if _%$e187042%_
                      _%$e187042%_
                      (let ((_%$e187045%_ (gx#core-context-root__0)))
                        (if _%$e187045%_
                            _%$e187045%_
                            (let ((__obj187276
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor187277
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj187276
                                      ':init!)))
                                (if __constructor187277
                                    (__constructor187277 __obj187276)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj187276)))))))
          (if _%ctx187028%_
              (let ((_%id187051%_
                     (##structure-ref
                      _%ctx187028%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path187052%_
                     (##structure-ref
                      _%ctx187028%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in187053%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx187028%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e187054%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx187028%_)))))
                (if (##fx< '8 (##structure-length _%self187032%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self187032%_
                       _%id187051%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187032%_
                       (make-hash-table-eq 'size: (##length _%in187053%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187032%_
                       _%super187048%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187032%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187032%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187032%_
                       _%path187052%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187032%_
                       _%in187053%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187032%_
                       _%e187054%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self187032%_
                           '8
                           (##structure-length _%self187032%_)))
                (##for-each
                 (lambda (_%g187055187057%_)
                   (gx#core-bind-weak-import!__%
                    _%g187055187057%_
                    _%self187032%_))
                 _%in187053%_))
              (if (##fx< '8 (##structure-length _%self187032%_))
                  (begin
                    (##unchecked-structure-set! _%self187032%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self187032%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self187032%_
                     _%super187048%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self187032%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self187032%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self187032%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self187032%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self187032%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self187032%_
                         '8
                         (##structure-length _%self187032%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self187063%_ _%ctx187064%_)
        (let ((_%root187066%_ '#f))
          (gx#prelude-context:::init!__%
           _%self187063%_
           _%ctx187064%_
           _%root187066%_))))
    (define gx#prelude-context:::init!
      (lambda _g187283_
        (let ((_g187284_ (##length _g187283_)))
          (cond ((##fx= _g187284_ 2)
                 (apply gx#prelude-context:::init!__0 _g187283_))
                ((##fx= _g187284_ 3)
                 (apply gx#prelude-context:::init!__% _g187283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g187283_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self186901%_ _%e186902%_)
        (if (##fx< '3 (##structure-length _%self186901%_))
            (begin
              (##unchecked-structure-set!
               _%self186901%_
               _%e186902%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186901%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186901%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self186901%_
                   '3
                   (##structure-length _%self186901%_)))))
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
      (lambda (_%g186527186530%_ _%g186528186532%_)
        (gx#core-apply-user-expander__%
         _%g186527186530%_
         _%g186528186532%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g186398186401%_ _%g186399186403%_)
        (gx#core-apply-user-expander__%
         _%g186398186401%_
         _%g186399186403%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx186269%_)
        (let* ((_%path186271%_
                (##structure-ref _%ctx186269%_ '7 gx#module-context::t '#f))
               (_%path186273%_
                (if (pair? _%path186271%_)
                    (##last _%path186271%_)
                    _%path186271%_)))
          (if (string? _%path186273%_) _%path186273%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path186245%_ _%reload?186246%_ _%eval?186247%_)
        (let ((_%ctx186249%_
               ((gx#current-expander-module-import)
                _%path186245%_
                _%reload?186246%_)))
          (if (and _%ctx186249%_ _%eval?186247%_)
              (gx#eval-module _%ctx186249%_)
              '#!void)
          _%ctx186249%_)))
    (define gx#import-module__0
      (lambda (_%path186254%_)
        (let* ((_%reload?186256%_ '#f) (_%eval?186258%_ '#f))
          (gx#import-module__%
           _%path186254%_
           _%reload?186256%_
           _%eval?186258%_))))
    (define gx#import-module__1
      (lambda (_%path186260%_ _%reload?186261%_)
        (let ((_%eval?186263%_ '#f))
          (gx#import-module__%
           _%path186260%_
           _%reload?186261%_
           _%eval?186263%_))))
    (define gx#import-module
      (lambda _g187285_
        (let ((_g187286_ (##length _g187285_)))
          (cond ((##fx= _g187286_ 1) (apply gx#import-module__0 _g187285_))
                ((##fx= _g187286_ 2) (apply gx#import-module__1 _g187285_))
                ((##fx= _g187286_ 3) (apply gx#import-module__% _g187285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g187285_))))))
    (define gx#eval-module
      (lambda (_%mod186242%_)
        ((gx#current-expander-module-eval) _%mod186242%_)))
    (define gx#core-eval-module
      (lambda (_%obj186221%_)
        (letrec ((_%force-e186223%_
                  (lambda (_%getf186237%_ _%e186238%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf186237%_ _%e186238%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e186238%_))))
          (let _%recur186225%_ ((_%e186227%_ _%obj186221%_))
            (if (##structure-instance-of? _%e186227%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e186230%_
                         (gx#core-context-prelude__% _%e186227%_)))
                    (if _%$e186230%_ (_%recur186225%_ _%$e186230%_) '#!void))
                  (_%force-e186223%_ gx#module-context-e _%e186227%_))
                (if (##structure-instance-of?
                     _%e186227%_
                     'gx#prelude-context::t)
                    (_%force-e186223%_ gx#prelude-context-e _%e186227%_)
                    (if (gx#stx-string? _%e186227%_)
                        (_%recur186225%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e186227%_)))
                        (if (gx#core-library-module-path? _%e186227%_)
                            (_%recur186225%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e186227%_)))
                            (error '"cannot eval module" _%obj186221%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx186201%_)
        (let _%lp186203%_ ((_%e186205%_ _%ctx186201%_))
          (if (or (##structure-instance-of? _%e186205%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e186205%_ 'gx#local-context::t))
              (_%lp186203%_ (##unchecked-structure-ref _%e186205%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e186205%_ 'gx#prelude-context::t)
                  _%e186205%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx186217%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx186217%_))))
    (define gx#core-context-prelude
      (lambda _g187287_
        (let ((_g187288_ (##length _g187287_)))
          (cond ((##fx= _g187288_ 0)
                 (apply gx#core-context-prelude__0 _g187287_))
                ((##fx= _g187288_ 1)
                 (apply gx#core-context-prelude__% _g187287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g187287_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx186192%_)
        (let ((_%$e186194%_ (__hash-get gx#__module-registry _%ctx186192%_)))
          (if _%$e186194%_
              _%$e186194%_
              (let ((_%pre186198%_
                     (let ((__obj187278
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
                        __obj187278
                        _%ctx186192%_)
                       __obj187278)))
                (__hash-put! gx#__module-registry _%ctx186192%_ _%pre186198%_)
                _%pre186198%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath186060%_ _%reload?186061%_)
        (letrec ((_%import-source186063%_
                  (lambda (_%path186151%_)
                    (if (member _%path186151%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path186151%_)
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
                                      (let ((_g187289_
                                             (gx#core-read-module
                                              _%path186151%_)))
                                        (begin
                                          (let ((_g187290_
                                                 (if (##values? _g187289_)
                                                     (##values-length
                                                      _g187289_)
                                                     1)))
                                            (if (not (##fx= _g187290_ 4))
                                                (error "Context expects 4 values"
                                                       _g187290_)))
                                          (let ((_%pre186159%_
                                                 (##values-ref _g187289_ 0))
                                                (_%id186160%_
                                                 (##values-ref _g187289_ 1))
                                                (_%ns186161%_
                                                 (##values-ref _g187289_ 2))
                                                (_%body186162%_
                                                 (##values-ref _g187289_ 3)))
                                            (let* ((_%prelude186172%_
                                                    (if (##structure-instance-of?
                                                         _%pre186159%_
                                                         'gx#prelude-context::t)
                                                        _%pre186159%_
                                                        (if (##structure-instance-of?
                                                             _%pre186159%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre186159%_)
                                                            (if (string? _%pre186159%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre186159%_))
                        (if (not _%pre186159%_)
                            (let ((_%$e186168%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e186168%_
                                  _%$e186168%_
                                  (let ((__obj187279
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
                                     __obj187279
                                     '#f)
                                    __obj187279)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath186060%_
                                   _%pre186159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx186174%_
                                                    (let ((__obj187280
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
                                                       __obj187280
                                                       _%id186160%_
                                                       _%prelude186172%_
                                                       _%ns186161%_
                                                       _%path186151%_)
                                                      __obj187280))
                                                   (_%body186176%_
                                                    (gx#core-expand-module-begin
                                                     _%body186162%_
                                                     _%ctx186174%_))
                                                   (_%body186178%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body186176%_)
                                                     _%path186151%_
                                                     _%ctx186174%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx186174%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body186178%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx186174%_
                                               _%body186178%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path186151%_
                                               _%ctx186174%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id186160%_
                                               _%ctx186174%_)
                                              _%ctx186174%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path186151%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule186064%_
                  (lambda (_%rpath186080%_)
                    (let* ((_%rpath186081186088%_ _%rpath186080%_)
                           (_%E186083186091%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath186081186088%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K186084186139%_
                            (lambda (_%refs186094%_ _%origin186095%_)
                              (let ((_%ctx186097%_
                                     (if _%origin186095%_
                                         (gx#core-import-module__%
                                          _%origin186095%_
                                          _%reload?186061%_)
                                         (gx#current-expander-context))))
                                (let _%lp186099%_ ((_%rest186101%_
                                                    _%refs186094%_)
                                                   (_%ctx186102%_
                                                    _%ctx186097%_))
                                  (let* ((_%rest186103186111%_ _%rest186101%_)
                                         (_%else186105186119%_
                                          (lambda () _%ctx186102%_))
                                         (_%K186107186127%_
                                          (lambda (_%rest186122%_ _%id186123%_)
                                            (let ((_%bind186125%_
                                                   (gx#resolve-identifier__%
                                                    _%id186123%_
                                                    '0
                                                    _%ctx186102%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind186125%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind186125%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp186099%_
                                                   _%rest186122%_
                                                   (##unchecked-structure-ref
                                                    _%bind186125%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath186080%_
                                                         _%id186123%_
                                                         _%bind186125%_))))))
                                    (if (pair? _%rest186103186111%_)
                                        (let ((_%hd186108186130%_
                                               (##car _%rest186103186111%_))
                                              (_%tl186109186132%_
                                               (##cdr _%rest186103186111%_)))
                                          (let* ((_%id186135%_
                                                  _%hd186108186130%_)
                                                 (_%rest186137%_
                                                  _%tl186109186132%_))
                                            (_%K186107186127%_
                                             _%rest186137%_
                                             _%id186135%_)))
                                        (_%else186105186119%_))))))))
                      (if (pair? _%rpath186081186088%_)
                          (let ((_%hd186085186142%_
                                 (##car _%rpath186081186088%_))
                                (_%tl186086186144%_
                                 (##cdr _%rpath186081186088%_)))
                            (let* ((_%origin186147%_ _%hd186085186142%_)
                                   (_%refs186149%_ _%tl186086186144%_))
                              (_%K186084186139%_
                               _%refs186149%_
                               _%origin186147%_)))
                          (_%E186083186091%_))))))
          (let ((_%$e186066%_
                 (if (not _%reload?186061%_)
                     (__hash-get gx#__module-registry _%rpath186060%_)
                     '#f)))
            (if _%$e186066%_
                _%$e186066%_
                (if (list? _%rpath186060%_)
                    (_%import-submodule186064%_ _%rpath186060%_)
                    (if (gx#core-library-module-path? _%rpath186060%_)
                        (let ((_%ctx186071%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath186060%_)
                                _%reload?186061%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath186060%_
                           _%ctx186071%_)
                          _%ctx186071%_)
                        (let* ((_%npath186074%_
                                (path-normalize _%rpath186060%_))
                               (_%$e186076%_
                                (if (not _%reload?186061%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath186074%_)
                                    '#f)))
                          (if _%$e186076%_
                              _%$e186076%_
                              (_%import-source186063%_
                               _%npath186074%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath186185%_)
        (let ((_%reload?186187%_ '#f))
          (gx#core-import-module__% _%rpath186185%_ _%reload?186187%_))))
    (define gx#core-import-module
      (lambda _g187291_
        (let ((_g187292_ (##length _g187291_)))
          (cond ((##fx= _g187292_ 1)
                 (apply gx#core-import-module__0 _g187291_))
                ((##fx= _g187292_ 2)
                 (apply gx#core-import-module__% _g187291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g187291_))))))
    (define gx#core-read-module
      (lambda (_%path186042%_)
        (__with-catch
         (lambda (_%exn186044%_)
           (if (datum-parsing-exception? _%exn186044%_)
               (let ((_%pos186046%_
                      (datum-parsing-exception-filepos _%exn186044%_)))
                 (if (= _%pos186046%_ '0)
                     (gx#core-read-module/lang _%path186042%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path186042%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g186048186050%_)
                            (display-exception__%
                             _%exn186044%_
                             _%g186048186050%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos186046%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos186046%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path186042%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g186053186055%_)
                      (display-exception__% _%exn186044%_ _%g186053186055%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path186042%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path185894%_)
        (let _%lp185896%_ ((_%body185898%_
                            (read-syntax-from-file _%path185894%_))
                           (_%pre185899%_ '#f)
                           (_%ns185900%_ '#f)
                           (_%pkg185901%_ '#f))
          (let* ((_%e185902185926%_ _%body185898%_)
                 (_%E185918185952%_
                  (lambda ()
                    (let ((_g187293_
                           (if _%pkg185901%_
                               (values _%pre185899%_
                                       _%ns185900%_
                                       _%pkg185901%_)
                               (gx#core-read-module-package
                                _%path185894%_
                                _%pre185899%_
                                _%ns185900%_))))
                      (begin
                        (let ((_g187294_
                               (if (##values? _g187293_)
                                   (##values-length _g187293_)
                                   1)))
                          (if (not (##fx= _g187294_ 3))
                              (error "Context expects 3 values" _g187294_)))
                        (let ((_%pre185930%_ (##values-ref _g187293_ 0))
                              (_%ns185931%_ (##values-ref _g187293_ 1))
                              (_%pkg185932%_ (##values-ref _g187293_ 2)))
                          (let* ((_%prelude185938%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre185930%_)
                                      (gx#syntax-local-e__0 _%pre185930%_)
                                      (if (gx#core-library-module-path?
                                           _%pre185930%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre185930%_)
                                          (if (gx#stx-string? _%pre185930%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre185930%_
                                               _%path185894%_)
                                              (gx#stx-e _%pre185930%_)))))
                                 (_%path-id185940%_
                                  (gx#core-module-path->namespace
                                   _%path185894%_))
                                 (_%pkg-id185942%_
                                  (if _%pkg185932%_
                                      (##string-append
                                       _%pkg185932%_
                                       '"/"
                                       _%path-id185940%_)
                                      _%path-id185940%_))
                                 (_%module-id185944%_
                                  (##string->symbol _%pkg-id185942%_))
                                 (_%module-ns185949%_
                                  (if (eq? _%ns185931%_ '#!void)
                                      '#f
                                      (let ((_%$e185946%_ _%ns185931%_))
                                        (if _%$e185946%_
                                            _%$e185946%_
                                            _%pkg-id185942%_)))))
                            (values _%prelude185938%_
                                    _%module-id185944%_
                                    _%module-ns185949%_
                                    _%body185898%_)))))))
                 (_%E185911185984%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185902185926%_)
                        (let ((_%e185919185956%_
                               (gx#syntax-e _%e185902185926%_)))
                          (let ((_%hd185920185959%_ (##car _%e185919185956%_))
                                (_%tl185921185961%_ (##cdr _%e185919185956%_)))
                            (if (eq? (gx#stx-e _%hd185920185959%_) 'package:)
                                (if (gx#stx-pair? _%tl185921185961%_)
                                    (let ((_%e185922185964%_
                                           (gx#syntax-e _%tl185921185961%_)))
                                      (let ((_%hd185923185967%_
                                             (##car _%e185922185964%_))
                                            (_%tl185924185969%_
                                             (##cdr _%e185922185964%_)))
                                        (let* ((_%pkg185972%_
                                                _%hd185923185967%_)
                                               (_%rest185974%_
                                                _%tl185924185969%_)
                                               (_%pkg185982%_
                                                (if (gx#identifier?
                                                     _%pkg185972%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg185972%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg185972%_)
                                                            (gx#stx-false?
                                                             _%pkg185972%_))
                                                        (gx#stx-e
                                                         _%pkg185972%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg185972%_)))))
                                          (_%lp185896%_
                                           _%rest185974%_
                                           _%pre185899%_
                                           _%ns185900%_
                                           _%pkg185982%_))))
                                    (_%E185918185952%_))
                                (_%E185918185952%_))))
                        (_%E185918185952%_))))
                 (_%E185904186014%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185902185926%_)
                        (let ((_%e185912185988%_
                               (gx#syntax-e _%e185902185926%_)))
                          (let ((_%hd185913185991%_ (##car _%e185912185988%_))
                                (_%tl185914185993%_ (##cdr _%e185912185988%_)))
                            (if (eq? (gx#stx-e _%hd185913185991%_) 'namespace:)
                                (if (gx#stx-pair? _%tl185914185993%_)
                                    (let ((_%e185915185996%_
                                           (gx#syntax-e _%tl185914185993%_)))
                                      (let ((_%hd185916185999%_
                                             (##car _%e185915185996%_))
                                            (_%tl185917186001%_
                                             (##cdr _%e185915185996%_)))
                                        (let* ((_%ns186004%_
                                                _%hd185916185999%_)
                                               (_%rest186006%_
                                                _%tl185917186001%_)
                                               (_%ns186012%_
                                                (if (gx#identifier?
                                                     _%ns186004%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns186004%_))
                                                    (if (gx#stx-string?
                                                         _%ns186004%_)
                                                        (gx#stx-e _%ns186004%_)
                                                        (if (gx#stx-false?
                                                             _%ns186004%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns186004%_))))))
                                          (_%lp185896%_
                                           _%rest186006%_
                                           _%pre185899%_
                                           _%ns186012%_
                                           _%pkg185901%_))))
                                    (_%E185911185984%_))
                                (_%E185911185984%_))))
                        (_%E185911185984%_))))
                 (_%E185903186038%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185902185926%_)
                        (let ((_%e185905186018%_
                               (gx#syntax-e _%e185902185926%_)))
                          (let ((_%hd185906186021%_ (##car _%e185905186018%_))
                                (_%tl185907186023%_ (##cdr _%e185905186018%_)))
                            (if (eq? (gx#stx-e _%hd185906186021%_) 'prelude:)
                                (if (gx#stx-pair? _%tl185907186023%_)
                                    (let ((_%e185908186026%_
                                           (gx#syntax-e _%tl185907186023%_)))
                                      (let ((_%hd185909186029%_
                                             (##car _%e185908186026%_))
                                            (_%tl185910186031%_
                                             (##cdr _%e185908186026%_)))
                                        (let* ((_%prelude186034%_
                                                _%hd185909186029%_)
                                               (_%rest186036%_
                                                _%tl185910186031%_))
                                          (_%lp185896%_
                                           _%rest186036%_
                                           _%prelude186034%_
                                           _%ns185900%_
                                           _%pkg185901%_))))
                                    (_%E185904186014%_))
                                (_%E185904186014%_))))
                        (_%E185904186014%_)))))
            (_%E185903186038%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path185715%_)
        (letrec ((_%default-read-module-body185717%_
                  (lambda (_%inp185886%_)
                    (let _%lp185888%_ ((_%body185890%_ '()))
                      (let ((_%next185892%_ (read-syntax__% _%inp185886%_)))
                        (if (eof-object? _%next185892%_)
                            (reverse _%body185890%_)
                            (_%lp185888%_
                             (cons _%next185892%_ _%body185890%_)))))))
                 (_%read-body185718%_
                  (lambda (_%inp185803%_
                           _%pre185804%_
                           _%ns185805%_
                           _%pkg185806%_
                           _%args185807%_)
                    (let ((_g187295_
                           (if _%pkg185806%_
                               (values _%pre185804%_
                                       _%ns185805%_
                                       _%pkg185806%_)
                               (gx#core-read-module-package
                                _%path185715%_
                                _%pre185804%_
                                _%ns185805%_))))
                      (begin
                        (let ((_g187296_
                               (if (##values? _g187295_)
                                   (##values-length _g187295_)
                                   1)))
                          (if (not (##fx= _g187296_ 3))
                              (error "Context expects 3 values" _g187296_)))
                        (let ((_%pre185809%_ (##values-ref _g187295_ 0))
                              (_%ns185810%_ (##values-ref _g187295_ 1))
                              (_%pkg185811%_ (##values-ref _g187295_ 2)))
                          (let* ((_%prelude185813%_
                                  (gx#import-module__0 _%pre185809%_))
                                 (_%read-module-body185868%_
                                  (let ((_%$e185859%_
                                         (__find (lambda (_%e185814185816%_)
                                                   (let* ((_%e185814185818185828%_
                                                           _%e185814185816%_)
                                                          (_%else185820185836%_
                                                           (lambda () '#f))
                                                          (_%K185822185840%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e185814185818185828%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e185823185843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e185814185818185828%_
                          '1
                          '#f
                          '#f))
                        (_%e185824185846%_
                         (##unchecked-structure-ref
                          _%e185814185818185828%_
                          '2
                          '#f
                          '#f))
                        (_%e185825185849%_
                         (##unchecked-structure-ref
                          _%e185814185818185828%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e185825185849%_ '1)
                       (let ((_%e185826185852%_
                              (##unchecked-structure-ref
                               _%e185814185818185828%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%e185826185852%_ 'read-module-body)
                             (_%K185822185840%_)
                             (_%else185820185836%_)))
                       (_%else185820185836%_)))
                 (_%else185820185836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude185813%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e185859%_
                                        (let ((_%proc185865%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e185859%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc185865%_)
                                              _%proc185865%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path185715%_
                                               _%pre185809%_
                                               _%proc185865%_)))
                                        _%default-read-module-body185717%_)))
                                 (_%path-id185870%_
                                  (gx#core-module-path->namespace
                                   _%path185715%_))
                                 (_%pkg-id185872%_
                                  (if _%pkg185811%_
                                      (##string-append
                                       _%pkg185811%_
                                       '"/"
                                       _%path-id185870%_)
                                      _%path-id185870%_))
                                 (_%module-id185874%_
                                  (##string->symbol _%pkg-id185872%_))
                                 (_%module-ns185879%_
                                  (let ((_%$e185876%_ _%ns185810%_))
                                    (if _%$e185876%_
                                        _%$e185876%_
                                        _%pkg-id185872%_)))
                                 (_%body185883%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body185868%_
                                         _%inp185803%_))
                                      gx#current-module-reader-args
                                      _%args185807%_))
                                   gx#current-module-reader-path
                                   _%path185715%_)))
                            (values _%prelude185813%_
                                    _%module-id185874%_
                                    _%module-ns185879%_
                                    _%body185883%_)))))))
                 (_%string-e185719%_
                  (lambda (_%obj185797%_ _%what185798%_)
                    (if (string? _%obj185797%_)
                        _%obj185797%_
                        (if (symbol? _%obj185797%_)
                            (##symbol->string _%obj185797%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what185798%_)
                             _%path185715%_
                             _%obj185797%_)))))
                 (_%read-lang-args185720%_
                  (lambda (_%inp185752%_ _%args185753%_)
                    (let* ((_%args185754185762%_ _%args185753%_)
                           (_%else185756185770%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path185715%_)))
                           (_%K185758185785%_
                            (lambda (_%args185773%_ _%prelude185774%_)
                              (let* ((_%pkg185776%_
                                      (pgetq__0 'package: _%args185773%_))
                                     (_%pkg185778%_
                                      (if _%pkg185776%_
                                          (_%string-e185719%_
                                           _%pkg185776%_
                                           '"package")
                                          '#f))
                                     (_%ns185780%_
                                      (pgetq__0 'namespace: _%args185773%_))
                                     (_%ns185782%_
                                      (if _%ns185780%_
                                          (_%string-e185719%_
                                           _%ns185780%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body185718%_
                                 _%inp185752%_
                                 _%prelude185774%_
                                 _%ns185782%_
                                 _%pkg185778%_
                                 _%args185773%_)))))
                      (if (pair? _%args185754185762%_)
                          (let ((_%hd185759185788%_
                                 (##car _%args185754185762%_))
                                (_%tl185760185790%_
                                 (##cdr _%args185754185762%_)))
                            (let* ((_%prelude185793%_ _%hd185759185788%_)
                                   (_%args185795%_ _%tl185760185790%_))
                              (_%K185758185785%_
                               _%args185795%_
                               _%prelude185793%_)))
                          (_%else185756185770%_)))))
                 (_%read-lang185721%_
                  (lambda (_%inp185726%_)
                    (let* ((_%head185728%_ (read-line _%inp185726%_))
                           (_%$e185730%_
                            (string-index__0 _%head185728%_ '#\space)))
                      (if _%$e185730%_
                          (let ((_%lang185735%_
                                 (substring _%head185728%_ '0 _%$e185730%_)))
                            (if (equal? _%lang185735%_ '"#lang")
                                (let* ((_%rest185737%_
                                        (substring
                                         _%head185728%_
                                         (##fx+ _%$e185730%_ '1)
                                         (string-length _%head185728%_)))
                                       (_%args185748%_
                                        (__with-catch
                                         (lambda (_%g185738185740%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path185715%_
                                            _%g185738185740%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest185737%_
                                            (lambda (_%g185743185745%_)
                                              (read-all
                                               _%g185743185745%_
                                               read)))))))
                                  (_%read-lang-args185720%_
                                   _%inp185726%_
                                   _%args185748%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path185715%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path185715%_)))))
                 (_%read-e185722%_
                  (lambda (_%inp185724%_)
                    (if (eq? (peek-char _%inp185724%_) '#\#)
                        (_%read-lang185721%_ _%inp185724%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path185715%_)))))
          (gx#call-with-input-source-file _%path185715%_ _%read-e185722%_))))
    (define gx#core-read-module-package
      (lambda (_%path185663%_ _%pre185664%_ _%ns185665%_)
        (letrec ((_%string-e185667%_
                  (lambda (_%e185710%_)
                    (if (symbol? _%e185710%_)
                        (##symbol->string _%e185710%_)
                        (if (string? _%e185710%_)
                            _%e185710%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e185710%_))))))
          (let _%lp185669%_ ((_%dir185671%_ (path-directory _%path185663%_))
                             (_%pkg-path185672%_ '()))
            (let ((_%gerbil.pkg185674%_
                   (path-expand '"gerbil.pkg" _%dir185671%_)))
              (if (##file-exists? _%gerbil.pkg185674%_)
                  (let ((_%plist185676%_
                         (gx#core-library-package-plist__% _%dir185671%_ '#t)))
                    (if (null? _%plist185676%_)
                        (let ((_%pkg185679%_
                               (if (null? _%pkg-path185672%_)
                                   '#f
                                   (string-join _%pkg-path185672%_ '"/"))))
                          (values _%pre185664%_ _%ns185665%_ _%pkg185679%_))
                        (if (list? _%plist185676%_)
                            (let* ((_%root185682%_
                                    (pgetq__0 'package: _%plist185676%_))
                                   (_%pkg185686%_
                                    (let ((_%pkg-path185684%_
                                           (if _%root185682%_
                                               (cons (_%string-e185667%_
                                                      _%root185682%_)
                                                     _%pkg-path185672%_)
                                               _%pkg-path185672%_)))
                                      (if (null? _%pkg-path185684%_)
                                          '#f
                                          (string-join
                                           _%pkg-path185684%_
                                           '"/"))))
                                   (_%ns185693%_
                                    (let ((_%ns185691%_
                                           (let ((_%$e185688%_ _%ns185665%_))
                                             (if _%$e185688%_
                                                 _%$e185688%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist185676%_)))))
                                      (if _%ns185691%_
                                          (_%string-e185667%_ _%ns185691%_)
                                          '#f)))
                                   (_%pre185698%_
                                    (let ((_%$e185695%_ _%pre185664%_))
                                      (if _%$e185695%_
                                          _%$e185695%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist185676%_)))))
                              (values _%pre185698%_
                                      _%ns185693%_
                                      _%pkg185686%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist185676%_))))
                  (let ((_%dir*185702%_
                         (path-strip-trailing-directory-separator
                          _%dir185671%_)))
                    (if (or (__string-empty? _%dir*185702%_)
                            (equal? _%dir185671%_ _%dir*185702%_))
                        (values _%pre185664%_ _%ns185665%_ '#f)
                        (let ((_%xpath185707%_
                               (path-strip-directory _%dir*185702%_))
                              (_%xdir185708%_ (path-directory _%dir*185702%_)))
                          (_%lp185669%_
                           _%xdir185708%_
                           (cons _%xpath185707%_ _%pkg-path185672%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path185661%_)
        (path-strip-extension (path-strip-directory _%path185661%_))))
    (define gx#core-module-path->id
      (lambda (_%path185659%_)
        (##string->symbol (gx#core-module-path->namespace _%path185659%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path185638%_ _%rel185639%_)
        (let* ((_%path185641%_ (gx#stx-e _%stx-path185638%_))
               (_%path185643%_
                (if (__string-empty? (path-extension _%path185641%_))
                    (##string-append _%path185641%_ '".ss")
                    _%path185641%_)))
          (gx#core-resolve-path__%
           _%path185643%_
           (let ((_%$e185646%_ (gx#stx-source _%stx-path185638%_)))
             (if _%$e185646%_ _%$e185646%_ _%rel185639%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path185652%_)
        (let ((_%rel185654%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path185652%_ _%rel185654%_))))
    (define gx#core-resolve-module-path
      (lambda _g187297_
        (let ((_g187298_ (##length _g187297_)))
          (cond ((##fx= _g187298_ 1)
                 (apply gx#core-resolve-module-path__0 _g187297_))
                ((##fx= _g187298_ 2)
                 (apply gx#core-resolve-module-path__% _g187297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g187297_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath185523%_)
        (let* ((_%spath185525%_ (symbol->string (gx#stx-e _%libpath185523%_)))
               (_%spath185527%_
                (substring
                 _%spath185525%_
                 '1
                 (##string-length _%spath185525%_)))
               (_%ext185529%_ (path-extension _%spath185527%_))
               (_%ssi185531%_
                (if (__string-empty? _%ext185529%_)
                    (##string-append _%spath185527%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath185527%_)
                     '".ssi")))
               (_%srcs185535%_
                (if (__string-empty? _%ext185529%_)
                    (##map (lambda (_%ext185533%_)
                             (string-append _%spath185527%_ _%ext185533%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath185527%_ '()))))
          (let _%lp185538%_ ((_%rest185540%_ (load-path)))
            (let* ((_%rest185541185550%_ _%rest185540%_)
                   (_%E185544185554%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest185541185550%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K185546185625%_
                     (lambda (_%rest185565%_ _%dir185566%_)
                       (letrec ((_%resolve185568%_
                                 (lambda (_%ssi185581%_ _%srcs185582%_)
                                   (let ((_%compiled-path185584%_
                                          (path-expand
                                           _%ssi185581%_
                                           _%dir185566%_)))
                                     (if (##file-exists?
                                          _%compiled-path185584%_)
                                         (path-normalize
                                          _%compiled-path185584%_)
                                         (let _%lpr185586%_ ((_%rest-src185588%_
                                                              _%srcs185582%_))
                                           (let* ((_%rest-src185589185597%_
                                                   _%rest-src185588%_)
                                                  (_%else185591185605%_
                                                   (lambda ()
                                                     (_%lp185538%_
                                                      _%rest185565%_)))
                                                  (_%K185593185613%_
                                                   (lambda (_%rest-src185608%_
                                                            _%src185609%_)
                                                     (let ((_%src-path185611%_
                                                            (path-expand
                                                             _%src185609%_
                                                             _%dir185566%_)))
                                                       (if (##file-exists?
                                                            _%src-path185611%_)
                                                           (path-normalize
                                                            _%src-path185611%_)
                                                           (_%lpr185586%_
                                                            _%rest-src185608%_))))))
                                             (if (pair? _%rest-src185589185597%_)
                                                 (let ((_%hd185594185616%_
                                                        (##car _%rest-src185589185597%_))
                                                       (_%tl185595185618%_
                                                        (##cdr _%rest-src185589185597%_)))
                                                   (let* ((_%src185621%_
                                                           _%hd185594185616%_)
                                                          (_%rest-src185623%_
                                                           _%tl185595185618%_))
                                                     (_%K185593185613%_
                                                      _%rest-src185623%_
                                                      _%src185621%_)))
                                                 (_%else185591185605%_)))))))))
                         (let ((_%$e185570%_
                                (gx#core-library-package-path-prefix
                                 _%dir185566%_)))
                           (if _%$e185570%_
                               (if (string-prefix?
                                    _%$e185570%_
                                    _%spath185527%_)
                                   (let ((_%ssi185577%_
                                          (substring
                                           _%ssi185531%_
                                           (string-length _%$e185570%_)
                                           (##string-length _%ssi185531%_)))
                                         (_%srcs185578%_
                                          (##map (lambda (_%src185575%_)
                                                   (substring
                                                    _%src185575%_
                                                    (string-length
                                                     _%$e185570%_)
                                                    (string-length
                                                     _%src185575%_)))
                                                 _%srcs185535%_)))
                                     (_%resolve185568%_
                                      _%ssi185577%_
                                      _%srcs185578%_))
                                   (_%lp185538%_ _%rest185565%_))
                               (_%resolve185568%_
                                _%ssi185531%_
                                _%srcs185535%_))))))
                    (_%K185545185559%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath185523%_))))
                (let ((_%try-match185543185562%_
                       (lambda ()
                         (if (null? _%rest185541185550%_)
                             (_%K185545185559%_)
                             (_%E185544185554%_)))))
                  (if (pair? _%rest185541185550%_)
                      (let ((_%tl185548185630%_ (##cdr _%rest185541185550%_))
                            (_%hd185547185628%_ (##car _%rest185541185550%_)))
                        (let ((_%dir185633%_ _%hd185547185628%_)
                              (_%rest185635%_ _%tl185548185630%_))
                          (_%K185546185625%_ _%rest185635%_ _%dir185633%_)))
                      (_%try-match185543185562%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath185491%_)
        (letrec ((_%resolve185493%_
                  (lambda (_%path185514%_ _%base185515%_)
                    (let ((_%$e185517%_
                           (string-rindex__0 _%base185515%_ '#\/)))
                      (if _%$e185517%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base185515%_ '0 _%$e185517%_)
                             '"/"
                             _%path185514%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path185514%_))))))))
          (let ((_%spath185495%_ (symbol->string (gx#stx-e _%modpath185491%_)))
                (_%mod185496%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod185496%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath185491%_))
            (let ((_%mpath185498%_
                   (symbol->string
                    (##structure-ref
                     _%mod185496%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp185500%_ ((_%spath185502%_ _%spath185495%_)
                                 (_%mpath185503%_ _%mpath185498%_))
                (if (string-prefix? '"../" _%spath185502%_)
                    (let ((_%$e185506%_
                           (string-rindex__0 _%mpath185503%_ '#\/)))
                      (if _%$e185506%_
                          (_%lp185500%_
                           (substring
                            _%spath185502%_
                            '3
                            (string-length _%spath185502%_))
                           (substring _%mpath185503%_ '0 _%$e185506%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath185491%_)))
                    (if (string-prefix? '"./" _%spath185502%_)
                        (_%lp185500%_
                         (substring
                          _%spath185502%_
                          '2
                          (string-length _%spath185502%_))
                         _%mpath185503%_)
                        (_%resolve185493%_
                         _%spath185502%_
                         _%mpath185503%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir185483%_)
        (let ((_%$e185485%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir185483%_))))
          (if _%$e185485%_
              (##string-append (symbol->string _%$e185485%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir185453%_ _%exists?185454%_)
        (let ((_%$e185456%_ (__hash-get gx#__module-pkg-cache _%dir185453%_)))
          (if _%$e185456%_
              _%$e185456%_
              (let* ((_%gerbil.pkg185460%_
                      (path-expand '"gerbil.pkg" _%dir185453%_))
                     (_%plist185470%_
                      (if (or _%exists?185454%_
                              (##file-exists? _%gerbil.pkg185460%_))
                          (let ((_%e185465%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg185460%_
                                  read)))
                            (if (eof-object? _%e185465%_)
                                '()
                                (if (list? _%e185465%_)
                                    _%e185465%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg185460%_
                                     _%e185465%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir185453%_
                 _%plist185470%_)
                _%plist185470%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir185476%_)
        (let ((_%exists?185478%_ '#f))
          (gx#core-library-package-plist__% _%dir185476%_ _%exists?185478%_))))
    (define gx#core-library-package-plist
      (lambda _g187299_
        (let ((_g187300_ (##length _g187299_)))
          (cond ((##fx= _g187300_ 1)
                 (apply gx#core-library-package-plist__0 _g187299_))
                ((##fx= _g187300_ 2)
                 (apply gx#core-library-package-plist__% _g187299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g187299_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx185450%_)
        (gx#core-special-module-path? _%stx185450%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx185448%_)
        (gx#core-special-module-path? _%stx185448%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx185443%_ _%char185444%_)
        (if (gx#identifier? _%stx185443%_)
            (if (interned-symbol? (gx#stx-e _%stx185443%_))
                (let ((_%str185446%_
                       (symbol->string (gx#stx-e _%stx185443%_))))
                  (if (##fx> (##string-length _%str185446%_) '1)
                      (eq? (string-ref _%str185446%_ '0) _%char185444%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx185437%_)
        (gx#core-bound-identifier?__%
         _%stx185437%_
         (lambda (_%g185438185440%_)
           (gx#expander-binding?__% _%g185438185440%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx185431%_)
        (gx#core-bound-identifier?__%
         _%stx185431%_
         (lambda (_%g185432185434%_)
           (gx#expander-binding?__% _%g185432185434%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx185418%_)
        (letrec ((_%module-prelude?185420%_
                  (lambda (_%e185426%_)
                    (let ((_%$e185428%_
                           (##structure-instance-of?
                            _%e185426%_
                            'gx#module-context::t)))
                      (if _%$e185428%_
                          _%$e185428%_
                          (##structure-instance-of?
                           _%e185426%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx185418%_
           (lambda (_%g185421185423%_)
             (gx#expander-binding?__%
              _%g185421185423%_
              _%module-prelude?185420%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in185349%_ _%ctx185350%_ _%force-weak?185351%_)
        (let* ((_%in185352185361%_ _%in185349%_)
               (_%E185354185364%_
                (lambda ()
                  (error '"No clause matching"
                         _%in185352185361%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K185355185377%_
                (lambda (_%weak?185367%_
                         _%phi185368%_
                         _%key185369%_
                         _%source185370%_)
                  (gx#core-bind!__%
                   _%key185369%_
                   (let* ((_%e185372%_
                           (gx#core-resolve-module-export _%source185370%_))
                          (__obj187281
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
                      __obj187281
                      (##unchecked-structure-ref _%e185372%_ '1 '#f '#f)
                      _%key185369%_
                      _%phi185368%_
                      _%e185372%_
                      (##unchecked-structure-ref _%source185370%_ '1 '#f '#f)
                      (let ((_%$e185374%_ _%force-weak?185351%_))
                        (if _%$e185374%_ _%$e185374%_ _%weak?185367%_)))
                     __obj187281)
                   gx#core-context-rebind?
                   _%phi185368%_
                   _%ctx185350%_))))
          (if (##structure-direct-instance-of?
               _%in185352185361%_
               'gx#module-import::t)
              (let* ((_%e185356185380%_
                      (##unchecked-structure-ref
                       _%in185352185361%_
                       '1
                       '#f
                       '#f))
                     (_%source185383%_ _%e185356185380%_)
                     (_%e185357185385%_
                      (##unchecked-structure-ref
                       _%in185352185361%_
                       '2
                       '#f
                       '#f))
                     (_%key185388%_ _%e185357185385%_)
                     (_%e185358185390%_
                      (##unchecked-structure-ref
                       _%in185352185361%_
                       '3
                       '#f
                       '#f))
                     (_%phi185393%_ _%e185358185390%_)
                     (_%e185359185395%_
                      (##unchecked-structure-ref
                       _%in185352185361%_
                       '4
                       '#f
                       '#f))
                     (_%weak?185398%_ _%e185359185395%_))
                (_%K185355185377%_
                 _%weak?185398%_
                 _%phi185393%_
                 _%key185388%_
                 _%source185383%_))
              (_%E185354185364%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in185403%_)
        (let* ((_%ctx185405%_ (gx#current-expander-context))
               (_%force-weak?185407%_ '#f))
          (gx#core-bind-import!__%
           _%in185403%_
           _%ctx185405%_
           _%force-weak?185407%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in185409%_ _%ctx185410%_)
        (let ((_%force-weak?185412%_ '#f))
          (gx#core-bind-import!__%
           _%in185409%_
           _%ctx185410%_
           _%force-weak?185412%_))))
    (define gx#core-bind-import!
      (lambda _g187301_
        (let ((_g187302_ (##length _g187301_)))
          (cond ((##fx= _g187302_ 1) (apply gx#core-bind-import!__0 _g187301_))
                ((##fx= _g187302_ 2) (apply gx#core-bind-import!__1 _g187301_))
                ((##fx= _g187302_ 3) (apply gx#core-bind-import!__% _g187301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g187301_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in185335%_ _%ctx185336%_)
        (gx#core-bind-import!__% _%in185335%_ _%ctx185336%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in185341%_)
        (let ((_%ctx185343%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in185341%_ _%ctx185343%_))))
    (define gx#core-bind-weak-import!
      (lambda _g187303_
        (let ((_g187304_ (##length _g187303_)))
          (cond ((##fx= _g187304_ 1)
                 (apply gx#core-bind-weak-import!__0 _g187303_))
                ((##fx= _g187304_ 2)
                 (apply gx#core-bind-weak-import!__% _g187303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g187303_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out185228%_)
        (letrec ((_%subst185230%_
                  (lambda (_%key185275%_)
                    (let* ((_%key185276185284%_ _%key185275%_)
                           (_%else185278185292%_ (lambda () _%key185275%_))
                           (_%K185280185322%_
                            (lambda (_%mark185295%_ _%id185296%_)
                              (let* ((_%mark185297185303%_ _%mark185295%_)
                                     (_%E185299185306%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark185297185303%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K185300185314%_
                                      (lambda (_%subst185309%_)
                                        (let ((_%$e185311%_
                                               (if _%subst185309%_
                                                   (hash-get
                                                    _%subst185309%_
                                                    _%id185296%_)
                                                   '#f)))
                                          (if _%$e185311%_
                                              _%$e185311%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key185275%_))))))
                                (if (##structure-instance-of?
                                     _%mark185297185303%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e185301185317%_
                                            (##unchecked-structure-ref
                                             _%mark185297185303%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst185320%_ _%e185301185317%_))
                                      (_%K185300185314%_ _%subst185320%_))
                                    (_%E185299185306%_))))))
                      (if (pair? _%key185276185284%_)
                          (let ((_%hd185281185325%_
                                 (##car _%key185276185284%_))
                                (_%tl185282185327%_
                                 (##cdr _%key185276185284%_)))
                            (let* ((_%id185330%_ _%hd185281185325%_)
                                   (_%mark185332%_ _%tl185282185327%_))
                              (_%K185280185322%_ _%mark185332%_ _%id185330%_)))
                          (_%else185278185292%_))))))
          (let* ((_%out185231185241%_ _%out185228%_)
                 (_%E185233185244%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out185231185241%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K185234185251%_
                  (lambda (_%phi185247%_ _%key185248%_ _%ctx185249%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx185249%_ _%phi185247%_)
                     (_%subst185230%_ _%key185248%_)))))
            (if (##structure-direct-instance-of?
                 _%out185231185241%_
                 'gx#module-export::t)
                (let* ((_%e185235185254%_
                        (##unchecked-structure-ref
                         _%out185231185241%_
                         '1
                         '#f
                         '#f))
                       (_%ctx185257%_ _%e185235185254%_)
                       (_%e185236185259%_
                        (##unchecked-structure-ref
                         _%out185231185241%_
                         '2
                         '#f
                         '#f))
                       (_%key185262%_ _%e185236185259%_)
                       (_%e185237185264%_
                        (##unchecked-structure-ref
                         _%out185231185241%_
                         '3
                         '#f
                         '#f))
                       (_%phi185267%_ _%e185237185264%_)
                       (_%e185238185269%_
                        (##unchecked-structure-ref
                         _%out185231185241%_
                         '4
                         '#f
                         '#f))
                       (_%e185239185272%_
                        (##unchecked-structure-ref
                         _%out185231185241%_
                         '5
                         '#f
                         '#f)))
                  (_%K185234185251%_
                   _%phi185267%_
                   _%key185262%_
                   _%ctx185257%_))
                (_%E185233185244%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out185154%_ _%rename185155%_ _%dphi185156%_)
        (let* ((_%out185157185167%_ _%out185154%_)
               (_%E185159185170%_
                (lambda ()
                  (error '"No clause matching"
                         _%out185157185167%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K185160185182%_
                (lambda (_%weak?185173%_
                         _%name185174%_
                         _%phi185175%_
                         _%key185176%_
                         _%ctx185177%_)
                  (##structure
                   gx#module-import::t
                   _%out185154%_
                   (let ((_%$e185179%_ _%rename185155%_))
                     (if _%$e185179%_ _%$e185179%_ _%name185174%_))
                   (fx+ _%phi185175%_ _%dphi185156%_)
                   _%weak?185173%_))))
          (if (##structure-direct-instance-of?
               _%out185157185167%_
               'gx#module-export::t)
              (let* ((_%e185161185185%_
                      (##unchecked-structure-ref
                       _%out185157185167%_
                       '1
                       '#f
                       '#f))
                     (_%ctx185188%_ _%e185161185185%_)
                     (_%e185162185190%_
                      (##unchecked-structure-ref
                       _%out185157185167%_
                       '2
                       '#f
                       '#f))
                     (_%key185193%_ _%e185162185190%_)
                     (_%e185163185195%_
                      (##unchecked-structure-ref
                       _%out185157185167%_
                       '3
                       '#f
                       '#f))
                     (_%phi185198%_ _%e185163185195%_)
                     (_%e185164185200%_
                      (##unchecked-structure-ref
                       _%out185157185167%_
                       '4
                       '#f
                       '#f))
                     (_%name185203%_ _%e185164185200%_)
                     (_%e185165185205%_
                      (##unchecked-structure-ref
                       _%out185157185167%_
                       '5
                       '#f
                       '#f))
                     (_%weak?185208%_ _%e185165185205%_))
                (_%K185160185182%_
                 _%weak?185208%_
                 _%name185203%_
                 _%phi185198%_
                 _%key185193%_
                 _%ctx185188%_))
              (_%E185159185170%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out185213%_)
        (let* ((_%rename185215%_ '#f) (_%dphi185217%_ '0))
          (gx#core-module-export->import__%
           _%out185213%_
           _%rename185215%_
           _%dphi185217%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out185219%_ _%rename185220%_)
        (let ((_%dphi185222%_ '0))
          (gx#core-module-export->import__%
           _%out185219%_
           _%rename185220%_
           _%dphi185222%_))))
    (define gx#core-module-export->import
      (lambda _g187305_
        (let ((_g187306_ (##length _g187305_)))
          (cond ((##fx= _g187306_ 1)
                 (apply gx#core-module-export->import__0 _g187305_))
                ((##fx= _g187306_ 2)
                 (apply gx#core-module-export->import__1 _g187305_))
                ((##fx= _g187306_ 3)
                 (apply gx#core-module-export->import__% _g187305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g187305_))))))
    (define gx#core-expand-module%
      (lambda (_%stx185053%_)
        (letrec ((_%make-context185055%_
                  (lambda (_%id185132%_)
                    (let* ((_%super185134%_ (gx#current-expander-context))
                           (_%bind-id185136%_ (gx#stx-e _%id185132%_))
                           (_%mod-id185138%_
                            (if (##structure-instance-of?
                                 _%super185134%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super185134%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id185136%_)
                                _%bind-id185136%_))
                           (_%ns185140%_ (symbol->string _%mod-id185138%_))
                           (_%path185150%_
                            (if (##structure-instance-of?
                                 _%super185134%_
                                 'gx#module-context::t)
                                (let ((_%path185142%_
                                       (##unchecked-structure-ref
                                        _%super185134%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path185142%_)
                                          (null? _%path185142%_))
                                      (cons _%bind-id185136%_ _%path185142%_)
                                      (if (not _%path185142%_)
                                          _%bind-id185136%_
                                          (cons _%bind-id185136%_
                                                (cons _%path185142%_ '())))))
                                _%bind-id185136%_))
                           (__obj187282
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
                       __obj187282
                       _%mod-id185138%_
                       _%super185134%_
                       _%ns185140%_
                       _%path185150%_)
                      __obj187282)))
                 (_%valid-module-id?185056%_
                  (lambda (_%id185107%_)
                    (let* ((_%str185109%_ (symbol->string _%id185107%_))
                           (_%len185111%_ (##string-length _%str185109%_)))
                      (if (##fx>= _%len185111%_ '1)
                          (let _%loop185114%_ ((_%index185116%_
                                                (##fx- (##string-length
                                                        _%str185109%_)
                                                       '1)))
                            (if (##fx>= _%index185116%_ '0)
                                (let ((_%c185118%_
                                       (string-ref
                                        _%str185109%_
                                        _%index185116%_)))
                                  (if (or (and (##char>=? _%c185118%_ '#\a)
                                               (##char<=? _%c185118%_ '#\z))
                                          (and (##char>=? _%c185118%_ '#\A)
                                               (##char<=? _%c185118%_ '#\Z))
                                          (and (##char>=? _%c185118%_ '#\0)
                                               (##char<=? _%c185118%_ '#\9))
                                          (##char=? _%c185118%_ '#\_)
                                          (##char=? _%c185118%_ '#\-))
                                      (_%loop185114%_
                                       (##fx- _%index185116%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e185057185067%_ _%stx185053%_)
                 (_%E185059185071%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e185057185067%_)))
                 (_%E185058185103%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185057185067%_)
                        (let ((_%e185060185075%_
                               (gx#syntax-e _%e185057185067%_)))
                          (let ((_%hd185061185078%_ (##car _%e185060185075%_))
                                (_%tl185062185080%_ (##cdr _%e185060185075%_)))
                            (if (gx#stx-pair? _%tl185062185080%_)
                                (let ((_%e185063185083%_
                                       (gx#syntax-e _%tl185062185080%_)))
                                  (let ((_%hd185064185086%_
                                         (##car _%e185063185083%_))
                                        (_%tl185065185088%_
                                         (##cdr _%e185063185083%_)))
                                    (let* ((_%id185091%_ _%hd185064185086%_)
                                           (_%body185093%_ _%tl185065185088%_))
                                      (if (and (gx#identifier? _%id185091%_)
                                               (gx#stx-list? _%body185093%_))
                                          (if (_%valid-module-id?185056%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx185095%_
                                                      (_%make-context185055%_
                                                       _%id185091%_))
                                                     (_%body185097%_
                                                      (gx#core-expand-module-begin
                                                       _%body185093%_
                                                       _%ctx185095%_))
                                                     (_%body185099%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body185097%_)
                                                       (gx#stx-source
                                                        _%stx185053%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx185095%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body185099%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx185095%_
                                                 _%body185099%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id185091%_
                                                 _%ctx185095%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id185091%_)
                                                  _%body185099%_)
                                                 (gx#stx-source
                                                  _%stx185053%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx185053%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E185059185071%_)))))
                                (_%E185059185071%_))))
                        (_%E185059185071%_)))))
            (_%E185058185103%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body185018%_ _%ctx185019%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx185023%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body185018%_)))
                     (_%e185024185031%_ _%stx185023%_)
                     (_%E185026185035%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx185023%_)))
                     (_%E185025185049%_
                      (lambda ()
                        (if (gx#stx-pair? _%e185024185031%_)
                            (let ((_%e185027185039%_
                                   (gx#syntax-e _%e185024185031%_)))
                              (let ((_%hd185028185042%_
                                     (##car _%e185027185039%_))
                                    (_%tl185029185044%_
                                     (##cdr _%e185027185039%_)))
                                (if (and (gx#identifier? _%hd185028185042%_)
                                         (gx#core-identifier=?
                                          _%hd185028185042%_
                                          '%#begin-module))
                                    (let ((_%body185047%_ _%tl185029185044%_))
                                      (if (gx#sealed-syntax? _%stx185023%_)
                                          _%body185047%_
                                          (gx#core-expand-module-body
                                           _%body185047%_)))
                                    (_%E185026185035%_))))
                            (_%E185026185035%_)))))
                (_%E185025185049%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx185019%_)))
    (define gx#core-expand-module-body
      (lambda (_%body184814%_)
        (letrec ((_%expand-special184816%_
                  (lambda (_%hd184945%_ _%K184946%_ _%rest184947%_ _%r184948%_)
                    (let* ((_%e184949184966%_ _%hd184945%_)
                           (_%E184961184970%_
                            (lambda ()
                              (_%K184946%_
                               _%rest184947%_
                               (cons (gx#core-expand-top _%hd184945%_)
                                     _%r184948%_))))
                           (_%E184951184982%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184949184966%_)
                                  (let ((_%e184962184974%_
                                         (gx#syntax-e _%e184949184966%_)))
                                    (let ((_%hd184963184977%_
                                           (##car _%e184962184974%_))
                                          (_%tl184964184979%_
                                           (##cdr _%e184962184974%_)))
                                      (if (and (gx#identifier?
                                                _%hd184963184977%_)
                                               (gx#core-identifier=?
                                                _%hd184963184977%_
                                                '%#export))
                                          (_%K184946%_
                                           _%rest184947%_
                                           (cons _%hd184945%_ _%r184948%_))
                                          (_%E184961184970%_))))
                                  (_%E184961184970%_))))
                           (_%E184950185014%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184949184966%_)
                                  (let ((_%e184952184986%_
                                         (gx#syntax-e _%e184949184966%_)))
                                    (let ((_%hd184953184989%_
                                           (##car _%e184952184986%_))
                                          (_%tl184954184991%_
                                           (##cdr _%e184952184986%_)))
                                      (if (and (gx#identifier?
                                                _%hd184953184989%_)
                                               (gx#core-identifier=?
                                                _%hd184953184989%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl184954184991%_)
                                              (let ((_%e184955184994%_
                                                     (gx#syntax-e
                                                      _%tl184954184991%_)))
                                                (let ((_%hd184956184997%_
                                                       (##car _%e184955184994%_))
                                                      (_%tl184957184999%_
                                                       (##cdr _%e184955184994%_)))
                                                  (let ((_%hd-bind185002%_
                                                         _%hd184956184997%_))
                                                    (if (gx#stx-pair?
                                                         _%tl184957184999%_)
                                                        (let ((_%e184958185004%_
                                                               (gx#syntax-e
                                                                _%tl184957184999%_)))
                                                          (let ((_%hd184959185007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e184958185004%_))
                        (_%tl184960185009%_ (##cdr _%e184958185004%_)))
                    (let ((_%expr185012%_ _%hd184959185007%_))
                      (if (gx#stx-null? _%tl184960185009%_)
                          (if (gx#core-bind-values? _%hd-bind185002%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind185002%_)
                                (_%K184946%_
                                 _%rest184947%_
                                 (cons _%hd184945%_ _%r184948%_)))
                              (_%E184951184982%_))
                          (_%E184951184982%_)))))
                (_%E184951184982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184951184982%_))
                                          (_%E184951184982%_))))
                                  (_%E184951184982%_)))))
                      (_%E184950185014%_))))
                 (_%expand-body184817%_
                  (lambda (_%rbody184819%_)
                    (let _%lp184821%_ ((_%rest184823%_ _%rbody184819%_)
                                       (_%body184824%_ '()))
                      (let* ((_%rest184825184833%_ _%rest184823%_)
                             (_%else184827184841%_ (lambda () _%body184824%_))
                             (_%K184829184933%_
                              (lambda (_%rest184844%_ _%hd184845%_)
                                (let* ((_%e184846184867%_ _%hd184845%_)
                                       (_%E184862184871%_
                                        (lambda ()
                                          (_%lp184821%_
                                           _%rest184844%_
                                           (cons (gx#core-expand-expression
                                                  _%hd184845%_)
                                                 _%body184824%_))))
                                       (_%E184858184885%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184846184867%_)
                                              (let ((_%e184863184875%_
                                                     (gx#syntax-e
                                                      _%e184846184867%_)))
                                                (let ((_%hd184864184878%_
                                                       (##car _%e184863184875%_))
                                                      (_%tl184865184880%_
                                                       (##cdr _%e184863184875%_)))
                                                  (let ((_%form184883%_
                                                         _%hd184864184878%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form184883%_
                                                         gx#special-form-binding?)
                                                        (_%lp184821%_
                                                         _%rest184844%_
                                                         (cons _%hd184845%_
                                                               _%body184824%_))
                                                        (_%E184862184871%_)))))
                                              (_%E184862184871%_))))
                                       (_%E184848184897%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184846184867%_)
                                              (let ((_%e184859184889%_
                                                     (gx#syntax-e
                                                      _%e184846184867%_)))
                                                (let ((_%hd184860184892%_
                                                       (##car _%e184859184889%_))
                                                      (_%tl184861184894%_
                                                       (##cdr _%e184859184889%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184860184892%_)
                                                           (gx#core-identifier=?
                                                            _%hd184860184892%_
                                                            '%#export))
                                                      (_%lp184821%_
                                                       _%rest184844%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd184845%_)
                                                             _%body184824%_))
                                                      (_%E184858184885%_))))
                                              (_%E184858184885%_))))
                                       (_%E184847184929%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184846184867%_)
                                              (let ((_%e184849184901%_
                                                     (gx#syntax-e
                                                      _%e184846184867%_)))
                                                (let ((_%hd184850184904%_
                                                       (##car _%e184849184901%_))
                                                      (_%tl184851184906%_
                                                       (##cdr _%e184849184901%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184850184904%_)
                                                           (gx#core-identifier=?
                                                            _%hd184850184904%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl184851184906%_)
                                                          (let ((_%e184852184909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl184851184906%_)))
                    (let ((_%hd184853184912%_ (##car _%e184852184909%_))
                          (_%tl184854184914%_ (##cdr _%e184852184909%_)))
                      (let ((_%hd-bind184917%_ _%hd184853184912%_))
                        (if (gx#stx-pair? _%tl184854184914%_)
                            (let ((_%e184855184919%_
                                   (gx#syntax-e _%tl184854184914%_)))
                              (let ((_%hd184856184922%_
                                     (##car _%e184855184919%_))
                                    (_%tl184857184924%_
                                     (##cdr _%e184855184919%_)))
                                (let ((_%expr184927%_ _%hd184856184922%_))
                                  (if (gx#stx-null? _%tl184857184924%_)
                                      (_%lp184821%_
                                       _%rest184844%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind184917%_)
                                               (gx#core-expand-expression
                                                _%expr184927%_))
                                              (gx#stx-source _%hd184845%_))
                                             _%body184824%_))
                                      (_%E184848184897%_)))))
                            (_%E184848184897%_)))))
                  (_%E184848184897%_))
              (_%E184848184897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184848184897%_)))))
                                  (_%E184847184929%_)))))
                        (if (pair? _%rest184825184833%_)
                            (let ((_%hd184830184936%_
                                   (##car _%rest184825184833%_))
                                  (_%tl184831184938%_
                                   (##cdr _%rest184825184833%_)))
                              (let* ((_%hd184941%_ _%hd184830184936%_)
                                     (_%rest184943%_ _%tl184831184938%_))
                                (_%K184829184933%_
                                 _%rest184943%_
                                 _%hd184941%_)))
                            (_%else184827184841%_)))))))
          (_%expand-body184817%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body184814%_)
            _%expand-special184816%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx184655%_
               _%expanded?184656%_
               _%method184657%_
               _%current-phi184658%_
               _%expand1184659%_)
        (letrec ((_%K184661%_
                  (lambda (_%rest184781%_ _%r184782%_)
                    (let* ((_%e184783184790%_ _%rest184781%_)
                           (_%E184785184794%_ (lambda () _%r184782%_))
                           (_%E184784184810%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184783184790%_)
                                  (let ((_%e184786184798%_
                                         (gx#syntax-e _%e184783184790%_)))
                                    (let ((_%hd184787184801%_
                                           (##car _%e184786184798%_))
                                          (_%tl184788184803%_
                                           (##cdr _%e184786184798%_)))
                                      (let* ((_%hd184806%_ _%hd184787184801%_)
                                             (_%rest184808%_
                                              _%tl184788184803%_))
                                        (_%step184662%_
                                         _%hd184806%_
                                         _%rest184808%_
                                         _%r184782%_))))
                                  (_%E184785184794%_)))))
                      (_%E184784184810%_))))
                 (_%step184662%_
                  (lambda (_%hd184695%_ _%rest184696%_ _%r184697%_)
                    (let* ((_%e184698184716%_ _%hd184695%_)
                           (_%E184711184720%_
                            (lambda ()
                              (if (_%expanded?184656%_ (gx#stx-e _%hd184695%_))
                                  (_%K184661%_
                                   _%rest184696%_
                                   (cons (gx#stx-e _%hd184695%_) _%r184697%_))
                                  (_%expand1184659%_
                                   _%hd184695%_
                                   _%K184661%_
                                   _%rest184696%_
                                   _%r184697%_))))
                           (_%E184707184736%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184698184716%_)
                                  (let ((_%e184712184724%_
                                         (gx#syntax-e _%e184698184716%_)))
                                    (let ((_%hd184713184727%_
                                           (##car _%e184712184724%_))
                                          (_%tl184714184729%_
                                           (##cdr _%e184712184724%_)))
                                      (let* ((_%macro184732%_
                                              _%hd184713184727%_)
                                             (_%body184734%_
                                              _%tl184714184729%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro184732%_
                                             gx#syntax-binding?)
                                            (_%K184661%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro184732%_)
                                                    _%hd184695%_
                                                    _%method184657%_)
                                                   _%rest184696%_)
                                             _%r184697%_)
                                            (_%E184711184720%_)))))
                                  (_%E184711184720%_))))
                           (_%E184700184750%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184698184716%_)
                                  (let ((_%e184708184740%_
                                         (gx#syntax-e _%e184698184716%_)))
                                    (let ((_%hd184709184743%_
                                           (##car _%e184708184740%_))
                                          (_%tl184710184745%_
                                           (##cdr _%e184708184740%_)))
                                      (if (eq? (gx#stx-e _%hd184709184743%_)
                                               'begin:)
                                          (let ((_%body184748%_
                                                 _%tl184710184745%_))
                                            (_%K184661%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest184696%_
                                              _%body184748%_)
                                             _%r184697%_))
                                          (_%E184707184736%_))))
                                  (_%E184707184736%_))))
                           (_%E184699184777%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184698184716%_)
                                  (let ((_%e184701184754%_
                                         (gx#syntax-e _%e184698184716%_)))
                                    (let ((_%hd184702184757%_
                                           (##car _%e184701184754%_))
                                          (_%tl184703184759%_
                                           (##cdr _%e184701184754%_)))
                                      (if (eq? (gx#stx-e _%hd184702184757%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl184703184759%_)
                                              (let ((_%e184704184762%_
                                                     (gx#syntax-e
                                                      _%tl184703184759%_)))
                                                (let ((_%hd184705184765%_
                                                       (##car _%e184704184762%_))
                                                      (_%tl184706184767%_
                                                       (##cdr _%e184704184762%_)))
                                                  (let* ((_%dphi184770%_
                                                          _%hd184705184765%_)
                                                         (_%body184772%_
                                                          _%tl184706184767%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi184770%_)
                                                        (let ((_%rbody184775%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K184661%_ _%body184772%_ '()))
                        _%current-phi184658%_
                        (fx+ (gx#stx-e _%dphi184770%_)
                             (_%current-phi184658%_)))))
                  (_%K184661%_
                   _%rest184696%_
                   (foldr__0 cons _%r184697%_ _%rbody184775%_)))
                (_%E184700184750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184700184750%_))
                                          (_%E184700184750%_))))
                                  (_%E184700184750%_)))))
                      (_%E184699184777%_)))))
          (let* ((_%e184663184670%_ _%stx184655%_)
                 (_%E184665184674%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e184663184670%_)))
                 (_%E184664184691%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184663184670%_)
                        (let ((_%e184666184678%_
                               (gx#syntax-e _%e184663184670%_)))
                          (let ((_%hd184667184681%_ (##car _%e184666184678%_))
                                (_%tl184668184683%_ (##cdr _%e184666184678%_)))
                            (let ((_%body184686%_ _%tl184668184683%_))
                              (if (_%current-phi184658%_)
                                  (_%K184661%_ _%body184686%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K184661%_ _%body184686%_ '()))
                                   _%current-phi184658%_
                                   (gx#current-expander-phi))))))
                        (_%E184665184674%_)))))
            (_%E184664184691%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx184309%_ _%internal-expand?184310%_)
        (letrec ((_%expand1184312%_
                  (lambda (_%hd184627%_ _%K184628%_ _%rest184629%_ _%r184630%_)
                    (if (gx#core-bound-module? _%hd184627%_)
                        (_%import1184313%_
                         (gx#syntax-local-e__0 _%hd184627%_)
                         _%K184628%_
                         _%rest184629%_
                         _%r184630%_)
                        (if (gx#core-library-module-path? _%hd184627%_)
                            (_%import1184313%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd184627%_))
                             _%K184628%_
                             _%rest184629%_
                             _%r184630%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd184627%_)
                                (_%import1184313%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd184627%_))
                                 _%K184628%_
                                 _%rest184629%_
                                 _%r184630%_)
                                (let ((_%e184636%_ (gx#stx-e _%hd184627%_)))
                                  (if (pair? _%e184636%_)
                                      (let ((_%$e184639%_
                                             (gx#stx-e (##car _%e184636%_))))
                                        (if (eq? 'spec: _%$e184639%_)
                                            (_%import-spec184316%_
                                             _%hd184627%_
                                             _%K184628%_
                                             _%rest184629%_
                                             _%r184630%_)
                                            (if (eq? 'in: _%$e184639%_)
                                                (_%import-submodule184314%_
                                                 _%hd184627%_
                                                 _%K184628%_
                                                 _%rest184629%_
                                                 _%r184630%_)
                                                (if (eq? 'runtime:
                                                         _%$e184639%_)
                                                    (_%import-runtime184315%_
                                                     _%hd184627%_
                                                     _%K184628%_
                                                     _%rest184629%_
                                                     _%r184630%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx184309%_
                                                     _%hd184627%_)))))
                                      (if (string? _%e184636%_)
                                          (_%import1184313%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd184627%_
                                             (gx#stx-source _%stx184309%_)))
                                           _%K184628%_
                                           _%rest184629%_
                                           _%r184630%_)
                                          (if (##structure-instance-of?
                                               _%e184636%_
                                               'gx#module-context::t)
                                              (_%K184628%_
                                               _%rest184629%_
                                               (cons _%e184636%_ _%r184630%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx184309%_
                                               _%hd184627%_))))))))))
                 (_%import1184313%_
                  (lambda (_%ctx184616%_
                           _%K184617%_
                           _%rest184618%_
                           _%r184619%_)
                    (let ((_%dphi184621%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K184617%_
                       _%rest184618%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx184616%_
                              _%dphi184621%_
                              (map (lambda (_%g184622184624%_)
                                     (gx#core-module-export->import__%
                                      _%g184622184624%_
                                      '#f
                                      _%dphi184621%_))
                                   (##unchecked-structure-ref
                                    _%ctx184616%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r184619%_)))))
                 (_%import-submodule184314%_
                  (lambda (_%hd184583%_ _%K184584%_ _%rest184585%_ _%r184586%_)
                    (let* ((_%e184587184594%_ _%hd184583%_)
                           (_%E184589184598%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184587184594%_)))
                           (_%E184588184612%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184587184594%_)
                                  (let ((_%e184590184602%_
                                         (gx#syntax-e _%e184587184594%_)))
                                    (let ((_%hd184591184605%_
                                           (##car _%e184590184602%_))
                                          (_%tl184592184607%_
                                           (##cdr _%e184590184602%_)))
                                      (let ((_%spath184610%_
                                             _%tl184592184607%_))
                                        (_%import1184313%_
                                         (_%import-spec-source184317%_
                                          _%spath184610%_)
                                         _%K184584%_
                                         _%rest184585%_
                                         _%r184586%_))))
                                  (_%E184589184598%_)))))
                      (_%E184588184612%_))))
                 (_%import-runtime184315%_
                  (lambda (_%hd184550%_ _%K184551%_ _%rest184552%_ _%r184553%_)
                    (let* ((_%e184554184561%_ _%hd184550%_)
                           (_%E184556184565%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184554184561%_)))
                           (_%E184555184579%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184554184561%_)
                                  (let ((_%e184557184569%_
                                         (gx#syntax-e _%e184554184561%_)))
                                    (let ((_%hd184558184572%_
                                           (##car _%e184557184569%_))
                                          (_%tl184559184574%_
                                           (##cdr _%e184557184569%_)))
                                      (let ((_%spath184577%_
                                             _%tl184559184574%_))
                                        (_%K184551%_
                                         _%rest184552%_
                                         (cons (_%import-spec-source184317%_
                                                _%spath184577%_)
                                               _%r184553%_)))))
                                  (_%E184556184565%_)))))
                      (_%E184555184579%_))))
                 (_%import-spec184316%_
                  (lambda (_%hd184388%_ _%K184389%_ _%rest184390%_ _%r184391%_)
                    (let* ((_%e184392184409%_ _%hd184388%_)
                           (_%E184401184413%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184392184409%_)))
                           (_%E184394184524%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184392184409%_)
                                  (let ((_%e184402184417%_
                                         (gx#syntax-e _%e184392184409%_)))
                                    (let ((_%hd184403184420%_
                                           (##car _%e184402184417%_))
                                          (_%tl184404184422%_
                                           (##cdr _%e184402184417%_)))
                                      (if (gx#stx-pair? _%tl184404184422%_)
                                          (let ((_%e184405184425%_
                                                 (gx#syntax-e
                                                  _%tl184404184422%_)))
                                            (let ((_%hd184406184428%_
                                                   (##car _%e184405184425%_))
                                                  (_%tl184407184430%_
                                                   (##cdr _%e184405184425%_)))
                                              (let* ((_%path184433%_
                                                      _%hd184406184428%_)
                                                     (_%specs184435%_
                                                      _%tl184407184430%_))
                                                (let ((_%src-ctx184437%_
                                                       (_%import-spec-source184317%_
                                                        _%path184433%_))
                                                      (_%exports184438%_
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
                                                      (_%specs184439%_
                                                       (gx#syntax->list
                                                        _%specs184435%_)))
                                                  (for-each
                                                   (lambda (_%out184441%_)
                                                     (__hash-put!
                                                      _%exports184438%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out184441%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out184441%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out184441%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx184437%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K184389%_
                                                   _%rest184390%_
                                                   (foldl__0
                                                    (lambda (_%spec184443%_
                                                             _%r184444%_)
                                                      (let* ((_%e184445184461%_
                                                              _%spec184443%_)
                                                             (_%E184447184465%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e184445184461%_)))
                     (_%E184446184520%_
                      (lambda ()
                        (if (gx#stx-pair? _%e184445184461%_)
                            (let ((_%e184448184469%_
                                   (gx#syntax-e _%e184445184461%_)))
                              (let ((_%hd184449184472%_
                                     (##car _%e184448184469%_))
                                    (_%tl184450184474%_
                                     (##cdr _%e184448184469%_)))
                                (let ((_%phi184477%_ _%hd184449184472%_))
                                  (if (gx#stx-pair? _%tl184450184474%_)
                                      (let ((_%e184451184479%_
                                             (gx#syntax-e _%tl184450184474%_)))
                                        (let ((_%hd184452184482%_
                                               (##car _%e184451184479%_))
                                              (_%tl184453184484%_
                                               (##cdr _%e184451184479%_)))
                                          (let ((_%name184487%_
                                                 _%hd184452184482%_))
                                            (if (gx#stx-pair?
                                                 _%tl184453184484%_)
                                                (let ((_%e184454184489%_
                                                       (gx#syntax-e
                                                        _%tl184453184484%_)))
                                                  (let ((_%hd184455184492%_
                                                         (##car _%e184454184489%_))
                                                        (_%tl184456184494%_
                                                         (##cdr _%e184454184489%_)))
                                                    (let ((_%src-phi184497%_
                                                           _%hd184455184492%_))
                                                      (if (gx#stx-pair?
                                                           _%tl184456184494%_)
                                                          (let ((_%e184457184499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl184456184494%_)))
                    (let ((_%hd184458184502%_ (##car _%e184457184499%_))
                          (_%tl184459184504%_ (##cdr _%e184457184499%_)))
                      (let ((_%src-name184507%_ _%hd184458184502%_))
                        (if (gx#stx-null? _%tl184459184504%_)
                            (if (and (gx#stx-fixnum? _%src-phi184497%_)
                                     (gx#identifier? _%src-name184507%_)
                                     (gx#stx-fixnum? _%phi184477%_)
                                     (gx#identifier? _%name184487%_))
                                (let ((_%src-phi184509%_
                                       (gx#stx-e _%src-phi184497%_))
                                      (_%src-name184510%_
                                       (gx#core-identifier-key
                                        _%src-name184507%_))
                                      (_%phi184511%_ (gx#stx-e _%phi184477%_))
                                      (_%name184512%_
                                       (gx#core-identifier-key
                                        _%name184487%_)))
                                  (let ((_%$e184514%_
                                         (__hash-get
                                          _%exports184438%_
                                          (cons _%src-phi184509%_
                                                _%src-name184510%_))))
                                    (if _%$e184514%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e184514%_
                                               _%name184512%_
                                               (fx- _%phi184511%_
                                                    _%src-phi184509%_))
                                              _%r184444%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx184309%_
                                         _%hd184388%_))))
                                (_%E184447184465%_))
                            (_%E184447184465%_)))))
                  (_%E184447184465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E184447184465%_)))))
                                      (_%E184447184465%_)))))
                            (_%E184447184465%_)))))
                (_%E184446184520%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r184391%_
                                                    _%specs184439%_))))))
                                          (_%E184401184413%_))))
                                  (_%E184401184413%_))))
                           (_%E184393184546%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184392184409%_)
                                  (let ((_%e184395184528%_
                                         (gx#syntax-e _%e184392184409%_)))
                                    (let ((_%hd184396184531%_
                                           (##car _%e184395184528%_))
                                          (_%tl184397184533%_
                                           (##cdr _%e184395184528%_)))
                                      (if (gx#stx-pair? _%tl184397184533%_)
                                          (let ((_%e184398184536%_
                                                 (gx#syntax-e
                                                  _%tl184397184533%_)))
                                            (let ((_%hd184399184539%_
                                                   (##car _%e184398184536%_))
                                                  (_%tl184400184541%_
                                                   (##cdr _%e184398184536%_)))
                                              (let ((_%path184544%_
                                                     _%hd184399184539%_))
                                                (if (gx#stx-null?
                                                     _%tl184400184541%_)
                                                    (_%K184389%_
                                                     _%rest184390%_
                                                     (cons (_%import-spec-source184317%_
                                                            _%path184544%_)
                                                           _%r184391%_))
                                                    (_%E184394184524%_)))))
                                          (_%E184394184524%_))))
                                  (_%E184394184524%_)))))
                      (_%E184393184546%_))))
                 (_%import-spec-source184317%_
                  (lambda (_%spath184386%_)
                    (gx#core-import-nested-module
                     _%spath184386%_
                     _%stx184309%_)))
                 (_%import!184318%_
                  (lambda (_%rbody184331%_)
                    (letrec* ((_%current-ctx184333%_
                               (gx#current-expander-context))
                              (_%deps184334%_ (make-hash-table-eq))
                              (_%bind!184335%_
                               (lambda (_%hd184384%_)
                                 (gx#core-bind-import!__1
                                  _%hd184384%_
                                  _%current-ctx184333%_))))
                      (let _%lp184337%_ ((_%rest184339%_ _%rbody184331%_)
                                         (_%body184340%_ '()))
                        (let* ((_%rest184341184349%_ _%rest184339%_)
                               (_%else184343184360%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx184333%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx184333%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx184333%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body184340%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx184357%_ _%_184358%_)
                                     (gx#eval-module _%ctx184357%_))
                                   _%deps184334%_)
                                  _%body184340%_))
                               (_%K184345184372%_
                                (lambda (_%rest184363%_ _%hd184364%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd184364%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!184335%_ _%hd184364%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd184364%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd184364%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps184334%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd184364%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd184364%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!184335%_
                                             (##unchecked-structure-ref
                                              _%hd184364%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd184364%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps184334%_
                                                 (##unchecked-structure-ref
                                                  _%hd184364%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e184368%_
                                                 (##structure-instance-of?
                                                  _%hd184364%_
                                                  'gx#module-context::t)))
                                            (if _%$e184368%_
                                                _%$e184368%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx184309%_
                                                 _%hd184364%_)))))
                                  (_%lp184337%_
                                   _%rest184363%_
                                   (cons _%hd184364%_ _%body184340%_)))))
                          (if (pair? _%rest184341184349%_)
                              (let ((_%hd184346184375%_
                                     (##car _%rest184341184349%_))
                                    (_%tl184347184377%_
                                     (##cdr _%rest184341184349%_)))
                                (let* ((_%hd184380%_ _%hd184346184375%_)
                                       (_%rest184382%_ _%tl184347184377%_))
                                  (_%K184345184372%_
                                   _%rest184382%_
                                   _%hd184380%_)))
                              (_%else184343184360%_)))))))
                 (_%expanded-import?184319%_
                  (lambda (_%e184323%_)
                    (let ((_%$e184325%_
                           (##structure-direct-instance-of?
                            _%e184323%_
                            'gx#import-set::t)))
                      (if _%$e184325%_
                          _%$e184325%_
                          (let ((_%$e184328%_
                                 (##structure-direct-instance-of?
                                  _%e184323%_
                                  'gx#module-import::t)))
                            (if _%$e184328%_
                                _%$e184328%_
                                (##structure-instance-of?
                                 _%e184323%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody184321%_
                 (gx#core-expand-import/export
                  _%stx184309%_
                  _%expanded-import?184319%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1184312%_)))
            (if _%internal-expand?184310%_
                (reverse _%rbody184321%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!184318%_ _%rbody184321%_))
                 (gx#stx-source _%stx184309%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx184648%_)
        (let ((_%internal-expand?184650%_ '#f))
          (gx#core-expand-import%__%
           _%stx184648%_
           _%internal-expand?184650%_))))
    (define gx#core-expand-import%
      (lambda _g187307_
        (let ((_g187308_ (##length _g187307_)))
          (cond ((##fx= _g187308_ 1)
                 (apply gx#core-expand-import%__0 _g187307_))
                ((##fx= _g187308_ 2)
                 (apply gx#core-expand-import%__% _g187307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g187307_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath184236%_ _%where184237%_)
        (let* ((_%e184238184245%_ _%spath184236%_)
               (_%E184240184249%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184238184245%_)))
               (_%E184239184304%_
                (lambda ()
                  (if (gx#stx-pair? _%e184238184245%_)
                      (let ((_%e184241184253%_
                             (gx#syntax-e _%e184238184245%_)))
                        (let ((_%hd184242184256%_ (##car _%e184241184253%_))
                              (_%tl184243184258%_ (##cdr _%e184241184253%_)))
                          (let* ((_%origin184261%_ _%hd184242184256%_)
                                 (_%sub184263%_ _%tl184243184258%_)
                                 (_%origin-ctx184265%_
                                  (if (gx#stx-false? _%origin184261%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin184261%_))))
                            (let _%lp184267%_ ((_%rest184269%_ _%sub184263%_)
                                               (_%ctx184270%_
                                                _%origin-ctx184265%_))
                              (let* ((_%e184271184278%_ _%rest184269%_)
                                     (_%E184273184282%_
                                      (lambda () _%ctx184270%_))
                                     (_%E184272184300%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e184271184278%_)
                                            (let ((_%e184274184286%_
                                                   (gx#syntax-e
                                                    _%e184271184278%_)))
                                              (let ((_%hd184275184289%_
                                                     (##car _%e184274184286%_))
                                                    (_%tl184276184291%_
                                                     (##cdr _%e184274184286%_)))
                                                (let* ((_%id184294%_
                                                        _%hd184275184289%_)
                                                       (_%rest184296%_
                                                        _%tl184276184291%_)
                                                       (_%bind184298%_
                                                        (gx#resolve-identifier__%
                                                         _%id184294%_
                                                         '0
                                                         _%ctx184270%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind184298%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind184298%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where184237%_
                                                       _%spath184236%_
                                                       _%id184294%_))
                                                  (_%lp184267%_
                                                   _%rest184296%_
                                                   (##unchecked-structure-ref
                                                    _%bind184298%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E184273184282%_)))))
                                (_%E184272184300%_))))))
                      (_%E184240184249%_)))))
          (_%E184239184304%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd184234%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd184234%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx183729%_ _%internal-expand?183730%_)
        (letrec* ((_%make-export__187235187236%_
                   (lambda (_%bind184182%_
                            _%phi184183%_
                            _%ctx184184%_
                            _%name184185%_)
                     (let* ((_%key184187%_
                             (##unchecked-structure-ref
                              _%bind184182%_
                              '2
                              '#f
                              '#f))
                            (_%export-key184189%_
                             (if _%name184185%_
                                 (gx#core-identifier-key _%name184185%_)
                                 _%key184187%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx184184%_
                        _%key184187%_
                        _%phi184183%_
                        _%export-key184189%_
                        (let ((_%$e184192%_
                               (##structure-instance-of?
                                _%bind184182%_
                                'gx#extern-binding::t)))
                          (if _%$e184192%_
                              _%$e184192%_
                              (##structure-direct-instance-of?
                               _%bind184182%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__187237187240%_
                   (lambda (_%bind184198%_)
                     (let* ((_%phi184200%_ (gx#current-export-expander-phi))
                            (_%ctx184202%_ (gx#current-expander-context))
                            (_%name184204%_ '#f))
                       (_%make-export__187235187236%_
                        _%bind184198%_
                        _%phi184200%_
                        _%ctx184202%_
                        _%name184204%_))))
                  (_%make-export__1__187238187241%_
                   (lambda (_%bind184206%_ _%phi184207%_)
                     (let* ((_%ctx184209%_ (gx#current-expander-context))
                            (_%name184211%_ '#f))
                       (_%make-export__187235187236%_
                        _%bind184206%_
                        _%phi184207%_
                        _%ctx184209%_
                        _%name184211%_))))
                  (_%make-export__2__187239187242%_
                   (lambda (_%bind184213%_ _%phi184214%_ _%ctx184215%_)
                     (let ((_%name184217%_ '#f))
                       (_%make-export__187235187236%_
                        _%bind184213%_
                        _%phi184214%_
                        _%ctx184215%_
                        _%name184217%_))))
                  (_%make-export183732%_
                   (lambda _g187309_
                     (let ((_g187310_ (##length _g187309_)))
                       (cond ((##fx= _g187310_ 1)
                              (apply _%make-export__0__187237187240%_
                                     _g187309_))
                             ((##fx= _g187310_ 2)
                              (apply _%make-export__1__187238187241%_
                                     _g187309_))
                             ((##fx= _g187310_ 3)
                              (apply _%make-export__2__187239187242%_
                                     _g187309_))
                             ((##fx= _g187310_ 4)
                              (apply _%make-export__187235187236%_ _g187309_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g187309_))))))
                  (_%expand1183733%_
                   (lambda (_%hd183887%_
                            _%K183888%_
                            _%rest183889%_
                            _%r183890%_)
                     (let* ((_%e183891183923%_ _%hd183887%_)
                            (_%E183918183927%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx183729%_
                                _%hd183887%_)))
                            (_%E183908184011%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183891183923%_)
                                   (let ((_%e183919183931%_
                                          (gx#syntax-e _%e183891183923%_)))
                                     (let ((_%hd183920183934%_
                                            (##car _%e183919183931%_))
                                           (_%tl183921183936%_
                                            (##cdr _%e183919183931%_)))
                                       (if (eq? (gx#stx-e _%hd183920183934%_)
                                                'import:)
                                           (let ((_%in183939%_
                                                  _%tl183921183936%_))
                                             (if (gx#stx-list? _%in183939%_)
                                                 (let _%lp183941%_ ((_%in-rest183943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in183939%_)
                            (_%r183944%_ _%r183890%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e183945183952%_
                                                           _%in-rest183943%_)
                                                          (_%E183947183956%_
                                                           (lambda ()
                                                             (_%K183888%_
                                                              _%rest183889%_
                                                              _%r183944%_)))
                                                          (_%E183946184007%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e183945183952%_)
                         (let ((_%e183948183960%_
                                (gx#syntax-e _%e183945183952%_)))
                           (let ((_%hd183949183963%_ (##car _%e183948183960%_))
                                 (_%tl183950183965%_
                                  (##cdr _%e183948183960%_)))
                             (let* ((_%hd183968%_ _%hd183949183963%_)
                                    (_%in-rest183970%_ _%tl183950183965%_)
                                    (_%src184005%_
                                     (if (gx#core-bound-module? _%hd183968%_)
                                         (gx#syntax-local-e__0 _%hd183968%_)
                                         (if (gx#core-library-module-path?
                                              _%hd183968%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd183968%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd183968%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd183968%_))
                                                 (if (gx#stx-string?
                                                      _%hd183968%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd183968%_
                                                       (gx#stx-source
                                                        _%stx183729%_)))
                                                     (let* ((_%e183976183983%_
                                                             _%hd183968%_)
                                                            (_%E183978183987%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx183729%_
                                                                _%hd183968%_)))
                                                            (_%E183977184001%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e183976183983%_)
                           (let ((_%e183979183991%_
                                  (gx#syntax-e _%e183976183983%_)))
                             (let ((_%hd183980183994%_
                                    (##car _%e183979183991%_))
                                   (_%tl183981183996%_
                                    (##cdr _%e183979183991%_)))
                               (if (eq? (gx#stx-e _%hd183980183994%_) 'in:)
                                   (let ((_%spath183999%_ _%tl183981183996%_))
                                     (gx#core-import-nested-module
                                      _%spath183999%_
                                      _%stx183729%_))
                                   (_%E183978183987%_))))
                           (_%E183978183987%_)))))
               (_%E183977184001%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp183941%_
                                _%in-rest183970%_
                                (_%export-imports183734%_
                                 _%src184005%_
                                 _%r183944%_)))))
                         (_%E183947183956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E183946184007%_)))
                                                 (_%E183918183927%_)))
                                           (_%E183918183927%_))))
                                   (_%E183918183927%_))))
                            (_%E183895184051%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183891183923%_)
                                   (let ((_%e183909184015%_
                                          (gx#syntax-e _%e183891183923%_)))
                                     (let ((_%hd183910184018%_
                                            (##car _%e183909184015%_))
                                           (_%tl183911184020%_
                                            (##cdr _%e183909184015%_)))
                                       (if (eq? (gx#stx-e _%hd183910184018%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl183911184020%_)
                                               (let ((_%e183912184023%_
                                                      (gx#syntax-e
                                                       _%tl183911184020%_)))
                                                 (let ((_%hd183913184026%_
                                                        (##car _%e183912184023%_))
                                                       (_%tl183914184028%_
                                                        (##cdr _%e183912184023%_)))
                                                   (let ((_%id184031%_
                                                          _%hd183913184026%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183914184028%_)
                                                         (let ((_%e183915184033%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183914184028%_)))
                   (let ((_%hd183916184036%_ (##car _%e183915184033%_))
                         (_%tl183917184038%_ (##cdr _%e183915184033%_)))
                     (let ((_%name184041%_ _%hd183916184036%_))
                       (if (gx#stx-null? _%tl183917184038%_)
                           (let* ((_%phi184043%_
                                   (gx#current-export-expander-phi))
                                  (_%$e184045%_
                                   (gx#core-resolve-identifier__1
                                    _%id184031%_
                                    _%phi184043%_)))
                             (if _%$e184045%_
                                 (_%K183888%_
                                  _%rest183889%_
                                  (cons (_%make-export__187235187236%_
                                         _%$e184045%_
                                         _%phi184043%_
                                         (gx#current-expander-context)
                                         _%name184041%_)
                                        _%r183890%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx183729%_
                                  _%hd183887%_
                                  _%id184031%_)))
                           (_%E183908184011%_)))))
                 (_%E183908184011%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183908184011%_))
                                           (_%E183908184011%_))))
                                   (_%E183908184011%_))))
                            (_%E183894184101%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183891183923%_)
                                   (let ((_%e183896184055%_
                                          (gx#syntax-e _%e183891183923%_)))
                                     (let ((_%hd183897184058%_
                                            (##car _%e183896184055%_))
                                           (_%tl183898184060%_
                                            (##cdr _%e183896184055%_)))
                                       (if (eq? (gx#stx-e _%hd183897184058%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl183898184060%_)
                                               (let ((_%e183899184063%_
                                                      (gx#syntax-e
                                                       _%tl183898184060%_)))
                                                 (let ((_%hd183900184066%_
                                                        (##car _%e183899184063%_))
                                                       (_%tl183901184068%_
                                                        (##cdr _%e183899184063%_)))
                                                   (let ((_%phi184071%_
                                                          _%hd183900184066%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183901184068%_)
                                                         (let ((_%e183902184073%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183901184068%_)))
                   (let ((_%hd183903184076%_ (##car _%e183902184073%_))
                         (_%tl183904184078%_ (##cdr _%e183902184073%_)))
                     (let ((_%id184081%_ _%hd183903184076%_))
                       (if (gx#stx-pair? _%tl183904184078%_)
                           (let ((_%e183905184083%_
                                  (gx#syntax-e _%tl183904184078%_)))
                             (let ((_%hd183906184086%_
                                    (##car _%e183905184083%_))
                                   (_%tl183907184088%_
                                    (##cdr _%e183905184083%_)))
                               (let ((_%name184091%_ _%hd183906184086%_))
                                 (if (gx#stx-null? _%tl183907184088%_)
                                     (if (and (gx#stx-fixnum? _%phi184071%_)
                                              (gx#identifier? _%id184081%_)
                                              (gx#identifier? _%name184091%_))
                                         (let* ((_%phi184093%_
                                                 (gx#stx-e _%phi184071%_))
                                                (_%$e184095%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id184081%_
                                                  _%phi184093%_)))
                                           (if _%$e184095%_
                                               (_%K183888%_
                                                _%rest183889%_
                                                (cons (_%make-export__187235187236%_
                                                       _%$e184095%_
                                                       _%phi184093%_
                                                       (gx#current-expander-context)
                                                       _%name184091%_)
                                                      _%r183890%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx183729%_
                                                _%hd183887%_
                                                _%id184081%_)))
                                         (_%E183895184051%_))
                                     (_%E183895184051%_)))))
                           (_%E183895184051%_)))))
                 (_%E183895184051%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183895184051%_))
                                           (_%E183895184051%_))))
                                   (_%E183895184051%_))))
                            (_%E183893184113%_
                             (lambda ()
                               (let ((_%id184105%_ _%e183891183923%_))
                                 (if (gx#identifier? _%id184105%_)
                                     (let ((_%$e184107%_
                                            (gx#core-resolve-identifier__1
                                             _%id184105%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e184107%_
                                           (_%K183888%_
                                            _%rest183889%_
                                            (cons (_%make-export__0__187237187240%_
                                                   _%$e184107%_)
                                                  _%r183890%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx183729%_
                                            _%hd183887%_)))
                                     (_%E183894184101%_)))))
                            (_%E183892184177%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e183891183923%_) '#t)
                                   (let* ((_%current-ctx184117%_
                                           (gx#current-expander-context))
                                          (_%current-phi184119%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx184121%_
                                           (gx#core-context-shift
                                            _%current-ctx184117%_
                                            _%current-phi184119%_))
                                          (_%phi-bind184123%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx184121%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp184126%_ ((_%bind-rest184128%_
                                                         _%phi-bind184123%_)
                                                        (_%set184129%_ '()))
                                       (let* ((_%bind-rest184130184140%_
                                               _%bind-rest184128%_)
                                              (_%else184132184148%_
                                               (lambda ()
                                                 (_%K183888%_
                                                  _%rest183889%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi184119%_
                                                         _%set184129%_)
                                                        _%r183890%_))))
                                              (_%K184134184158%_
                                               (lambda (_%bind-rest184151%_
                                                        _%bind184152%_
                                                        _%key184153%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind184152%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind184152%_))
                                                     (_%lp184126%_
                                                      _%bind-rest184151%_
                                                      _%set184129%_)
                                                     (_%lp184126%_
                                                      _%bind-rest184151%_
                                                      (cons (_%make-export__2__187239187242%_
                                                             _%bind184152%_
                                                             _%current-phi184119%_
                                                             _%current-ctx184117%_)
                                                            _%set184129%_))))))
                                         (if (pair? _%bind-rest184130184140%_)
                                             (let ((_%hd184135184161%_
                                                    (##car _%bind-rest184130184140%_))
                                                   (_%tl184136184163%_
                                                    (##cdr _%bind-rest184130184140%_)))
                                               (if (pair? _%hd184135184161%_)
                                                   (let ((_%hd184137184166%_
                                                          (##car _%hd184135184161%_))
                                                         (_%tl184138184168%_
                                                          (##cdr _%hd184135184161%_)))
                                                     (let* ((_%key184171%_
                                                             _%hd184137184166%_)
                                                            (_%bind184173%_
                                                             _%tl184138184168%_)
                                                            (_%bind-rest184175%_
                                                             _%tl184136184163%_))
                                                       (_%K184134184158%_
                                                        _%bind-rest184175%_
                                                        _%bind184173%_
                                                        _%key184171%_)))
                                                   (_%else184132184148%_)))
                                             (_%else184132184148%_)))))
                                   (_%E183893184113%_)))))
                       (_%E183892184177%_))))
                  (_%export-imports183734%_
                   (lambda (_%src183764%_ _%r183765%_)
                     (letrec* ((_%current-ctx183767%_
                                (gx#current-expander-context))
                               (_%current-phi183768%_
                                (gx#current-export-expander-phi))
                               (_%import->export183769%_
                                (lambda (_%in183850%_)
                                  (let* ((_%in183851183859%_ _%in183850%_)
                                         (_%E183853183862%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in183851183859%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K183854183869%_
                                          (lambda (_%phi183865%_
                                                   _%key183866%_
                                                   _%out183867%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx183767%_
                                             _%key183866%_
                                             _%phi183865%_
                                             _%key183866%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in183851183859%_
                                         'gx#module-import::t)
                                        (let* ((_%e183855183872%_
                                                (##unchecked-structure-ref
                                                 _%in183851183859%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out183875%_
                                                _%e183855183872%_)
                                               (_%e183856183877%_
                                                (##unchecked-structure-ref
                                                 _%in183851183859%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key183880%_
                                                _%e183856183877%_)
                                               (_%e183857183882%_
                                                (##unchecked-structure-ref
                                                 _%in183851183859%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi183885%_
                                                _%e183857183882%_))
                                          (_%K183854183869%_
                                           _%phi183885%_
                                           _%key183880%_
                                           _%out183875%_))
                                        (_%E183853183862%_)))))
                               (_%fold-e183770%_
                                (lambda (_%in183772%_ _%r183773%_)
                                  (let* ((_%in183774183788%_ _%in183772%_)
                                         (_%else183777183796%_
                                          (lambda () _%r183773%_)))
                                    (let ((_%K183783183832%_
                                           (lambda (_%phi183828%_
                                                    _%key183829%_
                                                    _%out183830%_)
                                             (if (and (fx= _%phi183828%_
                                                           _%current-phi183768%_)
                                                      (eq? _%src183764%_
                                                           (##unchecked-structure-ref
                                                            _%out183830%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export183769%_
                                                        _%in183772%_)
                                                       _%r183773%_)
                                                 _%r183773%_)))
                                          (_%K183779183807%_
                                           (lambda (_%imports183800%_
                                                    _%phi183801%_
                                                    _%ctx183802%_)
                                             (if (and (fx= _%phi183801%_
                                                           _%current-phi183768%_)
                                                      (eq? _%src183764%_
                                                           _%ctx183802%_))
                                                 (foldl__0
                                                  (lambda (_%in183804%_
                                                           _%r183805%_)
                                                    (cons (_%import->export183769%_
                                                           _%in183804%_)
                                                          _%r183805%_))
                                                  _%r183773%_
                                                  _%imports183800%_)
                                                 _%r183773%_))))
                                      (let ((_%try-match183776183825%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in183774183788%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e183780183810%_
                                                           (##unchecked-structure-ref
                                                            _%in183774183788%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e183781183815%_
                                                           (##unchecked-structure-ref
                                                            _%in183774183788%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e183782183820%_
                                                           (##unchecked-structure-ref
                                                            _%in183774183788%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx183813%_
                                                            _%e183780183810%_)
                                                           (_%phi183818%_
                                                            _%e183781183815%_)
                                                           (_%imports183823%_
                                                            _%e183782183820%_))
                                                       (_%K183779183807%_
                                                        _%imports183823%_
                                                        _%phi183818%_
                                                        _%ctx183813%_)))
                                                   (_%else183777183796%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in183774183788%_
                                             'gx#module-import::t)
                                            (let* ((_%e183784183835%_
                                                    (##unchecked-structure-ref
                                                     _%in183774183788%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e183785183840%_
                                                    (##unchecked-structure-ref
                                                     _%in183774183788%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e183786183845%_
                                                    (##unchecked-structure-ref
                                                     _%in183774183788%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out183838%_
                                                     _%e183784183835%_)
                                                    (_%key183843%_
                                                     _%e183785183840%_)
                                                    (_%phi183848%_
                                                     _%e183786183845%_))
                                                (_%K183783183832%_
                                                 _%phi183848%_
                                                 _%key183843%_
                                                 _%out183838%_)))
                                            (_%try-match183776183825%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src183764%_
                              _%current-phi183768%_
                              (foldl__0
                               _%fold-e183770%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx183767%_
                                '8
                                '#f
                                '#f)))
                             _%r183765%_))))
                  (_%export!183735%_
                   (lambda (_%rbody183751%_)
                     (letrec* ((_%current-ctx183753%_
                                (gx#current-expander-context))
                               (_%fold-e183754%_
                                (lambda (_%out183758%_ _%r183759%_)
                                  (if (##structure-direct-instance-of?
                                       _%out183758%_
                                       'gx#module-export::t)
                                      (cons _%out183758%_ _%r183759%_)
                                      (if (##structure-direct-instance-of?
                                           _%out183758%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r183759%_
                                           (##unchecked-structure-ref
                                            _%out183758%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r183759%_)))))
                       (let ((_%body183756%_ (reverse _%rbody183751%_)))
                         (##unchecked-structure-set!
                          _%current-ctx183753%_
                          (foldl__0
                           _%fold-e183754%_
                           (##unchecked-structure-ref
                            _%current-ctx183753%_
                            '9
                            '#f
                            '#f)
                           _%body183756%_)
                          '9
                          '#f
                          '#f)
                         _%body183756%_))))
                  (_%expanded-export?183736%_
                   (lambda (_%e183746%_)
                     (let ((_%$e183748%_
                            (##structure-direct-instance-of?
                             _%e183746%_
                             'gx#module-export::t)))
                       (if _%$e183748%_
                           _%$e183748%_
                           (##structure-direct-instance-of?
                            _%e183746%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?183730%_)
              (let ((_%rbody183742%_
                     (gx#core-expand-import/export
                      _%stx183729%_
                      _%expanded-export?183736%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1183733%_)))
                (if _%internal-expand?183730%_
                    (reverse _%rbody183742%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!183735%_ _%rbody183742%_))
                     (gx#stx-source _%stx183729%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx183729%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx183729%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx184227%_)
        (let ((_%internal-expand?184229%_ '#f))
          (gx#core-expand-export%__%
           _%stx184227%_
           _%internal-expand?184229%_))))
    (define gx#core-expand-export%
      (lambda _g187311_
        (let ((_g187312_ (##length _g187311_)))
          (cond ((##fx= _g187312_ 1)
                 (apply gx#core-expand-export%__0 _g187311_))
                ((##fx= _g187312_ 2)
                 (apply gx#core-expand-export%__% _g187311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g187311_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd183726%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd183726%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx183696%_)
        (let* ((_%e183697183704%_ _%stx183696%_)
               (_%E183699183708%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183697183704%_)))
               (_%E183698183722%_
                (lambda ()
                  (if (gx#stx-pair? _%e183697183704%_)
                      (let ((_%e183700183712%_
                             (gx#syntax-e _%e183697183704%_)))
                        (let ((_%hd183701183715%_ (##car _%e183700183712%_))
                              (_%tl183702183717%_ (##cdr _%e183700183712%_)))
                          (let ((_%body183720%_ _%tl183702183717%_))
                            (if (gx#identifier-list? _%body183720%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body183720%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body183720%_))
                                   (gx#stx-source _%stx183696%_)))
                                (_%E183699183708%_)))))
                      (_%E183699183708%_)))))
          (_%E183698183722%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id183662%_ _%private?183663%_ _%phi183664%_ _%ctx183665%_)
        (gx#core-bind-syntax!__%
         _%id183662%_
         ((if _%private?183663%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id183662%_))
         _%private?183663%_
         _%phi183664%_
         _%ctx183665%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id183670%_)
        (let* ((_%private?183672%_ '#f)
               (_%phi183674%_ (gx#current-expander-phi))
               (_%ctx183676%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id183670%_
           _%private?183672%_
           _%phi183674%_
           _%ctx183676%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id183678%_ _%private?183679%_)
        (let* ((_%phi183681%_ (gx#current-expander-phi))
               (_%ctx183683%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id183678%_
           _%private?183679%_
           _%phi183681%_
           _%ctx183683%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id183685%_ _%private?183686%_ _%phi183687%_)
        (let ((_%ctx183689%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id183685%_
           _%private?183686%_
           _%phi183687%_
           _%ctx183689%_))))
    (define gx#core-bind-feature!
      (lambda _g187313_
        (let ((_g187314_ (##length _g187313_)))
          (cond ((##fx= _g187314_ 1)
                 (apply gx#core-bind-feature!__0 _g187313_))
                ((##fx= _g187314_ 2)
                 (apply gx#core-bind-feature!__1 _g187313_))
                ((##fx= _g187314_ 3)
                 (apply gx#core-bind-feature!__2 _g187313_))
                ((##fx= _g187314_ 4)
                 (apply gx#core-bind-feature!__% _g187313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g187313_))))))))
