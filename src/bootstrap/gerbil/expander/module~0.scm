(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770325971)
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
      (lambda _%$args152494%_
        (apply make-instance gx#module-import::t _%$args152494%_)))
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
      (lambda _%$args152491%_
        (apply make-instance gx#module-export::t _%$args152491%_)))
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
      (lambda _%$args152488%_
        (apply make-instance gx#import-set::t _%$args152488%_)))
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
      (lambda _%$args152485%_
        (apply make-instance gx#export-set::t _%$args152485%_)))
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
      (lambda _%$args152482%_
        (apply make-instance gx#import-expander::t _%$args152482%_)))
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
      (lambda _%$args152479%_
        (apply make-instance gx#export-expander::t _%$args152479%_)))
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
      (lambda _%$args152476%_
        (apply make-instance gx#import-export-expander::t _%$args152476%_)))
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
      (lambda (_%path152473%_ _%fun152474%_)
        (call-with-input-file
         (cons 'path: (cons _%path152473%_ gx#source-file-settings))
         _%fun152474%_)))
    (define gx#module-context:::init!
      (lambda (_%self152456%_
               _%id152457%_
               _%super152458%_
               _%ns152459%_
               _%path152460%_)
        (let ((_%self152463%_ _%self152456%_))
          (if (##fx< '11 (##structure-length _%self152463%_))
              (begin
                (##unchecked-structure-set!
                 _%self152463%_
                 _%id152457%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152463%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152463%_
                 _%super152458%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152463%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self152463%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self152463%_
                 _%ns152459%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152463%_
                 _%path152460%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152463%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self152463%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self152463%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self152463%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self152463%_
                     '11
                     (##structure-length _%self152463%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self152289%_ _%ctx152290%_ _%root152291%_)
        (let* ((_%self152294%_ _%self152289%_)
               (_%super152310%_
                (let ((_%$e152304%_ _%root152291%_))
                  (if _%$e152304%_
                      _%$e152304%_
                      (let ((_%$e152307%_ (gx#core-context-root__0)))
                        (if _%$e152307%_
                            _%$e152307%_
                            (let ((__obj152538
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor152539
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj152538
                                      ':init!)))
                                (if __constructor152539
                                    (__constructor152539 __obj152538)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj152538)))))))
          (if _%ctx152290%_
              (let ((_%id152313%_
                     (##structure-ref
                      _%ctx152290%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path152314%_
                     (##structure-ref
                      _%ctx152290%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in152315%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx152290%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e152316%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx152290%_)))))
                (if (##fx< '8 (##structure-length _%self152294%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self152294%_
                       _%id152313%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152294%_
                       (make-hash-table-eq 'size: (##length _%in152315%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152294%_
                       _%super152310%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152294%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152294%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152294%_
                       _%path152314%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152294%_
                       _%in152315%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152294%_
                       _%e152316%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self152294%_
                           '8
                           (##structure-length _%self152294%_)))
                (##for-each
                 (lambda (_%g152317152319%_)
                   (gx#core-bind-weak-import!__%
                    _%g152317152319%_
                    _%self152294%_))
                 _%in152315%_))
              (if (##fx< '8 (##structure-length _%self152294%_))
                  (begin
                    (##unchecked-structure-set! _%self152294%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self152294%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self152294%_
                     _%super152310%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self152294%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self152294%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self152294%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self152294%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self152294%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self152294%_
                         '8
                         (##structure-length _%self152294%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self152325%_ _%ctx152326%_)
        (let ((_%root152328%_ '#f))
          (gx#prelude-context:::init!__%
           _%self152325%_
           _%ctx152326%_
           _%root152328%_))))
    (define gx#prelude-context:::init!
      (lambda _g152545_
        (let ((_g152546_ (##length _g152545_)))
          (cond ((##fx= _g152546_ 2)
                 (apply gx#prelude-context:::init!__0 _g152545_))
                ((##fx= _g152546_ 3)
                 (apply gx#prelude-context:::init!__% _g152545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g152545_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self152163%_ _%e152164%_)
        (if (##fx< '3 (##structure-length _%self152163%_))
            (begin
              (##unchecked-structure-set!
               _%self152163%_
               _%e152164%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152163%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152163%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self152163%_
                   '3
                   (##structure-length _%self152163%_)))))
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
      (lambda (_%g151789151792%_ _%g151790151794%_)
        (gx#core-apply-user-expander__%
         _%g151789151792%_
         _%g151790151794%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g151660151663%_ _%g151661151665%_)
        (gx#core-apply-user-expander__%
         _%g151660151663%_
         _%g151661151665%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx151531%_)
        (let* ((_%path151533%_
                (##structure-ref _%ctx151531%_ '7 gx#module-context::t '#f))
               (_%path151535%_
                (if (pair? _%path151533%_)
                    (##last _%path151533%_)
                    _%path151533%_)))
          (if (string? _%path151535%_) _%path151535%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path151507%_ _%reload?151508%_ _%eval?151509%_)
        (let ((_%ctx151511%_
               ((gx#current-expander-module-import)
                _%path151507%_
                _%reload?151508%_)))
          (if (and _%ctx151511%_ _%eval?151509%_)
              (gx#eval-module _%ctx151511%_)
              '#!void)
          _%ctx151511%_)))
    (define gx#import-module__0
      (lambda (_%path151516%_)
        (let* ((_%reload?151518%_ '#f) (_%eval?151520%_ '#f))
          (gx#import-module__%
           _%path151516%_
           _%reload?151518%_
           _%eval?151520%_))))
    (define gx#import-module__1
      (lambda (_%path151522%_ _%reload?151523%_)
        (let ((_%eval?151525%_ '#f))
          (gx#import-module__%
           _%path151522%_
           _%reload?151523%_
           _%eval?151525%_))))
    (define gx#import-module
      (lambda _g152547_
        (let ((_g152548_ (##length _g152547_)))
          (cond ((##fx= _g152548_ 1) (apply gx#import-module__0 _g152547_))
                ((##fx= _g152548_ 2) (apply gx#import-module__1 _g152547_))
                ((##fx= _g152548_ 3) (apply gx#import-module__% _g152547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g152547_))))))
    (define gx#eval-module
      (lambda (_%mod151504%_)
        ((gx#current-expander-module-eval) _%mod151504%_)))
    (define gx#core-eval-module
      (lambda (_%obj151483%_)
        (letrec ((_%force-e151485%_
                  (lambda (_%getf151499%_ _%e151500%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf151499%_ _%e151500%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e151500%_))))
          (let _%recur151487%_ ((_%e151489%_ _%obj151483%_))
            (if (##structure-instance-of? _%e151489%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e151492%_
                         (gx#core-context-prelude__% _%e151489%_)))
                    (if _%$e151492%_ (_%recur151487%_ _%$e151492%_) '#!void))
                  (_%force-e151485%_ gx#module-context-e _%e151489%_))
                (if (##structure-instance-of?
                     _%e151489%_
                     'gx#prelude-context::t)
                    (_%force-e151485%_ gx#prelude-context-e _%e151489%_)
                    (if (gx#stx-string? _%e151489%_)
                        (_%recur151487%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e151489%_)))
                        (if (gx#core-library-module-path? _%e151489%_)
                            (_%recur151487%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e151489%_)))
                            (error '"cannot eval module" _%obj151483%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx151463%_)
        (let _%lp151465%_ ((_%e151467%_ _%ctx151463%_))
          (if (or (##structure-instance-of? _%e151467%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e151467%_ 'gx#local-context::t))
              (_%lp151465%_ (##unchecked-structure-ref _%e151467%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e151467%_ 'gx#prelude-context::t)
                  _%e151467%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx151479%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx151479%_))))
    (define gx#core-context-prelude
      (lambda _g152549_
        (let ((_g152550_ (##length _g152549_)))
          (cond ((##fx= _g152550_ 0)
                 (apply gx#core-context-prelude__0 _g152549_))
                ((##fx= _g152550_ 1)
                 (apply gx#core-context-prelude__% _g152549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g152549_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx151454%_)
        (let ((_%$e151456%_ (__hash-get gx#__module-registry _%ctx151454%_)))
          (if _%$e151456%_
              _%$e151456%_
              (let ((_%pre151460%_
                     (let ((__obj152540
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
                        __obj152540
                        _%ctx151454%_)
                       __obj152540)))
                (__hash-put! gx#__module-registry _%ctx151454%_ _%pre151460%_)
                _%pre151460%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath151322%_ _%reload?151323%_)
        (letrec ((_%import-source151325%_
                  (lambda (_%path151413%_)
                    (if (member _%path151413%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path151413%_)
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
                                      (let ((_g152551_
                                             (gx#core-read-module
                                              _%path151413%_)))
                                        (begin
                                          (let ((_g152552_
                                                 (if (##values? _g152551_)
                                                     (##values-length
                                                      _g152551_)
                                                     1)))
                                            (if (not (##fx= _g152552_ 4))
                                                (error "Context expects 4 values"
                                                       _g152552_)))
                                          (let ((_%pre151421%_
                                                 (##values-ref _g152551_ 0))
                                                (_%id151422%_
                                                 (##values-ref _g152551_ 1))
                                                (_%ns151423%_
                                                 (##values-ref _g152551_ 2))
                                                (_%body151424%_
                                                 (##values-ref _g152551_ 3)))
                                            (let* ((_%prelude151434%_
                                                    (if (##structure-instance-of?
                                                         _%pre151421%_
                                                         'gx#prelude-context::t)
                                                        _%pre151421%_
                                                        (if (##structure-instance-of?
                                                             _%pre151421%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre151421%_)
                                                            (if (string? _%pre151421%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre151421%_))
                        (if (not _%pre151421%_)
                            (let ((_%$e151430%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e151430%_
                                  _%$e151430%_
                                  (let ((__obj152541
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
                                     __obj152541
                                     '#f)
                                    __obj152541)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath151322%_
                                   _%pre151421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx151436%_
                                                    (let ((__obj152542
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
                                                       __obj152542
                                                       _%id151422%_
                                                       _%prelude151434%_
                                                       _%ns151423%_
                                                       _%path151413%_)
                                                      __obj152542))
                                                   (_%body151438%_
                                                    (gx#core-expand-module-begin
                                                     _%body151424%_
                                                     _%ctx151436%_))
                                                   (_%body151440%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body151438%_)
                                                     _%path151413%_
                                                     _%ctx151436%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx151436%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body151440%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx151436%_
                                               _%body151440%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path151413%_
                                               _%ctx151436%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id151422%_
                                               _%ctx151436%_)
                                              _%ctx151436%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path151413%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule151326%_
                  (lambda (_%rpath151342%_)
                    (let* ((_%rpath151343151350%_ _%rpath151342%_)
                           (_%E151345151353%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath151343151350%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K151346151401%_
                            (lambda (_%refs151356%_ _%origin151357%_)
                              (let ((_%ctx151359%_
                                     (if _%origin151357%_
                                         (gx#core-import-module__%
                                          _%origin151357%_
                                          _%reload?151323%_)
                                         (gx#current-expander-context))))
                                (let _%lp151361%_ ((_%rest151363%_
                                                    _%refs151356%_)
                                                   (_%ctx151364%_
                                                    _%ctx151359%_))
                                  (let* ((_%rest151365151373%_ _%rest151363%_)
                                         (_%else151367151381%_
                                          (lambda () _%ctx151364%_))
                                         (_%K151369151389%_
                                          (lambda (_%rest151384%_ _%id151385%_)
                                            (let ((_%bind151387%_
                                                   (gx#resolve-identifier__%
                                                    _%id151385%_
                                                    '0
                                                    _%ctx151364%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind151387%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind151387%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp151361%_
                                                   _%rest151384%_
                                                   (##unchecked-structure-ref
                                                    _%bind151387%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath151342%_
                                                         _%id151385%_
                                                         _%bind151387%_))))))
                                    (if (pair? _%rest151365151373%_)
                                        (let ((_%hd151370151392%_
                                               (##car _%rest151365151373%_))
                                              (_%tl151371151394%_
                                               (##cdr _%rest151365151373%_)))
                                          (let* ((_%id151397%_
                                                  _%hd151370151392%_)
                                                 (_%rest151399%_
                                                  _%tl151371151394%_))
                                            (_%K151369151389%_
                                             _%rest151399%_
                                             _%id151397%_)))
                                        (_%else151367151381%_))))))))
                      (if (pair? _%rpath151343151350%_)
                          (let ((_%hd151347151404%_
                                 (##car _%rpath151343151350%_))
                                (_%tl151348151406%_
                                 (##cdr _%rpath151343151350%_)))
                            (let* ((_%origin151409%_ _%hd151347151404%_)
                                   (_%refs151411%_ _%tl151348151406%_))
                              (_%K151346151401%_
                               _%refs151411%_
                               _%origin151409%_)))
                          (_%E151345151353%_))))))
          (let ((_%$e151328%_
                 (if (not _%reload?151323%_)
                     (__hash-get gx#__module-registry _%rpath151322%_)
                     '#f)))
            (if _%$e151328%_
                _%$e151328%_
                (if (list? _%rpath151322%_)
                    (_%import-submodule151326%_ _%rpath151322%_)
                    (if (gx#core-library-module-path? _%rpath151322%_)
                        (let ((_%ctx151333%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath151322%_)
                                _%reload?151323%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath151322%_
                           _%ctx151333%_)
                          _%ctx151333%_)
                        (let* ((_%npath151336%_
                                (path-normalize _%rpath151322%_))
                               (_%$e151338%_
                                (if (not _%reload?151323%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath151336%_)
                                    '#f)))
                          (if _%$e151338%_
                              _%$e151338%_
                              (_%import-source151325%_
                               _%npath151336%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath151447%_)
        (let ((_%reload?151449%_ '#f))
          (gx#core-import-module__% _%rpath151447%_ _%reload?151449%_))))
    (define gx#core-import-module
      (lambda _g152553_
        (let ((_g152554_ (##length _g152553_)))
          (cond ((##fx= _g152554_ 1)
                 (apply gx#core-import-module__0 _g152553_))
                ((##fx= _g152554_ 2)
                 (apply gx#core-import-module__% _g152553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g152553_))))))
    (define gx#core-read-module
      (lambda (_%path151311%_)
        (__with-catch
         (lambda (_%exn151313%_)
           (if (and (datum-parsing-exception? _%exn151313%_)
                    (eq? (datum-parsing-exception-filepos _%exn151313%_) '0))
               (gx#core-read-module/lang _%path151311%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path151311%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g151315151317%_)
                      (display-exception__% _%exn151313%_ _%g151315151317%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path151311%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path151163%_)
        (let _%lp151165%_ ((_%body151167%_
                            (read-syntax-from-file _%path151163%_))
                           (_%pre151168%_ '#f)
                           (_%ns151169%_ '#f)
                           (_%pkg151170%_ '#f))
          (let* ((_%e151171151195%_ _%body151167%_)
                 (_%E151187151221%_
                  (lambda ()
                    (let ((_g152555_
                           (if _%pkg151170%_
                               (values _%pre151168%_
                                       _%ns151169%_
                                       _%pkg151170%_)
                               (gx#core-read-module-package
                                _%path151163%_
                                _%pre151168%_
                                _%ns151169%_))))
                      (begin
                        (let ((_g152556_
                               (if (##values? _g152555_)
                                   (##values-length _g152555_)
                                   1)))
                          (if (not (##fx= _g152556_ 3))
                              (error "Context expects 3 values" _g152556_)))
                        (let ((_%pre151199%_ (##values-ref _g152555_ 0))
                              (_%ns151200%_ (##values-ref _g152555_ 1))
                              (_%pkg151201%_ (##values-ref _g152555_ 2)))
                          (let* ((_%prelude151207%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre151199%_)
                                      (gx#syntax-local-e__0 _%pre151199%_)
                                      (if (gx#core-library-module-path?
                                           _%pre151199%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre151199%_)
                                          (if (gx#stx-string? _%pre151199%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre151199%_
                                               _%path151163%_)
                                              (gx#stx-e _%pre151199%_)))))
                                 (_%path-id151209%_
                                  (gx#core-module-path->namespace
                                   _%path151163%_))
                                 (_%pkg-id151211%_
                                  (if _%pkg151201%_
                                      (##string-append
                                       _%pkg151201%_
                                       '"/"
                                       _%path-id151209%_)
                                      _%path-id151209%_))
                                 (_%module-id151213%_
                                  (##string->symbol _%pkg-id151211%_))
                                 (_%module-ns151218%_
                                  (if (eq? _%ns151200%_ '#!void)
                                      '#f
                                      (let ((_%$e151215%_ _%ns151200%_))
                                        (if _%$e151215%_
                                            _%$e151215%_
                                            _%pkg-id151211%_)))))
                            (values _%prelude151207%_
                                    _%module-id151213%_
                                    _%module-ns151218%_
                                    _%body151167%_)))))))
                 (_%E151180151253%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151171151195%_)
                        (let ((_%e151188151225%_
                               (gx#syntax-e _%e151171151195%_)))
                          (let ((_%hd151189151228%_ (##car _%e151188151225%_))
                                (_%tl151190151230%_ (##cdr _%e151188151225%_)))
                            (if (eq? (gx#stx-e _%hd151189151228%_) 'package:)
                                (if (gx#stx-pair? _%tl151190151230%_)
                                    (let ((_%e151191151233%_
                                           (gx#syntax-e _%tl151190151230%_)))
                                      (let ((_%hd151192151236%_
                                             (##car _%e151191151233%_))
                                            (_%tl151193151238%_
                                             (##cdr _%e151191151233%_)))
                                        (let* ((_%pkg151241%_
                                                _%hd151192151236%_)
                                               (_%rest151243%_
                                                _%tl151193151238%_)
                                               (_%pkg151251%_
                                                (if (gx#identifier?
                                                     _%pkg151241%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg151241%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg151241%_)
                                                            (gx#stx-false?
                                                             _%pkg151241%_))
                                                        (gx#stx-e
                                                         _%pkg151241%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg151241%_)))))
                                          (_%lp151165%_
                                           _%rest151243%_
                                           _%pre151168%_
                                           _%ns151169%_
                                           _%pkg151251%_))))
                                    (_%E151187151221%_))
                                (_%E151187151221%_))))
                        (_%E151187151221%_))))
                 (_%E151173151283%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151171151195%_)
                        (let ((_%e151181151257%_
                               (gx#syntax-e _%e151171151195%_)))
                          (let ((_%hd151182151260%_ (##car _%e151181151257%_))
                                (_%tl151183151262%_ (##cdr _%e151181151257%_)))
                            (if (eq? (gx#stx-e _%hd151182151260%_) 'namespace:)
                                (if (gx#stx-pair? _%tl151183151262%_)
                                    (let ((_%e151184151265%_
                                           (gx#syntax-e _%tl151183151262%_)))
                                      (let ((_%hd151185151268%_
                                             (##car _%e151184151265%_))
                                            (_%tl151186151270%_
                                             (##cdr _%e151184151265%_)))
                                        (let* ((_%ns151273%_
                                                _%hd151185151268%_)
                                               (_%rest151275%_
                                                _%tl151186151270%_)
                                               (_%ns151281%_
                                                (if (gx#identifier?
                                                     _%ns151273%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns151273%_))
                                                    (if (gx#stx-string?
                                                         _%ns151273%_)
                                                        (gx#stx-e _%ns151273%_)
                                                        (if (gx#stx-false?
                                                             _%ns151273%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns151273%_))))))
                                          (_%lp151165%_
                                           _%rest151275%_
                                           _%pre151168%_
                                           _%ns151281%_
                                           _%pkg151170%_))))
                                    (_%E151180151253%_))
                                (_%E151180151253%_))))
                        (_%E151180151253%_))))
                 (_%E151172151307%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151171151195%_)
                        (let ((_%e151174151287%_
                               (gx#syntax-e _%e151171151195%_)))
                          (let ((_%hd151175151290%_ (##car _%e151174151287%_))
                                (_%tl151176151292%_ (##cdr _%e151174151287%_)))
                            (if (eq? (gx#stx-e _%hd151175151290%_) 'prelude:)
                                (if (gx#stx-pair? _%tl151176151292%_)
                                    (let ((_%e151177151295%_
                                           (gx#syntax-e _%tl151176151292%_)))
                                      (let ((_%hd151178151298%_
                                             (##car _%e151177151295%_))
                                            (_%tl151179151300%_
                                             (##cdr _%e151177151295%_)))
                                        (let* ((_%prelude151303%_
                                                _%hd151178151298%_)
                                               (_%rest151305%_
                                                _%tl151179151300%_))
                                          (_%lp151165%_
                                           _%rest151305%_
                                           _%prelude151303%_
                                           _%ns151169%_
                                           _%pkg151170%_))))
                                    (_%E151173151283%_))
                                (_%E151173151283%_))))
                        (_%E151173151283%_)))))
            (_%E151172151307%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path150984%_)
        (letrec ((_%default-read-module-body150986%_
                  (lambda (_%inp151155%_)
                    (let _%lp151157%_ ((_%body151159%_ '()))
                      (let ((_%next151161%_ (read-syntax__% _%inp151155%_)))
                        (if (eof-object? _%next151161%_)
                            (reverse _%body151159%_)
                            (_%lp151157%_
                             (cons _%next151161%_ _%body151159%_)))))))
                 (_%read-body150987%_
                  (lambda (_%inp151072%_
                           _%pre151073%_
                           _%ns151074%_
                           _%pkg151075%_
                           _%args151076%_)
                    (let ((_g152557_
                           (if _%pkg151075%_
                               (values _%pre151073%_
                                       _%ns151074%_
                                       _%pkg151075%_)
                               (gx#core-read-module-package
                                _%path150984%_
                                _%pre151073%_
                                _%ns151074%_))))
                      (begin
                        (let ((_g152558_
                               (if (##values? _g152557_)
                                   (##values-length _g152557_)
                                   1)))
                          (if (not (##fx= _g152558_ 3))
                              (error "Context expects 3 values" _g152558_)))
                        (let ((_%pre151078%_ (##values-ref _g152557_ 0))
                              (_%ns151079%_ (##values-ref _g152557_ 1))
                              (_%pkg151080%_ (##values-ref _g152557_ 2)))
                          (let* ((_%prelude151082%_
                                  (gx#import-module__0 _%pre151078%_))
                                 (_%read-module-body151137%_
                                  (let ((_%$e151128%_
                                         (__find (lambda (_%e151083151085%_)
                                                   (let* ((_%e151083151087151097%_
                                                           _%e151083151085%_)
                                                          (_%else151089151105%_
                                                           (lambda () '#f))
                                                          (_%K151091151109%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e151083151087151097%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e151092151112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e151083151087151097%_
                          '1
                          '#f
                          '#f))
                        (_%e151093151115%_
                         (##unchecked-structure-ref
                          _%e151083151087151097%_
                          '2
                          '#f
                          '#f))
                        (_%e151094151118%_
                         (##unchecked-structure-ref
                          _%e151083151087151097%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e151094151118%_ '1)
                       (let ((_%e151095151121%_
                              (##unchecked-structure-ref
                               _%e151083151087151097%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g151123151125%_)
                                (eq? _%g151123151125%_ 'read-module-body))
                              _%e151095151121%_)
                             (_%K151091151109%_)
                             (_%else151089151105%_)))
                       (_%else151089151105%_)))
                 (_%else151089151105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude151082%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e151128%_
                                        ((lambda (_%xport151131%_)
                                           (let ((_%proc151134%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport151131%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc151134%_)
                                                 _%proc151134%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path150984%_
                                                  _%pre151078%_
                                                  _%proc151134%_))))
                                         _%$e151128%_)
                                        _%default-read-module-body150986%_)))
                                 (_%path-id151139%_
                                  (gx#core-module-path->namespace
                                   _%path150984%_))
                                 (_%pkg-id151141%_
                                  (if _%pkg151080%_
                                      (##string-append
                                       _%pkg151080%_
                                       '"/"
                                       _%path-id151139%_)
                                      _%path-id151139%_))
                                 (_%module-id151143%_
                                  (##string->symbol _%pkg-id151141%_))
                                 (_%module-ns151148%_
                                  (let ((_%$e151145%_ _%ns151079%_))
                                    (if _%$e151145%_
                                        _%$e151145%_
                                        _%pkg-id151141%_)))
                                 (_%body151152%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body151137%_
                                         _%inp151072%_))
                                      gx#current-module-reader-args
                                      _%args151076%_))
                                   gx#current-module-reader-path
                                   _%path150984%_)))
                            (values _%prelude151082%_
                                    _%module-id151143%_
                                    _%module-ns151148%_
                                    _%body151152%_)))))))
                 (_%string-e150988%_
                  (lambda (_%obj151066%_ _%what151067%_)
                    (if (string? _%obj151066%_)
                        _%obj151066%_
                        (if (symbol? _%obj151066%_)
                            (##symbol->string _%obj151066%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what151067%_)
                             _%path150984%_
                             _%obj151066%_)))))
                 (_%read-lang-args150989%_
                  (lambda (_%inp151021%_ _%args151022%_)
                    (let* ((_%args151023151031%_ _%args151022%_)
                           (_%else151025151039%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path150984%_)))
                           (_%K151027151054%_
                            (lambda (_%args151042%_ _%prelude151043%_)
                              (let* ((_%pkg151045%_
                                      (pgetq__0 'package: _%args151042%_))
                                     (_%pkg151047%_
                                      (if _%pkg151045%_
                                          (_%string-e150988%_
                                           _%pkg151045%_
                                           '"package")
                                          '#f))
                                     (_%ns151049%_
                                      (pgetq__0 'namespace: _%args151042%_))
                                     (_%ns151051%_
                                      (if _%ns151049%_
                                          (_%string-e150988%_
                                           _%ns151049%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body150987%_
                                 _%inp151021%_
                                 _%prelude151043%_
                                 _%ns151051%_
                                 _%pkg151047%_
                                 _%args151042%_)))))
                      (if (pair? _%args151023151031%_)
                          (let ((_%hd151028151057%_
                                 (##car _%args151023151031%_))
                                (_%tl151029151059%_
                                 (##cdr _%args151023151031%_)))
                            (let* ((_%prelude151062%_ _%hd151028151057%_)
                                   (_%args151064%_ _%tl151029151059%_))
                              (_%K151027151054%_
                               _%args151064%_
                               _%prelude151062%_)))
                          (_%else151025151039%_)))))
                 (_%read-lang150990%_
                  (lambda (_%inp150995%_)
                    (let* ((_%head150997%_ (read-line _%inp150995%_))
                           (_%$e150999%_
                            (string-index__0 _%head150997%_ '#\space)))
                      (if _%$e150999%_
                          ((lambda (_%ix151002%_)
                             (let ((_%lang151004%_
                                    (substring
                                     _%head150997%_
                                     '0
                                     _%ix151002%_)))
                               (if (equal? _%lang151004%_ '"#lang")
                                   (let* ((_%rest151006%_
                                           (substring
                                            _%head150997%_
                                            (##fx+ _%ix151002%_ '1)
                                            (string-length _%head150997%_)))
                                          (_%args151017%_
                                           (__with-catch
                                            (lambda (_%g151007151009%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path150984%_
                                               _%g151007151009%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest151006%_
                                               (lambda (_%g151012151014%_)
                                                 (read-all
                                                  _%g151012151014%_
                                                  read)))))))
                                     (_%read-lang-args150989%_
                                      _%inp150995%_
                                      _%args151017%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path150984%_))))
                           _%$e150999%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path150984%_)))))
                 (_%read-e150991%_
                  (lambda (_%inp150993%_)
                    (if (eq? (peek-char _%inp150993%_) '#\#)
                        (_%read-lang150990%_ _%inp150993%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path150984%_)))))
          (gx#call-with-input-source-file _%path150984%_ _%read-e150991%_))))
    (define gx#core-read-module-package
      (lambda (_%path150932%_ _%pre150933%_ _%ns150934%_)
        (letrec ((_%string-e150936%_
                  (lambda (_%e150979%_)
                    (if (symbol? _%e150979%_)
                        (##symbol->string _%e150979%_)
                        (if (string? _%e150979%_)
                            _%e150979%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e150979%_))))))
          (let _%lp150938%_ ((_%dir150940%_ (path-directory _%path150932%_))
                             (_%pkg-path150941%_ '()))
            (let ((_%gerbil.pkg150943%_
                   (path-expand '"gerbil.pkg" _%dir150940%_)))
              (if (##file-exists? _%gerbil.pkg150943%_)
                  (let ((_%plist150945%_
                         (gx#core-library-package-plist__% _%dir150940%_ '#t)))
                    (if (null? _%plist150945%_)
                        (let ((_%pkg150948%_
                               (if (null? _%pkg-path150941%_)
                                   '#f
                                   (string-join _%pkg-path150941%_ '"/"))))
                          (values _%pre150933%_ _%ns150934%_ _%pkg150948%_))
                        (if (list? _%plist150945%_)
                            (let* ((_%root150951%_
                                    (pgetq__0 'package: _%plist150945%_))
                                   (_%pkg150955%_
                                    (let ((_%pkg-path150953%_
                                           (if _%root150951%_
                                               (cons (_%string-e150936%_
                                                      _%root150951%_)
                                                     _%pkg-path150941%_)
                                               _%pkg-path150941%_)))
                                      (if (null? _%pkg-path150953%_)
                                          '#f
                                          (string-join
                                           _%pkg-path150953%_
                                           '"/"))))
                                   (_%ns150962%_
                                    (let ((_%ns150960%_
                                           (let ((_%$e150957%_ _%ns150934%_))
                                             (if _%$e150957%_
                                                 _%$e150957%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist150945%_)))))
                                      (if _%ns150960%_
                                          (_%string-e150936%_ _%ns150960%_)
                                          '#f)))
                                   (_%pre150967%_
                                    (let ((_%$e150964%_ _%pre150933%_))
                                      (if _%$e150964%_
                                          _%$e150964%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist150945%_)))))
                              (values _%pre150967%_
                                      _%ns150962%_
                                      _%pkg150955%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist150945%_))))
                  (let ((_%dir*150971%_
                         (path-strip-trailing-directory-separator
                          _%dir150940%_)))
                    (if (or (__string-empty? _%dir*150971%_)
                            (equal? _%dir150940%_ _%dir*150971%_))
                        (values _%pre150933%_ _%ns150934%_ '#f)
                        (let ((_%xpath150976%_
                               (path-strip-directory _%dir*150971%_))
                              (_%xdir150977%_ (path-directory _%dir*150971%_)))
                          (_%lp150938%_
                           _%xdir150977%_
                           (cons _%xpath150976%_ _%pkg-path150941%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path150930%_)
        (path-strip-extension (path-strip-directory _%path150930%_))))
    (define gx#core-module-path->id
      (lambda (_%path150928%_)
        (##string->symbol (gx#core-module-path->namespace _%path150928%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path150907%_ _%rel150908%_)
        (let* ((_%path150910%_ (gx#stx-e _%stx-path150907%_))
               (_%path150912%_
                (if (__string-empty? (path-extension _%path150910%_))
                    (##string-append _%path150910%_ '".ss")
                    _%path150910%_)))
          (gx#core-resolve-path__%
           _%path150912%_
           (let ((_%$e150915%_ (gx#stx-source _%stx-path150907%_)))
             (if _%$e150915%_ _%$e150915%_ _%rel150908%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path150921%_)
        (let ((_%rel150923%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path150921%_ _%rel150923%_))))
    (define gx#core-resolve-module-path
      (lambda _g152559_
        (let ((_g152560_ (##length _g152559_)))
          (cond ((##fx= _g152560_ 1)
                 (apply gx#core-resolve-module-path__0 _g152559_))
                ((##fx= _g152560_ 2)
                 (apply gx#core-resolve-module-path__% _g152559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g152559_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath150792%_)
        (let* ((_%spath150794%_ (symbol->string (gx#stx-e _%libpath150792%_)))
               (_%spath150796%_
                (substring
                 _%spath150794%_
                 '1
                 (##string-length _%spath150794%_)))
               (_%ext150798%_ (path-extension _%spath150796%_))
               (_%ssi150800%_
                (if (__string-empty? _%ext150798%_)
                    (##string-append _%spath150796%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath150796%_)
                     '".ssi")))
               (_%srcs150804%_
                (if (__string-empty? _%ext150798%_)
                    (##map (lambda (_%ext150802%_)
                             (string-append _%spath150796%_ _%ext150802%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath150796%_ '()))))
          (let _%lp150807%_ ((_%rest150809%_ (load-path)))
            (let* ((_%rest150810150819%_ _%rest150809%_)
                   (_%E150813150823%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest150810150819%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K150815150894%_
                     (lambda (_%rest150834%_ _%dir150835%_)
                       (letrec ((_%resolve150837%_
                                 (lambda (_%ssi150850%_ _%srcs150851%_)
                                   (let ((_%compiled-path150853%_
                                          (path-expand
                                           _%ssi150850%_
                                           _%dir150835%_)))
                                     (if (##file-exists?
                                          _%compiled-path150853%_)
                                         (path-normalize
                                          _%compiled-path150853%_)
                                         (let _%lpr150855%_ ((_%rest-src150857%_
                                                              _%srcs150851%_))
                                           (let* ((_%rest-src150858150866%_
                                                   _%rest-src150857%_)
                                                  (_%else150860150874%_
                                                   (lambda ()
                                                     (_%lp150807%_
                                                      _%rest150834%_)))
                                                  (_%K150862150882%_
                                                   (lambda (_%rest-src150877%_
                                                            _%src150878%_)
                                                     (let ((_%src-path150880%_
                                                            (path-expand
                                                             _%src150878%_
                                                             _%dir150835%_)))
                                                       (if (##file-exists?
                                                            _%src-path150880%_)
                                                           (path-normalize
                                                            _%src-path150880%_)
                                                           (_%lpr150855%_
                                                            _%rest-src150877%_))))))
                                             (if (pair? _%rest-src150858150866%_)
                                                 (let ((_%hd150863150885%_
                                                        (##car _%rest-src150858150866%_))
                                                       (_%tl150864150887%_
                                                        (##cdr _%rest-src150858150866%_)))
                                                   (let* ((_%src150890%_
                                                           _%hd150863150885%_)
                                                          (_%rest-src150892%_
                                                           _%tl150864150887%_))
                                                     (_%K150862150882%_
                                                      _%rest-src150892%_
                                                      _%src150890%_)))
                                                 (_%else150860150874%_)))))))))
                         (let ((_%$e150839%_
                                (gx#core-library-package-path-prefix
                                 _%dir150835%_)))
                           (if _%$e150839%_
                               ((lambda (_%prefix150842%_)
                                  (if (string-prefix?
                                       _%prefix150842%_
                                       _%spath150796%_)
                                      (let ((_%ssi150846%_
                                             (substring
                                              _%ssi150800%_
                                              (string-length _%prefix150842%_)
                                              (##string-length _%ssi150800%_)))
                                            (_%srcs150847%_
                                             (##map (lambda (_%src150844%_)
                                                      (substring
                                                       _%src150844%_
                                                       (string-length
                                                        _%prefix150842%_)
                                                       (string-length
                                                        _%src150844%_)))
                                                    _%srcs150804%_)))
                                        (_%resolve150837%_
                                         _%ssi150846%_
                                         _%srcs150847%_))
                                      (_%lp150807%_ _%rest150834%_)))
                                _%$e150839%_)
                               (_%resolve150837%_
                                _%ssi150800%_
                                _%srcs150804%_))))))
                    (_%K150814150828%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath150792%_))))
                (let ((_%try-match150812150831%_
                       (lambda ()
                         (if (null? _%rest150810150819%_)
                             (_%K150814150828%_)
                             (_%E150813150823%_)))))
                  (if (pair? _%rest150810150819%_)
                      (let ((_%tl150817150899%_ (##cdr _%rest150810150819%_))
                            (_%hd150816150897%_ (##car _%rest150810150819%_)))
                        (let ((_%dir150902%_ _%hd150816150897%_)
                              (_%rest150904%_ _%tl150817150899%_))
                          (_%K150815150894%_ _%rest150904%_ _%dir150902%_)))
                      (_%try-match150812150831%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath150760%_)
        (letrec ((_%resolve150762%_
                  (lambda (_%path150783%_ _%base150784%_)
                    (let ((_%$e150786%_
                           (string-rindex__0 _%base150784%_ '#\/)))
                      (if _%$e150786%_
                          ((lambda (_%idx150789%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base150784%_ '0 _%idx150789%_)
                                '"/"
                                _%path150783%_))))
                           _%$e150786%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path150783%_))))))))
          (let ((_%spath150764%_ (symbol->string (gx#stx-e _%modpath150760%_)))
                (_%mod150765%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod150765%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath150760%_))
            (let ((_%mpath150767%_
                   (symbol->string
                    (##structure-ref
                     _%mod150765%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp150769%_ ((_%spath150771%_ _%spath150764%_)
                                 (_%mpath150772%_ _%mpath150767%_))
                (if (string-prefix? '"../" _%spath150771%_)
                    (let ((_%$e150775%_
                           (string-rindex__0 _%mpath150772%_ '#\/)))
                      (if _%$e150775%_
                          ((lambda (_%idx150778%_)
                             (_%lp150769%_
                              (substring
                               _%spath150771%_
                               '3
                               (string-length _%spath150771%_))
                              (substring _%mpath150772%_ '0 _%idx150778%_)))
                           _%$e150775%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath150760%_)))
                    (if (string-prefix? '"./" _%spath150771%_)
                        (_%lp150769%_
                         (substring
                          _%spath150771%_
                          '2
                          (string-length _%spath150771%_))
                         _%mpath150772%_)
                        (_%resolve150762%_
                         _%spath150771%_
                         _%mpath150772%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir150752%_)
        (let ((_%$e150754%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir150752%_))))
          (if _%$e150754%_
              ((lambda (_%pkg150757%_)
                 (##string-append (symbol->string _%pkg150757%_) '"/"))
               _%$e150754%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir150722%_ _%exists?150723%_)
        (let ((_%$e150725%_ (__hash-get gx#__module-pkg-cache _%dir150722%_)))
          (if _%$e150725%_
              _%$e150725%_
              (let* ((_%gerbil.pkg150729%_
                      (path-expand '"gerbil.pkg" _%dir150722%_))
                     (_%plist150739%_
                      (if (or _%exists?150723%_
                              (##file-exists? _%gerbil.pkg150729%_))
                          (let ((_%e150734%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg150729%_
                                  read)))
                            (if (eof-object? _%e150734%_)
                                '()
                                (if (list? _%e150734%_)
                                    _%e150734%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg150729%_
                                     _%e150734%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir150722%_
                 _%plist150739%_)
                _%plist150739%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir150745%_)
        (let ((_%exists?150747%_ '#f))
          (gx#core-library-package-plist__% _%dir150745%_ _%exists?150747%_))))
    (define gx#core-library-package-plist
      (lambda _g152561_
        (let ((_g152562_ (##length _g152561_)))
          (cond ((##fx= _g152562_ 1)
                 (apply gx#core-library-package-plist__0 _g152561_))
                ((##fx= _g152562_ 2)
                 (apply gx#core-library-package-plist__% _g152561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g152561_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx150719%_)
        (gx#core-special-module-path? _%stx150719%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx150717%_)
        (gx#core-special-module-path? _%stx150717%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx150712%_ _%char150713%_)
        (if (gx#identifier? _%stx150712%_)
            (if (interned-symbol? (gx#stx-e _%stx150712%_))
                (let ((_%str150715%_
                       (symbol->string (gx#stx-e _%stx150712%_))))
                  (if (##fx> (##string-length _%str150715%_) '1)
                      (eq? (string-ref _%str150715%_ '0) _%char150713%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx150706%_)
        (gx#core-bound-identifier?__%
         _%stx150706%_
         (lambda (_%g150707150709%_)
           (gx#expander-binding?__% _%g150707150709%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx150700%_)
        (gx#core-bound-identifier?__%
         _%stx150700%_
         (lambda (_%g150701150703%_)
           (gx#expander-binding?__% _%g150701150703%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx150687%_)
        (letrec ((_%module-prelude?150689%_
                  (lambda (_%e150695%_)
                    (let ((_%$e150697%_
                           (##structure-instance-of?
                            _%e150695%_
                            'gx#module-context::t)))
                      (if _%$e150697%_
                          _%$e150697%_
                          (##structure-instance-of?
                           _%e150695%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx150687%_
           (lambda (_%g150690150692%_)
             (gx#expander-binding?__%
              _%g150690150692%_
              _%module-prelude?150689%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in150618%_ _%ctx150619%_ _%force-weak?150620%_)
        (let* ((_%in150621150630%_ _%in150618%_)
               (_%E150623150633%_
                (lambda ()
                  (error '"No clause matching"
                         _%in150621150630%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K150624150646%_
                (lambda (_%weak?150636%_
                         _%phi150637%_
                         _%key150638%_
                         _%source150639%_)
                  (gx#core-bind!__%
                   _%key150638%_
                   (let* ((_%e150641%_
                           (gx#core-resolve-module-export _%source150639%_))
                          (__obj152543
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
                      __obj152543
                      (##unchecked-structure-ref _%e150641%_ '1 '#f '#f)
                      _%key150638%_
                      _%phi150637%_
                      _%e150641%_
                      (##unchecked-structure-ref _%source150639%_ '1 '#f '#f)
                      (let ((_%$e150643%_ _%force-weak?150620%_))
                        (if _%$e150643%_ _%$e150643%_ _%weak?150636%_)))
                     __obj152543)
                   gx#core-context-rebind?
                   _%phi150637%_
                   _%ctx150619%_))))
          (if (##structure-direct-instance-of?
               _%in150621150630%_
               'gx#module-import::t)
              (let* ((_%e150625150649%_
                      (##unchecked-structure-ref
                       _%in150621150630%_
                       '1
                       '#f
                       '#f))
                     (_%source150652%_ _%e150625150649%_)
                     (_%e150626150654%_
                      (##unchecked-structure-ref
                       _%in150621150630%_
                       '2
                       '#f
                       '#f))
                     (_%key150657%_ _%e150626150654%_)
                     (_%e150627150659%_
                      (##unchecked-structure-ref
                       _%in150621150630%_
                       '3
                       '#f
                       '#f))
                     (_%phi150662%_ _%e150627150659%_)
                     (_%e150628150664%_
                      (##unchecked-structure-ref
                       _%in150621150630%_
                       '4
                       '#f
                       '#f))
                     (_%weak?150667%_ _%e150628150664%_))
                (_%K150624150646%_
                 _%weak?150667%_
                 _%phi150662%_
                 _%key150657%_
                 _%source150652%_))
              (_%E150623150633%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in150672%_)
        (let* ((_%ctx150674%_ (gx#current-expander-context))
               (_%force-weak?150676%_ '#f))
          (gx#core-bind-import!__%
           _%in150672%_
           _%ctx150674%_
           _%force-weak?150676%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in150678%_ _%ctx150679%_)
        (let ((_%force-weak?150681%_ '#f))
          (gx#core-bind-import!__%
           _%in150678%_
           _%ctx150679%_
           _%force-weak?150681%_))))
    (define gx#core-bind-import!
      (lambda _g152563_
        (let ((_g152564_ (##length _g152563_)))
          (cond ((##fx= _g152564_ 1) (apply gx#core-bind-import!__0 _g152563_))
                ((##fx= _g152564_ 2) (apply gx#core-bind-import!__1 _g152563_))
                ((##fx= _g152564_ 3) (apply gx#core-bind-import!__% _g152563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g152563_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in150604%_ _%ctx150605%_)
        (gx#core-bind-import!__% _%in150604%_ _%ctx150605%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in150610%_)
        (let ((_%ctx150612%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in150610%_ _%ctx150612%_))))
    (define gx#core-bind-weak-import!
      (lambda _g152565_
        (let ((_g152566_ (##length _g152565_)))
          (cond ((##fx= _g152566_ 1)
                 (apply gx#core-bind-weak-import!__0 _g152565_))
                ((##fx= _g152566_ 2)
                 (apply gx#core-bind-weak-import!__% _g152565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g152565_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out150497%_)
        (letrec ((_%subst150499%_
                  (lambda (_%key150544%_)
                    (let* ((_%key150545150553%_ _%key150544%_)
                           (_%else150547150561%_ (lambda () _%key150544%_))
                           (_%K150549150591%_
                            (lambda (_%mark150564%_ _%id150565%_)
                              (let* ((_%mark150566150572%_ _%mark150564%_)
                                     (_%E150568150575%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark150566150572%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K150569150583%_
                                      (lambda (_%subst150578%_)
                                        (let ((_%$e150580%_
                                               (if _%subst150578%_
                                                   (hash-get
                                                    _%subst150578%_
                                                    _%id150565%_)
                                                   '#f)))
                                          (if _%$e150580%_
                                              _%$e150580%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key150544%_))))))
                                (if (##structure-instance-of?
                                     _%mark150566150572%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e150570150586%_
                                            (##unchecked-structure-ref
                                             _%mark150566150572%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst150589%_ _%e150570150586%_))
                                      (_%K150569150583%_ _%subst150589%_))
                                    (_%E150568150575%_))))))
                      (if (pair? _%key150545150553%_)
                          (let ((_%hd150550150594%_
                                 (##car _%key150545150553%_))
                                (_%tl150551150596%_
                                 (##cdr _%key150545150553%_)))
                            (let* ((_%id150599%_ _%hd150550150594%_)
                                   (_%mark150601%_ _%tl150551150596%_))
                              (_%K150549150591%_ _%mark150601%_ _%id150599%_)))
                          (_%else150547150561%_))))))
          (let* ((_%out150500150510%_ _%out150497%_)
                 (_%E150502150513%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out150500150510%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K150503150520%_
                  (lambda (_%phi150516%_ _%key150517%_ _%ctx150518%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx150518%_ _%phi150516%_)
                     (_%subst150499%_ _%key150517%_)))))
            (if (##structure-direct-instance-of?
                 _%out150500150510%_
                 'gx#module-export::t)
                (let* ((_%e150504150523%_
                        (##unchecked-structure-ref
                         _%out150500150510%_
                         '1
                         '#f
                         '#f))
                       (_%ctx150526%_ _%e150504150523%_)
                       (_%e150505150528%_
                        (##unchecked-structure-ref
                         _%out150500150510%_
                         '2
                         '#f
                         '#f))
                       (_%key150531%_ _%e150505150528%_)
                       (_%e150506150533%_
                        (##unchecked-structure-ref
                         _%out150500150510%_
                         '3
                         '#f
                         '#f))
                       (_%phi150536%_ _%e150506150533%_)
                       (_%e150507150538%_
                        (##unchecked-structure-ref
                         _%out150500150510%_
                         '4
                         '#f
                         '#f))
                       (_%e150508150541%_
                        (##unchecked-structure-ref
                         _%out150500150510%_
                         '5
                         '#f
                         '#f)))
                  (_%K150503150520%_
                   _%phi150536%_
                   _%key150531%_
                   _%ctx150526%_))
                (_%E150502150513%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out150423%_ _%rename150424%_ _%dphi150425%_)
        (let* ((_%out150426150436%_ _%out150423%_)
               (_%E150428150439%_
                (lambda ()
                  (error '"No clause matching"
                         _%out150426150436%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K150429150451%_
                (lambda (_%weak?150442%_
                         _%name150443%_
                         _%phi150444%_
                         _%key150445%_
                         _%ctx150446%_)
                  (##structure
                   gx#module-import::t
                   _%out150423%_
                   (let ((_%$e150448%_ _%rename150424%_))
                     (if _%$e150448%_ _%$e150448%_ _%name150443%_))
                   (fx+ _%phi150444%_ _%dphi150425%_)
                   _%weak?150442%_))))
          (if (##structure-direct-instance-of?
               _%out150426150436%_
               'gx#module-export::t)
              (let* ((_%e150430150454%_
                      (##unchecked-structure-ref
                       _%out150426150436%_
                       '1
                       '#f
                       '#f))
                     (_%ctx150457%_ _%e150430150454%_)
                     (_%e150431150459%_
                      (##unchecked-structure-ref
                       _%out150426150436%_
                       '2
                       '#f
                       '#f))
                     (_%key150462%_ _%e150431150459%_)
                     (_%e150432150464%_
                      (##unchecked-structure-ref
                       _%out150426150436%_
                       '3
                       '#f
                       '#f))
                     (_%phi150467%_ _%e150432150464%_)
                     (_%e150433150469%_
                      (##unchecked-structure-ref
                       _%out150426150436%_
                       '4
                       '#f
                       '#f))
                     (_%name150472%_ _%e150433150469%_)
                     (_%e150434150474%_
                      (##unchecked-structure-ref
                       _%out150426150436%_
                       '5
                       '#f
                       '#f))
                     (_%weak?150477%_ _%e150434150474%_))
                (_%K150429150451%_
                 _%weak?150477%_
                 _%name150472%_
                 _%phi150467%_
                 _%key150462%_
                 _%ctx150457%_))
              (_%E150428150439%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out150482%_)
        (let* ((_%rename150484%_ '#f) (_%dphi150486%_ '0))
          (gx#core-module-export->import__%
           _%out150482%_
           _%rename150484%_
           _%dphi150486%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out150488%_ _%rename150489%_)
        (let ((_%dphi150491%_ '0))
          (gx#core-module-export->import__%
           _%out150488%_
           _%rename150489%_
           _%dphi150491%_))))
    (define gx#core-module-export->import
      (lambda _g152567_
        (let ((_g152568_ (##length _g152567_)))
          (cond ((##fx= _g152568_ 1)
                 (apply gx#core-module-export->import__0 _g152567_))
                ((##fx= _g152568_ 2)
                 (apply gx#core-module-export->import__1 _g152567_))
                ((##fx= _g152568_ 3)
                 (apply gx#core-module-export->import__% _g152567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g152567_))))))
    (define gx#core-expand-module%
      (lambda (_%stx150322%_)
        (letrec ((_%make-context150324%_
                  (lambda (_%id150401%_)
                    (let* ((_%super150403%_ (gx#current-expander-context))
                           (_%bind-id150405%_ (gx#stx-e _%id150401%_))
                           (_%mod-id150407%_
                            (if (##structure-instance-of?
                                 _%super150403%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super150403%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id150405%_)
                                _%bind-id150405%_))
                           (_%ns150409%_ (symbol->string _%mod-id150407%_))
                           (_%path150419%_
                            (if (##structure-instance-of?
                                 _%super150403%_
                                 'gx#module-context::t)
                                (let ((_%path150411%_
                                       (##unchecked-structure-ref
                                        _%super150403%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path150411%_)
                                          (null? _%path150411%_))
                                      (cons _%bind-id150405%_ _%path150411%_)
                                      (if (not _%path150411%_)
                                          _%bind-id150405%_
                                          (cons _%bind-id150405%_
                                                (cons _%path150411%_ '())))))
                                _%bind-id150405%_))
                           (__obj152544
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
                       __obj152544
                       _%mod-id150407%_
                       _%super150403%_
                       _%ns150409%_
                       _%path150419%_)
                      __obj152544)))
                 (_%valid-module-id?150325%_
                  (lambda (_%id150376%_)
                    (let* ((_%str150378%_ (symbol->string _%id150376%_))
                           (_%len150380%_ (##string-length _%str150378%_)))
                      (if (##fx>= _%len150380%_ '1)
                          (let _%loop150383%_ ((_%index150385%_
                                                (##fx- (##string-length
                                                        _%str150378%_)
                                                       '1)))
                            (if (##fx>= _%index150385%_ '0)
                                (let ((_%c150387%_
                                       (string-ref
                                        _%str150378%_
                                        _%index150385%_)))
                                  (if (or (and (##char>=? _%c150387%_ '#\a)
                                               (##char<=? _%c150387%_ '#\z))
                                          (and (##char>=? _%c150387%_ '#\A)
                                               (##char<=? _%c150387%_ '#\Z))
                                          (and (##char>=? _%c150387%_ '#\0)
                                               (##char<=? _%c150387%_ '#\9))
                                          (##char=? _%c150387%_ '#\_)
                                          (##char=? _%c150387%_ '#\-))
                                      (_%loop150383%_
                                       (##fx- _%index150385%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e150326150336%_ _%stx150322%_)
                 (_%E150328150340%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150326150336%_)))
                 (_%E150327150372%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150326150336%_)
                        (let ((_%e150329150344%_
                               (gx#syntax-e _%e150326150336%_)))
                          (let ((_%hd150330150347%_ (##car _%e150329150344%_))
                                (_%tl150331150349%_ (##cdr _%e150329150344%_)))
                            (if (gx#stx-pair? _%tl150331150349%_)
                                (let ((_%e150332150352%_
                                       (gx#syntax-e _%tl150331150349%_)))
                                  (let ((_%hd150333150355%_
                                         (##car _%e150332150352%_))
                                        (_%tl150334150357%_
                                         (##cdr _%e150332150352%_)))
                                    (let* ((_%id150360%_ _%hd150333150355%_)
                                           (_%body150362%_ _%tl150334150357%_))
                                      (if (and (gx#identifier? _%id150360%_)
                                               (gx#stx-list? _%body150362%_))
                                          (if (_%valid-module-id?150325%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx150364%_
                                                      (_%make-context150324%_
                                                       _%id150360%_))
                                                     (_%body150366%_
                                                      (gx#core-expand-module-begin
                                                       _%body150362%_
                                                       _%ctx150364%_))
                                                     (_%body150368%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body150366%_)
                                                       (gx#stx-source
                                                        _%stx150322%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx150364%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body150368%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx150364%_
                                                 _%body150368%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id150360%_
                                                 _%ctx150364%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id150360%_)
                                                  _%body150368%_)
                                                 (gx#stx-source
                                                  _%stx150322%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx150322%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E150328150340%_)))))
                                (_%E150328150340%_))))
                        (_%E150328150340%_)))))
            (_%E150327150372%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body150287%_ _%ctx150288%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx150292%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body150287%_)))
                     (_%e150293150300%_ _%stx150292%_)
                     (_%E150295150304%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx150292%_)))
                     (_%E150294150318%_
                      (lambda ()
                        (if (gx#stx-pair? _%e150293150300%_)
                            (let ((_%e150296150308%_
                                   (gx#syntax-e _%e150293150300%_)))
                              (let ((_%hd150297150311%_
                                     (##car _%e150296150308%_))
                                    (_%tl150298150313%_
                                     (##cdr _%e150296150308%_)))
                                (if (and (gx#identifier? _%hd150297150311%_)
                                         (gx#core-identifier=?
                                          _%hd150297150311%_
                                          '%#begin-module))
                                    (let ((_%body150316%_ _%tl150298150313%_))
                                      (if (gx#sealed-syntax? _%stx150292%_)
                                          _%body150316%_
                                          (gx#core-expand-module-body
                                           _%body150316%_)))
                                    (_%E150295150304%_))))
                            (_%E150295150304%_)))))
                (_%E150294150318%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx150288%_)))
    (define gx#core-expand-module-body
      (lambda (_%body150083%_)
        (letrec ((_%expand-special150085%_
                  (lambda (_%hd150214%_ _%K150215%_ _%rest150216%_ _%r150217%_)
                    (let* ((_%e150218150235%_ _%hd150214%_)
                           (_%E150230150239%_
                            (lambda ()
                              (_%K150215%_
                               _%rest150216%_
                               (cons (gx#core-expand-top _%hd150214%_)
                                     _%r150217%_))))
                           (_%E150220150251%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150218150235%_)
                                  (let ((_%e150231150243%_
                                         (gx#syntax-e _%e150218150235%_)))
                                    (let ((_%hd150232150246%_
                                           (##car _%e150231150243%_))
                                          (_%tl150233150248%_
                                           (##cdr _%e150231150243%_)))
                                      (if (and (gx#identifier?
                                                _%hd150232150246%_)
                                               (gx#core-identifier=?
                                                _%hd150232150246%_
                                                '%#export))
                                          (_%K150215%_
                                           _%rest150216%_
                                           (cons _%hd150214%_ _%r150217%_))
                                          (_%E150230150239%_))))
                                  (_%E150230150239%_))))
                           (_%E150219150283%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150218150235%_)
                                  (let ((_%e150221150255%_
                                         (gx#syntax-e _%e150218150235%_)))
                                    (let ((_%hd150222150258%_
                                           (##car _%e150221150255%_))
                                          (_%tl150223150260%_
                                           (##cdr _%e150221150255%_)))
                                      (if (and (gx#identifier?
                                                _%hd150222150258%_)
                                               (gx#core-identifier=?
                                                _%hd150222150258%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl150223150260%_)
                                              (let ((_%e150224150263%_
                                                     (gx#syntax-e
                                                      _%tl150223150260%_)))
                                                (let ((_%hd150225150266%_
                                                       (##car _%e150224150263%_))
                                                      (_%tl150226150268%_
                                                       (##cdr _%e150224150263%_)))
                                                  (let ((_%hd-bind150271%_
                                                         _%hd150225150266%_))
                                                    (if (gx#stx-pair?
                                                         _%tl150226150268%_)
                                                        (let ((_%e150227150273%_
                                                               (gx#syntax-e
                                                                _%tl150226150268%_)))
                                                          (let ((_%hd150228150276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e150227150273%_))
                        (_%tl150229150278%_ (##cdr _%e150227150273%_)))
                    (let ((_%expr150281%_ _%hd150228150276%_))
                      (if (gx#stx-null? _%tl150229150278%_)
                          (if (gx#core-bind-values? _%hd-bind150271%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind150271%_)
                                (_%K150215%_
                                 _%rest150216%_
                                 (cons _%hd150214%_ _%r150217%_)))
                              (_%E150220150251%_))
                          (_%E150220150251%_)))))
                (_%E150220150251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150220150251%_))
                                          (_%E150220150251%_))))
                                  (_%E150220150251%_)))))
                      (_%E150219150283%_))))
                 (_%expand-body150086%_
                  (lambda (_%rbody150088%_)
                    (let _%lp150090%_ ((_%rest150092%_ _%rbody150088%_)
                                       (_%body150093%_ '()))
                      (let* ((_%rest150094150102%_ _%rest150092%_)
                             (_%else150096150110%_ (lambda () _%body150093%_))
                             (_%K150098150202%_
                              (lambda (_%rest150113%_ _%hd150114%_)
                                (let* ((_%e150115150136%_ _%hd150114%_)
                                       (_%E150131150140%_
                                        (lambda ()
                                          (_%lp150090%_
                                           _%rest150113%_
                                           (cons (gx#core-expand-expression
                                                  _%hd150114%_)
                                                 _%body150093%_))))
                                       (_%E150127150154%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150115150136%_)
                                              (let ((_%e150132150144%_
                                                     (gx#syntax-e
                                                      _%e150115150136%_)))
                                                (let ((_%hd150133150147%_
                                                       (##car _%e150132150144%_))
                                                      (_%tl150134150149%_
                                                       (##cdr _%e150132150144%_)))
                                                  (let ((_%form150152%_
                                                         _%hd150133150147%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form150152%_
                                                         gx#special-form-binding?)
                                                        (_%lp150090%_
                                                         _%rest150113%_
                                                         (cons _%hd150114%_
                                                               _%body150093%_))
                                                        (_%E150131150140%_)))))
                                              (_%E150131150140%_))))
                                       (_%E150117150166%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150115150136%_)
                                              (let ((_%e150128150158%_
                                                     (gx#syntax-e
                                                      _%e150115150136%_)))
                                                (let ((_%hd150129150161%_
                                                       (##car _%e150128150158%_))
                                                      (_%tl150130150163%_
                                                       (##cdr _%e150128150158%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150129150161%_)
                                                           (gx#core-identifier=?
                                                            _%hd150129150161%_
                                                            '%#export))
                                                      (_%lp150090%_
                                                       _%rest150113%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd150114%_)
                                                             _%body150093%_))
                                                      (_%E150127150154%_))))
                                              (_%E150127150154%_))))
                                       (_%E150116150198%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150115150136%_)
                                              (let ((_%e150118150170%_
                                                     (gx#syntax-e
                                                      _%e150115150136%_)))
                                                (let ((_%hd150119150173%_
                                                       (##car _%e150118150170%_))
                                                      (_%tl150120150175%_
                                                       (##cdr _%e150118150170%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150119150173%_)
                                                           (gx#core-identifier=?
                                                            _%hd150119150173%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl150120150175%_)
                                                          (let ((_%e150121150178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl150120150175%_)))
                    (let ((_%hd150122150181%_ (##car _%e150121150178%_))
                          (_%tl150123150183%_ (##cdr _%e150121150178%_)))
                      (let ((_%hd-bind150186%_ _%hd150122150181%_))
                        (if (gx#stx-pair? _%tl150123150183%_)
                            (let ((_%e150124150188%_
                                   (gx#syntax-e _%tl150123150183%_)))
                              (let ((_%hd150125150191%_
                                     (##car _%e150124150188%_))
                                    (_%tl150126150193%_
                                     (##cdr _%e150124150188%_)))
                                (let ((_%expr150196%_ _%hd150125150191%_))
                                  (if (gx#stx-null? _%tl150126150193%_)
                                      (_%lp150090%_
                                       _%rest150113%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind150186%_)
                                               (gx#core-expand-expression
                                                _%expr150196%_))
                                              (gx#stx-source _%hd150114%_))
                                             _%body150093%_))
                                      (_%E150117150166%_)))))
                            (_%E150117150166%_)))))
                  (_%E150117150166%_))
              (_%E150117150166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150117150166%_)))))
                                  (_%E150116150198%_)))))
                        (if (pair? _%rest150094150102%_)
                            (let ((_%hd150099150205%_
                                   (##car _%rest150094150102%_))
                                  (_%tl150100150207%_
                                   (##cdr _%rest150094150102%_)))
                              (let* ((_%hd150210%_ _%hd150099150205%_)
                                     (_%rest150212%_ _%tl150100150207%_))
                                (_%K150098150202%_
                                 _%rest150212%_
                                 _%hd150210%_)))
                            (_%else150096150110%_)))))))
          (_%expand-body150086%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body150083%_)
            _%expand-special150085%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx149924%_
               _%expanded?149925%_
               _%method149926%_
               _%current-phi149927%_
               _%expand1149928%_)
        (letrec ((_%K149930%_
                  (lambda (_%rest150050%_ _%r150051%_)
                    (let* ((_%e150052150059%_ _%rest150050%_)
                           (_%E150054150063%_ (lambda () _%r150051%_))
                           (_%E150053150079%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150052150059%_)
                                  (let ((_%e150055150067%_
                                         (gx#syntax-e _%e150052150059%_)))
                                    (let ((_%hd150056150070%_
                                           (##car _%e150055150067%_))
                                          (_%tl150057150072%_
                                           (##cdr _%e150055150067%_)))
                                      (let* ((_%hd150075%_ _%hd150056150070%_)
                                             (_%rest150077%_
                                              _%tl150057150072%_))
                                        (_%step149931%_
                                         _%hd150075%_
                                         _%rest150077%_
                                         _%r150051%_))))
                                  (_%E150054150063%_)))))
                      (_%E150053150079%_))))
                 (_%step149931%_
                  (lambda (_%hd149964%_ _%rest149965%_ _%r149966%_)
                    (let* ((_%e149967149985%_ _%hd149964%_)
                           (_%E149980149989%_
                            (lambda ()
                              (if (_%expanded?149925%_ (gx#stx-e _%hd149964%_))
                                  (_%K149930%_
                                   _%rest149965%_
                                   (cons (gx#stx-e _%hd149964%_) _%r149966%_))
                                  (_%expand1149928%_
                                   _%hd149964%_
                                   _%K149930%_
                                   _%rest149965%_
                                   _%r149966%_))))
                           (_%E149976150005%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149967149985%_)
                                  (let ((_%e149981149993%_
                                         (gx#syntax-e _%e149967149985%_)))
                                    (let ((_%hd149982149996%_
                                           (##car _%e149981149993%_))
                                          (_%tl149983149998%_
                                           (##cdr _%e149981149993%_)))
                                      (let* ((_%macro150001%_
                                              _%hd149982149996%_)
                                             (_%body150003%_
                                              _%tl149983149998%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro150001%_
                                             gx#syntax-binding?)
                                            (_%K149930%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro150001%_)
                                                    _%hd149964%_
                                                    _%method149926%_)
                                                   _%rest149965%_)
                                             _%r149966%_)
                                            (_%E149980149989%_)))))
                                  (_%E149980149989%_))))
                           (_%E149969150019%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149967149985%_)
                                  (let ((_%e149977150009%_
                                         (gx#syntax-e _%e149967149985%_)))
                                    (let ((_%hd149978150012%_
                                           (##car _%e149977150009%_))
                                          (_%tl149979150014%_
                                           (##cdr _%e149977150009%_)))
                                      (if (eq? (gx#stx-e _%hd149978150012%_)
                                               'begin:)
                                          (let ((_%body150017%_
                                                 _%tl149979150014%_))
                                            (_%K149930%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest149965%_
                                              _%body150017%_)
                                             _%r149966%_))
                                          (_%E149976150005%_))))
                                  (_%E149976150005%_))))
                           (_%E149968150046%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149967149985%_)
                                  (let ((_%e149970150023%_
                                         (gx#syntax-e _%e149967149985%_)))
                                    (let ((_%hd149971150026%_
                                           (##car _%e149970150023%_))
                                          (_%tl149972150028%_
                                           (##cdr _%e149970150023%_)))
                                      (if (eq? (gx#stx-e _%hd149971150026%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl149972150028%_)
                                              (let ((_%e149973150031%_
                                                     (gx#syntax-e
                                                      _%tl149972150028%_)))
                                                (let ((_%hd149974150034%_
                                                       (##car _%e149973150031%_))
                                                      (_%tl149975150036%_
                                                       (##cdr _%e149973150031%_)))
                                                  (let* ((_%dphi150039%_
                                                          _%hd149974150034%_)
                                                         (_%body150041%_
                                                          _%tl149975150036%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi150039%_)
                                                        (let ((_%rbody150044%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K149930%_ _%body150041%_ '()))
                        _%current-phi149927%_
                        (fx+ (gx#stx-e _%dphi150039%_)
                             (_%current-phi149927%_)))))
                  (_%K149930%_
                   _%rest149965%_
                   (__foldr1 cons _%r149966%_ _%rbody150044%_)))
                (_%E149969150019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E149969150019%_))
                                          (_%E149969150019%_))))
                                  (_%E149969150019%_)))))
                      (_%E149968150046%_)))))
          (let* ((_%e149932149939%_ _%stx149924%_)
                 (_%E149934149943%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e149932149939%_)))
                 (_%E149933149960%_
                  (lambda ()
                    (if (gx#stx-pair? _%e149932149939%_)
                        (let ((_%e149935149947%_
                               (gx#syntax-e _%e149932149939%_)))
                          (let ((_%hd149936149950%_ (##car _%e149935149947%_))
                                (_%tl149937149952%_ (##cdr _%e149935149947%_)))
                            (let ((_%body149955%_ _%tl149937149952%_))
                              (if (_%current-phi149927%_)
                                  (_%K149930%_ _%body149955%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K149930%_ _%body149955%_ '()))
                                   _%current-phi149927%_
                                   (gx#current-expander-phi))))))
                        (_%E149934149943%_)))))
            (_%E149933149960%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx149578%_ _%internal-expand?149579%_)
        (letrec ((_%expand1149581%_
                  (lambda (_%hd149896%_ _%K149897%_ _%rest149898%_ _%r149899%_)
                    (if (gx#core-bound-module? _%hd149896%_)
                        (_%import1149582%_
                         (gx#syntax-local-e__0 _%hd149896%_)
                         _%K149897%_
                         _%rest149898%_
                         _%r149899%_)
                        (if (gx#core-library-module-path? _%hd149896%_)
                            (_%import1149582%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd149896%_))
                             _%K149897%_
                             _%rest149898%_
                             _%r149899%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd149896%_)
                                (_%import1149582%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd149896%_))
                                 _%K149897%_
                                 _%rest149898%_
                                 _%r149899%_)
                                (let ((_%e149905%_ (gx#stx-e _%hd149896%_)))
                                  (if (pair? _%e149905%_)
                                      (let ((_%$e149908%_
                                             (gx#stx-e (##car _%e149905%_))))
                                        (if (eq? 'spec: _%$e149908%_)
                                            (_%import-spec149585%_
                                             _%hd149896%_
                                             _%K149897%_
                                             _%rest149898%_
                                             _%r149899%_)
                                            (if (eq? 'in: _%$e149908%_)
                                                (_%import-submodule149583%_
                                                 _%hd149896%_
                                                 _%K149897%_
                                                 _%rest149898%_
                                                 _%r149899%_)
                                                (if (eq? 'runtime:
                                                         _%$e149908%_)
                                                    (_%import-runtime149584%_
                                                     _%hd149896%_
                                                     _%K149897%_
                                                     _%rest149898%_
                                                     _%r149899%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx149578%_
                                                     _%hd149896%_)))))
                                      (if (string? _%e149905%_)
                                          (_%import1149582%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd149896%_
                                             (gx#stx-source _%stx149578%_)))
                                           _%K149897%_
                                           _%rest149898%_
                                           _%r149899%_)
                                          (if (##structure-instance-of?
                                               _%e149905%_
                                               'gx#module-context::t)
                                              (_%K149897%_
                                               _%rest149898%_
                                               (cons _%e149905%_ _%r149899%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx149578%_
                                               _%hd149896%_))))))))))
                 (_%import1149582%_
                  (lambda (_%ctx149885%_
                           _%K149886%_
                           _%rest149887%_
                           _%r149888%_)
                    (let ((_%dphi149890%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K149886%_
                       _%rest149887%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx149885%_
                              _%dphi149890%_
                              (map (lambda (_%g149891149893%_)
                                     (gx#core-module-export->import__%
                                      _%g149891149893%_
                                      '#f
                                      _%dphi149890%_))
                                   (##unchecked-structure-ref
                                    _%ctx149885%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r149888%_)))))
                 (_%import-submodule149583%_
                  (lambda (_%hd149852%_ _%K149853%_ _%rest149854%_ _%r149855%_)
                    (let* ((_%e149856149863%_ _%hd149852%_)
                           (_%E149858149867%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149856149863%_)))
                           (_%E149857149881%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149856149863%_)
                                  (let ((_%e149859149871%_
                                         (gx#syntax-e _%e149856149863%_)))
                                    (let ((_%hd149860149874%_
                                           (##car _%e149859149871%_))
                                          (_%tl149861149876%_
                                           (##cdr _%e149859149871%_)))
                                      (let ((_%spath149879%_
                                             _%tl149861149876%_))
                                        (_%import1149582%_
                                         (_%import-spec-source149586%_
                                          _%spath149879%_)
                                         _%K149853%_
                                         _%rest149854%_
                                         _%r149855%_))))
                                  (_%E149858149867%_)))))
                      (_%E149857149881%_))))
                 (_%import-runtime149584%_
                  (lambda (_%hd149819%_ _%K149820%_ _%rest149821%_ _%r149822%_)
                    (let* ((_%e149823149830%_ _%hd149819%_)
                           (_%E149825149834%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149823149830%_)))
                           (_%E149824149848%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149823149830%_)
                                  (let ((_%e149826149838%_
                                         (gx#syntax-e _%e149823149830%_)))
                                    (let ((_%hd149827149841%_
                                           (##car _%e149826149838%_))
                                          (_%tl149828149843%_
                                           (##cdr _%e149826149838%_)))
                                      (let ((_%spath149846%_
                                             _%tl149828149843%_))
                                        (_%K149820%_
                                         _%rest149821%_
                                         (cons (_%import-spec-source149586%_
                                                _%spath149846%_)
                                               _%r149822%_)))))
                                  (_%E149825149834%_)))))
                      (_%E149824149848%_))))
                 (_%import-spec149585%_
                  (lambda (_%hd149657%_ _%K149658%_ _%rest149659%_ _%r149660%_)
                    (let* ((_%e149661149678%_ _%hd149657%_)
                           (_%E149670149682%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149661149678%_)))
                           (_%E149663149793%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149661149678%_)
                                  (let ((_%e149671149686%_
                                         (gx#syntax-e _%e149661149678%_)))
                                    (let ((_%hd149672149689%_
                                           (##car _%e149671149686%_))
                                          (_%tl149673149691%_
                                           (##cdr _%e149671149686%_)))
                                      (if (gx#stx-pair? _%tl149673149691%_)
                                          (let ((_%e149674149694%_
                                                 (gx#syntax-e
                                                  _%tl149673149691%_)))
                                            (let ((_%hd149675149697%_
                                                   (##car _%e149674149694%_))
                                                  (_%tl149676149699%_
                                                   (##cdr _%e149674149694%_)))
                                              (let* ((_%path149702%_
                                                      _%hd149675149697%_)
                                                     (_%specs149704%_
                                                      _%tl149676149699%_))
                                                (let ((_%src-ctx149706%_
                                                       (_%import-spec-source149586%_
                                                        _%path149702%_))
                                                      (_%exports149707%_
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
                                                      (_%specs149708%_
                                                       (gx#syntax->list
                                                        _%specs149704%_)))
                                                  (for-each
                                                   (lambda (_%out149710%_)
                                                     (__hash-put!
                                                      _%exports149707%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out149710%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out149710%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out149710%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx149706%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K149658%_
                                                   _%rest149659%_
                                                   (__foldl1
                                                    (lambda (_%spec149712%_
                                                             _%r149713%_)
                                                      (let* ((_%e149714149730%_
                                                              _%spec149712%_)
                                                             (_%E149716149734%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e149714149730%_)))
                     (_%E149715149789%_
                      (lambda ()
                        (if (gx#stx-pair? _%e149714149730%_)
                            (let ((_%e149717149738%_
                                   (gx#syntax-e _%e149714149730%_)))
                              (let ((_%hd149718149741%_
                                     (##car _%e149717149738%_))
                                    (_%tl149719149743%_
                                     (##cdr _%e149717149738%_)))
                                (let ((_%phi149746%_ _%hd149718149741%_))
                                  (if (gx#stx-pair? _%tl149719149743%_)
                                      (let ((_%e149720149748%_
                                             (gx#syntax-e _%tl149719149743%_)))
                                        (let ((_%hd149721149751%_
                                               (##car _%e149720149748%_))
                                              (_%tl149722149753%_
                                               (##cdr _%e149720149748%_)))
                                          (let ((_%name149756%_
                                                 _%hd149721149751%_))
                                            (if (gx#stx-pair?
                                                 _%tl149722149753%_)
                                                (let ((_%e149723149758%_
                                                       (gx#syntax-e
                                                        _%tl149722149753%_)))
                                                  (let ((_%hd149724149761%_
                                                         (##car _%e149723149758%_))
                                                        (_%tl149725149763%_
                                                         (##cdr _%e149723149758%_)))
                                                    (let ((_%src-phi149766%_
                                                           _%hd149724149761%_))
                                                      (if (gx#stx-pair?
                                                           _%tl149725149763%_)
                                                          (let ((_%e149726149768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl149725149763%_)))
                    (let ((_%hd149727149771%_ (##car _%e149726149768%_))
                          (_%tl149728149773%_ (##cdr _%e149726149768%_)))
                      (let ((_%src-name149776%_ _%hd149727149771%_))
                        (if (gx#stx-null? _%tl149728149773%_)
                            (if (and (gx#stx-fixnum? _%src-phi149766%_)
                                     (gx#identifier? _%src-name149776%_)
                                     (gx#stx-fixnum? _%phi149746%_)
                                     (gx#identifier? _%name149756%_))
                                (let ((_%src-phi149778%_
                                       (gx#stx-e _%src-phi149766%_))
                                      (_%src-name149779%_
                                       (gx#core-identifier-key
                                        _%src-name149776%_))
                                      (_%phi149780%_ (gx#stx-e _%phi149746%_))
                                      (_%name149781%_
                                       (gx#core-identifier-key
                                        _%name149756%_)))
                                  (let ((_%$e149783%_
                                         (__hash-get
                                          _%exports149707%_
                                          (cons _%src-phi149778%_
                                                _%src-name149779%_))))
                                    (if _%$e149783%_
                                        ((lambda (_%out149786%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out149786%_
                                                  _%name149781%_
                                                  (fx- _%phi149780%_
                                                       _%src-phi149778%_))
                                                 _%r149713%_))
                                         _%$e149783%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx149578%_
                                         _%hd149657%_))))
                                (_%E149716149734%_))
                            (_%E149716149734%_)))))
                  (_%E149716149734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E149716149734%_)))))
                                      (_%E149716149734%_)))))
                            (_%E149716149734%_)))))
                (_%E149715149789%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r149660%_
                                                    _%specs149708%_))))))
                                          (_%E149670149682%_))))
                                  (_%E149670149682%_))))
                           (_%E149662149815%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149661149678%_)
                                  (let ((_%e149664149797%_
                                         (gx#syntax-e _%e149661149678%_)))
                                    (let ((_%hd149665149800%_
                                           (##car _%e149664149797%_))
                                          (_%tl149666149802%_
                                           (##cdr _%e149664149797%_)))
                                      (if (gx#stx-pair? _%tl149666149802%_)
                                          (let ((_%e149667149805%_
                                                 (gx#syntax-e
                                                  _%tl149666149802%_)))
                                            (let ((_%hd149668149808%_
                                                   (##car _%e149667149805%_))
                                                  (_%tl149669149810%_
                                                   (##cdr _%e149667149805%_)))
                                              (let ((_%path149813%_
                                                     _%hd149668149808%_))
                                                (if (gx#stx-null?
                                                     _%tl149669149810%_)
                                                    (_%K149658%_
                                                     _%rest149659%_
                                                     (cons (_%import-spec-source149586%_
                                                            _%path149813%_)
                                                           _%r149660%_))
                                                    (_%E149663149793%_)))))
                                          (_%E149663149793%_))))
                                  (_%E149663149793%_)))))
                      (_%E149662149815%_))))
                 (_%import-spec-source149586%_
                  (lambda (_%spath149655%_)
                    (gx#core-import-nested-module
                     _%spath149655%_
                     _%stx149578%_)))
                 (_%import!149587%_
                  (lambda (_%rbody149600%_)
                    (letrec* ((_%current-ctx149602%_
                               (gx#current-expander-context))
                              (_%deps149603%_ (make-hash-table-eq))
                              (_%bind!149604%_
                               (lambda (_%hd149653%_)
                                 (gx#core-bind-import!__1
                                  _%hd149653%_
                                  _%current-ctx149602%_))))
                      (let _%lp149606%_ ((_%rest149608%_ _%rbody149600%_)
                                         (_%body149609%_ '()))
                        (let* ((_%rest149610149618%_ _%rest149608%_)
                               (_%else149612149629%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx149602%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx149602%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx149602%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body149609%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx149626%_ _%_149627%_)
                                     (gx#eval-module _%ctx149626%_))
                                   _%deps149603%_)
                                  _%body149609%_))
                               (_%K149614149641%_
                                (lambda (_%rest149632%_ _%hd149633%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd149633%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!149604%_ _%hd149633%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd149633%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd149633%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps149603%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd149633%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd149633%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!149604%_
                                             (##unchecked-structure-ref
                                              _%hd149633%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd149633%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps149603%_
                                                 (##unchecked-structure-ref
                                                  _%hd149633%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e149637%_
                                                 (##structure-instance-of?
                                                  _%hd149633%_
                                                  'gx#module-context::t)))
                                            (if _%$e149637%_
                                                _%$e149637%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx149578%_
                                                 _%hd149633%_)))))
                                  (_%lp149606%_
                                   _%rest149632%_
                                   (cons _%hd149633%_ _%body149609%_)))))
                          (if (pair? _%rest149610149618%_)
                              (let ((_%hd149615149644%_
                                     (##car _%rest149610149618%_))
                                    (_%tl149616149646%_
                                     (##cdr _%rest149610149618%_)))
                                (let* ((_%hd149649%_ _%hd149615149644%_)
                                       (_%rest149651%_ _%tl149616149646%_))
                                  (_%K149614149641%_
                                   _%rest149651%_
                                   _%hd149649%_)))
                              (_%else149612149629%_)))))))
                 (_%expanded-import?149588%_
                  (lambda (_%e149592%_)
                    (let ((_%$e149594%_
                           (##structure-direct-instance-of?
                            _%e149592%_
                            'gx#import-set::t)))
                      (if _%$e149594%_
                          _%$e149594%_
                          (let ((_%$e149597%_
                                 (##structure-direct-instance-of?
                                  _%e149592%_
                                  'gx#module-import::t)))
                            (if _%$e149597%_
                                _%$e149597%_
                                (##structure-instance-of?
                                 _%e149592%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody149590%_
                 (gx#core-expand-import/export
                  _%stx149578%_
                  _%expanded-import?149588%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1149581%_)))
            (if _%internal-expand?149579%_
                (reverse _%rbody149590%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!149587%_ _%rbody149590%_))
                 (gx#stx-source _%stx149578%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx149917%_)
        (let ((_%internal-expand?149919%_ '#f))
          (gx#core-expand-import%__%
           _%stx149917%_
           _%internal-expand?149919%_))))
    (define gx#core-expand-import%
      (lambda _g152569_
        (let ((_g152570_ (##length _g152569_)))
          (cond ((##fx= _g152570_ 1)
                 (apply gx#core-expand-import%__0 _g152569_))
                ((##fx= _g152570_ 2)
                 (apply gx#core-expand-import%__% _g152569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g152569_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath149505%_ _%where149506%_)
        (let* ((_%e149507149514%_ _%spath149505%_)
               (_%E149509149518%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149507149514%_)))
               (_%E149508149573%_
                (lambda ()
                  (if (gx#stx-pair? _%e149507149514%_)
                      (let ((_%e149510149522%_
                             (gx#syntax-e _%e149507149514%_)))
                        (let ((_%hd149511149525%_ (##car _%e149510149522%_))
                              (_%tl149512149527%_ (##cdr _%e149510149522%_)))
                          (let* ((_%origin149530%_ _%hd149511149525%_)
                                 (_%sub149532%_ _%tl149512149527%_)
                                 (_%origin-ctx149534%_
                                  (if (gx#stx-false? _%origin149530%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin149530%_))))
                            (let _%lp149536%_ ((_%rest149538%_ _%sub149532%_)
                                               (_%ctx149539%_
                                                _%origin-ctx149534%_))
                              (let* ((_%e149540149547%_ _%rest149538%_)
                                     (_%E149542149551%_
                                      (lambda () _%ctx149539%_))
                                     (_%E149541149569%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e149540149547%_)
                                            (let ((_%e149543149555%_
                                                   (gx#syntax-e
                                                    _%e149540149547%_)))
                                              (let ((_%hd149544149558%_
                                                     (##car _%e149543149555%_))
                                                    (_%tl149545149560%_
                                                     (##cdr _%e149543149555%_)))
                                                (let* ((_%id149563%_
                                                        _%hd149544149558%_)
                                                       (_%rest149565%_
                                                        _%tl149545149560%_)
                                                       (_%bind149567%_
                                                        (gx#resolve-identifier__%
                                                         _%id149563%_
                                                         '0
                                                         _%ctx149539%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind149567%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind149567%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where149506%_
                                                       _%spath149505%_
                                                       _%id149563%_))
                                                  (_%lp149536%_
                                                   _%rest149565%_
                                                   (##unchecked-structure-ref
                                                    _%bind149567%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E149542149551%_)))))
                                (_%E149541149569%_))))))
                      (_%E149509149518%_)))))
          (_%E149508149573%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd149503%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd149503%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx148998%_ _%internal-expand?148999%_)
        (letrec* ((_%make-export__152497152498%_
                   (lambda (_%bind149451%_
                            _%phi149452%_
                            _%ctx149453%_
                            _%name149454%_)
                     (let* ((_%key149456%_
                             (##unchecked-structure-ref
                              _%bind149451%_
                              '2
                              '#f
                              '#f))
                            (_%export-key149458%_
                             (if _%name149454%_
                                 (gx#core-identifier-key _%name149454%_)
                                 _%key149456%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx149453%_
                        _%key149456%_
                        _%phi149452%_
                        _%export-key149458%_
                        (let ((_%$e149461%_
                               (##structure-instance-of?
                                _%bind149451%_
                                'gx#extern-binding::t)))
                          (if _%$e149461%_
                              _%$e149461%_
                              (##structure-direct-instance-of?
                               _%bind149451%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__152499152502%_
                   (lambda (_%bind149467%_)
                     (let* ((_%phi149469%_ (gx#current-export-expander-phi))
                            (_%ctx149471%_ (gx#current-expander-context))
                            (_%name149473%_ '#f))
                       (_%make-export__152497152498%_
                        _%bind149467%_
                        _%phi149469%_
                        _%ctx149471%_
                        _%name149473%_))))
                  (_%make-export__1__152500152503%_
                   (lambda (_%bind149475%_ _%phi149476%_)
                     (let* ((_%ctx149478%_ (gx#current-expander-context))
                            (_%name149480%_ '#f))
                       (_%make-export__152497152498%_
                        _%bind149475%_
                        _%phi149476%_
                        _%ctx149478%_
                        _%name149480%_))))
                  (_%make-export__2__152501152504%_
                   (lambda (_%bind149482%_ _%phi149483%_ _%ctx149484%_)
                     (let ((_%name149486%_ '#f))
                       (_%make-export__152497152498%_
                        _%bind149482%_
                        _%phi149483%_
                        _%ctx149484%_
                        _%name149486%_))))
                  (_%make-export149001%_
                   (lambda _g152571_
                     (let ((_g152572_ (##length _g152571_)))
                       (cond ((##fx= _g152572_ 1)
                              (apply _%make-export__0__152499152502%_
                                     _g152571_))
                             ((##fx= _g152572_ 2)
                              (apply _%make-export__1__152500152503%_
                                     _g152571_))
                             ((##fx= _g152572_ 3)
                              (apply _%make-export__2__152501152504%_
                                     _g152571_))
                             ((##fx= _g152572_ 4)
                              (apply _%make-export__152497152498%_ _g152571_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g152571_))))))
                  (_%expand1149002%_
                   (lambda (_%hd149156%_
                            _%K149157%_
                            _%rest149158%_
                            _%r149159%_)
                     (let* ((_%e149160149192%_ _%hd149156%_)
                            (_%E149187149196%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx148998%_
                                _%hd149156%_)))
                            (_%E149177149280%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149160149192%_)
                                   (let ((_%e149188149200%_
                                          (gx#syntax-e _%e149160149192%_)))
                                     (let ((_%hd149189149203%_
                                            (##car _%e149188149200%_))
                                           (_%tl149190149205%_
                                            (##cdr _%e149188149200%_)))
                                       (if (eq? (gx#stx-e _%hd149189149203%_)
                                                'import:)
                                           (let ((_%in149208%_
                                                  _%tl149190149205%_))
                                             (if (gx#stx-list? _%in149208%_)
                                                 (let _%lp149210%_ ((_%in-rest149212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in149208%_)
                            (_%r149213%_ _%r149159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e149214149221%_
                                                           _%in-rest149212%_)
                                                          (_%E149216149225%_
                                                           (lambda ()
                                                             (_%K149157%_
                                                              _%rest149158%_
                                                              _%r149213%_)))
                                                          (_%E149215149276%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e149214149221%_)
                         (let ((_%e149217149229%_
                                (gx#syntax-e _%e149214149221%_)))
                           (let ((_%hd149218149232%_ (##car _%e149217149229%_))
                                 (_%tl149219149234%_
                                  (##cdr _%e149217149229%_)))
                             (let* ((_%hd149237%_ _%hd149218149232%_)
                                    (_%in-rest149239%_ _%tl149219149234%_)
                                    (_%src149274%_
                                     (if (gx#core-bound-module? _%hd149237%_)
                                         (gx#syntax-local-e__0 _%hd149237%_)
                                         (if (gx#core-library-module-path?
                                              _%hd149237%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd149237%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd149237%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd149237%_))
                                                 (if (gx#stx-string?
                                                      _%hd149237%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd149237%_
                                                       (gx#stx-source
                                                        _%stx148998%_)))
                                                     (let* ((_%e149245149252%_
                                                             _%hd149237%_)
                                                            (_%E149247149256%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx148998%_
                                                                _%hd149237%_)))
                                                            (_%E149246149270%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e149245149252%_)
                           (let ((_%e149248149260%_
                                  (gx#syntax-e _%e149245149252%_)))
                             (let ((_%hd149249149263%_
                                    (##car _%e149248149260%_))
                                   (_%tl149250149265%_
                                    (##cdr _%e149248149260%_)))
                               (if (eq? (gx#stx-e _%hd149249149263%_) 'in:)
                                   (let ((_%spath149268%_ _%tl149250149265%_))
                                     (gx#core-import-nested-module
                                      _%spath149268%_
                                      _%stx148998%_))
                                   (_%E149247149256%_))))
                           (_%E149247149256%_)))))
               (_%E149246149270%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp149210%_
                                _%in-rest149239%_
                                (_%export-imports149003%_
                                 _%src149274%_
                                 _%r149213%_)))))
                         (_%E149216149225%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E149215149276%_)))
                                                 (_%E149187149196%_)))
                                           (_%E149187149196%_))))
                                   (_%E149187149196%_))))
                            (_%E149164149320%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149160149192%_)
                                   (let ((_%e149178149284%_
                                          (gx#syntax-e _%e149160149192%_)))
                                     (let ((_%hd149179149287%_
                                            (##car _%e149178149284%_))
                                           (_%tl149180149289%_
                                            (##cdr _%e149178149284%_)))
                                       (if (eq? (gx#stx-e _%hd149179149287%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl149180149289%_)
                                               (let ((_%e149181149292%_
                                                      (gx#syntax-e
                                                       _%tl149180149289%_)))
                                                 (let ((_%hd149182149295%_
                                                        (##car _%e149181149292%_))
                                                       (_%tl149183149297%_
                                                        (##cdr _%e149181149292%_)))
                                                   (let ((_%id149300%_
                                                          _%hd149182149295%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149183149297%_)
                                                         (let ((_%e149184149302%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149183149297%_)))
                   (let ((_%hd149185149305%_ (##car _%e149184149302%_))
                         (_%tl149186149307%_ (##cdr _%e149184149302%_)))
                     (let ((_%name149310%_ _%hd149185149305%_))
                       (if (gx#stx-null? _%tl149186149307%_)
                           (let* ((_%phi149312%_
                                   (gx#current-export-expander-phi))
                                  (_%$e149314%_
                                   (gx#core-resolve-identifier__1
                                    _%id149300%_
                                    _%phi149312%_)))
                             (if _%$e149314%_
                                 ((lambda (_%bind149317%_)
                                    (_%K149157%_
                                     _%rest149158%_
                                     (cons (_%make-export__152497152498%_
                                            _%bind149317%_
                                            _%phi149312%_
                                            (gx#current-expander-context)
                                            _%name149310%_)
                                           _%r149159%_)))
                                  _%$e149314%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx148998%_
                                  _%hd149156%_
                                  _%id149300%_)))
                           (_%E149177149280%_)))))
                 (_%E149177149280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149177149280%_))
                                           (_%E149177149280%_))))
                                   (_%E149177149280%_))))
                            (_%E149163149370%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149160149192%_)
                                   (let ((_%e149165149324%_
                                          (gx#syntax-e _%e149160149192%_)))
                                     (let ((_%hd149166149327%_
                                            (##car _%e149165149324%_))
                                           (_%tl149167149329%_
                                            (##cdr _%e149165149324%_)))
                                       (if (eq? (gx#stx-e _%hd149166149327%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl149167149329%_)
                                               (let ((_%e149168149332%_
                                                      (gx#syntax-e
                                                       _%tl149167149329%_)))
                                                 (let ((_%hd149169149335%_
                                                        (##car _%e149168149332%_))
                                                       (_%tl149170149337%_
                                                        (##cdr _%e149168149332%_)))
                                                   (let ((_%phi149340%_
                                                          _%hd149169149335%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149170149337%_)
                                                         (let ((_%e149171149342%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149170149337%_)))
                   (let ((_%hd149172149345%_ (##car _%e149171149342%_))
                         (_%tl149173149347%_ (##cdr _%e149171149342%_)))
                     (let ((_%id149350%_ _%hd149172149345%_))
                       (if (gx#stx-pair? _%tl149173149347%_)
                           (let ((_%e149174149352%_
                                  (gx#syntax-e _%tl149173149347%_)))
                             (let ((_%hd149175149355%_
                                    (##car _%e149174149352%_))
                                   (_%tl149176149357%_
                                    (##cdr _%e149174149352%_)))
                               (let ((_%name149360%_ _%hd149175149355%_))
                                 (if (gx#stx-null? _%tl149176149357%_)
                                     (if (and (gx#stx-fixnum? _%phi149340%_)
                                              (gx#identifier? _%id149350%_)
                                              (gx#identifier? _%name149360%_))
                                         (let* ((_%phi149362%_
                                                 (gx#stx-e _%phi149340%_))
                                                (_%$e149364%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id149350%_
                                                  _%phi149362%_)))
                                           (if _%$e149364%_
                                               ((lambda (_%bind149367%_)
                                                  (_%K149157%_
                                                   _%rest149158%_
                                                   (cons (_%make-export__152497152498%_
                                                          _%bind149367%_
                                                          _%phi149362%_
                                                          (gx#current-expander-context)
                                                          _%name149360%_)
                                                         _%r149159%_)))
                                                _%$e149364%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx148998%_
                                                _%hd149156%_
                                                _%id149350%_)))
                                         (_%E149164149320%_))
                                     (_%E149164149320%_)))))
                           (_%E149164149320%_)))))
                 (_%E149164149320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149164149320%_))
                                           (_%E149164149320%_))))
                                   (_%E149164149320%_))))
                            (_%E149162149382%_
                             (lambda ()
                               (let ((_%id149374%_ _%e149160149192%_))
                                 (if (gx#identifier? _%id149374%_)
                                     (let ((_%$e149376%_
                                            (gx#core-resolve-identifier__1
                                             _%id149374%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e149376%_
                                           ((lambda (_%bind149379%_)
                                              (_%K149157%_
                                               _%rest149158%_
                                               (cons (_%make-export__0__152499152502%_
                                                      _%bind149379%_)
                                                     _%r149159%_)))
                                            _%$e149376%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx148998%_
                                            _%hd149156%_)))
                                     (_%E149163149370%_)))))
                            (_%E149161149446%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e149160149192%_) '#t)
                                   (let* ((_%current-ctx149386%_
                                           (gx#current-expander-context))
                                          (_%current-phi149388%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx149390%_
                                           (gx#core-context-shift
                                            _%current-ctx149386%_
                                            _%current-phi149388%_))
                                          (_%phi-bind149392%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx149390%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp149395%_ ((_%bind-rest149397%_
                                                         _%phi-bind149392%_)
                                                        (_%set149398%_ '()))
                                       (let* ((_%bind-rest149399149409%_
                                               _%bind-rest149397%_)
                                              (_%else149401149417%_
                                               (lambda ()
                                                 (_%K149157%_
                                                  _%rest149158%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi149388%_
                                                         _%set149398%_)
                                                        _%r149159%_))))
                                              (_%K149403149427%_
                                               (lambda (_%bind-rest149420%_
                                                        _%bind149421%_
                                                        _%key149422%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind149421%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind149421%_))
                                                     (_%lp149395%_
                                                      _%bind-rest149420%_
                                                      _%set149398%_)
                                                     (_%lp149395%_
                                                      _%bind-rest149420%_
                                                      (cons (_%make-export__2__152501152504%_
                                                             _%bind149421%_
                                                             _%current-phi149388%_
                                                             _%current-ctx149386%_)
                                                            _%set149398%_))))))
                                         (if (pair? _%bind-rest149399149409%_)
                                             (let ((_%hd149404149430%_
                                                    (##car _%bind-rest149399149409%_))
                                                   (_%tl149405149432%_
                                                    (##cdr _%bind-rest149399149409%_)))
                                               (if (pair? _%hd149404149430%_)
                                                   (let ((_%hd149406149435%_
                                                          (##car _%hd149404149430%_))
                                                         (_%tl149407149437%_
                                                          (##cdr _%hd149404149430%_)))
                                                     (let* ((_%key149440%_
                                                             _%hd149406149435%_)
                                                            (_%bind149442%_
                                                             _%tl149407149437%_)
                                                            (_%bind-rest149444%_
                                                             _%tl149405149432%_))
                                                       (_%K149403149427%_
                                                        _%bind-rest149444%_
                                                        _%bind149442%_
                                                        _%key149440%_)))
                                                   (_%else149401149417%_)))
                                             (_%else149401149417%_)))))
                                   (_%E149162149382%_)))))
                       (_%E149161149446%_))))
                  (_%export-imports149003%_
                   (lambda (_%src149033%_ _%r149034%_)
                     (letrec* ((_%current-ctx149036%_
                                (gx#current-expander-context))
                               (_%current-phi149037%_
                                (gx#current-export-expander-phi))
                               (_%import->export149038%_
                                (lambda (_%in149119%_)
                                  (let* ((_%in149120149128%_ _%in149119%_)
                                         (_%E149122149131%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in149120149128%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K149123149138%_
                                          (lambda (_%phi149134%_
                                                   _%key149135%_
                                                   _%out149136%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx149036%_
                                             _%key149135%_
                                             _%phi149134%_
                                             _%key149135%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in149120149128%_
                                         'gx#module-import::t)
                                        (let* ((_%e149124149141%_
                                                (##unchecked-structure-ref
                                                 _%in149120149128%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out149144%_
                                                _%e149124149141%_)
                                               (_%e149125149146%_
                                                (##unchecked-structure-ref
                                                 _%in149120149128%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key149149%_
                                                _%e149125149146%_)
                                               (_%e149126149151%_
                                                (##unchecked-structure-ref
                                                 _%in149120149128%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi149154%_
                                                _%e149126149151%_))
                                          (_%K149123149138%_
                                           _%phi149154%_
                                           _%key149149%_
                                           _%out149144%_))
                                        (_%E149122149131%_)))))
                               (_%fold-e149039%_
                                (lambda (_%in149041%_ _%r149042%_)
                                  (let* ((_%in149043149057%_ _%in149041%_)
                                         (_%else149046149065%_
                                          (lambda () _%r149042%_)))
                                    (let ((_%K149052149101%_
                                           (lambda (_%phi149097%_
                                                    _%key149098%_
                                                    _%out149099%_)
                                             (if (and (fx= _%phi149097%_
                                                           _%current-phi149037%_)
                                                      (eq? _%src149033%_
                                                           (##unchecked-structure-ref
                                                            _%out149099%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export149038%_
                                                        _%in149041%_)
                                                       _%r149042%_)
                                                 _%r149042%_)))
                                          (_%K149048149076%_
                                           (lambda (_%imports149069%_
                                                    _%phi149070%_
                                                    _%ctx149071%_)
                                             (if (and (fx= _%phi149070%_
                                                           _%current-phi149037%_)
                                                      (eq? _%src149033%_
                                                           _%ctx149071%_))
                                                 (__foldl1
                                                  (lambda (_%in149073%_
                                                           _%r149074%_)
                                                    (cons (_%import->export149038%_
                                                           _%in149073%_)
                                                          _%r149074%_))
                                                  _%r149042%_
                                                  _%imports149069%_)
                                                 _%r149042%_))))
                                      (let ((_%try-match149045149094%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in149043149057%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e149049149079%_
                                                           (##unchecked-structure-ref
                                                            _%in149043149057%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e149050149084%_
                                                           (##unchecked-structure-ref
                                                            _%in149043149057%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e149051149089%_
                                                           (##unchecked-structure-ref
                                                            _%in149043149057%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx149082%_
                                                            _%e149049149079%_)
                                                           (_%phi149087%_
                                                            _%e149050149084%_)
                                                           (_%imports149092%_
                                                            _%e149051149089%_))
                                                       (_%K149048149076%_
                                                        _%imports149092%_
                                                        _%phi149087%_
                                                        _%ctx149082%_)))
                                                   (_%else149046149065%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in149043149057%_
                                             'gx#module-import::t)
                                            (let* ((_%e149053149104%_
                                                    (##unchecked-structure-ref
                                                     _%in149043149057%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e149054149109%_
                                                    (##unchecked-structure-ref
                                                     _%in149043149057%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e149055149114%_
                                                    (##unchecked-structure-ref
                                                     _%in149043149057%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out149107%_
                                                     _%e149053149104%_)
                                                    (_%key149112%_
                                                     _%e149054149109%_)
                                                    (_%phi149117%_
                                                     _%e149055149114%_))
                                                (_%K149052149101%_
                                                 _%phi149117%_
                                                 _%key149112%_
                                                 _%out149107%_)))
                                            (_%try-match149045149094%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src149033%_
                              _%current-phi149037%_
                              (__foldl1
                               _%fold-e149039%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx149036%_
                                '8
                                '#f
                                '#f)))
                             _%r149034%_))))
                  (_%export!149004%_
                   (lambda (_%rbody149020%_)
                     (letrec* ((_%current-ctx149022%_
                                (gx#current-expander-context))
                               (_%fold-e149023%_
                                (lambda (_%out149027%_ _%r149028%_)
                                  (if (##structure-direct-instance-of?
                                       _%out149027%_
                                       'gx#module-export::t)
                                      (cons _%out149027%_ _%r149028%_)
                                      (if (##structure-direct-instance-of?
                                           _%out149027%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r149028%_
                                           (##unchecked-structure-ref
                                            _%out149027%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r149028%_)))))
                       (let ((_%body149025%_ (reverse _%rbody149020%_)))
                         (##unchecked-structure-set!
                          _%current-ctx149022%_
                          (__foldl1
                           _%fold-e149023%_
                           (##unchecked-structure-ref
                            _%current-ctx149022%_
                            '9
                            '#f
                            '#f)
                           _%body149025%_)
                          '9
                          '#f
                          '#f)
                         _%body149025%_))))
                  (_%expanded-export?149005%_
                   (lambda (_%e149015%_)
                     (let ((_%$e149017%_
                            (##structure-direct-instance-of?
                             _%e149015%_
                             'gx#module-export::t)))
                       (if _%$e149017%_
                           _%$e149017%_
                           (##structure-direct-instance-of?
                            _%e149015%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?148999%_)
              (let ((_%rbody149011%_
                     (gx#core-expand-import/export
                      _%stx148998%_
                      _%expanded-export?149005%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1149002%_)))
                (if _%internal-expand?148999%_
                    (reverse _%rbody149011%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!149004%_ _%rbody149011%_))
                     (gx#stx-source _%stx148998%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx148998%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx148998%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx149496%_)
        (let ((_%internal-expand?149498%_ '#f))
          (gx#core-expand-export%__%
           _%stx149496%_
           _%internal-expand?149498%_))))
    (define gx#core-expand-export%
      (lambda _g152573_
        (let ((_g152574_ (##length _g152573_)))
          (cond ((##fx= _g152574_ 1)
                 (apply gx#core-expand-export%__0 _g152573_))
                ((##fx= _g152574_ 2)
                 (apply gx#core-expand-export%__% _g152573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g152573_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd148995%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd148995%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx148965%_)
        (let* ((_%e148966148973%_ _%stx148965%_)
               (_%E148968148977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148966148973%_)))
               (_%E148967148991%_
                (lambda ()
                  (if (gx#stx-pair? _%e148966148973%_)
                      (let ((_%e148969148981%_
                             (gx#syntax-e _%e148966148973%_)))
                        (let ((_%hd148970148984%_ (##car _%e148969148981%_))
                              (_%tl148971148986%_ (##cdr _%e148969148981%_)))
                          (let ((_%body148989%_ _%tl148971148986%_))
                            (if (gx#identifier-list? _%body148989%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body148989%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body148989%_))
                                   (gx#stx-source _%stx148965%_)))
                                (_%E148968148977%_)))))
                      (_%E148968148977%_)))))
          (_%E148967148991%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id148931%_ _%private?148932%_ _%phi148933%_ _%ctx148934%_)
        (gx#core-bind-syntax!__%
         _%id148931%_
         ((if _%private?148932%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id148931%_))
         _%private?148932%_
         _%phi148933%_
         _%ctx148934%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id148939%_)
        (let* ((_%private?148941%_ '#f)
               (_%phi148943%_ (gx#current-expander-phi))
               (_%ctx148945%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id148939%_
           _%private?148941%_
           _%phi148943%_
           _%ctx148945%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id148947%_ _%private?148948%_)
        (let* ((_%phi148950%_ (gx#current-expander-phi))
               (_%ctx148952%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id148947%_
           _%private?148948%_
           _%phi148950%_
           _%ctx148952%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id148954%_ _%private?148955%_ _%phi148956%_)
        (let ((_%ctx148958%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id148954%_
           _%private?148955%_
           _%phi148956%_
           _%ctx148958%_))))
    (define gx#core-bind-feature!
      (lambda _g152575_
        (let ((_g152576_ (##length _g152575_)))
          (cond ((##fx= _g152576_ 1)
                 (apply gx#core-bind-feature!__0 _g152575_))
                ((##fx= _g152576_ 2)
                 (apply gx#core-bind-feature!__1 _g152575_))
                ((##fx= _g152576_ 3)
                 (apply gx#core-bind-feature!__2 _g152575_))
                ((##fx= _g152576_ 4)
                 (apply gx#core-bind-feature!__% _g152575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g152575_))))))))
