(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770333054)
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
      (lambda _%$args152628%_
        (apply make-instance gx#module-import::t _%$args152628%_)))
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
      (lambda _%$args152625%_
        (apply make-instance gx#module-export::t _%$args152625%_)))
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
      (lambda _%$args152622%_
        (apply make-instance gx#import-set::t _%$args152622%_)))
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
      (lambda _%$args152619%_
        (apply make-instance gx#export-set::t _%$args152619%_)))
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
      (lambda _%$args152616%_
        (apply make-instance gx#import-expander::t _%$args152616%_)))
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
      (lambda _%$args152613%_
        (apply make-instance gx#export-expander::t _%$args152613%_)))
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
      (lambda _%$args152610%_
        (apply make-instance gx#import-export-expander::t _%$args152610%_)))
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
      (lambda (_%path152607%_ _%fun152608%_)
        (call-with-input-file
         (cons 'path: (cons _%path152607%_ gx#source-file-settings))
         _%fun152608%_)))
    (define gx#module-context:::init!
      (lambda (_%self152590%_
               _%id152591%_
               _%super152592%_
               _%ns152593%_
               _%path152594%_)
        (let ((_%self152597%_ _%self152590%_))
          (if (##fx< '11 (##structure-length _%self152597%_))
              (begin
                (##unchecked-structure-set!
                 _%self152597%_
                 _%id152591%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152597%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152597%_
                 _%super152592%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152597%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self152597%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self152597%_
                 _%ns152593%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152597%_
                 _%path152594%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152597%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self152597%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self152597%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self152597%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self152597%_
                     '11
                     (##structure-length _%self152597%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self152423%_ _%ctx152424%_ _%root152425%_)
        (let* ((_%self152428%_ _%self152423%_)
               (_%super152444%_
                (let ((_%$e152438%_ _%root152425%_))
                  (if _%$e152438%_
                      _%$e152438%_
                      (let ((_%$e152441%_ (gx#core-context-root__0)))
                        (if _%$e152441%_
                            _%$e152441%_
                            (let ((__obj152672
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor152673
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj152672
                                      ':init!)))
                                (if __constructor152673
                                    (__constructor152673 __obj152672)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj152672)))))))
          (if _%ctx152424%_
              (let ((_%id152447%_
                     (##structure-ref
                      _%ctx152424%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path152448%_
                     (##structure-ref
                      _%ctx152424%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in152449%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx152424%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e152450%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx152424%_)))))
                (if (##fx< '8 (##structure-length _%self152428%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self152428%_
                       _%id152447%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152428%_
                       (make-hash-table-eq 'size: (##length _%in152449%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152428%_
                       _%super152444%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152428%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152428%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152428%_
                       _%path152448%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152428%_
                       _%in152449%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152428%_
                       _%e152450%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self152428%_
                           '8
                           (##structure-length _%self152428%_)))
                (##for-each
                 (lambda (_%g152451152453%_)
                   (gx#core-bind-weak-import!__%
                    _%g152451152453%_
                    _%self152428%_))
                 _%in152449%_))
              (if (##fx< '8 (##structure-length _%self152428%_))
                  (begin
                    (##unchecked-structure-set! _%self152428%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self152428%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self152428%_
                     _%super152444%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self152428%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self152428%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self152428%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self152428%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self152428%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self152428%_
                         '8
                         (##structure-length _%self152428%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self152459%_ _%ctx152460%_)
        (let ((_%root152462%_ '#f))
          (gx#prelude-context:::init!__%
           _%self152459%_
           _%ctx152460%_
           _%root152462%_))))
    (define gx#prelude-context:::init!
      (lambda _g152679_
        (let ((_g152680_ (##length _g152679_)))
          (cond ((##fx= _g152680_ 2)
                 (apply gx#prelude-context:::init!__0 _g152679_))
                ((##fx= _g152680_ 3)
                 (apply gx#prelude-context:::init!__% _g152679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g152679_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self152297%_ _%e152298%_)
        (if (##fx< '3 (##structure-length _%self152297%_))
            (begin
              (##unchecked-structure-set!
               _%self152297%_
               _%e152298%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152297%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152297%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self152297%_
                   '3
                   (##structure-length _%self152297%_)))))
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
      (lambda (_%g151923151926%_ _%g151924151928%_)
        (gx#core-apply-user-expander__%
         _%g151923151926%_
         _%g151924151928%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g151794151797%_ _%g151795151799%_)
        (gx#core-apply-user-expander__%
         _%g151794151797%_
         _%g151795151799%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx151665%_)
        (let* ((_%path151667%_
                (##structure-ref _%ctx151665%_ '7 gx#module-context::t '#f))
               (_%path151669%_
                (if (pair? _%path151667%_)
                    (##last _%path151667%_)
                    _%path151667%_)))
          (if (string? _%path151669%_) _%path151669%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path151641%_ _%reload?151642%_ _%eval?151643%_)
        (let ((_%ctx151645%_
               ((gx#current-expander-module-import)
                _%path151641%_
                _%reload?151642%_)))
          (if (and _%ctx151645%_ _%eval?151643%_)
              (gx#eval-module _%ctx151645%_)
              '#!void)
          _%ctx151645%_)))
    (define gx#import-module__0
      (lambda (_%path151650%_)
        (let* ((_%reload?151652%_ '#f) (_%eval?151654%_ '#f))
          (gx#import-module__%
           _%path151650%_
           _%reload?151652%_
           _%eval?151654%_))))
    (define gx#import-module__1
      (lambda (_%path151656%_ _%reload?151657%_)
        (let ((_%eval?151659%_ '#f))
          (gx#import-module__%
           _%path151656%_
           _%reload?151657%_
           _%eval?151659%_))))
    (define gx#import-module
      (lambda _g152681_
        (let ((_g152682_ (##length _g152681_)))
          (cond ((##fx= _g152682_ 1) (apply gx#import-module__0 _g152681_))
                ((##fx= _g152682_ 2) (apply gx#import-module__1 _g152681_))
                ((##fx= _g152682_ 3) (apply gx#import-module__% _g152681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g152681_))))))
    (define gx#eval-module
      (lambda (_%mod151638%_)
        ((gx#current-expander-module-eval) _%mod151638%_)))
    (define gx#core-eval-module
      (lambda (_%obj151617%_)
        (letrec ((_%force-e151619%_
                  (lambda (_%getf151633%_ _%e151634%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf151633%_ _%e151634%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e151634%_))))
          (let _%recur151621%_ ((_%e151623%_ _%obj151617%_))
            (if (##structure-instance-of? _%e151623%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e151626%_
                         (gx#core-context-prelude__% _%e151623%_)))
                    (if _%$e151626%_ (_%recur151621%_ _%$e151626%_) '#!void))
                  (_%force-e151619%_ gx#module-context-e _%e151623%_))
                (if (##structure-instance-of?
                     _%e151623%_
                     'gx#prelude-context::t)
                    (_%force-e151619%_ gx#prelude-context-e _%e151623%_)
                    (if (gx#stx-string? _%e151623%_)
                        (_%recur151621%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e151623%_)))
                        (if (gx#core-library-module-path? _%e151623%_)
                            (_%recur151621%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e151623%_)))
                            (error '"cannot eval module" _%obj151617%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx151597%_)
        (let _%lp151599%_ ((_%e151601%_ _%ctx151597%_))
          (if (or (##structure-instance-of? _%e151601%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e151601%_ 'gx#local-context::t))
              (_%lp151599%_ (##unchecked-structure-ref _%e151601%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e151601%_ 'gx#prelude-context::t)
                  _%e151601%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx151613%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx151613%_))))
    (define gx#core-context-prelude
      (lambda _g152683_
        (let ((_g152684_ (##length _g152683_)))
          (cond ((##fx= _g152684_ 0)
                 (apply gx#core-context-prelude__0 _g152683_))
                ((##fx= _g152684_ 1)
                 (apply gx#core-context-prelude__% _g152683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g152683_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx151588%_)
        (let ((_%$e151590%_ (__hash-get gx#__module-registry _%ctx151588%_)))
          (if _%$e151590%_
              _%$e151590%_
              (let ((_%pre151594%_
                     (let ((__obj152674
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
                        __obj152674
                        _%ctx151588%_)
                       __obj152674)))
                (__hash-put! gx#__module-registry _%ctx151588%_ _%pre151594%_)
                _%pre151594%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath151456%_ _%reload?151457%_)
        (letrec ((_%import-source151459%_
                  (lambda (_%path151547%_)
                    (if (member _%path151547%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path151547%_)
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
                                      (let ((_g152685_
                                             (gx#core-read-module
                                              _%path151547%_)))
                                        (begin
                                          (let ((_g152686_
                                                 (if (##values? _g152685_)
                                                     (##values-length
                                                      _g152685_)
                                                     1)))
                                            (if (not (##fx= _g152686_ 4))
                                                (error "Context expects 4 values"
                                                       _g152686_)))
                                          (let ((_%pre151555%_
                                                 (##values-ref _g152685_ 0))
                                                (_%id151556%_
                                                 (##values-ref _g152685_ 1))
                                                (_%ns151557%_
                                                 (##values-ref _g152685_ 2))
                                                (_%body151558%_
                                                 (##values-ref _g152685_ 3)))
                                            (let* ((_%prelude151568%_
                                                    (if (##structure-instance-of?
                                                         _%pre151555%_
                                                         'gx#prelude-context::t)
                                                        _%pre151555%_
                                                        (if (##structure-instance-of?
                                                             _%pre151555%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre151555%_)
                                                            (if (string? _%pre151555%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre151555%_))
                        (if (not _%pre151555%_)
                            (let ((_%$e151564%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e151564%_
                                  _%$e151564%_
                                  (let ((__obj152675
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
                                     __obj152675
                                     '#f)
                                    __obj152675)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath151456%_
                                   _%pre151555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx151570%_
                                                    (let ((__obj152676
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
                                                       __obj152676
                                                       _%id151556%_
                                                       _%prelude151568%_
                                                       _%ns151557%_
                                                       _%path151547%_)
                                                      __obj152676))
                                                   (_%body151572%_
                                                    (gx#core-expand-module-begin
                                                     _%body151558%_
                                                     _%ctx151570%_))
                                                   (_%body151574%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body151572%_)
                                                     _%path151547%_
                                                     _%ctx151570%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx151570%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body151574%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx151570%_
                                               _%body151574%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path151547%_
                                               _%ctx151570%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id151556%_
                                               _%ctx151570%_)
                                              _%ctx151570%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path151547%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule151460%_
                  (lambda (_%rpath151476%_)
                    (let* ((_%rpath151477151484%_ _%rpath151476%_)
                           (_%E151479151487%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath151477151484%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K151480151535%_
                            (lambda (_%refs151490%_ _%origin151491%_)
                              (let ((_%ctx151493%_
                                     (if _%origin151491%_
                                         (gx#core-import-module__%
                                          _%origin151491%_
                                          _%reload?151457%_)
                                         (gx#current-expander-context))))
                                (let _%lp151495%_ ((_%rest151497%_
                                                    _%refs151490%_)
                                                   (_%ctx151498%_
                                                    _%ctx151493%_))
                                  (let* ((_%rest151499151507%_ _%rest151497%_)
                                         (_%else151501151515%_
                                          (lambda () _%ctx151498%_))
                                         (_%K151503151523%_
                                          (lambda (_%rest151518%_ _%id151519%_)
                                            (let ((_%bind151521%_
                                                   (gx#resolve-identifier__%
                                                    _%id151519%_
                                                    '0
                                                    _%ctx151498%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind151521%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind151521%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp151495%_
                                                   _%rest151518%_
                                                   (##unchecked-structure-ref
                                                    _%bind151521%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath151476%_
                                                         _%id151519%_
                                                         _%bind151521%_))))))
                                    (if (pair? _%rest151499151507%_)
                                        (let ((_%hd151504151526%_
                                               (##car _%rest151499151507%_))
                                              (_%tl151505151528%_
                                               (##cdr _%rest151499151507%_)))
                                          (let* ((_%id151531%_
                                                  _%hd151504151526%_)
                                                 (_%rest151533%_
                                                  _%tl151505151528%_))
                                            (_%K151503151523%_
                                             _%rest151533%_
                                             _%id151531%_)))
                                        (_%else151501151515%_))))))))
                      (if (pair? _%rpath151477151484%_)
                          (let ((_%hd151481151538%_
                                 (##car _%rpath151477151484%_))
                                (_%tl151482151540%_
                                 (##cdr _%rpath151477151484%_)))
                            (let* ((_%origin151543%_ _%hd151481151538%_)
                                   (_%refs151545%_ _%tl151482151540%_))
                              (_%K151480151535%_
                               _%refs151545%_
                               _%origin151543%_)))
                          (_%E151479151487%_))))))
          (let ((_%$e151462%_
                 (if (not _%reload?151457%_)
                     (__hash-get gx#__module-registry _%rpath151456%_)
                     '#f)))
            (if _%$e151462%_
                _%$e151462%_
                (if (list? _%rpath151456%_)
                    (_%import-submodule151460%_ _%rpath151456%_)
                    (if (gx#core-library-module-path? _%rpath151456%_)
                        (let ((_%ctx151467%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath151456%_)
                                _%reload?151457%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath151456%_
                           _%ctx151467%_)
                          _%ctx151467%_)
                        (let* ((_%npath151470%_
                                (path-normalize _%rpath151456%_))
                               (_%$e151472%_
                                (if (not _%reload?151457%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath151470%_)
                                    '#f)))
                          (if _%$e151472%_
                              _%$e151472%_
                              (_%import-source151459%_
                               _%npath151470%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath151581%_)
        (let ((_%reload?151583%_ '#f))
          (gx#core-import-module__% _%rpath151581%_ _%reload?151583%_))))
    (define gx#core-import-module
      (lambda _g152687_
        (let ((_g152688_ (##length _g152687_)))
          (cond ((##fx= _g152688_ 1)
                 (apply gx#core-import-module__0 _g152687_))
                ((##fx= _g152688_ 2)
                 (apply gx#core-import-module__% _g152687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g152687_))))))
    (define gx#core-read-module
      (lambda (_%path151445%_)
        (__with-catch
         (lambda (_%exn151447%_)
           (if (and (datum-parsing-exception? _%exn151447%_)
                    (eq? (datum-parsing-exception-filepos _%exn151447%_) '0))
               (gx#core-read-module/lang _%path151445%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path151445%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g151449151451%_)
                      (display-exception__% _%exn151447%_ _%g151449151451%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path151445%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path151297%_)
        (let _%lp151299%_ ((_%body151301%_
                            (read-syntax-from-file _%path151297%_))
                           (_%pre151302%_ '#f)
                           (_%ns151303%_ '#f)
                           (_%pkg151304%_ '#f))
          (let* ((_%e151305151329%_ _%body151301%_)
                 (_%E151321151355%_
                  (lambda ()
                    (let ((_g152689_
                           (if _%pkg151304%_
                               (values _%pre151302%_
                                       _%ns151303%_
                                       _%pkg151304%_)
                               (gx#core-read-module-package
                                _%path151297%_
                                _%pre151302%_
                                _%ns151303%_))))
                      (begin
                        (let ((_g152690_
                               (if (##values? _g152689_)
                                   (##values-length _g152689_)
                                   1)))
                          (if (not (##fx= _g152690_ 3))
                              (error "Context expects 3 values" _g152690_)))
                        (let ((_%pre151333%_ (##values-ref _g152689_ 0))
                              (_%ns151334%_ (##values-ref _g152689_ 1))
                              (_%pkg151335%_ (##values-ref _g152689_ 2)))
                          (let* ((_%prelude151341%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre151333%_)
                                      (gx#syntax-local-e__0 _%pre151333%_)
                                      (if (gx#core-library-module-path?
                                           _%pre151333%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre151333%_)
                                          (if (gx#stx-string? _%pre151333%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre151333%_
                                               _%path151297%_)
                                              (gx#stx-e _%pre151333%_)))))
                                 (_%path-id151343%_
                                  (gx#core-module-path->namespace
                                   _%path151297%_))
                                 (_%pkg-id151345%_
                                  (if _%pkg151335%_
                                      (##string-append
                                       _%pkg151335%_
                                       '"/"
                                       _%path-id151343%_)
                                      _%path-id151343%_))
                                 (_%module-id151347%_
                                  (##string->symbol _%pkg-id151345%_))
                                 (_%module-ns151352%_
                                  (if (eq? _%ns151334%_ '#!void)
                                      '#f
                                      (let ((_%$e151349%_ _%ns151334%_))
                                        (if _%$e151349%_
                                            _%$e151349%_
                                            _%pkg-id151345%_)))))
                            (values _%prelude151341%_
                                    _%module-id151347%_
                                    _%module-ns151352%_
                                    _%body151301%_)))))))
                 (_%E151314151387%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151305151329%_)
                        (let ((_%e151322151359%_
                               (gx#syntax-e _%e151305151329%_)))
                          (let ((_%hd151323151362%_ (##car _%e151322151359%_))
                                (_%tl151324151364%_ (##cdr _%e151322151359%_)))
                            (if (eq? (gx#stx-e _%hd151323151362%_) 'package:)
                                (if (gx#stx-pair? _%tl151324151364%_)
                                    (let ((_%e151325151367%_
                                           (gx#syntax-e _%tl151324151364%_)))
                                      (let ((_%hd151326151370%_
                                             (##car _%e151325151367%_))
                                            (_%tl151327151372%_
                                             (##cdr _%e151325151367%_)))
                                        (let* ((_%pkg151375%_
                                                _%hd151326151370%_)
                                               (_%rest151377%_
                                                _%tl151327151372%_)
                                               (_%pkg151385%_
                                                (if (gx#identifier?
                                                     _%pkg151375%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg151375%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg151375%_)
                                                            (gx#stx-false?
                                                             _%pkg151375%_))
                                                        (gx#stx-e
                                                         _%pkg151375%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg151375%_)))))
                                          (_%lp151299%_
                                           _%rest151377%_
                                           _%pre151302%_
                                           _%ns151303%_
                                           _%pkg151385%_))))
                                    (_%E151321151355%_))
                                (_%E151321151355%_))))
                        (_%E151321151355%_))))
                 (_%E151307151417%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151305151329%_)
                        (let ((_%e151315151391%_
                               (gx#syntax-e _%e151305151329%_)))
                          (let ((_%hd151316151394%_ (##car _%e151315151391%_))
                                (_%tl151317151396%_ (##cdr _%e151315151391%_)))
                            (if (eq? (gx#stx-e _%hd151316151394%_) 'namespace:)
                                (if (gx#stx-pair? _%tl151317151396%_)
                                    (let ((_%e151318151399%_
                                           (gx#syntax-e _%tl151317151396%_)))
                                      (let ((_%hd151319151402%_
                                             (##car _%e151318151399%_))
                                            (_%tl151320151404%_
                                             (##cdr _%e151318151399%_)))
                                        (let* ((_%ns151407%_
                                                _%hd151319151402%_)
                                               (_%rest151409%_
                                                _%tl151320151404%_)
                                               (_%ns151415%_
                                                (if (gx#identifier?
                                                     _%ns151407%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns151407%_))
                                                    (if (gx#stx-string?
                                                         _%ns151407%_)
                                                        (gx#stx-e _%ns151407%_)
                                                        (if (gx#stx-false?
                                                             _%ns151407%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns151407%_))))))
                                          (_%lp151299%_
                                           _%rest151409%_
                                           _%pre151302%_
                                           _%ns151415%_
                                           _%pkg151304%_))))
                                    (_%E151314151387%_))
                                (_%E151314151387%_))))
                        (_%E151314151387%_))))
                 (_%E151306151441%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151305151329%_)
                        (let ((_%e151308151421%_
                               (gx#syntax-e _%e151305151329%_)))
                          (let ((_%hd151309151424%_ (##car _%e151308151421%_))
                                (_%tl151310151426%_ (##cdr _%e151308151421%_)))
                            (if (eq? (gx#stx-e _%hd151309151424%_) 'prelude:)
                                (if (gx#stx-pair? _%tl151310151426%_)
                                    (let ((_%e151311151429%_
                                           (gx#syntax-e _%tl151310151426%_)))
                                      (let ((_%hd151312151432%_
                                             (##car _%e151311151429%_))
                                            (_%tl151313151434%_
                                             (##cdr _%e151311151429%_)))
                                        (let* ((_%prelude151437%_
                                                _%hd151312151432%_)
                                               (_%rest151439%_
                                                _%tl151313151434%_))
                                          (_%lp151299%_
                                           _%rest151439%_
                                           _%prelude151437%_
                                           _%ns151303%_
                                           _%pkg151304%_))))
                                    (_%E151307151417%_))
                                (_%E151307151417%_))))
                        (_%E151307151417%_)))))
            (_%E151306151441%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path151118%_)
        (letrec ((_%default-read-module-body151120%_
                  (lambda (_%inp151289%_)
                    (let _%lp151291%_ ((_%body151293%_ '()))
                      (let ((_%next151295%_ (read-syntax__% _%inp151289%_)))
                        (if (eof-object? _%next151295%_)
                            (reverse _%body151293%_)
                            (_%lp151291%_
                             (cons _%next151295%_ _%body151293%_)))))))
                 (_%read-body151121%_
                  (lambda (_%inp151206%_
                           _%pre151207%_
                           _%ns151208%_
                           _%pkg151209%_
                           _%args151210%_)
                    (let ((_g152691_
                           (if _%pkg151209%_
                               (values _%pre151207%_
                                       _%ns151208%_
                                       _%pkg151209%_)
                               (gx#core-read-module-package
                                _%path151118%_
                                _%pre151207%_
                                _%ns151208%_))))
                      (begin
                        (let ((_g152692_
                               (if (##values? _g152691_)
                                   (##values-length _g152691_)
                                   1)))
                          (if (not (##fx= _g152692_ 3))
                              (error "Context expects 3 values" _g152692_)))
                        (let ((_%pre151212%_ (##values-ref _g152691_ 0))
                              (_%ns151213%_ (##values-ref _g152691_ 1))
                              (_%pkg151214%_ (##values-ref _g152691_ 2)))
                          (let* ((_%prelude151216%_
                                  (gx#import-module__0 _%pre151212%_))
                                 (_%read-module-body151271%_
                                  (let ((_%$e151262%_
                                         (__find (lambda (_%e151217151219%_)
                                                   (let* ((_%e151217151221151231%_
                                                           _%e151217151219%_)
                                                          (_%else151223151239%_
                                                           (lambda () '#f))
                                                          (_%K151225151243%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e151217151221151231%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e151226151246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e151217151221151231%_
                          '1
                          '#f
                          '#f))
                        (_%e151227151249%_
                         (##unchecked-structure-ref
                          _%e151217151221151231%_
                          '2
                          '#f
                          '#f))
                        (_%e151228151252%_
                         (##unchecked-structure-ref
                          _%e151217151221151231%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e151228151252%_ '1)
                       (let ((_%e151229151255%_
                              (##unchecked-structure-ref
                               _%e151217151221151231%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g151257151259%_)
                                (eq? _%g151257151259%_ 'read-module-body))
                              _%e151229151255%_)
                             (_%K151225151243%_)
                             (_%else151223151239%_)))
                       (_%else151223151239%_)))
                 (_%else151223151239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude151216%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e151262%_
                                        ((lambda (_%xport151265%_)
                                           (let ((_%proc151268%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport151265%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc151268%_)
                                                 _%proc151268%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path151118%_
                                                  _%pre151212%_
                                                  _%proc151268%_))))
                                         _%$e151262%_)
                                        _%default-read-module-body151120%_)))
                                 (_%path-id151273%_
                                  (gx#core-module-path->namespace
                                   _%path151118%_))
                                 (_%pkg-id151275%_
                                  (if _%pkg151214%_
                                      (##string-append
                                       _%pkg151214%_
                                       '"/"
                                       _%path-id151273%_)
                                      _%path-id151273%_))
                                 (_%module-id151277%_
                                  (##string->symbol _%pkg-id151275%_))
                                 (_%module-ns151282%_
                                  (let ((_%$e151279%_ _%ns151213%_))
                                    (if _%$e151279%_
                                        _%$e151279%_
                                        _%pkg-id151275%_)))
                                 (_%body151286%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body151271%_
                                         _%inp151206%_))
                                      gx#current-module-reader-args
                                      _%args151210%_))
                                   gx#current-module-reader-path
                                   _%path151118%_)))
                            (values _%prelude151216%_
                                    _%module-id151277%_
                                    _%module-ns151282%_
                                    _%body151286%_)))))))
                 (_%string-e151122%_
                  (lambda (_%obj151200%_ _%what151201%_)
                    (if (string? _%obj151200%_)
                        _%obj151200%_
                        (if (symbol? _%obj151200%_)
                            (##symbol->string _%obj151200%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what151201%_)
                             _%path151118%_
                             _%obj151200%_)))))
                 (_%read-lang-args151123%_
                  (lambda (_%inp151155%_ _%args151156%_)
                    (let* ((_%args151157151165%_ _%args151156%_)
                           (_%else151159151173%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path151118%_)))
                           (_%K151161151188%_
                            (lambda (_%args151176%_ _%prelude151177%_)
                              (let* ((_%pkg151179%_
                                      (pgetq__0 'package: _%args151176%_))
                                     (_%pkg151181%_
                                      (if _%pkg151179%_
                                          (_%string-e151122%_
                                           _%pkg151179%_
                                           '"package")
                                          '#f))
                                     (_%ns151183%_
                                      (pgetq__0 'namespace: _%args151176%_))
                                     (_%ns151185%_
                                      (if _%ns151183%_
                                          (_%string-e151122%_
                                           _%ns151183%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body151121%_
                                 _%inp151155%_
                                 _%prelude151177%_
                                 _%ns151185%_
                                 _%pkg151181%_
                                 _%args151176%_)))))
                      (if (pair? _%args151157151165%_)
                          (let ((_%hd151162151191%_
                                 (##car _%args151157151165%_))
                                (_%tl151163151193%_
                                 (##cdr _%args151157151165%_)))
                            (let* ((_%prelude151196%_ _%hd151162151191%_)
                                   (_%args151198%_ _%tl151163151193%_))
                              (_%K151161151188%_
                               _%args151198%_
                               _%prelude151196%_)))
                          (_%else151159151173%_)))))
                 (_%read-lang151124%_
                  (lambda (_%inp151129%_)
                    (let* ((_%head151131%_ (read-line _%inp151129%_))
                           (_%$e151133%_
                            (string-index__0 _%head151131%_ '#\space)))
                      (if _%$e151133%_
                          ((lambda (_%ix151136%_)
                             (let ((_%lang151138%_
                                    (substring
                                     _%head151131%_
                                     '0
                                     _%ix151136%_)))
                               (if (equal? _%lang151138%_ '"#lang")
                                   (let* ((_%rest151140%_
                                           (substring
                                            _%head151131%_
                                            (##fx+ _%ix151136%_ '1)
                                            (string-length _%head151131%_)))
                                          (_%args151151%_
                                           (__with-catch
                                            (lambda (_%g151141151143%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path151118%_
                                               _%g151141151143%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest151140%_
                                               (lambda (_%g151146151148%_)
                                                 (read-all
                                                  _%g151146151148%_
                                                  read)))))))
                                     (_%read-lang-args151123%_
                                      _%inp151129%_
                                      _%args151151%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path151118%_))))
                           _%$e151133%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path151118%_)))))
                 (_%read-e151125%_
                  (lambda (_%inp151127%_)
                    (if (eq? (peek-char _%inp151127%_) '#\#)
                        (_%read-lang151124%_ _%inp151127%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path151118%_)))))
          (gx#call-with-input-source-file _%path151118%_ _%read-e151125%_))))
    (define gx#core-read-module-package
      (lambda (_%path151066%_ _%pre151067%_ _%ns151068%_)
        (letrec ((_%string-e151070%_
                  (lambda (_%e151113%_)
                    (if (symbol? _%e151113%_)
                        (##symbol->string _%e151113%_)
                        (if (string? _%e151113%_)
                            _%e151113%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e151113%_))))))
          (let _%lp151072%_ ((_%dir151074%_ (path-directory _%path151066%_))
                             (_%pkg-path151075%_ '()))
            (let ((_%gerbil.pkg151077%_
                   (path-expand '"gerbil.pkg" _%dir151074%_)))
              (if (##file-exists? _%gerbil.pkg151077%_)
                  (let ((_%plist151079%_
                         (gx#core-library-package-plist__% _%dir151074%_ '#t)))
                    (if (null? _%plist151079%_)
                        (let ((_%pkg151082%_
                               (if (null? _%pkg-path151075%_)
                                   '#f
                                   (string-join _%pkg-path151075%_ '"/"))))
                          (values _%pre151067%_ _%ns151068%_ _%pkg151082%_))
                        (if (list? _%plist151079%_)
                            (let* ((_%root151085%_
                                    (pgetq__0 'package: _%plist151079%_))
                                   (_%pkg151089%_
                                    (let ((_%pkg-path151087%_
                                           (if _%root151085%_
                                               (cons (_%string-e151070%_
                                                      _%root151085%_)
                                                     _%pkg-path151075%_)
                                               _%pkg-path151075%_)))
                                      (if (null? _%pkg-path151087%_)
                                          '#f
                                          (string-join
                                           _%pkg-path151087%_
                                           '"/"))))
                                   (_%ns151096%_
                                    (let ((_%ns151094%_
                                           (let ((_%$e151091%_ _%ns151068%_))
                                             (if _%$e151091%_
                                                 _%$e151091%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist151079%_)))))
                                      (if _%ns151094%_
                                          (_%string-e151070%_ _%ns151094%_)
                                          '#f)))
                                   (_%pre151101%_
                                    (let ((_%$e151098%_ _%pre151067%_))
                                      (if _%$e151098%_
                                          _%$e151098%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist151079%_)))))
                              (values _%pre151101%_
                                      _%ns151096%_
                                      _%pkg151089%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist151079%_))))
                  (let ((_%dir*151105%_
                         (path-strip-trailing-directory-separator
                          _%dir151074%_)))
                    (if (or (__string-empty? _%dir*151105%_)
                            (equal? _%dir151074%_ _%dir*151105%_))
                        (values _%pre151067%_ _%ns151068%_ '#f)
                        (let ((_%xpath151110%_
                               (path-strip-directory _%dir*151105%_))
                              (_%xdir151111%_ (path-directory _%dir*151105%_)))
                          (_%lp151072%_
                           _%xdir151111%_
                           (cons _%xpath151110%_ _%pkg-path151075%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path151064%_)
        (path-strip-extension (path-strip-directory _%path151064%_))))
    (define gx#core-module-path->id
      (lambda (_%path151062%_)
        (##string->symbol (gx#core-module-path->namespace _%path151062%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path151041%_ _%rel151042%_)
        (let* ((_%path151044%_ (gx#stx-e _%stx-path151041%_))
               (_%path151046%_
                (if (__string-empty? (path-extension _%path151044%_))
                    (##string-append _%path151044%_ '".ss")
                    _%path151044%_)))
          (gx#core-resolve-path__%
           _%path151046%_
           (let ((_%$e151049%_ (gx#stx-source _%stx-path151041%_)))
             (if _%$e151049%_ _%$e151049%_ _%rel151042%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path151055%_)
        (let ((_%rel151057%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path151055%_ _%rel151057%_))))
    (define gx#core-resolve-module-path
      (lambda _g152693_
        (let ((_g152694_ (##length _g152693_)))
          (cond ((##fx= _g152694_ 1)
                 (apply gx#core-resolve-module-path__0 _g152693_))
                ((##fx= _g152694_ 2)
                 (apply gx#core-resolve-module-path__% _g152693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g152693_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath150926%_)
        (let* ((_%spath150928%_ (symbol->string (gx#stx-e _%libpath150926%_)))
               (_%spath150930%_
                (substring
                 _%spath150928%_
                 '1
                 (##string-length _%spath150928%_)))
               (_%ext150932%_ (path-extension _%spath150930%_))
               (_%ssi150934%_
                (if (__string-empty? _%ext150932%_)
                    (##string-append _%spath150930%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath150930%_)
                     '".ssi")))
               (_%srcs150938%_
                (if (__string-empty? _%ext150932%_)
                    (##map (lambda (_%ext150936%_)
                             (string-append _%spath150930%_ _%ext150936%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath150930%_ '()))))
          (let _%lp150941%_ ((_%rest150943%_ (load-path)))
            (let* ((_%rest150944150953%_ _%rest150943%_)
                   (_%E150947150957%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest150944150953%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K150949151028%_
                     (lambda (_%rest150968%_ _%dir150969%_)
                       (letrec ((_%resolve150971%_
                                 (lambda (_%ssi150984%_ _%srcs150985%_)
                                   (let ((_%compiled-path150987%_
                                          (path-expand
                                           _%ssi150984%_
                                           _%dir150969%_)))
                                     (if (##file-exists?
                                          _%compiled-path150987%_)
                                         (path-normalize
                                          _%compiled-path150987%_)
                                         (let _%lpr150989%_ ((_%rest-src150991%_
                                                              _%srcs150985%_))
                                           (let* ((_%rest-src150992151000%_
                                                   _%rest-src150991%_)
                                                  (_%else150994151008%_
                                                   (lambda ()
                                                     (_%lp150941%_
                                                      _%rest150968%_)))
                                                  (_%K150996151016%_
                                                   (lambda (_%rest-src151011%_
                                                            _%src151012%_)
                                                     (let ((_%src-path151014%_
                                                            (path-expand
                                                             _%src151012%_
                                                             _%dir150969%_)))
                                                       (if (##file-exists?
                                                            _%src-path151014%_)
                                                           (path-normalize
                                                            _%src-path151014%_)
                                                           (_%lpr150989%_
                                                            _%rest-src151011%_))))))
                                             (if (pair? _%rest-src150992151000%_)
                                                 (let ((_%hd150997151019%_
                                                        (##car _%rest-src150992151000%_))
                                                       (_%tl150998151021%_
                                                        (##cdr _%rest-src150992151000%_)))
                                                   (let* ((_%src151024%_
                                                           _%hd150997151019%_)
                                                          (_%rest-src151026%_
                                                           _%tl150998151021%_))
                                                     (_%K150996151016%_
                                                      _%rest-src151026%_
                                                      _%src151024%_)))
                                                 (_%else150994151008%_)))))))))
                         (let ((_%$e150973%_
                                (gx#core-library-package-path-prefix
                                 _%dir150969%_)))
                           (if _%$e150973%_
                               ((lambda (_%prefix150976%_)
                                  (if (string-prefix?
                                       _%prefix150976%_
                                       _%spath150930%_)
                                      (let ((_%ssi150980%_
                                             (substring
                                              _%ssi150934%_
                                              (string-length _%prefix150976%_)
                                              (##string-length _%ssi150934%_)))
                                            (_%srcs150981%_
                                             (##map (lambda (_%src150978%_)
                                                      (substring
                                                       _%src150978%_
                                                       (string-length
                                                        _%prefix150976%_)
                                                       (string-length
                                                        _%src150978%_)))
                                                    _%srcs150938%_)))
                                        (_%resolve150971%_
                                         _%ssi150980%_
                                         _%srcs150981%_))
                                      (_%lp150941%_ _%rest150968%_)))
                                _%$e150973%_)
                               (_%resolve150971%_
                                _%ssi150934%_
                                _%srcs150938%_))))))
                    (_%K150948150962%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath150926%_))))
                (let ((_%try-match150946150965%_
                       (lambda ()
                         (if (null? _%rest150944150953%_)
                             (_%K150948150962%_)
                             (_%E150947150957%_)))))
                  (if (pair? _%rest150944150953%_)
                      (let ((_%tl150951151033%_ (##cdr _%rest150944150953%_))
                            (_%hd150950151031%_ (##car _%rest150944150953%_)))
                        (let ((_%dir151036%_ _%hd150950151031%_)
                              (_%rest151038%_ _%tl150951151033%_))
                          (_%K150949151028%_ _%rest151038%_ _%dir151036%_)))
                      (_%try-match150946150965%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath150894%_)
        (letrec ((_%resolve150896%_
                  (lambda (_%path150917%_ _%base150918%_)
                    (let ((_%$e150920%_
                           (string-rindex__0 _%base150918%_ '#\/)))
                      (if _%$e150920%_
                          ((lambda (_%idx150923%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base150918%_ '0 _%idx150923%_)
                                '"/"
                                _%path150917%_))))
                           _%$e150920%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path150917%_))))))))
          (let ((_%spath150898%_ (symbol->string (gx#stx-e _%modpath150894%_)))
                (_%mod150899%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod150899%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath150894%_))
            (let ((_%mpath150901%_
                   (symbol->string
                    (##structure-ref
                     _%mod150899%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp150903%_ ((_%spath150905%_ _%spath150898%_)
                                 (_%mpath150906%_ _%mpath150901%_))
                (if (string-prefix? '"../" _%spath150905%_)
                    (let ((_%$e150909%_
                           (string-rindex__0 _%mpath150906%_ '#\/)))
                      (if _%$e150909%_
                          ((lambda (_%idx150912%_)
                             (_%lp150903%_
                              (substring
                               _%spath150905%_
                               '3
                               (string-length _%spath150905%_))
                              (substring _%mpath150906%_ '0 _%idx150912%_)))
                           _%$e150909%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath150894%_)))
                    (if (string-prefix? '"./" _%spath150905%_)
                        (_%lp150903%_
                         (substring
                          _%spath150905%_
                          '2
                          (string-length _%spath150905%_))
                         _%mpath150906%_)
                        (_%resolve150896%_
                         _%spath150905%_
                         _%mpath150906%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir150886%_)
        (let ((_%$e150888%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir150886%_))))
          (if _%$e150888%_
              ((lambda (_%pkg150891%_)
                 (##string-append (symbol->string _%pkg150891%_) '"/"))
               _%$e150888%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir150856%_ _%exists?150857%_)
        (let ((_%$e150859%_ (__hash-get gx#__module-pkg-cache _%dir150856%_)))
          (if _%$e150859%_
              _%$e150859%_
              (let* ((_%gerbil.pkg150863%_
                      (path-expand '"gerbil.pkg" _%dir150856%_))
                     (_%plist150873%_
                      (if (or _%exists?150857%_
                              (##file-exists? _%gerbil.pkg150863%_))
                          (let ((_%e150868%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg150863%_
                                  read)))
                            (if (eof-object? _%e150868%_)
                                '()
                                (if (list? _%e150868%_)
                                    _%e150868%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg150863%_
                                     _%e150868%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir150856%_
                 _%plist150873%_)
                _%plist150873%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir150879%_)
        (let ((_%exists?150881%_ '#f))
          (gx#core-library-package-plist__% _%dir150879%_ _%exists?150881%_))))
    (define gx#core-library-package-plist
      (lambda _g152695_
        (let ((_g152696_ (##length _g152695_)))
          (cond ((##fx= _g152696_ 1)
                 (apply gx#core-library-package-plist__0 _g152695_))
                ((##fx= _g152696_ 2)
                 (apply gx#core-library-package-plist__% _g152695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g152695_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx150853%_)
        (gx#core-special-module-path? _%stx150853%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx150851%_)
        (gx#core-special-module-path? _%stx150851%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx150846%_ _%char150847%_)
        (if (gx#identifier? _%stx150846%_)
            (if (interned-symbol? (gx#stx-e _%stx150846%_))
                (let ((_%str150849%_
                       (symbol->string (gx#stx-e _%stx150846%_))))
                  (if (##fx> (##string-length _%str150849%_) '1)
                      (eq? (string-ref _%str150849%_ '0) _%char150847%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx150840%_)
        (gx#core-bound-identifier?__%
         _%stx150840%_
         (lambda (_%g150841150843%_)
           (gx#expander-binding?__% _%g150841150843%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx150834%_)
        (gx#core-bound-identifier?__%
         _%stx150834%_
         (lambda (_%g150835150837%_)
           (gx#expander-binding?__% _%g150835150837%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx150821%_)
        (letrec ((_%module-prelude?150823%_
                  (lambda (_%e150829%_)
                    (let ((_%$e150831%_
                           (##structure-instance-of?
                            _%e150829%_
                            'gx#module-context::t)))
                      (if _%$e150831%_
                          _%$e150831%_
                          (##structure-instance-of?
                           _%e150829%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx150821%_
           (lambda (_%g150824150826%_)
             (gx#expander-binding?__%
              _%g150824150826%_
              _%module-prelude?150823%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in150752%_ _%ctx150753%_ _%force-weak?150754%_)
        (let* ((_%in150755150764%_ _%in150752%_)
               (_%E150757150767%_
                (lambda ()
                  (error '"No clause matching"
                         _%in150755150764%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K150758150780%_
                (lambda (_%weak?150770%_
                         _%phi150771%_
                         _%key150772%_
                         _%source150773%_)
                  (gx#core-bind!__%
                   _%key150772%_
                   (let* ((_%e150775%_
                           (gx#core-resolve-module-export _%source150773%_))
                          (__obj152677
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
                      __obj152677
                      (##unchecked-structure-ref _%e150775%_ '1 '#f '#f)
                      _%key150772%_
                      _%phi150771%_
                      _%e150775%_
                      (##unchecked-structure-ref _%source150773%_ '1 '#f '#f)
                      (let ((_%$e150777%_ _%force-weak?150754%_))
                        (if _%$e150777%_ _%$e150777%_ _%weak?150770%_)))
                     __obj152677)
                   gx#core-context-rebind?
                   _%phi150771%_
                   _%ctx150753%_))))
          (if (##structure-direct-instance-of?
               _%in150755150764%_
               'gx#module-import::t)
              (let* ((_%e150759150783%_
                      (##unchecked-structure-ref
                       _%in150755150764%_
                       '1
                       '#f
                       '#f))
                     (_%source150786%_ _%e150759150783%_)
                     (_%e150760150788%_
                      (##unchecked-structure-ref
                       _%in150755150764%_
                       '2
                       '#f
                       '#f))
                     (_%key150791%_ _%e150760150788%_)
                     (_%e150761150793%_
                      (##unchecked-structure-ref
                       _%in150755150764%_
                       '3
                       '#f
                       '#f))
                     (_%phi150796%_ _%e150761150793%_)
                     (_%e150762150798%_
                      (##unchecked-structure-ref
                       _%in150755150764%_
                       '4
                       '#f
                       '#f))
                     (_%weak?150801%_ _%e150762150798%_))
                (_%K150758150780%_
                 _%weak?150801%_
                 _%phi150796%_
                 _%key150791%_
                 _%source150786%_))
              (_%E150757150767%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in150806%_)
        (let* ((_%ctx150808%_ (gx#current-expander-context))
               (_%force-weak?150810%_ '#f))
          (gx#core-bind-import!__%
           _%in150806%_
           _%ctx150808%_
           _%force-weak?150810%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in150812%_ _%ctx150813%_)
        (let ((_%force-weak?150815%_ '#f))
          (gx#core-bind-import!__%
           _%in150812%_
           _%ctx150813%_
           _%force-weak?150815%_))))
    (define gx#core-bind-import!
      (lambda _g152697_
        (let ((_g152698_ (##length _g152697_)))
          (cond ((##fx= _g152698_ 1) (apply gx#core-bind-import!__0 _g152697_))
                ((##fx= _g152698_ 2) (apply gx#core-bind-import!__1 _g152697_))
                ((##fx= _g152698_ 3) (apply gx#core-bind-import!__% _g152697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g152697_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in150738%_ _%ctx150739%_)
        (gx#core-bind-import!__% _%in150738%_ _%ctx150739%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in150744%_)
        (let ((_%ctx150746%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in150744%_ _%ctx150746%_))))
    (define gx#core-bind-weak-import!
      (lambda _g152699_
        (let ((_g152700_ (##length _g152699_)))
          (cond ((##fx= _g152700_ 1)
                 (apply gx#core-bind-weak-import!__0 _g152699_))
                ((##fx= _g152700_ 2)
                 (apply gx#core-bind-weak-import!__% _g152699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g152699_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out150631%_)
        (letrec ((_%subst150633%_
                  (lambda (_%key150678%_)
                    (let* ((_%key150679150687%_ _%key150678%_)
                           (_%else150681150695%_ (lambda () _%key150678%_))
                           (_%K150683150725%_
                            (lambda (_%mark150698%_ _%id150699%_)
                              (let* ((_%mark150700150706%_ _%mark150698%_)
                                     (_%E150702150709%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark150700150706%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K150703150717%_
                                      (lambda (_%subst150712%_)
                                        (let ((_%$e150714%_
                                               (if _%subst150712%_
                                                   (hash-get
                                                    _%subst150712%_
                                                    _%id150699%_)
                                                   '#f)))
                                          (if _%$e150714%_
                                              _%$e150714%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key150678%_))))))
                                (if (##structure-instance-of?
                                     _%mark150700150706%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e150704150720%_
                                            (##unchecked-structure-ref
                                             _%mark150700150706%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst150723%_ _%e150704150720%_))
                                      (_%K150703150717%_ _%subst150723%_))
                                    (_%E150702150709%_))))))
                      (if (pair? _%key150679150687%_)
                          (let ((_%hd150684150728%_
                                 (##car _%key150679150687%_))
                                (_%tl150685150730%_
                                 (##cdr _%key150679150687%_)))
                            (let* ((_%id150733%_ _%hd150684150728%_)
                                   (_%mark150735%_ _%tl150685150730%_))
                              (_%K150683150725%_ _%mark150735%_ _%id150733%_)))
                          (_%else150681150695%_))))))
          (let* ((_%out150634150644%_ _%out150631%_)
                 (_%E150636150647%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out150634150644%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K150637150654%_
                  (lambda (_%phi150650%_ _%key150651%_ _%ctx150652%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx150652%_ _%phi150650%_)
                     (_%subst150633%_ _%key150651%_)))))
            (if (##structure-direct-instance-of?
                 _%out150634150644%_
                 'gx#module-export::t)
                (let* ((_%e150638150657%_
                        (##unchecked-structure-ref
                         _%out150634150644%_
                         '1
                         '#f
                         '#f))
                       (_%ctx150660%_ _%e150638150657%_)
                       (_%e150639150662%_
                        (##unchecked-structure-ref
                         _%out150634150644%_
                         '2
                         '#f
                         '#f))
                       (_%key150665%_ _%e150639150662%_)
                       (_%e150640150667%_
                        (##unchecked-structure-ref
                         _%out150634150644%_
                         '3
                         '#f
                         '#f))
                       (_%phi150670%_ _%e150640150667%_)
                       (_%e150641150672%_
                        (##unchecked-structure-ref
                         _%out150634150644%_
                         '4
                         '#f
                         '#f))
                       (_%e150642150675%_
                        (##unchecked-structure-ref
                         _%out150634150644%_
                         '5
                         '#f
                         '#f)))
                  (_%K150637150654%_
                   _%phi150670%_
                   _%key150665%_
                   _%ctx150660%_))
                (_%E150636150647%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out150557%_ _%rename150558%_ _%dphi150559%_)
        (let* ((_%out150560150570%_ _%out150557%_)
               (_%E150562150573%_
                (lambda ()
                  (error '"No clause matching"
                         _%out150560150570%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K150563150585%_
                (lambda (_%weak?150576%_
                         _%name150577%_
                         _%phi150578%_
                         _%key150579%_
                         _%ctx150580%_)
                  (##structure
                   gx#module-import::t
                   _%out150557%_
                   (let ((_%$e150582%_ _%rename150558%_))
                     (if _%$e150582%_ _%$e150582%_ _%name150577%_))
                   (fx+ _%phi150578%_ _%dphi150559%_)
                   _%weak?150576%_))))
          (if (##structure-direct-instance-of?
               _%out150560150570%_
               'gx#module-export::t)
              (let* ((_%e150564150588%_
                      (##unchecked-structure-ref
                       _%out150560150570%_
                       '1
                       '#f
                       '#f))
                     (_%ctx150591%_ _%e150564150588%_)
                     (_%e150565150593%_
                      (##unchecked-structure-ref
                       _%out150560150570%_
                       '2
                       '#f
                       '#f))
                     (_%key150596%_ _%e150565150593%_)
                     (_%e150566150598%_
                      (##unchecked-structure-ref
                       _%out150560150570%_
                       '3
                       '#f
                       '#f))
                     (_%phi150601%_ _%e150566150598%_)
                     (_%e150567150603%_
                      (##unchecked-structure-ref
                       _%out150560150570%_
                       '4
                       '#f
                       '#f))
                     (_%name150606%_ _%e150567150603%_)
                     (_%e150568150608%_
                      (##unchecked-structure-ref
                       _%out150560150570%_
                       '5
                       '#f
                       '#f))
                     (_%weak?150611%_ _%e150568150608%_))
                (_%K150563150585%_
                 _%weak?150611%_
                 _%name150606%_
                 _%phi150601%_
                 _%key150596%_
                 _%ctx150591%_))
              (_%E150562150573%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out150616%_)
        (let* ((_%rename150618%_ '#f) (_%dphi150620%_ '0))
          (gx#core-module-export->import__%
           _%out150616%_
           _%rename150618%_
           _%dphi150620%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out150622%_ _%rename150623%_)
        (let ((_%dphi150625%_ '0))
          (gx#core-module-export->import__%
           _%out150622%_
           _%rename150623%_
           _%dphi150625%_))))
    (define gx#core-module-export->import
      (lambda _g152701_
        (let ((_g152702_ (##length _g152701_)))
          (cond ((##fx= _g152702_ 1)
                 (apply gx#core-module-export->import__0 _g152701_))
                ((##fx= _g152702_ 2)
                 (apply gx#core-module-export->import__1 _g152701_))
                ((##fx= _g152702_ 3)
                 (apply gx#core-module-export->import__% _g152701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g152701_))))))
    (define gx#core-expand-module%
      (lambda (_%stx150456%_)
        (letrec ((_%make-context150458%_
                  (lambda (_%id150535%_)
                    (let* ((_%super150537%_ (gx#current-expander-context))
                           (_%bind-id150539%_ (gx#stx-e _%id150535%_))
                           (_%mod-id150541%_
                            (if (##structure-instance-of?
                                 _%super150537%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super150537%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id150539%_)
                                _%bind-id150539%_))
                           (_%ns150543%_ (symbol->string _%mod-id150541%_))
                           (_%path150553%_
                            (if (##structure-instance-of?
                                 _%super150537%_
                                 'gx#module-context::t)
                                (let ((_%path150545%_
                                       (##unchecked-structure-ref
                                        _%super150537%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path150545%_)
                                          (null? _%path150545%_))
                                      (cons _%bind-id150539%_ _%path150545%_)
                                      (if (not _%path150545%_)
                                          _%bind-id150539%_
                                          (cons _%bind-id150539%_
                                                (cons _%path150545%_ '())))))
                                _%bind-id150539%_))
                           (__obj152678
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
                       __obj152678
                       _%mod-id150541%_
                       _%super150537%_
                       _%ns150543%_
                       _%path150553%_)
                      __obj152678)))
                 (_%valid-module-id?150459%_
                  (lambda (_%id150510%_)
                    (let* ((_%str150512%_ (symbol->string _%id150510%_))
                           (_%len150514%_ (##string-length _%str150512%_)))
                      (if (##fx>= _%len150514%_ '1)
                          (let _%loop150517%_ ((_%index150519%_
                                                (##fx- (##string-length
                                                        _%str150512%_)
                                                       '1)))
                            (if (##fx>= _%index150519%_ '0)
                                (let ((_%c150521%_
                                       (string-ref
                                        _%str150512%_
                                        _%index150519%_)))
                                  (if (or (and (##char>=? _%c150521%_ '#\a)
                                               (##char<=? _%c150521%_ '#\z))
                                          (and (##char>=? _%c150521%_ '#\A)
                                               (##char<=? _%c150521%_ '#\Z))
                                          (and (##char>=? _%c150521%_ '#\0)
                                               (##char<=? _%c150521%_ '#\9))
                                          (##char=? _%c150521%_ '#\_)
                                          (##char=? _%c150521%_ '#\-))
                                      (_%loop150517%_
                                       (##fx- _%index150519%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e150460150470%_ _%stx150456%_)
                 (_%E150462150474%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150460150470%_)))
                 (_%E150461150506%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150460150470%_)
                        (let ((_%e150463150478%_
                               (gx#syntax-e _%e150460150470%_)))
                          (let ((_%hd150464150481%_ (##car _%e150463150478%_))
                                (_%tl150465150483%_ (##cdr _%e150463150478%_)))
                            (if (gx#stx-pair? _%tl150465150483%_)
                                (let ((_%e150466150486%_
                                       (gx#syntax-e _%tl150465150483%_)))
                                  (let ((_%hd150467150489%_
                                         (##car _%e150466150486%_))
                                        (_%tl150468150491%_
                                         (##cdr _%e150466150486%_)))
                                    (let* ((_%id150494%_ _%hd150467150489%_)
                                           (_%body150496%_ _%tl150468150491%_))
                                      (if (and (gx#identifier? _%id150494%_)
                                               (gx#stx-list? _%body150496%_))
                                          (if (_%valid-module-id?150459%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx150498%_
                                                      (_%make-context150458%_
                                                       _%id150494%_))
                                                     (_%body150500%_
                                                      (gx#core-expand-module-begin
                                                       _%body150496%_
                                                       _%ctx150498%_))
                                                     (_%body150502%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body150500%_)
                                                       (gx#stx-source
                                                        _%stx150456%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx150498%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body150502%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx150498%_
                                                 _%body150502%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id150494%_
                                                 _%ctx150498%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id150494%_)
                                                  _%body150502%_)
                                                 (gx#stx-source
                                                  _%stx150456%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx150456%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E150462150474%_)))))
                                (_%E150462150474%_))))
                        (_%E150462150474%_)))))
            (_%E150461150506%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body150421%_ _%ctx150422%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx150426%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body150421%_)))
                     (_%e150427150434%_ _%stx150426%_)
                     (_%E150429150438%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx150426%_)))
                     (_%E150428150452%_
                      (lambda ()
                        (if (gx#stx-pair? _%e150427150434%_)
                            (let ((_%e150430150442%_
                                   (gx#syntax-e _%e150427150434%_)))
                              (let ((_%hd150431150445%_
                                     (##car _%e150430150442%_))
                                    (_%tl150432150447%_
                                     (##cdr _%e150430150442%_)))
                                (if (and (gx#identifier? _%hd150431150445%_)
                                         (gx#core-identifier=?
                                          _%hd150431150445%_
                                          '%#begin-module))
                                    (let ((_%body150450%_ _%tl150432150447%_))
                                      (if (gx#sealed-syntax? _%stx150426%_)
                                          _%body150450%_
                                          (gx#core-expand-module-body
                                           _%body150450%_)))
                                    (_%E150429150438%_))))
                            (_%E150429150438%_)))))
                (_%E150428150452%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx150422%_)))
    (define gx#core-expand-module-body
      (lambda (_%body150217%_)
        (letrec ((_%expand-special150219%_
                  (lambda (_%hd150348%_ _%K150349%_ _%rest150350%_ _%r150351%_)
                    (let* ((_%e150352150369%_ _%hd150348%_)
                           (_%E150364150373%_
                            (lambda ()
                              (_%K150349%_
                               _%rest150350%_
                               (cons (gx#core-expand-top _%hd150348%_)
                                     _%r150351%_))))
                           (_%E150354150385%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150352150369%_)
                                  (let ((_%e150365150377%_
                                         (gx#syntax-e _%e150352150369%_)))
                                    (let ((_%hd150366150380%_
                                           (##car _%e150365150377%_))
                                          (_%tl150367150382%_
                                           (##cdr _%e150365150377%_)))
                                      (if (and (gx#identifier?
                                                _%hd150366150380%_)
                                               (gx#core-identifier=?
                                                _%hd150366150380%_
                                                '%#export))
                                          (_%K150349%_
                                           _%rest150350%_
                                           (cons _%hd150348%_ _%r150351%_))
                                          (_%E150364150373%_))))
                                  (_%E150364150373%_))))
                           (_%E150353150417%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150352150369%_)
                                  (let ((_%e150355150389%_
                                         (gx#syntax-e _%e150352150369%_)))
                                    (let ((_%hd150356150392%_
                                           (##car _%e150355150389%_))
                                          (_%tl150357150394%_
                                           (##cdr _%e150355150389%_)))
                                      (if (and (gx#identifier?
                                                _%hd150356150392%_)
                                               (gx#core-identifier=?
                                                _%hd150356150392%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl150357150394%_)
                                              (let ((_%e150358150397%_
                                                     (gx#syntax-e
                                                      _%tl150357150394%_)))
                                                (let ((_%hd150359150400%_
                                                       (##car _%e150358150397%_))
                                                      (_%tl150360150402%_
                                                       (##cdr _%e150358150397%_)))
                                                  (let ((_%hd-bind150405%_
                                                         _%hd150359150400%_))
                                                    (if (gx#stx-pair?
                                                         _%tl150360150402%_)
                                                        (let ((_%e150361150407%_
                                                               (gx#syntax-e
                                                                _%tl150360150402%_)))
                                                          (let ((_%hd150362150410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e150361150407%_))
                        (_%tl150363150412%_ (##cdr _%e150361150407%_)))
                    (let ((_%expr150415%_ _%hd150362150410%_))
                      (if (gx#stx-null? _%tl150363150412%_)
                          (if (gx#core-bind-values? _%hd-bind150405%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind150405%_)
                                (_%K150349%_
                                 _%rest150350%_
                                 (cons _%hd150348%_ _%r150351%_)))
                              (_%E150354150385%_))
                          (_%E150354150385%_)))))
                (_%E150354150385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150354150385%_))
                                          (_%E150354150385%_))))
                                  (_%E150354150385%_)))))
                      (_%E150353150417%_))))
                 (_%expand-body150220%_
                  (lambda (_%rbody150222%_)
                    (let _%lp150224%_ ((_%rest150226%_ _%rbody150222%_)
                                       (_%body150227%_ '()))
                      (let* ((_%rest150228150236%_ _%rest150226%_)
                             (_%else150230150244%_ (lambda () _%body150227%_))
                             (_%K150232150336%_
                              (lambda (_%rest150247%_ _%hd150248%_)
                                (let* ((_%e150249150270%_ _%hd150248%_)
                                       (_%E150265150274%_
                                        (lambda ()
                                          (_%lp150224%_
                                           _%rest150247%_
                                           (cons (gx#core-expand-expression
                                                  _%hd150248%_)
                                                 _%body150227%_))))
                                       (_%E150261150288%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150249150270%_)
                                              (let ((_%e150266150278%_
                                                     (gx#syntax-e
                                                      _%e150249150270%_)))
                                                (let ((_%hd150267150281%_
                                                       (##car _%e150266150278%_))
                                                      (_%tl150268150283%_
                                                       (##cdr _%e150266150278%_)))
                                                  (let ((_%form150286%_
                                                         _%hd150267150281%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form150286%_
                                                         gx#special-form-binding?)
                                                        (_%lp150224%_
                                                         _%rest150247%_
                                                         (cons _%hd150248%_
                                                               _%body150227%_))
                                                        (_%E150265150274%_)))))
                                              (_%E150265150274%_))))
                                       (_%E150251150300%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150249150270%_)
                                              (let ((_%e150262150292%_
                                                     (gx#syntax-e
                                                      _%e150249150270%_)))
                                                (let ((_%hd150263150295%_
                                                       (##car _%e150262150292%_))
                                                      (_%tl150264150297%_
                                                       (##cdr _%e150262150292%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150263150295%_)
                                                           (gx#core-identifier=?
                                                            _%hd150263150295%_
                                                            '%#export))
                                                      (_%lp150224%_
                                                       _%rest150247%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd150248%_)
                                                             _%body150227%_))
                                                      (_%E150261150288%_))))
                                              (_%E150261150288%_))))
                                       (_%E150250150332%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150249150270%_)
                                              (let ((_%e150252150304%_
                                                     (gx#syntax-e
                                                      _%e150249150270%_)))
                                                (let ((_%hd150253150307%_
                                                       (##car _%e150252150304%_))
                                                      (_%tl150254150309%_
                                                       (##cdr _%e150252150304%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150253150307%_)
                                                           (gx#core-identifier=?
                                                            _%hd150253150307%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl150254150309%_)
                                                          (let ((_%e150255150312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl150254150309%_)))
                    (let ((_%hd150256150315%_ (##car _%e150255150312%_))
                          (_%tl150257150317%_ (##cdr _%e150255150312%_)))
                      (let ((_%hd-bind150320%_ _%hd150256150315%_))
                        (if (gx#stx-pair? _%tl150257150317%_)
                            (let ((_%e150258150322%_
                                   (gx#syntax-e _%tl150257150317%_)))
                              (let ((_%hd150259150325%_
                                     (##car _%e150258150322%_))
                                    (_%tl150260150327%_
                                     (##cdr _%e150258150322%_)))
                                (let ((_%expr150330%_ _%hd150259150325%_))
                                  (if (gx#stx-null? _%tl150260150327%_)
                                      (_%lp150224%_
                                       _%rest150247%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind150320%_)
                                               (gx#core-expand-expression
                                                _%expr150330%_))
                                              (gx#stx-source _%hd150248%_))
                                             _%body150227%_))
                                      (_%E150251150300%_)))))
                            (_%E150251150300%_)))))
                  (_%E150251150300%_))
              (_%E150251150300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150251150300%_)))))
                                  (_%E150250150332%_)))))
                        (if (pair? _%rest150228150236%_)
                            (let ((_%hd150233150339%_
                                   (##car _%rest150228150236%_))
                                  (_%tl150234150341%_
                                   (##cdr _%rest150228150236%_)))
                              (let* ((_%hd150344%_ _%hd150233150339%_)
                                     (_%rest150346%_ _%tl150234150341%_))
                                (_%K150232150336%_
                                 _%rest150346%_
                                 _%hd150344%_)))
                            (_%else150230150244%_)))))))
          (_%expand-body150220%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body150217%_)
            _%expand-special150219%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx150058%_
               _%expanded?150059%_
               _%method150060%_
               _%current-phi150061%_
               _%expand1150062%_)
        (letrec ((_%K150064%_
                  (lambda (_%rest150184%_ _%r150185%_)
                    (let* ((_%e150186150193%_ _%rest150184%_)
                           (_%E150188150197%_ (lambda () _%r150185%_))
                           (_%E150187150213%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150186150193%_)
                                  (let ((_%e150189150201%_
                                         (gx#syntax-e _%e150186150193%_)))
                                    (let ((_%hd150190150204%_
                                           (##car _%e150189150201%_))
                                          (_%tl150191150206%_
                                           (##cdr _%e150189150201%_)))
                                      (let* ((_%hd150209%_ _%hd150190150204%_)
                                             (_%rest150211%_
                                              _%tl150191150206%_))
                                        (_%step150065%_
                                         _%hd150209%_
                                         _%rest150211%_
                                         _%r150185%_))))
                                  (_%E150188150197%_)))))
                      (_%E150187150213%_))))
                 (_%step150065%_
                  (lambda (_%hd150098%_ _%rest150099%_ _%r150100%_)
                    (let* ((_%e150101150119%_ _%hd150098%_)
                           (_%E150114150123%_
                            (lambda ()
                              (if (_%expanded?150059%_ (gx#stx-e _%hd150098%_))
                                  (_%K150064%_
                                   _%rest150099%_
                                   (cons (gx#stx-e _%hd150098%_) _%r150100%_))
                                  (_%expand1150062%_
                                   _%hd150098%_
                                   _%K150064%_
                                   _%rest150099%_
                                   _%r150100%_))))
                           (_%E150110150139%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150101150119%_)
                                  (let ((_%e150115150127%_
                                         (gx#syntax-e _%e150101150119%_)))
                                    (let ((_%hd150116150130%_
                                           (##car _%e150115150127%_))
                                          (_%tl150117150132%_
                                           (##cdr _%e150115150127%_)))
                                      (let* ((_%macro150135%_
                                              _%hd150116150130%_)
                                             (_%body150137%_
                                              _%tl150117150132%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro150135%_
                                             gx#syntax-binding?)
                                            (_%K150064%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro150135%_)
                                                    _%hd150098%_
                                                    _%method150060%_)
                                                   _%rest150099%_)
                                             _%r150100%_)
                                            (_%E150114150123%_)))))
                                  (_%E150114150123%_))))
                           (_%E150103150153%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150101150119%_)
                                  (let ((_%e150111150143%_
                                         (gx#syntax-e _%e150101150119%_)))
                                    (let ((_%hd150112150146%_
                                           (##car _%e150111150143%_))
                                          (_%tl150113150148%_
                                           (##cdr _%e150111150143%_)))
                                      (if (eq? (gx#stx-e _%hd150112150146%_)
                                               'begin:)
                                          (let ((_%body150151%_
                                                 _%tl150113150148%_))
                                            (_%K150064%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest150099%_
                                              _%body150151%_)
                                             _%r150100%_))
                                          (_%E150110150139%_))))
                                  (_%E150110150139%_))))
                           (_%E150102150180%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150101150119%_)
                                  (let ((_%e150104150157%_
                                         (gx#syntax-e _%e150101150119%_)))
                                    (let ((_%hd150105150160%_
                                           (##car _%e150104150157%_))
                                          (_%tl150106150162%_
                                           (##cdr _%e150104150157%_)))
                                      (if (eq? (gx#stx-e _%hd150105150160%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl150106150162%_)
                                              (let ((_%e150107150165%_
                                                     (gx#syntax-e
                                                      _%tl150106150162%_)))
                                                (let ((_%hd150108150168%_
                                                       (##car _%e150107150165%_))
                                                      (_%tl150109150170%_
                                                       (##cdr _%e150107150165%_)))
                                                  (let* ((_%dphi150173%_
                                                          _%hd150108150168%_)
                                                         (_%body150175%_
                                                          _%tl150109150170%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi150173%_)
                                                        (let ((_%rbody150178%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K150064%_ _%body150175%_ '()))
                        _%current-phi150061%_
                        (fx+ (gx#stx-e _%dphi150173%_)
                             (_%current-phi150061%_)))))
                  (_%K150064%_
                   _%rest150099%_
                   (__foldr1 cons _%r150100%_ _%rbody150178%_)))
                (_%E150103150153%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150103150153%_))
                                          (_%E150103150153%_))))
                                  (_%E150103150153%_)))))
                      (_%E150102150180%_)))))
          (let* ((_%e150066150073%_ _%stx150058%_)
                 (_%E150068150077%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150066150073%_)))
                 (_%E150067150094%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150066150073%_)
                        (let ((_%e150069150081%_
                               (gx#syntax-e _%e150066150073%_)))
                          (let ((_%hd150070150084%_ (##car _%e150069150081%_))
                                (_%tl150071150086%_ (##cdr _%e150069150081%_)))
                            (let ((_%body150089%_ _%tl150071150086%_))
                              (if (_%current-phi150061%_)
                                  (_%K150064%_ _%body150089%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K150064%_ _%body150089%_ '()))
                                   _%current-phi150061%_
                                   (gx#current-expander-phi))))))
                        (_%E150068150077%_)))))
            (_%E150067150094%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx149712%_ _%internal-expand?149713%_)
        (letrec ((_%expand1149715%_
                  (lambda (_%hd150030%_ _%K150031%_ _%rest150032%_ _%r150033%_)
                    (if (gx#core-bound-module? _%hd150030%_)
                        (_%import1149716%_
                         (gx#syntax-local-e__0 _%hd150030%_)
                         _%K150031%_
                         _%rest150032%_
                         _%r150033%_)
                        (if (gx#core-library-module-path? _%hd150030%_)
                            (_%import1149716%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd150030%_))
                             _%K150031%_
                             _%rest150032%_
                             _%r150033%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd150030%_)
                                (_%import1149716%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd150030%_))
                                 _%K150031%_
                                 _%rest150032%_
                                 _%r150033%_)
                                (let ((_%e150039%_ (gx#stx-e _%hd150030%_)))
                                  (if (pair? _%e150039%_)
                                      (let ((_%$e150042%_
                                             (gx#stx-e (##car _%e150039%_))))
                                        (if (eq? 'spec: _%$e150042%_)
                                            (_%import-spec149719%_
                                             _%hd150030%_
                                             _%K150031%_
                                             _%rest150032%_
                                             _%r150033%_)
                                            (if (eq? 'in: _%$e150042%_)
                                                (_%import-submodule149717%_
                                                 _%hd150030%_
                                                 _%K150031%_
                                                 _%rest150032%_
                                                 _%r150033%_)
                                                (if (eq? 'runtime:
                                                         _%$e150042%_)
                                                    (_%import-runtime149718%_
                                                     _%hd150030%_
                                                     _%K150031%_
                                                     _%rest150032%_
                                                     _%r150033%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx149712%_
                                                     _%hd150030%_)))))
                                      (if (string? _%e150039%_)
                                          (_%import1149716%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd150030%_
                                             (gx#stx-source _%stx149712%_)))
                                           _%K150031%_
                                           _%rest150032%_
                                           _%r150033%_)
                                          (if (##structure-instance-of?
                                               _%e150039%_
                                               'gx#module-context::t)
                                              (_%K150031%_
                                               _%rest150032%_
                                               (cons _%e150039%_ _%r150033%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx149712%_
                                               _%hd150030%_))))))))))
                 (_%import1149716%_
                  (lambda (_%ctx150019%_
                           _%K150020%_
                           _%rest150021%_
                           _%r150022%_)
                    (let ((_%dphi150024%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K150020%_
                       _%rest150021%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx150019%_
                              _%dphi150024%_
                              (map (lambda (_%g150025150027%_)
                                     (gx#core-module-export->import__%
                                      _%g150025150027%_
                                      '#f
                                      _%dphi150024%_))
                                   (##unchecked-structure-ref
                                    _%ctx150019%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r150022%_)))))
                 (_%import-submodule149717%_
                  (lambda (_%hd149986%_ _%K149987%_ _%rest149988%_ _%r149989%_)
                    (let* ((_%e149990149997%_ _%hd149986%_)
                           (_%E149992150001%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149990149997%_)))
                           (_%E149991150015%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149990149997%_)
                                  (let ((_%e149993150005%_
                                         (gx#syntax-e _%e149990149997%_)))
                                    (let ((_%hd149994150008%_
                                           (##car _%e149993150005%_))
                                          (_%tl149995150010%_
                                           (##cdr _%e149993150005%_)))
                                      (let ((_%spath150013%_
                                             _%tl149995150010%_))
                                        (_%import1149716%_
                                         (_%import-spec-source149720%_
                                          _%spath150013%_)
                                         _%K149987%_
                                         _%rest149988%_
                                         _%r149989%_))))
                                  (_%E149992150001%_)))))
                      (_%E149991150015%_))))
                 (_%import-runtime149718%_
                  (lambda (_%hd149953%_ _%K149954%_ _%rest149955%_ _%r149956%_)
                    (let* ((_%e149957149964%_ _%hd149953%_)
                           (_%E149959149968%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149957149964%_)))
                           (_%E149958149982%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149957149964%_)
                                  (let ((_%e149960149972%_
                                         (gx#syntax-e _%e149957149964%_)))
                                    (let ((_%hd149961149975%_
                                           (##car _%e149960149972%_))
                                          (_%tl149962149977%_
                                           (##cdr _%e149960149972%_)))
                                      (let ((_%spath149980%_
                                             _%tl149962149977%_))
                                        (_%K149954%_
                                         _%rest149955%_
                                         (cons (_%import-spec-source149720%_
                                                _%spath149980%_)
                                               _%r149956%_)))))
                                  (_%E149959149968%_)))))
                      (_%E149958149982%_))))
                 (_%import-spec149719%_
                  (lambda (_%hd149791%_ _%K149792%_ _%rest149793%_ _%r149794%_)
                    (let* ((_%e149795149812%_ _%hd149791%_)
                           (_%E149804149816%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149795149812%_)))
                           (_%E149797149927%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149795149812%_)
                                  (let ((_%e149805149820%_
                                         (gx#syntax-e _%e149795149812%_)))
                                    (let ((_%hd149806149823%_
                                           (##car _%e149805149820%_))
                                          (_%tl149807149825%_
                                           (##cdr _%e149805149820%_)))
                                      (if (gx#stx-pair? _%tl149807149825%_)
                                          (let ((_%e149808149828%_
                                                 (gx#syntax-e
                                                  _%tl149807149825%_)))
                                            (let ((_%hd149809149831%_
                                                   (##car _%e149808149828%_))
                                                  (_%tl149810149833%_
                                                   (##cdr _%e149808149828%_)))
                                              (let* ((_%path149836%_
                                                      _%hd149809149831%_)
                                                     (_%specs149838%_
                                                      _%tl149810149833%_))
                                                (let ((_%src-ctx149840%_
                                                       (_%import-spec-source149720%_
                                                        _%path149836%_))
                                                      (_%exports149841%_
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
                                                      (_%specs149842%_
                                                       (gx#syntax->list
                                                        _%specs149838%_)))
                                                  (for-each
                                                   (lambda (_%out149844%_)
                                                     (__hash-put!
                                                      _%exports149841%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out149844%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out149844%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out149844%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx149840%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K149792%_
                                                   _%rest149793%_
                                                   (__foldl1
                                                    (lambda (_%spec149846%_
                                                             _%r149847%_)
                                                      (let* ((_%e149848149864%_
                                                              _%spec149846%_)
                                                             (_%E149850149868%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e149848149864%_)))
                     (_%E149849149923%_
                      (lambda ()
                        (if (gx#stx-pair? _%e149848149864%_)
                            (let ((_%e149851149872%_
                                   (gx#syntax-e _%e149848149864%_)))
                              (let ((_%hd149852149875%_
                                     (##car _%e149851149872%_))
                                    (_%tl149853149877%_
                                     (##cdr _%e149851149872%_)))
                                (let ((_%phi149880%_ _%hd149852149875%_))
                                  (if (gx#stx-pair? _%tl149853149877%_)
                                      (let ((_%e149854149882%_
                                             (gx#syntax-e _%tl149853149877%_)))
                                        (let ((_%hd149855149885%_
                                               (##car _%e149854149882%_))
                                              (_%tl149856149887%_
                                               (##cdr _%e149854149882%_)))
                                          (let ((_%name149890%_
                                                 _%hd149855149885%_))
                                            (if (gx#stx-pair?
                                                 _%tl149856149887%_)
                                                (let ((_%e149857149892%_
                                                       (gx#syntax-e
                                                        _%tl149856149887%_)))
                                                  (let ((_%hd149858149895%_
                                                         (##car _%e149857149892%_))
                                                        (_%tl149859149897%_
                                                         (##cdr _%e149857149892%_)))
                                                    (let ((_%src-phi149900%_
                                                           _%hd149858149895%_))
                                                      (if (gx#stx-pair?
                                                           _%tl149859149897%_)
                                                          (let ((_%e149860149902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl149859149897%_)))
                    (let ((_%hd149861149905%_ (##car _%e149860149902%_))
                          (_%tl149862149907%_ (##cdr _%e149860149902%_)))
                      (let ((_%src-name149910%_ _%hd149861149905%_))
                        (if (gx#stx-null? _%tl149862149907%_)
                            (if (and (gx#stx-fixnum? _%src-phi149900%_)
                                     (gx#identifier? _%src-name149910%_)
                                     (gx#stx-fixnum? _%phi149880%_)
                                     (gx#identifier? _%name149890%_))
                                (let ((_%src-phi149912%_
                                       (gx#stx-e _%src-phi149900%_))
                                      (_%src-name149913%_
                                       (gx#core-identifier-key
                                        _%src-name149910%_))
                                      (_%phi149914%_ (gx#stx-e _%phi149880%_))
                                      (_%name149915%_
                                       (gx#core-identifier-key
                                        _%name149890%_)))
                                  (let ((_%$e149917%_
                                         (__hash-get
                                          _%exports149841%_
                                          (cons _%src-phi149912%_
                                                _%src-name149913%_))))
                                    (if _%$e149917%_
                                        ((lambda (_%out149920%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out149920%_
                                                  _%name149915%_
                                                  (fx- _%phi149914%_
                                                       _%src-phi149912%_))
                                                 _%r149847%_))
                                         _%$e149917%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx149712%_
                                         _%hd149791%_))))
                                (_%E149850149868%_))
                            (_%E149850149868%_)))))
                  (_%E149850149868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E149850149868%_)))))
                                      (_%E149850149868%_)))))
                            (_%E149850149868%_)))))
                (_%E149849149923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r149794%_
                                                    _%specs149842%_))))))
                                          (_%E149804149816%_))))
                                  (_%E149804149816%_))))
                           (_%E149796149949%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149795149812%_)
                                  (let ((_%e149798149931%_
                                         (gx#syntax-e _%e149795149812%_)))
                                    (let ((_%hd149799149934%_
                                           (##car _%e149798149931%_))
                                          (_%tl149800149936%_
                                           (##cdr _%e149798149931%_)))
                                      (if (gx#stx-pair? _%tl149800149936%_)
                                          (let ((_%e149801149939%_
                                                 (gx#syntax-e
                                                  _%tl149800149936%_)))
                                            (let ((_%hd149802149942%_
                                                   (##car _%e149801149939%_))
                                                  (_%tl149803149944%_
                                                   (##cdr _%e149801149939%_)))
                                              (let ((_%path149947%_
                                                     _%hd149802149942%_))
                                                (if (gx#stx-null?
                                                     _%tl149803149944%_)
                                                    (_%K149792%_
                                                     _%rest149793%_
                                                     (cons (_%import-spec-source149720%_
                                                            _%path149947%_)
                                                           _%r149794%_))
                                                    (_%E149797149927%_)))))
                                          (_%E149797149927%_))))
                                  (_%E149797149927%_)))))
                      (_%E149796149949%_))))
                 (_%import-spec-source149720%_
                  (lambda (_%spath149789%_)
                    (gx#core-import-nested-module
                     _%spath149789%_
                     _%stx149712%_)))
                 (_%import!149721%_
                  (lambda (_%rbody149734%_)
                    (letrec* ((_%current-ctx149736%_
                               (gx#current-expander-context))
                              (_%deps149737%_ (make-hash-table-eq))
                              (_%bind!149738%_
                               (lambda (_%hd149787%_)
                                 (gx#core-bind-import!__1
                                  _%hd149787%_
                                  _%current-ctx149736%_))))
                      (let _%lp149740%_ ((_%rest149742%_ _%rbody149734%_)
                                         (_%body149743%_ '()))
                        (let* ((_%rest149744149752%_ _%rest149742%_)
                               (_%else149746149763%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx149736%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx149736%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx149736%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body149743%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx149760%_ _%_149761%_)
                                     (gx#eval-module _%ctx149760%_))
                                   _%deps149737%_)
                                  _%body149743%_))
                               (_%K149748149775%_
                                (lambda (_%rest149766%_ _%hd149767%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd149767%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!149738%_ _%hd149767%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd149767%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd149767%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps149737%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd149767%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd149767%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!149738%_
                                             (##unchecked-structure-ref
                                              _%hd149767%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd149767%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps149737%_
                                                 (##unchecked-structure-ref
                                                  _%hd149767%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e149771%_
                                                 (##structure-instance-of?
                                                  _%hd149767%_
                                                  'gx#module-context::t)))
                                            (if _%$e149771%_
                                                _%$e149771%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx149712%_
                                                 _%hd149767%_)))))
                                  (_%lp149740%_
                                   _%rest149766%_
                                   (cons _%hd149767%_ _%body149743%_)))))
                          (if (pair? _%rest149744149752%_)
                              (let ((_%hd149749149778%_
                                     (##car _%rest149744149752%_))
                                    (_%tl149750149780%_
                                     (##cdr _%rest149744149752%_)))
                                (let* ((_%hd149783%_ _%hd149749149778%_)
                                       (_%rest149785%_ _%tl149750149780%_))
                                  (_%K149748149775%_
                                   _%rest149785%_
                                   _%hd149783%_)))
                              (_%else149746149763%_)))))))
                 (_%expanded-import?149722%_
                  (lambda (_%e149726%_)
                    (let ((_%$e149728%_
                           (##structure-direct-instance-of?
                            _%e149726%_
                            'gx#import-set::t)))
                      (if _%$e149728%_
                          _%$e149728%_
                          (let ((_%$e149731%_
                                 (##structure-direct-instance-of?
                                  _%e149726%_
                                  'gx#module-import::t)))
                            (if _%$e149731%_
                                _%$e149731%_
                                (##structure-instance-of?
                                 _%e149726%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody149724%_
                 (gx#core-expand-import/export
                  _%stx149712%_
                  _%expanded-import?149722%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1149715%_)))
            (if _%internal-expand?149713%_
                (reverse _%rbody149724%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!149721%_ _%rbody149724%_))
                 (gx#stx-source _%stx149712%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx150051%_)
        (let ((_%internal-expand?150053%_ '#f))
          (gx#core-expand-import%__%
           _%stx150051%_
           _%internal-expand?150053%_))))
    (define gx#core-expand-import%
      (lambda _g152703_
        (let ((_g152704_ (##length _g152703_)))
          (cond ((##fx= _g152704_ 1)
                 (apply gx#core-expand-import%__0 _g152703_))
                ((##fx= _g152704_ 2)
                 (apply gx#core-expand-import%__% _g152703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g152703_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath149639%_ _%where149640%_)
        (let* ((_%e149641149648%_ _%spath149639%_)
               (_%E149643149652%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149641149648%_)))
               (_%E149642149707%_
                (lambda ()
                  (if (gx#stx-pair? _%e149641149648%_)
                      (let ((_%e149644149656%_
                             (gx#syntax-e _%e149641149648%_)))
                        (let ((_%hd149645149659%_ (##car _%e149644149656%_))
                              (_%tl149646149661%_ (##cdr _%e149644149656%_)))
                          (let* ((_%origin149664%_ _%hd149645149659%_)
                                 (_%sub149666%_ _%tl149646149661%_)
                                 (_%origin-ctx149668%_
                                  (if (gx#stx-false? _%origin149664%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin149664%_))))
                            (let _%lp149670%_ ((_%rest149672%_ _%sub149666%_)
                                               (_%ctx149673%_
                                                _%origin-ctx149668%_))
                              (let* ((_%e149674149681%_ _%rest149672%_)
                                     (_%E149676149685%_
                                      (lambda () _%ctx149673%_))
                                     (_%E149675149703%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e149674149681%_)
                                            (let ((_%e149677149689%_
                                                   (gx#syntax-e
                                                    _%e149674149681%_)))
                                              (let ((_%hd149678149692%_
                                                     (##car _%e149677149689%_))
                                                    (_%tl149679149694%_
                                                     (##cdr _%e149677149689%_)))
                                                (let* ((_%id149697%_
                                                        _%hd149678149692%_)
                                                       (_%rest149699%_
                                                        _%tl149679149694%_)
                                                       (_%bind149701%_
                                                        (gx#resolve-identifier__%
                                                         _%id149697%_
                                                         '0
                                                         _%ctx149673%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind149701%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind149701%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where149640%_
                                                       _%spath149639%_
                                                       _%id149697%_))
                                                  (_%lp149670%_
                                                   _%rest149699%_
                                                   (##unchecked-structure-ref
                                                    _%bind149701%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E149676149685%_)))))
                                (_%E149675149703%_))))))
                      (_%E149643149652%_)))))
          (_%E149642149707%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd149637%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd149637%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx149132%_ _%internal-expand?149133%_)
        (letrec* ((_%make-export__152631152632%_
                   (lambda (_%bind149585%_
                            _%phi149586%_
                            _%ctx149587%_
                            _%name149588%_)
                     (let* ((_%key149590%_
                             (##unchecked-structure-ref
                              _%bind149585%_
                              '2
                              '#f
                              '#f))
                            (_%export-key149592%_
                             (if _%name149588%_
                                 (gx#core-identifier-key _%name149588%_)
                                 _%key149590%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx149587%_
                        _%key149590%_
                        _%phi149586%_
                        _%export-key149592%_
                        (let ((_%$e149595%_
                               (##structure-instance-of?
                                _%bind149585%_
                                'gx#extern-binding::t)))
                          (if _%$e149595%_
                              _%$e149595%_
                              (##structure-direct-instance-of?
                               _%bind149585%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__152633152636%_
                   (lambda (_%bind149601%_)
                     (let* ((_%phi149603%_ (gx#current-export-expander-phi))
                            (_%ctx149605%_ (gx#current-expander-context))
                            (_%name149607%_ '#f))
                       (_%make-export__152631152632%_
                        _%bind149601%_
                        _%phi149603%_
                        _%ctx149605%_
                        _%name149607%_))))
                  (_%make-export__1__152634152637%_
                   (lambda (_%bind149609%_ _%phi149610%_)
                     (let* ((_%ctx149612%_ (gx#current-expander-context))
                            (_%name149614%_ '#f))
                       (_%make-export__152631152632%_
                        _%bind149609%_
                        _%phi149610%_
                        _%ctx149612%_
                        _%name149614%_))))
                  (_%make-export__2__152635152638%_
                   (lambda (_%bind149616%_ _%phi149617%_ _%ctx149618%_)
                     (let ((_%name149620%_ '#f))
                       (_%make-export__152631152632%_
                        _%bind149616%_
                        _%phi149617%_
                        _%ctx149618%_
                        _%name149620%_))))
                  (_%make-export149135%_
                   (lambda _g152705_
                     (let ((_g152706_ (##length _g152705_)))
                       (cond ((##fx= _g152706_ 1)
                              (apply _%make-export__0__152633152636%_
                                     _g152705_))
                             ((##fx= _g152706_ 2)
                              (apply _%make-export__1__152634152637%_
                                     _g152705_))
                             ((##fx= _g152706_ 3)
                              (apply _%make-export__2__152635152638%_
                                     _g152705_))
                             ((##fx= _g152706_ 4)
                              (apply _%make-export__152631152632%_ _g152705_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g152705_))))))
                  (_%expand1149136%_
                   (lambda (_%hd149290%_
                            _%K149291%_
                            _%rest149292%_
                            _%r149293%_)
                     (let* ((_%e149294149326%_ _%hd149290%_)
                            (_%E149321149330%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx149132%_
                                _%hd149290%_)))
                            (_%E149311149414%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149294149326%_)
                                   (let ((_%e149322149334%_
                                          (gx#syntax-e _%e149294149326%_)))
                                     (let ((_%hd149323149337%_
                                            (##car _%e149322149334%_))
                                           (_%tl149324149339%_
                                            (##cdr _%e149322149334%_)))
                                       (if (eq? (gx#stx-e _%hd149323149337%_)
                                                'import:)
                                           (let ((_%in149342%_
                                                  _%tl149324149339%_))
                                             (if (gx#stx-list? _%in149342%_)
                                                 (let _%lp149344%_ ((_%in-rest149346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in149342%_)
                            (_%r149347%_ _%r149293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e149348149355%_
                                                           _%in-rest149346%_)
                                                          (_%E149350149359%_
                                                           (lambda ()
                                                             (_%K149291%_
                                                              _%rest149292%_
                                                              _%r149347%_)))
                                                          (_%E149349149410%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e149348149355%_)
                         (let ((_%e149351149363%_
                                (gx#syntax-e _%e149348149355%_)))
                           (let ((_%hd149352149366%_ (##car _%e149351149363%_))
                                 (_%tl149353149368%_
                                  (##cdr _%e149351149363%_)))
                             (let* ((_%hd149371%_ _%hd149352149366%_)
                                    (_%in-rest149373%_ _%tl149353149368%_)
                                    (_%src149408%_
                                     (if (gx#core-bound-module? _%hd149371%_)
                                         (gx#syntax-local-e__0 _%hd149371%_)
                                         (if (gx#core-library-module-path?
                                              _%hd149371%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd149371%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd149371%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd149371%_))
                                                 (if (gx#stx-string?
                                                      _%hd149371%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd149371%_
                                                       (gx#stx-source
                                                        _%stx149132%_)))
                                                     (let* ((_%e149379149386%_
                                                             _%hd149371%_)
                                                            (_%E149381149390%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx149132%_
                                                                _%hd149371%_)))
                                                            (_%E149380149404%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e149379149386%_)
                           (let ((_%e149382149394%_
                                  (gx#syntax-e _%e149379149386%_)))
                             (let ((_%hd149383149397%_
                                    (##car _%e149382149394%_))
                                   (_%tl149384149399%_
                                    (##cdr _%e149382149394%_)))
                               (if (eq? (gx#stx-e _%hd149383149397%_) 'in:)
                                   (let ((_%spath149402%_ _%tl149384149399%_))
                                     (gx#core-import-nested-module
                                      _%spath149402%_
                                      _%stx149132%_))
                                   (_%E149381149390%_))))
                           (_%E149381149390%_)))))
               (_%E149380149404%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp149344%_
                                _%in-rest149373%_
                                (_%export-imports149137%_
                                 _%src149408%_
                                 _%r149347%_)))))
                         (_%E149350149359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E149349149410%_)))
                                                 (_%E149321149330%_)))
                                           (_%E149321149330%_))))
                                   (_%E149321149330%_))))
                            (_%E149298149454%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149294149326%_)
                                   (let ((_%e149312149418%_
                                          (gx#syntax-e _%e149294149326%_)))
                                     (let ((_%hd149313149421%_
                                            (##car _%e149312149418%_))
                                           (_%tl149314149423%_
                                            (##cdr _%e149312149418%_)))
                                       (if (eq? (gx#stx-e _%hd149313149421%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl149314149423%_)
                                               (let ((_%e149315149426%_
                                                      (gx#syntax-e
                                                       _%tl149314149423%_)))
                                                 (let ((_%hd149316149429%_
                                                        (##car _%e149315149426%_))
                                                       (_%tl149317149431%_
                                                        (##cdr _%e149315149426%_)))
                                                   (let ((_%id149434%_
                                                          _%hd149316149429%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149317149431%_)
                                                         (let ((_%e149318149436%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149317149431%_)))
                   (let ((_%hd149319149439%_ (##car _%e149318149436%_))
                         (_%tl149320149441%_ (##cdr _%e149318149436%_)))
                     (let ((_%name149444%_ _%hd149319149439%_))
                       (if (gx#stx-null? _%tl149320149441%_)
                           (let* ((_%phi149446%_
                                   (gx#current-export-expander-phi))
                                  (_%$e149448%_
                                   (gx#core-resolve-identifier__1
                                    _%id149434%_
                                    _%phi149446%_)))
                             (if _%$e149448%_
                                 ((lambda (_%bind149451%_)
                                    (_%K149291%_
                                     _%rest149292%_
                                     (cons (_%make-export__152631152632%_
                                            _%bind149451%_
                                            _%phi149446%_
                                            (gx#current-expander-context)
                                            _%name149444%_)
                                           _%r149293%_)))
                                  _%$e149448%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx149132%_
                                  _%hd149290%_
                                  _%id149434%_)))
                           (_%E149311149414%_)))))
                 (_%E149311149414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149311149414%_))
                                           (_%E149311149414%_))))
                                   (_%E149311149414%_))))
                            (_%E149297149504%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149294149326%_)
                                   (let ((_%e149299149458%_
                                          (gx#syntax-e _%e149294149326%_)))
                                     (let ((_%hd149300149461%_
                                            (##car _%e149299149458%_))
                                           (_%tl149301149463%_
                                            (##cdr _%e149299149458%_)))
                                       (if (eq? (gx#stx-e _%hd149300149461%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl149301149463%_)
                                               (let ((_%e149302149466%_
                                                      (gx#syntax-e
                                                       _%tl149301149463%_)))
                                                 (let ((_%hd149303149469%_
                                                        (##car _%e149302149466%_))
                                                       (_%tl149304149471%_
                                                        (##cdr _%e149302149466%_)))
                                                   (let ((_%phi149474%_
                                                          _%hd149303149469%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149304149471%_)
                                                         (let ((_%e149305149476%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149304149471%_)))
                   (let ((_%hd149306149479%_ (##car _%e149305149476%_))
                         (_%tl149307149481%_ (##cdr _%e149305149476%_)))
                     (let ((_%id149484%_ _%hd149306149479%_))
                       (if (gx#stx-pair? _%tl149307149481%_)
                           (let ((_%e149308149486%_
                                  (gx#syntax-e _%tl149307149481%_)))
                             (let ((_%hd149309149489%_
                                    (##car _%e149308149486%_))
                                   (_%tl149310149491%_
                                    (##cdr _%e149308149486%_)))
                               (let ((_%name149494%_ _%hd149309149489%_))
                                 (if (gx#stx-null? _%tl149310149491%_)
                                     (if (and (gx#stx-fixnum? _%phi149474%_)
                                              (gx#identifier? _%id149484%_)
                                              (gx#identifier? _%name149494%_))
                                         (let* ((_%phi149496%_
                                                 (gx#stx-e _%phi149474%_))
                                                (_%$e149498%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id149484%_
                                                  _%phi149496%_)))
                                           (if _%$e149498%_
                                               ((lambda (_%bind149501%_)
                                                  (_%K149291%_
                                                   _%rest149292%_
                                                   (cons (_%make-export__152631152632%_
                                                          _%bind149501%_
                                                          _%phi149496%_
                                                          (gx#current-expander-context)
                                                          _%name149494%_)
                                                         _%r149293%_)))
                                                _%$e149498%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx149132%_
                                                _%hd149290%_
                                                _%id149484%_)))
                                         (_%E149298149454%_))
                                     (_%E149298149454%_)))))
                           (_%E149298149454%_)))))
                 (_%E149298149454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149298149454%_))
                                           (_%E149298149454%_))))
                                   (_%E149298149454%_))))
                            (_%E149296149516%_
                             (lambda ()
                               (let ((_%id149508%_ _%e149294149326%_))
                                 (if (gx#identifier? _%id149508%_)
                                     (let ((_%$e149510%_
                                            (gx#core-resolve-identifier__1
                                             _%id149508%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e149510%_
                                           ((lambda (_%bind149513%_)
                                              (_%K149291%_
                                               _%rest149292%_
                                               (cons (_%make-export__0__152633152636%_
                                                      _%bind149513%_)
                                                     _%r149293%_)))
                                            _%$e149510%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx149132%_
                                            _%hd149290%_)))
                                     (_%E149297149504%_)))))
                            (_%E149295149580%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e149294149326%_) '#t)
                                   (let* ((_%current-ctx149520%_
                                           (gx#current-expander-context))
                                          (_%current-phi149522%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx149524%_
                                           (gx#core-context-shift
                                            _%current-ctx149520%_
                                            _%current-phi149522%_))
                                          (_%phi-bind149526%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx149524%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp149529%_ ((_%bind-rest149531%_
                                                         _%phi-bind149526%_)
                                                        (_%set149532%_ '()))
                                       (let* ((_%bind-rest149533149543%_
                                               _%bind-rest149531%_)
                                              (_%else149535149551%_
                                               (lambda ()
                                                 (_%K149291%_
                                                  _%rest149292%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi149522%_
                                                         _%set149532%_)
                                                        _%r149293%_))))
                                              (_%K149537149561%_
                                               (lambda (_%bind-rest149554%_
                                                        _%bind149555%_
                                                        _%key149556%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind149555%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind149555%_))
                                                     (_%lp149529%_
                                                      _%bind-rest149554%_
                                                      _%set149532%_)
                                                     (_%lp149529%_
                                                      _%bind-rest149554%_
                                                      (cons (_%make-export__2__152635152638%_
                                                             _%bind149555%_
                                                             _%current-phi149522%_
                                                             _%current-ctx149520%_)
                                                            _%set149532%_))))))
                                         (if (pair? _%bind-rest149533149543%_)
                                             (let ((_%hd149538149564%_
                                                    (##car _%bind-rest149533149543%_))
                                                   (_%tl149539149566%_
                                                    (##cdr _%bind-rest149533149543%_)))
                                               (if (pair? _%hd149538149564%_)
                                                   (let ((_%hd149540149569%_
                                                          (##car _%hd149538149564%_))
                                                         (_%tl149541149571%_
                                                          (##cdr _%hd149538149564%_)))
                                                     (let* ((_%key149574%_
                                                             _%hd149540149569%_)
                                                            (_%bind149576%_
                                                             _%tl149541149571%_)
                                                            (_%bind-rest149578%_
                                                             _%tl149539149566%_))
                                                       (_%K149537149561%_
                                                        _%bind-rest149578%_
                                                        _%bind149576%_
                                                        _%key149574%_)))
                                                   (_%else149535149551%_)))
                                             (_%else149535149551%_)))))
                                   (_%E149296149516%_)))))
                       (_%E149295149580%_))))
                  (_%export-imports149137%_
                   (lambda (_%src149167%_ _%r149168%_)
                     (letrec* ((_%current-ctx149170%_
                                (gx#current-expander-context))
                               (_%current-phi149171%_
                                (gx#current-export-expander-phi))
                               (_%import->export149172%_
                                (lambda (_%in149253%_)
                                  (let* ((_%in149254149262%_ _%in149253%_)
                                         (_%E149256149265%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in149254149262%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K149257149272%_
                                          (lambda (_%phi149268%_
                                                   _%key149269%_
                                                   _%out149270%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx149170%_
                                             _%key149269%_
                                             _%phi149268%_
                                             _%key149269%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in149254149262%_
                                         'gx#module-import::t)
                                        (let* ((_%e149258149275%_
                                                (##unchecked-structure-ref
                                                 _%in149254149262%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out149278%_
                                                _%e149258149275%_)
                                               (_%e149259149280%_
                                                (##unchecked-structure-ref
                                                 _%in149254149262%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key149283%_
                                                _%e149259149280%_)
                                               (_%e149260149285%_
                                                (##unchecked-structure-ref
                                                 _%in149254149262%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi149288%_
                                                _%e149260149285%_))
                                          (_%K149257149272%_
                                           _%phi149288%_
                                           _%key149283%_
                                           _%out149278%_))
                                        (_%E149256149265%_)))))
                               (_%fold-e149173%_
                                (lambda (_%in149175%_ _%r149176%_)
                                  (let* ((_%in149177149191%_ _%in149175%_)
                                         (_%else149180149199%_
                                          (lambda () _%r149176%_)))
                                    (let ((_%K149186149235%_
                                           (lambda (_%phi149231%_
                                                    _%key149232%_
                                                    _%out149233%_)
                                             (if (and (fx= _%phi149231%_
                                                           _%current-phi149171%_)
                                                      (eq? _%src149167%_
                                                           (##unchecked-structure-ref
                                                            _%out149233%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export149172%_
                                                        _%in149175%_)
                                                       _%r149176%_)
                                                 _%r149176%_)))
                                          (_%K149182149210%_
                                           (lambda (_%imports149203%_
                                                    _%phi149204%_
                                                    _%ctx149205%_)
                                             (if (and (fx= _%phi149204%_
                                                           _%current-phi149171%_)
                                                      (eq? _%src149167%_
                                                           _%ctx149205%_))
                                                 (__foldl1
                                                  (lambda (_%in149207%_
                                                           _%r149208%_)
                                                    (cons (_%import->export149172%_
                                                           _%in149207%_)
                                                          _%r149208%_))
                                                  _%r149176%_
                                                  _%imports149203%_)
                                                 _%r149176%_))))
                                      (let ((_%try-match149179149228%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in149177149191%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e149183149213%_
                                                           (##unchecked-structure-ref
                                                            _%in149177149191%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e149184149218%_
                                                           (##unchecked-structure-ref
                                                            _%in149177149191%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e149185149223%_
                                                           (##unchecked-structure-ref
                                                            _%in149177149191%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx149216%_
                                                            _%e149183149213%_)
                                                           (_%phi149221%_
                                                            _%e149184149218%_)
                                                           (_%imports149226%_
                                                            _%e149185149223%_))
                                                       (_%K149182149210%_
                                                        _%imports149226%_
                                                        _%phi149221%_
                                                        _%ctx149216%_)))
                                                   (_%else149180149199%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in149177149191%_
                                             'gx#module-import::t)
                                            (let* ((_%e149187149238%_
                                                    (##unchecked-structure-ref
                                                     _%in149177149191%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e149188149243%_
                                                    (##unchecked-structure-ref
                                                     _%in149177149191%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e149189149248%_
                                                    (##unchecked-structure-ref
                                                     _%in149177149191%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out149241%_
                                                     _%e149187149238%_)
                                                    (_%key149246%_
                                                     _%e149188149243%_)
                                                    (_%phi149251%_
                                                     _%e149189149248%_))
                                                (_%K149186149235%_
                                                 _%phi149251%_
                                                 _%key149246%_
                                                 _%out149241%_)))
                                            (_%try-match149179149228%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src149167%_
                              _%current-phi149171%_
                              (__foldl1
                               _%fold-e149173%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx149170%_
                                '8
                                '#f
                                '#f)))
                             _%r149168%_))))
                  (_%export!149138%_
                   (lambda (_%rbody149154%_)
                     (letrec* ((_%current-ctx149156%_
                                (gx#current-expander-context))
                               (_%fold-e149157%_
                                (lambda (_%out149161%_ _%r149162%_)
                                  (if (##structure-direct-instance-of?
                                       _%out149161%_
                                       'gx#module-export::t)
                                      (cons _%out149161%_ _%r149162%_)
                                      (if (##structure-direct-instance-of?
                                           _%out149161%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r149162%_
                                           (##unchecked-structure-ref
                                            _%out149161%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r149162%_)))))
                       (let ((_%body149159%_ (reverse _%rbody149154%_)))
                         (##unchecked-structure-set!
                          _%current-ctx149156%_
                          (__foldl1
                           _%fold-e149157%_
                           (##unchecked-structure-ref
                            _%current-ctx149156%_
                            '9
                            '#f
                            '#f)
                           _%body149159%_)
                          '9
                          '#f
                          '#f)
                         _%body149159%_))))
                  (_%expanded-export?149139%_
                   (lambda (_%e149149%_)
                     (let ((_%$e149151%_
                            (##structure-direct-instance-of?
                             _%e149149%_
                             'gx#module-export::t)))
                       (if _%$e149151%_
                           _%$e149151%_
                           (##structure-direct-instance-of?
                            _%e149149%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?149133%_)
              (let ((_%rbody149145%_
                     (gx#core-expand-import/export
                      _%stx149132%_
                      _%expanded-export?149139%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1149136%_)))
                (if _%internal-expand?149133%_
                    (reverse _%rbody149145%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!149138%_ _%rbody149145%_))
                     (gx#stx-source _%stx149132%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx149132%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx149132%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx149630%_)
        (let ((_%internal-expand?149632%_ '#f))
          (gx#core-expand-export%__%
           _%stx149630%_
           _%internal-expand?149632%_))))
    (define gx#core-expand-export%
      (lambda _g152707_
        (let ((_g152708_ (##length _g152707_)))
          (cond ((##fx= _g152708_ 1)
                 (apply gx#core-expand-export%__0 _g152707_))
                ((##fx= _g152708_ 2)
                 (apply gx#core-expand-export%__% _g152707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g152707_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd149129%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd149129%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx149099%_)
        (let* ((_%e149100149107%_ _%stx149099%_)
               (_%E149102149111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149100149107%_)))
               (_%E149101149125%_
                (lambda ()
                  (if (gx#stx-pair? _%e149100149107%_)
                      (let ((_%e149103149115%_
                             (gx#syntax-e _%e149100149107%_)))
                        (let ((_%hd149104149118%_ (##car _%e149103149115%_))
                              (_%tl149105149120%_ (##cdr _%e149103149115%_)))
                          (let ((_%body149123%_ _%tl149105149120%_))
                            (if (gx#identifier-list? _%body149123%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body149123%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body149123%_))
                                   (gx#stx-source _%stx149099%_)))
                                (_%E149102149111%_)))))
                      (_%E149102149111%_)))))
          (_%E149101149125%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id149065%_ _%private?149066%_ _%phi149067%_ _%ctx149068%_)
        (gx#core-bind-syntax!__%
         _%id149065%_
         ((if _%private?149066%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id149065%_))
         _%private?149066%_
         _%phi149067%_
         _%ctx149068%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id149073%_)
        (let* ((_%private?149075%_ '#f)
               (_%phi149077%_ (gx#current-expander-phi))
               (_%ctx149079%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149073%_
           _%private?149075%_
           _%phi149077%_
           _%ctx149079%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id149081%_ _%private?149082%_)
        (let* ((_%phi149084%_ (gx#current-expander-phi))
               (_%ctx149086%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149081%_
           _%private?149082%_
           _%phi149084%_
           _%ctx149086%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id149088%_ _%private?149089%_ _%phi149090%_)
        (let ((_%ctx149092%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149088%_
           _%private?149089%_
           _%phi149090%_
           _%ctx149092%_))))
    (define gx#core-bind-feature!
      (lambda _g152709_
        (let ((_g152710_ (##length _g152709_)))
          (cond ((##fx= _g152710_ 1)
                 (apply gx#core-bind-feature!__0 _g152709_))
                ((##fx= _g152710_ 2)
                 (apply gx#core-bind-feature!__1 _g152709_))
                ((##fx= _g152710_ 3)
                 (apply gx#core-bind-feature!__2 _g152709_))
                ((##fx= _g152710_ 4)
                 (apply gx#core-bind-feature!__% _g152709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g152709_))))))))
