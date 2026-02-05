(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770327920)
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
      (lambda _%$args152612%_
        (apply make-instance gx#module-import::t _%$args152612%_)))
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
      (lambda _%$args152609%_
        (apply make-instance gx#module-export::t _%$args152609%_)))
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
      (lambda _%$args152606%_
        (apply make-instance gx#import-set::t _%$args152606%_)))
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
      (lambda _%$args152603%_
        (apply make-instance gx#export-set::t _%$args152603%_)))
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
      (lambda _%$args152600%_
        (apply make-instance gx#import-expander::t _%$args152600%_)))
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
      (lambda _%$args152597%_
        (apply make-instance gx#export-expander::t _%$args152597%_)))
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
      (lambda _%$args152594%_
        (apply make-instance gx#import-export-expander::t _%$args152594%_)))
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
      (lambda (_%path152591%_ _%fun152592%_)
        (call-with-input-file
         (cons 'path: (cons _%path152591%_ gx#source-file-settings))
         _%fun152592%_)))
    (define gx#module-context:::init!
      (lambda (_%self152574%_
               _%id152575%_
               _%super152576%_
               _%ns152577%_
               _%path152578%_)
        (let ((_%self152581%_ _%self152574%_))
          (if (##fx< '11 (##structure-length _%self152581%_))
              (begin
                (##unchecked-structure-set!
                 _%self152581%_
                 _%id152575%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152581%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152581%_
                 _%super152576%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152581%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self152581%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self152581%_
                 _%ns152577%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152581%_
                 _%path152578%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152581%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self152581%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self152581%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self152581%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self152581%_
                     '11
                     (##structure-length _%self152581%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self152407%_ _%ctx152408%_ _%root152409%_)
        (let* ((_%self152412%_ _%self152407%_)
               (_%super152428%_
                (let ((_%$e152422%_ _%root152409%_))
                  (if _%$e152422%_
                      _%$e152422%_
                      (let ((_%$e152425%_ (gx#core-context-root__0)))
                        (if _%$e152425%_
                            _%$e152425%_
                            (let ((__obj152656
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor152657
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj152656
                                      ':init!)))
                                (if __constructor152657
                                    (__constructor152657 __obj152656)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj152656)))))))
          (if _%ctx152408%_
              (let ((_%id152431%_
                     (##structure-ref
                      _%ctx152408%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path152432%_
                     (##structure-ref
                      _%ctx152408%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in152433%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx152408%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e152434%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx152408%_)))))
                (if (##fx< '8 (##structure-length _%self152412%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self152412%_
                       _%id152431%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152412%_
                       (make-hash-table-eq 'size: (##length _%in152433%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152412%_
                       _%super152428%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152412%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152412%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152412%_
                       _%path152432%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152412%_
                       _%in152433%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152412%_
                       _%e152434%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self152412%_
                           '8
                           (##structure-length _%self152412%_)))
                (##for-each
                 (lambda (_%g152435152437%_)
                   (gx#core-bind-weak-import!__%
                    _%g152435152437%_
                    _%self152412%_))
                 _%in152433%_))
              (if (##fx< '8 (##structure-length _%self152412%_))
                  (begin
                    (##unchecked-structure-set! _%self152412%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self152412%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self152412%_
                     _%super152428%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self152412%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self152412%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self152412%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self152412%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self152412%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self152412%_
                         '8
                         (##structure-length _%self152412%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self152443%_ _%ctx152444%_)
        (let ((_%root152446%_ '#f))
          (gx#prelude-context:::init!__%
           _%self152443%_
           _%ctx152444%_
           _%root152446%_))))
    (define gx#prelude-context:::init!
      (lambda _g152663_
        (let ((_g152664_ (##length _g152663_)))
          (cond ((##fx= _g152664_ 2)
                 (apply gx#prelude-context:::init!__0 _g152663_))
                ((##fx= _g152664_ 3)
                 (apply gx#prelude-context:::init!__% _g152663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g152663_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self152281%_ _%e152282%_)
        (if (##fx< '3 (##structure-length _%self152281%_))
            (begin
              (##unchecked-structure-set!
               _%self152281%_
               _%e152282%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152281%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152281%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self152281%_
                   '3
                   (##structure-length _%self152281%_)))))
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
      (lambda (_%g151907151910%_ _%g151908151912%_)
        (gx#core-apply-user-expander__%
         _%g151907151910%_
         _%g151908151912%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g151778151781%_ _%g151779151783%_)
        (gx#core-apply-user-expander__%
         _%g151778151781%_
         _%g151779151783%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx151649%_)
        (let* ((_%path151651%_
                (##structure-ref _%ctx151649%_ '7 gx#module-context::t '#f))
               (_%path151653%_
                (if (pair? _%path151651%_)
                    (##last _%path151651%_)
                    _%path151651%_)))
          (if (string? _%path151653%_) _%path151653%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path151625%_ _%reload?151626%_ _%eval?151627%_)
        (let ((_%ctx151629%_
               ((gx#current-expander-module-import)
                _%path151625%_
                _%reload?151626%_)))
          (if (and _%ctx151629%_ _%eval?151627%_)
              (gx#eval-module _%ctx151629%_)
              '#!void)
          _%ctx151629%_)))
    (define gx#import-module__0
      (lambda (_%path151634%_)
        (let* ((_%reload?151636%_ '#f) (_%eval?151638%_ '#f))
          (gx#import-module__%
           _%path151634%_
           _%reload?151636%_
           _%eval?151638%_))))
    (define gx#import-module__1
      (lambda (_%path151640%_ _%reload?151641%_)
        (let ((_%eval?151643%_ '#f))
          (gx#import-module__%
           _%path151640%_
           _%reload?151641%_
           _%eval?151643%_))))
    (define gx#import-module
      (lambda _g152665_
        (let ((_g152666_ (##length _g152665_)))
          (cond ((##fx= _g152666_ 1) (apply gx#import-module__0 _g152665_))
                ((##fx= _g152666_ 2) (apply gx#import-module__1 _g152665_))
                ((##fx= _g152666_ 3) (apply gx#import-module__% _g152665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g152665_))))))
    (define gx#eval-module
      (lambda (_%mod151622%_)
        ((gx#current-expander-module-eval) _%mod151622%_)))
    (define gx#core-eval-module
      (lambda (_%obj151601%_)
        (letrec ((_%force-e151603%_
                  (lambda (_%getf151617%_ _%e151618%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf151617%_ _%e151618%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e151618%_))))
          (let _%recur151605%_ ((_%e151607%_ _%obj151601%_))
            (if (##structure-instance-of? _%e151607%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e151610%_
                         (gx#core-context-prelude__% _%e151607%_)))
                    (if _%$e151610%_ (_%recur151605%_ _%$e151610%_) '#!void))
                  (_%force-e151603%_ gx#module-context-e _%e151607%_))
                (if (##structure-instance-of?
                     _%e151607%_
                     'gx#prelude-context::t)
                    (_%force-e151603%_ gx#prelude-context-e _%e151607%_)
                    (if (gx#stx-string? _%e151607%_)
                        (_%recur151605%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e151607%_)))
                        (if (gx#core-library-module-path? _%e151607%_)
                            (_%recur151605%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e151607%_)))
                            (error '"cannot eval module" _%obj151601%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx151581%_)
        (let _%lp151583%_ ((_%e151585%_ _%ctx151581%_))
          (if (or (##structure-instance-of? _%e151585%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e151585%_ 'gx#local-context::t))
              (_%lp151583%_ (##unchecked-structure-ref _%e151585%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e151585%_ 'gx#prelude-context::t)
                  _%e151585%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx151597%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx151597%_))))
    (define gx#core-context-prelude
      (lambda _g152667_
        (let ((_g152668_ (##length _g152667_)))
          (cond ((##fx= _g152668_ 0)
                 (apply gx#core-context-prelude__0 _g152667_))
                ((##fx= _g152668_ 1)
                 (apply gx#core-context-prelude__% _g152667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g152667_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx151572%_)
        (let ((_%$e151574%_ (__hash-get gx#__module-registry _%ctx151572%_)))
          (if _%$e151574%_
              _%$e151574%_
              (let ((_%pre151578%_
                     (let ((__obj152658
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
                        __obj152658
                        _%ctx151572%_)
                       __obj152658)))
                (__hash-put! gx#__module-registry _%ctx151572%_ _%pre151578%_)
                _%pre151578%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath151440%_ _%reload?151441%_)
        (letrec ((_%import-source151443%_
                  (lambda (_%path151531%_)
                    (if (member _%path151531%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path151531%_)
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
                                      (let ((_g152669_
                                             (gx#core-read-module
                                              _%path151531%_)))
                                        (begin
                                          (let ((_g152670_
                                                 (if (##values? _g152669_)
                                                     (##values-length
                                                      _g152669_)
                                                     1)))
                                            (if (not (##fx= _g152670_ 4))
                                                (error "Context expects 4 values"
                                                       _g152670_)))
                                          (let ((_%pre151539%_
                                                 (##values-ref _g152669_ 0))
                                                (_%id151540%_
                                                 (##values-ref _g152669_ 1))
                                                (_%ns151541%_
                                                 (##values-ref _g152669_ 2))
                                                (_%body151542%_
                                                 (##values-ref _g152669_ 3)))
                                            (let* ((_%prelude151552%_
                                                    (if (##structure-instance-of?
                                                         _%pre151539%_
                                                         'gx#prelude-context::t)
                                                        _%pre151539%_
                                                        (if (##structure-instance-of?
                                                             _%pre151539%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre151539%_)
                                                            (if (string? _%pre151539%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre151539%_))
                        (if (not _%pre151539%_)
                            (let ((_%$e151548%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e151548%_
                                  _%$e151548%_
                                  (let ((__obj152659
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
                                     __obj152659
                                     '#f)
                                    __obj152659)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath151440%_
                                   _%pre151539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx151554%_
                                                    (let ((__obj152660
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
                                                       __obj152660
                                                       _%id151540%_
                                                       _%prelude151552%_
                                                       _%ns151541%_
                                                       _%path151531%_)
                                                      __obj152660))
                                                   (_%body151556%_
                                                    (gx#core-expand-module-begin
                                                     _%body151542%_
                                                     _%ctx151554%_))
                                                   (_%body151558%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body151556%_)
                                                     _%path151531%_
                                                     _%ctx151554%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx151554%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body151558%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx151554%_
                                               _%body151558%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path151531%_
                                               _%ctx151554%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id151540%_
                                               _%ctx151554%_)
                                              _%ctx151554%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path151531%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule151444%_
                  (lambda (_%rpath151460%_)
                    (let* ((_%rpath151461151468%_ _%rpath151460%_)
                           (_%E151463151471%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath151461151468%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K151464151519%_
                            (lambda (_%refs151474%_ _%origin151475%_)
                              (let ((_%ctx151477%_
                                     (if _%origin151475%_
                                         (gx#core-import-module__%
                                          _%origin151475%_
                                          _%reload?151441%_)
                                         (gx#current-expander-context))))
                                (let _%lp151479%_ ((_%rest151481%_
                                                    _%refs151474%_)
                                                   (_%ctx151482%_
                                                    _%ctx151477%_))
                                  (let* ((_%rest151483151491%_ _%rest151481%_)
                                         (_%else151485151499%_
                                          (lambda () _%ctx151482%_))
                                         (_%K151487151507%_
                                          (lambda (_%rest151502%_ _%id151503%_)
                                            (let ((_%bind151505%_
                                                   (gx#resolve-identifier__%
                                                    _%id151503%_
                                                    '0
                                                    _%ctx151482%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind151505%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind151505%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp151479%_
                                                   _%rest151502%_
                                                   (##unchecked-structure-ref
                                                    _%bind151505%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath151460%_
                                                         _%id151503%_
                                                         _%bind151505%_))))))
                                    (if (pair? _%rest151483151491%_)
                                        (let ((_%hd151488151510%_
                                               (##car _%rest151483151491%_))
                                              (_%tl151489151512%_
                                               (##cdr _%rest151483151491%_)))
                                          (let* ((_%id151515%_
                                                  _%hd151488151510%_)
                                                 (_%rest151517%_
                                                  _%tl151489151512%_))
                                            (_%K151487151507%_
                                             _%rest151517%_
                                             _%id151515%_)))
                                        (_%else151485151499%_))))))))
                      (if (pair? _%rpath151461151468%_)
                          (let ((_%hd151465151522%_
                                 (##car _%rpath151461151468%_))
                                (_%tl151466151524%_
                                 (##cdr _%rpath151461151468%_)))
                            (let* ((_%origin151527%_ _%hd151465151522%_)
                                   (_%refs151529%_ _%tl151466151524%_))
                              (_%K151464151519%_
                               _%refs151529%_
                               _%origin151527%_)))
                          (_%E151463151471%_))))))
          (let ((_%$e151446%_
                 (if (not _%reload?151441%_)
                     (__hash-get gx#__module-registry _%rpath151440%_)
                     '#f)))
            (if _%$e151446%_
                _%$e151446%_
                (if (list? _%rpath151440%_)
                    (_%import-submodule151444%_ _%rpath151440%_)
                    (if (gx#core-library-module-path? _%rpath151440%_)
                        (let ((_%ctx151451%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath151440%_)
                                _%reload?151441%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath151440%_
                           _%ctx151451%_)
                          _%ctx151451%_)
                        (let* ((_%npath151454%_
                                (path-normalize _%rpath151440%_))
                               (_%$e151456%_
                                (if (not _%reload?151441%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath151454%_)
                                    '#f)))
                          (if _%$e151456%_
                              _%$e151456%_
                              (_%import-source151443%_
                               _%npath151454%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath151565%_)
        (let ((_%reload?151567%_ '#f))
          (gx#core-import-module__% _%rpath151565%_ _%reload?151567%_))))
    (define gx#core-import-module
      (lambda _g152671_
        (let ((_g152672_ (##length _g152671_)))
          (cond ((##fx= _g152672_ 1)
                 (apply gx#core-import-module__0 _g152671_))
                ((##fx= _g152672_ 2)
                 (apply gx#core-import-module__% _g152671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g152671_))))))
    (define gx#core-read-module
      (lambda (_%path151429%_)
        (__with-catch
         (lambda (_%exn151431%_)
           (if (and (datum-parsing-exception? _%exn151431%_)
                    (eq? (datum-parsing-exception-filepos _%exn151431%_) '0))
               (gx#core-read-module/lang _%path151429%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path151429%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g151433151435%_)
                      (display-exception__% _%exn151431%_ _%g151433151435%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path151429%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path151281%_)
        (let _%lp151283%_ ((_%body151285%_
                            (read-syntax-from-file _%path151281%_))
                           (_%pre151286%_ '#f)
                           (_%ns151287%_ '#f)
                           (_%pkg151288%_ '#f))
          (let* ((_%e151289151313%_ _%body151285%_)
                 (_%E151305151339%_
                  (lambda ()
                    (let ((_g152673_
                           (if _%pkg151288%_
                               (values _%pre151286%_
                                       _%ns151287%_
                                       _%pkg151288%_)
                               (gx#core-read-module-package
                                _%path151281%_
                                _%pre151286%_
                                _%ns151287%_))))
                      (begin
                        (let ((_g152674_
                               (if (##values? _g152673_)
                                   (##values-length _g152673_)
                                   1)))
                          (if (not (##fx= _g152674_ 3))
                              (error "Context expects 3 values" _g152674_)))
                        (let ((_%pre151317%_ (##values-ref _g152673_ 0))
                              (_%ns151318%_ (##values-ref _g152673_ 1))
                              (_%pkg151319%_ (##values-ref _g152673_ 2)))
                          (let* ((_%prelude151325%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre151317%_)
                                      (gx#syntax-local-e__0 _%pre151317%_)
                                      (if (gx#core-library-module-path?
                                           _%pre151317%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre151317%_)
                                          (if (gx#stx-string? _%pre151317%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre151317%_
                                               _%path151281%_)
                                              (gx#stx-e _%pre151317%_)))))
                                 (_%path-id151327%_
                                  (gx#core-module-path->namespace
                                   _%path151281%_))
                                 (_%pkg-id151329%_
                                  (if _%pkg151319%_
                                      (##string-append
                                       _%pkg151319%_
                                       '"/"
                                       _%path-id151327%_)
                                      _%path-id151327%_))
                                 (_%module-id151331%_
                                  (##string->symbol _%pkg-id151329%_))
                                 (_%module-ns151336%_
                                  (if (eq? _%ns151318%_ '#!void)
                                      '#f
                                      (let ((_%$e151333%_ _%ns151318%_))
                                        (if _%$e151333%_
                                            _%$e151333%_
                                            _%pkg-id151329%_)))))
                            (values _%prelude151325%_
                                    _%module-id151331%_
                                    _%module-ns151336%_
                                    _%body151285%_)))))))
                 (_%E151298151371%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151289151313%_)
                        (let ((_%e151306151343%_
                               (gx#syntax-e _%e151289151313%_)))
                          (let ((_%hd151307151346%_ (##car _%e151306151343%_))
                                (_%tl151308151348%_ (##cdr _%e151306151343%_)))
                            (if (eq? (gx#stx-e _%hd151307151346%_) 'package:)
                                (if (gx#stx-pair? _%tl151308151348%_)
                                    (let ((_%e151309151351%_
                                           (gx#syntax-e _%tl151308151348%_)))
                                      (let ((_%hd151310151354%_
                                             (##car _%e151309151351%_))
                                            (_%tl151311151356%_
                                             (##cdr _%e151309151351%_)))
                                        (let* ((_%pkg151359%_
                                                _%hd151310151354%_)
                                               (_%rest151361%_
                                                _%tl151311151356%_)
                                               (_%pkg151369%_
                                                (if (gx#identifier?
                                                     _%pkg151359%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg151359%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg151359%_)
                                                            (gx#stx-false?
                                                             _%pkg151359%_))
                                                        (gx#stx-e
                                                         _%pkg151359%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg151359%_)))))
                                          (_%lp151283%_
                                           _%rest151361%_
                                           _%pre151286%_
                                           _%ns151287%_
                                           _%pkg151369%_))))
                                    (_%E151305151339%_))
                                (_%E151305151339%_))))
                        (_%E151305151339%_))))
                 (_%E151291151401%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151289151313%_)
                        (let ((_%e151299151375%_
                               (gx#syntax-e _%e151289151313%_)))
                          (let ((_%hd151300151378%_ (##car _%e151299151375%_))
                                (_%tl151301151380%_ (##cdr _%e151299151375%_)))
                            (if (eq? (gx#stx-e _%hd151300151378%_) 'namespace:)
                                (if (gx#stx-pair? _%tl151301151380%_)
                                    (let ((_%e151302151383%_
                                           (gx#syntax-e _%tl151301151380%_)))
                                      (let ((_%hd151303151386%_
                                             (##car _%e151302151383%_))
                                            (_%tl151304151388%_
                                             (##cdr _%e151302151383%_)))
                                        (let* ((_%ns151391%_
                                                _%hd151303151386%_)
                                               (_%rest151393%_
                                                _%tl151304151388%_)
                                               (_%ns151399%_
                                                (if (gx#identifier?
                                                     _%ns151391%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns151391%_))
                                                    (if (gx#stx-string?
                                                         _%ns151391%_)
                                                        (gx#stx-e _%ns151391%_)
                                                        (if (gx#stx-false?
                                                             _%ns151391%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns151391%_))))))
                                          (_%lp151283%_
                                           _%rest151393%_
                                           _%pre151286%_
                                           _%ns151399%_
                                           _%pkg151288%_))))
                                    (_%E151298151371%_))
                                (_%E151298151371%_))))
                        (_%E151298151371%_))))
                 (_%E151290151425%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151289151313%_)
                        (let ((_%e151292151405%_
                               (gx#syntax-e _%e151289151313%_)))
                          (let ((_%hd151293151408%_ (##car _%e151292151405%_))
                                (_%tl151294151410%_ (##cdr _%e151292151405%_)))
                            (if (eq? (gx#stx-e _%hd151293151408%_) 'prelude:)
                                (if (gx#stx-pair? _%tl151294151410%_)
                                    (let ((_%e151295151413%_
                                           (gx#syntax-e _%tl151294151410%_)))
                                      (let ((_%hd151296151416%_
                                             (##car _%e151295151413%_))
                                            (_%tl151297151418%_
                                             (##cdr _%e151295151413%_)))
                                        (let* ((_%prelude151421%_
                                                _%hd151296151416%_)
                                               (_%rest151423%_
                                                _%tl151297151418%_))
                                          (_%lp151283%_
                                           _%rest151423%_
                                           _%prelude151421%_
                                           _%ns151287%_
                                           _%pkg151288%_))))
                                    (_%E151291151401%_))
                                (_%E151291151401%_))))
                        (_%E151291151401%_)))))
            (_%E151290151425%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path151102%_)
        (letrec ((_%default-read-module-body151104%_
                  (lambda (_%inp151273%_)
                    (let _%lp151275%_ ((_%body151277%_ '()))
                      (let ((_%next151279%_ (read-syntax__% _%inp151273%_)))
                        (if (eof-object? _%next151279%_)
                            (reverse _%body151277%_)
                            (_%lp151275%_
                             (cons _%next151279%_ _%body151277%_)))))))
                 (_%read-body151105%_
                  (lambda (_%inp151190%_
                           _%pre151191%_
                           _%ns151192%_
                           _%pkg151193%_
                           _%args151194%_)
                    (let ((_g152675_
                           (if _%pkg151193%_
                               (values _%pre151191%_
                                       _%ns151192%_
                                       _%pkg151193%_)
                               (gx#core-read-module-package
                                _%path151102%_
                                _%pre151191%_
                                _%ns151192%_))))
                      (begin
                        (let ((_g152676_
                               (if (##values? _g152675_)
                                   (##values-length _g152675_)
                                   1)))
                          (if (not (##fx= _g152676_ 3))
                              (error "Context expects 3 values" _g152676_)))
                        (let ((_%pre151196%_ (##values-ref _g152675_ 0))
                              (_%ns151197%_ (##values-ref _g152675_ 1))
                              (_%pkg151198%_ (##values-ref _g152675_ 2)))
                          (let* ((_%prelude151200%_
                                  (gx#import-module__0 _%pre151196%_))
                                 (_%read-module-body151255%_
                                  (let ((_%$e151246%_
                                         (__find (lambda (_%e151201151203%_)
                                                   (let* ((_%e151201151205151215%_
                                                           _%e151201151203%_)
                                                          (_%else151207151223%_
                                                           (lambda () '#f))
                                                          (_%K151209151227%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e151201151205151215%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e151210151230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e151201151205151215%_
                          '1
                          '#f
                          '#f))
                        (_%e151211151233%_
                         (##unchecked-structure-ref
                          _%e151201151205151215%_
                          '2
                          '#f
                          '#f))
                        (_%e151212151236%_
                         (##unchecked-structure-ref
                          _%e151201151205151215%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e151212151236%_ '1)
                       (let ((_%e151213151239%_
                              (##unchecked-structure-ref
                               _%e151201151205151215%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g151241151243%_)
                                (eq? _%g151241151243%_ 'read-module-body))
                              _%e151213151239%_)
                             (_%K151209151227%_)
                             (_%else151207151223%_)))
                       (_%else151207151223%_)))
                 (_%else151207151223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude151200%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e151246%_
                                        ((lambda (_%xport151249%_)
                                           (let ((_%proc151252%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport151249%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc151252%_)
                                                 _%proc151252%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path151102%_
                                                  _%pre151196%_
                                                  _%proc151252%_))))
                                         _%$e151246%_)
                                        _%default-read-module-body151104%_)))
                                 (_%path-id151257%_
                                  (gx#core-module-path->namespace
                                   _%path151102%_))
                                 (_%pkg-id151259%_
                                  (if _%pkg151198%_
                                      (##string-append
                                       _%pkg151198%_
                                       '"/"
                                       _%path-id151257%_)
                                      _%path-id151257%_))
                                 (_%module-id151261%_
                                  (##string->symbol _%pkg-id151259%_))
                                 (_%module-ns151266%_
                                  (let ((_%$e151263%_ _%ns151197%_))
                                    (if _%$e151263%_
                                        _%$e151263%_
                                        _%pkg-id151259%_)))
                                 (_%body151270%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body151255%_
                                         _%inp151190%_))
                                      gx#current-module-reader-args
                                      _%args151194%_))
                                   gx#current-module-reader-path
                                   _%path151102%_)))
                            (values _%prelude151200%_
                                    _%module-id151261%_
                                    _%module-ns151266%_
                                    _%body151270%_)))))))
                 (_%string-e151106%_
                  (lambda (_%obj151184%_ _%what151185%_)
                    (if (string? _%obj151184%_)
                        _%obj151184%_
                        (if (symbol? _%obj151184%_)
                            (##symbol->string _%obj151184%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what151185%_)
                             _%path151102%_
                             _%obj151184%_)))))
                 (_%read-lang-args151107%_
                  (lambda (_%inp151139%_ _%args151140%_)
                    (let* ((_%args151141151149%_ _%args151140%_)
                           (_%else151143151157%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path151102%_)))
                           (_%K151145151172%_
                            (lambda (_%args151160%_ _%prelude151161%_)
                              (let* ((_%pkg151163%_
                                      (pgetq__0 'package: _%args151160%_))
                                     (_%pkg151165%_
                                      (if _%pkg151163%_
                                          (_%string-e151106%_
                                           _%pkg151163%_
                                           '"package")
                                          '#f))
                                     (_%ns151167%_
                                      (pgetq__0 'namespace: _%args151160%_))
                                     (_%ns151169%_
                                      (if _%ns151167%_
                                          (_%string-e151106%_
                                           _%ns151167%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body151105%_
                                 _%inp151139%_
                                 _%prelude151161%_
                                 _%ns151169%_
                                 _%pkg151165%_
                                 _%args151160%_)))))
                      (if (pair? _%args151141151149%_)
                          (let ((_%hd151146151175%_
                                 (##car _%args151141151149%_))
                                (_%tl151147151177%_
                                 (##cdr _%args151141151149%_)))
                            (let* ((_%prelude151180%_ _%hd151146151175%_)
                                   (_%args151182%_ _%tl151147151177%_))
                              (_%K151145151172%_
                               _%args151182%_
                               _%prelude151180%_)))
                          (_%else151143151157%_)))))
                 (_%read-lang151108%_
                  (lambda (_%inp151113%_)
                    (let* ((_%head151115%_ (read-line _%inp151113%_))
                           (_%$e151117%_
                            (string-index__0 _%head151115%_ '#\space)))
                      (if _%$e151117%_
                          ((lambda (_%ix151120%_)
                             (let ((_%lang151122%_
                                    (substring
                                     _%head151115%_
                                     '0
                                     _%ix151120%_)))
                               (if (equal? _%lang151122%_ '"#lang")
                                   (let* ((_%rest151124%_
                                           (substring
                                            _%head151115%_
                                            (##fx+ _%ix151120%_ '1)
                                            (string-length _%head151115%_)))
                                          (_%args151135%_
                                           (__with-catch
                                            (lambda (_%g151125151127%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path151102%_
                                               _%g151125151127%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest151124%_
                                               (lambda (_%g151130151132%_)
                                                 (read-all
                                                  _%g151130151132%_
                                                  read)))))))
                                     (_%read-lang-args151107%_
                                      _%inp151113%_
                                      _%args151135%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path151102%_))))
                           _%$e151117%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path151102%_)))))
                 (_%read-e151109%_
                  (lambda (_%inp151111%_)
                    (if (eq? (peek-char _%inp151111%_) '#\#)
                        (_%read-lang151108%_ _%inp151111%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path151102%_)))))
          (gx#call-with-input-source-file _%path151102%_ _%read-e151109%_))))
    (define gx#core-read-module-package
      (lambda (_%path151050%_ _%pre151051%_ _%ns151052%_)
        (letrec ((_%string-e151054%_
                  (lambda (_%e151097%_)
                    (if (symbol? _%e151097%_)
                        (##symbol->string _%e151097%_)
                        (if (string? _%e151097%_)
                            _%e151097%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e151097%_))))))
          (let _%lp151056%_ ((_%dir151058%_ (path-directory _%path151050%_))
                             (_%pkg-path151059%_ '()))
            (let ((_%gerbil.pkg151061%_
                   (path-expand '"gerbil.pkg" _%dir151058%_)))
              (if (##file-exists? _%gerbil.pkg151061%_)
                  (let ((_%plist151063%_
                         (gx#core-library-package-plist__% _%dir151058%_ '#t)))
                    (if (null? _%plist151063%_)
                        (let ((_%pkg151066%_
                               (if (null? _%pkg-path151059%_)
                                   '#f
                                   (string-join _%pkg-path151059%_ '"/"))))
                          (values _%pre151051%_ _%ns151052%_ _%pkg151066%_))
                        (if (list? _%plist151063%_)
                            (let* ((_%root151069%_
                                    (pgetq__0 'package: _%plist151063%_))
                                   (_%pkg151073%_
                                    (let ((_%pkg-path151071%_
                                           (if _%root151069%_
                                               (cons (_%string-e151054%_
                                                      _%root151069%_)
                                                     _%pkg-path151059%_)
                                               _%pkg-path151059%_)))
                                      (if (null? _%pkg-path151071%_)
                                          '#f
                                          (string-join
                                           _%pkg-path151071%_
                                           '"/"))))
                                   (_%ns151080%_
                                    (let ((_%ns151078%_
                                           (let ((_%$e151075%_ _%ns151052%_))
                                             (if _%$e151075%_
                                                 _%$e151075%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist151063%_)))))
                                      (if _%ns151078%_
                                          (_%string-e151054%_ _%ns151078%_)
                                          '#f)))
                                   (_%pre151085%_
                                    (let ((_%$e151082%_ _%pre151051%_))
                                      (if _%$e151082%_
                                          _%$e151082%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist151063%_)))))
                              (values _%pre151085%_
                                      _%ns151080%_
                                      _%pkg151073%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist151063%_))))
                  (let ((_%dir*151089%_
                         (path-strip-trailing-directory-separator
                          _%dir151058%_)))
                    (if (or (__string-empty? _%dir*151089%_)
                            (equal? _%dir151058%_ _%dir*151089%_))
                        (values _%pre151051%_ _%ns151052%_ '#f)
                        (let ((_%xpath151094%_
                               (path-strip-directory _%dir*151089%_))
                              (_%xdir151095%_ (path-directory _%dir*151089%_)))
                          (_%lp151056%_
                           _%xdir151095%_
                           (cons _%xpath151094%_ _%pkg-path151059%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path151048%_)
        (path-strip-extension (path-strip-directory _%path151048%_))))
    (define gx#core-module-path->id
      (lambda (_%path151046%_)
        (##string->symbol (gx#core-module-path->namespace _%path151046%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path151025%_ _%rel151026%_)
        (let* ((_%path151028%_ (gx#stx-e _%stx-path151025%_))
               (_%path151030%_
                (if (__string-empty? (path-extension _%path151028%_))
                    (##string-append _%path151028%_ '".ss")
                    _%path151028%_)))
          (gx#core-resolve-path__%
           _%path151030%_
           (let ((_%$e151033%_ (gx#stx-source _%stx-path151025%_)))
             (if _%$e151033%_ _%$e151033%_ _%rel151026%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path151039%_)
        (let ((_%rel151041%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path151039%_ _%rel151041%_))))
    (define gx#core-resolve-module-path
      (lambda _g152677_
        (let ((_g152678_ (##length _g152677_)))
          (cond ((##fx= _g152678_ 1)
                 (apply gx#core-resolve-module-path__0 _g152677_))
                ((##fx= _g152678_ 2)
                 (apply gx#core-resolve-module-path__% _g152677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g152677_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath150910%_)
        (let* ((_%spath150912%_ (symbol->string (gx#stx-e _%libpath150910%_)))
               (_%spath150914%_
                (substring
                 _%spath150912%_
                 '1
                 (##string-length _%spath150912%_)))
               (_%ext150916%_ (path-extension _%spath150914%_))
               (_%ssi150918%_
                (if (__string-empty? _%ext150916%_)
                    (##string-append _%spath150914%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath150914%_)
                     '".ssi")))
               (_%srcs150922%_
                (if (__string-empty? _%ext150916%_)
                    (##map (lambda (_%ext150920%_)
                             (string-append _%spath150914%_ _%ext150920%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath150914%_ '()))))
          (let _%lp150925%_ ((_%rest150927%_ (load-path)))
            (let* ((_%rest150928150937%_ _%rest150927%_)
                   (_%E150931150941%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest150928150937%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K150933151012%_
                     (lambda (_%rest150952%_ _%dir150953%_)
                       (letrec ((_%resolve150955%_
                                 (lambda (_%ssi150968%_ _%srcs150969%_)
                                   (let ((_%compiled-path150971%_
                                          (path-expand
                                           _%ssi150968%_
                                           _%dir150953%_)))
                                     (if (##file-exists?
                                          _%compiled-path150971%_)
                                         (path-normalize
                                          _%compiled-path150971%_)
                                         (let _%lpr150973%_ ((_%rest-src150975%_
                                                              _%srcs150969%_))
                                           (let* ((_%rest-src150976150984%_
                                                   _%rest-src150975%_)
                                                  (_%else150978150992%_
                                                   (lambda ()
                                                     (_%lp150925%_
                                                      _%rest150952%_)))
                                                  (_%K150980151000%_
                                                   (lambda (_%rest-src150995%_
                                                            _%src150996%_)
                                                     (let ((_%src-path150998%_
                                                            (path-expand
                                                             _%src150996%_
                                                             _%dir150953%_)))
                                                       (if (##file-exists?
                                                            _%src-path150998%_)
                                                           (path-normalize
                                                            _%src-path150998%_)
                                                           (_%lpr150973%_
                                                            _%rest-src150995%_))))))
                                             (if (pair? _%rest-src150976150984%_)
                                                 (let ((_%hd150981151003%_
                                                        (##car _%rest-src150976150984%_))
                                                       (_%tl150982151005%_
                                                        (##cdr _%rest-src150976150984%_)))
                                                   (let* ((_%src151008%_
                                                           _%hd150981151003%_)
                                                          (_%rest-src151010%_
                                                           _%tl150982151005%_))
                                                     (_%K150980151000%_
                                                      _%rest-src151010%_
                                                      _%src151008%_)))
                                                 (_%else150978150992%_)))))))))
                         (let ((_%$e150957%_
                                (gx#core-library-package-path-prefix
                                 _%dir150953%_)))
                           (if _%$e150957%_
                               ((lambda (_%prefix150960%_)
                                  (if (string-prefix?
                                       _%prefix150960%_
                                       _%spath150914%_)
                                      (let ((_%ssi150964%_
                                             (substring
                                              _%ssi150918%_
                                              (string-length _%prefix150960%_)
                                              (##string-length _%ssi150918%_)))
                                            (_%srcs150965%_
                                             (##map (lambda (_%src150962%_)
                                                      (substring
                                                       _%src150962%_
                                                       (string-length
                                                        _%prefix150960%_)
                                                       (string-length
                                                        _%src150962%_)))
                                                    _%srcs150922%_)))
                                        (_%resolve150955%_
                                         _%ssi150964%_
                                         _%srcs150965%_))
                                      (_%lp150925%_ _%rest150952%_)))
                                _%$e150957%_)
                               (_%resolve150955%_
                                _%ssi150918%_
                                _%srcs150922%_))))))
                    (_%K150932150946%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath150910%_))))
                (let ((_%try-match150930150949%_
                       (lambda ()
                         (if (null? _%rest150928150937%_)
                             (_%K150932150946%_)
                             (_%E150931150941%_)))))
                  (if (pair? _%rest150928150937%_)
                      (let ((_%tl150935151017%_ (##cdr _%rest150928150937%_))
                            (_%hd150934151015%_ (##car _%rest150928150937%_)))
                        (let ((_%dir151020%_ _%hd150934151015%_)
                              (_%rest151022%_ _%tl150935151017%_))
                          (_%K150933151012%_ _%rest151022%_ _%dir151020%_)))
                      (_%try-match150930150949%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath150878%_)
        (letrec ((_%resolve150880%_
                  (lambda (_%path150901%_ _%base150902%_)
                    (let ((_%$e150904%_
                           (string-rindex__0 _%base150902%_ '#\/)))
                      (if _%$e150904%_
                          ((lambda (_%idx150907%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base150902%_ '0 _%idx150907%_)
                                '"/"
                                _%path150901%_))))
                           _%$e150904%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path150901%_))))))))
          (let ((_%spath150882%_ (symbol->string (gx#stx-e _%modpath150878%_)))
                (_%mod150883%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod150883%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath150878%_))
            (let ((_%mpath150885%_
                   (symbol->string
                    (##structure-ref
                     _%mod150883%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp150887%_ ((_%spath150889%_ _%spath150882%_)
                                 (_%mpath150890%_ _%mpath150885%_))
                (if (string-prefix? '"../" _%spath150889%_)
                    (let ((_%$e150893%_
                           (string-rindex__0 _%mpath150890%_ '#\/)))
                      (if _%$e150893%_
                          ((lambda (_%idx150896%_)
                             (_%lp150887%_
                              (substring
                               _%spath150889%_
                               '3
                               (string-length _%spath150889%_))
                              (substring _%mpath150890%_ '0 _%idx150896%_)))
                           _%$e150893%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath150878%_)))
                    (if (string-prefix? '"./" _%spath150889%_)
                        (_%lp150887%_
                         (substring
                          _%spath150889%_
                          '2
                          (string-length _%spath150889%_))
                         _%mpath150890%_)
                        (_%resolve150880%_
                         _%spath150889%_
                         _%mpath150890%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir150870%_)
        (let ((_%$e150872%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir150870%_))))
          (if _%$e150872%_
              ((lambda (_%pkg150875%_)
                 (##string-append (symbol->string _%pkg150875%_) '"/"))
               _%$e150872%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir150840%_ _%exists?150841%_)
        (let ((_%$e150843%_ (__hash-get gx#__module-pkg-cache _%dir150840%_)))
          (if _%$e150843%_
              _%$e150843%_
              (let* ((_%gerbil.pkg150847%_
                      (path-expand '"gerbil.pkg" _%dir150840%_))
                     (_%plist150857%_
                      (if (or _%exists?150841%_
                              (##file-exists? _%gerbil.pkg150847%_))
                          (let ((_%e150852%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg150847%_
                                  read)))
                            (if (eof-object? _%e150852%_)
                                '()
                                (if (list? _%e150852%_)
                                    _%e150852%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg150847%_
                                     _%e150852%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir150840%_
                 _%plist150857%_)
                _%plist150857%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir150863%_)
        (let ((_%exists?150865%_ '#f))
          (gx#core-library-package-plist__% _%dir150863%_ _%exists?150865%_))))
    (define gx#core-library-package-plist
      (lambda _g152679_
        (let ((_g152680_ (##length _g152679_)))
          (cond ((##fx= _g152680_ 1)
                 (apply gx#core-library-package-plist__0 _g152679_))
                ((##fx= _g152680_ 2)
                 (apply gx#core-library-package-plist__% _g152679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g152679_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx150837%_)
        (gx#core-special-module-path? _%stx150837%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx150835%_)
        (gx#core-special-module-path? _%stx150835%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx150830%_ _%char150831%_)
        (if (gx#identifier? _%stx150830%_)
            (if (interned-symbol? (gx#stx-e _%stx150830%_))
                (let ((_%str150833%_
                       (symbol->string (gx#stx-e _%stx150830%_))))
                  (if (##fx> (##string-length _%str150833%_) '1)
                      (eq? (string-ref _%str150833%_ '0) _%char150831%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx150824%_)
        (gx#core-bound-identifier?__%
         _%stx150824%_
         (lambda (_%g150825150827%_)
           (gx#expander-binding?__% _%g150825150827%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx150818%_)
        (gx#core-bound-identifier?__%
         _%stx150818%_
         (lambda (_%g150819150821%_)
           (gx#expander-binding?__% _%g150819150821%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx150805%_)
        (letrec ((_%module-prelude?150807%_
                  (lambda (_%e150813%_)
                    (let ((_%$e150815%_
                           (##structure-instance-of?
                            _%e150813%_
                            'gx#module-context::t)))
                      (if _%$e150815%_
                          _%$e150815%_
                          (##structure-instance-of?
                           _%e150813%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx150805%_
           (lambda (_%g150808150810%_)
             (gx#expander-binding?__%
              _%g150808150810%_
              _%module-prelude?150807%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in150736%_ _%ctx150737%_ _%force-weak?150738%_)
        (let* ((_%in150739150748%_ _%in150736%_)
               (_%E150741150751%_
                (lambda ()
                  (error '"No clause matching"
                         _%in150739150748%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K150742150764%_
                (lambda (_%weak?150754%_
                         _%phi150755%_
                         _%key150756%_
                         _%source150757%_)
                  (gx#core-bind!__%
                   _%key150756%_
                   (let* ((_%e150759%_
                           (gx#core-resolve-module-export _%source150757%_))
                          (__obj152661
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
                      __obj152661
                      (##unchecked-structure-ref _%e150759%_ '1 '#f '#f)
                      _%key150756%_
                      _%phi150755%_
                      _%e150759%_
                      (##unchecked-structure-ref _%source150757%_ '1 '#f '#f)
                      (let ((_%$e150761%_ _%force-weak?150738%_))
                        (if _%$e150761%_ _%$e150761%_ _%weak?150754%_)))
                     __obj152661)
                   gx#core-context-rebind?
                   _%phi150755%_
                   _%ctx150737%_))))
          (if (##structure-direct-instance-of?
               _%in150739150748%_
               'gx#module-import::t)
              (let* ((_%e150743150767%_
                      (##unchecked-structure-ref
                       _%in150739150748%_
                       '1
                       '#f
                       '#f))
                     (_%source150770%_ _%e150743150767%_)
                     (_%e150744150772%_
                      (##unchecked-structure-ref
                       _%in150739150748%_
                       '2
                       '#f
                       '#f))
                     (_%key150775%_ _%e150744150772%_)
                     (_%e150745150777%_
                      (##unchecked-structure-ref
                       _%in150739150748%_
                       '3
                       '#f
                       '#f))
                     (_%phi150780%_ _%e150745150777%_)
                     (_%e150746150782%_
                      (##unchecked-structure-ref
                       _%in150739150748%_
                       '4
                       '#f
                       '#f))
                     (_%weak?150785%_ _%e150746150782%_))
                (_%K150742150764%_
                 _%weak?150785%_
                 _%phi150780%_
                 _%key150775%_
                 _%source150770%_))
              (_%E150741150751%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in150790%_)
        (let* ((_%ctx150792%_ (gx#current-expander-context))
               (_%force-weak?150794%_ '#f))
          (gx#core-bind-import!__%
           _%in150790%_
           _%ctx150792%_
           _%force-weak?150794%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in150796%_ _%ctx150797%_)
        (let ((_%force-weak?150799%_ '#f))
          (gx#core-bind-import!__%
           _%in150796%_
           _%ctx150797%_
           _%force-weak?150799%_))))
    (define gx#core-bind-import!
      (lambda _g152681_
        (let ((_g152682_ (##length _g152681_)))
          (cond ((##fx= _g152682_ 1) (apply gx#core-bind-import!__0 _g152681_))
                ((##fx= _g152682_ 2) (apply gx#core-bind-import!__1 _g152681_))
                ((##fx= _g152682_ 3) (apply gx#core-bind-import!__% _g152681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g152681_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in150722%_ _%ctx150723%_)
        (gx#core-bind-import!__% _%in150722%_ _%ctx150723%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in150728%_)
        (let ((_%ctx150730%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in150728%_ _%ctx150730%_))))
    (define gx#core-bind-weak-import!
      (lambda _g152683_
        (let ((_g152684_ (##length _g152683_)))
          (cond ((##fx= _g152684_ 1)
                 (apply gx#core-bind-weak-import!__0 _g152683_))
                ((##fx= _g152684_ 2)
                 (apply gx#core-bind-weak-import!__% _g152683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g152683_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out150615%_)
        (letrec ((_%subst150617%_
                  (lambda (_%key150662%_)
                    (let* ((_%key150663150671%_ _%key150662%_)
                           (_%else150665150679%_ (lambda () _%key150662%_))
                           (_%K150667150709%_
                            (lambda (_%mark150682%_ _%id150683%_)
                              (let* ((_%mark150684150690%_ _%mark150682%_)
                                     (_%E150686150693%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark150684150690%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K150687150701%_
                                      (lambda (_%subst150696%_)
                                        (let ((_%$e150698%_
                                               (if _%subst150696%_
                                                   (hash-get
                                                    _%subst150696%_
                                                    _%id150683%_)
                                                   '#f)))
                                          (if _%$e150698%_
                                              _%$e150698%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key150662%_))))))
                                (if (##structure-instance-of?
                                     _%mark150684150690%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e150688150704%_
                                            (##unchecked-structure-ref
                                             _%mark150684150690%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst150707%_ _%e150688150704%_))
                                      (_%K150687150701%_ _%subst150707%_))
                                    (_%E150686150693%_))))))
                      (if (pair? _%key150663150671%_)
                          (let ((_%hd150668150712%_
                                 (##car _%key150663150671%_))
                                (_%tl150669150714%_
                                 (##cdr _%key150663150671%_)))
                            (let* ((_%id150717%_ _%hd150668150712%_)
                                   (_%mark150719%_ _%tl150669150714%_))
                              (_%K150667150709%_ _%mark150719%_ _%id150717%_)))
                          (_%else150665150679%_))))))
          (let* ((_%out150618150628%_ _%out150615%_)
                 (_%E150620150631%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out150618150628%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K150621150638%_
                  (lambda (_%phi150634%_ _%key150635%_ _%ctx150636%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx150636%_ _%phi150634%_)
                     (_%subst150617%_ _%key150635%_)))))
            (if (##structure-direct-instance-of?
                 _%out150618150628%_
                 'gx#module-export::t)
                (let* ((_%e150622150641%_
                        (##unchecked-structure-ref
                         _%out150618150628%_
                         '1
                         '#f
                         '#f))
                       (_%ctx150644%_ _%e150622150641%_)
                       (_%e150623150646%_
                        (##unchecked-structure-ref
                         _%out150618150628%_
                         '2
                         '#f
                         '#f))
                       (_%key150649%_ _%e150623150646%_)
                       (_%e150624150651%_
                        (##unchecked-structure-ref
                         _%out150618150628%_
                         '3
                         '#f
                         '#f))
                       (_%phi150654%_ _%e150624150651%_)
                       (_%e150625150656%_
                        (##unchecked-structure-ref
                         _%out150618150628%_
                         '4
                         '#f
                         '#f))
                       (_%e150626150659%_
                        (##unchecked-structure-ref
                         _%out150618150628%_
                         '5
                         '#f
                         '#f)))
                  (_%K150621150638%_
                   _%phi150654%_
                   _%key150649%_
                   _%ctx150644%_))
                (_%E150620150631%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out150541%_ _%rename150542%_ _%dphi150543%_)
        (let* ((_%out150544150554%_ _%out150541%_)
               (_%E150546150557%_
                (lambda ()
                  (error '"No clause matching"
                         _%out150544150554%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K150547150569%_
                (lambda (_%weak?150560%_
                         _%name150561%_
                         _%phi150562%_
                         _%key150563%_
                         _%ctx150564%_)
                  (##structure
                   gx#module-import::t
                   _%out150541%_
                   (let ((_%$e150566%_ _%rename150542%_))
                     (if _%$e150566%_ _%$e150566%_ _%name150561%_))
                   (fx+ _%phi150562%_ _%dphi150543%_)
                   _%weak?150560%_))))
          (if (##structure-direct-instance-of?
               _%out150544150554%_
               'gx#module-export::t)
              (let* ((_%e150548150572%_
                      (##unchecked-structure-ref
                       _%out150544150554%_
                       '1
                       '#f
                       '#f))
                     (_%ctx150575%_ _%e150548150572%_)
                     (_%e150549150577%_
                      (##unchecked-structure-ref
                       _%out150544150554%_
                       '2
                       '#f
                       '#f))
                     (_%key150580%_ _%e150549150577%_)
                     (_%e150550150582%_
                      (##unchecked-structure-ref
                       _%out150544150554%_
                       '3
                       '#f
                       '#f))
                     (_%phi150585%_ _%e150550150582%_)
                     (_%e150551150587%_
                      (##unchecked-structure-ref
                       _%out150544150554%_
                       '4
                       '#f
                       '#f))
                     (_%name150590%_ _%e150551150587%_)
                     (_%e150552150592%_
                      (##unchecked-structure-ref
                       _%out150544150554%_
                       '5
                       '#f
                       '#f))
                     (_%weak?150595%_ _%e150552150592%_))
                (_%K150547150569%_
                 _%weak?150595%_
                 _%name150590%_
                 _%phi150585%_
                 _%key150580%_
                 _%ctx150575%_))
              (_%E150546150557%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out150600%_)
        (let* ((_%rename150602%_ '#f) (_%dphi150604%_ '0))
          (gx#core-module-export->import__%
           _%out150600%_
           _%rename150602%_
           _%dphi150604%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out150606%_ _%rename150607%_)
        (let ((_%dphi150609%_ '0))
          (gx#core-module-export->import__%
           _%out150606%_
           _%rename150607%_
           _%dphi150609%_))))
    (define gx#core-module-export->import
      (lambda _g152685_
        (let ((_g152686_ (##length _g152685_)))
          (cond ((##fx= _g152686_ 1)
                 (apply gx#core-module-export->import__0 _g152685_))
                ((##fx= _g152686_ 2)
                 (apply gx#core-module-export->import__1 _g152685_))
                ((##fx= _g152686_ 3)
                 (apply gx#core-module-export->import__% _g152685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g152685_))))))
    (define gx#core-expand-module%
      (lambda (_%stx150440%_)
        (letrec ((_%make-context150442%_
                  (lambda (_%id150519%_)
                    (let* ((_%super150521%_ (gx#current-expander-context))
                           (_%bind-id150523%_ (gx#stx-e _%id150519%_))
                           (_%mod-id150525%_
                            (if (##structure-instance-of?
                                 _%super150521%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super150521%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id150523%_)
                                _%bind-id150523%_))
                           (_%ns150527%_ (symbol->string _%mod-id150525%_))
                           (_%path150537%_
                            (if (##structure-instance-of?
                                 _%super150521%_
                                 'gx#module-context::t)
                                (let ((_%path150529%_
                                       (##unchecked-structure-ref
                                        _%super150521%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path150529%_)
                                          (null? _%path150529%_))
                                      (cons _%bind-id150523%_ _%path150529%_)
                                      (if (not _%path150529%_)
                                          _%bind-id150523%_
                                          (cons _%bind-id150523%_
                                                (cons _%path150529%_ '())))))
                                _%bind-id150523%_))
                           (__obj152662
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
                       __obj152662
                       _%mod-id150525%_
                       _%super150521%_
                       _%ns150527%_
                       _%path150537%_)
                      __obj152662)))
                 (_%valid-module-id?150443%_
                  (lambda (_%id150494%_)
                    (let* ((_%str150496%_ (symbol->string _%id150494%_))
                           (_%len150498%_ (##string-length _%str150496%_)))
                      (if (##fx>= _%len150498%_ '1)
                          (let _%loop150501%_ ((_%index150503%_
                                                (##fx- (##string-length
                                                        _%str150496%_)
                                                       '1)))
                            (if (##fx>= _%index150503%_ '0)
                                (let ((_%c150505%_
                                       (string-ref
                                        _%str150496%_
                                        _%index150503%_)))
                                  (if (or (and (##char>=? _%c150505%_ '#\a)
                                               (##char<=? _%c150505%_ '#\z))
                                          (and (##char>=? _%c150505%_ '#\A)
                                               (##char<=? _%c150505%_ '#\Z))
                                          (and (##char>=? _%c150505%_ '#\0)
                                               (##char<=? _%c150505%_ '#\9))
                                          (##char=? _%c150505%_ '#\_)
                                          (##char=? _%c150505%_ '#\-))
                                      (_%loop150501%_
                                       (##fx- _%index150503%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e150444150454%_ _%stx150440%_)
                 (_%E150446150458%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150444150454%_)))
                 (_%E150445150490%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150444150454%_)
                        (let ((_%e150447150462%_
                               (gx#syntax-e _%e150444150454%_)))
                          (let ((_%hd150448150465%_ (##car _%e150447150462%_))
                                (_%tl150449150467%_ (##cdr _%e150447150462%_)))
                            (if (gx#stx-pair? _%tl150449150467%_)
                                (let ((_%e150450150470%_
                                       (gx#syntax-e _%tl150449150467%_)))
                                  (let ((_%hd150451150473%_
                                         (##car _%e150450150470%_))
                                        (_%tl150452150475%_
                                         (##cdr _%e150450150470%_)))
                                    (let* ((_%id150478%_ _%hd150451150473%_)
                                           (_%body150480%_ _%tl150452150475%_))
                                      (if (and (gx#identifier? _%id150478%_)
                                               (gx#stx-list? _%body150480%_))
                                          (if (_%valid-module-id?150443%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx150482%_
                                                      (_%make-context150442%_
                                                       _%id150478%_))
                                                     (_%body150484%_
                                                      (gx#core-expand-module-begin
                                                       _%body150480%_
                                                       _%ctx150482%_))
                                                     (_%body150486%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body150484%_)
                                                       (gx#stx-source
                                                        _%stx150440%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx150482%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body150486%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx150482%_
                                                 _%body150486%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id150478%_
                                                 _%ctx150482%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id150478%_)
                                                  _%body150486%_)
                                                 (gx#stx-source
                                                  _%stx150440%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx150440%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E150446150458%_)))))
                                (_%E150446150458%_))))
                        (_%E150446150458%_)))))
            (_%E150445150490%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body150405%_ _%ctx150406%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx150410%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body150405%_)))
                     (_%e150411150418%_ _%stx150410%_)
                     (_%E150413150422%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx150410%_)))
                     (_%E150412150436%_
                      (lambda ()
                        (if (gx#stx-pair? _%e150411150418%_)
                            (let ((_%e150414150426%_
                                   (gx#syntax-e _%e150411150418%_)))
                              (let ((_%hd150415150429%_
                                     (##car _%e150414150426%_))
                                    (_%tl150416150431%_
                                     (##cdr _%e150414150426%_)))
                                (if (and (gx#identifier? _%hd150415150429%_)
                                         (gx#core-identifier=?
                                          _%hd150415150429%_
                                          '%#begin-module))
                                    (let ((_%body150434%_ _%tl150416150431%_))
                                      (if (gx#sealed-syntax? _%stx150410%_)
                                          _%body150434%_
                                          (gx#core-expand-module-body
                                           _%body150434%_)))
                                    (_%E150413150422%_))))
                            (_%E150413150422%_)))))
                (_%E150412150436%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx150406%_)))
    (define gx#core-expand-module-body
      (lambda (_%body150201%_)
        (letrec ((_%expand-special150203%_
                  (lambda (_%hd150332%_ _%K150333%_ _%rest150334%_ _%r150335%_)
                    (let* ((_%e150336150353%_ _%hd150332%_)
                           (_%E150348150357%_
                            (lambda ()
                              (_%K150333%_
                               _%rest150334%_
                               (cons (gx#core-expand-top _%hd150332%_)
                                     _%r150335%_))))
                           (_%E150338150369%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150336150353%_)
                                  (let ((_%e150349150361%_
                                         (gx#syntax-e _%e150336150353%_)))
                                    (let ((_%hd150350150364%_
                                           (##car _%e150349150361%_))
                                          (_%tl150351150366%_
                                           (##cdr _%e150349150361%_)))
                                      (if (and (gx#identifier?
                                                _%hd150350150364%_)
                                               (gx#core-identifier=?
                                                _%hd150350150364%_
                                                '%#export))
                                          (_%K150333%_
                                           _%rest150334%_
                                           (cons _%hd150332%_ _%r150335%_))
                                          (_%E150348150357%_))))
                                  (_%E150348150357%_))))
                           (_%E150337150401%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150336150353%_)
                                  (let ((_%e150339150373%_
                                         (gx#syntax-e _%e150336150353%_)))
                                    (let ((_%hd150340150376%_
                                           (##car _%e150339150373%_))
                                          (_%tl150341150378%_
                                           (##cdr _%e150339150373%_)))
                                      (if (and (gx#identifier?
                                                _%hd150340150376%_)
                                               (gx#core-identifier=?
                                                _%hd150340150376%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl150341150378%_)
                                              (let ((_%e150342150381%_
                                                     (gx#syntax-e
                                                      _%tl150341150378%_)))
                                                (let ((_%hd150343150384%_
                                                       (##car _%e150342150381%_))
                                                      (_%tl150344150386%_
                                                       (##cdr _%e150342150381%_)))
                                                  (let ((_%hd-bind150389%_
                                                         _%hd150343150384%_))
                                                    (if (gx#stx-pair?
                                                         _%tl150344150386%_)
                                                        (let ((_%e150345150391%_
                                                               (gx#syntax-e
                                                                _%tl150344150386%_)))
                                                          (let ((_%hd150346150394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e150345150391%_))
                        (_%tl150347150396%_ (##cdr _%e150345150391%_)))
                    (let ((_%expr150399%_ _%hd150346150394%_))
                      (if (gx#stx-null? _%tl150347150396%_)
                          (if (gx#core-bind-values? _%hd-bind150389%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind150389%_)
                                (_%K150333%_
                                 _%rest150334%_
                                 (cons _%hd150332%_ _%r150335%_)))
                              (_%E150338150369%_))
                          (_%E150338150369%_)))))
                (_%E150338150369%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150338150369%_))
                                          (_%E150338150369%_))))
                                  (_%E150338150369%_)))))
                      (_%E150337150401%_))))
                 (_%expand-body150204%_
                  (lambda (_%rbody150206%_)
                    (let _%lp150208%_ ((_%rest150210%_ _%rbody150206%_)
                                       (_%body150211%_ '()))
                      (let* ((_%rest150212150220%_ _%rest150210%_)
                             (_%else150214150228%_ (lambda () _%body150211%_))
                             (_%K150216150320%_
                              (lambda (_%rest150231%_ _%hd150232%_)
                                (let* ((_%e150233150254%_ _%hd150232%_)
                                       (_%E150249150258%_
                                        (lambda ()
                                          (_%lp150208%_
                                           _%rest150231%_
                                           (cons (gx#core-expand-expression
                                                  _%hd150232%_)
                                                 _%body150211%_))))
                                       (_%E150245150272%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150233150254%_)
                                              (let ((_%e150250150262%_
                                                     (gx#syntax-e
                                                      _%e150233150254%_)))
                                                (let ((_%hd150251150265%_
                                                       (##car _%e150250150262%_))
                                                      (_%tl150252150267%_
                                                       (##cdr _%e150250150262%_)))
                                                  (let ((_%form150270%_
                                                         _%hd150251150265%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form150270%_
                                                         gx#special-form-binding?)
                                                        (_%lp150208%_
                                                         _%rest150231%_
                                                         (cons _%hd150232%_
                                                               _%body150211%_))
                                                        (_%E150249150258%_)))))
                                              (_%E150249150258%_))))
                                       (_%E150235150284%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150233150254%_)
                                              (let ((_%e150246150276%_
                                                     (gx#syntax-e
                                                      _%e150233150254%_)))
                                                (let ((_%hd150247150279%_
                                                       (##car _%e150246150276%_))
                                                      (_%tl150248150281%_
                                                       (##cdr _%e150246150276%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150247150279%_)
                                                           (gx#core-identifier=?
                                                            _%hd150247150279%_
                                                            '%#export))
                                                      (_%lp150208%_
                                                       _%rest150231%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd150232%_)
                                                             _%body150211%_))
                                                      (_%E150245150272%_))))
                                              (_%E150245150272%_))))
                                       (_%E150234150316%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150233150254%_)
                                              (let ((_%e150236150288%_
                                                     (gx#syntax-e
                                                      _%e150233150254%_)))
                                                (let ((_%hd150237150291%_
                                                       (##car _%e150236150288%_))
                                                      (_%tl150238150293%_
                                                       (##cdr _%e150236150288%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150237150291%_)
                                                           (gx#core-identifier=?
                                                            _%hd150237150291%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl150238150293%_)
                                                          (let ((_%e150239150296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl150238150293%_)))
                    (let ((_%hd150240150299%_ (##car _%e150239150296%_))
                          (_%tl150241150301%_ (##cdr _%e150239150296%_)))
                      (let ((_%hd-bind150304%_ _%hd150240150299%_))
                        (if (gx#stx-pair? _%tl150241150301%_)
                            (let ((_%e150242150306%_
                                   (gx#syntax-e _%tl150241150301%_)))
                              (let ((_%hd150243150309%_
                                     (##car _%e150242150306%_))
                                    (_%tl150244150311%_
                                     (##cdr _%e150242150306%_)))
                                (let ((_%expr150314%_ _%hd150243150309%_))
                                  (if (gx#stx-null? _%tl150244150311%_)
                                      (_%lp150208%_
                                       _%rest150231%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind150304%_)
                                               (gx#core-expand-expression
                                                _%expr150314%_))
                                              (gx#stx-source _%hd150232%_))
                                             _%body150211%_))
                                      (_%E150235150284%_)))))
                            (_%E150235150284%_)))))
                  (_%E150235150284%_))
              (_%E150235150284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150235150284%_)))))
                                  (_%E150234150316%_)))))
                        (if (pair? _%rest150212150220%_)
                            (let ((_%hd150217150323%_
                                   (##car _%rest150212150220%_))
                                  (_%tl150218150325%_
                                   (##cdr _%rest150212150220%_)))
                              (let* ((_%hd150328%_ _%hd150217150323%_)
                                     (_%rest150330%_ _%tl150218150325%_))
                                (_%K150216150320%_
                                 _%rest150330%_
                                 _%hd150328%_)))
                            (_%else150214150228%_)))))))
          (_%expand-body150204%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body150201%_)
            _%expand-special150203%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx150042%_
               _%expanded?150043%_
               _%method150044%_
               _%current-phi150045%_
               _%expand1150046%_)
        (letrec ((_%K150048%_
                  (lambda (_%rest150168%_ _%r150169%_)
                    (let* ((_%e150170150177%_ _%rest150168%_)
                           (_%E150172150181%_ (lambda () _%r150169%_))
                           (_%E150171150197%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150170150177%_)
                                  (let ((_%e150173150185%_
                                         (gx#syntax-e _%e150170150177%_)))
                                    (let ((_%hd150174150188%_
                                           (##car _%e150173150185%_))
                                          (_%tl150175150190%_
                                           (##cdr _%e150173150185%_)))
                                      (let* ((_%hd150193%_ _%hd150174150188%_)
                                             (_%rest150195%_
                                              _%tl150175150190%_))
                                        (_%step150049%_
                                         _%hd150193%_
                                         _%rest150195%_
                                         _%r150169%_))))
                                  (_%E150172150181%_)))))
                      (_%E150171150197%_))))
                 (_%step150049%_
                  (lambda (_%hd150082%_ _%rest150083%_ _%r150084%_)
                    (let* ((_%e150085150103%_ _%hd150082%_)
                           (_%E150098150107%_
                            (lambda ()
                              (if (_%expanded?150043%_ (gx#stx-e _%hd150082%_))
                                  (_%K150048%_
                                   _%rest150083%_
                                   (cons (gx#stx-e _%hd150082%_) _%r150084%_))
                                  (_%expand1150046%_
                                   _%hd150082%_
                                   _%K150048%_
                                   _%rest150083%_
                                   _%r150084%_))))
                           (_%E150094150123%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150085150103%_)
                                  (let ((_%e150099150111%_
                                         (gx#syntax-e _%e150085150103%_)))
                                    (let ((_%hd150100150114%_
                                           (##car _%e150099150111%_))
                                          (_%tl150101150116%_
                                           (##cdr _%e150099150111%_)))
                                      (let* ((_%macro150119%_
                                              _%hd150100150114%_)
                                             (_%body150121%_
                                              _%tl150101150116%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro150119%_
                                             gx#syntax-binding?)
                                            (_%K150048%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro150119%_)
                                                    _%hd150082%_
                                                    _%method150044%_)
                                                   _%rest150083%_)
                                             _%r150084%_)
                                            (_%E150098150107%_)))))
                                  (_%E150098150107%_))))
                           (_%E150087150137%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150085150103%_)
                                  (let ((_%e150095150127%_
                                         (gx#syntax-e _%e150085150103%_)))
                                    (let ((_%hd150096150130%_
                                           (##car _%e150095150127%_))
                                          (_%tl150097150132%_
                                           (##cdr _%e150095150127%_)))
                                      (if (eq? (gx#stx-e _%hd150096150130%_)
                                               'begin:)
                                          (let ((_%body150135%_
                                                 _%tl150097150132%_))
                                            (_%K150048%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest150083%_
                                              _%body150135%_)
                                             _%r150084%_))
                                          (_%E150094150123%_))))
                                  (_%E150094150123%_))))
                           (_%E150086150164%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150085150103%_)
                                  (let ((_%e150088150141%_
                                         (gx#syntax-e _%e150085150103%_)))
                                    (let ((_%hd150089150144%_
                                           (##car _%e150088150141%_))
                                          (_%tl150090150146%_
                                           (##cdr _%e150088150141%_)))
                                      (if (eq? (gx#stx-e _%hd150089150144%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl150090150146%_)
                                              (let ((_%e150091150149%_
                                                     (gx#syntax-e
                                                      _%tl150090150146%_)))
                                                (let ((_%hd150092150152%_
                                                       (##car _%e150091150149%_))
                                                      (_%tl150093150154%_
                                                       (##cdr _%e150091150149%_)))
                                                  (let* ((_%dphi150157%_
                                                          _%hd150092150152%_)
                                                         (_%body150159%_
                                                          _%tl150093150154%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi150157%_)
                                                        (let ((_%rbody150162%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K150048%_ _%body150159%_ '()))
                        _%current-phi150045%_
                        (fx+ (gx#stx-e _%dphi150157%_)
                             (_%current-phi150045%_)))))
                  (_%K150048%_
                   _%rest150083%_
                   (__foldr1 cons _%r150084%_ _%rbody150162%_)))
                (_%E150087150137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150087150137%_))
                                          (_%E150087150137%_))))
                                  (_%E150087150137%_)))))
                      (_%E150086150164%_)))))
          (let* ((_%e150050150057%_ _%stx150042%_)
                 (_%E150052150061%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150050150057%_)))
                 (_%E150051150078%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150050150057%_)
                        (let ((_%e150053150065%_
                               (gx#syntax-e _%e150050150057%_)))
                          (let ((_%hd150054150068%_ (##car _%e150053150065%_))
                                (_%tl150055150070%_ (##cdr _%e150053150065%_)))
                            (let ((_%body150073%_ _%tl150055150070%_))
                              (if (_%current-phi150045%_)
                                  (_%K150048%_ _%body150073%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K150048%_ _%body150073%_ '()))
                                   _%current-phi150045%_
                                   (gx#current-expander-phi))))))
                        (_%E150052150061%_)))))
            (_%E150051150078%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx149696%_ _%internal-expand?149697%_)
        (letrec ((_%expand1149699%_
                  (lambda (_%hd150014%_ _%K150015%_ _%rest150016%_ _%r150017%_)
                    (if (gx#core-bound-module? _%hd150014%_)
                        (_%import1149700%_
                         (gx#syntax-local-e__0 _%hd150014%_)
                         _%K150015%_
                         _%rest150016%_
                         _%r150017%_)
                        (if (gx#core-library-module-path? _%hd150014%_)
                            (_%import1149700%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd150014%_))
                             _%K150015%_
                             _%rest150016%_
                             _%r150017%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd150014%_)
                                (_%import1149700%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd150014%_))
                                 _%K150015%_
                                 _%rest150016%_
                                 _%r150017%_)
                                (let ((_%e150023%_ (gx#stx-e _%hd150014%_)))
                                  (if (pair? _%e150023%_)
                                      (let ((_%$e150026%_
                                             (gx#stx-e (##car _%e150023%_))))
                                        (if (eq? 'spec: _%$e150026%_)
                                            (_%import-spec149703%_
                                             _%hd150014%_
                                             _%K150015%_
                                             _%rest150016%_
                                             _%r150017%_)
                                            (if (eq? 'in: _%$e150026%_)
                                                (_%import-submodule149701%_
                                                 _%hd150014%_
                                                 _%K150015%_
                                                 _%rest150016%_
                                                 _%r150017%_)
                                                (if (eq? 'runtime:
                                                         _%$e150026%_)
                                                    (_%import-runtime149702%_
                                                     _%hd150014%_
                                                     _%K150015%_
                                                     _%rest150016%_
                                                     _%r150017%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx149696%_
                                                     _%hd150014%_)))))
                                      (if (string? _%e150023%_)
                                          (_%import1149700%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd150014%_
                                             (gx#stx-source _%stx149696%_)))
                                           _%K150015%_
                                           _%rest150016%_
                                           _%r150017%_)
                                          (if (##structure-instance-of?
                                               _%e150023%_
                                               'gx#module-context::t)
                                              (_%K150015%_
                                               _%rest150016%_
                                               (cons _%e150023%_ _%r150017%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx149696%_
                                               _%hd150014%_))))))))))
                 (_%import1149700%_
                  (lambda (_%ctx150003%_
                           _%K150004%_
                           _%rest150005%_
                           _%r150006%_)
                    (let ((_%dphi150008%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K150004%_
                       _%rest150005%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx150003%_
                              _%dphi150008%_
                              (map (lambda (_%g150009150011%_)
                                     (gx#core-module-export->import__%
                                      _%g150009150011%_
                                      '#f
                                      _%dphi150008%_))
                                   (##unchecked-structure-ref
                                    _%ctx150003%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r150006%_)))))
                 (_%import-submodule149701%_
                  (lambda (_%hd149970%_ _%K149971%_ _%rest149972%_ _%r149973%_)
                    (let* ((_%e149974149981%_ _%hd149970%_)
                           (_%E149976149985%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149974149981%_)))
                           (_%E149975149999%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149974149981%_)
                                  (let ((_%e149977149989%_
                                         (gx#syntax-e _%e149974149981%_)))
                                    (let ((_%hd149978149992%_
                                           (##car _%e149977149989%_))
                                          (_%tl149979149994%_
                                           (##cdr _%e149977149989%_)))
                                      (let ((_%spath149997%_
                                             _%tl149979149994%_))
                                        (_%import1149700%_
                                         (_%import-spec-source149704%_
                                          _%spath149997%_)
                                         _%K149971%_
                                         _%rest149972%_
                                         _%r149973%_))))
                                  (_%E149976149985%_)))))
                      (_%E149975149999%_))))
                 (_%import-runtime149702%_
                  (lambda (_%hd149937%_ _%K149938%_ _%rest149939%_ _%r149940%_)
                    (let* ((_%e149941149948%_ _%hd149937%_)
                           (_%E149943149952%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149941149948%_)))
                           (_%E149942149966%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149941149948%_)
                                  (let ((_%e149944149956%_
                                         (gx#syntax-e _%e149941149948%_)))
                                    (let ((_%hd149945149959%_
                                           (##car _%e149944149956%_))
                                          (_%tl149946149961%_
                                           (##cdr _%e149944149956%_)))
                                      (let ((_%spath149964%_
                                             _%tl149946149961%_))
                                        (_%K149938%_
                                         _%rest149939%_
                                         (cons (_%import-spec-source149704%_
                                                _%spath149964%_)
                                               _%r149940%_)))))
                                  (_%E149943149952%_)))))
                      (_%E149942149966%_))))
                 (_%import-spec149703%_
                  (lambda (_%hd149775%_ _%K149776%_ _%rest149777%_ _%r149778%_)
                    (let* ((_%e149779149796%_ _%hd149775%_)
                           (_%E149788149800%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149779149796%_)))
                           (_%E149781149911%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149779149796%_)
                                  (let ((_%e149789149804%_
                                         (gx#syntax-e _%e149779149796%_)))
                                    (let ((_%hd149790149807%_
                                           (##car _%e149789149804%_))
                                          (_%tl149791149809%_
                                           (##cdr _%e149789149804%_)))
                                      (if (gx#stx-pair? _%tl149791149809%_)
                                          (let ((_%e149792149812%_
                                                 (gx#syntax-e
                                                  _%tl149791149809%_)))
                                            (let ((_%hd149793149815%_
                                                   (##car _%e149792149812%_))
                                                  (_%tl149794149817%_
                                                   (##cdr _%e149792149812%_)))
                                              (let* ((_%path149820%_
                                                      _%hd149793149815%_)
                                                     (_%specs149822%_
                                                      _%tl149794149817%_))
                                                (let ((_%src-ctx149824%_
                                                       (_%import-spec-source149704%_
                                                        _%path149820%_))
                                                      (_%exports149825%_
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
                                                      (_%specs149826%_
                                                       (gx#syntax->list
                                                        _%specs149822%_)))
                                                  (for-each
                                                   (lambda (_%out149828%_)
                                                     (__hash-put!
                                                      _%exports149825%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out149828%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out149828%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out149828%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx149824%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K149776%_
                                                   _%rest149777%_
                                                   (__foldl1
                                                    (lambda (_%spec149830%_
                                                             _%r149831%_)
                                                      (let* ((_%e149832149848%_
                                                              _%spec149830%_)
                                                             (_%E149834149852%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e149832149848%_)))
                     (_%E149833149907%_
                      (lambda ()
                        (if (gx#stx-pair? _%e149832149848%_)
                            (let ((_%e149835149856%_
                                   (gx#syntax-e _%e149832149848%_)))
                              (let ((_%hd149836149859%_
                                     (##car _%e149835149856%_))
                                    (_%tl149837149861%_
                                     (##cdr _%e149835149856%_)))
                                (let ((_%phi149864%_ _%hd149836149859%_))
                                  (if (gx#stx-pair? _%tl149837149861%_)
                                      (let ((_%e149838149866%_
                                             (gx#syntax-e _%tl149837149861%_)))
                                        (let ((_%hd149839149869%_
                                               (##car _%e149838149866%_))
                                              (_%tl149840149871%_
                                               (##cdr _%e149838149866%_)))
                                          (let ((_%name149874%_
                                                 _%hd149839149869%_))
                                            (if (gx#stx-pair?
                                                 _%tl149840149871%_)
                                                (let ((_%e149841149876%_
                                                       (gx#syntax-e
                                                        _%tl149840149871%_)))
                                                  (let ((_%hd149842149879%_
                                                         (##car _%e149841149876%_))
                                                        (_%tl149843149881%_
                                                         (##cdr _%e149841149876%_)))
                                                    (let ((_%src-phi149884%_
                                                           _%hd149842149879%_))
                                                      (if (gx#stx-pair?
                                                           _%tl149843149881%_)
                                                          (let ((_%e149844149886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl149843149881%_)))
                    (let ((_%hd149845149889%_ (##car _%e149844149886%_))
                          (_%tl149846149891%_ (##cdr _%e149844149886%_)))
                      (let ((_%src-name149894%_ _%hd149845149889%_))
                        (if (gx#stx-null? _%tl149846149891%_)
                            (if (and (gx#stx-fixnum? _%src-phi149884%_)
                                     (gx#identifier? _%src-name149894%_)
                                     (gx#stx-fixnum? _%phi149864%_)
                                     (gx#identifier? _%name149874%_))
                                (let ((_%src-phi149896%_
                                       (gx#stx-e _%src-phi149884%_))
                                      (_%src-name149897%_
                                       (gx#core-identifier-key
                                        _%src-name149894%_))
                                      (_%phi149898%_ (gx#stx-e _%phi149864%_))
                                      (_%name149899%_
                                       (gx#core-identifier-key
                                        _%name149874%_)))
                                  (let ((_%$e149901%_
                                         (__hash-get
                                          _%exports149825%_
                                          (cons _%src-phi149896%_
                                                _%src-name149897%_))))
                                    (if _%$e149901%_
                                        ((lambda (_%out149904%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out149904%_
                                                  _%name149899%_
                                                  (fx- _%phi149898%_
                                                       _%src-phi149896%_))
                                                 _%r149831%_))
                                         _%$e149901%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx149696%_
                                         _%hd149775%_))))
                                (_%E149834149852%_))
                            (_%E149834149852%_)))))
                  (_%E149834149852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E149834149852%_)))))
                                      (_%E149834149852%_)))))
                            (_%E149834149852%_)))))
                (_%E149833149907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r149778%_
                                                    _%specs149826%_))))))
                                          (_%E149788149800%_))))
                                  (_%E149788149800%_))))
                           (_%E149780149933%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149779149796%_)
                                  (let ((_%e149782149915%_
                                         (gx#syntax-e _%e149779149796%_)))
                                    (let ((_%hd149783149918%_
                                           (##car _%e149782149915%_))
                                          (_%tl149784149920%_
                                           (##cdr _%e149782149915%_)))
                                      (if (gx#stx-pair? _%tl149784149920%_)
                                          (let ((_%e149785149923%_
                                                 (gx#syntax-e
                                                  _%tl149784149920%_)))
                                            (let ((_%hd149786149926%_
                                                   (##car _%e149785149923%_))
                                                  (_%tl149787149928%_
                                                   (##cdr _%e149785149923%_)))
                                              (let ((_%path149931%_
                                                     _%hd149786149926%_))
                                                (if (gx#stx-null?
                                                     _%tl149787149928%_)
                                                    (_%K149776%_
                                                     _%rest149777%_
                                                     (cons (_%import-spec-source149704%_
                                                            _%path149931%_)
                                                           _%r149778%_))
                                                    (_%E149781149911%_)))))
                                          (_%E149781149911%_))))
                                  (_%E149781149911%_)))))
                      (_%E149780149933%_))))
                 (_%import-spec-source149704%_
                  (lambda (_%spath149773%_)
                    (gx#core-import-nested-module
                     _%spath149773%_
                     _%stx149696%_)))
                 (_%import!149705%_
                  (lambda (_%rbody149718%_)
                    (letrec* ((_%current-ctx149720%_
                               (gx#current-expander-context))
                              (_%deps149721%_ (make-hash-table-eq))
                              (_%bind!149722%_
                               (lambda (_%hd149771%_)
                                 (gx#core-bind-import!__1
                                  _%hd149771%_
                                  _%current-ctx149720%_))))
                      (let _%lp149724%_ ((_%rest149726%_ _%rbody149718%_)
                                         (_%body149727%_ '()))
                        (let* ((_%rest149728149736%_ _%rest149726%_)
                               (_%else149730149747%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx149720%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx149720%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx149720%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body149727%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx149744%_ _%_149745%_)
                                     (gx#eval-module _%ctx149744%_))
                                   _%deps149721%_)
                                  _%body149727%_))
                               (_%K149732149759%_
                                (lambda (_%rest149750%_ _%hd149751%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd149751%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!149722%_ _%hd149751%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd149751%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd149751%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps149721%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd149751%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd149751%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!149722%_
                                             (##unchecked-structure-ref
                                              _%hd149751%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd149751%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps149721%_
                                                 (##unchecked-structure-ref
                                                  _%hd149751%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e149755%_
                                                 (##structure-instance-of?
                                                  _%hd149751%_
                                                  'gx#module-context::t)))
                                            (if _%$e149755%_
                                                _%$e149755%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx149696%_
                                                 _%hd149751%_)))))
                                  (_%lp149724%_
                                   _%rest149750%_
                                   (cons _%hd149751%_ _%body149727%_)))))
                          (if (pair? _%rest149728149736%_)
                              (let ((_%hd149733149762%_
                                     (##car _%rest149728149736%_))
                                    (_%tl149734149764%_
                                     (##cdr _%rest149728149736%_)))
                                (let* ((_%hd149767%_ _%hd149733149762%_)
                                       (_%rest149769%_ _%tl149734149764%_))
                                  (_%K149732149759%_
                                   _%rest149769%_
                                   _%hd149767%_)))
                              (_%else149730149747%_)))))))
                 (_%expanded-import?149706%_
                  (lambda (_%e149710%_)
                    (let ((_%$e149712%_
                           (##structure-direct-instance-of?
                            _%e149710%_
                            'gx#import-set::t)))
                      (if _%$e149712%_
                          _%$e149712%_
                          (let ((_%$e149715%_
                                 (##structure-direct-instance-of?
                                  _%e149710%_
                                  'gx#module-import::t)))
                            (if _%$e149715%_
                                _%$e149715%_
                                (##structure-instance-of?
                                 _%e149710%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody149708%_
                 (gx#core-expand-import/export
                  _%stx149696%_
                  _%expanded-import?149706%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1149699%_)))
            (if _%internal-expand?149697%_
                (reverse _%rbody149708%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!149705%_ _%rbody149708%_))
                 (gx#stx-source _%stx149696%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx150035%_)
        (let ((_%internal-expand?150037%_ '#f))
          (gx#core-expand-import%__%
           _%stx150035%_
           _%internal-expand?150037%_))))
    (define gx#core-expand-import%
      (lambda _g152687_
        (let ((_g152688_ (##length _g152687_)))
          (cond ((##fx= _g152688_ 1)
                 (apply gx#core-expand-import%__0 _g152687_))
                ((##fx= _g152688_ 2)
                 (apply gx#core-expand-import%__% _g152687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g152687_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath149623%_ _%where149624%_)
        (let* ((_%e149625149632%_ _%spath149623%_)
               (_%E149627149636%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149625149632%_)))
               (_%E149626149691%_
                (lambda ()
                  (if (gx#stx-pair? _%e149625149632%_)
                      (let ((_%e149628149640%_
                             (gx#syntax-e _%e149625149632%_)))
                        (let ((_%hd149629149643%_ (##car _%e149628149640%_))
                              (_%tl149630149645%_ (##cdr _%e149628149640%_)))
                          (let* ((_%origin149648%_ _%hd149629149643%_)
                                 (_%sub149650%_ _%tl149630149645%_)
                                 (_%origin-ctx149652%_
                                  (if (gx#stx-false? _%origin149648%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin149648%_))))
                            (let _%lp149654%_ ((_%rest149656%_ _%sub149650%_)
                                               (_%ctx149657%_
                                                _%origin-ctx149652%_))
                              (let* ((_%e149658149665%_ _%rest149656%_)
                                     (_%E149660149669%_
                                      (lambda () _%ctx149657%_))
                                     (_%E149659149687%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e149658149665%_)
                                            (let ((_%e149661149673%_
                                                   (gx#syntax-e
                                                    _%e149658149665%_)))
                                              (let ((_%hd149662149676%_
                                                     (##car _%e149661149673%_))
                                                    (_%tl149663149678%_
                                                     (##cdr _%e149661149673%_)))
                                                (let* ((_%id149681%_
                                                        _%hd149662149676%_)
                                                       (_%rest149683%_
                                                        _%tl149663149678%_)
                                                       (_%bind149685%_
                                                        (gx#resolve-identifier__%
                                                         _%id149681%_
                                                         '0
                                                         _%ctx149657%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind149685%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind149685%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where149624%_
                                                       _%spath149623%_
                                                       _%id149681%_))
                                                  (_%lp149654%_
                                                   _%rest149683%_
                                                   (##unchecked-structure-ref
                                                    _%bind149685%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E149660149669%_)))))
                                (_%E149659149687%_))))))
                      (_%E149627149636%_)))))
          (_%E149626149691%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd149621%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd149621%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx149116%_ _%internal-expand?149117%_)
        (letrec* ((_%make-export__152615152616%_
                   (lambda (_%bind149569%_
                            _%phi149570%_
                            _%ctx149571%_
                            _%name149572%_)
                     (let* ((_%key149574%_
                             (##unchecked-structure-ref
                              _%bind149569%_
                              '2
                              '#f
                              '#f))
                            (_%export-key149576%_
                             (if _%name149572%_
                                 (gx#core-identifier-key _%name149572%_)
                                 _%key149574%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx149571%_
                        _%key149574%_
                        _%phi149570%_
                        _%export-key149576%_
                        (let ((_%$e149579%_
                               (##structure-instance-of?
                                _%bind149569%_
                                'gx#extern-binding::t)))
                          (if _%$e149579%_
                              _%$e149579%_
                              (##structure-direct-instance-of?
                               _%bind149569%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__152617152620%_
                   (lambda (_%bind149585%_)
                     (let* ((_%phi149587%_ (gx#current-export-expander-phi))
                            (_%ctx149589%_ (gx#current-expander-context))
                            (_%name149591%_ '#f))
                       (_%make-export__152615152616%_
                        _%bind149585%_
                        _%phi149587%_
                        _%ctx149589%_
                        _%name149591%_))))
                  (_%make-export__1__152618152621%_
                   (lambda (_%bind149593%_ _%phi149594%_)
                     (let* ((_%ctx149596%_ (gx#current-expander-context))
                            (_%name149598%_ '#f))
                       (_%make-export__152615152616%_
                        _%bind149593%_
                        _%phi149594%_
                        _%ctx149596%_
                        _%name149598%_))))
                  (_%make-export__2__152619152622%_
                   (lambda (_%bind149600%_ _%phi149601%_ _%ctx149602%_)
                     (let ((_%name149604%_ '#f))
                       (_%make-export__152615152616%_
                        _%bind149600%_
                        _%phi149601%_
                        _%ctx149602%_
                        _%name149604%_))))
                  (_%make-export149119%_
                   (lambda _g152689_
                     (let ((_g152690_ (##length _g152689_)))
                       (cond ((##fx= _g152690_ 1)
                              (apply _%make-export__0__152617152620%_
                                     _g152689_))
                             ((##fx= _g152690_ 2)
                              (apply _%make-export__1__152618152621%_
                                     _g152689_))
                             ((##fx= _g152690_ 3)
                              (apply _%make-export__2__152619152622%_
                                     _g152689_))
                             ((##fx= _g152690_ 4)
                              (apply _%make-export__152615152616%_ _g152689_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g152689_))))))
                  (_%expand1149120%_
                   (lambda (_%hd149274%_
                            _%K149275%_
                            _%rest149276%_
                            _%r149277%_)
                     (let* ((_%e149278149310%_ _%hd149274%_)
                            (_%E149305149314%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx149116%_
                                _%hd149274%_)))
                            (_%E149295149398%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149278149310%_)
                                   (let ((_%e149306149318%_
                                          (gx#syntax-e _%e149278149310%_)))
                                     (let ((_%hd149307149321%_
                                            (##car _%e149306149318%_))
                                           (_%tl149308149323%_
                                            (##cdr _%e149306149318%_)))
                                       (if (eq? (gx#stx-e _%hd149307149321%_)
                                                'import:)
                                           (let ((_%in149326%_
                                                  _%tl149308149323%_))
                                             (if (gx#stx-list? _%in149326%_)
                                                 (let _%lp149328%_ ((_%in-rest149330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in149326%_)
                            (_%r149331%_ _%r149277%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e149332149339%_
                                                           _%in-rest149330%_)
                                                          (_%E149334149343%_
                                                           (lambda ()
                                                             (_%K149275%_
                                                              _%rest149276%_
                                                              _%r149331%_)))
                                                          (_%E149333149394%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e149332149339%_)
                         (let ((_%e149335149347%_
                                (gx#syntax-e _%e149332149339%_)))
                           (let ((_%hd149336149350%_ (##car _%e149335149347%_))
                                 (_%tl149337149352%_
                                  (##cdr _%e149335149347%_)))
                             (let* ((_%hd149355%_ _%hd149336149350%_)
                                    (_%in-rest149357%_ _%tl149337149352%_)
                                    (_%src149392%_
                                     (if (gx#core-bound-module? _%hd149355%_)
                                         (gx#syntax-local-e__0 _%hd149355%_)
                                         (if (gx#core-library-module-path?
                                              _%hd149355%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd149355%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd149355%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd149355%_))
                                                 (if (gx#stx-string?
                                                      _%hd149355%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd149355%_
                                                       (gx#stx-source
                                                        _%stx149116%_)))
                                                     (let* ((_%e149363149370%_
                                                             _%hd149355%_)
                                                            (_%E149365149374%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx149116%_
                                                                _%hd149355%_)))
                                                            (_%E149364149388%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e149363149370%_)
                           (let ((_%e149366149378%_
                                  (gx#syntax-e _%e149363149370%_)))
                             (let ((_%hd149367149381%_
                                    (##car _%e149366149378%_))
                                   (_%tl149368149383%_
                                    (##cdr _%e149366149378%_)))
                               (if (eq? (gx#stx-e _%hd149367149381%_) 'in:)
                                   (let ((_%spath149386%_ _%tl149368149383%_))
                                     (gx#core-import-nested-module
                                      _%spath149386%_
                                      _%stx149116%_))
                                   (_%E149365149374%_))))
                           (_%E149365149374%_)))))
               (_%E149364149388%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp149328%_
                                _%in-rest149357%_
                                (_%export-imports149121%_
                                 _%src149392%_
                                 _%r149331%_)))))
                         (_%E149334149343%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E149333149394%_)))
                                                 (_%E149305149314%_)))
                                           (_%E149305149314%_))))
                                   (_%E149305149314%_))))
                            (_%E149282149438%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149278149310%_)
                                   (let ((_%e149296149402%_
                                          (gx#syntax-e _%e149278149310%_)))
                                     (let ((_%hd149297149405%_
                                            (##car _%e149296149402%_))
                                           (_%tl149298149407%_
                                            (##cdr _%e149296149402%_)))
                                       (if (eq? (gx#stx-e _%hd149297149405%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl149298149407%_)
                                               (let ((_%e149299149410%_
                                                      (gx#syntax-e
                                                       _%tl149298149407%_)))
                                                 (let ((_%hd149300149413%_
                                                        (##car _%e149299149410%_))
                                                       (_%tl149301149415%_
                                                        (##cdr _%e149299149410%_)))
                                                   (let ((_%id149418%_
                                                          _%hd149300149413%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149301149415%_)
                                                         (let ((_%e149302149420%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149301149415%_)))
                   (let ((_%hd149303149423%_ (##car _%e149302149420%_))
                         (_%tl149304149425%_ (##cdr _%e149302149420%_)))
                     (let ((_%name149428%_ _%hd149303149423%_))
                       (if (gx#stx-null? _%tl149304149425%_)
                           (let* ((_%phi149430%_
                                   (gx#current-export-expander-phi))
                                  (_%$e149432%_
                                   (gx#core-resolve-identifier__1
                                    _%id149418%_
                                    _%phi149430%_)))
                             (if _%$e149432%_
                                 ((lambda (_%bind149435%_)
                                    (_%K149275%_
                                     _%rest149276%_
                                     (cons (_%make-export__152615152616%_
                                            _%bind149435%_
                                            _%phi149430%_
                                            (gx#current-expander-context)
                                            _%name149428%_)
                                           _%r149277%_)))
                                  _%$e149432%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx149116%_
                                  _%hd149274%_
                                  _%id149418%_)))
                           (_%E149295149398%_)))))
                 (_%E149295149398%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149295149398%_))
                                           (_%E149295149398%_))))
                                   (_%E149295149398%_))))
                            (_%E149281149488%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149278149310%_)
                                   (let ((_%e149283149442%_
                                          (gx#syntax-e _%e149278149310%_)))
                                     (let ((_%hd149284149445%_
                                            (##car _%e149283149442%_))
                                           (_%tl149285149447%_
                                            (##cdr _%e149283149442%_)))
                                       (if (eq? (gx#stx-e _%hd149284149445%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl149285149447%_)
                                               (let ((_%e149286149450%_
                                                      (gx#syntax-e
                                                       _%tl149285149447%_)))
                                                 (let ((_%hd149287149453%_
                                                        (##car _%e149286149450%_))
                                                       (_%tl149288149455%_
                                                        (##cdr _%e149286149450%_)))
                                                   (let ((_%phi149458%_
                                                          _%hd149287149453%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149288149455%_)
                                                         (let ((_%e149289149460%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149288149455%_)))
                   (let ((_%hd149290149463%_ (##car _%e149289149460%_))
                         (_%tl149291149465%_ (##cdr _%e149289149460%_)))
                     (let ((_%id149468%_ _%hd149290149463%_))
                       (if (gx#stx-pair? _%tl149291149465%_)
                           (let ((_%e149292149470%_
                                  (gx#syntax-e _%tl149291149465%_)))
                             (let ((_%hd149293149473%_
                                    (##car _%e149292149470%_))
                                   (_%tl149294149475%_
                                    (##cdr _%e149292149470%_)))
                               (let ((_%name149478%_ _%hd149293149473%_))
                                 (if (gx#stx-null? _%tl149294149475%_)
                                     (if (and (gx#stx-fixnum? _%phi149458%_)
                                              (gx#identifier? _%id149468%_)
                                              (gx#identifier? _%name149478%_))
                                         (let* ((_%phi149480%_
                                                 (gx#stx-e _%phi149458%_))
                                                (_%$e149482%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id149468%_
                                                  _%phi149480%_)))
                                           (if _%$e149482%_
                                               ((lambda (_%bind149485%_)
                                                  (_%K149275%_
                                                   _%rest149276%_
                                                   (cons (_%make-export__152615152616%_
                                                          _%bind149485%_
                                                          _%phi149480%_
                                                          (gx#current-expander-context)
                                                          _%name149478%_)
                                                         _%r149277%_)))
                                                _%$e149482%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx149116%_
                                                _%hd149274%_
                                                _%id149468%_)))
                                         (_%E149282149438%_))
                                     (_%E149282149438%_)))))
                           (_%E149282149438%_)))))
                 (_%E149282149438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149282149438%_))
                                           (_%E149282149438%_))))
                                   (_%E149282149438%_))))
                            (_%E149280149500%_
                             (lambda ()
                               (let ((_%id149492%_ _%e149278149310%_))
                                 (if (gx#identifier? _%id149492%_)
                                     (let ((_%$e149494%_
                                            (gx#core-resolve-identifier__1
                                             _%id149492%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e149494%_
                                           ((lambda (_%bind149497%_)
                                              (_%K149275%_
                                               _%rest149276%_
                                               (cons (_%make-export__0__152617152620%_
                                                      _%bind149497%_)
                                                     _%r149277%_)))
                                            _%$e149494%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx149116%_
                                            _%hd149274%_)))
                                     (_%E149281149488%_)))))
                            (_%E149279149564%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e149278149310%_) '#t)
                                   (let* ((_%current-ctx149504%_
                                           (gx#current-expander-context))
                                          (_%current-phi149506%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx149508%_
                                           (gx#core-context-shift
                                            _%current-ctx149504%_
                                            _%current-phi149506%_))
                                          (_%phi-bind149510%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx149508%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp149513%_ ((_%bind-rest149515%_
                                                         _%phi-bind149510%_)
                                                        (_%set149516%_ '()))
                                       (let* ((_%bind-rest149517149527%_
                                               _%bind-rest149515%_)
                                              (_%else149519149535%_
                                               (lambda ()
                                                 (_%K149275%_
                                                  _%rest149276%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi149506%_
                                                         _%set149516%_)
                                                        _%r149277%_))))
                                              (_%K149521149545%_
                                               (lambda (_%bind-rest149538%_
                                                        _%bind149539%_
                                                        _%key149540%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind149539%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind149539%_))
                                                     (_%lp149513%_
                                                      _%bind-rest149538%_
                                                      _%set149516%_)
                                                     (_%lp149513%_
                                                      _%bind-rest149538%_
                                                      (cons (_%make-export__2__152619152622%_
                                                             _%bind149539%_
                                                             _%current-phi149506%_
                                                             _%current-ctx149504%_)
                                                            _%set149516%_))))))
                                         (if (pair? _%bind-rest149517149527%_)
                                             (let ((_%hd149522149548%_
                                                    (##car _%bind-rest149517149527%_))
                                                   (_%tl149523149550%_
                                                    (##cdr _%bind-rest149517149527%_)))
                                               (if (pair? _%hd149522149548%_)
                                                   (let ((_%hd149524149553%_
                                                          (##car _%hd149522149548%_))
                                                         (_%tl149525149555%_
                                                          (##cdr _%hd149522149548%_)))
                                                     (let* ((_%key149558%_
                                                             _%hd149524149553%_)
                                                            (_%bind149560%_
                                                             _%tl149525149555%_)
                                                            (_%bind-rest149562%_
                                                             _%tl149523149550%_))
                                                       (_%K149521149545%_
                                                        _%bind-rest149562%_
                                                        _%bind149560%_
                                                        _%key149558%_)))
                                                   (_%else149519149535%_)))
                                             (_%else149519149535%_)))))
                                   (_%E149280149500%_)))))
                       (_%E149279149564%_))))
                  (_%export-imports149121%_
                   (lambda (_%src149151%_ _%r149152%_)
                     (letrec* ((_%current-ctx149154%_
                                (gx#current-expander-context))
                               (_%current-phi149155%_
                                (gx#current-export-expander-phi))
                               (_%import->export149156%_
                                (lambda (_%in149237%_)
                                  (let* ((_%in149238149246%_ _%in149237%_)
                                         (_%E149240149249%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in149238149246%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K149241149256%_
                                          (lambda (_%phi149252%_
                                                   _%key149253%_
                                                   _%out149254%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx149154%_
                                             _%key149253%_
                                             _%phi149252%_
                                             _%key149253%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in149238149246%_
                                         'gx#module-import::t)
                                        (let* ((_%e149242149259%_
                                                (##unchecked-structure-ref
                                                 _%in149238149246%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out149262%_
                                                _%e149242149259%_)
                                               (_%e149243149264%_
                                                (##unchecked-structure-ref
                                                 _%in149238149246%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key149267%_
                                                _%e149243149264%_)
                                               (_%e149244149269%_
                                                (##unchecked-structure-ref
                                                 _%in149238149246%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi149272%_
                                                _%e149244149269%_))
                                          (_%K149241149256%_
                                           _%phi149272%_
                                           _%key149267%_
                                           _%out149262%_))
                                        (_%E149240149249%_)))))
                               (_%fold-e149157%_
                                (lambda (_%in149159%_ _%r149160%_)
                                  (let* ((_%in149161149175%_ _%in149159%_)
                                         (_%else149164149183%_
                                          (lambda () _%r149160%_)))
                                    (let ((_%K149170149219%_
                                           (lambda (_%phi149215%_
                                                    _%key149216%_
                                                    _%out149217%_)
                                             (if (and (fx= _%phi149215%_
                                                           _%current-phi149155%_)
                                                      (eq? _%src149151%_
                                                           (##unchecked-structure-ref
                                                            _%out149217%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export149156%_
                                                        _%in149159%_)
                                                       _%r149160%_)
                                                 _%r149160%_)))
                                          (_%K149166149194%_
                                           (lambda (_%imports149187%_
                                                    _%phi149188%_
                                                    _%ctx149189%_)
                                             (if (and (fx= _%phi149188%_
                                                           _%current-phi149155%_)
                                                      (eq? _%src149151%_
                                                           _%ctx149189%_))
                                                 (__foldl1
                                                  (lambda (_%in149191%_
                                                           _%r149192%_)
                                                    (cons (_%import->export149156%_
                                                           _%in149191%_)
                                                          _%r149192%_))
                                                  _%r149160%_
                                                  _%imports149187%_)
                                                 _%r149160%_))))
                                      (let ((_%try-match149163149212%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in149161149175%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e149167149197%_
                                                           (##unchecked-structure-ref
                                                            _%in149161149175%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e149168149202%_
                                                           (##unchecked-structure-ref
                                                            _%in149161149175%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e149169149207%_
                                                           (##unchecked-structure-ref
                                                            _%in149161149175%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx149200%_
                                                            _%e149167149197%_)
                                                           (_%phi149205%_
                                                            _%e149168149202%_)
                                                           (_%imports149210%_
                                                            _%e149169149207%_))
                                                       (_%K149166149194%_
                                                        _%imports149210%_
                                                        _%phi149205%_
                                                        _%ctx149200%_)))
                                                   (_%else149164149183%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in149161149175%_
                                             'gx#module-import::t)
                                            (let* ((_%e149171149222%_
                                                    (##unchecked-structure-ref
                                                     _%in149161149175%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e149172149227%_
                                                    (##unchecked-structure-ref
                                                     _%in149161149175%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e149173149232%_
                                                    (##unchecked-structure-ref
                                                     _%in149161149175%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out149225%_
                                                     _%e149171149222%_)
                                                    (_%key149230%_
                                                     _%e149172149227%_)
                                                    (_%phi149235%_
                                                     _%e149173149232%_))
                                                (_%K149170149219%_
                                                 _%phi149235%_
                                                 _%key149230%_
                                                 _%out149225%_)))
                                            (_%try-match149163149212%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src149151%_
                              _%current-phi149155%_
                              (__foldl1
                               _%fold-e149157%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx149154%_
                                '8
                                '#f
                                '#f)))
                             _%r149152%_))))
                  (_%export!149122%_
                   (lambda (_%rbody149138%_)
                     (letrec* ((_%current-ctx149140%_
                                (gx#current-expander-context))
                               (_%fold-e149141%_
                                (lambda (_%out149145%_ _%r149146%_)
                                  (if (##structure-direct-instance-of?
                                       _%out149145%_
                                       'gx#module-export::t)
                                      (cons _%out149145%_ _%r149146%_)
                                      (if (##structure-direct-instance-of?
                                           _%out149145%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r149146%_
                                           (##unchecked-structure-ref
                                            _%out149145%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r149146%_)))))
                       (let ((_%body149143%_ (reverse _%rbody149138%_)))
                         (##unchecked-structure-set!
                          _%current-ctx149140%_
                          (__foldl1
                           _%fold-e149141%_
                           (##unchecked-structure-ref
                            _%current-ctx149140%_
                            '9
                            '#f
                            '#f)
                           _%body149143%_)
                          '9
                          '#f
                          '#f)
                         _%body149143%_))))
                  (_%expanded-export?149123%_
                   (lambda (_%e149133%_)
                     (let ((_%$e149135%_
                            (##structure-direct-instance-of?
                             _%e149133%_
                             'gx#module-export::t)))
                       (if _%$e149135%_
                           _%$e149135%_
                           (##structure-direct-instance-of?
                            _%e149133%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?149117%_)
              (let ((_%rbody149129%_
                     (gx#core-expand-import/export
                      _%stx149116%_
                      _%expanded-export?149123%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1149120%_)))
                (if _%internal-expand?149117%_
                    (reverse _%rbody149129%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!149122%_ _%rbody149129%_))
                     (gx#stx-source _%stx149116%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx149116%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx149116%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx149614%_)
        (let ((_%internal-expand?149616%_ '#f))
          (gx#core-expand-export%__%
           _%stx149614%_
           _%internal-expand?149616%_))))
    (define gx#core-expand-export%
      (lambda _g152691_
        (let ((_g152692_ (##length _g152691_)))
          (cond ((##fx= _g152692_ 1)
                 (apply gx#core-expand-export%__0 _g152691_))
                ((##fx= _g152692_ 2)
                 (apply gx#core-expand-export%__% _g152691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g152691_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd149113%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd149113%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx149083%_)
        (let* ((_%e149084149091%_ _%stx149083%_)
               (_%E149086149095%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149084149091%_)))
               (_%E149085149109%_
                (lambda ()
                  (if (gx#stx-pair? _%e149084149091%_)
                      (let ((_%e149087149099%_
                             (gx#syntax-e _%e149084149091%_)))
                        (let ((_%hd149088149102%_ (##car _%e149087149099%_))
                              (_%tl149089149104%_ (##cdr _%e149087149099%_)))
                          (let ((_%body149107%_ _%tl149089149104%_))
                            (if (gx#identifier-list? _%body149107%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body149107%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body149107%_))
                                   (gx#stx-source _%stx149083%_)))
                                (_%E149086149095%_)))))
                      (_%E149086149095%_)))))
          (_%E149085149109%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id149049%_ _%private?149050%_ _%phi149051%_ _%ctx149052%_)
        (gx#core-bind-syntax!__%
         _%id149049%_
         ((if _%private?149050%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id149049%_))
         _%private?149050%_
         _%phi149051%_
         _%ctx149052%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id149057%_)
        (let* ((_%private?149059%_ '#f)
               (_%phi149061%_ (gx#current-expander-phi))
               (_%ctx149063%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149057%_
           _%private?149059%_
           _%phi149061%_
           _%ctx149063%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id149065%_ _%private?149066%_)
        (let* ((_%phi149068%_ (gx#current-expander-phi))
               (_%ctx149070%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149065%_
           _%private?149066%_
           _%phi149068%_
           _%ctx149070%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id149072%_ _%private?149073%_ _%phi149074%_)
        (let ((_%ctx149076%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id149072%_
           _%private?149073%_
           _%phi149074%_
           _%ctx149076%_))))
    (define gx#core-bind-feature!
      (lambda _g152693_
        (let ((_g152694_ (##length _g152693_)))
          (cond ((##fx= _g152694_ 1)
                 (apply gx#core-bind-feature!__0 _g152693_))
                ((##fx= _g152694_ 2)
                 (apply gx#core-bind-feature!__1 _g152693_))
                ((##fx= _g152694_ 3)
                 (apply gx#core-bind-feature!__2 _g152693_))
                ((##fx= _g152694_ 4)
                 (apply gx#core-bind-feature!__% _g152693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g152693_))))))))
