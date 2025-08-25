(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1756142920)
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
      (lambda _%$args136050%_
        (apply make-instance gx#module-import::t _%$args136050%_)))
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
      (lambda _%$args136047%_
        (apply make-instance gx#module-export::t _%$args136047%_)))
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
      (lambda _%$args136044%_
        (apply make-instance gx#import-set::t _%$args136044%_)))
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
      (lambda _%$args136041%_
        (apply make-instance gx#export-set::t _%$args136041%_)))
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
      (lambda _%$args136038%_
        (apply make-instance gx#import-expander::t _%$args136038%_)))
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
      (lambda _%$args136035%_
        (apply make-instance gx#export-expander::t _%$args136035%_)))
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
      (lambda _%$args136032%_
        (apply make-instance gx#import-export-expander::t _%$args136032%_)))
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
      (lambda (_%path136029%_ _%fun136030%_)
        (call-with-input-file
         (cons 'path: (cons _%path136029%_ gx#source-file-settings))
         _%fun136030%_)))
    (define gx#module-context:::init!
      (lambda (_%self136012%_
               _%id136013%_
               _%super136014%_
               _%ns136015%_
               _%path136016%_)
        (let ((_%self136019%_ _%self136012%_))
          (if (##fx< '11 (##structure-length _%self136019%_))
              (begin
                (##unchecked-structure-set!
                 _%self136019%_
                 _%id136013%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self136019%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self136019%_
                 _%super136014%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self136019%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self136019%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self136019%_
                 _%ns136015%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self136019%_
                 _%path136016%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self136019%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self136019%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self136019%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self136019%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self136019%_
                     '11
                     (##structure-length _%self136019%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self135845%_ _%ctx135846%_ _%root135847%_)
        (let* ((_%self135850%_ _%self135845%_)
               (_%super135866%_
                (let ((_%$e135860%_ _%root135847%_))
                  (if _%$e135860%_
                      _%$e135860%_
                      (let ((_%$e135863%_ (gx#core-context-root__0)))
                        (if _%$e135863%_
                            _%$e135863%_
                            (let ((__obj136094
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor136095
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj136094
                                      ':init!)))
                                (if __constructor136095
                                    (__constructor136095 __obj136094)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj136094)))))))
          (if _%ctx135846%_
              (let ((_%id135869%_
                     (##structure-ref
                      _%ctx135846%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path135870%_
                     (##structure-ref
                      _%ctx135846%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in135871%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx135846%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e135872%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx135846%_)))))
                (if (##fx< '8 (##structure-length _%self135850%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self135850%_
                       _%id135869%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self135850%_
                       (make-hash-table-eq 'size: (##length _%in135871%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self135850%_
                       _%super135866%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self135850%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self135850%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self135850%_
                       _%path135870%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self135850%_
                       _%in135871%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self135850%_
                       _%e135872%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self135850%_
                           '8
                           (##structure-length _%self135850%_)))
                (##for-each
                 (lambda (_%g135873135875%_)
                   (gx#core-bind-weak-import!__%
                    _%g135873135875%_
                    _%self135850%_))
                 _%in135871%_))
              (if (##fx< '8 (##structure-length _%self135850%_))
                  (begin
                    (##unchecked-structure-set! _%self135850%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self135850%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self135850%_
                     _%super135866%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self135850%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self135850%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self135850%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self135850%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self135850%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self135850%_
                         '8
                         (##structure-length _%self135850%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self135881%_ _%ctx135882%_)
        (let ((_%root135884%_ '#f))
          (gx#prelude-context:::init!__%
           _%self135881%_
           _%ctx135882%_
           _%root135884%_))))
    (define gx#prelude-context:::init!
      (lambda _g136100_
        (let ((_g136101_ (##length _g136100_)))
          (cond ((##fx= _g136101_ 2)
                 (apply gx#prelude-context:::init!__0 _g136100_))
                ((##fx= _g136101_ 3)
                 (apply gx#prelude-context:::init!__% _g136100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g136100_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self135719%_ _%e135720%_)
        (if (##fx< '3 (##structure-length _%self135719%_))
            (begin
              (##unchecked-structure-set!
               _%self135719%_
               _%e135720%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self135719%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self135719%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self135719%_
                   '3
                   (##structure-length _%self135719%_)))))
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
      (lambda (_%g135345135348%_ _%g135346135350%_)
        (gx#core-apply-user-expander__%
         _%g135345135348%_
         _%g135346135350%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g135216135219%_ _%g135217135221%_)
        (gx#core-apply-user-expander__%
         _%g135216135219%_
         _%g135217135221%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx135087%_)
        (let* ((_%path135089%_
                (##structure-ref _%ctx135087%_ '7 gx#module-context::t '#f))
               (_%path135091%_
                (if (pair? _%path135089%_)
                    (##last _%path135089%_)
                    _%path135089%_)))
          (if (string? _%path135091%_) _%path135091%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path135063%_ _%reload?135064%_ _%eval?135065%_)
        (let ((_%ctx135067%_
               ((gx#current-expander-module-import)
                _%path135063%_
                _%reload?135064%_)))
          (if (and _%ctx135067%_ _%eval?135065%_)
              (gx#eval-module _%ctx135067%_)
              '#!void)
          _%ctx135067%_)))
    (define gx#import-module__0
      (lambda (_%path135072%_)
        (let* ((_%reload?135074%_ '#f) (_%eval?135076%_ '#f))
          (gx#import-module__%
           _%path135072%_
           _%reload?135074%_
           _%eval?135076%_))))
    (define gx#import-module__1
      (lambda (_%path135078%_ _%reload?135079%_)
        (let ((_%eval?135081%_ '#f))
          (gx#import-module__%
           _%path135078%_
           _%reload?135079%_
           _%eval?135081%_))))
    (define gx#import-module
      (lambda _g136102_
        (let ((_g136103_ (##length _g136102_)))
          (cond ((##fx= _g136103_ 1) (apply gx#import-module__0 _g136102_))
                ((##fx= _g136103_ 2) (apply gx#import-module__1 _g136102_))
                ((##fx= _g136103_ 3) (apply gx#import-module__% _g136102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g136102_))))))
    (define gx#eval-module
      (lambda (_%mod135060%_)
        ((gx#current-expander-module-eval) _%mod135060%_)))
    (define gx#core-eval-module
      (lambda (_%obj135039%_)
        (letrec ((_%force-e135041%_
                  (lambda (_%getf135055%_ _%e135056%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf135055%_ _%e135056%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e135056%_))))
          (let _%recur135043%_ ((_%e135045%_ _%obj135039%_))
            (if (##structure-instance-of? _%e135045%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e135048%_
                         (gx#core-context-prelude__% _%e135045%_)))
                    (if _%$e135048%_ (_%recur135043%_ _%$e135048%_) '#!void))
                  (_%force-e135041%_ gx#module-context-e _%e135045%_))
                (if (##structure-instance-of?
                     _%e135045%_
                     'gx#prelude-context::t)
                    (_%force-e135041%_ gx#prelude-context-e _%e135045%_)
                    (if (gx#stx-string? _%e135045%_)
                        (_%recur135043%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e135045%_)))
                        (if (gx#core-library-module-path? _%e135045%_)
                            (_%recur135043%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e135045%_)))
                            (error '"cannot eval module" _%obj135039%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx135019%_)
        (let _%lp135021%_ ((_%e135023%_ _%ctx135019%_))
          (if (or (##structure-instance-of? _%e135023%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e135023%_ 'gx#local-context::t))
              (_%lp135021%_ (##unchecked-structure-ref _%e135023%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e135023%_ 'gx#prelude-context::t)
                  _%e135023%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx135035%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx135035%_))))
    (define gx#core-context-prelude
      (lambda _g136104_
        (let ((_g136105_ (##length _g136104_)))
          (cond ((##fx= _g136105_ 0)
                 (apply gx#core-context-prelude__0 _g136104_))
                ((##fx= _g136105_ 1)
                 (apply gx#core-context-prelude__% _g136104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g136104_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx135010%_)
        (let ((_%$e135012%_ (__hash-get gx#__module-registry _%ctx135010%_)))
          (if _%$e135012%_
              _%$e135012%_
              (let ((_%pre135016%_
                     (let ((__obj136096
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
                        __obj136096
                        _%ctx135010%_)
                       __obj136096)))
                (__hash-put! gx#__module-registry _%ctx135010%_ _%pre135016%_)
                _%pre135016%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath134877%_ _%reload?134878%_)
        (letrec ((_%import-source134880%_
                  (lambda (_%path134969%_)
                    (if (member _%path134969%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path134969%_)
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
                                      (let ((_g136106_
                                             (gx#core-read-module
                                              _%path134969%_)))
                                        (begin
                                          (let ((_g136107_
                                                 (if (##values? _g136106_)
                                                     (##values-length
                                                      _g136106_)
                                                     1)))
                                            (if (not (##fx= _g136107_ 4))
                                                (error "Context expects 4 values"
                                                       _g136107_)))
                                          (let ((_%pre134977%_
                                                 (##values-ref _g136106_ 0))
                                                (_%id134978%_
                                                 (##values-ref _g136106_ 1))
                                                (_%ns134979%_
                                                 (##values-ref _g136106_ 2))
                                                (_%body134980%_
                                                 (##values-ref _g136106_ 3)))
                                            (let* ((_%prelude134990%_
                                                    (if (##structure-instance-of?
                                                         _%pre134977%_
                                                         'gx#prelude-context::t)
                                                        _%pre134977%_
                                                        (if (##structure-instance-of?
                                                             _%pre134977%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre134977%_)
                                                            (if (string? _%pre134977%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre134977%_))
                        (if (not _%pre134977%_)
                            (let ((_%$e134986%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e134986%_
                                  _%$e134986%_
                                  (let ((__obj136097
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
                                     __obj136097
                                     '#f)
                                    __obj136097)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath134877%_
                                   _%pre134977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx134992%_
                                                    (let ((__obj136098
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
                                                       __obj136098
                                                       _%id134978%_
                                                       _%prelude134990%_
                                                       _%ns134979%_
                                                       _%path134969%_)
                                                      __obj136098))
                                                   (_%body134994%_
                                                    (gx#core-expand-module-begin
                                                     _%body134980%_
                                                     _%ctx134992%_))
                                                   (_%body134996%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body134994%_)
                                                     _%path134969%_
                                                     _%ctx134992%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx134992%_
                                               (__make-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body134996%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx134992%_
                                               _%body134996%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path134969%_
                                               _%ctx134992%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id134978%_
                                               _%ctx134992%_)
                                              _%ctx134992%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path134969%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule134881%_
                  (lambda (_%rpath134897%_)
                    (let* ((_%rpath134898134905%_ _%rpath134897%_)
                           (_%E134900134909%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath134898134905%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K134901134957%_
                            (lambda (_%refs134912%_ _%origin134913%_)
                              (let ((_%ctx134915%_
                                     (if _%origin134913%_
                                         (gx#core-import-module__%
                                          _%origin134913%_
                                          _%reload?134878%_)
                                         (gx#current-expander-context))))
                                (let _%lp134917%_ ((_%rest134919%_
                                                    _%refs134912%_)
                                                   (_%ctx134920%_
                                                    _%ctx134915%_))
                                  (let* ((_%rest134921134929%_ _%rest134919%_)
                                         (_%else134923134937%_
                                          (lambda () _%ctx134920%_))
                                         (_%K134925134945%_
                                          (lambda (_%rest134940%_ _%id134941%_)
                                            (let ((_%bind134943%_
                                                   (gx#resolve-identifier__%
                                                    _%id134941%_
                                                    '0
                                                    _%ctx134920%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind134943%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind134943%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp134917%_
                                                   _%rest134940%_
                                                   (##unchecked-structure-ref
                                                    _%bind134943%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath134897%_
                                                         _%id134941%_
                                                         _%bind134943%_))))))
                                    (if (pair? _%rest134921134929%_)
                                        (let ((_%hd134926134948%_
                                               (##car _%rest134921134929%_))
                                              (_%tl134927134950%_
                                               (##cdr _%rest134921134929%_)))
                                          (let* ((_%id134953%_
                                                  _%hd134926134948%_)
                                                 (_%rest134955%_
                                                  _%tl134927134950%_))
                                            (_%K134925134945%_
                                             _%rest134955%_
                                             _%id134953%_)))
                                        (_%else134923134937%_))))))))
                      (if (pair? _%rpath134898134905%_)
                          (let ((_%hd134902134960%_
                                 (##car _%rpath134898134905%_))
                                (_%tl134903134962%_
                                 (##cdr _%rpath134898134905%_)))
                            (let* ((_%origin134965%_ _%hd134902134960%_)
                                   (_%refs134967%_ _%tl134903134962%_))
                              (_%K134901134957%_
                               _%refs134967%_
                               _%origin134965%_)))
                          (_%E134900134909%_))))))
          (let ((_%$e134883%_
                 (if (not _%reload?134878%_)
                     (__hash-get gx#__module-registry _%rpath134877%_)
                     '#f)))
            (if _%$e134883%_
                _%$e134883%_
                (if (list? _%rpath134877%_)
                    (_%import-submodule134881%_ _%rpath134877%_)
                    (if (gx#core-library-module-path? _%rpath134877%_)
                        (let ((_%ctx134888%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath134877%_)
                                _%reload?134878%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath134877%_
                           _%ctx134888%_)
                          _%ctx134888%_)
                        (let* ((_%npath134891%_
                                (path-normalize _%rpath134877%_))
                               (_%$e134893%_
                                (if (not _%reload?134878%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath134891%_)
                                    '#f)))
                          (if _%$e134893%_
                              _%$e134893%_
                              (_%import-source134880%_
                               _%npath134891%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath135003%_)
        (let ((_%reload?135005%_ '#f))
          (gx#core-import-module__% _%rpath135003%_ _%reload?135005%_))))
    (define gx#core-import-module
      (lambda _g136108_
        (let ((_g136109_ (##length _g136108_)))
          (cond ((##fx= _g136109_ 1)
                 (apply gx#core-import-module__0 _g136108_))
                ((##fx= _g136109_ 2)
                 (apply gx#core-import-module__% _g136108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g136108_))))))
    (define gx#core-read-module
      (lambda (_%path134866%_)
        (__with-catch
         (lambda (_%exn134868%_)
           (if (and (datum-parsing-exception? _%exn134868%_)
                    (eq? (datum-parsing-exception-filepos _%exn134868%_) '0))
               (gx#core-read-module/lang _%path134866%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path134866%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g134870134872%_)
                      (display-exception__% _%exn134868%_ _%g134870134872%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path134866%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path134718%_)
        (let _%lp134720%_ ((_%body134722%_
                            (read-syntax-from-file _%path134718%_))
                           (_%pre134723%_ '#f)
                           (_%ns134724%_ '#f)
                           (_%pkg134725%_ '#f))
          (let* ((_%e134726134750%_ _%body134722%_)
                 (_%E134742134776%_
                  (lambda ()
                    (let ((_g136110_
                           (if _%pkg134725%_
                               (values _%pre134723%_
                                       _%ns134724%_
                                       _%pkg134725%_)
                               (gx#core-read-module-package
                                _%path134718%_
                                _%pre134723%_
                                _%ns134724%_))))
                      (begin
                        (let ((_g136111_
                               (if (##values? _g136110_)
                                   (##values-length _g136110_)
                                   1)))
                          (if (not (##fx= _g136111_ 3))
                              (error "Context expects 3 values" _g136111_)))
                        (let ((_%pre134754%_ (##values-ref _g136110_ 0))
                              (_%ns134755%_ (##values-ref _g136110_ 1))
                              (_%pkg134756%_ (##values-ref _g136110_ 2)))
                          (let* ((_%prelude134762%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre134754%_)
                                      (gx#syntax-local-e__0 _%pre134754%_)
                                      (if (gx#core-library-module-path?
                                           _%pre134754%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre134754%_)
                                          (if (gx#stx-string? _%pre134754%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre134754%_
                                               _%path134718%_)
                                              (gx#stx-e _%pre134754%_)))))
                                 (_%path-id134764%_
                                  (gx#core-module-path->namespace
                                   _%path134718%_))
                                 (_%pkg-id134766%_
                                  (if _%pkg134756%_
                                      (##string-append
                                       _%pkg134756%_
                                       '"/"
                                       _%path-id134764%_)
                                      _%path-id134764%_))
                                 (_%module-id134768%_
                                  (##string->symbol _%pkg-id134766%_))
                                 (_%module-ns134773%_
                                  (if (eq? _%ns134755%_ '#!void)
                                      '#f
                                      (let ((_%$e134770%_ _%ns134755%_))
                                        (if _%$e134770%_
                                            _%$e134770%_
                                            _%pkg-id134766%_)))))
                            (values _%prelude134762%_
                                    _%module-id134768%_
                                    _%module-ns134773%_
                                    _%body134722%_)))))))
                 (_%E134735134808%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134726134750%_)
                        (let ((_%e134743134780%_
                               (gx#syntax-e _%e134726134750%_)))
                          (let ((_%hd134744134783%_ (##car _%e134743134780%_))
                                (_%tl134745134785%_ (##cdr _%e134743134780%_)))
                            (if (eq? (gx#stx-e _%hd134744134783%_) 'package:)
                                (if (gx#stx-pair? _%tl134745134785%_)
                                    (let ((_%e134746134788%_
                                           (gx#syntax-e _%tl134745134785%_)))
                                      (let ((_%hd134747134791%_
                                             (##car _%e134746134788%_))
                                            (_%tl134748134793%_
                                             (##cdr _%e134746134788%_)))
                                        (let* ((_%pkg134796%_
                                                _%hd134747134791%_)
                                               (_%rest134798%_
                                                _%tl134748134793%_)
                                               (_%pkg134806%_
                                                (if (gx#identifier?
                                                     _%pkg134796%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg134796%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg134796%_)
                                                            (gx#stx-false?
                                                             _%pkg134796%_))
                                                        (gx#stx-e
                                                         _%pkg134796%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg134796%_)))))
                                          (_%lp134720%_
                                           _%rest134798%_
                                           _%pre134723%_
                                           _%ns134724%_
                                           _%pkg134806%_))))
                                    (_%E134742134776%_))
                                (_%E134742134776%_))))
                        (_%E134742134776%_))))
                 (_%E134728134838%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134726134750%_)
                        (let ((_%e134736134812%_
                               (gx#syntax-e _%e134726134750%_)))
                          (let ((_%hd134737134815%_ (##car _%e134736134812%_))
                                (_%tl134738134817%_ (##cdr _%e134736134812%_)))
                            (if (eq? (gx#stx-e _%hd134737134815%_) 'namespace:)
                                (if (gx#stx-pair? _%tl134738134817%_)
                                    (let ((_%e134739134820%_
                                           (gx#syntax-e _%tl134738134817%_)))
                                      (let ((_%hd134740134823%_
                                             (##car _%e134739134820%_))
                                            (_%tl134741134825%_
                                             (##cdr _%e134739134820%_)))
                                        (let* ((_%ns134828%_
                                                _%hd134740134823%_)
                                               (_%rest134830%_
                                                _%tl134741134825%_)
                                               (_%ns134836%_
                                                (if (gx#identifier?
                                                     _%ns134828%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns134828%_))
                                                    (if (gx#stx-string?
                                                         _%ns134828%_)
                                                        (gx#stx-e _%ns134828%_)
                                                        (if (gx#stx-false?
                                                             _%ns134828%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns134828%_))))))
                                          (_%lp134720%_
                                           _%rest134830%_
                                           _%pre134723%_
                                           _%ns134836%_
                                           _%pkg134725%_))))
                                    (_%E134735134808%_))
                                (_%E134735134808%_))))
                        (_%E134735134808%_))))
                 (_%E134727134862%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134726134750%_)
                        (let ((_%e134729134842%_
                               (gx#syntax-e _%e134726134750%_)))
                          (let ((_%hd134730134845%_ (##car _%e134729134842%_))
                                (_%tl134731134847%_ (##cdr _%e134729134842%_)))
                            (if (eq? (gx#stx-e _%hd134730134845%_) 'prelude:)
                                (if (gx#stx-pair? _%tl134731134847%_)
                                    (let ((_%e134732134850%_
                                           (gx#syntax-e _%tl134731134847%_)))
                                      (let ((_%hd134733134853%_
                                             (##car _%e134732134850%_))
                                            (_%tl134734134855%_
                                             (##cdr _%e134732134850%_)))
                                        (let* ((_%prelude134858%_
                                                _%hd134733134853%_)
                                               (_%rest134860%_
                                                _%tl134734134855%_))
                                          (_%lp134720%_
                                           _%rest134860%_
                                           _%prelude134858%_
                                           _%ns134724%_
                                           _%pkg134725%_))))
                                    (_%E134728134838%_))
                                (_%E134728134838%_))))
                        (_%E134728134838%_)))))
            (_%E134727134862%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path134539%_)
        (letrec ((_%default-read-module-body134541%_
                  (lambda (_%inp134710%_)
                    (let _%lp134712%_ ((_%body134714%_ '()))
                      (let ((_%next134716%_ (read-syntax__% _%inp134710%_)))
                        (if (eof-object? _%next134716%_)
                            (reverse _%body134714%_)
                            (_%lp134712%_
                             (cons _%next134716%_ _%body134714%_)))))))
                 (_%read-body134542%_
                  (lambda (_%inp134627%_
                           _%pre134628%_
                           _%ns134629%_
                           _%pkg134630%_
                           _%args134631%_)
                    (let ((_g136112_
                           (if _%pkg134630%_
                               (values _%pre134628%_
                                       _%ns134629%_
                                       _%pkg134630%_)
                               (gx#core-read-module-package
                                _%path134539%_
                                _%pre134628%_
                                _%ns134629%_))))
                      (begin
                        (let ((_g136113_
                               (if (##values? _g136112_)
                                   (##values-length _g136112_)
                                   1)))
                          (if (not (##fx= _g136113_ 3))
                              (error "Context expects 3 values" _g136113_)))
                        (let ((_%pre134633%_ (##values-ref _g136112_ 0))
                              (_%ns134634%_ (##values-ref _g136112_ 1))
                              (_%pkg134635%_ (##values-ref _g136112_ 2)))
                          (let* ((_%prelude134637%_
                                  (gx#import-module__0 _%pre134633%_))
                                 (_%read-module-body134692%_
                                  (let ((_%$e134683%_
                                         (__find (lambda (_%e134638134640%_)
                                                   (let* ((_%g134642134652%_
                                                           _%e134638134640%_)
                                                          (_%else134644134660%_
                                                           (lambda () '#f))
                                                          (_%K134646134664%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g134642134652%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e134647134667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g134642134652%_
                          '1
                          '#f
                          '#f))
                        (_%e134648134670%_
                         (##unchecked-structure-ref
                          _%g134642134652%_
                          '2
                          '#f
                          '#f))
                        (_%e134649134673%_
                         (##unchecked-structure-ref
                          _%g134642134652%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e134649134673%_ '1)
                       (let ((_%e134650134676%_
                              (##unchecked-structure-ref
                               _%g134642134652%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g134678134680%_)
                                (eq? _%g134678134680%_ 'read-module-body))
                              _%e134650134676%_)
                             (_%K134646134664%_)
                             (_%else134644134660%_)))
                       (_%else134644134660%_)))
                 (_%else134644134660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude134637%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e134683%_
                                        ((lambda (_%xport134686%_)
                                           (let ((_%proc134689%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport134686%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc134689%_)
                                                 _%proc134689%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path134539%_
                                                  _%pre134633%_
                                                  _%proc134689%_))))
                                         _%$e134683%_)
                                        _%default-read-module-body134541%_)))
                                 (_%path-id134694%_
                                  (gx#core-module-path->namespace
                                   _%path134539%_))
                                 (_%pkg-id134696%_
                                  (if _%pkg134635%_
                                      (##string-append
                                       _%pkg134635%_
                                       '"/"
                                       _%path-id134694%_)
                                      _%path-id134694%_))
                                 (_%module-id134698%_
                                  (##string->symbol _%pkg-id134696%_))
                                 (_%module-ns134703%_
                                  (let ((_%$e134700%_ _%ns134634%_))
                                    (if _%$e134700%_
                                        _%$e134700%_
                                        _%pkg-id134696%_)))
                                 (_%body134707%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body134692%_
                                         _%inp134627%_))
                                      gx#current-module-reader-args
                                      _%args134631%_))
                                   gx#current-module-reader-path
                                   _%path134539%_)))
                            (values _%prelude134637%_
                                    _%module-id134698%_
                                    _%module-ns134703%_
                                    _%body134707%_)))))))
                 (_%string-e134543%_
                  (lambda (_%obj134621%_ _%what134622%_)
                    (if (string? _%obj134621%_)
                        _%obj134621%_
                        (if (symbol? _%obj134621%_)
                            (##symbol->string _%obj134621%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what134622%_)
                             _%path134539%_
                             _%obj134621%_)))))
                 (_%read-lang-args134544%_
                  (lambda (_%inp134576%_ _%args134577%_)
                    (let* ((_%args134578134586%_ _%args134577%_)
                           (_%else134580134594%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path134539%_)))
                           (_%K134582134609%_
                            (lambda (_%args134597%_ _%prelude134598%_)
                              (let* ((_%pkg134600%_
                                      (pgetq__0 'package: _%args134597%_))
                                     (_%pkg134602%_
                                      (if _%pkg134600%_
                                          (_%string-e134543%_
                                           _%pkg134600%_
                                           '"package")
                                          '#f))
                                     (_%ns134604%_
                                      (pgetq__0 'namespace: _%args134597%_))
                                     (_%ns134606%_
                                      (if _%ns134604%_
                                          (_%string-e134543%_
                                           _%ns134604%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body134542%_
                                 _%inp134576%_
                                 _%prelude134598%_
                                 _%ns134606%_
                                 _%pkg134602%_
                                 _%args134597%_)))))
                      (if (pair? _%args134578134586%_)
                          (let ((_%hd134583134612%_
                                 (##car _%args134578134586%_))
                                (_%tl134584134614%_
                                 (##cdr _%args134578134586%_)))
                            (let* ((_%prelude134617%_ _%hd134583134612%_)
                                   (_%args134619%_ _%tl134584134614%_))
                              (_%K134582134609%_
                               _%args134619%_
                               _%prelude134617%_)))
                          (_%else134580134594%_)))))
                 (_%read-lang134545%_
                  (lambda (_%inp134550%_)
                    (let* ((_%head134552%_ (read-line _%inp134550%_))
                           (_%$e134554%_
                            (string-index__0 _%head134552%_ '#\space)))
                      (if _%$e134554%_
                          ((lambda (_%ix134557%_)
                             (let ((_%lang134559%_
                                    (substring
                                     _%head134552%_
                                     '0
                                     _%ix134557%_)))
                               (if (equal? _%lang134559%_ '"#lang")
                                   (let* ((_%rest134561%_
                                           (substring
                                            _%head134552%_
                                            (##fx+ _%ix134557%_ '1)
                                            (string-length _%head134552%_)))
                                          (_%args134572%_
                                           (__with-catch
                                            (lambda (_%g134562134564%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path134539%_
                                               _%g134562134564%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest134561%_
                                               (lambda (_%g134567134569%_)
                                                 (read-all
                                                  _%g134567134569%_
                                                  read)))))))
                                     (_%read-lang-args134544%_
                                      _%inp134550%_
                                      _%args134572%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path134539%_))))
                           _%$e134554%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path134539%_)))))
                 (_%read-e134546%_
                  (lambda (_%inp134548%_)
                    (if (eq? (peek-char _%inp134548%_) '#\#)
                        (_%read-lang134545%_ _%inp134548%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path134539%_)))))
          (gx#call-with-input-source-file _%path134539%_ _%read-e134546%_))))
    (define gx#core-read-module-package
      (lambda (_%path134487%_ _%pre134488%_ _%ns134489%_)
        (letrec ((_%string-e134491%_
                  (lambda (_%e134534%_)
                    (if (symbol? _%e134534%_)
                        (##symbol->string _%e134534%_)
                        (if (string? _%e134534%_)
                            _%e134534%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e134534%_))))))
          (let _%lp134493%_ ((_%dir134495%_ (path-directory _%path134487%_))
                             (_%pkg-path134496%_ '()))
            (let ((_%gerbil.pkg134498%_
                   (path-expand '"gerbil.pkg" _%dir134495%_)))
              (if (##file-exists? _%gerbil.pkg134498%_)
                  (let ((_%plist134500%_
                         (gx#core-library-package-plist__% _%dir134495%_ '#t)))
                    (if (null? _%plist134500%_)
                        (let ((_%pkg134503%_
                               (if (null? _%pkg-path134496%_)
                                   '#f
                                   (string-join _%pkg-path134496%_ '"/"))))
                          (values _%pre134488%_ _%ns134489%_ _%pkg134503%_))
                        (if (list? _%plist134500%_)
                            (let* ((_%root134506%_
                                    (pgetq__0 'package: _%plist134500%_))
                                   (_%pkg134510%_
                                    (let ((_%pkg-path134508%_
                                           (if _%root134506%_
                                               (cons (_%string-e134491%_
                                                      _%root134506%_)
                                                     _%pkg-path134496%_)
                                               _%pkg-path134496%_)))
                                      (if (null? _%pkg-path134508%_)
                                          '#f
                                          (string-join
                                           _%pkg-path134508%_
                                           '"/"))))
                                   (_%ns134517%_
                                    (let ((_%ns134515%_
                                           (let ((_%$e134512%_ _%ns134489%_))
                                             (if _%$e134512%_
                                                 _%$e134512%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist134500%_)))))
                                      (if _%ns134515%_
                                          (_%string-e134491%_ _%ns134515%_)
                                          '#f)))
                                   (_%pre134522%_
                                    (let ((_%$e134519%_ _%pre134488%_))
                                      (if _%$e134519%_
                                          _%$e134519%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist134500%_)))))
                              (values _%pre134522%_
                                      _%ns134517%_
                                      _%pkg134510%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist134500%_))))
                  (let ((_%dir*134526%_
                         (path-strip-trailing-directory-separator
                          _%dir134495%_)))
                    (if (or (__string-empty? _%dir*134526%_)
                            (equal? _%dir134495%_ _%dir*134526%_))
                        (values _%pre134488%_ _%ns134489%_ '#f)
                        (let ((_%xpath134531%_
                               (path-strip-directory _%dir*134526%_))
                              (_%xdir134532%_ (path-directory _%dir*134526%_)))
                          (_%lp134493%_
                           _%xdir134532%_
                           (cons _%xpath134531%_ _%pkg-path134496%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path134485%_)
        (path-strip-extension (path-strip-directory _%path134485%_))))
    (define gx#core-module-path->id
      (lambda (_%path134483%_)
        (##string->symbol (gx#core-module-path->namespace _%path134483%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path134462%_ _%rel134463%_)
        (let* ((_%path134465%_ (gx#stx-e _%stx-path134462%_))
               (_%path134467%_
                (if (__string-empty? (path-extension _%path134465%_))
                    (##string-append _%path134465%_ '".ss")
                    _%path134465%_)))
          (gx#core-resolve-path__%
           _%path134467%_
           (let ((_%$e134470%_ (gx#stx-source _%stx-path134462%_)))
             (if _%$e134470%_ _%$e134470%_ _%rel134463%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path134476%_)
        (let ((_%rel134478%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path134476%_ _%rel134478%_))))
    (define gx#core-resolve-module-path
      (lambda _g136114_
        (let ((_g136115_ (##length _g136114_)))
          (cond ((##fx= _g136115_ 1)
                 (apply gx#core-resolve-module-path__0 _g136114_))
                ((##fx= _g136115_ 2)
                 (apply gx#core-resolve-module-path__% _g136114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g136114_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath134347%_)
        (let* ((_%spath134349%_ (symbol->string (gx#stx-e _%libpath134347%_)))
               (_%spath134351%_
                (substring
                 _%spath134349%_
                 '1
                 (##string-length _%spath134349%_)))
               (_%ext134353%_ (path-extension _%spath134351%_))
               (_%ssi134355%_
                (if (__string-empty? _%ext134353%_)
                    (##string-append _%spath134351%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath134351%_)
                     '".ssi")))
               (_%srcs134359%_
                (if (__string-empty? _%ext134353%_)
                    (##map (lambda (_%ext134357%_)
                             (string-append _%spath134351%_ _%ext134357%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath134351%_ '()))))
          (let _%lp134362%_ ((_%rest134364%_ (load-path)))
            (let* ((_%rest134365134374%_ _%rest134364%_)
                   (_%E134368134378%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest134365134374%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K134370134449%_
                     (lambda (_%rest134389%_ _%dir134390%_)
                       (letrec ((_%resolve134392%_
                                 (lambda (_%ssi134405%_ _%srcs134406%_)
                                   (let ((_%compiled-path134408%_
                                          (path-expand
                                           _%ssi134405%_
                                           _%dir134390%_)))
                                     (if (##file-exists?
                                          _%compiled-path134408%_)
                                         (path-normalize
                                          _%compiled-path134408%_)
                                         (let _%lpr134410%_ ((_%rest-src134412%_
                                                              _%srcs134406%_))
                                           (let* ((_%rest-src134413134421%_
                                                   _%rest-src134412%_)
                                                  (_%else134415134429%_
                                                   (lambda ()
                                                     (_%lp134362%_
                                                      _%rest134389%_)))
                                                  (_%K134417134437%_
                                                   (lambda (_%rest-src134432%_
                                                            _%src134433%_)
                                                     (let ((_%src-path134435%_
                                                            (path-expand
                                                             _%src134433%_
                                                             _%dir134390%_)))
                                                       (if (##file-exists?
                                                            _%src-path134435%_)
                                                           (path-normalize
                                                            _%src-path134435%_)
                                                           (_%lpr134410%_
                                                            _%rest-src134432%_))))))
                                             (if (pair? _%rest-src134413134421%_)
                                                 (let ((_%hd134418134440%_
                                                        (##car _%rest-src134413134421%_))
                                                       (_%tl134419134442%_
                                                        (##cdr _%rest-src134413134421%_)))
                                                   (let* ((_%src134445%_
                                                           _%hd134418134440%_)
                                                          (_%rest-src134447%_
                                                           _%tl134419134442%_))
                                                     (_%K134417134437%_
                                                      _%rest-src134447%_
                                                      _%src134445%_)))
                                                 (_%else134415134429%_)))))))))
                         (let ((_%$e134394%_
                                (gx#core-library-package-path-prefix
                                 _%dir134390%_)))
                           (if _%$e134394%_
                               ((lambda (_%prefix134397%_)
                                  (if (string-prefix?
                                       _%prefix134397%_
                                       _%spath134351%_)
                                      (let ((_%ssi134401%_
                                             (substring
                                              _%ssi134355%_
                                              (string-length _%prefix134397%_)
                                              (##string-length _%ssi134355%_)))
                                            (_%srcs134402%_
                                             (##map (lambda (_%src134399%_)
                                                      (substring
                                                       _%src134399%_
                                                       (string-length
                                                        _%prefix134397%_)
                                                       (string-length
                                                        _%src134399%_)))
                                                    _%srcs134359%_)))
                                        (_%resolve134392%_
                                         _%ssi134401%_
                                         _%srcs134402%_))
                                      (_%lp134362%_ _%rest134389%_)))
                                _%$e134394%_)
                               (_%resolve134392%_
                                _%ssi134355%_
                                _%srcs134359%_))))))
                    (_%K134369134383%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath134347%_))))
                (let ((_%try-match134367134386%_
                       (lambda ()
                         (if (null? _%rest134365134374%_)
                             (_%K134369134383%_)
                             (_%E134368134378%_)))))
                  (if (pair? _%rest134365134374%_)
                      (let ((_%tl134372134454%_ (##cdr _%rest134365134374%_))
                            (_%hd134371134452%_ (##car _%rest134365134374%_)))
                        (let ((_%dir134457%_ _%hd134371134452%_)
                              (_%rest134459%_ _%tl134372134454%_))
                          (_%K134370134449%_ _%rest134459%_ _%dir134457%_)))
                      (_%try-match134367134386%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath134315%_)
        (letrec ((_%resolve134317%_
                  (lambda (_%path134338%_ _%base134339%_)
                    (let ((_%$e134341%_
                           (string-rindex__0 _%base134339%_ '#\/)))
                      (if _%$e134341%_
                          ((lambda (_%idx134344%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base134339%_ '0 _%idx134344%_)
                                '"/"
                                _%path134338%_))))
                           _%$e134341%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path134338%_))))))))
          (let ((_%spath134319%_ (symbol->string (gx#stx-e _%modpath134315%_)))
                (_%mod134320%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod134320%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath134315%_))
            (let ((_%mpath134322%_
                   (symbol->string
                    (##structure-ref
                     _%mod134320%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp134324%_ ((_%spath134326%_ _%spath134319%_)
                                 (_%mpath134327%_ _%mpath134322%_))
                (if (string-prefix? '"../" _%spath134326%_)
                    (let ((_%$e134330%_
                           (string-rindex__0 _%mpath134327%_ '#\/)))
                      (if _%$e134330%_
                          ((lambda (_%idx134333%_)
                             (_%lp134324%_
                              (substring
                               _%spath134326%_
                               '3
                               (string-length _%spath134326%_))
                              (substring _%mpath134327%_ '0 _%idx134333%_)))
                           _%$e134330%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath134315%_)))
                    (if (string-prefix? '"./" _%spath134326%_)
                        (_%lp134324%_
                         (substring
                          _%spath134326%_
                          '2
                          (string-length _%spath134326%_))
                         _%mpath134327%_)
                        (_%resolve134317%_
                         _%spath134326%_
                         _%mpath134327%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir134307%_)
        (let ((_%$e134309%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir134307%_))))
          (if _%$e134309%_
              ((lambda (_%pkg134312%_)
                 (##string-append (symbol->string _%pkg134312%_) '"/"))
               _%$e134309%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir134277%_ _%exists?134278%_)
        (let ((_%$e134280%_ (__hash-get gx#__module-pkg-cache _%dir134277%_)))
          (if _%$e134280%_
              _%$e134280%_
              (let* ((_%gerbil.pkg134284%_
                      (path-expand '"gerbil.pkg" _%dir134277%_))
                     (_%plist134294%_
                      (if (or _%exists?134278%_
                              (##file-exists? _%gerbil.pkg134284%_))
                          (let ((_%e134289%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg134284%_
                                  read)))
                            (if (eof-object? _%e134289%_)
                                '()
                                (if (list? _%e134289%_)
                                    _%e134289%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg134284%_
                                     _%e134289%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir134277%_
                 _%plist134294%_)
                _%plist134294%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir134300%_)
        (let ((_%exists?134302%_ '#f))
          (gx#core-library-package-plist__% _%dir134300%_ _%exists?134302%_))))
    (define gx#core-library-package-plist
      (lambda _g136116_
        (let ((_g136117_ (##length _g136116_)))
          (cond ((##fx= _g136117_ 1)
                 (apply gx#core-library-package-plist__0 _g136116_))
                ((##fx= _g136117_ 2)
                 (apply gx#core-library-package-plist__% _g136116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g136116_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx134274%_)
        (gx#core-special-module-path? _%stx134274%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx134272%_)
        (gx#core-special-module-path? _%stx134272%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx134267%_ _%char134268%_)
        (if (gx#identifier? _%stx134267%_)
            (if (interned-symbol? (gx#stx-e _%stx134267%_))
                (let ((_%str134270%_
                       (symbol->string (gx#stx-e _%stx134267%_))))
                  (if (##fx> (##string-length _%str134270%_) '1)
                      (eq? (string-ref _%str134270%_ '0) _%char134268%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx134261%_)
        (gx#core-bound-identifier?__%
         _%stx134261%_
         (lambda (_%g134262134264%_)
           (gx#expander-binding?__% _%g134262134264%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx134255%_)
        (gx#core-bound-identifier?__%
         _%stx134255%_
         (lambda (_%g134256134258%_)
           (gx#expander-binding?__% _%g134256134258%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx134242%_)
        (letrec ((_%module-prelude?134244%_
                  (lambda (_%e134250%_)
                    (let ((_%$e134252%_
                           (##structure-instance-of?
                            _%e134250%_
                            'gx#module-context::t)))
                      (if _%$e134252%_
                          _%$e134252%_
                          (##structure-instance-of?
                           _%e134250%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx134242%_
           (lambda (_%g134245134247%_)
             (gx#expander-binding?__%
              _%g134245134247%_
              _%module-prelude?134244%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in134172%_ _%ctx134173%_ _%force-weak?134174%_)
        (let* ((_%in134175134184%_ _%in134172%_)
               (_%E134177134188%_
                (lambda ()
                  (error '"No clause matching"
                         _%in134175134184%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K134178134201%_
                (lambda (_%weak?134191%_
                         _%phi134192%_
                         _%key134193%_
                         _%source134194%_)
                  (gx#core-bind!__%
                   _%key134193%_
                   (let ((_%e134196%_
                          (gx#core-resolve-module-export _%source134194%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e134196%_ '1 '#f '#f)
                      _%key134193%_
                      _%phi134192%_
                      _%e134196%_
                      (##unchecked-structure-ref _%source134194%_ '1 '#f '#f)
                      (let ((_%$e134198%_ _%force-weak?134174%_))
                        (if _%$e134198%_ _%$e134198%_ _%weak?134191%_))))
                   gx#core-context-rebind?
                   _%phi134192%_
                   _%ctx134173%_))))
          (if (##structure-direct-instance-of?
               _%in134175134184%_
               'gx#module-import::t)
              (let* ((_%e134179134204%_
                      (##unchecked-structure-ref
                       _%in134175134184%_
                       '1
                       '#f
                       '#f))
                     (_%source134207%_ _%e134179134204%_)
                     (_%e134180134209%_
                      (##unchecked-structure-ref
                       _%in134175134184%_
                       '2
                       '#f
                       '#f))
                     (_%key134212%_ _%e134180134209%_)
                     (_%e134181134214%_
                      (##unchecked-structure-ref
                       _%in134175134184%_
                       '3
                       '#f
                       '#f))
                     (_%phi134217%_ _%e134181134214%_)
                     (_%e134182134219%_
                      (##unchecked-structure-ref
                       _%in134175134184%_
                       '4
                       '#f
                       '#f))
                     (_%weak?134222%_ _%e134182134219%_))
                (_%K134178134201%_
                 _%weak?134222%_
                 _%phi134217%_
                 _%key134212%_
                 _%source134207%_))
              (_%E134177134188%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in134227%_)
        (let* ((_%ctx134229%_ (gx#current-expander-context))
               (_%force-weak?134231%_ '#f))
          (gx#core-bind-import!__%
           _%in134227%_
           _%ctx134229%_
           _%force-weak?134231%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in134233%_ _%ctx134234%_)
        (let ((_%force-weak?134236%_ '#f))
          (gx#core-bind-import!__%
           _%in134233%_
           _%ctx134234%_
           _%force-weak?134236%_))))
    (define gx#core-bind-import!
      (lambda _g136118_
        (let ((_g136119_ (##length _g136118_)))
          (cond ((##fx= _g136119_ 1) (apply gx#core-bind-import!__0 _g136118_))
                ((##fx= _g136119_ 2) (apply gx#core-bind-import!__1 _g136118_))
                ((##fx= _g136119_ 3) (apply gx#core-bind-import!__% _g136118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g136118_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in134158%_ _%ctx134159%_)
        (gx#core-bind-import!__% _%in134158%_ _%ctx134159%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in134164%_)
        (let ((_%ctx134166%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in134164%_ _%ctx134166%_))))
    (define gx#core-bind-weak-import!
      (lambda _g136120_
        (let ((_g136121_ (##length _g136120_)))
          (cond ((##fx= _g136121_ 1)
                 (apply gx#core-bind-weak-import!__0 _g136120_))
                ((##fx= _g136121_ 2)
                 (apply gx#core-bind-weak-import!__% _g136120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g136120_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out134049%_)
        (letrec ((_%subst134051%_
                  (lambda (_%key134097%_)
                    (let* ((_%key134098134106%_ _%key134097%_)
                           (_%else134100134114%_ (lambda () _%key134097%_))
                           (_%K134102134145%_
                            (lambda (_%mark134117%_ _%id134118%_)
                              (let* ((_%mark134119134125%_ _%mark134117%_)
                                     (_%E134121134129%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark134119134125%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K134122134137%_
                                      (lambda (_%subst134132%_)
                                        (let ((_%$e134134%_
                                               (if _%subst134132%_
                                                   (hash-get
                                                    _%subst134132%_
                                                    _%id134118%_)
                                                   '#f)))
                                          (if _%$e134134%_
                                              _%$e134134%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key134097%_))))))
                                (if (##structure-instance-of?
                                     _%mark134119134125%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e134123134140%_
                                            (##unchecked-structure-ref
                                             _%mark134119134125%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst134143%_ _%e134123134140%_))
                                      (_%K134122134137%_ _%subst134143%_))
                                    (_%E134121134129%_))))))
                      (if (pair? _%key134098134106%_)
                          (let ((_%hd134103134148%_
                                 (##car _%key134098134106%_))
                                (_%tl134104134150%_
                                 (##cdr _%key134098134106%_)))
                            (let* ((_%id134153%_ _%hd134103134148%_)
                                   (_%mark134155%_ _%tl134104134150%_))
                              (_%K134102134145%_ _%mark134155%_ _%id134153%_)))
                          (_%else134100134114%_))))))
          (let* ((_%out134052134062%_ _%out134049%_)
                 (_%E134054134066%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out134052134062%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K134055134073%_
                  (lambda (_%phi134069%_ _%key134070%_ _%ctx134071%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx134071%_ _%phi134069%_)
                     (_%subst134051%_ _%key134070%_)))))
            (if (##structure-direct-instance-of?
                 _%out134052134062%_
                 'gx#module-export::t)
                (let* ((_%e134056134076%_
                        (##unchecked-structure-ref
                         _%out134052134062%_
                         '1
                         '#f
                         '#f))
                       (_%ctx134079%_ _%e134056134076%_)
                       (_%e134057134081%_
                        (##unchecked-structure-ref
                         _%out134052134062%_
                         '2
                         '#f
                         '#f))
                       (_%key134084%_ _%e134057134081%_)
                       (_%e134058134086%_
                        (##unchecked-structure-ref
                         _%out134052134062%_
                         '3
                         '#f
                         '#f))
                       (_%phi134089%_ _%e134058134086%_)
                       (_%e134059134091%_
                        (##unchecked-structure-ref
                         _%out134052134062%_
                         '4
                         '#f
                         '#f))
                       (_%e134060134094%_
                        (##unchecked-structure-ref
                         _%out134052134062%_
                         '5
                         '#f
                         '#f)))
                  (_%K134055134073%_
                   _%phi134089%_
                   _%key134084%_
                   _%ctx134079%_))
                (_%E134054134066%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out133974%_ _%rename133975%_ _%dphi133976%_)
        (let* ((_%out133977133987%_ _%out133974%_)
               (_%E133979133991%_
                (lambda ()
                  (error '"No clause matching"
                         _%out133977133987%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K133980134003%_
                (lambda (_%weak?133994%_
                         _%name133995%_
                         _%phi133996%_
                         _%key133997%_
                         _%ctx133998%_)
                  (##structure
                   gx#module-import::t
                   _%out133974%_
                   (let ((_%$e134000%_ _%rename133975%_))
                     (if _%$e134000%_ _%$e134000%_ _%name133995%_))
                   (fx+ _%phi133996%_ _%dphi133976%_)
                   _%weak?133994%_))))
          (if (##structure-direct-instance-of?
               _%out133977133987%_
               'gx#module-export::t)
              (let* ((_%e133981134006%_
                      (##unchecked-structure-ref
                       _%out133977133987%_
                       '1
                       '#f
                       '#f))
                     (_%ctx134009%_ _%e133981134006%_)
                     (_%e133982134011%_
                      (##unchecked-structure-ref
                       _%out133977133987%_
                       '2
                       '#f
                       '#f))
                     (_%key134014%_ _%e133982134011%_)
                     (_%e133983134016%_
                      (##unchecked-structure-ref
                       _%out133977133987%_
                       '3
                       '#f
                       '#f))
                     (_%phi134019%_ _%e133983134016%_)
                     (_%e133984134021%_
                      (##unchecked-structure-ref
                       _%out133977133987%_
                       '4
                       '#f
                       '#f))
                     (_%name134024%_ _%e133984134021%_)
                     (_%e133985134026%_
                      (##unchecked-structure-ref
                       _%out133977133987%_
                       '5
                       '#f
                       '#f))
                     (_%weak?134029%_ _%e133985134026%_))
                (_%K133980134003%_
                 _%weak?134029%_
                 _%name134024%_
                 _%phi134019%_
                 _%key134014%_
                 _%ctx134009%_))
              (_%E133979133991%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out134034%_)
        (let* ((_%rename134036%_ '#f) (_%dphi134038%_ '0))
          (gx#core-module-export->import__%
           _%out134034%_
           _%rename134036%_
           _%dphi134038%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out134040%_ _%rename134041%_)
        (let ((_%dphi134043%_ '0))
          (gx#core-module-export->import__%
           _%out134040%_
           _%rename134041%_
           _%dphi134043%_))))
    (define gx#core-module-export->import
      (lambda _g136122_
        (let ((_g136123_ (##length _g136122_)))
          (cond ((##fx= _g136123_ 1)
                 (apply gx#core-module-export->import__0 _g136122_))
                ((##fx= _g136123_ 2)
                 (apply gx#core-module-export->import__1 _g136122_))
                ((##fx= _g136123_ 3)
                 (apply gx#core-module-export->import__% _g136122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g136122_))))))
    (define gx#core-expand-module%
      (lambda (_%stx133873%_)
        (letrec ((_%make-context133875%_
                  (lambda (_%id133952%_)
                    (let* ((_%super133954%_ (gx#current-expander-context))
                           (_%bind-id133956%_ (gx#stx-e _%id133952%_))
                           (_%mod-id133958%_
                            (if (##structure-instance-of?
                                 _%super133954%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super133954%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id133956%_)
                                _%bind-id133956%_))
                           (_%ns133960%_ (symbol->string _%mod-id133958%_))
                           (_%path133970%_
                            (if (##structure-instance-of?
                                 _%super133954%_
                                 'gx#module-context::t)
                                (let ((_%path133962%_
                                       (##unchecked-structure-ref
                                        _%super133954%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path133962%_)
                                          (null? _%path133962%_))
                                      (cons _%bind-id133956%_ _%path133962%_)
                                      (if (not _%path133962%_)
                                          _%bind-id133956%_
                                          (cons _%bind-id133956%_
                                                (cons _%path133962%_ '())))))
                                _%bind-id133956%_))
                           (__obj136099
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
                       __obj136099
                       _%mod-id133958%_
                       _%super133954%_
                       _%ns133960%_
                       _%path133970%_)
                      __obj136099)))
                 (_%valid-module-id?133876%_
                  (lambda (_%id133927%_)
                    (let* ((_%str133929%_ (symbol->string _%id133927%_))
                           (_%len133931%_ (##string-length _%str133929%_)))
                      (if (##fx>= _%len133931%_ '1)
                          (let _%loop133934%_ ((_%index133936%_
                                                (##fx- (##string-length
                                                        _%str133929%_)
                                                       '1)))
                            (if (##fx>= _%index133936%_ '0)
                                (let ((_%c133938%_
                                       (string-ref
                                        _%str133929%_
                                        _%index133936%_)))
                                  (if (or (and (##char>=? _%c133938%_ '#\a)
                                               (##char<=? _%c133938%_ '#\z))
                                          (and (##char>=? _%c133938%_ '#\A)
                                               (##char<=? _%c133938%_ '#\Z))
                                          (and (##char>=? _%c133938%_ '#\0)
                                               (##char<=? _%c133938%_ '#\9))
                                          (##char=? _%c133938%_ '#\_)
                                          (##char=? _%c133938%_ '#\-))
                                      (_%loop133934%_
                                       (##fx- _%index133936%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e133877133887%_ _%stx133873%_)
                 (_%E133879133891%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e133877133887%_)))
                 (_%E133878133923%_
                  (lambda ()
                    (if (gx#stx-pair? _%e133877133887%_)
                        (let ((_%e133880133895%_
                               (gx#syntax-e _%e133877133887%_)))
                          (let ((_%hd133881133898%_ (##car _%e133880133895%_))
                                (_%tl133882133900%_ (##cdr _%e133880133895%_)))
                            (if (gx#stx-pair? _%tl133882133900%_)
                                (let ((_%e133883133903%_
                                       (gx#syntax-e _%tl133882133900%_)))
                                  (let ((_%hd133884133906%_
                                         (##car _%e133883133903%_))
                                        (_%tl133885133908%_
                                         (##cdr _%e133883133903%_)))
                                    (let* ((_%id133911%_ _%hd133884133906%_)
                                           (_%body133913%_ _%tl133885133908%_))
                                      (if (and (gx#identifier? _%id133911%_)
                                               (gx#stx-list? _%body133913%_))
                                          (if (_%valid-module-id?133876%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx133915%_
                                                      (_%make-context133875%_
                                                       _%id133911%_))
                                                     (_%body133917%_
                                                      (gx#core-expand-module-begin
                                                       _%body133913%_
                                                       _%ctx133915%_))
                                                     (_%body133919%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body133917%_)
                                                       (gx#stx-source
                                                        _%stx133873%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx133915%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body133919%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx133915%_
                                                 _%body133919%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id133911%_
                                                 _%ctx133915%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id133911%_)
                                                  _%body133919%_)
                                                 (gx#stx-source
                                                  _%stx133873%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx133873%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E133879133891%_)))))
                                (_%E133879133891%_))))
                        (_%E133879133891%_)))))
            (_%E133878133923%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body133838%_ _%ctx133839%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx133843%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body133838%_)))
                     (_%e133844133851%_ _%stx133843%_)
                     (_%E133846133855%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx133843%_)))
                     (_%E133845133869%_
                      (lambda ()
                        (if (gx#stx-pair? _%e133844133851%_)
                            (let ((_%e133847133859%_
                                   (gx#syntax-e _%e133844133851%_)))
                              (let ((_%hd133848133862%_
                                     (##car _%e133847133859%_))
                                    (_%tl133849133864%_
                                     (##cdr _%e133847133859%_)))
                                (if (and (gx#identifier? _%hd133848133862%_)
                                         (gx#core-identifier=?
                                          _%hd133848133862%_
                                          '%#begin-module))
                                    (let ((_%body133867%_ _%tl133849133864%_))
                                      (if (gx#sealed-syntax? _%stx133843%_)
                                          _%body133867%_
                                          (gx#core-expand-module-body
                                           _%body133867%_)))
                                    (_%E133846133855%_))))
                            (_%E133846133855%_)))))
                (_%E133845133869%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx133839%_)))
    (define gx#core-expand-module-body
      (lambda (_%body133634%_)
        (letrec ((_%expand-special133636%_
                  (lambda (_%hd133765%_ _%K133766%_ _%rest133767%_ _%r133768%_)
                    (let* ((_%e133769133786%_ _%hd133765%_)
                           (_%E133781133790%_
                            (lambda ()
                              (_%K133766%_
                               _%rest133767%_
                               (cons (gx#core-expand-top _%hd133765%_)
                                     _%r133768%_))))
                           (_%E133771133802%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133769133786%_)
                                  (let ((_%e133782133794%_
                                         (gx#syntax-e _%e133769133786%_)))
                                    (let ((_%hd133783133797%_
                                           (##car _%e133782133794%_))
                                          (_%tl133784133799%_
                                           (##cdr _%e133782133794%_)))
                                      (if (and (gx#identifier?
                                                _%hd133783133797%_)
                                               (gx#core-identifier=?
                                                _%hd133783133797%_
                                                '%#export))
                                          (_%K133766%_
                                           _%rest133767%_
                                           (cons _%hd133765%_ _%r133768%_))
                                          (_%E133781133790%_))))
                                  (_%E133781133790%_))))
                           (_%E133770133834%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133769133786%_)
                                  (let ((_%e133772133806%_
                                         (gx#syntax-e _%e133769133786%_)))
                                    (let ((_%hd133773133809%_
                                           (##car _%e133772133806%_))
                                          (_%tl133774133811%_
                                           (##cdr _%e133772133806%_)))
                                      (if (and (gx#identifier?
                                                _%hd133773133809%_)
                                               (gx#core-identifier=?
                                                _%hd133773133809%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl133774133811%_)
                                              (let ((_%e133775133814%_
                                                     (gx#syntax-e
                                                      _%tl133774133811%_)))
                                                (let ((_%hd133776133817%_
                                                       (##car _%e133775133814%_))
                                                      (_%tl133777133819%_
                                                       (##cdr _%e133775133814%_)))
                                                  (let ((_%hd-bind133822%_
                                                         _%hd133776133817%_))
                                                    (if (gx#stx-pair?
                                                         _%tl133777133819%_)
                                                        (let ((_%e133778133824%_
                                                               (gx#syntax-e
                                                                _%tl133777133819%_)))
                                                          (let ((_%hd133779133827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e133778133824%_))
                        (_%tl133780133829%_ (##cdr _%e133778133824%_)))
                    (let ((_%expr133832%_ _%hd133779133827%_))
                      (if (gx#stx-null? _%tl133780133829%_)
                          (if (gx#core-bind-values? _%hd-bind133822%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133822%_)
                                (_%K133766%_
                                 _%rest133767%_
                                 (cons _%hd133765%_ _%r133768%_)))
                              (_%E133771133802%_))
                          (_%E133771133802%_)))))
                (_%E133771133802%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133771133802%_))
                                          (_%E133771133802%_))))
                                  (_%E133771133802%_)))))
                      (_%E133770133834%_))))
                 (_%expand-body133637%_
                  (lambda (_%rbody133639%_)
                    (let _%lp133641%_ ((_%rest133643%_ _%rbody133639%_)
                                       (_%body133644%_ '()))
                      (let* ((_%rest133645133653%_ _%rest133643%_)
                             (_%else133647133661%_ (lambda () _%body133644%_))
                             (_%K133649133753%_
                              (lambda (_%rest133664%_ _%hd133665%_)
                                (let* ((_%e133666133687%_ _%hd133665%_)
                                       (_%E133682133691%_
                                        (lambda ()
                                          (_%lp133641%_
                                           _%rest133664%_
                                           (cons (gx#core-expand-expression
                                                  _%hd133665%_)
                                                 _%body133644%_))))
                                       (_%E133678133705%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133666133687%_)
                                              (let ((_%e133683133695%_
                                                     (gx#syntax-e
                                                      _%e133666133687%_)))
                                                (let ((_%hd133684133698%_
                                                       (##car _%e133683133695%_))
                                                      (_%tl133685133700%_
                                                       (##cdr _%e133683133695%_)))
                                                  (let ((_%form133703%_
                                                         _%hd133684133698%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form133703%_
                                                         gx#special-form-binding?)
                                                        (_%lp133641%_
                                                         _%rest133664%_
                                                         (cons _%hd133665%_
                                                               _%body133644%_))
                                                        (_%E133682133691%_)))))
                                              (_%E133682133691%_))))
                                       (_%E133668133717%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133666133687%_)
                                              (let ((_%e133679133709%_
                                                     (gx#syntax-e
                                                      _%e133666133687%_)))
                                                (let ((_%hd133680133712%_
                                                       (##car _%e133679133709%_))
                                                      (_%tl133681133714%_
                                                       (##cdr _%e133679133709%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133680133712%_)
                                                           (gx#core-identifier=?
                                                            _%hd133680133712%_
                                                            '%#export))
                                                      (_%lp133641%_
                                                       _%rest133664%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd133665%_)
                                                             _%body133644%_))
                                                      (_%E133678133705%_))))
                                              (_%E133678133705%_))))
                                       (_%E133667133749%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133666133687%_)
                                              (let ((_%e133669133721%_
                                                     (gx#syntax-e
                                                      _%e133666133687%_)))
                                                (let ((_%hd133670133724%_
                                                       (##car _%e133669133721%_))
                                                      (_%tl133671133726%_
                                                       (##cdr _%e133669133721%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133670133724%_)
                                                           (gx#core-identifier=?
                                                            _%hd133670133724%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl133671133726%_)
                                                          (let ((_%e133672133729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl133671133726%_)))
                    (let ((_%hd133673133732%_ (##car _%e133672133729%_))
                          (_%tl133674133734%_ (##cdr _%e133672133729%_)))
                      (let ((_%hd-bind133737%_ _%hd133673133732%_))
                        (if (gx#stx-pair? _%tl133674133734%_)
                            (let ((_%e133675133739%_
                                   (gx#syntax-e _%tl133674133734%_)))
                              (let ((_%hd133676133742%_
                                     (##car _%e133675133739%_))
                                    (_%tl133677133744%_
                                     (##cdr _%e133675133739%_)))
                                (let ((_%expr133747%_ _%hd133676133742%_))
                                  (if (gx#stx-null? _%tl133677133744%_)
                                      (_%lp133641%_
                                       _%rest133664%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind133737%_)
                                               (gx#core-expand-expression
                                                _%expr133747%_))
                                              (gx#stx-source _%hd133665%_))
                                             _%body133644%_))
                                      (_%E133668133717%_)))))
                            (_%E133668133717%_)))))
                  (_%E133668133717%_))
              (_%E133668133717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133668133717%_)))))
                                  (_%E133667133749%_)))))
                        (if (pair? _%rest133645133653%_)
                            (let ((_%hd133650133756%_
                                   (##car _%rest133645133653%_))
                                  (_%tl133651133758%_
                                   (##cdr _%rest133645133653%_)))
                              (let* ((_%hd133761%_ _%hd133650133756%_)
                                     (_%rest133763%_ _%tl133651133758%_))
                                (_%K133649133753%_
                                 _%rest133763%_
                                 _%hd133761%_)))
                            (_%else133647133661%_)))))))
          (_%expand-body133637%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body133634%_)
            _%expand-special133636%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx133475%_
               _%expanded?133476%_
               _%method133477%_
               _%current-phi133478%_
               _%expand1133479%_)
        (letrec ((_%K133481%_
                  (lambda (_%rest133601%_ _%r133602%_)
                    (let* ((_%e133603133610%_ _%rest133601%_)
                           (_%E133605133614%_ (lambda () _%r133602%_))
                           (_%E133604133630%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133603133610%_)
                                  (let ((_%e133606133618%_
                                         (gx#syntax-e _%e133603133610%_)))
                                    (let ((_%hd133607133621%_
                                           (##car _%e133606133618%_))
                                          (_%tl133608133623%_
                                           (##cdr _%e133606133618%_)))
                                      (let* ((_%hd133626%_ _%hd133607133621%_)
                                             (_%rest133628%_
                                              _%tl133608133623%_))
                                        (_%step133482%_
                                         _%hd133626%_
                                         _%rest133628%_
                                         _%r133602%_))))
                                  (_%E133605133614%_)))))
                      (_%E133604133630%_))))
                 (_%step133482%_
                  (lambda (_%hd133515%_ _%rest133516%_ _%r133517%_)
                    (let* ((_%e133518133536%_ _%hd133515%_)
                           (_%E133531133540%_
                            (lambda ()
                              (if (_%expanded?133476%_ (gx#stx-e _%hd133515%_))
                                  (_%K133481%_
                                   _%rest133516%_
                                   (cons (gx#stx-e _%hd133515%_) _%r133517%_))
                                  (_%expand1133479%_
                                   _%hd133515%_
                                   _%K133481%_
                                   _%rest133516%_
                                   _%r133517%_))))
                           (_%E133527133556%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133518133536%_)
                                  (let ((_%e133532133544%_
                                         (gx#syntax-e _%e133518133536%_)))
                                    (let ((_%hd133533133547%_
                                           (##car _%e133532133544%_))
                                          (_%tl133534133549%_
                                           (##cdr _%e133532133544%_)))
                                      (let* ((_%macro133552%_
                                              _%hd133533133547%_)
                                             (_%body133554%_
                                              _%tl133534133549%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro133552%_
                                             gx#syntax-binding?)
                                            (_%K133481%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro133552%_)
                                                    _%hd133515%_
                                                    _%method133477%_)
                                                   _%rest133516%_)
                                             _%r133517%_)
                                            (_%E133531133540%_)))))
                                  (_%E133531133540%_))))
                           (_%E133520133570%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133518133536%_)
                                  (let ((_%e133528133560%_
                                         (gx#syntax-e _%e133518133536%_)))
                                    (let ((_%hd133529133563%_
                                           (##car _%e133528133560%_))
                                          (_%tl133530133565%_
                                           (##cdr _%e133528133560%_)))
                                      (if (eq? (gx#stx-e _%hd133529133563%_)
                                               'begin:)
                                          (let ((_%body133568%_
                                                 _%tl133530133565%_))
                                            (_%K133481%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest133516%_
                                              _%body133568%_)
                                             _%r133517%_))
                                          (_%E133527133556%_))))
                                  (_%E133527133556%_))))
                           (_%E133519133597%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133518133536%_)
                                  (let ((_%e133521133574%_
                                         (gx#syntax-e _%e133518133536%_)))
                                    (let ((_%hd133522133577%_
                                           (##car _%e133521133574%_))
                                          (_%tl133523133579%_
                                           (##cdr _%e133521133574%_)))
                                      (if (eq? (gx#stx-e _%hd133522133577%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl133523133579%_)
                                              (let ((_%e133524133582%_
                                                     (gx#syntax-e
                                                      _%tl133523133579%_)))
                                                (let ((_%hd133525133585%_
                                                       (##car _%e133524133582%_))
                                                      (_%tl133526133587%_
                                                       (##cdr _%e133524133582%_)))
                                                  (let* ((_%dphi133590%_
                                                          _%hd133525133585%_)
                                                         (_%body133592%_
                                                          _%tl133526133587%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi133590%_)
                                                        (let ((_%rbody133595%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K133481%_ _%body133592%_ '()))
                        _%current-phi133478%_
                        (fx+ (gx#stx-e _%dphi133590%_)
                             (_%current-phi133478%_)))))
                  (_%K133481%_
                   _%rest133516%_
                   (__foldr1 cons _%r133517%_ _%rbody133595%_)))
                (_%E133520133570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133520133570%_))
                                          (_%E133520133570%_))))
                                  (_%E133520133570%_)))))
                      (_%E133519133597%_)))))
          (let* ((_%e133483133490%_ _%stx133475%_)
                 (_%E133485133494%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e133483133490%_)))
                 (_%E133484133511%_
                  (lambda ()
                    (if (gx#stx-pair? _%e133483133490%_)
                        (let ((_%e133486133498%_
                               (gx#syntax-e _%e133483133490%_)))
                          (let ((_%hd133487133501%_ (##car _%e133486133498%_))
                                (_%tl133488133503%_ (##cdr _%e133486133498%_)))
                            (let ((_%body133506%_ _%tl133488133503%_))
                              (if (_%current-phi133478%_)
                                  (_%K133481%_ _%body133506%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K133481%_ _%body133506%_ '()))
                                   _%current-phi133478%_
                                   (gx#current-expander-phi))))))
                        (_%E133485133494%_)))))
            (_%E133484133511%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx133129%_ _%internal-expand?133130%_)
        (letrec ((_%expand1133132%_
                  (lambda (_%hd133447%_ _%K133448%_ _%rest133449%_ _%r133450%_)
                    (if (gx#core-bound-module? _%hd133447%_)
                        (_%import1133133%_
                         (gx#syntax-local-e__0 _%hd133447%_)
                         _%K133448%_
                         _%rest133449%_
                         _%r133450%_)
                        (if (gx#core-library-module-path? _%hd133447%_)
                            (_%import1133133%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd133447%_))
                             _%K133448%_
                             _%rest133449%_
                             _%r133450%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd133447%_)
                                (_%import1133133%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd133447%_))
                                 _%K133448%_
                                 _%rest133449%_
                                 _%r133450%_)
                                (let ((_%e133456%_ (gx#stx-e _%hd133447%_)))
                                  (if (pair? _%e133456%_)
                                      (let ((_%$e133459%_
                                             (gx#stx-e (##car _%e133456%_))))
                                        (if (eq? 'spec: _%$e133459%_)
                                            (_%import-spec133136%_
                                             _%hd133447%_
                                             _%K133448%_
                                             _%rest133449%_
                                             _%r133450%_)
                                            (if (eq? 'in: _%$e133459%_)
                                                (_%import-submodule133134%_
                                                 _%hd133447%_
                                                 _%K133448%_
                                                 _%rest133449%_
                                                 _%r133450%_)
                                                (if (eq? 'runtime:
                                                         _%$e133459%_)
                                                    (_%import-runtime133135%_
                                                     _%hd133447%_
                                                     _%K133448%_
                                                     _%rest133449%_
                                                     _%r133450%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx133129%_
                                                     _%hd133447%_)))))
                                      (if (string? _%e133456%_)
                                          (_%import1133133%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd133447%_
                                             (gx#stx-source _%stx133129%_)))
                                           _%K133448%_
                                           _%rest133449%_
                                           _%r133450%_)
                                          (if (##structure-instance-of?
                                               _%e133456%_
                                               'gx#module-context::t)
                                              (_%K133448%_
                                               _%rest133449%_
                                               (cons _%e133456%_ _%r133450%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx133129%_
                                               _%hd133447%_))))))))))
                 (_%import1133133%_
                  (lambda (_%ctx133436%_
                           _%K133437%_
                           _%rest133438%_
                           _%r133439%_)
                    (let ((_%dphi133441%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K133437%_
                       _%rest133438%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx133436%_
                              _%dphi133441%_
                              (map (lambda (_%g133442133444%_)
                                     (gx#core-module-export->import__%
                                      _%g133442133444%_
                                      '#f
                                      _%dphi133441%_))
                                   (##unchecked-structure-ref
                                    _%ctx133436%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r133439%_)))))
                 (_%import-submodule133134%_
                  (lambda (_%hd133403%_ _%K133404%_ _%rest133405%_ _%r133406%_)
                    (let* ((_%e133407133414%_ _%hd133403%_)
                           (_%E133409133418%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133407133414%_)))
                           (_%E133408133432%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133407133414%_)
                                  (let ((_%e133410133422%_
                                         (gx#syntax-e _%e133407133414%_)))
                                    (let ((_%hd133411133425%_
                                           (##car _%e133410133422%_))
                                          (_%tl133412133427%_
                                           (##cdr _%e133410133422%_)))
                                      (let ((_%spath133430%_
                                             _%tl133412133427%_))
                                        (_%import1133133%_
                                         (_%import-spec-source133137%_
                                          _%spath133430%_)
                                         _%K133404%_
                                         _%rest133405%_
                                         _%r133406%_))))
                                  (_%E133409133418%_)))))
                      (_%E133408133432%_))))
                 (_%import-runtime133135%_
                  (lambda (_%hd133370%_ _%K133371%_ _%rest133372%_ _%r133373%_)
                    (let* ((_%e133374133381%_ _%hd133370%_)
                           (_%E133376133385%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133374133381%_)))
                           (_%E133375133399%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133374133381%_)
                                  (let ((_%e133377133389%_
                                         (gx#syntax-e _%e133374133381%_)))
                                    (let ((_%hd133378133392%_
                                           (##car _%e133377133389%_))
                                          (_%tl133379133394%_
                                           (##cdr _%e133377133389%_)))
                                      (let ((_%spath133397%_
                                             _%tl133379133394%_))
                                        (_%K133371%_
                                         _%rest133372%_
                                         (cons (_%import-spec-source133137%_
                                                _%spath133397%_)
                                               _%r133373%_)))))
                                  (_%E133376133385%_)))))
                      (_%E133375133399%_))))
                 (_%import-spec133136%_
                  (lambda (_%hd133208%_ _%K133209%_ _%rest133210%_ _%r133211%_)
                    (let* ((_%e133212133229%_ _%hd133208%_)
                           (_%E133221133233%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133212133229%_)))
                           (_%E133214133344%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133212133229%_)
                                  (let ((_%e133222133237%_
                                         (gx#syntax-e _%e133212133229%_)))
                                    (let ((_%hd133223133240%_
                                           (##car _%e133222133237%_))
                                          (_%tl133224133242%_
                                           (##cdr _%e133222133237%_)))
                                      (if (gx#stx-pair? _%tl133224133242%_)
                                          (let ((_%e133225133245%_
                                                 (gx#syntax-e
                                                  _%tl133224133242%_)))
                                            (let ((_%hd133226133248%_
                                                   (##car _%e133225133245%_))
                                                  (_%tl133227133250%_
                                                   (##cdr _%e133225133245%_)))
                                              (let* ((_%path133253%_
                                                      _%hd133226133248%_)
                                                     (_%specs133255%_
                                                      _%tl133227133250%_))
                                                (let ((_%src-ctx133257%_
                                                       (_%import-spec-source133137%_
                                                        _%path133253%_))
                                                      (_%exports133258%_
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
                                                      (_%specs133259%_
                                                       (gx#syntax->list
                                                        _%specs133255%_)))
                                                  (for-each
                                                   (lambda (_%out133261%_)
                                                     (__hash-put!
                                                      _%exports133258%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out133261%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out133261%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out133261%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx133257%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K133209%_
                                                   _%rest133210%_
                                                   (__foldl1
                                                    (lambda (_%spec133263%_
                                                             _%r133264%_)
                                                      (let* ((_%e133265133281%_
                                                              _%spec133263%_)
                                                             (_%E133267133285%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e133265133281%_)))
                     (_%E133266133340%_
                      (lambda ()
                        (if (gx#stx-pair? _%e133265133281%_)
                            (let ((_%e133268133289%_
                                   (gx#syntax-e _%e133265133281%_)))
                              (let ((_%hd133269133292%_
                                     (##car _%e133268133289%_))
                                    (_%tl133270133294%_
                                     (##cdr _%e133268133289%_)))
                                (let ((_%phi133297%_ _%hd133269133292%_))
                                  (if (gx#stx-pair? _%tl133270133294%_)
                                      (let ((_%e133271133299%_
                                             (gx#syntax-e _%tl133270133294%_)))
                                        (let ((_%hd133272133302%_
                                               (##car _%e133271133299%_))
                                              (_%tl133273133304%_
                                               (##cdr _%e133271133299%_)))
                                          (let ((_%name133307%_
                                                 _%hd133272133302%_))
                                            (if (gx#stx-pair?
                                                 _%tl133273133304%_)
                                                (let ((_%e133274133309%_
                                                       (gx#syntax-e
                                                        _%tl133273133304%_)))
                                                  (let ((_%hd133275133312%_
                                                         (##car _%e133274133309%_))
                                                        (_%tl133276133314%_
                                                         (##cdr _%e133274133309%_)))
                                                    (let ((_%src-phi133317%_
                                                           _%hd133275133312%_))
                                                      (if (gx#stx-pair?
                                                           _%tl133276133314%_)
                                                          (let ((_%e133277133319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl133276133314%_)))
                    (let ((_%hd133278133322%_ (##car _%e133277133319%_))
                          (_%tl133279133324%_ (##cdr _%e133277133319%_)))
                      (let ((_%src-name133327%_ _%hd133278133322%_))
                        (if (gx#stx-null? _%tl133279133324%_)
                            (if (and (gx#stx-fixnum? _%src-phi133317%_)
                                     (gx#identifier? _%src-name133327%_)
                                     (gx#stx-fixnum? _%phi133297%_)
                                     (gx#identifier? _%name133307%_))
                                (let ((_%src-phi133329%_
                                       (gx#stx-e _%src-phi133317%_))
                                      (_%src-name133330%_
                                       (gx#core-identifier-key
                                        _%src-name133327%_))
                                      (_%phi133331%_ (gx#stx-e _%phi133297%_))
                                      (_%name133332%_
                                       (gx#core-identifier-key
                                        _%name133307%_)))
                                  (let ((_%$e133334%_
                                         (__hash-get
                                          _%exports133258%_
                                          (cons _%src-phi133329%_
                                                _%src-name133330%_))))
                                    (if _%$e133334%_
                                        ((lambda (_%out133337%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out133337%_
                                                  _%name133332%_
                                                  (fx- _%phi133331%_
                                                       _%src-phi133329%_))
                                                 _%r133264%_))
                                         _%$e133334%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx133129%_
                                         _%hd133208%_))))
                                (_%E133267133285%_))
                            (_%E133267133285%_)))))
                  (_%E133267133285%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E133267133285%_)))))
                                      (_%E133267133285%_)))))
                            (_%E133267133285%_)))))
                (_%E133266133340%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r133211%_
                                                    _%specs133259%_))))))
                                          (_%E133221133233%_))))
                                  (_%E133221133233%_))))
                           (_%E133213133366%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133212133229%_)
                                  (let ((_%e133215133348%_
                                         (gx#syntax-e _%e133212133229%_)))
                                    (let ((_%hd133216133351%_
                                           (##car _%e133215133348%_))
                                          (_%tl133217133353%_
                                           (##cdr _%e133215133348%_)))
                                      (if (gx#stx-pair? _%tl133217133353%_)
                                          (let ((_%e133218133356%_
                                                 (gx#syntax-e
                                                  _%tl133217133353%_)))
                                            (let ((_%hd133219133359%_
                                                   (##car _%e133218133356%_))
                                                  (_%tl133220133361%_
                                                   (##cdr _%e133218133356%_)))
                                              (let ((_%path133364%_
                                                     _%hd133219133359%_))
                                                (if (gx#stx-null?
                                                     _%tl133220133361%_)
                                                    (_%K133209%_
                                                     _%rest133210%_
                                                     (cons (_%import-spec-source133137%_
                                                            _%path133364%_)
                                                           _%r133211%_))
                                                    (_%E133214133344%_)))))
                                          (_%E133214133344%_))))
                                  (_%E133214133344%_)))))
                      (_%E133213133366%_))))
                 (_%import-spec-source133137%_
                  (lambda (_%spath133206%_)
                    (gx#core-import-nested-module
                     _%spath133206%_
                     _%stx133129%_)))
                 (_%import!133138%_
                  (lambda (_%rbody133151%_)
                    (letrec* ((_%current-ctx133153%_
                               (gx#current-expander-context))
                              (_%deps133154%_ (make-hash-table-eq))
                              (_%bind!133155%_
                               (lambda (_%hd133204%_)
                                 (gx#core-bind-import!__1
                                  _%hd133204%_
                                  _%current-ctx133153%_))))
                      (let _%lp133157%_ ((_%rest133159%_ _%rbody133151%_)
                                         (_%body133160%_ '()))
                        (let* ((_%rest133161133169%_ _%rest133159%_)
                               (_%else133163133180%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx133153%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx133153%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx133153%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body133160%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx133177%_ _%_133178%_)
                                     (gx#eval-module _%ctx133177%_))
                                   _%deps133154%_)
                                  _%body133160%_))
                               (_%K133165133192%_
                                (lambda (_%rest133183%_ _%hd133184%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd133184%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!133155%_ _%hd133184%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd133184%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd133184%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps133154%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd133184%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd133184%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!133155%_
                                             (##unchecked-structure-ref
                                              _%hd133184%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd133184%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps133154%_
                                                 (##unchecked-structure-ref
                                                  _%hd133184%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e133188%_
                                                 (##structure-instance-of?
                                                  _%hd133184%_
                                                  'gx#module-context::t)))
                                            (if _%$e133188%_
                                                _%$e133188%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx133129%_
                                                 _%hd133184%_)))))
                                  (_%lp133157%_
                                   _%rest133183%_
                                   (cons _%hd133184%_ _%body133160%_)))))
                          (if (pair? _%rest133161133169%_)
                              (let ((_%hd133166133195%_
                                     (##car _%rest133161133169%_))
                                    (_%tl133167133197%_
                                     (##cdr _%rest133161133169%_)))
                                (let* ((_%hd133200%_ _%hd133166133195%_)
                                       (_%rest133202%_ _%tl133167133197%_))
                                  (_%K133165133192%_
                                   _%rest133202%_
                                   _%hd133200%_)))
                              (_%else133163133180%_)))))))
                 (_%expanded-import?133139%_
                  (lambda (_%e133143%_)
                    (let ((_%$e133145%_
                           (##structure-direct-instance-of?
                            _%e133143%_
                            'gx#import-set::t)))
                      (if _%$e133145%_
                          _%$e133145%_
                          (let ((_%$e133148%_
                                 (##structure-direct-instance-of?
                                  _%e133143%_
                                  'gx#module-import::t)))
                            (if _%$e133148%_
                                _%$e133148%_
                                (##structure-instance-of?
                                 _%e133143%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody133141%_
                 (gx#core-expand-import/export
                  _%stx133129%_
                  _%expanded-import?133139%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1133132%_)))
            (if _%internal-expand?133130%_
                (reverse _%rbody133141%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!133138%_ _%rbody133141%_))
                 (gx#stx-source _%stx133129%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx133468%_)
        (let ((_%internal-expand?133470%_ '#f))
          (gx#core-expand-import%__%
           _%stx133468%_
           _%internal-expand?133470%_))))
    (define gx#core-expand-import%
      (lambda _g136124_
        (let ((_g136125_ (##length _g136124_)))
          (cond ((##fx= _g136125_ 1)
                 (apply gx#core-expand-import%__0 _g136124_))
                ((##fx= _g136125_ 2)
                 (apply gx#core-expand-import%__% _g136124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g136124_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath133056%_ _%where133057%_)
        (let* ((_%e133058133065%_ _%spath133056%_)
               (_%E133060133069%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133058133065%_)))
               (_%E133059133124%_
                (lambda ()
                  (if (gx#stx-pair? _%e133058133065%_)
                      (let ((_%e133061133073%_
                             (gx#syntax-e _%e133058133065%_)))
                        (let ((_%hd133062133076%_ (##car _%e133061133073%_))
                              (_%tl133063133078%_ (##cdr _%e133061133073%_)))
                          (let* ((_%origin133081%_ _%hd133062133076%_)
                                 (_%sub133083%_ _%tl133063133078%_)
                                 (_%origin-ctx133085%_
                                  (if (gx#stx-false? _%origin133081%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin133081%_))))
                            (let _%lp133087%_ ((_%rest133089%_ _%sub133083%_)
                                               (_%ctx133090%_
                                                _%origin-ctx133085%_))
                              (let* ((_%e133091133098%_ _%rest133089%_)
                                     (_%E133093133102%_
                                      (lambda () _%ctx133090%_))
                                     (_%E133092133120%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e133091133098%_)
                                            (let ((_%e133094133106%_
                                                   (gx#syntax-e
                                                    _%e133091133098%_)))
                                              (let ((_%hd133095133109%_
                                                     (##car _%e133094133106%_))
                                                    (_%tl133096133111%_
                                                     (##cdr _%e133094133106%_)))
                                                (let* ((_%id133114%_
                                                        _%hd133095133109%_)
                                                       (_%rest133116%_
                                                        _%tl133096133111%_)
                                                       (_%bind133118%_
                                                        (gx#resolve-identifier__%
                                                         _%id133114%_
                                                         '0
                                                         _%ctx133090%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind133118%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind133118%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where133057%_
                                                       _%spath133056%_
                                                       _%id133114%_))
                                                  (_%lp133087%_
                                                   _%rest133116%_
                                                   (##unchecked-structure-ref
                                                    _%bind133118%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E133093133102%_)))))
                                (_%E133092133120%_))))))
                      (_%E133060133069%_)))))
          (_%E133059133124%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd133054%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd133054%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx132548%_ _%internal-expand?132549%_)
        (letrec* ((_%make-export__136053136054%_
                   (lambda (_%bind133002%_
                            _%phi133003%_
                            _%ctx133004%_
                            _%name133005%_)
                     (let* ((_%key133007%_
                             (##unchecked-structure-ref
                              _%bind133002%_
                              '2
                              '#f
                              '#f))
                            (_%export-key133009%_
                             (if _%name133005%_
                                 (gx#core-identifier-key _%name133005%_)
                                 _%key133007%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx133004%_
                        _%key133007%_
                        _%phi133003%_
                        _%export-key133009%_
                        (let ((_%$e133012%_
                               (##structure-instance-of?
                                _%bind133002%_
                                'gx#extern-binding::t)))
                          (if _%$e133012%_
                              _%$e133012%_
                              (##structure-direct-instance-of?
                               _%bind133002%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__136055136058%_
                   (lambda (_%bind133018%_)
                     (let* ((_%phi133020%_ (gx#current-export-expander-phi))
                            (_%ctx133022%_ (gx#current-expander-context))
                            (_%name133024%_ '#f))
                       (_%make-export__136053136054%_
                        _%bind133018%_
                        _%phi133020%_
                        _%ctx133022%_
                        _%name133024%_))))
                  (_%make-export__1__136056136059%_
                   (lambda (_%bind133026%_ _%phi133027%_)
                     (let* ((_%ctx133029%_ (gx#current-expander-context))
                            (_%name133031%_ '#f))
                       (_%make-export__136053136054%_
                        _%bind133026%_
                        _%phi133027%_
                        _%ctx133029%_
                        _%name133031%_))))
                  (_%make-export__2__136057136060%_
                   (lambda (_%bind133033%_ _%phi133034%_ _%ctx133035%_)
                     (let ((_%name133037%_ '#f))
                       (_%make-export__136053136054%_
                        _%bind133033%_
                        _%phi133034%_
                        _%ctx133035%_
                        _%name133037%_))))
                  (_%make-export132551%_
                   (lambda _g136126_
                     (let ((_g136127_ (##length _g136126_)))
                       (cond ((##fx= _g136127_ 1)
                              (apply _%make-export__0__136055136058%_
                                     _g136126_))
                             ((##fx= _g136127_ 2)
                              (apply _%make-export__1__136056136059%_
                                     _g136126_))
                             ((##fx= _g136127_ 3)
                              (apply _%make-export__2__136057136060%_
                                     _g136126_))
                             ((##fx= _g136127_ 4)
                              (apply _%make-export__136053136054%_ _g136126_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g136126_))))))
                  (_%expand1132552%_
                   (lambda (_%hd132707%_
                            _%K132708%_
                            _%rest132709%_
                            _%r132710%_)
                     (let* ((_%e132711132743%_ _%hd132707%_)
                            (_%E132738132747%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx132548%_
                                _%hd132707%_)))
                            (_%E132728132831%_
                             (lambda ()
                               (if (gx#stx-pair? _%e132711132743%_)
                                   (let ((_%e132739132751%_
                                          (gx#syntax-e _%e132711132743%_)))
                                     (let ((_%hd132740132754%_
                                            (##car _%e132739132751%_))
                                           (_%tl132741132756%_
                                            (##cdr _%e132739132751%_)))
                                       (if (eq? (gx#stx-e _%hd132740132754%_)
                                                'import:)
                                           (let ((_%in132759%_
                                                  _%tl132741132756%_))
                                             (if (gx#stx-list? _%in132759%_)
                                                 (let _%lp132761%_ ((_%in-rest132763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in132759%_)
                            (_%r132764%_ _%r132710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e132765132772%_
                                                           _%in-rest132763%_)
                                                          (_%E132767132776%_
                                                           (lambda ()
                                                             (_%K132708%_
                                                              _%rest132709%_
                                                              _%r132764%_)))
                                                          (_%E132766132827%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e132765132772%_)
                         (let ((_%e132768132780%_
                                (gx#syntax-e _%e132765132772%_)))
                           (let ((_%hd132769132783%_ (##car _%e132768132780%_))
                                 (_%tl132770132785%_
                                  (##cdr _%e132768132780%_)))
                             (let* ((_%hd132788%_ _%hd132769132783%_)
                                    (_%in-rest132790%_ _%tl132770132785%_)
                                    (_%src132825%_
                                     (if (gx#core-bound-module? _%hd132788%_)
                                         (gx#syntax-local-e__0 _%hd132788%_)
                                         (if (gx#core-library-module-path?
                                              _%hd132788%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd132788%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd132788%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd132788%_))
                                                 (if (gx#stx-string?
                                                      _%hd132788%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd132788%_
                                                       (gx#stx-source
                                                        _%stx132548%_)))
                                                     (let* ((_%e132796132803%_
                                                             _%hd132788%_)
                                                            (_%E132798132807%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx132548%_
                                                                _%hd132788%_)))
                                                            (_%E132797132821%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e132796132803%_)
                           (let ((_%e132799132811%_
                                  (gx#syntax-e _%e132796132803%_)))
                             (let ((_%hd132800132814%_
                                    (##car _%e132799132811%_))
                                   (_%tl132801132816%_
                                    (##cdr _%e132799132811%_)))
                               (if (eq? (gx#stx-e _%hd132800132814%_) 'in:)
                                   (let ((_%spath132819%_ _%tl132801132816%_))
                                     (gx#core-import-nested-module
                                      _%spath132819%_
                                      _%stx132548%_))
                                   (_%E132798132807%_))))
                           (_%E132798132807%_)))))
               (_%E132797132821%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp132761%_
                                _%in-rest132790%_
                                (_%export-imports132553%_
                                 _%src132825%_
                                 _%r132764%_)))))
                         (_%E132767132776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E132766132827%_)))
                                                 (_%E132738132747%_)))
                                           (_%E132738132747%_))))
                                   (_%E132738132747%_))))
                            (_%E132715132871%_
                             (lambda ()
                               (if (gx#stx-pair? _%e132711132743%_)
                                   (let ((_%e132729132835%_
                                          (gx#syntax-e _%e132711132743%_)))
                                     (let ((_%hd132730132838%_
                                            (##car _%e132729132835%_))
                                           (_%tl132731132840%_
                                            (##cdr _%e132729132835%_)))
                                       (if (eq? (gx#stx-e _%hd132730132838%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl132731132840%_)
                                               (let ((_%e132732132843%_
                                                      (gx#syntax-e
                                                       _%tl132731132840%_)))
                                                 (let ((_%hd132733132846%_
                                                        (##car _%e132732132843%_))
                                                       (_%tl132734132848%_
                                                        (##cdr _%e132732132843%_)))
                                                   (let ((_%id132851%_
                                                          _%hd132733132846%_))
                                                     (if (gx#stx-pair?
                                                          _%tl132734132848%_)
                                                         (let ((_%e132735132853%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl132734132848%_)))
                   (let ((_%hd132736132856%_ (##car _%e132735132853%_))
                         (_%tl132737132858%_ (##cdr _%e132735132853%_)))
                     (let ((_%name132861%_ _%hd132736132856%_))
                       (if (gx#stx-null? _%tl132737132858%_)
                           (let* ((_%phi132863%_
                                   (gx#current-export-expander-phi))
                                  (_%$e132865%_
                                   (gx#core-resolve-identifier__1
                                    _%id132851%_
                                    _%phi132863%_)))
                             (if _%$e132865%_
                                 ((lambda (_%bind132868%_)
                                    (_%K132708%_
                                     _%rest132709%_
                                     (cons (_%make-export__136053136054%_
                                            _%bind132868%_
                                            _%phi132863%_
                                            (gx#current-expander-context)
                                            _%name132861%_)
                                           _%r132710%_)))
                                  _%$e132865%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx132548%_
                                  _%hd132707%_
                                  _%id132851%_)))
                           (_%E132728132831%_)))))
                 (_%E132728132831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E132728132831%_))
                                           (_%E132728132831%_))))
                                   (_%E132728132831%_))))
                            (_%E132714132921%_
                             (lambda ()
                               (if (gx#stx-pair? _%e132711132743%_)
                                   (let ((_%e132716132875%_
                                          (gx#syntax-e _%e132711132743%_)))
                                     (let ((_%hd132717132878%_
                                            (##car _%e132716132875%_))
                                           (_%tl132718132880%_
                                            (##cdr _%e132716132875%_)))
                                       (if (eq? (gx#stx-e _%hd132717132878%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl132718132880%_)
                                               (let ((_%e132719132883%_
                                                      (gx#syntax-e
                                                       _%tl132718132880%_)))
                                                 (let ((_%hd132720132886%_
                                                        (##car _%e132719132883%_))
                                                       (_%tl132721132888%_
                                                        (##cdr _%e132719132883%_)))
                                                   (let ((_%phi132891%_
                                                          _%hd132720132886%_))
                                                     (if (gx#stx-pair?
                                                          _%tl132721132888%_)
                                                         (let ((_%e132722132893%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl132721132888%_)))
                   (let ((_%hd132723132896%_ (##car _%e132722132893%_))
                         (_%tl132724132898%_ (##cdr _%e132722132893%_)))
                     (let ((_%id132901%_ _%hd132723132896%_))
                       (if (gx#stx-pair? _%tl132724132898%_)
                           (let ((_%e132725132903%_
                                  (gx#syntax-e _%tl132724132898%_)))
                             (let ((_%hd132726132906%_
                                    (##car _%e132725132903%_))
                                   (_%tl132727132908%_
                                    (##cdr _%e132725132903%_)))
                               (let ((_%name132911%_ _%hd132726132906%_))
                                 (if (gx#stx-null? _%tl132727132908%_)
                                     (if (and (gx#stx-fixnum? _%phi132891%_)
                                              (gx#identifier? _%id132901%_)
                                              (gx#identifier? _%name132911%_))
                                         (let* ((_%phi132913%_
                                                 (gx#stx-e _%phi132891%_))
                                                (_%$e132915%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id132901%_
                                                  _%phi132913%_)))
                                           (if _%$e132915%_
                                               ((lambda (_%bind132918%_)
                                                  (_%K132708%_
                                                   _%rest132709%_
                                                   (cons (_%make-export__136053136054%_
                                                          _%bind132918%_
                                                          _%phi132913%_
                                                          (gx#current-expander-context)
                                                          _%name132911%_)
                                                         _%r132710%_)))
                                                _%$e132915%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx132548%_
                                                _%hd132707%_
                                                _%id132901%_)))
                                         (_%E132715132871%_))
                                     (_%E132715132871%_)))))
                           (_%E132715132871%_)))))
                 (_%E132715132871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E132715132871%_))
                                           (_%E132715132871%_))))
                                   (_%E132715132871%_))))
                            (_%E132713132933%_
                             (lambda ()
                               (let ((_%id132925%_ _%e132711132743%_))
                                 (if (gx#identifier? _%id132925%_)
                                     (let ((_%$e132927%_
                                            (gx#core-resolve-identifier__1
                                             _%id132925%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e132927%_
                                           ((lambda (_%bind132930%_)
                                              (_%K132708%_
                                               _%rest132709%_
                                               (cons (_%make-export__0__136055136058%_
                                                      _%bind132930%_)
                                                     _%r132710%_)))
                                            _%$e132927%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx132548%_
                                            _%hd132707%_)))
                                     (_%E132714132921%_)))))
                            (_%E132712132997%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e132711132743%_) '#t)
                                   (let* ((_%current-ctx132937%_
                                           (gx#current-expander-context))
                                          (_%current-phi132939%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx132941%_
                                           (gx#core-context-shift
                                            _%current-ctx132937%_
                                            _%current-phi132939%_))
                                          (_%phi-bind132943%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx132941%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp132946%_ ((_%bind-rest132948%_
                                                         _%phi-bind132943%_)
                                                        (_%set132949%_ '()))
                                       (let* ((_%bind-rest132950132960%_
                                               _%bind-rest132948%_)
                                              (_%else132952132968%_
                                               (lambda ()
                                                 (_%K132708%_
                                                  _%rest132709%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi132939%_
                                                         _%set132949%_)
                                                        _%r132710%_))))
                                              (_%K132954132978%_
                                               (lambda (_%bind-rest132971%_
                                                        _%bind132972%_
                                                        _%key132973%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind132972%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind132972%_))
                                                     (_%lp132946%_
                                                      _%bind-rest132971%_
                                                      _%set132949%_)
                                                     (_%lp132946%_
                                                      _%bind-rest132971%_
                                                      (cons (_%make-export__2__136057136060%_
                                                             _%bind132972%_
                                                             _%current-phi132939%_
                                                             _%current-ctx132937%_)
                                                            _%set132949%_))))))
                                         (if (pair? _%bind-rest132950132960%_)
                                             (let ((_%hd132955132981%_
                                                    (##car _%bind-rest132950132960%_))
                                                   (_%tl132956132983%_
                                                    (##cdr _%bind-rest132950132960%_)))
                                               (if (pair? _%hd132955132981%_)
                                                   (let ((_%hd132957132986%_
                                                          (##car _%hd132955132981%_))
                                                         (_%tl132958132988%_
                                                          (##cdr _%hd132955132981%_)))
                                                     (let* ((_%key132991%_
                                                             _%hd132957132986%_)
                                                            (_%bind132993%_
                                                             _%tl132958132988%_)
                                                            (_%bind-rest132995%_
                                                             _%tl132956132983%_))
                                                       (_%K132954132978%_
                                                        _%bind-rest132995%_
                                                        _%bind132993%_
                                                        _%key132991%_)))
                                                   (_%else132952132968%_)))
                                             (_%else132952132968%_)))))
                                   (_%E132713132933%_)))))
                       (_%E132712132997%_))))
                  (_%export-imports132553%_
                   (lambda (_%src132583%_ _%r132584%_)
                     (letrec* ((_%current-ctx132586%_
                                (gx#current-expander-context))
                               (_%current-phi132587%_
                                (gx#current-export-expander-phi))
                               (_%import->export132588%_
                                (lambda (_%in132669%_)
                                  (let* ((_%in132670132678%_ _%in132669%_)
                                         (_%E132672132682%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in132670132678%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K132673132689%_
                                          (lambda (_%phi132685%_
                                                   _%key132686%_
                                                   _%out132687%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx132586%_
                                             _%key132686%_
                                             _%phi132685%_
                                             _%key132686%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in132670132678%_
                                         'gx#module-import::t)
                                        (let* ((_%e132674132692%_
                                                (##unchecked-structure-ref
                                                 _%in132670132678%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out132695%_
                                                _%e132674132692%_)
                                               (_%e132675132697%_
                                                (##unchecked-structure-ref
                                                 _%in132670132678%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key132700%_
                                                _%e132675132697%_)
                                               (_%e132676132702%_
                                                (##unchecked-structure-ref
                                                 _%in132670132678%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi132705%_
                                                _%e132676132702%_))
                                          (_%K132673132689%_
                                           _%phi132705%_
                                           _%key132700%_
                                           _%out132695%_))
                                        (_%E132672132682%_)))))
                               (_%fold-e132589%_
                                (lambda (_%in132591%_ _%r132592%_)
                                  (let* ((_%in132593132607%_ _%in132591%_)
                                         (_%else132596132615%_
                                          (lambda () _%r132592%_)))
                                    (let ((_%K132602132651%_
                                           (lambda (_%phi132647%_
                                                    _%key132648%_
                                                    _%out132649%_)
                                             (if (and (fx= _%phi132647%_
                                                           _%current-phi132587%_)
                                                      (eq? _%src132583%_
                                                           (##unchecked-structure-ref
                                                            _%out132649%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export132588%_
                                                        _%in132591%_)
                                                       _%r132592%_)
                                                 _%r132592%_)))
                                          (_%K132598132626%_
                                           (lambda (_%imports132619%_
                                                    _%phi132620%_
                                                    _%ctx132621%_)
                                             (if (and (fx= _%phi132620%_
                                                           _%current-phi132587%_)
                                                      (eq? _%src132583%_
                                                           _%ctx132621%_))
                                                 (__foldl1
                                                  (lambda (_%in132623%_
                                                           _%r132624%_)
                                                    (cons (_%import->export132588%_
                                                           _%in132623%_)
                                                          _%r132624%_))
                                                  _%r132592%_
                                                  _%imports132619%_)
                                                 _%r132592%_))))
                                      (let ((_%try-match132595132644%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in132593132607%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e132599132629%_
                                                           (##unchecked-structure-ref
                                                            _%in132593132607%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e132600132634%_
                                                           (##unchecked-structure-ref
                                                            _%in132593132607%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e132601132639%_
                                                           (##unchecked-structure-ref
                                                            _%in132593132607%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx132632%_
                                                            _%e132599132629%_)
                                                           (_%phi132637%_
                                                            _%e132600132634%_)
                                                           (_%imports132642%_
                                                            _%e132601132639%_))
                                                       (_%K132598132626%_
                                                        _%imports132642%_
                                                        _%phi132637%_
                                                        _%ctx132632%_)))
                                                   (_%else132596132615%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in132593132607%_
                                             'gx#module-import::t)
                                            (let* ((_%e132603132654%_
                                                    (##unchecked-structure-ref
                                                     _%in132593132607%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e132604132659%_
                                                    (##unchecked-structure-ref
                                                     _%in132593132607%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e132605132664%_
                                                    (##unchecked-structure-ref
                                                     _%in132593132607%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out132657%_
                                                     _%e132603132654%_)
                                                    (_%key132662%_
                                                     _%e132604132659%_)
                                                    (_%phi132667%_
                                                     _%e132605132664%_))
                                                (_%K132602132651%_
                                                 _%phi132667%_
                                                 _%key132662%_
                                                 _%out132657%_)))
                                            (_%try-match132595132644%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src132583%_
                              _%current-phi132587%_
                              (__foldl1
                               _%fold-e132589%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx132586%_
                                '8
                                '#f
                                '#f)))
                             _%r132584%_))))
                  (_%export!132554%_
                   (lambda (_%rbody132570%_)
                     (letrec* ((_%current-ctx132572%_
                                (gx#current-expander-context))
                               (_%fold-e132573%_
                                (lambda (_%out132577%_ _%r132578%_)
                                  (if (##structure-direct-instance-of?
                                       _%out132577%_
                                       'gx#module-export::t)
                                      (cons _%out132577%_ _%r132578%_)
                                      (if (##structure-direct-instance-of?
                                           _%out132577%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r132578%_
                                           (##unchecked-structure-ref
                                            _%out132577%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r132578%_)))))
                       (let ((_%body132575%_ (reverse _%rbody132570%_)))
                         (##unchecked-structure-set!
                          _%current-ctx132572%_
                          (__foldl1
                           _%fold-e132573%_
                           (##unchecked-structure-ref
                            _%current-ctx132572%_
                            '9
                            '#f
                            '#f)
                           _%body132575%_)
                          '9
                          '#f
                          '#f)
                         _%body132575%_))))
                  (_%expanded-export?132555%_
                   (lambda (_%e132565%_)
                     (let ((_%$e132567%_
                            (##structure-direct-instance-of?
                             _%e132565%_
                             'gx#module-export::t)))
                       (if _%$e132567%_
                           _%$e132567%_
                           (##structure-direct-instance-of?
                            _%e132565%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?132549%_)
              (let ((_%rbody132561%_
                     (gx#core-expand-import/export
                      _%stx132548%_
                      _%expanded-export?132555%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1132552%_)))
                (if _%internal-expand?132549%_
                    (reverse _%rbody132561%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!132554%_ _%rbody132561%_))
                     (gx#stx-source _%stx132548%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx132548%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx132548%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx133047%_)
        (let ((_%internal-expand?133049%_ '#f))
          (gx#core-expand-export%__%
           _%stx133047%_
           _%internal-expand?133049%_))))
    (define gx#core-expand-export%
      (lambda _g136128_
        (let ((_g136129_ (##length _g136128_)))
          (cond ((##fx= _g136129_ 1)
                 (apply gx#core-expand-export%__0 _g136128_))
                ((##fx= _g136129_ 2)
                 (apply gx#core-expand-export%__% _g136128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g136128_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd132545%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd132545%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx132515%_)
        (let* ((_%e132516132523%_ _%stx132515%_)
               (_%E132518132527%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132516132523%_)))
               (_%E132517132541%_
                (lambda ()
                  (if (gx#stx-pair? _%e132516132523%_)
                      (let ((_%e132519132531%_
                             (gx#syntax-e _%e132516132523%_)))
                        (let ((_%hd132520132534%_ (##car _%e132519132531%_))
                              (_%tl132521132536%_ (##cdr _%e132519132531%_)))
                          (let ((_%body132539%_ _%tl132521132536%_))
                            (if (gx#identifier-list? _%body132539%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body132539%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body132539%_))
                                   (gx#stx-source _%stx132515%_)))
                                (_%E132518132527%_)))))
                      (_%E132518132527%_)))))
          (_%E132517132541%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id132481%_ _%private?132482%_ _%phi132483%_ _%ctx132484%_)
        (gx#core-bind-syntax!__%
         _%id132481%_
         ((if _%private?132482%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id132481%_))
         _%private?132482%_
         _%phi132483%_
         _%ctx132484%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id132489%_)
        (let* ((_%private?132491%_ '#f)
               (_%phi132493%_ (gx#current-expander-phi))
               (_%ctx132495%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id132489%_
           _%private?132491%_
           _%phi132493%_
           _%ctx132495%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id132497%_ _%private?132498%_)
        (let* ((_%phi132500%_ (gx#current-expander-phi))
               (_%ctx132502%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id132497%_
           _%private?132498%_
           _%phi132500%_
           _%ctx132502%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id132504%_ _%private?132505%_ _%phi132506%_)
        (let ((_%ctx132508%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id132504%_
           _%private?132505%_
           _%phi132506%_
           _%ctx132508%_))))
    (define gx#core-bind-feature!
      (lambda _g136130_
        (let ((_g136131_ (##length _g136130_)))
          (cond ((##fx= _g136131_ 1)
                 (apply gx#core-bind-feature!__0 _g136130_))
                ((##fx= _g136131_ 2)
                 (apply gx#core-bind-feature!__1 _g136130_))
                ((##fx= _g136131_ 3)
                 (apply gx#core-bind-feature!__2 _g136130_))
                ((##fx= _g136131_ 4)
                 (apply gx#core-bind-feature!__% _g136130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g136130_))))))))
