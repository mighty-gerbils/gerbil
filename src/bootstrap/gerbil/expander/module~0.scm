(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771037609)
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
      (lambda _%$args194434%_
        (apply make-instance gx#module-import::t _%$args194434%_)))
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
      (lambda _%$args194431%_
        (apply make-instance gx#module-export::t _%$args194431%_)))
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
      (lambda _%$args194428%_
        (apply make-instance gx#import-set::t _%$args194428%_)))
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
      (lambda _%$args194425%_
        (apply make-instance gx#export-set::t _%$args194425%_)))
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
      (lambda _%$args194422%_
        (apply make-instance gx#import-expander::t _%$args194422%_)))
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
      (lambda _%$args194419%_
        (apply make-instance gx#export-expander::t _%$args194419%_)))
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
      (lambda _%$args194416%_
        (apply make-instance gx#import-export-expander::t _%$args194416%_)))
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
      (lambda (_%path194413%_ _%fun194414%_)
        (call-with-input-file
         (cons 'path: (cons _%path194413%_ gx#source-file-settings))
         _%fun194414%_)))
    (define gx#module-context:::init!
      (lambda (_%self194396%_
               _%id194397%_
               _%super194398%_
               _%ns194399%_
               _%path194400%_)
        (let ((_%self194403%_ _%self194396%_))
          (if (##fx< '11 (##structure-length _%self194403%_))
              (begin
                (##unchecked-structure-set!
                 _%self194403%_
                 _%id194397%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194403%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194403%_
                 _%super194398%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194403%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self194403%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self194403%_
                 _%ns194399%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194403%_
                 _%path194400%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194403%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self194403%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self194403%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self194403%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self194403%_
                     '11
                     (##structure-length _%self194403%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self194229%_ _%ctx194230%_ _%root194231%_)
        (let* ((_%self194234%_ _%self194229%_)
               (_%super194250%_
                (let ((_%$e194244%_ _%root194231%_))
                  (if _%$e194244%_
                      _%$e194244%_
                      (let ((_%$e194247%_ (gx#core-context-root__0)))
                        (if _%$e194247%_
                            _%$e194247%_
                            (let ((__obj194478
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor194479
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj194478
                                      ':init!)))
                                (if __constructor194479
                                    (__constructor194479 __obj194478)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj194478)))))))
          (if _%ctx194230%_
              (let ((_%id194253%_
                     (##structure-ref
                      _%ctx194230%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path194254%_
                     (##structure-ref
                      _%ctx194230%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in194255%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx194230%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e194256%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx194230%_)))))
                (if (##fx< '8 (##structure-length _%self194234%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self194234%_
                       _%id194253%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194234%_
                       (make-hash-table-eq 'size: (##length _%in194255%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194234%_
                       _%super194250%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194234%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194234%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194234%_
                       _%path194254%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194234%_
                       _%in194255%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194234%_
                       _%e194256%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self194234%_
                           '8
                           (##structure-length _%self194234%_)))
                (##for-each
                 (lambda (_%g194257194259%_)
                   (gx#core-bind-weak-import!__%
                    _%g194257194259%_
                    _%self194234%_))
                 _%in194255%_))
              (if (##fx< '8 (##structure-length _%self194234%_))
                  (begin
                    (##unchecked-structure-set! _%self194234%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self194234%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self194234%_
                     _%super194250%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self194234%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self194234%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self194234%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self194234%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self194234%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self194234%_
                         '8
                         (##structure-length _%self194234%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self194265%_ _%ctx194266%_)
        (let ((_%root194268%_ '#f))
          (gx#prelude-context:::init!__%
           _%self194265%_
           _%ctx194266%_
           _%root194268%_))))
    (define gx#prelude-context:::init!
      (lambda _g194485_
        (let ((_g194486_ (##length _g194485_)))
          (cond ((##fx= _g194486_ 2)
                 (apply gx#prelude-context:::init!__0 _g194485_))
                ((##fx= _g194486_ 3)
                 (apply gx#prelude-context:::init!__% _g194485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g194485_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self194103%_ _%e194104%_)
        (if (##fx< '3 (##structure-length _%self194103%_))
            (begin
              (##unchecked-structure-set!
               _%self194103%_
               _%e194104%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self194103%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self194103%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self194103%_
                   '3
                   (##structure-length _%self194103%_)))))
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
      (lambda (_%g193729193732%_ _%g193730193734%_)
        (gx#core-apply-user-expander__%
         _%g193729193732%_
         _%g193730193734%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g193600193603%_ _%g193601193605%_)
        (gx#core-apply-user-expander__%
         _%g193600193603%_
         _%g193601193605%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx193471%_)
        (let* ((_%path193473%_
                (##structure-ref _%ctx193471%_ '7 gx#module-context::t '#f))
               (_%path193475%_
                (if (pair? _%path193473%_)
                    (##last _%path193473%_)
                    _%path193473%_)))
          (if (string? _%path193475%_) _%path193475%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path193447%_ _%reload?193448%_ _%eval?193449%_)
        (let ((_%ctx193451%_
               ((gx#current-expander-module-import)
                _%path193447%_
                _%reload?193448%_)))
          (if (and _%ctx193451%_ _%eval?193449%_)
              (gx#eval-module _%ctx193451%_)
              '#!void)
          _%ctx193451%_)))
    (define gx#import-module__0
      (lambda (_%path193456%_)
        (let* ((_%reload?193458%_ '#f) (_%eval?193460%_ '#f))
          (gx#import-module__%
           _%path193456%_
           _%reload?193458%_
           _%eval?193460%_))))
    (define gx#import-module__1
      (lambda (_%path193462%_ _%reload?193463%_)
        (let ((_%eval?193465%_ '#f))
          (gx#import-module__%
           _%path193462%_
           _%reload?193463%_
           _%eval?193465%_))))
    (define gx#import-module
      (lambda _g194487_
        (let ((_g194488_ (##length _g194487_)))
          (cond ((##fx= _g194488_ 1) (apply gx#import-module__0 _g194487_))
                ((##fx= _g194488_ 2) (apply gx#import-module__1 _g194487_))
                ((##fx= _g194488_ 3) (apply gx#import-module__% _g194487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g194487_))))))
    (define gx#eval-module
      (lambda (_%mod193444%_)
        ((gx#current-expander-module-eval) _%mod193444%_)))
    (define gx#core-eval-module
      (lambda (_%obj193423%_)
        (letrec ((_%force-e193425%_
                  (lambda (_%getf193439%_ _%e193440%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf193439%_ _%e193440%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e193440%_))))
          (let _%recur193427%_ ((_%e193429%_ _%obj193423%_))
            (if (##structure-instance-of? _%e193429%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e193432%_
                         (gx#core-context-prelude__% _%e193429%_)))
                    (if _%$e193432%_ (_%recur193427%_ _%$e193432%_) '#!void))
                  (_%force-e193425%_ gx#module-context-e _%e193429%_))
                (if (##structure-instance-of?
                     _%e193429%_
                     'gx#prelude-context::t)
                    (_%force-e193425%_ gx#prelude-context-e _%e193429%_)
                    (if (gx#stx-string? _%e193429%_)
                        (_%recur193427%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e193429%_)))
                        (if (gx#core-library-module-path? _%e193429%_)
                            (_%recur193427%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e193429%_)))
                            (error '"cannot eval module" _%obj193423%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx193403%_)
        (let _%lp193405%_ ((_%e193407%_ _%ctx193403%_))
          (if (or (##structure-instance-of? _%e193407%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e193407%_ 'gx#local-context::t))
              (_%lp193405%_ (##unchecked-structure-ref _%e193407%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e193407%_ 'gx#prelude-context::t)
                  _%e193407%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx193419%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx193419%_))))
    (define gx#core-context-prelude
      (lambda _g194489_
        (let ((_g194490_ (##length _g194489_)))
          (cond ((##fx= _g194490_ 0)
                 (apply gx#core-context-prelude__0 _g194489_))
                ((##fx= _g194490_ 1)
                 (apply gx#core-context-prelude__% _g194489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g194489_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx193394%_)
        (let ((_%$e193396%_ (__hash-get gx#__module-registry _%ctx193394%_)))
          (if _%$e193396%_
              _%$e193396%_
              (let ((_%pre193400%_
                     (let ((__obj194480
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
                        __obj194480
                        _%ctx193394%_)
                       __obj194480)))
                (__hash-put! gx#__module-registry _%ctx193394%_ _%pre193400%_)
                _%pre193400%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath193262%_ _%reload?193263%_)
        (letrec ((_%import-source193265%_
                  (lambda (_%path193353%_)
                    (if (member _%path193353%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path193353%_)
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
                                      (let ((_g194491_
                                             (gx#core-read-module
                                              _%path193353%_)))
                                        (begin
                                          (let ((_g194492_
                                                 (if (##values? _g194491_)
                                                     (##values-length
                                                      _g194491_)
                                                     1)))
                                            (if (not (##fx= _g194492_ 4))
                                                (error "Context expects 4 values"
                                                       _g194492_)))
                                          (let ((_%pre193361%_
                                                 (##values-ref _g194491_ 0))
                                                (_%id193362%_
                                                 (##values-ref _g194491_ 1))
                                                (_%ns193363%_
                                                 (##values-ref _g194491_ 2))
                                                (_%body193364%_
                                                 (##values-ref _g194491_ 3)))
                                            (let* ((_%prelude193374%_
                                                    (if (##structure-instance-of?
                                                         _%pre193361%_
                                                         'gx#prelude-context::t)
                                                        _%pre193361%_
                                                        (if (##structure-instance-of?
                                                             _%pre193361%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre193361%_)
                                                            (if (string? _%pre193361%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre193361%_))
                        (if (not _%pre193361%_)
                            (let ((_%$e193370%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e193370%_
                                  _%$e193370%_
                                  (let ((__obj194481
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
                                     __obj194481
                                     '#f)
                                    __obj194481)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath193262%_
                                   _%pre193361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx193376%_
                                                    (let ((__obj194482
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
                                                       __obj194482
                                                       _%id193362%_
                                                       _%prelude193374%_
                                                       _%ns193363%_
                                                       _%path193353%_)
                                                      __obj194482))
                                                   (_%body193378%_
                                                    (gx#core-expand-module-begin
                                                     _%body193364%_
                                                     _%ctx193376%_))
                                                   (_%body193380%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body193378%_)
                                                     _%path193353%_
                                                     _%ctx193376%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx193376%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body193380%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx193376%_
                                               _%body193380%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path193353%_
                                               _%ctx193376%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id193362%_
                                               _%ctx193376%_)
                                              _%ctx193376%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path193353%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule193266%_
                  (lambda (_%rpath193282%_)
                    (let* ((_%rpath193283193290%_ _%rpath193282%_)
                           (_%E193285193293%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath193283193290%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K193286193341%_
                            (lambda (_%refs193296%_ _%origin193297%_)
                              (let ((_%ctx193299%_
                                     (if _%origin193297%_
                                         (gx#core-import-module__%
                                          _%origin193297%_
                                          _%reload?193263%_)
                                         (gx#current-expander-context))))
                                (let _%lp193301%_ ((_%rest193303%_
                                                    _%refs193296%_)
                                                   (_%ctx193304%_
                                                    _%ctx193299%_))
                                  (let* ((_%rest193305193313%_ _%rest193303%_)
                                         (_%else193307193321%_
                                          (lambda () _%ctx193304%_))
                                         (_%K193309193329%_
                                          (lambda (_%rest193324%_ _%id193325%_)
                                            (let ((_%bind193327%_
                                                   (gx#resolve-identifier__%
                                                    _%id193325%_
                                                    '0
                                                    _%ctx193304%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind193327%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind193327%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp193301%_
                                                   _%rest193324%_
                                                   (##unchecked-structure-ref
                                                    _%bind193327%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath193282%_
                                                         _%id193325%_
                                                         _%bind193327%_))))))
                                    (if (pair? _%rest193305193313%_)
                                        (let ((_%hd193310193332%_
                                               (##car _%rest193305193313%_))
                                              (_%tl193311193334%_
                                               (##cdr _%rest193305193313%_)))
                                          (let* ((_%id193337%_
                                                  _%hd193310193332%_)
                                                 (_%rest193339%_
                                                  _%tl193311193334%_))
                                            (_%K193309193329%_
                                             _%rest193339%_
                                             _%id193337%_)))
                                        (_%else193307193321%_))))))))
                      (if (pair? _%rpath193283193290%_)
                          (let ((_%hd193287193344%_
                                 (##car _%rpath193283193290%_))
                                (_%tl193288193346%_
                                 (##cdr _%rpath193283193290%_)))
                            (let* ((_%origin193349%_ _%hd193287193344%_)
                                   (_%refs193351%_ _%tl193288193346%_))
                              (_%K193286193341%_
                               _%refs193351%_
                               _%origin193349%_)))
                          (_%E193285193293%_))))))
          (let ((_%$e193268%_
                 (if (not _%reload?193263%_)
                     (__hash-get gx#__module-registry _%rpath193262%_)
                     '#f)))
            (if _%$e193268%_
                _%$e193268%_
                (if (list? _%rpath193262%_)
                    (_%import-submodule193266%_ _%rpath193262%_)
                    (if (gx#core-library-module-path? _%rpath193262%_)
                        (let ((_%ctx193273%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath193262%_)
                                _%reload?193263%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath193262%_
                           _%ctx193273%_)
                          _%ctx193273%_)
                        (let* ((_%npath193276%_
                                (path-normalize _%rpath193262%_))
                               (_%$e193278%_
                                (if (not _%reload?193263%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath193276%_)
                                    '#f)))
                          (if _%$e193278%_
                              _%$e193278%_
                              (_%import-source193265%_
                               _%npath193276%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath193387%_)
        (let ((_%reload?193389%_ '#f))
          (gx#core-import-module__% _%rpath193387%_ _%reload?193389%_))))
    (define gx#core-import-module
      (lambda _g194493_
        (let ((_g194494_ (##length _g194493_)))
          (cond ((##fx= _g194494_ 1)
                 (apply gx#core-import-module__0 _g194493_))
                ((##fx= _g194494_ 2)
                 (apply gx#core-import-module__% _g194493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g194493_))))))
    (define gx#core-read-module
      (lambda (_%path193244%_)
        (__with-catch
         (lambda (_%exn193246%_)
           (if (datum-parsing-exception? _%exn193246%_)
               (let ((_%pos193248%_
                      (datum-parsing-exception-filepos _%exn193246%_)))
                 (if (= _%pos193248%_ '0)
                     (gx#core-read-module/lang _%path193244%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path193244%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g193250193252%_)
                            (display-exception__%
                             _%exn193246%_
                             _%g193250193252%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos193248%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos193248%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path193244%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g193255193257%_)
                      (display-exception__% _%exn193246%_ _%g193255193257%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path193244%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path193096%_)
        (let _%lp193098%_ ((_%body193100%_
                            (read-syntax-from-file _%path193096%_))
                           (_%pre193101%_ '#f)
                           (_%ns193102%_ '#f)
                           (_%pkg193103%_ '#f))
          (let* ((_%e193104193128%_ _%body193100%_)
                 (_%E193120193154%_
                  (lambda ()
                    (let ((_g194495_
                           (if _%pkg193103%_
                               (values _%pre193101%_
                                       _%ns193102%_
                                       _%pkg193103%_)
                               (gx#core-read-module-package
                                _%path193096%_
                                _%pre193101%_
                                _%ns193102%_))))
                      (begin
                        (let ((_g194496_
                               (if (##values? _g194495_)
                                   (##values-length _g194495_)
                                   1)))
                          (if (not (##fx= _g194496_ 3))
                              (error "Context expects 3 values" _g194496_)))
                        (let ((_%pre193132%_ (##values-ref _g194495_ 0))
                              (_%ns193133%_ (##values-ref _g194495_ 1))
                              (_%pkg193134%_ (##values-ref _g194495_ 2)))
                          (let* ((_%prelude193140%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre193132%_)
                                      (gx#syntax-local-e__0 _%pre193132%_)
                                      (if (gx#core-library-module-path?
                                           _%pre193132%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre193132%_)
                                          (if (gx#stx-string? _%pre193132%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre193132%_
                                               _%path193096%_)
                                              (gx#stx-e _%pre193132%_)))))
                                 (_%path-id193142%_
                                  (gx#core-module-path->namespace
                                   _%path193096%_))
                                 (_%pkg-id193144%_
                                  (if _%pkg193134%_
                                      (##string-append
                                       _%pkg193134%_
                                       '"/"
                                       _%path-id193142%_)
                                      _%path-id193142%_))
                                 (_%module-id193146%_
                                  (##string->symbol _%pkg-id193144%_))
                                 (_%module-ns193151%_
                                  (if (eq? _%ns193133%_ '#!void)
                                      '#f
                                      (let ((_%$e193148%_ _%ns193133%_))
                                        (if _%$e193148%_
                                            _%$e193148%_
                                            _%pkg-id193144%_)))))
                            (values _%prelude193140%_
                                    _%module-id193146%_
                                    _%module-ns193151%_
                                    _%body193100%_)))))))
                 (_%E193113193186%_
                  (lambda ()
                    (if (gx#stx-pair? _%e193104193128%_)
                        (let ((_%e193121193158%_
                               (gx#syntax-e _%e193104193128%_)))
                          (let ((_%hd193122193161%_ (##car _%e193121193158%_))
                                (_%tl193123193163%_ (##cdr _%e193121193158%_)))
                            (if (eq? (gx#stx-e _%hd193122193161%_) 'package:)
                                (if (gx#stx-pair? _%tl193123193163%_)
                                    (let ((_%e193124193166%_
                                           (gx#syntax-e _%tl193123193163%_)))
                                      (let ((_%hd193125193169%_
                                             (##car _%e193124193166%_))
                                            (_%tl193126193171%_
                                             (##cdr _%e193124193166%_)))
                                        (let* ((_%pkg193174%_
                                                _%hd193125193169%_)
                                               (_%rest193176%_
                                                _%tl193126193171%_)
                                               (_%pkg193184%_
                                                (if (gx#identifier?
                                                     _%pkg193174%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg193174%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg193174%_)
                                                            (gx#stx-false?
                                                             _%pkg193174%_))
                                                        (gx#stx-e
                                                         _%pkg193174%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg193174%_)))))
                                          (_%lp193098%_
                                           _%rest193176%_
                                           _%pre193101%_
                                           _%ns193102%_
                                           _%pkg193184%_))))
                                    (_%E193120193154%_))
                                (_%E193120193154%_))))
                        (_%E193120193154%_))))
                 (_%E193106193216%_
                  (lambda ()
                    (if (gx#stx-pair? _%e193104193128%_)
                        (let ((_%e193114193190%_
                               (gx#syntax-e _%e193104193128%_)))
                          (let ((_%hd193115193193%_ (##car _%e193114193190%_))
                                (_%tl193116193195%_ (##cdr _%e193114193190%_)))
                            (if (eq? (gx#stx-e _%hd193115193193%_) 'namespace:)
                                (if (gx#stx-pair? _%tl193116193195%_)
                                    (let ((_%e193117193198%_
                                           (gx#syntax-e _%tl193116193195%_)))
                                      (let ((_%hd193118193201%_
                                             (##car _%e193117193198%_))
                                            (_%tl193119193203%_
                                             (##cdr _%e193117193198%_)))
                                        (let* ((_%ns193206%_
                                                _%hd193118193201%_)
                                               (_%rest193208%_
                                                _%tl193119193203%_)
                                               (_%ns193214%_
                                                (if (gx#identifier?
                                                     _%ns193206%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns193206%_))
                                                    (if (gx#stx-string?
                                                         _%ns193206%_)
                                                        (gx#stx-e _%ns193206%_)
                                                        (if (gx#stx-false?
                                                             _%ns193206%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns193206%_))))))
                                          (_%lp193098%_
                                           _%rest193208%_
                                           _%pre193101%_
                                           _%ns193214%_
                                           _%pkg193103%_))))
                                    (_%E193113193186%_))
                                (_%E193113193186%_))))
                        (_%E193113193186%_))))
                 (_%E193105193240%_
                  (lambda ()
                    (if (gx#stx-pair? _%e193104193128%_)
                        (let ((_%e193107193220%_
                               (gx#syntax-e _%e193104193128%_)))
                          (let ((_%hd193108193223%_ (##car _%e193107193220%_))
                                (_%tl193109193225%_ (##cdr _%e193107193220%_)))
                            (if (eq? (gx#stx-e _%hd193108193223%_) 'prelude:)
                                (if (gx#stx-pair? _%tl193109193225%_)
                                    (let ((_%e193110193228%_
                                           (gx#syntax-e _%tl193109193225%_)))
                                      (let ((_%hd193111193231%_
                                             (##car _%e193110193228%_))
                                            (_%tl193112193233%_
                                             (##cdr _%e193110193228%_)))
                                        (let* ((_%prelude193236%_
                                                _%hd193111193231%_)
                                               (_%rest193238%_
                                                _%tl193112193233%_))
                                          (_%lp193098%_
                                           _%rest193238%_
                                           _%prelude193236%_
                                           _%ns193102%_
                                           _%pkg193103%_))))
                                    (_%E193106193216%_))
                                (_%E193106193216%_))))
                        (_%E193106193216%_)))))
            (_%E193105193240%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path192917%_)
        (letrec ((_%default-read-module-body192919%_
                  (lambda (_%inp193088%_)
                    (let _%lp193090%_ ((_%body193092%_ '()))
                      (let ((_%next193094%_ (read-syntax__% _%inp193088%_)))
                        (if (eof-object? _%next193094%_)
                            (reverse _%body193092%_)
                            (_%lp193090%_
                             (cons _%next193094%_ _%body193092%_)))))))
                 (_%read-body192920%_
                  (lambda (_%inp193005%_
                           _%pre193006%_
                           _%ns193007%_
                           _%pkg193008%_
                           _%args193009%_)
                    (let ((_g194497_
                           (if _%pkg193008%_
                               (values _%pre193006%_
                                       _%ns193007%_
                                       _%pkg193008%_)
                               (gx#core-read-module-package
                                _%path192917%_
                                _%pre193006%_
                                _%ns193007%_))))
                      (begin
                        (let ((_g194498_
                               (if (##values? _g194497_)
                                   (##values-length _g194497_)
                                   1)))
                          (if (not (##fx= _g194498_ 3))
                              (error "Context expects 3 values" _g194498_)))
                        (let ((_%pre193011%_ (##values-ref _g194497_ 0))
                              (_%ns193012%_ (##values-ref _g194497_ 1))
                              (_%pkg193013%_ (##values-ref _g194497_ 2)))
                          (let* ((_%prelude193015%_
                                  (gx#import-module__0 _%pre193011%_))
                                 (_%read-module-body193070%_
                                  (let ((_%$e193061%_
                                         (__find (lambda (_%e193016193018%_)
                                                   (let* ((_%e193016193020193030%_
                                                           _%e193016193018%_)
                                                          (_%else193022193038%_
                                                           (lambda () '#f))
                                                          (_%K193024193042%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e193016193020193030%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e193025193045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e193016193020193030%_
                          '1
                          '#f
                          '#f))
                        (_%e193026193048%_
                         (##unchecked-structure-ref
                          _%e193016193020193030%_
                          '2
                          '#f
                          '#f))
                        (_%e193027193051%_
                         (##unchecked-structure-ref
                          _%e193016193020193030%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e193027193051%_ '1)
                       (let ((_%e193028193054%_
                              (##unchecked-structure-ref
                               _%e193016193020193030%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g193056193058%_)
                                (eq? _%g193056193058%_ 'read-module-body))
                              _%e193028193054%_)
                             (_%K193024193042%_)
                             (_%else193022193038%_)))
                       (_%else193022193038%_)))
                 (_%else193022193038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude193015%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e193061%_
                                        ((lambda (_%xport193064%_)
                                           (let ((_%proc193067%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport193064%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc193067%_)
                                                 _%proc193067%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path192917%_
                                                  _%pre193011%_
                                                  _%proc193067%_))))
                                         _%$e193061%_)
                                        _%default-read-module-body192919%_)))
                                 (_%path-id193072%_
                                  (gx#core-module-path->namespace
                                   _%path192917%_))
                                 (_%pkg-id193074%_
                                  (if _%pkg193013%_
                                      (##string-append
                                       _%pkg193013%_
                                       '"/"
                                       _%path-id193072%_)
                                      _%path-id193072%_))
                                 (_%module-id193076%_
                                  (##string->symbol _%pkg-id193074%_))
                                 (_%module-ns193081%_
                                  (let ((_%$e193078%_ _%ns193012%_))
                                    (if _%$e193078%_
                                        _%$e193078%_
                                        _%pkg-id193074%_)))
                                 (_%body193085%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body193070%_
                                         _%inp193005%_))
                                      gx#current-module-reader-args
                                      _%args193009%_))
                                   gx#current-module-reader-path
                                   _%path192917%_)))
                            (values _%prelude193015%_
                                    _%module-id193076%_
                                    _%module-ns193081%_
                                    _%body193085%_)))))))
                 (_%string-e192921%_
                  (lambda (_%obj192999%_ _%what193000%_)
                    (if (string? _%obj192999%_)
                        _%obj192999%_
                        (if (symbol? _%obj192999%_)
                            (##symbol->string _%obj192999%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what193000%_)
                             _%path192917%_
                             _%obj192999%_)))))
                 (_%read-lang-args192922%_
                  (lambda (_%inp192954%_ _%args192955%_)
                    (let* ((_%args192956192964%_ _%args192955%_)
                           (_%else192958192972%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path192917%_)))
                           (_%K192960192987%_
                            (lambda (_%args192975%_ _%prelude192976%_)
                              (let* ((_%pkg192978%_
                                      (pgetq__0 'package: _%args192975%_))
                                     (_%pkg192980%_
                                      (if _%pkg192978%_
                                          (_%string-e192921%_
                                           _%pkg192978%_
                                           '"package")
                                          '#f))
                                     (_%ns192982%_
                                      (pgetq__0 'namespace: _%args192975%_))
                                     (_%ns192984%_
                                      (if _%ns192982%_
                                          (_%string-e192921%_
                                           _%ns192982%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body192920%_
                                 _%inp192954%_
                                 _%prelude192976%_
                                 _%ns192984%_
                                 _%pkg192980%_
                                 _%args192975%_)))))
                      (if (pair? _%args192956192964%_)
                          (let ((_%hd192961192990%_
                                 (##car _%args192956192964%_))
                                (_%tl192962192992%_
                                 (##cdr _%args192956192964%_)))
                            (let* ((_%prelude192995%_ _%hd192961192990%_)
                                   (_%args192997%_ _%tl192962192992%_))
                              (_%K192960192987%_
                               _%args192997%_
                               _%prelude192995%_)))
                          (_%else192958192972%_)))))
                 (_%read-lang192923%_
                  (lambda (_%inp192928%_)
                    (let* ((_%head192930%_ (read-line _%inp192928%_))
                           (_%$e192932%_
                            (string-index__0 _%head192930%_ '#\space)))
                      (if _%$e192932%_
                          ((lambda (_%ix192935%_)
                             (let ((_%lang192937%_
                                    (substring
                                     _%head192930%_
                                     '0
                                     _%ix192935%_)))
                               (if (equal? _%lang192937%_ '"#lang")
                                   (let* ((_%rest192939%_
                                           (substring
                                            _%head192930%_
                                            (##fx+ _%ix192935%_ '1)
                                            (string-length _%head192930%_)))
                                          (_%args192950%_
                                           (__with-catch
                                            (lambda (_%g192940192942%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path192917%_
                                               _%g192940192942%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest192939%_
                                               (lambda (_%g192945192947%_)
                                                 (read-all
                                                  _%g192945192947%_
                                                  read)))))))
                                     (_%read-lang-args192922%_
                                      _%inp192928%_
                                      _%args192950%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path192917%_))))
                           _%$e192932%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path192917%_)))))
                 (_%read-e192924%_
                  (lambda (_%inp192926%_)
                    (if (eq? (peek-char _%inp192926%_) '#\#)
                        (_%read-lang192923%_ _%inp192926%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path192917%_)))))
          (gx#call-with-input-source-file _%path192917%_ _%read-e192924%_))))
    (define gx#core-read-module-package
      (lambda (_%path192865%_ _%pre192866%_ _%ns192867%_)
        (letrec ((_%string-e192869%_
                  (lambda (_%e192912%_)
                    (if (symbol? _%e192912%_)
                        (##symbol->string _%e192912%_)
                        (if (string? _%e192912%_)
                            _%e192912%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e192912%_))))))
          (let _%lp192871%_ ((_%dir192873%_ (path-directory _%path192865%_))
                             (_%pkg-path192874%_ '()))
            (let ((_%gerbil.pkg192876%_
                   (path-expand '"gerbil.pkg" _%dir192873%_)))
              (if (##file-exists? _%gerbil.pkg192876%_)
                  (let ((_%plist192878%_
                         (gx#core-library-package-plist__% _%dir192873%_ '#t)))
                    (if (null? _%plist192878%_)
                        (let ((_%pkg192881%_
                               (if (null? _%pkg-path192874%_)
                                   '#f
                                   (string-join _%pkg-path192874%_ '"/"))))
                          (values _%pre192866%_ _%ns192867%_ _%pkg192881%_))
                        (if (list? _%plist192878%_)
                            (let* ((_%root192884%_
                                    (pgetq__0 'package: _%plist192878%_))
                                   (_%pkg192888%_
                                    (let ((_%pkg-path192886%_
                                           (if _%root192884%_
                                               (cons (_%string-e192869%_
                                                      _%root192884%_)
                                                     _%pkg-path192874%_)
                                               _%pkg-path192874%_)))
                                      (if (null? _%pkg-path192886%_)
                                          '#f
                                          (string-join
                                           _%pkg-path192886%_
                                           '"/"))))
                                   (_%ns192895%_
                                    (let ((_%ns192893%_
                                           (let ((_%$e192890%_ _%ns192867%_))
                                             (if _%$e192890%_
                                                 _%$e192890%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist192878%_)))))
                                      (if _%ns192893%_
                                          (_%string-e192869%_ _%ns192893%_)
                                          '#f)))
                                   (_%pre192900%_
                                    (let ((_%$e192897%_ _%pre192866%_))
                                      (if _%$e192897%_
                                          _%$e192897%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist192878%_)))))
                              (values _%pre192900%_
                                      _%ns192895%_
                                      _%pkg192888%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist192878%_))))
                  (let ((_%dir*192904%_
                         (path-strip-trailing-directory-separator
                          _%dir192873%_)))
                    (if (or (__string-empty? _%dir*192904%_)
                            (equal? _%dir192873%_ _%dir*192904%_))
                        (values _%pre192866%_ _%ns192867%_ '#f)
                        (let ((_%xpath192909%_
                               (path-strip-directory _%dir*192904%_))
                              (_%xdir192910%_ (path-directory _%dir*192904%_)))
                          (_%lp192871%_
                           _%xdir192910%_
                           (cons _%xpath192909%_ _%pkg-path192874%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path192863%_)
        (path-strip-extension (path-strip-directory _%path192863%_))))
    (define gx#core-module-path->id
      (lambda (_%path192861%_)
        (##string->symbol (gx#core-module-path->namespace _%path192861%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path192840%_ _%rel192841%_)
        (let* ((_%path192843%_ (gx#stx-e _%stx-path192840%_))
               (_%path192845%_
                (if (__string-empty? (path-extension _%path192843%_))
                    (##string-append _%path192843%_ '".ss")
                    _%path192843%_)))
          (gx#core-resolve-path__%
           _%path192845%_
           (let ((_%$e192848%_ (gx#stx-source _%stx-path192840%_)))
             (if _%$e192848%_ _%$e192848%_ _%rel192841%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path192854%_)
        (let ((_%rel192856%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path192854%_ _%rel192856%_))))
    (define gx#core-resolve-module-path
      (lambda _g194499_
        (let ((_g194500_ (##length _g194499_)))
          (cond ((##fx= _g194500_ 1)
                 (apply gx#core-resolve-module-path__0 _g194499_))
                ((##fx= _g194500_ 2)
                 (apply gx#core-resolve-module-path__% _g194499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g194499_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath192725%_)
        (let* ((_%spath192727%_ (symbol->string (gx#stx-e _%libpath192725%_)))
               (_%spath192729%_
                (substring
                 _%spath192727%_
                 '1
                 (##string-length _%spath192727%_)))
               (_%ext192731%_ (path-extension _%spath192729%_))
               (_%ssi192733%_
                (if (__string-empty? _%ext192731%_)
                    (##string-append _%spath192729%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath192729%_)
                     '".ssi")))
               (_%srcs192737%_
                (if (__string-empty? _%ext192731%_)
                    (##map (lambda (_%ext192735%_)
                             (string-append _%spath192729%_ _%ext192735%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath192729%_ '()))))
          (let _%lp192740%_ ((_%rest192742%_ (load-path)))
            (let* ((_%rest192743192752%_ _%rest192742%_)
                   (_%E192746192756%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest192743192752%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K192748192827%_
                     (lambda (_%rest192767%_ _%dir192768%_)
                       (letrec ((_%resolve192770%_
                                 (lambda (_%ssi192783%_ _%srcs192784%_)
                                   (let ((_%compiled-path192786%_
                                          (path-expand
                                           _%ssi192783%_
                                           _%dir192768%_)))
                                     (if (##file-exists?
                                          _%compiled-path192786%_)
                                         (path-normalize
                                          _%compiled-path192786%_)
                                         (let _%lpr192788%_ ((_%rest-src192790%_
                                                              _%srcs192784%_))
                                           (let* ((_%rest-src192791192799%_
                                                   _%rest-src192790%_)
                                                  (_%else192793192807%_
                                                   (lambda ()
                                                     (_%lp192740%_
                                                      _%rest192767%_)))
                                                  (_%K192795192815%_
                                                   (lambda (_%rest-src192810%_
                                                            _%src192811%_)
                                                     (let ((_%src-path192813%_
                                                            (path-expand
                                                             _%src192811%_
                                                             _%dir192768%_)))
                                                       (if (##file-exists?
                                                            _%src-path192813%_)
                                                           (path-normalize
                                                            _%src-path192813%_)
                                                           (_%lpr192788%_
                                                            _%rest-src192810%_))))))
                                             (if (pair? _%rest-src192791192799%_)
                                                 (let ((_%hd192796192818%_
                                                        (##car _%rest-src192791192799%_))
                                                       (_%tl192797192820%_
                                                        (##cdr _%rest-src192791192799%_)))
                                                   (let* ((_%src192823%_
                                                           _%hd192796192818%_)
                                                          (_%rest-src192825%_
                                                           _%tl192797192820%_))
                                                     (_%K192795192815%_
                                                      _%rest-src192825%_
                                                      _%src192823%_)))
                                                 (_%else192793192807%_)))))))))
                         (let ((_%$e192772%_
                                (gx#core-library-package-path-prefix
                                 _%dir192768%_)))
                           (if _%$e192772%_
                               ((lambda (_%prefix192775%_)
                                  (if (string-prefix?
                                       _%prefix192775%_
                                       _%spath192729%_)
                                      (let ((_%ssi192779%_
                                             (substring
                                              _%ssi192733%_
                                              (string-length _%prefix192775%_)
                                              (##string-length _%ssi192733%_)))
                                            (_%srcs192780%_
                                             (##map (lambda (_%src192777%_)
                                                      (substring
                                                       _%src192777%_
                                                       (string-length
                                                        _%prefix192775%_)
                                                       (string-length
                                                        _%src192777%_)))
                                                    _%srcs192737%_)))
                                        (_%resolve192770%_
                                         _%ssi192779%_
                                         _%srcs192780%_))
                                      (_%lp192740%_ _%rest192767%_)))
                                _%$e192772%_)
                               (_%resolve192770%_
                                _%ssi192733%_
                                _%srcs192737%_))))))
                    (_%K192747192761%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath192725%_))))
                (let ((_%try-match192745192764%_
                       (lambda ()
                         (if (null? _%rest192743192752%_)
                             (_%K192747192761%_)
                             (_%E192746192756%_)))))
                  (if (pair? _%rest192743192752%_)
                      (let ((_%tl192750192832%_ (##cdr _%rest192743192752%_))
                            (_%hd192749192830%_ (##car _%rest192743192752%_)))
                        (let ((_%dir192835%_ _%hd192749192830%_)
                              (_%rest192837%_ _%tl192750192832%_))
                          (_%K192748192827%_ _%rest192837%_ _%dir192835%_)))
                      (_%try-match192745192764%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath192693%_)
        (letrec ((_%resolve192695%_
                  (lambda (_%path192716%_ _%base192717%_)
                    (let ((_%$e192719%_
                           (string-rindex__0 _%base192717%_ '#\/)))
                      (if _%$e192719%_
                          ((lambda (_%idx192722%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base192717%_ '0 _%idx192722%_)
                                '"/"
                                _%path192716%_))))
                           _%$e192719%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path192716%_))))))))
          (let ((_%spath192697%_ (symbol->string (gx#stx-e _%modpath192693%_)))
                (_%mod192698%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod192698%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath192693%_))
            (let ((_%mpath192700%_
                   (symbol->string
                    (##structure-ref
                     _%mod192698%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp192702%_ ((_%spath192704%_ _%spath192697%_)
                                 (_%mpath192705%_ _%mpath192700%_))
                (if (string-prefix? '"../" _%spath192704%_)
                    (let ((_%$e192708%_
                           (string-rindex__0 _%mpath192705%_ '#\/)))
                      (if _%$e192708%_
                          ((lambda (_%idx192711%_)
                             (_%lp192702%_
                              (substring
                               _%spath192704%_
                               '3
                               (string-length _%spath192704%_))
                              (substring _%mpath192705%_ '0 _%idx192711%_)))
                           _%$e192708%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath192693%_)))
                    (if (string-prefix? '"./" _%spath192704%_)
                        (_%lp192702%_
                         (substring
                          _%spath192704%_
                          '2
                          (string-length _%spath192704%_))
                         _%mpath192705%_)
                        (_%resolve192695%_
                         _%spath192704%_
                         _%mpath192705%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir192685%_)
        (let ((_%$e192687%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir192685%_))))
          (if _%$e192687%_
              ((lambda (_%pkg192690%_)
                 (##string-append (symbol->string _%pkg192690%_) '"/"))
               _%$e192687%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir192655%_ _%exists?192656%_)
        (let ((_%$e192658%_ (__hash-get gx#__module-pkg-cache _%dir192655%_)))
          (if _%$e192658%_
              _%$e192658%_
              (let* ((_%gerbil.pkg192662%_
                      (path-expand '"gerbil.pkg" _%dir192655%_))
                     (_%plist192672%_
                      (if (or _%exists?192656%_
                              (##file-exists? _%gerbil.pkg192662%_))
                          (let ((_%e192667%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg192662%_
                                  read)))
                            (if (eof-object? _%e192667%_)
                                '()
                                (if (list? _%e192667%_)
                                    _%e192667%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg192662%_
                                     _%e192667%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir192655%_
                 _%plist192672%_)
                _%plist192672%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir192678%_)
        (let ((_%exists?192680%_ '#f))
          (gx#core-library-package-plist__% _%dir192678%_ _%exists?192680%_))))
    (define gx#core-library-package-plist
      (lambda _g194501_
        (let ((_g194502_ (##length _g194501_)))
          (cond ((##fx= _g194502_ 1)
                 (apply gx#core-library-package-plist__0 _g194501_))
                ((##fx= _g194502_ 2)
                 (apply gx#core-library-package-plist__% _g194501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g194501_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx192652%_)
        (gx#core-special-module-path? _%stx192652%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx192650%_)
        (gx#core-special-module-path? _%stx192650%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx192645%_ _%char192646%_)
        (if (gx#identifier? _%stx192645%_)
            (if (interned-symbol? (gx#stx-e _%stx192645%_))
                (let ((_%str192648%_
                       (symbol->string (gx#stx-e _%stx192645%_))))
                  (if (##fx> (##string-length _%str192648%_) '1)
                      (eq? (string-ref _%str192648%_ '0) _%char192646%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx192639%_)
        (gx#core-bound-identifier?__%
         _%stx192639%_
         (lambda (_%g192640192642%_)
           (gx#expander-binding?__% _%g192640192642%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx192633%_)
        (gx#core-bound-identifier?__%
         _%stx192633%_
         (lambda (_%g192634192636%_)
           (gx#expander-binding?__% _%g192634192636%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx192620%_)
        (letrec ((_%module-prelude?192622%_
                  (lambda (_%e192628%_)
                    (let ((_%$e192630%_
                           (##structure-instance-of?
                            _%e192628%_
                            'gx#module-context::t)))
                      (if _%$e192630%_
                          _%$e192630%_
                          (##structure-instance-of?
                           _%e192628%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx192620%_
           (lambda (_%g192623192625%_)
             (gx#expander-binding?__%
              _%g192623192625%_
              _%module-prelude?192622%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in192551%_ _%ctx192552%_ _%force-weak?192553%_)
        (let* ((_%in192554192563%_ _%in192551%_)
               (_%E192556192566%_
                (lambda ()
                  (error '"No clause matching"
                         _%in192554192563%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K192557192579%_
                (lambda (_%weak?192569%_
                         _%phi192570%_
                         _%key192571%_
                         _%source192572%_)
                  (gx#core-bind!__%
                   _%key192571%_
                   (let* ((_%e192574%_
                           (gx#core-resolve-module-export _%source192572%_))
                          (__obj194483
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
                      __obj194483
                      (##unchecked-structure-ref _%e192574%_ '1 '#f '#f)
                      _%key192571%_
                      _%phi192570%_
                      _%e192574%_
                      (##unchecked-structure-ref _%source192572%_ '1 '#f '#f)
                      (let ((_%$e192576%_ _%force-weak?192553%_))
                        (if _%$e192576%_ _%$e192576%_ _%weak?192569%_)))
                     __obj194483)
                   gx#core-context-rebind?
                   _%phi192570%_
                   _%ctx192552%_))))
          (if (##structure-direct-instance-of?
               _%in192554192563%_
               'gx#module-import::t)
              (let* ((_%e192558192582%_
                      (##unchecked-structure-ref
                       _%in192554192563%_
                       '1
                       '#f
                       '#f))
                     (_%source192585%_ _%e192558192582%_)
                     (_%e192559192587%_
                      (##unchecked-structure-ref
                       _%in192554192563%_
                       '2
                       '#f
                       '#f))
                     (_%key192590%_ _%e192559192587%_)
                     (_%e192560192592%_
                      (##unchecked-structure-ref
                       _%in192554192563%_
                       '3
                       '#f
                       '#f))
                     (_%phi192595%_ _%e192560192592%_)
                     (_%e192561192597%_
                      (##unchecked-structure-ref
                       _%in192554192563%_
                       '4
                       '#f
                       '#f))
                     (_%weak?192600%_ _%e192561192597%_))
                (_%K192557192579%_
                 _%weak?192600%_
                 _%phi192595%_
                 _%key192590%_
                 _%source192585%_))
              (_%E192556192566%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in192605%_)
        (let* ((_%ctx192607%_ (gx#current-expander-context))
               (_%force-weak?192609%_ '#f))
          (gx#core-bind-import!__%
           _%in192605%_
           _%ctx192607%_
           _%force-weak?192609%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in192611%_ _%ctx192612%_)
        (let ((_%force-weak?192614%_ '#f))
          (gx#core-bind-import!__%
           _%in192611%_
           _%ctx192612%_
           _%force-weak?192614%_))))
    (define gx#core-bind-import!
      (lambda _g194503_
        (let ((_g194504_ (##length _g194503_)))
          (cond ((##fx= _g194504_ 1) (apply gx#core-bind-import!__0 _g194503_))
                ((##fx= _g194504_ 2) (apply gx#core-bind-import!__1 _g194503_))
                ((##fx= _g194504_ 3) (apply gx#core-bind-import!__% _g194503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g194503_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in192537%_ _%ctx192538%_)
        (gx#core-bind-import!__% _%in192537%_ _%ctx192538%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in192543%_)
        (let ((_%ctx192545%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in192543%_ _%ctx192545%_))))
    (define gx#core-bind-weak-import!
      (lambda _g194505_
        (let ((_g194506_ (##length _g194505_)))
          (cond ((##fx= _g194506_ 1)
                 (apply gx#core-bind-weak-import!__0 _g194505_))
                ((##fx= _g194506_ 2)
                 (apply gx#core-bind-weak-import!__% _g194505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g194505_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out192430%_)
        (letrec ((_%subst192432%_
                  (lambda (_%key192477%_)
                    (let* ((_%key192478192486%_ _%key192477%_)
                           (_%else192480192494%_ (lambda () _%key192477%_))
                           (_%K192482192524%_
                            (lambda (_%mark192497%_ _%id192498%_)
                              (let* ((_%mark192499192505%_ _%mark192497%_)
                                     (_%E192501192508%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark192499192505%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K192502192516%_
                                      (lambda (_%subst192511%_)
                                        (let ((_%$e192513%_
                                               (if _%subst192511%_
                                                   (hash-get
                                                    _%subst192511%_
                                                    _%id192498%_)
                                                   '#f)))
                                          (if _%$e192513%_
                                              _%$e192513%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key192477%_))))))
                                (if (##structure-instance-of?
                                     _%mark192499192505%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e192503192519%_
                                            (##unchecked-structure-ref
                                             _%mark192499192505%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst192522%_ _%e192503192519%_))
                                      (_%K192502192516%_ _%subst192522%_))
                                    (_%E192501192508%_))))))
                      (if (pair? _%key192478192486%_)
                          (let ((_%hd192483192527%_
                                 (##car _%key192478192486%_))
                                (_%tl192484192529%_
                                 (##cdr _%key192478192486%_)))
                            (let* ((_%id192532%_ _%hd192483192527%_)
                                   (_%mark192534%_ _%tl192484192529%_))
                              (_%K192482192524%_ _%mark192534%_ _%id192532%_)))
                          (_%else192480192494%_))))))
          (let* ((_%out192433192443%_ _%out192430%_)
                 (_%E192435192446%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out192433192443%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K192436192453%_
                  (lambda (_%phi192449%_ _%key192450%_ _%ctx192451%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx192451%_ _%phi192449%_)
                     (_%subst192432%_ _%key192450%_)))))
            (if (##structure-direct-instance-of?
                 _%out192433192443%_
                 'gx#module-export::t)
                (let* ((_%e192437192456%_
                        (##unchecked-structure-ref
                         _%out192433192443%_
                         '1
                         '#f
                         '#f))
                       (_%ctx192459%_ _%e192437192456%_)
                       (_%e192438192461%_
                        (##unchecked-structure-ref
                         _%out192433192443%_
                         '2
                         '#f
                         '#f))
                       (_%key192464%_ _%e192438192461%_)
                       (_%e192439192466%_
                        (##unchecked-structure-ref
                         _%out192433192443%_
                         '3
                         '#f
                         '#f))
                       (_%phi192469%_ _%e192439192466%_)
                       (_%e192440192471%_
                        (##unchecked-structure-ref
                         _%out192433192443%_
                         '4
                         '#f
                         '#f))
                       (_%e192441192474%_
                        (##unchecked-structure-ref
                         _%out192433192443%_
                         '5
                         '#f
                         '#f)))
                  (_%K192436192453%_
                   _%phi192469%_
                   _%key192464%_
                   _%ctx192459%_))
                (_%E192435192446%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out192356%_ _%rename192357%_ _%dphi192358%_)
        (let* ((_%out192359192369%_ _%out192356%_)
               (_%E192361192372%_
                (lambda ()
                  (error '"No clause matching"
                         _%out192359192369%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K192362192384%_
                (lambda (_%weak?192375%_
                         _%name192376%_
                         _%phi192377%_
                         _%key192378%_
                         _%ctx192379%_)
                  (##structure
                   gx#module-import::t
                   _%out192356%_
                   (let ((_%$e192381%_ _%rename192357%_))
                     (if _%$e192381%_ _%$e192381%_ _%name192376%_))
                   (fx+ _%phi192377%_ _%dphi192358%_)
                   _%weak?192375%_))))
          (if (##structure-direct-instance-of?
               _%out192359192369%_
               'gx#module-export::t)
              (let* ((_%e192363192387%_
                      (##unchecked-structure-ref
                       _%out192359192369%_
                       '1
                       '#f
                       '#f))
                     (_%ctx192390%_ _%e192363192387%_)
                     (_%e192364192392%_
                      (##unchecked-structure-ref
                       _%out192359192369%_
                       '2
                       '#f
                       '#f))
                     (_%key192395%_ _%e192364192392%_)
                     (_%e192365192397%_
                      (##unchecked-structure-ref
                       _%out192359192369%_
                       '3
                       '#f
                       '#f))
                     (_%phi192400%_ _%e192365192397%_)
                     (_%e192366192402%_
                      (##unchecked-structure-ref
                       _%out192359192369%_
                       '4
                       '#f
                       '#f))
                     (_%name192405%_ _%e192366192402%_)
                     (_%e192367192407%_
                      (##unchecked-structure-ref
                       _%out192359192369%_
                       '5
                       '#f
                       '#f))
                     (_%weak?192410%_ _%e192367192407%_))
                (_%K192362192384%_
                 _%weak?192410%_
                 _%name192405%_
                 _%phi192400%_
                 _%key192395%_
                 _%ctx192390%_))
              (_%E192361192372%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out192415%_)
        (let* ((_%rename192417%_ '#f) (_%dphi192419%_ '0))
          (gx#core-module-export->import__%
           _%out192415%_
           _%rename192417%_
           _%dphi192419%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out192421%_ _%rename192422%_)
        (let ((_%dphi192424%_ '0))
          (gx#core-module-export->import__%
           _%out192421%_
           _%rename192422%_
           _%dphi192424%_))))
    (define gx#core-module-export->import
      (lambda _g194507_
        (let ((_g194508_ (##length _g194507_)))
          (cond ((##fx= _g194508_ 1)
                 (apply gx#core-module-export->import__0 _g194507_))
                ((##fx= _g194508_ 2)
                 (apply gx#core-module-export->import__1 _g194507_))
                ((##fx= _g194508_ 3)
                 (apply gx#core-module-export->import__% _g194507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g194507_))))))
    (define gx#core-expand-module%
      (lambda (_%stx192255%_)
        (letrec ((_%make-context192257%_
                  (lambda (_%id192334%_)
                    (let* ((_%super192336%_ (gx#current-expander-context))
                           (_%bind-id192338%_ (gx#stx-e _%id192334%_))
                           (_%mod-id192340%_
                            (if (##structure-instance-of?
                                 _%super192336%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super192336%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id192338%_)
                                _%bind-id192338%_))
                           (_%ns192342%_ (symbol->string _%mod-id192340%_))
                           (_%path192352%_
                            (if (##structure-instance-of?
                                 _%super192336%_
                                 'gx#module-context::t)
                                (let ((_%path192344%_
                                       (##unchecked-structure-ref
                                        _%super192336%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path192344%_)
                                          (null? _%path192344%_))
                                      (cons _%bind-id192338%_ _%path192344%_)
                                      (if (not _%path192344%_)
                                          _%bind-id192338%_
                                          (cons _%bind-id192338%_
                                                (cons _%path192344%_ '())))))
                                _%bind-id192338%_))
                           (__obj194484
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
                       __obj194484
                       _%mod-id192340%_
                       _%super192336%_
                       _%ns192342%_
                       _%path192352%_)
                      __obj194484)))
                 (_%valid-module-id?192258%_
                  (lambda (_%id192309%_)
                    (let* ((_%str192311%_ (symbol->string _%id192309%_))
                           (_%len192313%_ (##string-length _%str192311%_)))
                      (if (##fx>= _%len192313%_ '1)
                          (let _%loop192316%_ ((_%index192318%_
                                                (##fx- (##string-length
                                                        _%str192311%_)
                                                       '1)))
                            (if (##fx>= _%index192318%_ '0)
                                (let ((_%c192320%_
                                       (string-ref
                                        _%str192311%_
                                        _%index192318%_)))
                                  (if (or (and (##char>=? _%c192320%_ '#\a)
                                               (##char<=? _%c192320%_ '#\z))
                                          (and (##char>=? _%c192320%_ '#\A)
                                               (##char<=? _%c192320%_ '#\Z))
                                          (and (##char>=? _%c192320%_ '#\0)
                                               (##char<=? _%c192320%_ '#\9))
                                          (##char=? _%c192320%_ '#\_)
                                          (##char=? _%c192320%_ '#\-))
                                      (_%loop192316%_
                                       (##fx- _%index192318%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e192259192269%_ _%stx192255%_)
                 (_%E192261192273%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e192259192269%_)))
                 (_%E192260192305%_
                  (lambda ()
                    (if (gx#stx-pair? _%e192259192269%_)
                        (let ((_%e192262192277%_
                               (gx#syntax-e _%e192259192269%_)))
                          (let ((_%hd192263192280%_ (##car _%e192262192277%_))
                                (_%tl192264192282%_ (##cdr _%e192262192277%_)))
                            (if (gx#stx-pair? _%tl192264192282%_)
                                (let ((_%e192265192285%_
                                       (gx#syntax-e _%tl192264192282%_)))
                                  (let ((_%hd192266192288%_
                                         (##car _%e192265192285%_))
                                        (_%tl192267192290%_
                                         (##cdr _%e192265192285%_)))
                                    (let* ((_%id192293%_ _%hd192266192288%_)
                                           (_%body192295%_ _%tl192267192290%_))
                                      (if (and (gx#identifier? _%id192293%_)
                                               (gx#stx-list? _%body192295%_))
                                          (if (_%valid-module-id?192258%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx192297%_
                                                      (_%make-context192257%_
                                                       _%id192293%_))
                                                     (_%body192299%_
                                                      (gx#core-expand-module-begin
                                                       _%body192295%_
                                                       _%ctx192297%_))
                                                     (_%body192301%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body192299%_)
                                                       (gx#stx-source
                                                        _%stx192255%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx192297%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body192301%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx192297%_
                                                 _%body192301%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id192293%_
                                                 _%ctx192297%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id192293%_)
                                                  _%body192301%_)
                                                 (gx#stx-source
                                                  _%stx192255%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx192255%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E192261192273%_)))))
                                (_%E192261192273%_))))
                        (_%E192261192273%_)))))
            (_%E192260192305%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body192220%_ _%ctx192221%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx192225%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body192220%_)))
                     (_%e192226192233%_ _%stx192225%_)
                     (_%E192228192237%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx192225%_)))
                     (_%E192227192251%_
                      (lambda ()
                        (if (gx#stx-pair? _%e192226192233%_)
                            (let ((_%e192229192241%_
                                   (gx#syntax-e _%e192226192233%_)))
                              (let ((_%hd192230192244%_
                                     (##car _%e192229192241%_))
                                    (_%tl192231192246%_
                                     (##cdr _%e192229192241%_)))
                                (if (and (gx#identifier? _%hd192230192244%_)
                                         (gx#core-identifier=?
                                          _%hd192230192244%_
                                          '%#begin-module))
                                    (let ((_%body192249%_ _%tl192231192246%_))
                                      (if (gx#sealed-syntax? _%stx192225%_)
                                          _%body192249%_
                                          (gx#core-expand-module-body
                                           _%body192249%_)))
                                    (_%E192228192237%_))))
                            (_%E192228192237%_)))))
                (_%E192227192251%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx192221%_)))
    (define gx#core-expand-module-body
      (lambda (_%body192016%_)
        (letrec ((_%expand-special192018%_
                  (lambda (_%hd192147%_ _%K192148%_ _%rest192149%_ _%r192150%_)
                    (let* ((_%e192151192168%_ _%hd192147%_)
                           (_%E192163192172%_
                            (lambda ()
                              (_%K192148%_
                               _%rest192149%_
                               (cons (gx#core-expand-top _%hd192147%_)
                                     _%r192150%_))))
                           (_%E192153192184%_
                            (lambda ()
                              (if (gx#stx-pair? _%e192151192168%_)
                                  (let ((_%e192164192176%_
                                         (gx#syntax-e _%e192151192168%_)))
                                    (let ((_%hd192165192179%_
                                           (##car _%e192164192176%_))
                                          (_%tl192166192181%_
                                           (##cdr _%e192164192176%_)))
                                      (if (and (gx#identifier?
                                                _%hd192165192179%_)
                                               (gx#core-identifier=?
                                                _%hd192165192179%_
                                                '%#export))
                                          (_%K192148%_
                                           _%rest192149%_
                                           (cons _%hd192147%_ _%r192150%_))
                                          (_%E192163192172%_))))
                                  (_%E192163192172%_))))
                           (_%E192152192216%_
                            (lambda ()
                              (if (gx#stx-pair? _%e192151192168%_)
                                  (let ((_%e192154192188%_
                                         (gx#syntax-e _%e192151192168%_)))
                                    (let ((_%hd192155192191%_
                                           (##car _%e192154192188%_))
                                          (_%tl192156192193%_
                                           (##cdr _%e192154192188%_)))
                                      (if (and (gx#identifier?
                                                _%hd192155192191%_)
                                               (gx#core-identifier=?
                                                _%hd192155192191%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl192156192193%_)
                                              (let ((_%e192157192196%_
                                                     (gx#syntax-e
                                                      _%tl192156192193%_)))
                                                (let ((_%hd192158192199%_
                                                       (##car _%e192157192196%_))
                                                      (_%tl192159192201%_
                                                       (##cdr _%e192157192196%_)))
                                                  (let ((_%hd-bind192204%_
                                                         _%hd192158192199%_))
                                                    (if (gx#stx-pair?
                                                         _%tl192159192201%_)
                                                        (let ((_%e192160192206%_
                                                               (gx#syntax-e
                                                                _%tl192159192201%_)))
                                                          (let ((_%hd192161192209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e192160192206%_))
                        (_%tl192162192211%_ (##cdr _%e192160192206%_)))
                    (let ((_%expr192214%_ _%hd192161192209%_))
                      (if (gx#stx-null? _%tl192162192211%_)
                          (if (gx#core-bind-values? _%hd-bind192204%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind192204%_)
                                (_%K192148%_
                                 _%rest192149%_
                                 (cons _%hd192147%_ _%r192150%_)))
                              (_%E192153192184%_))
                          (_%E192153192184%_)))))
                (_%E192153192184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E192153192184%_))
                                          (_%E192153192184%_))))
                                  (_%E192153192184%_)))))
                      (_%E192152192216%_))))
                 (_%expand-body192019%_
                  (lambda (_%rbody192021%_)
                    (let _%lp192023%_ ((_%rest192025%_ _%rbody192021%_)
                                       (_%body192026%_ '()))
                      (let* ((_%rest192027192035%_ _%rest192025%_)
                             (_%else192029192043%_ (lambda () _%body192026%_))
                             (_%K192031192135%_
                              (lambda (_%rest192046%_ _%hd192047%_)
                                (let* ((_%e192048192069%_ _%hd192047%_)
                                       (_%E192064192073%_
                                        (lambda ()
                                          (_%lp192023%_
                                           _%rest192046%_
                                           (cons (gx#core-expand-expression
                                                  _%hd192047%_)
                                                 _%body192026%_))))
                                       (_%E192060192087%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e192048192069%_)
                                              (let ((_%e192065192077%_
                                                     (gx#syntax-e
                                                      _%e192048192069%_)))
                                                (let ((_%hd192066192080%_
                                                       (##car _%e192065192077%_))
                                                      (_%tl192067192082%_
                                                       (##cdr _%e192065192077%_)))
                                                  (let ((_%form192085%_
                                                         _%hd192066192080%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form192085%_
                                                         gx#special-form-binding?)
                                                        (_%lp192023%_
                                                         _%rest192046%_
                                                         (cons _%hd192047%_
                                                               _%body192026%_))
                                                        (_%E192064192073%_)))))
                                              (_%E192064192073%_))))
                                       (_%E192050192099%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e192048192069%_)
                                              (let ((_%e192061192091%_
                                                     (gx#syntax-e
                                                      _%e192048192069%_)))
                                                (let ((_%hd192062192094%_
                                                       (##car _%e192061192091%_))
                                                      (_%tl192063192096%_
                                                       (##cdr _%e192061192091%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd192062192094%_)
                                                           (gx#core-identifier=?
                                                            _%hd192062192094%_
                                                            '%#export))
                                                      (_%lp192023%_
                                                       _%rest192046%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd192047%_)
                                                             _%body192026%_))
                                                      (_%E192060192087%_))))
                                              (_%E192060192087%_))))
                                       (_%E192049192131%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e192048192069%_)
                                              (let ((_%e192051192103%_
                                                     (gx#syntax-e
                                                      _%e192048192069%_)))
                                                (let ((_%hd192052192106%_
                                                       (##car _%e192051192103%_))
                                                      (_%tl192053192108%_
                                                       (##cdr _%e192051192103%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd192052192106%_)
                                                           (gx#core-identifier=?
                                                            _%hd192052192106%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl192053192108%_)
                                                          (let ((_%e192054192111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl192053192108%_)))
                    (let ((_%hd192055192114%_ (##car _%e192054192111%_))
                          (_%tl192056192116%_ (##cdr _%e192054192111%_)))
                      (let ((_%hd-bind192119%_ _%hd192055192114%_))
                        (if (gx#stx-pair? _%tl192056192116%_)
                            (let ((_%e192057192121%_
                                   (gx#syntax-e _%tl192056192116%_)))
                              (let ((_%hd192058192124%_
                                     (##car _%e192057192121%_))
                                    (_%tl192059192126%_
                                     (##cdr _%e192057192121%_)))
                                (let ((_%expr192129%_ _%hd192058192124%_))
                                  (if (gx#stx-null? _%tl192059192126%_)
                                      (_%lp192023%_
                                       _%rest192046%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind192119%_)
                                               (gx#core-expand-expression
                                                _%expr192129%_))
                                              (gx#stx-source _%hd192047%_))
                                             _%body192026%_))
                                      (_%E192050192099%_)))))
                            (_%E192050192099%_)))))
                  (_%E192050192099%_))
              (_%E192050192099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E192050192099%_)))))
                                  (_%E192049192131%_)))))
                        (if (pair? _%rest192027192035%_)
                            (let ((_%hd192032192138%_
                                   (##car _%rest192027192035%_))
                                  (_%tl192033192140%_
                                   (##cdr _%rest192027192035%_)))
                              (let* ((_%hd192143%_ _%hd192032192138%_)
                                     (_%rest192145%_ _%tl192033192140%_))
                                (_%K192031192135%_
                                 _%rest192145%_
                                 _%hd192143%_)))
                            (_%else192029192043%_)))))))
          (_%expand-body192019%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body192016%_)
            _%expand-special192018%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx191857%_
               _%expanded?191858%_
               _%method191859%_
               _%current-phi191860%_
               _%expand1191861%_)
        (letrec ((_%K191863%_
                  (lambda (_%rest191983%_ _%r191984%_)
                    (let* ((_%e191985191992%_ _%rest191983%_)
                           (_%E191987191996%_ (lambda () _%r191984%_))
                           (_%E191986192012%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191985191992%_)
                                  (let ((_%e191988192000%_
                                         (gx#syntax-e _%e191985191992%_)))
                                    (let ((_%hd191989192003%_
                                           (##car _%e191988192000%_))
                                          (_%tl191990192005%_
                                           (##cdr _%e191988192000%_)))
                                      (let* ((_%hd192008%_ _%hd191989192003%_)
                                             (_%rest192010%_
                                              _%tl191990192005%_))
                                        (_%step191864%_
                                         _%hd192008%_
                                         _%rest192010%_
                                         _%r191984%_))))
                                  (_%E191987191996%_)))))
                      (_%E191986192012%_))))
                 (_%step191864%_
                  (lambda (_%hd191897%_ _%rest191898%_ _%r191899%_)
                    (let* ((_%e191900191918%_ _%hd191897%_)
                           (_%E191913191922%_
                            (lambda ()
                              (if (_%expanded?191858%_ (gx#stx-e _%hd191897%_))
                                  (_%K191863%_
                                   _%rest191898%_
                                   (cons (gx#stx-e _%hd191897%_) _%r191899%_))
                                  (_%expand1191861%_
                                   _%hd191897%_
                                   _%K191863%_
                                   _%rest191898%_
                                   _%r191899%_))))
                           (_%E191909191938%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191900191918%_)
                                  (let ((_%e191914191926%_
                                         (gx#syntax-e _%e191900191918%_)))
                                    (let ((_%hd191915191929%_
                                           (##car _%e191914191926%_))
                                          (_%tl191916191931%_
                                           (##cdr _%e191914191926%_)))
                                      (let* ((_%macro191934%_
                                              _%hd191915191929%_)
                                             (_%body191936%_
                                              _%tl191916191931%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro191934%_
                                             gx#syntax-binding?)
                                            (_%K191863%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro191934%_)
                                                    _%hd191897%_
                                                    _%method191859%_)
                                                   _%rest191898%_)
                                             _%r191899%_)
                                            (_%E191913191922%_)))))
                                  (_%E191913191922%_))))
                           (_%E191902191952%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191900191918%_)
                                  (let ((_%e191910191942%_
                                         (gx#syntax-e _%e191900191918%_)))
                                    (let ((_%hd191911191945%_
                                           (##car _%e191910191942%_))
                                          (_%tl191912191947%_
                                           (##cdr _%e191910191942%_)))
                                      (if (eq? (gx#stx-e _%hd191911191945%_)
                                               'begin:)
                                          (let ((_%body191950%_
                                                 _%tl191912191947%_))
                                            (_%K191863%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest191898%_
                                              _%body191950%_)
                                             _%r191899%_))
                                          (_%E191909191938%_))))
                                  (_%E191909191938%_))))
                           (_%E191901191979%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191900191918%_)
                                  (let ((_%e191903191956%_
                                         (gx#syntax-e _%e191900191918%_)))
                                    (let ((_%hd191904191959%_
                                           (##car _%e191903191956%_))
                                          (_%tl191905191961%_
                                           (##cdr _%e191903191956%_)))
                                      (if (eq? (gx#stx-e _%hd191904191959%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl191905191961%_)
                                              (let ((_%e191906191964%_
                                                     (gx#syntax-e
                                                      _%tl191905191961%_)))
                                                (let ((_%hd191907191967%_
                                                       (##car _%e191906191964%_))
                                                      (_%tl191908191969%_
                                                       (##cdr _%e191906191964%_)))
                                                  (let* ((_%dphi191972%_
                                                          _%hd191907191967%_)
                                                         (_%body191974%_
                                                          _%tl191908191969%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi191972%_)
                                                        (let ((_%rbody191977%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K191863%_ _%body191974%_ '()))
                        _%current-phi191860%_
                        (fx+ (gx#stx-e _%dphi191972%_)
                             (_%current-phi191860%_)))))
                  (_%K191863%_
                   _%rest191898%_
                   (foldr__0 cons _%r191899%_ _%rbody191977%_)))
                (_%E191902191952%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E191902191952%_))
                                          (_%E191902191952%_))))
                                  (_%E191902191952%_)))))
                      (_%E191901191979%_)))))
          (let* ((_%e191865191872%_ _%stx191857%_)
                 (_%E191867191876%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e191865191872%_)))
                 (_%E191866191893%_
                  (lambda ()
                    (if (gx#stx-pair? _%e191865191872%_)
                        (let ((_%e191868191880%_
                               (gx#syntax-e _%e191865191872%_)))
                          (let ((_%hd191869191883%_ (##car _%e191868191880%_))
                                (_%tl191870191885%_ (##cdr _%e191868191880%_)))
                            (let ((_%body191888%_ _%tl191870191885%_))
                              (if (_%current-phi191860%_)
                                  (_%K191863%_ _%body191888%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K191863%_ _%body191888%_ '()))
                                   _%current-phi191860%_
                                   (gx#current-expander-phi))))))
                        (_%E191867191876%_)))))
            (_%E191866191893%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx191511%_ _%internal-expand?191512%_)
        (letrec ((_%expand1191514%_
                  (lambda (_%hd191829%_ _%K191830%_ _%rest191831%_ _%r191832%_)
                    (if (gx#core-bound-module? _%hd191829%_)
                        (_%import1191515%_
                         (gx#syntax-local-e__0 _%hd191829%_)
                         _%K191830%_
                         _%rest191831%_
                         _%r191832%_)
                        (if (gx#core-library-module-path? _%hd191829%_)
                            (_%import1191515%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd191829%_))
                             _%K191830%_
                             _%rest191831%_
                             _%r191832%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd191829%_)
                                (_%import1191515%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd191829%_))
                                 _%K191830%_
                                 _%rest191831%_
                                 _%r191832%_)
                                (let ((_%e191838%_ (gx#stx-e _%hd191829%_)))
                                  (if (pair? _%e191838%_)
                                      (let ((_%$e191841%_
                                             (gx#stx-e (##car _%e191838%_))))
                                        (if (eq? 'spec: _%$e191841%_)
                                            (_%import-spec191518%_
                                             _%hd191829%_
                                             _%K191830%_
                                             _%rest191831%_
                                             _%r191832%_)
                                            (if (eq? 'in: _%$e191841%_)
                                                (_%import-submodule191516%_
                                                 _%hd191829%_
                                                 _%K191830%_
                                                 _%rest191831%_
                                                 _%r191832%_)
                                                (if (eq? 'runtime:
                                                         _%$e191841%_)
                                                    (_%import-runtime191517%_
                                                     _%hd191829%_
                                                     _%K191830%_
                                                     _%rest191831%_
                                                     _%r191832%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx191511%_
                                                     _%hd191829%_)))))
                                      (if (string? _%e191838%_)
                                          (_%import1191515%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd191829%_
                                             (gx#stx-source _%stx191511%_)))
                                           _%K191830%_
                                           _%rest191831%_
                                           _%r191832%_)
                                          (if (##structure-instance-of?
                                               _%e191838%_
                                               'gx#module-context::t)
                                              (_%K191830%_
                                               _%rest191831%_
                                               (cons _%e191838%_ _%r191832%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx191511%_
                                               _%hd191829%_))))))))))
                 (_%import1191515%_
                  (lambda (_%ctx191818%_
                           _%K191819%_
                           _%rest191820%_
                           _%r191821%_)
                    (let ((_%dphi191823%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K191819%_
                       _%rest191820%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx191818%_
                              _%dphi191823%_
                              (map (lambda (_%g191824191826%_)
                                     (gx#core-module-export->import__%
                                      _%g191824191826%_
                                      '#f
                                      _%dphi191823%_))
                                   (##unchecked-structure-ref
                                    _%ctx191818%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r191821%_)))))
                 (_%import-submodule191516%_
                  (lambda (_%hd191785%_ _%K191786%_ _%rest191787%_ _%r191788%_)
                    (let* ((_%e191789191796%_ _%hd191785%_)
                           (_%E191791191800%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e191789191796%_)))
                           (_%E191790191814%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191789191796%_)
                                  (let ((_%e191792191804%_
                                         (gx#syntax-e _%e191789191796%_)))
                                    (let ((_%hd191793191807%_
                                           (##car _%e191792191804%_))
                                          (_%tl191794191809%_
                                           (##cdr _%e191792191804%_)))
                                      (let ((_%spath191812%_
                                             _%tl191794191809%_))
                                        (_%import1191515%_
                                         (_%import-spec-source191519%_
                                          _%spath191812%_)
                                         _%K191786%_
                                         _%rest191787%_
                                         _%r191788%_))))
                                  (_%E191791191800%_)))))
                      (_%E191790191814%_))))
                 (_%import-runtime191517%_
                  (lambda (_%hd191752%_ _%K191753%_ _%rest191754%_ _%r191755%_)
                    (let* ((_%e191756191763%_ _%hd191752%_)
                           (_%E191758191767%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e191756191763%_)))
                           (_%E191757191781%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191756191763%_)
                                  (let ((_%e191759191771%_
                                         (gx#syntax-e _%e191756191763%_)))
                                    (let ((_%hd191760191774%_
                                           (##car _%e191759191771%_))
                                          (_%tl191761191776%_
                                           (##cdr _%e191759191771%_)))
                                      (let ((_%spath191779%_
                                             _%tl191761191776%_))
                                        (_%K191753%_
                                         _%rest191754%_
                                         (cons (_%import-spec-source191519%_
                                                _%spath191779%_)
                                               _%r191755%_)))))
                                  (_%E191758191767%_)))))
                      (_%E191757191781%_))))
                 (_%import-spec191518%_
                  (lambda (_%hd191590%_ _%K191591%_ _%rest191592%_ _%r191593%_)
                    (let* ((_%e191594191611%_ _%hd191590%_)
                           (_%E191603191615%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e191594191611%_)))
                           (_%E191596191726%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191594191611%_)
                                  (let ((_%e191604191619%_
                                         (gx#syntax-e _%e191594191611%_)))
                                    (let ((_%hd191605191622%_
                                           (##car _%e191604191619%_))
                                          (_%tl191606191624%_
                                           (##cdr _%e191604191619%_)))
                                      (if (gx#stx-pair? _%tl191606191624%_)
                                          (let ((_%e191607191627%_
                                                 (gx#syntax-e
                                                  _%tl191606191624%_)))
                                            (let ((_%hd191608191630%_
                                                   (##car _%e191607191627%_))
                                                  (_%tl191609191632%_
                                                   (##cdr _%e191607191627%_)))
                                              (let* ((_%path191635%_
                                                      _%hd191608191630%_)
                                                     (_%specs191637%_
                                                      _%tl191609191632%_))
                                                (let ((_%src-ctx191639%_
                                                       (_%import-spec-source191519%_
                                                        _%path191635%_))
                                                      (_%exports191640%_
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
                                                      (_%specs191641%_
                                                       (gx#syntax->list
                                                        _%specs191637%_)))
                                                  (for-each
                                                   (lambda (_%out191643%_)
                                                     (__hash-put!
                                                      _%exports191640%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out191643%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out191643%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out191643%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx191639%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K191591%_
                                                   _%rest191592%_
                                                   (foldl__0
                                                    (lambda (_%spec191645%_
                                                             _%r191646%_)
                                                      (let* ((_%e191647191663%_
                                                              _%spec191645%_)
                                                             (_%E191649191667%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e191647191663%_)))
                     (_%E191648191722%_
                      (lambda ()
                        (if (gx#stx-pair? _%e191647191663%_)
                            (let ((_%e191650191671%_
                                   (gx#syntax-e _%e191647191663%_)))
                              (let ((_%hd191651191674%_
                                     (##car _%e191650191671%_))
                                    (_%tl191652191676%_
                                     (##cdr _%e191650191671%_)))
                                (let ((_%phi191679%_ _%hd191651191674%_))
                                  (if (gx#stx-pair? _%tl191652191676%_)
                                      (let ((_%e191653191681%_
                                             (gx#syntax-e _%tl191652191676%_)))
                                        (let ((_%hd191654191684%_
                                               (##car _%e191653191681%_))
                                              (_%tl191655191686%_
                                               (##cdr _%e191653191681%_)))
                                          (let ((_%name191689%_
                                                 _%hd191654191684%_))
                                            (if (gx#stx-pair?
                                                 _%tl191655191686%_)
                                                (let ((_%e191656191691%_
                                                       (gx#syntax-e
                                                        _%tl191655191686%_)))
                                                  (let ((_%hd191657191694%_
                                                         (##car _%e191656191691%_))
                                                        (_%tl191658191696%_
                                                         (##cdr _%e191656191691%_)))
                                                    (let ((_%src-phi191699%_
                                                           _%hd191657191694%_))
                                                      (if (gx#stx-pair?
                                                           _%tl191658191696%_)
                                                          (let ((_%e191659191701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl191658191696%_)))
                    (let ((_%hd191660191704%_ (##car _%e191659191701%_))
                          (_%tl191661191706%_ (##cdr _%e191659191701%_)))
                      (let ((_%src-name191709%_ _%hd191660191704%_))
                        (if (gx#stx-null? _%tl191661191706%_)
                            (if (and (gx#stx-fixnum? _%src-phi191699%_)
                                     (gx#identifier? _%src-name191709%_)
                                     (gx#stx-fixnum? _%phi191679%_)
                                     (gx#identifier? _%name191689%_))
                                (let ((_%src-phi191711%_
                                       (gx#stx-e _%src-phi191699%_))
                                      (_%src-name191712%_
                                       (gx#core-identifier-key
                                        _%src-name191709%_))
                                      (_%phi191713%_ (gx#stx-e _%phi191679%_))
                                      (_%name191714%_
                                       (gx#core-identifier-key
                                        _%name191689%_)))
                                  (let ((_%$e191716%_
                                         (__hash-get
                                          _%exports191640%_
                                          (cons _%src-phi191711%_
                                                _%src-name191712%_))))
                                    (if _%$e191716%_
                                        ((lambda (_%out191719%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out191719%_
                                                  _%name191714%_
                                                  (fx- _%phi191713%_
                                                       _%src-phi191711%_))
                                                 _%r191646%_))
                                         _%$e191716%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx191511%_
                                         _%hd191590%_))))
                                (_%E191649191667%_))
                            (_%E191649191667%_)))))
                  (_%E191649191667%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E191649191667%_)))))
                                      (_%E191649191667%_)))))
                            (_%E191649191667%_)))))
                (_%E191648191722%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r191593%_
                                                    _%specs191641%_))))))
                                          (_%E191603191615%_))))
                                  (_%E191603191615%_))))
                           (_%E191595191748%_
                            (lambda ()
                              (if (gx#stx-pair? _%e191594191611%_)
                                  (let ((_%e191597191730%_
                                         (gx#syntax-e _%e191594191611%_)))
                                    (let ((_%hd191598191733%_
                                           (##car _%e191597191730%_))
                                          (_%tl191599191735%_
                                           (##cdr _%e191597191730%_)))
                                      (if (gx#stx-pair? _%tl191599191735%_)
                                          (let ((_%e191600191738%_
                                                 (gx#syntax-e
                                                  _%tl191599191735%_)))
                                            (let ((_%hd191601191741%_
                                                   (##car _%e191600191738%_))
                                                  (_%tl191602191743%_
                                                   (##cdr _%e191600191738%_)))
                                              (let ((_%path191746%_
                                                     _%hd191601191741%_))
                                                (if (gx#stx-null?
                                                     _%tl191602191743%_)
                                                    (_%K191591%_
                                                     _%rest191592%_
                                                     (cons (_%import-spec-source191519%_
                                                            _%path191746%_)
                                                           _%r191593%_))
                                                    (_%E191596191726%_)))))
                                          (_%E191596191726%_))))
                                  (_%E191596191726%_)))))
                      (_%E191595191748%_))))
                 (_%import-spec-source191519%_
                  (lambda (_%spath191588%_)
                    (gx#core-import-nested-module
                     _%spath191588%_
                     _%stx191511%_)))
                 (_%import!191520%_
                  (lambda (_%rbody191533%_)
                    (letrec* ((_%current-ctx191535%_
                               (gx#current-expander-context))
                              (_%deps191536%_ (make-hash-table-eq))
                              (_%bind!191537%_
                               (lambda (_%hd191586%_)
                                 (gx#core-bind-import!__1
                                  _%hd191586%_
                                  _%current-ctx191535%_))))
                      (let _%lp191539%_ ((_%rest191541%_ _%rbody191533%_)
                                         (_%body191542%_ '()))
                        (let* ((_%rest191543191551%_ _%rest191541%_)
                               (_%else191545191562%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx191535%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx191535%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx191535%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body191542%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx191559%_ _%_191560%_)
                                     (gx#eval-module _%ctx191559%_))
                                   _%deps191536%_)
                                  _%body191542%_))
                               (_%K191547191574%_
                                (lambda (_%rest191565%_ _%hd191566%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd191566%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!191537%_ _%hd191566%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd191566%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd191566%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps191536%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd191566%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd191566%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!191537%_
                                             (##unchecked-structure-ref
                                              _%hd191566%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd191566%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps191536%_
                                                 (##unchecked-structure-ref
                                                  _%hd191566%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e191570%_
                                                 (##structure-instance-of?
                                                  _%hd191566%_
                                                  'gx#module-context::t)))
                                            (if _%$e191570%_
                                                _%$e191570%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx191511%_
                                                 _%hd191566%_)))))
                                  (_%lp191539%_
                                   _%rest191565%_
                                   (cons _%hd191566%_ _%body191542%_)))))
                          (if (pair? _%rest191543191551%_)
                              (let ((_%hd191548191577%_
                                     (##car _%rest191543191551%_))
                                    (_%tl191549191579%_
                                     (##cdr _%rest191543191551%_)))
                                (let* ((_%hd191582%_ _%hd191548191577%_)
                                       (_%rest191584%_ _%tl191549191579%_))
                                  (_%K191547191574%_
                                   _%rest191584%_
                                   _%hd191582%_)))
                              (_%else191545191562%_)))))))
                 (_%expanded-import?191521%_
                  (lambda (_%e191525%_)
                    (let ((_%$e191527%_
                           (##structure-direct-instance-of?
                            _%e191525%_
                            'gx#import-set::t)))
                      (if _%$e191527%_
                          _%$e191527%_
                          (let ((_%$e191530%_
                                 (##structure-direct-instance-of?
                                  _%e191525%_
                                  'gx#module-import::t)))
                            (if _%$e191530%_
                                _%$e191530%_
                                (##structure-instance-of?
                                 _%e191525%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody191523%_
                 (gx#core-expand-import/export
                  _%stx191511%_
                  _%expanded-import?191521%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1191514%_)))
            (if _%internal-expand?191512%_
                (reverse _%rbody191523%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!191520%_ _%rbody191523%_))
                 (gx#stx-source _%stx191511%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx191850%_)
        (let ((_%internal-expand?191852%_ '#f))
          (gx#core-expand-import%__%
           _%stx191850%_
           _%internal-expand?191852%_))))
    (define gx#core-expand-import%
      (lambda _g194509_
        (let ((_g194510_ (##length _g194509_)))
          (cond ((##fx= _g194510_ 1)
                 (apply gx#core-expand-import%__0 _g194509_))
                ((##fx= _g194510_ 2)
                 (apply gx#core-expand-import%__% _g194509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g194509_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath191438%_ _%where191439%_)
        (let* ((_%e191440191447%_ _%spath191438%_)
               (_%E191442191451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e191440191447%_)))
               (_%E191441191506%_
                (lambda ()
                  (if (gx#stx-pair? _%e191440191447%_)
                      (let ((_%e191443191455%_
                             (gx#syntax-e _%e191440191447%_)))
                        (let ((_%hd191444191458%_ (##car _%e191443191455%_))
                              (_%tl191445191460%_ (##cdr _%e191443191455%_)))
                          (let* ((_%origin191463%_ _%hd191444191458%_)
                                 (_%sub191465%_ _%tl191445191460%_)
                                 (_%origin-ctx191467%_
                                  (if (gx#stx-false? _%origin191463%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin191463%_))))
                            (let _%lp191469%_ ((_%rest191471%_ _%sub191465%_)
                                               (_%ctx191472%_
                                                _%origin-ctx191467%_))
                              (let* ((_%e191473191480%_ _%rest191471%_)
                                     (_%E191475191484%_
                                      (lambda () _%ctx191472%_))
                                     (_%E191474191502%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e191473191480%_)
                                            (let ((_%e191476191488%_
                                                   (gx#syntax-e
                                                    _%e191473191480%_)))
                                              (let ((_%hd191477191491%_
                                                     (##car _%e191476191488%_))
                                                    (_%tl191478191493%_
                                                     (##cdr _%e191476191488%_)))
                                                (let* ((_%id191496%_
                                                        _%hd191477191491%_)
                                                       (_%rest191498%_
                                                        _%tl191478191493%_)
                                                       (_%bind191500%_
                                                        (gx#resolve-identifier__%
                                                         _%id191496%_
                                                         '0
                                                         _%ctx191472%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind191500%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind191500%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where191439%_
                                                       _%spath191438%_
                                                       _%id191496%_))
                                                  (_%lp191469%_
                                                   _%rest191498%_
                                                   (##unchecked-structure-ref
                                                    _%bind191500%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E191475191484%_)))))
                                (_%E191474191502%_))))))
                      (_%E191442191451%_)))))
          (_%E191441191506%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd191436%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd191436%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx190931%_ _%internal-expand?190932%_)
        (letrec* ((_%make-export__194437194438%_
                   (lambda (_%bind191384%_
                            _%phi191385%_
                            _%ctx191386%_
                            _%name191387%_)
                     (let* ((_%key191389%_
                             (##unchecked-structure-ref
                              _%bind191384%_
                              '2
                              '#f
                              '#f))
                            (_%export-key191391%_
                             (if _%name191387%_
                                 (gx#core-identifier-key _%name191387%_)
                                 _%key191389%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx191386%_
                        _%key191389%_
                        _%phi191385%_
                        _%export-key191391%_
                        (let ((_%$e191394%_
                               (##structure-instance-of?
                                _%bind191384%_
                                'gx#extern-binding::t)))
                          (if _%$e191394%_
                              _%$e191394%_
                              (##structure-direct-instance-of?
                               _%bind191384%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__194439194442%_
                   (lambda (_%bind191400%_)
                     (let* ((_%phi191402%_ (gx#current-export-expander-phi))
                            (_%ctx191404%_ (gx#current-expander-context))
                            (_%name191406%_ '#f))
                       (_%make-export__194437194438%_
                        _%bind191400%_
                        _%phi191402%_
                        _%ctx191404%_
                        _%name191406%_))))
                  (_%make-export__1__194440194443%_
                   (lambda (_%bind191408%_ _%phi191409%_)
                     (let* ((_%ctx191411%_ (gx#current-expander-context))
                            (_%name191413%_ '#f))
                       (_%make-export__194437194438%_
                        _%bind191408%_
                        _%phi191409%_
                        _%ctx191411%_
                        _%name191413%_))))
                  (_%make-export__2__194441194444%_
                   (lambda (_%bind191415%_ _%phi191416%_ _%ctx191417%_)
                     (let ((_%name191419%_ '#f))
                       (_%make-export__194437194438%_
                        _%bind191415%_
                        _%phi191416%_
                        _%ctx191417%_
                        _%name191419%_))))
                  (_%make-export190934%_
                   (lambda _g194511_
                     (let ((_g194512_ (##length _g194511_)))
                       (cond ((##fx= _g194512_ 1)
                              (apply _%make-export__0__194439194442%_
                                     _g194511_))
                             ((##fx= _g194512_ 2)
                              (apply _%make-export__1__194440194443%_
                                     _g194511_))
                             ((##fx= _g194512_ 3)
                              (apply _%make-export__2__194441194444%_
                                     _g194511_))
                             ((##fx= _g194512_ 4)
                              (apply _%make-export__194437194438%_ _g194511_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g194511_))))))
                  (_%expand1190935%_
                   (lambda (_%hd191089%_
                            _%K191090%_
                            _%rest191091%_
                            _%r191092%_)
                     (let* ((_%e191093191125%_ _%hd191089%_)
                            (_%E191120191129%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx190931%_
                                _%hd191089%_)))
                            (_%E191110191213%_
                             (lambda ()
                               (if (gx#stx-pair? _%e191093191125%_)
                                   (let ((_%e191121191133%_
                                          (gx#syntax-e _%e191093191125%_)))
                                     (let ((_%hd191122191136%_
                                            (##car _%e191121191133%_))
                                           (_%tl191123191138%_
                                            (##cdr _%e191121191133%_)))
                                       (if (eq? (gx#stx-e _%hd191122191136%_)
                                                'import:)
                                           (let ((_%in191141%_
                                                  _%tl191123191138%_))
                                             (if (gx#stx-list? _%in191141%_)
                                                 (let _%lp191143%_ ((_%in-rest191145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in191141%_)
                            (_%r191146%_ _%r191092%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e191147191154%_
                                                           _%in-rest191145%_)
                                                          (_%E191149191158%_
                                                           (lambda ()
                                                             (_%K191090%_
                                                              _%rest191091%_
                                                              _%r191146%_)))
                                                          (_%E191148191209%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e191147191154%_)
                         (let ((_%e191150191162%_
                                (gx#syntax-e _%e191147191154%_)))
                           (let ((_%hd191151191165%_ (##car _%e191150191162%_))
                                 (_%tl191152191167%_
                                  (##cdr _%e191150191162%_)))
                             (let* ((_%hd191170%_ _%hd191151191165%_)
                                    (_%in-rest191172%_ _%tl191152191167%_)
                                    (_%src191207%_
                                     (if (gx#core-bound-module? _%hd191170%_)
                                         (gx#syntax-local-e__0 _%hd191170%_)
                                         (if (gx#core-library-module-path?
                                              _%hd191170%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd191170%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd191170%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd191170%_))
                                                 (if (gx#stx-string?
                                                      _%hd191170%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd191170%_
                                                       (gx#stx-source
                                                        _%stx190931%_)))
                                                     (let* ((_%e191178191185%_
                                                             _%hd191170%_)
                                                            (_%E191180191189%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx190931%_
                                                                _%hd191170%_)))
                                                            (_%E191179191203%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e191178191185%_)
                           (let ((_%e191181191193%_
                                  (gx#syntax-e _%e191178191185%_)))
                             (let ((_%hd191182191196%_
                                    (##car _%e191181191193%_))
                                   (_%tl191183191198%_
                                    (##cdr _%e191181191193%_)))
                               (if (eq? (gx#stx-e _%hd191182191196%_) 'in:)
                                   (let ((_%spath191201%_ _%tl191183191198%_))
                                     (gx#core-import-nested-module
                                      _%spath191201%_
                                      _%stx190931%_))
                                   (_%E191180191189%_))))
                           (_%E191180191189%_)))))
               (_%E191179191203%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp191143%_
                                _%in-rest191172%_
                                (_%export-imports190936%_
                                 _%src191207%_
                                 _%r191146%_)))))
                         (_%E191149191158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E191148191209%_)))
                                                 (_%E191120191129%_)))
                                           (_%E191120191129%_))))
                                   (_%E191120191129%_))))
                            (_%E191097191253%_
                             (lambda ()
                               (if (gx#stx-pair? _%e191093191125%_)
                                   (let ((_%e191111191217%_
                                          (gx#syntax-e _%e191093191125%_)))
                                     (let ((_%hd191112191220%_
                                            (##car _%e191111191217%_))
                                           (_%tl191113191222%_
                                            (##cdr _%e191111191217%_)))
                                       (if (eq? (gx#stx-e _%hd191112191220%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl191113191222%_)
                                               (let ((_%e191114191225%_
                                                      (gx#syntax-e
                                                       _%tl191113191222%_)))
                                                 (let ((_%hd191115191228%_
                                                        (##car _%e191114191225%_))
                                                       (_%tl191116191230%_
                                                        (##cdr _%e191114191225%_)))
                                                   (let ((_%id191233%_
                                                          _%hd191115191228%_))
                                                     (if (gx#stx-pair?
                                                          _%tl191116191230%_)
                                                         (let ((_%e191117191235%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl191116191230%_)))
                   (let ((_%hd191118191238%_ (##car _%e191117191235%_))
                         (_%tl191119191240%_ (##cdr _%e191117191235%_)))
                     (let ((_%name191243%_ _%hd191118191238%_))
                       (if (gx#stx-null? _%tl191119191240%_)
                           (let* ((_%phi191245%_
                                   (gx#current-export-expander-phi))
                                  (_%$e191247%_
                                   (gx#core-resolve-identifier__1
                                    _%id191233%_
                                    _%phi191245%_)))
                             (if _%$e191247%_
                                 ((lambda (_%bind191250%_)
                                    (_%K191090%_
                                     _%rest191091%_
                                     (cons (_%make-export__194437194438%_
                                            _%bind191250%_
                                            _%phi191245%_
                                            (gx#current-expander-context)
                                            _%name191243%_)
                                           _%r191092%_)))
                                  _%$e191247%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx190931%_
                                  _%hd191089%_
                                  _%id191233%_)))
                           (_%E191110191213%_)))))
                 (_%E191110191213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E191110191213%_))
                                           (_%E191110191213%_))))
                                   (_%E191110191213%_))))
                            (_%E191096191303%_
                             (lambda ()
                               (if (gx#stx-pair? _%e191093191125%_)
                                   (let ((_%e191098191257%_
                                          (gx#syntax-e _%e191093191125%_)))
                                     (let ((_%hd191099191260%_
                                            (##car _%e191098191257%_))
                                           (_%tl191100191262%_
                                            (##cdr _%e191098191257%_)))
                                       (if (eq? (gx#stx-e _%hd191099191260%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl191100191262%_)
                                               (let ((_%e191101191265%_
                                                      (gx#syntax-e
                                                       _%tl191100191262%_)))
                                                 (let ((_%hd191102191268%_
                                                        (##car _%e191101191265%_))
                                                       (_%tl191103191270%_
                                                        (##cdr _%e191101191265%_)))
                                                   (let ((_%phi191273%_
                                                          _%hd191102191268%_))
                                                     (if (gx#stx-pair?
                                                          _%tl191103191270%_)
                                                         (let ((_%e191104191275%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl191103191270%_)))
                   (let ((_%hd191105191278%_ (##car _%e191104191275%_))
                         (_%tl191106191280%_ (##cdr _%e191104191275%_)))
                     (let ((_%id191283%_ _%hd191105191278%_))
                       (if (gx#stx-pair? _%tl191106191280%_)
                           (let ((_%e191107191285%_
                                  (gx#syntax-e _%tl191106191280%_)))
                             (let ((_%hd191108191288%_
                                    (##car _%e191107191285%_))
                                   (_%tl191109191290%_
                                    (##cdr _%e191107191285%_)))
                               (let ((_%name191293%_ _%hd191108191288%_))
                                 (if (gx#stx-null? _%tl191109191290%_)
                                     (if (and (gx#stx-fixnum? _%phi191273%_)
                                              (gx#identifier? _%id191283%_)
                                              (gx#identifier? _%name191293%_))
                                         (let* ((_%phi191295%_
                                                 (gx#stx-e _%phi191273%_))
                                                (_%$e191297%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id191283%_
                                                  _%phi191295%_)))
                                           (if _%$e191297%_
                                               ((lambda (_%bind191300%_)
                                                  (_%K191090%_
                                                   _%rest191091%_
                                                   (cons (_%make-export__194437194438%_
                                                          _%bind191300%_
                                                          _%phi191295%_
                                                          (gx#current-expander-context)
                                                          _%name191293%_)
                                                         _%r191092%_)))
                                                _%$e191297%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx190931%_
                                                _%hd191089%_
                                                _%id191283%_)))
                                         (_%E191097191253%_))
                                     (_%E191097191253%_)))))
                           (_%E191097191253%_)))))
                 (_%E191097191253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E191097191253%_))
                                           (_%E191097191253%_))))
                                   (_%E191097191253%_))))
                            (_%E191095191315%_
                             (lambda ()
                               (let ((_%id191307%_ _%e191093191125%_))
                                 (if (gx#identifier? _%id191307%_)
                                     (let ((_%$e191309%_
                                            (gx#core-resolve-identifier__1
                                             _%id191307%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e191309%_
                                           ((lambda (_%bind191312%_)
                                              (_%K191090%_
                                               _%rest191091%_
                                               (cons (_%make-export__0__194439194442%_
                                                      _%bind191312%_)
                                                     _%r191092%_)))
                                            _%$e191309%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx190931%_
                                            _%hd191089%_)))
                                     (_%E191096191303%_)))))
                            (_%E191094191379%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e191093191125%_) '#t)
                                   (let* ((_%current-ctx191319%_
                                           (gx#current-expander-context))
                                          (_%current-phi191321%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx191323%_
                                           (gx#core-context-shift
                                            _%current-ctx191319%_
                                            _%current-phi191321%_))
                                          (_%phi-bind191325%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx191323%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp191328%_ ((_%bind-rest191330%_
                                                         _%phi-bind191325%_)
                                                        (_%set191331%_ '()))
                                       (let* ((_%bind-rest191332191342%_
                                               _%bind-rest191330%_)
                                              (_%else191334191350%_
                                               (lambda ()
                                                 (_%K191090%_
                                                  _%rest191091%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi191321%_
                                                         _%set191331%_)
                                                        _%r191092%_))))
                                              (_%K191336191360%_
                                               (lambda (_%bind-rest191353%_
                                                        _%bind191354%_
                                                        _%key191355%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind191354%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind191354%_))
                                                     (_%lp191328%_
                                                      _%bind-rest191353%_
                                                      _%set191331%_)
                                                     (_%lp191328%_
                                                      _%bind-rest191353%_
                                                      (cons (_%make-export__2__194441194444%_
                                                             _%bind191354%_
                                                             _%current-phi191321%_
                                                             _%current-ctx191319%_)
                                                            _%set191331%_))))))
                                         (if (pair? _%bind-rest191332191342%_)
                                             (let ((_%hd191337191363%_
                                                    (##car _%bind-rest191332191342%_))
                                                   (_%tl191338191365%_
                                                    (##cdr _%bind-rest191332191342%_)))
                                               (if (pair? _%hd191337191363%_)
                                                   (let ((_%hd191339191368%_
                                                          (##car _%hd191337191363%_))
                                                         (_%tl191340191370%_
                                                          (##cdr _%hd191337191363%_)))
                                                     (let* ((_%key191373%_
                                                             _%hd191339191368%_)
                                                            (_%bind191375%_
                                                             _%tl191340191370%_)
                                                            (_%bind-rest191377%_
                                                             _%tl191338191365%_))
                                                       (_%K191336191360%_
                                                        _%bind-rest191377%_
                                                        _%bind191375%_
                                                        _%key191373%_)))
                                                   (_%else191334191350%_)))
                                             (_%else191334191350%_)))))
                                   (_%E191095191315%_)))))
                       (_%E191094191379%_))))
                  (_%export-imports190936%_
                   (lambda (_%src190966%_ _%r190967%_)
                     (letrec* ((_%current-ctx190969%_
                                (gx#current-expander-context))
                               (_%current-phi190970%_
                                (gx#current-export-expander-phi))
                               (_%import->export190971%_
                                (lambda (_%in191052%_)
                                  (let* ((_%in191053191061%_ _%in191052%_)
                                         (_%E191055191064%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in191053191061%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K191056191071%_
                                          (lambda (_%phi191067%_
                                                   _%key191068%_
                                                   _%out191069%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx190969%_
                                             _%key191068%_
                                             _%phi191067%_
                                             _%key191068%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in191053191061%_
                                         'gx#module-import::t)
                                        (let* ((_%e191057191074%_
                                                (##unchecked-structure-ref
                                                 _%in191053191061%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out191077%_
                                                _%e191057191074%_)
                                               (_%e191058191079%_
                                                (##unchecked-structure-ref
                                                 _%in191053191061%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key191082%_
                                                _%e191058191079%_)
                                               (_%e191059191084%_
                                                (##unchecked-structure-ref
                                                 _%in191053191061%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi191087%_
                                                _%e191059191084%_))
                                          (_%K191056191071%_
                                           _%phi191087%_
                                           _%key191082%_
                                           _%out191077%_))
                                        (_%E191055191064%_)))))
                               (_%fold-e190972%_
                                (lambda (_%in190974%_ _%r190975%_)
                                  (let* ((_%in190976190990%_ _%in190974%_)
                                         (_%else190979190998%_
                                          (lambda () _%r190975%_)))
                                    (let ((_%K190985191034%_
                                           (lambda (_%phi191030%_
                                                    _%key191031%_
                                                    _%out191032%_)
                                             (if (and (fx= _%phi191030%_
                                                           _%current-phi190970%_)
                                                      (eq? _%src190966%_
                                                           (##unchecked-structure-ref
                                                            _%out191032%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export190971%_
                                                        _%in190974%_)
                                                       _%r190975%_)
                                                 _%r190975%_)))
                                          (_%K190981191009%_
                                           (lambda (_%imports191002%_
                                                    _%phi191003%_
                                                    _%ctx191004%_)
                                             (if (and (fx= _%phi191003%_
                                                           _%current-phi190970%_)
                                                      (eq? _%src190966%_
                                                           _%ctx191004%_))
                                                 (foldl__0
                                                  (lambda (_%in191006%_
                                                           _%r191007%_)
                                                    (cons (_%import->export190971%_
                                                           _%in191006%_)
                                                          _%r191007%_))
                                                  _%r190975%_
                                                  _%imports191002%_)
                                                 _%r190975%_))))
                                      (let ((_%try-match190978191027%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in190976190990%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e190982191012%_
                                                           (##unchecked-structure-ref
                                                            _%in190976190990%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e190983191017%_
                                                           (##unchecked-structure-ref
                                                            _%in190976190990%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e190984191022%_
                                                           (##unchecked-structure-ref
                                                            _%in190976190990%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx191015%_
                                                            _%e190982191012%_)
                                                           (_%phi191020%_
                                                            _%e190983191017%_)
                                                           (_%imports191025%_
                                                            _%e190984191022%_))
                                                       (_%K190981191009%_
                                                        _%imports191025%_
                                                        _%phi191020%_
                                                        _%ctx191015%_)))
                                                   (_%else190979190998%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in190976190990%_
                                             'gx#module-import::t)
                                            (let* ((_%e190986191037%_
                                                    (##unchecked-structure-ref
                                                     _%in190976190990%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e190987191042%_
                                                    (##unchecked-structure-ref
                                                     _%in190976190990%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e190988191047%_
                                                    (##unchecked-structure-ref
                                                     _%in190976190990%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out191040%_
                                                     _%e190986191037%_)
                                                    (_%key191045%_
                                                     _%e190987191042%_)
                                                    (_%phi191050%_
                                                     _%e190988191047%_))
                                                (_%K190985191034%_
                                                 _%phi191050%_
                                                 _%key191045%_
                                                 _%out191040%_)))
                                            (_%try-match190978191027%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src190966%_
                              _%current-phi190970%_
                              (foldl__0
                               _%fold-e190972%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx190969%_
                                '8
                                '#f
                                '#f)))
                             _%r190967%_))))
                  (_%export!190937%_
                   (lambda (_%rbody190953%_)
                     (letrec* ((_%current-ctx190955%_
                                (gx#current-expander-context))
                               (_%fold-e190956%_
                                (lambda (_%out190960%_ _%r190961%_)
                                  (if (##structure-direct-instance-of?
                                       _%out190960%_
                                       'gx#module-export::t)
                                      (cons _%out190960%_ _%r190961%_)
                                      (if (##structure-direct-instance-of?
                                           _%out190960%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r190961%_
                                           (##unchecked-structure-ref
                                            _%out190960%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r190961%_)))))
                       (let ((_%body190958%_ (reverse _%rbody190953%_)))
                         (##unchecked-structure-set!
                          _%current-ctx190955%_
                          (foldl__0
                           _%fold-e190956%_
                           (##unchecked-structure-ref
                            _%current-ctx190955%_
                            '9
                            '#f
                            '#f)
                           _%body190958%_)
                          '9
                          '#f
                          '#f)
                         _%body190958%_))))
                  (_%expanded-export?190938%_
                   (lambda (_%e190948%_)
                     (let ((_%$e190950%_
                            (##structure-direct-instance-of?
                             _%e190948%_
                             'gx#module-export::t)))
                       (if _%$e190950%_
                           _%$e190950%_
                           (##structure-direct-instance-of?
                            _%e190948%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?190932%_)
              (let ((_%rbody190944%_
                     (gx#core-expand-import/export
                      _%stx190931%_
                      _%expanded-export?190938%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1190935%_)))
                (if _%internal-expand?190932%_
                    (reverse _%rbody190944%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!190937%_ _%rbody190944%_))
                     (gx#stx-source _%stx190931%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx190931%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx190931%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx191429%_)
        (let ((_%internal-expand?191431%_ '#f))
          (gx#core-expand-export%__%
           _%stx191429%_
           _%internal-expand?191431%_))))
    (define gx#core-expand-export%
      (lambda _g194513_
        (let ((_g194514_ (##length _g194513_)))
          (cond ((##fx= _g194514_ 1)
                 (apply gx#core-expand-export%__0 _g194513_))
                ((##fx= _g194514_ 2)
                 (apply gx#core-expand-export%__% _g194513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g194513_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd190928%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd190928%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx190898%_)
        (let* ((_%e190899190906%_ _%stx190898%_)
               (_%E190901190910%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e190899190906%_)))
               (_%E190900190924%_
                (lambda ()
                  (if (gx#stx-pair? _%e190899190906%_)
                      (let ((_%e190902190914%_
                             (gx#syntax-e _%e190899190906%_)))
                        (let ((_%hd190903190917%_ (##car _%e190902190914%_))
                              (_%tl190904190919%_ (##cdr _%e190902190914%_)))
                          (let ((_%body190922%_ _%tl190904190919%_))
                            (if (gx#identifier-list? _%body190922%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body190922%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body190922%_))
                                   (gx#stx-source _%stx190898%_)))
                                (_%E190901190910%_)))))
                      (_%E190901190910%_)))))
          (_%E190900190924%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id190864%_ _%private?190865%_ _%phi190866%_ _%ctx190867%_)
        (gx#core-bind-syntax!__%
         _%id190864%_
         ((if _%private?190865%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id190864%_))
         _%private?190865%_
         _%phi190866%_
         _%ctx190867%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id190872%_)
        (let* ((_%private?190874%_ '#f)
               (_%phi190876%_ (gx#current-expander-phi))
               (_%ctx190878%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id190872%_
           _%private?190874%_
           _%phi190876%_
           _%ctx190878%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id190880%_ _%private?190881%_)
        (let* ((_%phi190883%_ (gx#current-expander-phi))
               (_%ctx190885%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id190880%_
           _%private?190881%_
           _%phi190883%_
           _%ctx190885%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id190887%_ _%private?190888%_ _%phi190889%_)
        (let ((_%ctx190891%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id190887%_
           _%private?190888%_
           _%phi190889%_
           _%ctx190891%_))))
    (define gx#core-bind-feature!
      (lambda _g194515_
        (let ((_g194516_ (##length _g194515_)))
          (cond ((##fx= _g194516_ 1)
                 (apply gx#core-bind-feature!__0 _g194515_))
                ((##fx= _g194516_ 2)
                 (apply gx#core-bind-feature!__1 _g194515_))
                ((##fx= _g194516_ 3)
                 (apply gx#core-bind-feature!__2 _g194515_))
                ((##fx= _g194516_ 4)
                 (apply gx#core-bind-feature!__% _g194515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g194515_))))))))
