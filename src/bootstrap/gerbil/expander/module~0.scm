(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770313935)
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
      (lambda _%$args152656%_
        (apply make-instance gx#module-import::t _%$args152656%_)))
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
      (lambda _%$args152653%_
        (apply make-instance gx#module-export::t _%$args152653%_)))
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
      (lambda _%$args152650%_
        (apply make-instance gx#import-set::t _%$args152650%_)))
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
      (lambda _%$args152647%_
        (apply make-instance gx#export-set::t _%$args152647%_)))
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
      (lambda _%$args152644%_
        (apply make-instance gx#import-expander::t _%$args152644%_)))
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
      (lambda _%$args152641%_
        (apply make-instance gx#export-expander::t _%$args152641%_)))
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
      (lambda _%$args152638%_
        (apply make-instance gx#import-export-expander::t _%$args152638%_)))
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
      (lambda (_%path152635%_ _%fun152636%_)
        (call-with-input-file
         (cons 'path: (cons _%path152635%_ gx#source-file-settings))
         _%fun152636%_)))
    (define gx#module-context:::init!
      (lambda (_%self152618%_
               _%id152619%_
               _%super152620%_
               _%ns152621%_
               _%path152622%_)
        (let ((_%self152625%_ _%self152618%_))
          (if (##fx< '11 (##structure-length _%self152625%_))
              (begin
                (##unchecked-structure-set!
                 _%self152625%_
                 _%id152619%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152625%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152625%_
                 _%super152620%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152625%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self152625%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self152625%_
                 _%ns152621%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152625%_
                 _%path152622%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152625%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self152625%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self152625%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self152625%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self152625%_
                     '11
                     (##structure-length _%self152625%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self152451%_ _%ctx152452%_ _%root152453%_)
        (let* ((_%self152456%_ _%self152451%_)
               (_%super152472%_
                (let ((_%$e152466%_ _%root152453%_))
                  (if _%$e152466%_
                      _%$e152466%_
                      (let ((_%$e152469%_ (gx#core-context-root__0)))
                        (if _%$e152469%_
                            _%$e152469%_
                            (let ((__obj152700
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor152701
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj152700
                                      ':init!)))
                                (if __constructor152701
                                    (__constructor152701 __obj152700)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj152700)))))))
          (if _%ctx152452%_
              (let ((_%id152475%_
                     (##structure-ref
                      _%ctx152452%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path152476%_
                     (##structure-ref
                      _%ctx152452%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in152477%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx152452%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e152478%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx152452%_)))))
                (if (##fx< '8 (##structure-length _%self152456%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self152456%_
                       _%id152475%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152456%_
                       (make-hash-table-eq 'size: (##length _%in152477%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152456%_
                       _%super152472%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152456%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152456%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152456%_
                       _%path152476%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152456%_
                       _%in152477%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152456%_
                       _%e152478%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self152456%_
                           '8
                           (##structure-length _%self152456%_)))
                (##for-each
                 (lambda (_%g152479152481%_)
                   (gx#core-bind-weak-import!__%
                    _%g152479152481%_
                    _%self152456%_))
                 _%in152477%_))
              (if (##fx< '8 (##structure-length _%self152456%_))
                  (begin
                    (##unchecked-structure-set! _%self152456%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self152456%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self152456%_
                     _%super152472%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self152456%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self152456%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self152456%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self152456%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self152456%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self152456%_
                         '8
                         (##structure-length _%self152456%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self152487%_ _%ctx152488%_)
        (let ((_%root152490%_ '#f))
          (gx#prelude-context:::init!__%
           _%self152487%_
           _%ctx152488%_
           _%root152490%_))))
    (define gx#prelude-context:::init!
      (lambda _g152707_
        (let ((_g152708_ (##length _g152707_)))
          (cond ((##fx= _g152708_ 2)
                 (apply gx#prelude-context:::init!__0 _g152707_))
                ((##fx= _g152708_ 3)
                 (apply gx#prelude-context:::init!__% _g152707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g152707_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self152325%_ _%e152326%_)
        (if (##fx< '3 (##structure-length _%self152325%_))
            (begin
              (##unchecked-structure-set!
               _%self152325%_
               _%e152326%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152325%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152325%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self152325%_
                   '3
                   (##structure-length _%self152325%_)))))
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
      (lambda (_%g151951151954%_ _%g151952151956%_)
        (gx#core-apply-user-expander__%
         _%g151951151954%_
         _%g151952151956%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g151822151825%_ _%g151823151827%_)
        (gx#core-apply-user-expander__%
         _%g151822151825%_
         _%g151823151827%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx151693%_)
        (let* ((_%path151695%_
                (##structure-ref _%ctx151693%_ '7 gx#module-context::t '#f))
               (_%path151697%_
                (if (pair? _%path151695%_)
                    (##last _%path151695%_)
                    _%path151695%_)))
          (if (string? _%path151697%_) _%path151697%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path151669%_ _%reload?151670%_ _%eval?151671%_)
        (let ((_%ctx151673%_
               ((gx#current-expander-module-import)
                _%path151669%_
                _%reload?151670%_)))
          (if (and _%ctx151673%_ _%eval?151671%_)
              (gx#eval-module _%ctx151673%_)
              '#!void)
          _%ctx151673%_)))
    (define gx#import-module__0
      (lambda (_%path151678%_)
        (let* ((_%reload?151680%_ '#f) (_%eval?151682%_ '#f))
          (gx#import-module__%
           _%path151678%_
           _%reload?151680%_
           _%eval?151682%_))))
    (define gx#import-module__1
      (lambda (_%path151684%_ _%reload?151685%_)
        (let ((_%eval?151687%_ '#f))
          (gx#import-module__%
           _%path151684%_
           _%reload?151685%_
           _%eval?151687%_))))
    (define gx#import-module
      (lambda _g152709_
        (let ((_g152710_ (##length _g152709_)))
          (cond ((##fx= _g152710_ 1) (apply gx#import-module__0 _g152709_))
                ((##fx= _g152710_ 2) (apply gx#import-module__1 _g152709_))
                ((##fx= _g152710_ 3) (apply gx#import-module__% _g152709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g152709_))))))
    (define gx#eval-module
      (lambda (_%mod151666%_)
        ((gx#current-expander-module-eval) _%mod151666%_)))
    (define gx#core-eval-module
      (lambda (_%obj151645%_)
        (letrec ((_%force-e151647%_
                  (lambda (_%getf151661%_ _%e151662%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf151661%_ _%e151662%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e151662%_))))
          (let _%recur151649%_ ((_%e151651%_ _%obj151645%_))
            (if (##structure-instance-of? _%e151651%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e151654%_
                         (gx#core-context-prelude__% _%e151651%_)))
                    (if _%$e151654%_ (_%recur151649%_ _%$e151654%_) '#!void))
                  (_%force-e151647%_ gx#module-context-e _%e151651%_))
                (if (##structure-instance-of?
                     _%e151651%_
                     'gx#prelude-context::t)
                    (_%force-e151647%_ gx#prelude-context-e _%e151651%_)
                    (if (gx#stx-string? _%e151651%_)
                        (_%recur151649%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e151651%_)))
                        (if (gx#core-library-module-path? _%e151651%_)
                            (_%recur151649%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e151651%_)))
                            (error '"cannot eval module" _%obj151645%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx151625%_)
        (let _%lp151627%_ ((_%e151629%_ _%ctx151625%_))
          (if (or (##structure-instance-of? _%e151629%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e151629%_ 'gx#local-context::t))
              (_%lp151627%_ (##unchecked-structure-ref _%e151629%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e151629%_ 'gx#prelude-context::t)
                  _%e151629%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx151641%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx151641%_))))
    (define gx#core-context-prelude
      (lambda _g152711_
        (let ((_g152712_ (##length _g152711_)))
          (cond ((##fx= _g152712_ 0)
                 (apply gx#core-context-prelude__0 _g152711_))
                ((##fx= _g152712_ 1)
                 (apply gx#core-context-prelude__% _g152711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g152711_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx151616%_)
        (let ((_%$e151618%_ (__hash-get gx#__module-registry _%ctx151616%_)))
          (if _%$e151618%_
              _%$e151618%_
              (let ((_%pre151622%_
                     (let ((__obj152702
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
                        __obj152702
                        _%ctx151616%_)
                       __obj152702)))
                (__hash-put! gx#__module-registry _%ctx151616%_ _%pre151622%_)
                _%pre151622%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath151484%_ _%reload?151485%_)
        (letrec ((_%import-source151487%_
                  (lambda (_%path151575%_)
                    (if (member _%path151575%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path151575%_)
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
                                      (let ((_g152713_
                                             (gx#core-read-module
                                              _%path151575%_)))
                                        (begin
                                          (let ((_g152714_
                                                 (if (##values? _g152713_)
                                                     (##values-length
                                                      _g152713_)
                                                     1)))
                                            (if (not (##fx= _g152714_ 4))
                                                (error "Context expects 4 values"
                                                       _g152714_)))
                                          (let ((_%pre151583%_
                                                 (##values-ref _g152713_ 0))
                                                (_%id151584%_
                                                 (##values-ref _g152713_ 1))
                                                (_%ns151585%_
                                                 (##values-ref _g152713_ 2))
                                                (_%body151586%_
                                                 (##values-ref _g152713_ 3)))
                                            (let* ((_%prelude151596%_
                                                    (if (##structure-instance-of?
                                                         _%pre151583%_
                                                         'gx#prelude-context::t)
                                                        _%pre151583%_
                                                        (if (##structure-instance-of?
                                                             _%pre151583%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre151583%_)
                                                            (if (string? _%pre151583%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre151583%_))
                        (if (not _%pre151583%_)
                            (let ((_%$e151592%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e151592%_
                                  _%$e151592%_
                                  (let ((__obj152703
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
                                     __obj152703
                                     '#f)
                                    __obj152703)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath151484%_
                                   _%pre151583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx151598%_
                                                    (let ((__obj152704
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
                                                       __obj152704
                                                       _%id151584%_
                                                       _%prelude151596%_
                                                       _%ns151585%_
                                                       _%path151575%_)
                                                      __obj152704))
                                                   (_%body151600%_
                                                    (gx#core-expand-module-begin
                                                     _%body151586%_
                                                     _%ctx151598%_))
                                                   (_%body151602%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body151600%_)
                                                     _%path151575%_
                                                     _%ctx151598%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx151598%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body151602%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx151598%_
                                               _%body151602%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path151575%_
                                               _%ctx151598%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id151584%_
                                               _%ctx151598%_)
                                              _%ctx151598%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path151575%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule151488%_
                  (lambda (_%rpath151504%_)
                    (let* ((_%rpath151505151512%_ _%rpath151504%_)
                           (_%E151507151515%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath151505151512%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K151508151563%_
                            (lambda (_%refs151518%_ _%origin151519%_)
                              (let ((_%ctx151521%_
                                     (if _%origin151519%_
                                         (gx#core-import-module__%
                                          _%origin151519%_
                                          _%reload?151485%_)
                                         (gx#current-expander-context))))
                                (let _%lp151523%_ ((_%rest151525%_
                                                    _%refs151518%_)
                                                   (_%ctx151526%_
                                                    _%ctx151521%_))
                                  (let* ((_%rest151527151535%_ _%rest151525%_)
                                         (_%else151529151543%_
                                          (lambda () _%ctx151526%_))
                                         (_%K151531151551%_
                                          (lambda (_%rest151546%_ _%id151547%_)
                                            (let ((_%bind151549%_
                                                   (gx#resolve-identifier__%
                                                    _%id151547%_
                                                    '0
                                                    _%ctx151526%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind151549%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind151549%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp151523%_
                                                   _%rest151546%_
                                                   (##unchecked-structure-ref
                                                    _%bind151549%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath151504%_
                                                         _%id151547%_
                                                         _%bind151549%_))))))
                                    (if (pair? _%rest151527151535%_)
                                        (let ((_%hd151532151554%_
                                               (##car _%rest151527151535%_))
                                              (_%tl151533151556%_
                                               (##cdr _%rest151527151535%_)))
                                          (let* ((_%id151559%_
                                                  _%hd151532151554%_)
                                                 (_%rest151561%_
                                                  _%tl151533151556%_))
                                            (_%K151531151551%_
                                             _%rest151561%_
                                             _%id151559%_)))
                                        (_%else151529151543%_))))))))
                      (if (pair? _%rpath151505151512%_)
                          (let ((_%hd151509151566%_
                                 (##car _%rpath151505151512%_))
                                (_%tl151510151568%_
                                 (##cdr _%rpath151505151512%_)))
                            (let* ((_%origin151571%_ _%hd151509151566%_)
                                   (_%refs151573%_ _%tl151510151568%_))
                              (_%K151508151563%_
                               _%refs151573%_
                               _%origin151571%_)))
                          (_%E151507151515%_))))))
          (let ((_%$e151490%_
                 (if (not _%reload?151485%_)
                     (__hash-get gx#__module-registry _%rpath151484%_)
                     '#f)))
            (if _%$e151490%_
                _%$e151490%_
                (if (list? _%rpath151484%_)
                    (_%import-submodule151488%_ _%rpath151484%_)
                    (if (gx#core-library-module-path? _%rpath151484%_)
                        (let ((_%ctx151495%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath151484%_)
                                _%reload?151485%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath151484%_
                           _%ctx151495%_)
                          _%ctx151495%_)
                        (let* ((_%npath151498%_
                                (path-normalize _%rpath151484%_))
                               (_%$e151500%_
                                (if (not _%reload?151485%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath151498%_)
                                    '#f)))
                          (if _%$e151500%_
                              _%$e151500%_
                              (_%import-source151487%_
                               _%npath151498%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath151609%_)
        (let ((_%reload?151611%_ '#f))
          (gx#core-import-module__% _%rpath151609%_ _%reload?151611%_))))
    (define gx#core-import-module
      (lambda _g152715_
        (let ((_g152716_ (##length _g152715_)))
          (cond ((##fx= _g152716_ 1)
                 (apply gx#core-import-module__0 _g152715_))
                ((##fx= _g152716_ 2)
                 (apply gx#core-import-module__% _g152715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g152715_))))))
    (define gx#core-read-module
      (lambda (_%path151473%_)
        (__with-catch
         (lambda (_%exn151475%_)
           (if (and (datum-parsing-exception? _%exn151475%_)
                    (eq? (datum-parsing-exception-filepos _%exn151475%_) '0))
               (gx#core-read-module/lang _%path151473%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path151473%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g151477151479%_)
                      (display-exception__% _%exn151475%_ _%g151477151479%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path151473%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path151325%_)
        (let _%lp151327%_ ((_%body151329%_
                            (read-syntax-from-file _%path151325%_))
                           (_%pre151330%_ '#f)
                           (_%ns151331%_ '#f)
                           (_%pkg151332%_ '#f))
          (let* ((_%e151333151357%_ _%body151329%_)
                 (_%E151349151383%_
                  (lambda ()
                    (let ((_g152717_
                           (if _%pkg151332%_
                               (values _%pre151330%_
                                       _%ns151331%_
                                       _%pkg151332%_)
                               (gx#core-read-module-package
                                _%path151325%_
                                _%pre151330%_
                                _%ns151331%_))))
                      (begin
                        (let ((_g152718_
                               (if (##values? _g152717_)
                                   (##values-length _g152717_)
                                   1)))
                          (if (not (##fx= _g152718_ 3))
                              (error "Context expects 3 values" _g152718_)))
                        (let ((_%pre151361%_ (##values-ref _g152717_ 0))
                              (_%ns151362%_ (##values-ref _g152717_ 1))
                              (_%pkg151363%_ (##values-ref _g152717_ 2)))
                          (let* ((_%prelude151369%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre151361%_)
                                      (gx#syntax-local-e__0 _%pre151361%_)
                                      (if (gx#core-library-module-path?
                                           _%pre151361%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre151361%_)
                                          (if (gx#stx-string? _%pre151361%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre151361%_
                                               _%path151325%_)
                                              (gx#stx-e _%pre151361%_)))))
                                 (_%path-id151371%_
                                  (gx#core-module-path->namespace
                                   _%path151325%_))
                                 (_%pkg-id151373%_
                                  (if _%pkg151363%_
                                      (##string-append
                                       _%pkg151363%_
                                       '"/"
                                       _%path-id151371%_)
                                      _%path-id151371%_))
                                 (_%module-id151375%_
                                  (##string->symbol _%pkg-id151373%_))
                                 (_%module-ns151380%_
                                  (if (eq? _%ns151362%_ '#!void)
                                      '#f
                                      (let ((_%$e151377%_ _%ns151362%_))
                                        (if _%$e151377%_
                                            _%$e151377%_
                                            _%pkg-id151373%_)))))
                            (values _%prelude151369%_
                                    _%module-id151375%_
                                    _%module-ns151380%_
                                    _%body151329%_)))))))
                 (_%E151342151415%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151333151357%_)
                        (let ((_%e151350151387%_
                               (gx#syntax-e _%e151333151357%_)))
                          (let ((_%hd151351151390%_ (##car _%e151350151387%_))
                                (_%tl151352151392%_ (##cdr _%e151350151387%_)))
                            (if (eq? (gx#stx-e _%hd151351151390%_) 'package:)
                                (if (gx#stx-pair? _%tl151352151392%_)
                                    (let ((_%e151353151395%_
                                           (gx#syntax-e _%tl151352151392%_)))
                                      (let ((_%hd151354151398%_
                                             (##car _%e151353151395%_))
                                            (_%tl151355151400%_
                                             (##cdr _%e151353151395%_)))
                                        (let* ((_%pkg151403%_
                                                _%hd151354151398%_)
                                               (_%rest151405%_
                                                _%tl151355151400%_)
                                               (_%pkg151413%_
                                                (if (gx#identifier?
                                                     _%pkg151403%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg151403%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg151403%_)
                                                            (gx#stx-false?
                                                             _%pkg151403%_))
                                                        (gx#stx-e
                                                         _%pkg151403%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg151403%_)))))
                                          (_%lp151327%_
                                           _%rest151405%_
                                           _%pre151330%_
                                           _%ns151331%_
                                           _%pkg151413%_))))
                                    (_%E151349151383%_))
                                (_%E151349151383%_))))
                        (_%E151349151383%_))))
                 (_%E151335151445%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151333151357%_)
                        (let ((_%e151343151419%_
                               (gx#syntax-e _%e151333151357%_)))
                          (let ((_%hd151344151422%_ (##car _%e151343151419%_))
                                (_%tl151345151424%_ (##cdr _%e151343151419%_)))
                            (if (eq? (gx#stx-e _%hd151344151422%_) 'namespace:)
                                (if (gx#stx-pair? _%tl151345151424%_)
                                    (let ((_%e151346151427%_
                                           (gx#syntax-e _%tl151345151424%_)))
                                      (let ((_%hd151347151430%_
                                             (##car _%e151346151427%_))
                                            (_%tl151348151432%_
                                             (##cdr _%e151346151427%_)))
                                        (let* ((_%ns151435%_
                                                _%hd151347151430%_)
                                               (_%rest151437%_
                                                _%tl151348151432%_)
                                               (_%ns151443%_
                                                (if (gx#identifier?
                                                     _%ns151435%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns151435%_))
                                                    (if (gx#stx-string?
                                                         _%ns151435%_)
                                                        (gx#stx-e _%ns151435%_)
                                                        (if (gx#stx-false?
                                                             _%ns151435%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns151435%_))))))
                                          (_%lp151327%_
                                           _%rest151437%_
                                           _%pre151330%_
                                           _%ns151443%_
                                           _%pkg151332%_))))
                                    (_%E151342151415%_))
                                (_%E151342151415%_))))
                        (_%E151342151415%_))))
                 (_%E151334151469%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151333151357%_)
                        (let ((_%e151336151449%_
                               (gx#syntax-e _%e151333151357%_)))
                          (let ((_%hd151337151452%_ (##car _%e151336151449%_))
                                (_%tl151338151454%_ (##cdr _%e151336151449%_)))
                            (if (eq? (gx#stx-e _%hd151337151452%_) 'prelude:)
                                (if (gx#stx-pair? _%tl151338151454%_)
                                    (let ((_%e151339151457%_
                                           (gx#syntax-e _%tl151338151454%_)))
                                      (let ((_%hd151340151460%_
                                             (##car _%e151339151457%_))
                                            (_%tl151341151462%_
                                             (##cdr _%e151339151457%_)))
                                        (let* ((_%prelude151465%_
                                                _%hd151340151460%_)
                                               (_%rest151467%_
                                                _%tl151341151462%_))
                                          (_%lp151327%_
                                           _%rest151467%_
                                           _%prelude151465%_
                                           _%ns151331%_
                                           _%pkg151332%_))))
                                    (_%E151335151445%_))
                                (_%E151335151445%_))))
                        (_%E151335151445%_)))))
            (_%E151334151469%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path151146%_)
        (letrec ((_%default-read-module-body151148%_
                  (lambda (_%inp151317%_)
                    (let _%lp151319%_ ((_%body151321%_ '()))
                      (let ((_%next151323%_ (read-syntax__% _%inp151317%_)))
                        (if (eof-object? _%next151323%_)
                            (reverse _%body151321%_)
                            (_%lp151319%_
                             (cons _%next151323%_ _%body151321%_)))))))
                 (_%read-body151149%_
                  (lambda (_%inp151234%_
                           _%pre151235%_
                           _%ns151236%_
                           _%pkg151237%_
                           _%args151238%_)
                    (let ((_g152719_
                           (if _%pkg151237%_
                               (values _%pre151235%_
                                       _%ns151236%_
                                       _%pkg151237%_)
                               (gx#core-read-module-package
                                _%path151146%_
                                _%pre151235%_
                                _%ns151236%_))))
                      (begin
                        (let ((_g152720_
                               (if (##values? _g152719_)
                                   (##values-length _g152719_)
                                   1)))
                          (if (not (##fx= _g152720_ 3))
                              (error "Context expects 3 values" _g152720_)))
                        (let ((_%pre151240%_ (##values-ref _g152719_ 0))
                              (_%ns151241%_ (##values-ref _g152719_ 1))
                              (_%pkg151242%_ (##values-ref _g152719_ 2)))
                          (let* ((_%prelude151244%_
                                  (gx#import-module__0 _%pre151240%_))
                                 (_%read-module-body151299%_
                                  (let ((_%$e151290%_
                                         (__find (lambda (_%e151245151247%_)
                                                   (let* ((_%e151245151249151259%_
                                                           _%e151245151247%_)
                                                          (_%else151251151267%_
                                                           (lambda () '#f))
                                                          (_%K151253151271%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e151245151249151259%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e151254151274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e151245151249151259%_
                          '1
                          '#f
                          '#f))
                        (_%e151255151277%_
                         (##unchecked-structure-ref
                          _%e151245151249151259%_
                          '2
                          '#f
                          '#f))
                        (_%e151256151280%_
                         (##unchecked-structure-ref
                          _%e151245151249151259%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e151256151280%_ '1)
                       (let ((_%e151257151283%_
                              (##unchecked-structure-ref
                               _%e151245151249151259%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g151285151287%_)
                                (eq? _%g151285151287%_ 'read-module-body))
                              _%e151257151283%_)
                             (_%K151253151271%_)
                             (_%else151251151267%_)))
                       (_%else151251151267%_)))
                 (_%else151251151267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude151244%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e151290%_
                                        ((lambda (_%xport151293%_)
                                           (let ((_%proc151296%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport151293%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc151296%_)
                                                 _%proc151296%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path151146%_
                                                  _%pre151240%_
                                                  _%proc151296%_))))
                                         _%$e151290%_)
                                        _%default-read-module-body151148%_)))
                                 (_%path-id151301%_
                                  (gx#core-module-path->namespace
                                   _%path151146%_))
                                 (_%pkg-id151303%_
                                  (if _%pkg151242%_
                                      (##string-append
                                       _%pkg151242%_
                                       '"/"
                                       _%path-id151301%_)
                                      _%path-id151301%_))
                                 (_%module-id151305%_
                                  (##string->symbol _%pkg-id151303%_))
                                 (_%module-ns151310%_
                                  (let ((_%$e151307%_ _%ns151241%_))
                                    (if _%$e151307%_
                                        _%$e151307%_
                                        _%pkg-id151303%_)))
                                 (_%body151314%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body151299%_
                                         _%inp151234%_))
                                      gx#current-module-reader-args
                                      _%args151238%_))
                                   gx#current-module-reader-path
                                   _%path151146%_)))
                            (values _%prelude151244%_
                                    _%module-id151305%_
                                    _%module-ns151310%_
                                    _%body151314%_)))))))
                 (_%string-e151150%_
                  (lambda (_%obj151228%_ _%what151229%_)
                    (if (string? _%obj151228%_)
                        _%obj151228%_
                        (if (symbol? _%obj151228%_)
                            (##symbol->string _%obj151228%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what151229%_)
                             _%path151146%_
                             _%obj151228%_)))))
                 (_%read-lang-args151151%_
                  (lambda (_%inp151183%_ _%args151184%_)
                    (let* ((_%args151185151193%_ _%args151184%_)
                           (_%else151187151201%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path151146%_)))
                           (_%K151189151216%_
                            (lambda (_%args151204%_ _%prelude151205%_)
                              (let* ((_%pkg151207%_
                                      (pgetq__0 'package: _%args151204%_))
                                     (_%pkg151209%_
                                      (if _%pkg151207%_
                                          (_%string-e151150%_
                                           _%pkg151207%_
                                           '"package")
                                          '#f))
                                     (_%ns151211%_
                                      (pgetq__0 'namespace: _%args151204%_))
                                     (_%ns151213%_
                                      (if _%ns151211%_
                                          (_%string-e151150%_
                                           _%ns151211%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body151149%_
                                 _%inp151183%_
                                 _%prelude151205%_
                                 _%ns151213%_
                                 _%pkg151209%_
                                 _%args151204%_)))))
                      (if (pair? _%args151185151193%_)
                          (let ((_%hd151190151219%_
                                 (##car _%args151185151193%_))
                                (_%tl151191151221%_
                                 (##cdr _%args151185151193%_)))
                            (let* ((_%prelude151224%_ _%hd151190151219%_)
                                   (_%args151226%_ _%tl151191151221%_))
                              (_%K151189151216%_
                               _%args151226%_
                               _%prelude151224%_)))
                          (_%else151187151201%_)))))
                 (_%read-lang151152%_
                  (lambda (_%inp151157%_)
                    (let* ((_%head151159%_ (read-line _%inp151157%_))
                           (_%$e151161%_
                            (string-index__0 _%head151159%_ '#\space)))
                      (if _%$e151161%_
                          ((lambda (_%ix151164%_)
                             (let ((_%lang151166%_
                                    (substring
                                     _%head151159%_
                                     '0
                                     _%ix151164%_)))
                               (if (equal? _%lang151166%_ '"#lang")
                                   (let* ((_%rest151168%_
                                           (substring
                                            _%head151159%_
                                            (##fx+ _%ix151164%_ '1)
                                            (string-length _%head151159%_)))
                                          (_%args151179%_
                                           (__with-catch
                                            (lambda (_%g151169151171%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path151146%_
                                               _%g151169151171%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest151168%_
                                               (lambda (_%g151174151176%_)
                                                 (read-all
                                                  _%g151174151176%_
                                                  read)))))))
                                     (_%read-lang-args151151%_
                                      _%inp151157%_
                                      _%args151179%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path151146%_))))
                           _%$e151161%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path151146%_)))))
                 (_%read-e151153%_
                  (lambda (_%inp151155%_)
                    (if (eq? (peek-char _%inp151155%_) '#\#)
                        (_%read-lang151152%_ _%inp151155%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path151146%_)))))
          (gx#call-with-input-source-file _%path151146%_ _%read-e151153%_))))
    (define gx#core-read-module-package
      (lambda (_%path151094%_ _%pre151095%_ _%ns151096%_)
        (letrec ((_%string-e151098%_
                  (lambda (_%e151141%_)
                    (if (symbol? _%e151141%_)
                        (##symbol->string _%e151141%_)
                        (if (string? _%e151141%_)
                            _%e151141%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e151141%_))))))
          (let _%lp151100%_ ((_%dir151102%_ (path-directory _%path151094%_))
                             (_%pkg-path151103%_ '()))
            (let ((_%gerbil.pkg151105%_
                   (path-expand '"gerbil.pkg" _%dir151102%_)))
              (if (##file-exists? _%gerbil.pkg151105%_)
                  (let ((_%plist151107%_
                         (gx#core-library-package-plist__% _%dir151102%_ '#t)))
                    (if (null? _%plist151107%_)
                        (let ((_%pkg151110%_
                               (if (null? _%pkg-path151103%_)
                                   '#f
                                   (string-join _%pkg-path151103%_ '"/"))))
                          (values _%pre151095%_ _%ns151096%_ _%pkg151110%_))
                        (if (list? _%plist151107%_)
                            (let* ((_%root151113%_
                                    (pgetq__0 'package: _%plist151107%_))
                                   (_%pkg151117%_
                                    (let ((_%pkg-path151115%_
                                           (if _%root151113%_
                                               (cons (_%string-e151098%_
                                                      _%root151113%_)
                                                     _%pkg-path151103%_)
                                               _%pkg-path151103%_)))
                                      (if (null? _%pkg-path151115%_)
                                          '#f
                                          (string-join
                                           _%pkg-path151115%_
                                           '"/"))))
                                   (_%ns151124%_
                                    (let ((_%ns151122%_
                                           (let ((_%$e151119%_ _%ns151096%_))
                                             (if _%$e151119%_
                                                 _%$e151119%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist151107%_)))))
                                      (if _%ns151122%_
                                          (_%string-e151098%_ _%ns151122%_)
                                          '#f)))
                                   (_%pre151129%_
                                    (let ((_%$e151126%_ _%pre151095%_))
                                      (if _%$e151126%_
                                          _%$e151126%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist151107%_)))))
                              (values _%pre151129%_
                                      _%ns151124%_
                                      _%pkg151117%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist151107%_))))
                  (let ((_%dir*151133%_
                         (path-strip-trailing-directory-separator
                          _%dir151102%_)))
                    (if (or (__string-empty? _%dir*151133%_)
                            (equal? _%dir151102%_ _%dir*151133%_))
                        (values _%pre151095%_ _%ns151096%_ '#f)
                        (let ((_%xpath151138%_
                               (path-strip-directory _%dir*151133%_))
                              (_%xdir151139%_ (path-directory _%dir*151133%_)))
                          (_%lp151100%_
                           _%xdir151139%_
                           (cons _%xpath151138%_ _%pkg-path151103%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path151092%_)
        (path-strip-extension (path-strip-directory _%path151092%_))))
    (define gx#core-module-path->id
      (lambda (_%path151090%_)
        (##string->symbol (gx#core-module-path->namespace _%path151090%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path151069%_ _%rel151070%_)
        (let* ((_%path151072%_ (gx#stx-e _%stx-path151069%_))
               (_%path151074%_
                (if (__string-empty? (path-extension _%path151072%_))
                    (##string-append _%path151072%_ '".ss")
                    _%path151072%_)))
          (gx#core-resolve-path__%
           _%path151074%_
           (let ((_%$e151077%_ (gx#stx-source _%stx-path151069%_)))
             (if _%$e151077%_ _%$e151077%_ _%rel151070%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path151083%_)
        (let ((_%rel151085%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path151083%_ _%rel151085%_))))
    (define gx#core-resolve-module-path
      (lambda _g152721_
        (let ((_g152722_ (##length _g152721_)))
          (cond ((##fx= _g152722_ 1)
                 (apply gx#core-resolve-module-path__0 _g152721_))
                ((##fx= _g152722_ 2)
                 (apply gx#core-resolve-module-path__% _g152721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g152721_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath150954%_)
        (let* ((_%spath150956%_ (symbol->string (gx#stx-e _%libpath150954%_)))
               (_%spath150958%_
                (substring
                 _%spath150956%_
                 '1
                 (##string-length _%spath150956%_)))
               (_%ext150960%_ (path-extension _%spath150958%_))
               (_%ssi150962%_
                (if (__string-empty? _%ext150960%_)
                    (##string-append _%spath150958%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath150958%_)
                     '".ssi")))
               (_%srcs150966%_
                (if (__string-empty? _%ext150960%_)
                    (##map (lambda (_%ext150964%_)
                             (string-append _%spath150958%_ _%ext150964%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath150958%_ '()))))
          (let _%lp150969%_ ((_%rest150971%_ (load-path)))
            (let* ((_%rest150972150981%_ _%rest150971%_)
                   (_%E150975150985%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest150972150981%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K150977151056%_
                     (lambda (_%rest150996%_ _%dir150997%_)
                       (letrec ((_%resolve150999%_
                                 (lambda (_%ssi151012%_ _%srcs151013%_)
                                   (let ((_%compiled-path151015%_
                                          (path-expand
                                           _%ssi151012%_
                                           _%dir150997%_)))
                                     (if (##file-exists?
                                          _%compiled-path151015%_)
                                         (path-normalize
                                          _%compiled-path151015%_)
                                         (let _%lpr151017%_ ((_%rest-src151019%_
                                                              _%srcs151013%_))
                                           (let* ((_%rest-src151020151028%_
                                                   _%rest-src151019%_)
                                                  (_%else151022151036%_
                                                   (lambda ()
                                                     (_%lp150969%_
                                                      _%rest150996%_)))
                                                  (_%K151024151044%_
                                                   (lambda (_%rest-src151039%_
                                                            _%src151040%_)
                                                     (let ((_%src-path151042%_
                                                            (path-expand
                                                             _%src151040%_
                                                             _%dir150997%_)))
                                                       (if (##file-exists?
                                                            _%src-path151042%_)
                                                           (path-normalize
                                                            _%src-path151042%_)
                                                           (_%lpr151017%_
                                                            _%rest-src151039%_))))))
                                             (if (pair? _%rest-src151020151028%_)
                                                 (let ((_%hd151025151047%_
                                                        (##car _%rest-src151020151028%_))
                                                       (_%tl151026151049%_
                                                        (##cdr _%rest-src151020151028%_)))
                                                   (let* ((_%src151052%_
                                                           _%hd151025151047%_)
                                                          (_%rest-src151054%_
                                                           _%tl151026151049%_))
                                                     (_%K151024151044%_
                                                      _%rest-src151054%_
                                                      _%src151052%_)))
                                                 (_%else151022151036%_)))))))))
                         (let ((_%$e151001%_
                                (gx#core-library-package-path-prefix
                                 _%dir150997%_)))
                           (if _%$e151001%_
                               ((lambda (_%prefix151004%_)
                                  (if (string-prefix?
                                       _%prefix151004%_
                                       _%spath150958%_)
                                      (let ((_%ssi151008%_
                                             (substring
                                              _%ssi150962%_
                                              (string-length _%prefix151004%_)
                                              (##string-length _%ssi150962%_)))
                                            (_%srcs151009%_
                                             (##map (lambda (_%src151006%_)
                                                      (substring
                                                       _%src151006%_
                                                       (string-length
                                                        _%prefix151004%_)
                                                       (string-length
                                                        _%src151006%_)))
                                                    _%srcs150966%_)))
                                        (_%resolve150999%_
                                         _%ssi151008%_
                                         _%srcs151009%_))
                                      (_%lp150969%_ _%rest150996%_)))
                                _%$e151001%_)
                               (_%resolve150999%_
                                _%ssi150962%_
                                _%srcs150966%_))))))
                    (_%K150976150990%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath150954%_))))
                (let ((_%try-match150974150993%_
                       (lambda ()
                         (if (null? _%rest150972150981%_)
                             (_%K150976150990%_)
                             (_%E150975150985%_)))))
                  (if (pair? _%rest150972150981%_)
                      (let ((_%tl150979151061%_ (##cdr _%rest150972150981%_))
                            (_%hd150978151059%_ (##car _%rest150972150981%_)))
                        (let ((_%dir151064%_ _%hd150978151059%_)
                              (_%rest151066%_ _%tl150979151061%_))
                          (_%K150977151056%_ _%rest151066%_ _%dir151064%_)))
                      (_%try-match150974150993%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath150922%_)
        (letrec ((_%resolve150924%_
                  (lambda (_%path150945%_ _%base150946%_)
                    (let ((_%$e150948%_
                           (string-rindex__0 _%base150946%_ '#\/)))
                      (if _%$e150948%_
                          ((lambda (_%idx150951%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base150946%_ '0 _%idx150951%_)
                                '"/"
                                _%path150945%_))))
                           _%$e150948%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path150945%_))))))))
          (let ((_%spath150926%_ (symbol->string (gx#stx-e _%modpath150922%_)))
                (_%mod150927%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod150927%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath150922%_))
            (let ((_%mpath150929%_
                   (symbol->string
                    (##structure-ref
                     _%mod150927%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp150931%_ ((_%spath150933%_ _%spath150926%_)
                                 (_%mpath150934%_ _%mpath150929%_))
                (if (string-prefix? '"../" _%spath150933%_)
                    (let ((_%$e150937%_
                           (string-rindex__0 _%mpath150934%_ '#\/)))
                      (if _%$e150937%_
                          ((lambda (_%idx150940%_)
                             (_%lp150931%_
                              (substring
                               _%spath150933%_
                               '3
                               (string-length _%spath150933%_))
                              (substring _%mpath150934%_ '0 _%idx150940%_)))
                           _%$e150937%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath150922%_)))
                    (if (string-prefix? '"./" _%spath150933%_)
                        (_%lp150931%_
                         (substring
                          _%spath150933%_
                          '2
                          (string-length _%spath150933%_))
                         _%mpath150934%_)
                        (_%resolve150924%_
                         _%spath150933%_
                         _%mpath150934%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir150914%_)
        (let ((_%$e150916%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir150914%_))))
          (if _%$e150916%_
              ((lambda (_%pkg150919%_)
                 (##string-append (symbol->string _%pkg150919%_) '"/"))
               _%$e150916%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir150884%_ _%exists?150885%_)
        (let ((_%$e150887%_ (__hash-get gx#__module-pkg-cache _%dir150884%_)))
          (if _%$e150887%_
              _%$e150887%_
              (let* ((_%gerbil.pkg150891%_
                      (path-expand '"gerbil.pkg" _%dir150884%_))
                     (_%plist150901%_
                      (if (or _%exists?150885%_
                              (##file-exists? _%gerbil.pkg150891%_))
                          (let ((_%e150896%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg150891%_
                                  read)))
                            (if (eof-object? _%e150896%_)
                                '()
                                (if (list? _%e150896%_)
                                    _%e150896%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg150891%_
                                     _%e150896%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir150884%_
                 _%plist150901%_)
                _%plist150901%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir150907%_)
        (let ((_%exists?150909%_ '#f))
          (gx#core-library-package-plist__% _%dir150907%_ _%exists?150909%_))))
    (define gx#core-library-package-plist
      (lambda _g152723_
        (let ((_g152724_ (##length _g152723_)))
          (cond ((##fx= _g152724_ 1)
                 (apply gx#core-library-package-plist__0 _g152723_))
                ((##fx= _g152724_ 2)
                 (apply gx#core-library-package-plist__% _g152723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g152723_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx150881%_)
        (gx#core-special-module-path? _%stx150881%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx150879%_)
        (gx#core-special-module-path? _%stx150879%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx150874%_ _%char150875%_)
        (if (gx#identifier? _%stx150874%_)
            (if (interned-symbol? (gx#stx-e _%stx150874%_))
                (let ((_%str150877%_
                       (symbol->string (gx#stx-e _%stx150874%_))))
                  (if (##fx> (##string-length _%str150877%_) '1)
                      (eq? (string-ref _%str150877%_ '0) _%char150875%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx150868%_)
        (gx#core-bound-identifier?__%
         _%stx150868%_
         (lambda (_%g150869150871%_)
           (gx#expander-binding?__% _%g150869150871%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx150862%_)
        (gx#core-bound-identifier?__%
         _%stx150862%_
         (lambda (_%g150863150865%_)
           (gx#expander-binding?__% _%g150863150865%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx150849%_)
        (letrec ((_%module-prelude?150851%_
                  (lambda (_%e150857%_)
                    (let ((_%$e150859%_
                           (##structure-instance-of?
                            _%e150857%_
                            'gx#module-context::t)))
                      (if _%$e150859%_
                          _%$e150859%_
                          (##structure-instance-of?
                           _%e150857%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx150849%_
           (lambda (_%g150852150854%_)
             (gx#expander-binding?__%
              _%g150852150854%_
              _%module-prelude?150851%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in150780%_ _%ctx150781%_ _%force-weak?150782%_)
        (let* ((_%in150783150792%_ _%in150780%_)
               (_%E150785150795%_
                (lambda ()
                  (error '"No clause matching"
                         _%in150783150792%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K150786150808%_
                (lambda (_%weak?150798%_
                         _%phi150799%_
                         _%key150800%_
                         _%source150801%_)
                  (gx#core-bind!__%
                   _%key150800%_
                   (let* ((_%e150803%_
                           (gx#core-resolve-module-export _%source150801%_))
                          (__obj152705
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
                      __obj152705
                      (##unchecked-structure-ref _%e150803%_ '1 '#f '#f)
                      _%key150800%_
                      _%phi150799%_
                      _%e150803%_
                      (##unchecked-structure-ref _%source150801%_ '1 '#f '#f)
                      (let ((_%$e150805%_ _%force-weak?150782%_))
                        (if _%$e150805%_ _%$e150805%_ _%weak?150798%_)))
                     __obj152705)
                   gx#core-context-rebind?
                   _%phi150799%_
                   _%ctx150781%_))))
          (if (##structure-direct-instance-of?
               _%in150783150792%_
               'gx#module-import::t)
              (let* ((_%e150787150811%_
                      (##unchecked-structure-ref
                       _%in150783150792%_
                       '1
                       '#f
                       '#f))
                     (_%source150814%_ _%e150787150811%_)
                     (_%e150788150816%_
                      (##unchecked-structure-ref
                       _%in150783150792%_
                       '2
                       '#f
                       '#f))
                     (_%key150819%_ _%e150788150816%_)
                     (_%e150789150821%_
                      (##unchecked-structure-ref
                       _%in150783150792%_
                       '3
                       '#f
                       '#f))
                     (_%phi150824%_ _%e150789150821%_)
                     (_%e150790150826%_
                      (##unchecked-structure-ref
                       _%in150783150792%_
                       '4
                       '#f
                       '#f))
                     (_%weak?150829%_ _%e150790150826%_))
                (_%K150786150808%_
                 _%weak?150829%_
                 _%phi150824%_
                 _%key150819%_
                 _%source150814%_))
              (_%E150785150795%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in150834%_)
        (let* ((_%ctx150836%_ (gx#current-expander-context))
               (_%force-weak?150838%_ '#f))
          (gx#core-bind-import!__%
           _%in150834%_
           _%ctx150836%_
           _%force-weak?150838%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in150840%_ _%ctx150841%_)
        (let ((_%force-weak?150843%_ '#f))
          (gx#core-bind-import!__%
           _%in150840%_
           _%ctx150841%_
           _%force-weak?150843%_))))
    (define gx#core-bind-import!
      (lambda _g152725_
        (let ((_g152726_ (##length _g152725_)))
          (cond ((##fx= _g152726_ 1) (apply gx#core-bind-import!__0 _g152725_))
                ((##fx= _g152726_ 2) (apply gx#core-bind-import!__1 _g152725_))
                ((##fx= _g152726_ 3) (apply gx#core-bind-import!__% _g152725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g152725_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in150766%_ _%ctx150767%_)
        (gx#core-bind-import!__% _%in150766%_ _%ctx150767%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in150772%_)
        (let ((_%ctx150774%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in150772%_ _%ctx150774%_))))
    (define gx#core-bind-weak-import!
      (lambda _g152727_
        (let ((_g152728_ (##length _g152727_)))
          (cond ((##fx= _g152728_ 1)
                 (apply gx#core-bind-weak-import!__0 _g152727_))
                ((##fx= _g152728_ 2)
                 (apply gx#core-bind-weak-import!__% _g152727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g152727_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out150659%_)
        (letrec ((_%subst150661%_
                  (lambda (_%key150706%_)
                    (let* ((_%key150707150715%_ _%key150706%_)
                           (_%else150709150723%_ (lambda () _%key150706%_))
                           (_%K150711150753%_
                            (lambda (_%mark150726%_ _%id150727%_)
                              (let* ((_%mark150728150734%_ _%mark150726%_)
                                     (_%E150730150737%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark150728150734%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K150731150745%_
                                      (lambda (_%subst150740%_)
                                        (let ((_%$e150742%_
                                               (if _%subst150740%_
                                                   (hash-get
                                                    _%subst150740%_
                                                    _%id150727%_)
                                                   '#f)))
                                          (if _%$e150742%_
                                              _%$e150742%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key150706%_))))))
                                (if (##structure-instance-of?
                                     _%mark150728150734%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e150732150748%_
                                            (##unchecked-structure-ref
                                             _%mark150728150734%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst150751%_ _%e150732150748%_))
                                      (_%K150731150745%_ _%subst150751%_))
                                    (_%E150730150737%_))))))
                      (if (pair? _%key150707150715%_)
                          (let ((_%hd150712150756%_
                                 (##car _%key150707150715%_))
                                (_%tl150713150758%_
                                 (##cdr _%key150707150715%_)))
                            (let* ((_%id150761%_ _%hd150712150756%_)
                                   (_%mark150763%_ _%tl150713150758%_))
                              (_%K150711150753%_ _%mark150763%_ _%id150761%_)))
                          (_%else150709150723%_))))))
          (let* ((_%out150662150672%_ _%out150659%_)
                 (_%E150664150675%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out150662150672%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K150665150682%_
                  (lambda (_%phi150678%_ _%key150679%_ _%ctx150680%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx150680%_ _%phi150678%_)
                     (_%subst150661%_ _%key150679%_)))))
            (if (##structure-direct-instance-of?
                 _%out150662150672%_
                 'gx#module-export::t)
                (let* ((_%e150666150685%_
                        (##unchecked-structure-ref
                         _%out150662150672%_
                         '1
                         '#f
                         '#f))
                       (_%ctx150688%_ _%e150666150685%_)
                       (_%e150667150690%_
                        (##unchecked-structure-ref
                         _%out150662150672%_
                         '2
                         '#f
                         '#f))
                       (_%key150693%_ _%e150667150690%_)
                       (_%e150668150695%_
                        (##unchecked-structure-ref
                         _%out150662150672%_
                         '3
                         '#f
                         '#f))
                       (_%phi150698%_ _%e150668150695%_)
                       (_%e150669150700%_
                        (##unchecked-structure-ref
                         _%out150662150672%_
                         '4
                         '#f
                         '#f))
                       (_%e150670150703%_
                        (##unchecked-structure-ref
                         _%out150662150672%_
                         '5
                         '#f
                         '#f)))
                  (_%K150665150682%_
                   _%phi150698%_
                   _%key150693%_
                   _%ctx150688%_))
                (_%E150664150675%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out150585%_ _%rename150586%_ _%dphi150587%_)
        (let* ((_%out150588150598%_ _%out150585%_)
               (_%E150590150601%_
                (lambda ()
                  (error '"No clause matching"
                         _%out150588150598%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K150591150613%_
                (lambda (_%weak?150604%_
                         _%name150605%_
                         _%phi150606%_
                         _%key150607%_
                         _%ctx150608%_)
                  (##structure
                   gx#module-import::t
                   _%out150585%_
                   (let ((_%$e150610%_ _%rename150586%_))
                     (if _%$e150610%_ _%$e150610%_ _%name150605%_))
                   (fx+ _%phi150606%_ _%dphi150587%_)
                   _%weak?150604%_))))
          (if (##structure-direct-instance-of?
               _%out150588150598%_
               'gx#module-export::t)
              (let* ((_%e150592150616%_
                      (##unchecked-structure-ref
                       _%out150588150598%_
                       '1
                       '#f
                       '#f))
                     (_%ctx150619%_ _%e150592150616%_)
                     (_%e150593150621%_
                      (##unchecked-structure-ref
                       _%out150588150598%_
                       '2
                       '#f
                       '#f))
                     (_%key150624%_ _%e150593150621%_)
                     (_%e150594150626%_
                      (##unchecked-structure-ref
                       _%out150588150598%_
                       '3
                       '#f
                       '#f))
                     (_%phi150629%_ _%e150594150626%_)
                     (_%e150595150631%_
                      (##unchecked-structure-ref
                       _%out150588150598%_
                       '4
                       '#f
                       '#f))
                     (_%name150634%_ _%e150595150631%_)
                     (_%e150596150636%_
                      (##unchecked-structure-ref
                       _%out150588150598%_
                       '5
                       '#f
                       '#f))
                     (_%weak?150639%_ _%e150596150636%_))
                (_%K150591150613%_
                 _%weak?150639%_
                 _%name150634%_
                 _%phi150629%_
                 _%key150624%_
                 _%ctx150619%_))
              (_%E150590150601%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out150644%_)
        (let* ((_%rename150646%_ '#f) (_%dphi150648%_ '0))
          (gx#core-module-export->import__%
           _%out150644%_
           _%rename150646%_
           _%dphi150648%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out150650%_ _%rename150651%_)
        (let ((_%dphi150653%_ '0))
          (gx#core-module-export->import__%
           _%out150650%_
           _%rename150651%_
           _%dphi150653%_))))
    (define gx#core-module-export->import
      (lambda _g152729_
        (let ((_g152730_ (##length _g152729_)))
          (cond ((##fx= _g152730_ 1)
                 (apply gx#core-module-export->import__0 _g152729_))
                ((##fx= _g152730_ 2)
                 (apply gx#core-module-export->import__1 _g152729_))
                ((##fx= _g152730_ 3)
                 (apply gx#core-module-export->import__% _g152729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g152729_))))))
    (define gx#core-expand-module%
      (lambda (_%stx150484%_)
        (letrec ((_%make-context150486%_
                  (lambda (_%id150563%_)
                    (let* ((_%super150565%_ (gx#current-expander-context))
                           (_%bind-id150567%_ (gx#stx-e _%id150563%_))
                           (_%mod-id150569%_
                            (if (##structure-instance-of?
                                 _%super150565%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super150565%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id150567%_)
                                _%bind-id150567%_))
                           (_%ns150571%_ (symbol->string _%mod-id150569%_))
                           (_%path150581%_
                            (if (##structure-instance-of?
                                 _%super150565%_
                                 'gx#module-context::t)
                                (let ((_%path150573%_
                                       (##unchecked-structure-ref
                                        _%super150565%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path150573%_)
                                          (null? _%path150573%_))
                                      (cons _%bind-id150567%_ _%path150573%_)
                                      (if (not _%path150573%_)
                                          _%bind-id150567%_
                                          (cons _%bind-id150567%_
                                                (cons _%path150573%_ '())))))
                                _%bind-id150567%_))
                           (__obj152706
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
                       __obj152706
                       _%mod-id150569%_
                       _%super150565%_
                       _%ns150571%_
                       _%path150581%_)
                      __obj152706)))
                 (_%valid-module-id?150487%_
                  (lambda (_%id150538%_)
                    (let* ((_%str150540%_ (symbol->string _%id150538%_))
                           (_%len150542%_ (##string-length _%str150540%_)))
                      (if (##fx>= _%len150542%_ '1)
                          (let _%loop150545%_ ((_%index150547%_
                                                (##fx- (##string-length
                                                        _%str150540%_)
                                                       '1)))
                            (if (##fx>= _%index150547%_ '0)
                                (let ((_%c150549%_
                                       (string-ref
                                        _%str150540%_
                                        _%index150547%_)))
                                  (if (or (and (##char>=? _%c150549%_ '#\a)
                                               (##char<=? _%c150549%_ '#\z))
                                          (and (##char>=? _%c150549%_ '#\A)
                                               (##char<=? _%c150549%_ '#\Z))
                                          (and (##char>=? _%c150549%_ '#\0)
                                               (##char<=? _%c150549%_ '#\9))
                                          (##char=? _%c150549%_ '#\_)
                                          (##char=? _%c150549%_ '#\-))
                                      (_%loop150545%_
                                       (##fx- _%index150547%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e150488150498%_ _%stx150484%_)
                 (_%E150490150502%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150488150498%_)))
                 (_%E150489150534%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150488150498%_)
                        (let ((_%e150491150506%_
                               (gx#syntax-e _%e150488150498%_)))
                          (let ((_%hd150492150509%_ (##car _%e150491150506%_))
                                (_%tl150493150511%_ (##cdr _%e150491150506%_)))
                            (if (gx#stx-pair? _%tl150493150511%_)
                                (let ((_%e150494150514%_
                                       (gx#syntax-e _%tl150493150511%_)))
                                  (let ((_%hd150495150517%_
                                         (##car _%e150494150514%_))
                                        (_%tl150496150519%_
                                         (##cdr _%e150494150514%_)))
                                    (let* ((_%id150522%_ _%hd150495150517%_)
                                           (_%body150524%_ _%tl150496150519%_))
                                      (if (and (gx#identifier? _%id150522%_)
                                               (gx#stx-list? _%body150524%_))
                                          (if (_%valid-module-id?150487%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx150526%_
                                                      (_%make-context150486%_
                                                       _%id150522%_))
                                                     (_%body150528%_
                                                      (gx#core-expand-module-begin
                                                       _%body150524%_
                                                       _%ctx150526%_))
                                                     (_%body150530%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body150528%_)
                                                       (gx#stx-source
                                                        _%stx150484%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx150526%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body150530%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx150526%_
                                                 _%body150530%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id150522%_
                                                 _%ctx150526%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id150522%_)
                                                  _%body150530%_)
                                                 (gx#stx-source
                                                  _%stx150484%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx150484%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E150490150502%_)))))
                                (_%E150490150502%_))))
                        (_%E150490150502%_)))))
            (_%E150489150534%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body150449%_ _%ctx150450%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx150454%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body150449%_)))
                     (_%e150455150462%_ _%stx150454%_)
                     (_%E150457150466%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx150454%_)))
                     (_%E150456150480%_
                      (lambda ()
                        (if (gx#stx-pair? _%e150455150462%_)
                            (let ((_%e150458150470%_
                                   (gx#syntax-e _%e150455150462%_)))
                              (let ((_%hd150459150473%_
                                     (##car _%e150458150470%_))
                                    (_%tl150460150475%_
                                     (##cdr _%e150458150470%_)))
                                (if (and (gx#identifier? _%hd150459150473%_)
                                         (gx#core-identifier=?
                                          _%hd150459150473%_
                                          '%#begin-module))
                                    (let ((_%body150478%_ _%tl150460150475%_))
                                      (if (gx#sealed-syntax? _%stx150454%_)
                                          _%body150478%_
                                          (gx#core-expand-module-body
                                           _%body150478%_)))
                                    (_%E150457150466%_))))
                            (_%E150457150466%_)))))
                (_%E150456150480%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx150450%_)))
    (define gx#core-expand-module-body
      (lambda (_%body150245%_)
        (letrec ((_%expand-special150247%_
                  (lambda (_%hd150376%_ _%K150377%_ _%rest150378%_ _%r150379%_)
                    (let* ((_%e150380150397%_ _%hd150376%_)
                           (_%E150392150401%_
                            (lambda ()
                              (_%K150377%_
                               _%rest150378%_
                               (cons (gx#core-expand-top _%hd150376%_)
                                     _%r150379%_))))
                           (_%E150382150413%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150380150397%_)
                                  (let ((_%e150393150405%_
                                         (gx#syntax-e _%e150380150397%_)))
                                    (let ((_%hd150394150408%_
                                           (##car _%e150393150405%_))
                                          (_%tl150395150410%_
                                           (##cdr _%e150393150405%_)))
                                      (if (and (gx#identifier?
                                                _%hd150394150408%_)
                                               (gx#core-identifier=?
                                                _%hd150394150408%_
                                                '%#export))
                                          (_%K150377%_
                                           _%rest150378%_
                                           (cons _%hd150376%_ _%r150379%_))
                                          (_%E150392150401%_))))
                                  (_%E150392150401%_))))
                           (_%E150381150445%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150380150397%_)
                                  (let ((_%e150383150417%_
                                         (gx#syntax-e _%e150380150397%_)))
                                    (let ((_%hd150384150420%_
                                           (##car _%e150383150417%_))
                                          (_%tl150385150422%_
                                           (##cdr _%e150383150417%_)))
                                      (if (and (gx#identifier?
                                                _%hd150384150420%_)
                                               (gx#core-identifier=?
                                                _%hd150384150420%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl150385150422%_)
                                              (let ((_%e150386150425%_
                                                     (gx#syntax-e
                                                      _%tl150385150422%_)))
                                                (let ((_%hd150387150428%_
                                                       (##car _%e150386150425%_))
                                                      (_%tl150388150430%_
                                                       (##cdr _%e150386150425%_)))
                                                  (let ((_%hd-bind150433%_
                                                         _%hd150387150428%_))
                                                    (if (gx#stx-pair?
                                                         _%tl150388150430%_)
                                                        (let ((_%e150389150435%_
                                                               (gx#syntax-e
                                                                _%tl150388150430%_)))
                                                          (let ((_%hd150390150438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e150389150435%_))
                        (_%tl150391150440%_ (##cdr _%e150389150435%_)))
                    (let ((_%expr150443%_ _%hd150390150438%_))
                      (if (gx#stx-null? _%tl150391150440%_)
                          (if (gx#core-bind-values? _%hd-bind150433%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind150433%_)
                                (_%K150377%_
                                 _%rest150378%_
                                 (cons _%hd150376%_ _%r150379%_)))
                              (_%E150382150413%_))
                          (_%E150382150413%_)))))
                (_%E150382150413%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150382150413%_))
                                          (_%E150382150413%_))))
                                  (_%E150382150413%_)))))
                      (_%E150381150445%_))))
                 (_%expand-body150248%_
                  (lambda (_%rbody150250%_)
                    (let _%lp150252%_ ((_%rest150254%_ _%rbody150250%_)
                                       (_%body150255%_ '()))
                      (let* ((_%rest150256150264%_ _%rest150254%_)
                             (_%else150258150272%_ (lambda () _%body150255%_))
                             (_%K150260150364%_
                              (lambda (_%rest150275%_ _%hd150276%_)
                                (let* ((_%e150277150298%_ _%hd150276%_)
                                       (_%E150293150302%_
                                        (lambda ()
                                          (_%lp150252%_
                                           _%rest150275%_
                                           (cons (gx#core-expand-expression
                                                  _%hd150276%_)
                                                 _%body150255%_))))
                                       (_%E150289150316%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150277150298%_)
                                              (let ((_%e150294150306%_
                                                     (gx#syntax-e
                                                      _%e150277150298%_)))
                                                (let ((_%hd150295150309%_
                                                       (##car _%e150294150306%_))
                                                      (_%tl150296150311%_
                                                       (##cdr _%e150294150306%_)))
                                                  (let ((_%form150314%_
                                                         _%hd150295150309%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form150314%_
                                                         gx#special-form-binding?)
                                                        (_%lp150252%_
                                                         _%rest150275%_
                                                         (cons _%hd150276%_
                                                               _%body150255%_))
                                                        (_%E150293150302%_)))))
                                              (_%E150293150302%_))))
                                       (_%E150279150328%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150277150298%_)
                                              (let ((_%e150290150320%_
                                                     (gx#syntax-e
                                                      _%e150277150298%_)))
                                                (let ((_%hd150291150323%_
                                                       (##car _%e150290150320%_))
                                                      (_%tl150292150325%_
                                                       (##cdr _%e150290150320%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150291150323%_)
                                                           (gx#core-identifier=?
                                                            _%hd150291150323%_
                                                            '%#export))
                                                      (_%lp150252%_
                                                       _%rest150275%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd150276%_)
                                                             _%body150255%_))
                                                      (_%E150289150316%_))))
                                              (_%E150289150316%_))))
                                       (_%E150278150360%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150277150298%_)
                                              (let ((_%e150280150332%_
                                                     (gx#syntax-e
                                                      _%e150277150298%_)))
                                                (let ((_%hd150281150335%_
                                                       (##car _%e150280150332%_))
                                                      (_%tl150282150337%_
                                                       (##cdr _%e150280150332%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150281150335%_)
                                                           (gx#core-identifier=?
                                                            _%hd150281150335%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl150282150337%_)
                                                          (let ((_%e150283150340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl150282150337%_)))
                    (let ((_%hd150284150343%_ (##car _%e150283150340%_))
                          (_%tl150285150345%_ (##cdr _%e150283150340%_)))
                      (let ((_%hd-bind150348%_ _%hd150284150343%_))
                        (if (gx#stx-pair? _%tl150285150345%_)
                            (let ((_%e150286150350%_
                                   (gx#syntax-e _%tl150285150345%_)))
                              (let ((_%hd150287150353%_
                                     (##car _%e150286150350%_))
                                    (_%tl150288150355%_
                                     (##cdr _%e150286150350%_)))
                                (let ((_%expr150358%_ _%hd150287150353%_))
                                  (if (gx#stx-null? _%tl150288150355%_)
                                      (_%lp150252%_
                                       _%rest150275%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind150348%_)
                                               (gx#core-expand-expression
                                                _%expr150358%_))
                                              (gx#stx-source _%hd150276%_))
                                             _%body150255%_))
                                      (_%E150279150328%_)))))
                            (_%E150279150328%_)))))
                  (_%E150279150328%_))
              (_%E150279150328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150279150328%_)))))
                                  (_%E150278150360%_)))))
                        (if (pair? _%rest150256150264%_)
                            (let ((_%hd150261150367%_
                                   (##car _%rest150256150264%_))
                                  (_%tl150262150369%_
                                   (##cdr _%rest150256150264%_)))
                              (let* ((_%hd150372%_ _%hd150261150367%_)
                                     (_%rest150374%_ _%tl150262150369%_))
                                (_%K150260150364%_
                                 _%rest150374%_
                                 _%hd150372%_)))
                            (_%else150258150272%_)))))))
          (_%expand-body150248%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body150245%_)
            _%expand-special150247%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx150086%_
               _%expanded?150087%_
               _%method150088%_
               _%current-phi150089%_
               _%expand1150090%_)
        (letrec ((_%K150092%_
                  (lambda (_%rest150212%_ _%r150213%_)
                    (let* ((_%e150214150221%_ _%rest150212%_)
                           (_%E150216150225%_ (lambda () _%r150213%_))
                           (_%E150215150241%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150214150221%_)
                                  (let ((_%e150217150229%_
                                         (gx#syntax-e _%e150214150221%_)))
                                    (let ((_%hd150218150232%_
                                           (##car _%e150217150229%_))
                                          (_%tl150219150234%_
                                           (##cdr _%e150217150229%_)))
                                      (let* ((_%hd150237%_ _%hd150218150232%_)
                                             (_%rest150239%_
                                              _%tl150219150234%_))
                                        (_%step150093%_
                                         _%hd150237%_
                                         _%rest150239%_
                                         _%r150213%_))))
                                  (_%E150216150225%_)))))
                      (_%E150215150241%_))))
                 (_%step150093%_
                  (lambda (_%hd150126%_ _%rest150127%_ _%r150128%_)
                    (let* ((_%e150129150147%_ _%hd150126%_)
                           (_%E150142150151%_
                            (lambda ()
                              (if (_%expanded?150087%_ (gx#stx-e _%hd150126%_))
                                  (_%K150092%_
                                   _%rest150127%_
                                   (cons (gx#stx-e _%hd150126%_) _%r150128%_))
                                  (_%expand1150090%_
                                   _%hd150126%_
                                   _%K150092%_
                                   _%rest150127%_
                                   _%r150128%_))))
                           (_%E150138150167%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150129150147%_)
                                  (let ((_%e150143150155%_
                                         (gx#syntax-e _%e150129150147%_)))
                                    (let ((_%hd150144150158%_
                                           (##car _%e150143150155%_))
                                          (_%tl150145150160%_
                                           (##cdr _%e150143150155%_)))
                                      (let* ((_%macro150163%_
                                              _%hd150144150158%_)
                                             (_%body150165%_
                                              _%tl150145150160%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro150163%_
                                             gx#syntax-binding?)
                                            (_%K150092%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro150163%_)
                                                    _%hd150126%_
                                                    _%method150088%_)
                                                   _%rest150127%_)
                                             _%r150128%_)
                                            (_%E150142150151%_)))))
                                  (_%E150142150151%_))))
                           (_%E150131150181%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150129150147%_)
                                  (let ((_%e150139150171%_
                                         (gx#syntax-e _%e150129150147%_)))
                                    (let ((_%hd150140150174%_
                                           (##car _%e150139150171%_))
                                          (_%tl150141150176%_
                                           (##cdr _%e150139150171%_)))
                                      (if (eq? (gx#stx-e _%hd150140150174%_)
                                               'begin:)
                                          (let ((_%body150179%_
                                                 _%tl150141150176%_))
                                            (_%K150092%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest150127%_
                                              _%body150179%_)
                                             _%r150128%_))
                                          (_%E150138150167%_))))
                                  (_%E150138150167%_))))
                           (_%E150130150208%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150129150147%_)
                                  (let ((_%e150132150185%_
                                         (gx#syntax-e _%e150129150147%_)))
                                    (let ((_%hd150133150188%_
                                           (##car _%e150132150185%_))
                                          (_%tl150134150190%_
                                           (##cdr _%e150132150185%_)))
                                      (if (eq? (gx#stx-e _%hd150133150188%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl150134150190%_)
                                              (let ((_%e150135150193%_
                                                     (gx#syntax-e
                                                      _%tl150134150190%_)))
                                                (let ((_%hd150136150196%_
                                                       (##car _%e150135150193%_))
                                                      (_%tl150137150198%_
                                                       (##cdr _%e150135150193%_)))
                                                  (let* ((_%dphi150201%_
                                                          _%hd150136150196%_)
                                                         (_%body150203%_
                                                          _%tl150137150198%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi150201%_)
                                                        (let ((_%rbody150206%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K150092%_ _%body150203%_ '()))
                        _%current-phi150089%_
                        (fx+ (gx#stx-e _%dphi150201%_)
                             (_%current-phi150089%_)))))
                  (_%K150092%_
                   _%rest150127%_
                   (__foldr1 cons _%r150128%_ _%rbody150206%_)))
                (_%E150131150181%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150131150181%_))
                                          (_%E150131150181%_))))
                                  (_%E150131150181%_)))))
                      (_%E150130150208%_)))))
          (let* ((_%e150094150101%_ _%stx150086%_)
                 (_%E150096150105%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150094150101%_)))
                 (_%E150095150122%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150094150101%_)
                        (let ((_%e150097150109%_
                               (gx#syntax-e _%e150094150101%_)))
                          (let ((_%hd150098150112%_ (##car _%e150097150109%_))
                                (_%tl150099150114%_ (##cdr _%e150097150109%_)))
                            (let ((_%body150117%_ _%tl150099150114%_))
                              (if (_%current-phi150089%_)
                                  (_%K150092%_ _%body150117%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K150092%_ _%body150117%_ '()))
                                   _%current-phi150089%_
                                   (gx#current-expander-phi))))))
                        (_%E150096150105%_)))))
            (_%E150095150122%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx149740%_ _%internal-expand?149741%_)
        (letrec ((_%expand1149743%_
                  (lambda (_%hd150058%_ _%K150059%_ _%rest150060%_ _%r150061%_)
                    (if (gx#core-bound-module? _%hd150058%_)
                        (_%import1149744%_
                         (gx#syntax-local-e__0 _%hd150058%_)
                         _%K150059%_
                         _%rest150060%_
                         _%r150061%_)
                        (if (gx#core-library-module-path? _%hd150058%_)
                            (_%import1149744%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd150058%_))
                             _%K150059%_
                             _%rest150060%_
                             _%r150061%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd150058%_)
                                (_%import1149744%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd150058%_))
                                 _%K150059%_
                                 _%rest150060%_
                                 _%r150061%_)
                                (let ((_%e150067%_ (gx#stx-e _%hd150058%_)))
                                  (if (pair? _%e150067%_)
                                      (let ((_%$e150070%_
                                             (gx#stx-e (##car _%e150067%_))))
                                        (if (eq? 'spec: _%$e150070%_)
                                            (_%import-spec149747%_
                                             _%hd150058%_
                                             _%K150059%_
                                             _%rest150060%_
                                             _%r150061%_)
                                            (if (eq? 'in: _%$e150070%_)
                                                (_%import-submodule149745%_
                                                 _%hd150058%_
                                                 _%K150059%_
                                                 _%rest150060%_
                                                 _%r150061%_)
                                                (if (eq? 'runtime:
                                                         _%$e150070%_)
                                                    (_%import-runtime149746%_
                                                     _%hd150058%_
                                                     _%K150059%_
                                                     _%rest150060%_
                                                     _%r150061%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx149740%_
                                                     _%hd150058%_)))))
                                      (if (string? _%e150067%_)
                                          (_%import1149744%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd150058%_
                                             (gx#stx-source _%stx149740%_)))
                                           _%K150059%_
                                           _%rest150060%_
                                           _%r150061%_)
                                          (if (##structure-instance-of?
                                               _%e150067%_
                                               'gx#module-context::t)
                                              (_%K150059%_
                                               _%rest150060%_
                                               (cons _%e150067%_ _%r150061%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx149740%_
                                               _%hd150058%_))))))))))
                 (_%import1149744%_
                  (lambda (_%ctx150047%_
                           _%K150048%_
                           _%rest150049%_
                           _%r150050%_)
                    (let ((_%dphi150052%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K150048%_
                       _%rest150049%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx150047%_
                              _%dphi150052%_
                              (map (lambda (_%g150053150055%_)
                                     (gx#core-module-export->import__%
                                      _%g150053150055%_
                                      '#f
                                      _%dphi150052%_))
                                   (##unchecked-structure-ref
                                    _%ctx150047%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r150050%_)))))
                 (_%import-submodule149745%_
                  (lambda (_%hd150014%_ _%K150015%_ _%rest150016%_ _%r150017%_)
                    (let* ((_%e150018150025%_ _%hd150014%_)
                           (_%E150020150029%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e150018150025%_)))
                           (_%E150019150043%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150018150025%_)
                                  (let ((_%e150021150033%_
                                         (gx#syntax-e _%e150018150025%_)))
                                    (let ((_%hd150022150036%_
                                           (##car _%e150021150033%_))
                                          (_%tl150023150038%_
                                           (##cdr _%e150021150033%_)))
                                      (let ((_%spath150041%_
                                             _%tl150023150038%_))
                                        (_%import1149744%_
                                         (_%import-spec-source149748%_
                                          _%spath150041%_)
                                         _%K150015%_
                                         _%rest150016%_
                                         _%r150017%_))))
                                  (_%E150020150029%_)))))
                      (_%E150019150043%_))))
                 (_%import-runtime149746%_
                  (lambda (_%hd149981%_ _%K149982%_ _%rest149983%_ _%r149984%_)
                    (let* ((_%e149985149992%_ _%hd149981%_)
                           (_%E149987149996%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149985149992%_)))
                           (_%E149986150010%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149985149992%_)
                                  (let ((_%e149988150000%_
                                         (gx#syntax-e _%e149985149992%_)))
                                    (let ((_%hd149989150003%_
                                           (##car _%e149988150000%_))
                                          (_%tl149990150005%_
                                           (##cdr _%e149988150000%_)))
                                      (let ((_%spath150008%_
                                             _%tl149990150005%_))
                                        (_%K149982%_
                                         _%rest149983%_
                                         (cons (_%import-spec-source149748%_
                                                _%spath150008%_)
                                               _%r149984%_)))))
                                  (_%E149987149996%_)))))
                      (_%E149986150010%_))))
                 (_%import-spec149747%_
                  (lambda (_%hd149819%_ _%K149820%_ _%rest149821%_ _%r149822%_)
                    (let* ((_%e149823149840%_ _%hd149819%_)
                           (_%E149832149844%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149823149840%_)))
                           (_%E149825149955%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149823149840%_)
                                  (let ((_%e149833149848%_
                                         (gx#syntax-e _%e149823149840%_)))
                                    (let ((_%hd149834149851%_
                                           (##car _%e149833149848%_))
                                          (_%tl149835149853%_
                                           (##cdr _%e149833149848%_)))
                                      (if (gx#stx-pair? _%tl149835149853%_)
                                          (let ((_%e149836149856%_
                                                 (gx#syntax-e
                                                  _%tl149835149853%_)))
                                            (let ((_%hd149837149859%_
                                                   (##car _%e149836149856%_))
                                                  (_%tl149838149861%_
                                                   (##cdr _%e149836149856%_)))
                                              (let* ((_%path149864%_
                                                      _%hd149837149859%_)
                                                     (_%specs149866%_
                                                      _%tl149838149861%_))
                                                (let ((_%src-ctx149868%_
                                                       (_%import-spec-source149748%_
                                                        _%path149864%_))
                                                      (_%exports149869%_
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
                                                      (_%specs149870%_
                                                       (gx#syntax->list
                                                        _%specs149866%_)))
                                                  (for-each
                                                   (lambda (_%out149872%_)
                                                     (__hash-put!
                                                      _%exports149869%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out149872%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out149872%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out149872%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx149868%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K149820%_
                                                   _%rest149821%_
                                                   (__foldl1
                                                    (lambda (_%spec149874%_
                                                             _%r149875%_)
                                                      (let* ((_%e149876149892%_
                                                              _%spec149874%_)
                                                             (_%E149878149896%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e149876149892%_)))
                     (_%E149877149951%_
                      (lambda ()
                        (if (gx#stx-pair? _%e149876149892%_)
                            (let ((_%e149879149900%_
                                   (gx#syntax-e _%e149876149892%_)))
                              (let ((_%hd149880149903%_
                                     (##car _%e149879149900%_))
                                    (_%tl149881149905%_
                                     (##cdr _%e149879149900%_)))
                                (let ((_%phi149908%_ _%hd149880149903%_))
                                  (if (gx#stx-pair? _%tl149881149905%_)
                                      (let ((_%e149882149910%_
                                             (gx#syntax-e _%tl149881149905%_)))
                                        (let ((_%hd149883149913%_
                                               (##car _%e149882149910%_))
                                              (_%tl149884149915%_
                                               (##cdr _%e149882149910%_)))
                                          (let ((_%name149918%_
                                                 _%hd149883149913%_))
                                            (if (gx#stx-pair?
                                                 _%tl149884149915%_)
                                                (let ((_%e149885149920%_
                                                       (gx#syntax-e
                                                        _%tl149884149915%_)))
                                                  (let ((_%hd149886149923%_
                                                         (##car _%e149885149920%_))
                                                        (_%tl149887149925%_
                                                         (##cdr _%e149885149920%_)))
                                                    (let ((_%src-phi149928%_
                                                           _%hd149886149923%_))
                                                      (if (gx#stx-pair?
                                                           _%tl149887149925%_)
                                                          (let ((_%e149888149930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl149887149925%_)))
                    (let ((_%hd149889149933%_ (##car _%e149888149930%_))
                          (_%tl149890149935%_ (##cdr _%e149888149930%_)))
                      (let ((_%src-name149938%_ _%hd149889149933%_))
                        (if (gx#stx-null? _%tl149890149935%_)
                            (if (and (gx#stx-fixnum? _%src-phi149928%_)
                                     (gx#identifier? _%src-name149938%_)
                                     (gx#stx-fixnum? _%phi149908%_)
                                     (gx#identifier? _%name149918%_))
                                (let ((_%src-phi149940%_
                                       (gx#stx-e _%src-phi149928%_))
                                      (_%src-name149941%_
                                       (gx#core-identifier-key
                                        _%src-name149938%_))
                                      (_%phi149942%_ (gx#stx-e _%phi149908%_))
                                      (_%name149943%_
                                       (gx#core-identifier-key
                                        _%name149918%_)))
                                  (let ((_%$e149945%_
                                         (__hash-get
                                          _%exports149869%_
                                          (cons _%src-phi149940%_
                                                _%src-name149941%_))))
                                    (if _%$e149945%_
                                        ((lambda (_%out149948%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out149948%_
                                                  _%name149943%_
                                                  (fx- _%phi149942%_
                                                       _%src-phi149940%_))
                                                 _%r149875%_))
                                         _%$e149945%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx149740%_
                                         _%hd149819%_))))
                                (_%E149878149896%_))
                            (_%E149878149896%_)))))
                  (_%E149878149896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E149878149896%_)))))
                                      (_%E149878149896%_)))))
                            (_%E149878149896%_)))))
                (_%E149877149951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r149822%_
                                                    _%specs149870%_))))))
                                          (_%E149832149844%_))))
                                  (_%E149832149844%_))))
                           (_%E149824149977%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149823149840%_)
                                  (let ((_%e149826149959%_
                                         (gx#syntax-e _%e149823149840%_)))
                                    (let ((_%hd149827149962%_
                                           (##car _%e149826149959%_))
                                          (_%tl149828149964%_
                                           (##cdr _%e149826149959%_)))
                                      (if (gx#stx-pair? _%tl149828149964%_)
                                          (let ((_%e149829149967%_
                                                 (gx#syntax-e
                                                  _%tl149828149964%_)))
                                            (let ((_%hd149830149970%_
                                                   (##car _%e149829149967%_))
                                                  (_%tl149831149972%_
                                                   (##cdr _%e149829149967%_)))
                                              (let ((_%path149975%_
                                                     _%hd149830149970%_))
                                                (if (gx#stx-null?
                                                     _%tl149831149972%_)
                                                    (_%K149820%_
                                                     _%rest149821%_
                                                     (cons (_%import-spec-source149748%_
                                                            _%path149975%_)
                                                           _%r149822%_))
                                                    (_%E149825149955%_)))))
                                          (_%E149825149955%_))))
                                  (_%E149825149955%_)))))
                      (_%E149824149977%_))))
                 (_%import-spec-source149748%_
                  (lambda (_%spath149817%_)
                    (gx#core-import-nested-module
                     _%spath149817%_
                     _%stx149740%_)))
                 (_%import!149749%_
                  (lambda (_%rbody149762%_)
                    (letrec* ((_%current-ctx149764%_
                               (gx#current-expander-context))
                              (_%deps149765%_ (make-hash-table-eq))
                              (_%bind!149766%_
                               (lambda (_%hd149815%_)
                                 (gx#core-bind-import!__1
                                  _%hd149815%_
                                  _%current-ctx149764%_))))
                      (let _%lp149768%_ ((_%rest149770%_ _%rbody149762%_)
                                         (_%body149771%_ '()))
                        (let* ((_%rest149772149780%_ _%rest149770%_)
                               (_%else149774149791%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx149764%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx149764%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx149764%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body149771%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx149788%_ _%_149789%_)
                                     (gx#eval-module _%ctx149788%_))
                                   _%deps149765%_)
                                  _%body149771%_))
                               (_%K149776149803%_
                                (lambda (_%rest149794%_ _%hd149795%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd149795%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!149766%_ _%hd149795%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd149795%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd149795%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps149765%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd149795%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd149795%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!149766%_
                                             (##unchecked-structure-ref
                                              _%hd149795%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd149795%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps149765%_
                                                 (##unchecked-structure-ref
                                                  _%hd149795%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e149799%_
                                                 (##structure-instance-of?
                                                  _%hd149795%_
                                                  'gx#module-context::t)))
                                            (if _%$e149799%_
                                                _%$e149799%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx149740%_
                                                 _%hd149795%_)))))
                                  (_%lp149768%_
                                   _%rest149794%_
                                   (cons _%hd149795%_ _%body149771%_)))))
                          (if (pair? _%rest149772149780%_)
                              (let ((_%hd149777149806%_
                                     (##car _%rest149772149780%_))
                                    (_%tl149778149808%_
                                     (##cdr _%rest149772149780%_)))
                                (let* ((_%hd149811%_ _%hd149777149806%_)
                                       (_%rest149813%_ _%tl149778149808%_))
                                  (_%K149776149803%_
                                   _%rest149813%_
                                   _%hd149811%_)))
                              (_%else149774149791%_)))))))
                 (_%expanded-import?149750%_
                  (lambda (_%e149754%_)
                    (let ((_%$e149756%_
                           (##structure-direct-instance-of?
                            _%e149754%_
                            'gx#import-set::t)))
                      (if _%$e149756%_
                          _%$e149756%_
                          (let ((_%$e149759%_
                                 (##structure-direct-instance-of?
                                  _%e149754%_
                                  'gx#module-import::t)))
                            (if _%$e149759%_
                                _%$e149759%_
                                (##structure-instance-of?
                                 _%e149754%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody149752%_
                 (gx#core-expand-import/export
                  _%stx149740%_
                  _%expanded-import?149750%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1149743%_)))
            (if _%internal-expand?149741%_
                (reverse _%rbody149752%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!149749%_ _%rbody149752%_))
                 (gx#stx-source _%stx149740%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx150079%_)
        (let ((_%internal-expand?150081%_ '#f))
          (gx#core-expand-import%__%
           _%stx150079%_
           _%internal-expand?150081%_))))
    (define gx#core-expand-import%
      (lambda _g152731_
        (let ((_g152732_ (##length _g152731_)))
          (cond ((##fx= _g152732_ 1)
                 (apply gx#core-expand-import%__0 _g152731_))
                ((##fx= _g152732_ 2)
                 (apply gx#core-expand-import%__% _g152731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g152731_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath149667%_ _%where149668%_)
        (let* ((_%e149669149676%_ _%spath149667%_)
               (_%E149671149680%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149669149676%_)))
               (_%E149670149735%_
                (lambda ()
                  (if (gx#stx-pair? _%e149669149676%_)
                      (let ((_%e149672149684%_
                             (gx#syntax-e _%e149669149676%_)))
                        (let ((_%hd149673149687%_ (##car _%e149672149684%_))
                              (_%tl149674149689%_ (##cdr _%e149672149684%_)))
                          (let* ((_%origin149692%_ _%hd149673149687%_)
                                 (_%sub149694%_ _%tl149674149689%_)
                                 (_%origin-ctx149696%_
                                  (if (gx#stx-false? _%origin149692%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin149692%_))))
                            (let _%lp149698%_ ((_%rest149700%_ _%sub149694%_)
                                               (_%ctx149701%_
                                                _%origin-ctx149696%_))
                              (let* ((_%e149702149709%_ _%rest149700%_)
                                     (_%E149704149713%_
                                      (lambda () _%ctx149701%_))
                                     (_%E149703149731%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e149702149709%_)
                                            (let ((_%e149705149717%_
                                                   (gx#syntax-e
                                                    _%e149702149709%_)))
                                              (let ((_%hd149706149720%_
                                                     (##car _%e149705149717%_))
                                                    (_%tl149707149722%_
                                                     (##cdr _%e149705149717%_)))
                                                (let* ((_%id149725%_
                                                        _%hd149706149720%_)
                                                       (_%rest149727%_
                                                        _%tl149707149722%_)
                                                       (_%bind149729%_
                                                        (gx#resolve-identifier__%
                                                         _%id149725%_
                                                         '0
                                                         _%ctx149701%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind149729%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind149729%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where149668%_
                                                       _%spath149667%_
                                                       _%id149725%_))
                                                  (_%lp149698%_
                                                   _%rest149727%_
                                                   (##unchecked-structure-ref
                                                    _%bind149729%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E149704149713%_)))))
                                (_%E149703149731%_))))))
                      (_%E149671149680%_)))))
          (_%E149670149735%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd149665%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd149665%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx149160%_ _%internal-expand?149161%_)
        (letrec* ((_%make-export__152659152660%_
                   (lambda (_%bind149613%_
                            _%phi149614%_
                            _%ctx149615%_
                            _%name149616%_)
                     (let* ((_%key149618%_
                             (##unchecked-structure-ref
                              _%bind149613%_
                              '2
                              '#f
                              '#f))
                            (_%export-key149620%_
                             (if _%name149616%_
                                 (gx#core-identifier-key _%name149616%_)
                                 _%key149618%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx149615%_
                        _%key149618%_
                        _%phi149614%_
                        _%export-key149620%_
                        (let ((_%$e149623%_
                               (##structure-instance-of?
                                _%bind149613%_
                                'gx#extern-binding::t)))
                          (if _%$e149623%_
                              _%$e149623%_
                              (##structure-direct-instance-of?
                               _%bind149613%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__152661152664%_
                   (lambda (_%bind149629%_)
                     (let* ((_%phi149631%_ (gx#current-export-expander-phi))
                            (_%ctx149633%_ (gx#current-expander-context))
                            (_%name149635%_ '#f))
                       (_%make-export__152659152660%_
                        _%bind149629%_
                        _%phi149631%_
                        _%ctx149633%_
                        _%name149635%_))))
                  (_%make-export__1__152662152665%_
                   (lambda (_%bind149637%_ _%phi149638%_)
                     (let* ((_%ctx149640%_ (gx#current-expander-context))
                            (_%name149642%_ '#f))
                       (_%make-export__152659152660%_
                        _%bind149637%_
                        _%phi149638%_
                        _%ctx149640%_
                        _%name149642%_))))
                  (_%make-export__2__152663152666%_
                   (lambda (_%bind149644%_ _%phi149645%_ _%ctx149646%_)
                     (let ((_%name149648%_ '#f))
                       (_%make-export__152659152660%_
                        _%bind149644%_
                        _%phi149645%_
                        _%ctx149646%_
                        _%name149648%_))))
                  (_%make-export149163%_
                   (lambda _g152733_
                     (let ((_g152734_ (##length _g152733_)))
                       (cond ((##fx= _g152734_ 1)
                              (apply _%make-export__0__152661152664%_
                                     _g152733_))
                             ((##fx= _g152734_ 2)
                              (apply _%make-export__1__152662152665%_
                                     _g152733_))
                             ((##fx= _g152734_ 3)
                              (apply _%make-export__2__152663152666%_
                                     _g152733_))
                             ((##fx= _g152734_ 4)
                              (apply _%make-export__152659152660%_ _g152733_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g152733_))))))
                  (_%expand1149164%_
                   (lambda (_%hd149318%_
                            _%K149319%_
                            _%rest149320%_
                            _%r149321%_)
                     (let* ((_%e149322149354%_ _%hd149318%_)
                            (_%E149349149358%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx149160%_
                                _%hd149318%_)))
                            (_%E149339149442%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149322149354%_)
                                   (let ((_%e149350149362%_
                                          (gx#syntax-e _%e149322149354%_)))
                                     (let ((_%hd149351149365%_
                                            (##car _%e149350149362%_))
                                           (_%tl149352149367%_
                                            (##cdr _%e149350149362%_)))
                                       (if (eq? (gx#stx-e _%hd149351149365%_)
                                                'import:)
                                           (let ((_%in149370%_
                                                  _%tl149352149367%_))
                                             (if (gx#stx-list? _%in149370%_)
                                                 (let _%lp149372%_ ((_%in-rest149374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in149370%_)
                            (_%r149375%_ _%r149321%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e149376149383%_
                                                           _%in-rest149374%_)
                                                          (_%E149378149387%_
                                                           (lambda ()
                                                             (_%K149319%_
                                                              _%rest149320%_
                                                              _%r149375%_)))
                                                          (_%E149377149438%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e149376149383%_)
                         (let ((_%e149379149391%_
                                (gx#syntax-e _%e149376149383%_)))
                           (let ((_%hd149380149394%_ (##car _%e149379149391%_))
                                 (_%tl149381149396%_
                                  (##cdr _%e149379149391%_)))
                             (let* ((_%hd149399%_ _%hd149380149394%_)
                                    (_%in-rest149401%_ _%tl149381149396%_)
                                    (_%src149436%_
                                     (if (gx#core-bound-module? _%hd149399%_)
                                         (gx#syntax-local-e__0 _%hd149399%_)
                                         (if (gx#core-library-module-path?
                                              _%hd149399%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd149399%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd149399%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd149399%_))
                                                 (if (gx#stx-string?
                                                      _%hd149399%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd149399%_
                                                       (gx#stx-source
                                                        _%stx149160%_)))
                                                     (let* ((_%e149407149414%_
                                                             _%hd149399%_)
                                                            (_%E149409149418%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx149160%_
                                                                _%hd149399%_)))
                                                            (_%E149408149432%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e149407149414%_)
                           (let ((_%e149410149422%_
                                  (gx#syntax-e _%e149407149414%_)))
                             (let ((_%hd149411149425%_
                                    (##car _%e149410149422%_))
                                   (_%tl149412149427%_
                                    (##cdr _%e149410149422%_)))
                               (if (eq? (gx#stx-e _%hd149411149425%_) 'in:)
                                   (let ((_%spath149430%_ _%tl149412149427%_))
                                     (gx#core-import-nested-module
                                      _%spath149430%_
                                      _%stx149160%_))
                                   (_%E149409149418%_))))
                           (_%E149409149418%_)))))
               (_%E149408149432%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp149372%_
                                _%in-rest149401%_
                                (_%export-imports149165%_
                                 _%src149436%_
                                 _%r149375%_)))))
                         (_%E149378149387%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E149377149438%_)))
                                                 (_%E149349149358%_)))
                                           (_%E149349149358%_))))
                                   (_%E149349149358%_))))
                            (_%E149326149482%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149322149354%_)
                                   (let ((_%e149340149446%_
                                          (gx#syntax-e _%e149322149354%_)))
                                     (let ((_%hd149341149449%_
                                            (##car _%e149340149446%_))
                                           (_%tl149342149451%_
                                            (##cdr _%e149340149446%_)))
                                       (if (eq? (gx#stx-e _%hd149341149449%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl149342149451%_)
                                               (let ((_%e149343149454%_
                                                      (gx#syntax-e
                                                       _%tl149342149451%_)))
                                                 (let ((_%hd149344149457%_
                                                        (##car _%e149343149454%_))
                                                       (_%tl149345149459%_
                                                        (##cdr _%e149343149454%_)))
                                                   (let ((_%id149462%_
                                                          _%hd149344149457%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149345149459%_)
                                                         (let ((_%e149346149464%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149345149459%_)))
                   (let ((_%hd149347149467%_ (##car _%e149346149464%_))
                         (_%tl149348149469%_ (##cdr _%e149346149464%_)))
                     (let ((_%name149472%_ _%hd149347149467%_))
                       (if (gx#stx-null? _%tl149348149469%_)
                           (let* ((_%phi149474%_
                                   (gx#current-export-expander-phi))
                                  (_%$e149476%_
                                   (gx#core-resolve-identifier__1
                                    _%id149462%_
                                    _%phi149474%_)))
                             (if _%$e149476%_
                                 ((lambda (_%bind149479%_)
                                    (_%K149319%_
                                     _%rest149320%_
                                     (cons (_%make-export__152659152660%_
                                            _%bind149479%_
                                            _%phi149474%_
                                            (gx#current-expander-context)
                                            _%name149472%_)
                                           _%r149321%_)))
                                  _%$e149476%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx149160%_
                                  _%hd149318%_
                                  _%id149462%_)))
                           (_%E149339149442%_)))))
                 (_%E149339149442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149339149442%_))
                                           (_%E149339149442%_))))
                                   (_%E149339149442%_))))
                            (_%E149325149532%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149322149354%_)
                                   (let ((_%e149327149486%_
                                          (gx#syntax-e _%e149322149354%_)))
                                     (let ((_%hd149328149489%_
                                            (##car _%e149327149486%_))
                                           (_%tl149329149491%_
                                            (##cdr _%e149327149486%_)))
                                       (if (eq? (gx#stx-e _%hd149328149489%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl149329149491%_)
                                               (let ((_%e149330149494%_
                                                      (gx#syntax-e
                                                       _%tl149329149491%_)))
                                                 (let ((_%hd149331149497%_
                                                        (##car _%e149330149494%_))
                                                       (_%tl149332149499%_
                                                        (##cdr _%e149330149494%_)))
                                                   (let ((_%phi149502%_
                                                          _%hd149331149497%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149332149499%_)
                                                         (let ((_%e149333149504%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149332149499%_)))
                   (let ((_%hd149334149507%_ (##car _%e149333149504%_))
                         (_%tl149335149509%_ (##cdr _%e149333149504%_)))
                     (let ((_%id149512%_ _%hd149334149507%_))
                       (if (gx#stx-pair? _%tl149335149509%_)
                           (let ((_%e149336149514%_
                                  (gx#syntax-e _%tl149335149509%_)))
                             (let ((_%hd149337149517%_
                                    (##car _%e149336149514%_))
                                   (_%tl149338149519%_
                                    (##cdr _%e149336149514%_)))
                               (let ((_%name149522%_ _%hd149337149517%_))
                                 (if (gx#stx-null? _%tl149338149519%_)
                                     (if (and (gx#stx-fixnum? _%phi149502%_)
                                              (gx#identifier? _%id149512%_)
                                              (gx#identifier? _%name149522%_))
                                         (let* ((_%phi149524%_
                                                 (gx#stx-e _%phi149502%_))
                                                (_%$e149526%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id149512%_
                                                  _%phi149524%_)))
                                           (if _%$e149526%_
                                               ((lambda (_%bind149529%_)
                                                  (_%K149319%_
                                                   _%rest149320%_
                                                   (cons (_%make-export__152659152660%_
                                                          _%bind149529%_
                                                          _%phi149524%_
                                                          (gx#current-expander-context)
                                                          _%name149522%_)
                                                         _%r149321%_)))
                                                _%$e149526%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx149160%_
                                                _%hd149318%_
                                                _%id149512%_)))
                                         (_%E149326149482%_))
                                     (_%E149326149482%_)))))
                           (_%E149326149482%_)))))
                 (_%E149326149482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149326149482%_))
                                           (_%E149326149482%_))))
                                   (_%E149326149482%_))))
                            (_%E149324149544%_
                             (lambda ()
                               (let ((_%id149536%_ _%e149322149354%_))
                                 (if (gx#identifier? _%id149536%_)
                                     (let ((_%$e149538%_
                                            (gx#core-resolve-identifier__1
                                             _%id149536%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e149538%_
                                           ((lambda (_%bind149541%_)
                                              (_%K149319%_
                                               _%rest149320%_
                                               (cons (_%make-export__0__152661152664%_
                                                      _%bind149541%_)
                                                     _%r149321%_)))
                                            _%$e149538%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx149160%_
                                            _%hd149318%_)))
                                     (_%E149325149532%_)))))
                            (_%E149323149608%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e149322149354%_) '#t)
                                   (let* ((_%current-ctx149548%_
                                           (gx#current-expander-context))
                                          (_%current-phi149550%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx149552%_
                                           (gx#core-context-shift
                                            _%current-ctx149548%_
                                            _%current-phi149550%_))
                                          (_%phi-bind149554%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx149552%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp149557%_ ((_%bind-rest149559%_
                                                         _%phi-bind149554%_)
                                                        (_%set149560%_ '()))
                                       (let* ((_%bind-rest149561149571%_
                                               _%bind-rest149559%_)
                                              (_%else149563149579%_
                                               (lambda ()
                                                 (_%K149319%_
                                                  _%rest149320%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi149550%_
                                                         _%set149560%_)
                                                        _%r149321%_))))
                                              (_%K149565149589%_
                                               (lambda (_%bind-rest149582%_
                                                        _%bind149583%_
                                                        _%key149584%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind149583%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind149583%_))
                                                     (_%lp149557%_
                                                      _%bind-rest149582%_
                                                      _%set149560%_)
                                                     (_%lp149557%_
                                                      _%bind-rest149582%_
                                                      (cons (_%make-export__2__152663152666%_
                                                             _%bind149583%_
                                                             _%current-phi149550%_
                                                             _%current-ctx149548%_)
                                                            _%set149560%_))))))
                                         (if (pair? _%bind-rest149561149571%_)
                                             (let ((_%hd149566149592%_
                                                    (##car _%bind-rest149561149571%_))
                                                   (_%tl149567149594%_
                                                    (##cdr _%bind-rest149561149571%_)))
                                               (if (pair? _%hd149566149592%_)
                                                   (let ((_%hd149568149597%_
                                                          (##car _%hd149566149592%_))
                                                         (_%tl149569149599%_
                                                          (##cdr _%hd149566149592%_)))
                                                     (let* ((_%key149602%_
                                                             _%hd149568149597%_)
                                                            (_%bind149604%_
                                                             _%tl149569149599%_)
                                                            (_%bind-rest149606%_
                                                             _%tl149567149594%_))
                                                       (_%K149565149589%_
                                                        _%bind-rest149606%_
                                                        _%bind149604%_
                                                        _%key149602%_)))
                                                   (_%else149563149579%_)))
                                             (_%else149563149579%_)))))
                                   (_%E149324149544%_)))))
                       (_%E149323149608%_))))
                  (_%export-imports149165%_
                   (lambda (_%src149195%_ _%r149196%_)
                     (letrec* ((_%current-ctx149198%_
                                (gx#current-expander-context))
                               (_%current-phi149199%_
                                (gx#current-export-expander-phi))
                               (_%import->export149200%_
                                (lambda (_%in149281%_)
                                  (let* ((_%in149282149290%_ _%in149281%_)
                                         (_%E149284149293%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in149282149290%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K149285149300%_
                                          (lambda (_%phi149296%_
                                                   _%key149297%_
                                                   _%out149298%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx149198%_
                                             _%key149297%_
                                             _%phi149296%_
                                             _%key149297%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in149282149290%_
                                         'gx#module-import::t)
                                        (let* ((_%e149286149303%_
                                                (##unchecked-structure-ref
                                                 _%in149282149290%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out149306%_
                                                _%e149286149303%_)
                                               (_%e149287149308%_
                                                (##unchecked-structure-ref
                                                 _%in149282149290%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key149311%_
                                                _%e149287149308%_)
                                               (_%e149288149313%_
                                                (##unchecked-structure-ref
                                                 _%in149282149290%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi149316%_
                                                _%e149288149313%_))
                                          (_%K149285149300%_
                                           _%phi149316%_
                                           _%key149311%_
                                           _%out149306%_))
                                        (_%E149284149293%_)))))
                               (_%fold-e149201%_
                                (lambda (_%in149203%_ _%r149204%_)
                                  (let* ((_%in149205149219%_ _%in149203%_)
                                         (_%else149208149227%_
                                          (lambda () _%r149204%_)))
                                    (let ((_%K149214149263%_
                                           (lambda (_%phi149259%_
                                                    _%key149260%_
                                                    _%out149261%_)
                                             (if (and (fx= _%phi149259%_
                                                           _%current-phi149199%_)
                                                      (eq? _%src149195%_
                                                           (##unchecked-structure-ref
                                                            _%out149261%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export149200%_
                                                        _%in149203%_)
                                                       _%r149204%_)
                                                 _%r149204%_)))
                                          (_%K149210149238%_
                                           (lambda (_%imports149231%_
                                                    _%phi149232%_
                                                    _%ctx149233%_)
                                             (if (and (fx= _%phi149232%_
                                                           _%current-phi149199%_)
                                                      (eq? _%src149195%_
                                                           _%ctx149233%_))
                                                 (__foldl1
                                                  (lambda (_%in149235%_
                                                           _%r149236%_)
                                                    (cons (_%import->export149200%_
                                                           _%in149235%_)
                                                          _%r149236%_))
                                                  _%r149204%_
                                                  _%imports149231%_)
                                                 _%r149204%_))))
                                      (let ((_%try-match149207149256%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in149205149219%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e149211149241%_
                                                           (##unchecked-structure-ref
                                                            _%in149205149219%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e149212149246%_
                                                           (##unchecked-structure-ref
                                                            _%in149205149219%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e149213149251%_
                                                           (##unchecked-structure-ref
                                                            _%in149205149219%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx149244%_
                                                            _%e149211149241%_)
                                                           (_%phi149249%_
                                                            _%e149212149246%_)
                                                           (_%imports149254%_
                                                            _%e149213149251%_))
                                                       (_%K149210149238%_
                                                        _%imports149254%_
                                                        _%phi149249%_
                                                        _%ctx149244%_)))
                                                   (_%else149208149227%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in149205149219%_
                                             'gx#module-import::t)
                                            (let* ((_%e149215149266%_
                                                    (##unchecked-structure-ref
                                                     _%in149205149219%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e149216149271%_
                                                    (##unchecked-structure-ref
                                                     _%in149205149219%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e149217149276%_
                                                    (##unchecked-structure-ref
                                                     _%in149205149219%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out149269%_
                                                     _%e149215149266%_)
                                                    (_%key149274%_
                                                     _%e149216149271%_)
                                                    (_%phi149279%_
                                                     _%e149217149276%_))
                                                (_%K149214149263%_
                                                 _%phi149279%_
                                                 _%key149274%_
                                                 _%out149269%_)))
                                            (_%try-match149207149256%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src149195%_
                              _%current-phi149199%_
                              (__foldl1
                               _%fold-e149201%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx149198%_
                                '8
                                '#f
                                '#f)))
                             _%r149196%_))))
                  (_%export!149166%_
                   (lambda (_%rbody149182%_)
                     (letrec* ((_%current-ctx149184%_
                                (gx#current-expander-context))
                               (_%fold-e149185%_
                                (lambda (_%out149189%_ _%r149190%_)
                                  (if (##structure-direct-instance-of?
                                       _%out149189%_
                                       'gx#module-export::t)
                                      (cons _%out149189%_ _%r149190%_)
                                      (if (##structure-direct-instance-of?
                                           _%out149189%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r149190%_
                                           (##unchecked-structure-ref
                                            _%out149189%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r149190%_)))))
                       (let ((_%body149187%_ (reverse _%rbody149182%_)))
                         (##unchecked-structure-set!
                          _%current-ctx149184%_
                          (__foldl1
                           _%fold-e149185%_
                           (##unchecked-structure-ref
                            _%current-ctx149184%_
                            '9
                            '#f
                            '#f)
                           _%body149187%_)
                          '9
                          '#f
                          '#f)
                         _%body149187%_))))
                  (_%expanded-export?149167%_
                   (lambda (_%e149177%_)
                     (let ((_%$e149179%_
                            (##structure-direct-instance-of?
                             _%e149177%_
                             'gx#module-export::t)))
                       (if _%$e149179%_
                           _%$e149179%_
                           (##structure-direct-instance-of?
                            _%e149177%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?149161%_)
              (let ((_%rbody149173%_
                     (gx#core-expand-import/export
                      _%stx149160%_
                      _%expanded-export?149167%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1149164%_)))
                (if _%internal-expand?149161%_
                    (reverse _%rbody149173%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!149166%_ _%rbody149173%_))
                     (gx#stx-source _%stx149160%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx149160%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx149160%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx149658%_)
        (let ((_%internal-expand?149660%_ '#f))
          (gx#core-expand-export%__%
           _%stx149658%_
           _%internal-expand?149660%_))))
    (define gx#core-expand-export%
      (lambda _g152735_
        (let ((_g152736_ (##length _g152735_)))
          (cond ((##fx= _g152736_ 1)
                 (apply gx#core-expand-export%__0 _g152735_))
                ((##fx= _g152736_ 2)
                 (apply gx#core-expand-export%__% _g152735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g152735_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd149157%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd149157%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx149127%_)
        (let* ((_%e149128149135%_ _%stx149127%_)
               (_%E149130149139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149128149135%_)))
               (_%E149129149153%_
                (lambda ()
                  (if (gx#stx-pair? _%e149128149135%_)
                      (let ((_%e149131149143%_
                             (gx#syntax-e _%e149128149135%_)))
                        (let ((_%hd149132149146%_ (##car _%e149131149143%_))
                              (_%tl149133149148%_ (##cdr _%e149131149143%_)))
                          (let ((_%body149151%_ _%tl149133149148%_))
                            (if (gx#identifier-list? _%body149151%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body149151%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body149151%_))
                                   (gx#stx-source _%stx149127%_)))
                                (_%E149130149139%_)))))
                      (_%E149130149139%_)))))
          (_%E149129149153%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id149093%_ _%private?149094%_ _%phi149095%_ _%ctx149096%_)
        (gx#core-bind-syntax!__%
         _%id149093%_
         ((if _%private?149094%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id149093%_))
         _%private?149094%_
         _%phi149095%_
         _%ctx149096%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id149101%_)
        (let* ((_%private?149103%_ '#f)
               (_%phi149105%_ (gx#current-expander-phi))
               (_%ctx149107%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149101%_
           _%private?149103%_
           _%phi149105%_
           _%ctx149107%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id149109%_ _%private?149110%_)
        (let* ((_%phi149112%_ (gx#current-expander-phi))
               (_%ctx149114%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149109%_
           _%private?149110%_
           _%phi149112%_
           _%ctx149114%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id149116%_ _%private?149117%_ _%phi149118%_)
        (let ((_%ctx149120%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149116%_
           _%private?149117%_
           _%phi149118%_
           _%ctx149120%_))))
    (define gx#core-bind-feature!
      (lambda _g152737_
        (let ((_g152738_ (##length _g152737_)))
          (cond ((##fx= _g152738_ 1)
                 (apply gx#core-bind-feature!__0 _g152737_))
                ((##fx= _g152738_ 2)
                 (apply gx#core-bind-feature!__1 _g152737_))
                ((##fx= _g152738_ 3)
                 (apply gx#core-bind-feature!__2 _g152737_))
                ((##fx= _g152738_ 4)
                 (apply gx#core-bind-feature!__% _g152737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g152737_))))))))
