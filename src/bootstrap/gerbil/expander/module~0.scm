(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770248970)
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
      (lambda _%$args152530%_
        (apply make-instance gx#module-import::t _%$args152530%_)))
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
      (lambda _%$args152527%_
        (apply make-instance gx#module-export::t _%$args152527%_)))
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
      (lambda _%$args152524%_
        (apply make-instance gx#import-set::t _%$args152524%_)))
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
      (lambda _%$args152521%_
        (apply make-instance gx#export-set::t _%$args152521%_)))
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
      (lambda _%$args152518%_
        (apply make-instance gx#import-expander::t _%$args152518%_)))
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
      (lambda _%$args152515%_
        (apply make-instance gx#export-expander::t _%$args152515%_)))
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
      (lambda _%$args152512%_
        (apply make-instance gx#import-export-expander::t _%$args152512%_)))
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
      (lambda (_%path152509%_ _%fun152510%_)
        (call-with-input-file
         (cons 'path: (cons _%path152509%_ gx#source-file-settings))
         _%fun152510%_)))
    (define gx#module-context:::init!
      (lambda (_%self152492%_
               _%id152493%_
               _%super152494%_
               _%ns152495%_
               _%path152496%_)
        (let ((_%self152499%_ _%self152492%_))
          (if (##fx< '11 (##structure-length _%self152499%_))
              (begin
                (##unchecked-structure-set!
                 _%self152499%_
                 _%id152493%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152499%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152499%_
                 _%super152494%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152499%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self152499%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self152499%_
                 _%ns152495%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self152499%_
                 _%path152496%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self152499%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self152499%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self152499%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self152499%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self152499%_
                     '11
                     (##structure-length _%self152499%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self152325%_ _%ctx152326%_ _%root152327%_)
        (let* ((_%self152330%_ _%self152325%_)
               (_%super152346%_
                (let ((_%$e152340%_ _%root152327%_))
                  (if _%$e152340%_
                      _%$e152340%_
                      (let ((_%$e152343%_ (gx#core-context-root__0)))
                        (if _%$e152343%_
                            _%$e152343%_
                            (let ((__obj152574
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor152575
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj152574
                                      ':init!)))
                                (if __constructor152575
                                    (__constructor152575 __obj152574)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj152574)))))))
          (if _%ctx152326%_
              (let ((_%id152349%_
                     (##structure-ref
                      _%ctx152326%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path152350%_
                     (##structure-ref
                      _%ctx152326%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in152351%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx152326%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e152352%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx152326%_)))))
                (if (##fx< '8 (##structure-length _%self152330%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self152330%_
                       _%id152349%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152330%_
                       (make-hash-table-eq 'size: (##length _%in152351%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152330%_
                       _%super152346%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152330%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152330%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152330%_
                       _%path152350%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152330%_
                       _%in152351%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self152330%_
                       _%e152352%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self152330%_
                           '8
                           (##structure-length _%self152330%_)))
                (##for-each
                 (lambda (_%g152353152355%_)
                   (gx#core-bind-weak-import!__%
                    _%g152353152355%_
                    _%self152330%_))
                 _%in152351%_))
              (if (##fx< '8 (##structure-length _%self152330%_))
                  (begin
                    (##unchecked-structure-set! _%self152330%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self152330%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self152330%_
                     _%super152346%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self152330%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self152330%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self152330%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self152330%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self152330%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self152330%_
                         '8
                         (##structure-length _%self152330%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self152361%_ _%ctx152362%_)
        (let ((_%root152364%_ '#f))
          (gx#prelude-context:::init!__%
           _%self152361%_
           _%ctx152362%_
           _%root152364%_))))
    (define gx#prelude-context:::init!
      (lambda _g152581_
        (let ((_g152582_ (##length _g152581_)))
          (cond ((##fx= _g152582_ 2)
                 (apply gx#prelude-context:::init!__0 _g152581_))
                ((##fx= _g152582_ 3)
                 (apply gx#prelude-context:::init!__% _g152581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g152581_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self152199%_ _%e152200%_)
        (if (##fx< '3 (##structure-length _%self152199%_))
            (begin
              (##unchecked-structure-set!
               _%self152199%_
               _%e152200%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152199%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self152199%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self152199%_
                   '3
                   (##structure-length _%self152199%_)))))
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
      (lambda (_%g151825151828%_ _%g151826151830%_)
        (gx#core-apply-user-expander__%
         _%g151825151828%_
         _%g151826151830%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g151696151699%_ _%g151697151701%_)
        (gx#core-apply-user-expander__%
         _%g151696151699%_
         _%g151697151701%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx151567%_)
        (let* ((_%path151569%_
                (##structure-ref _%ctx151567%_ '7 gx#module-context::t '#f))
               (_%path151571%_
                (if (pair? _%path151569%_)
                    (##last _%path151569%_)
                    _%path151569%_)))
          (if (string? _%path151571%_) _%path151571%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path151543%_ _%reload?151544%_ _%eval?151545%_)
        (let ((_%ctx151547%_
               ((gx#current-expander-module-import)
                _%path151543%_
                _%reload?151544%_)))
          (if (and _%ctx151547%_ _%eval?151545%_)
              (gx#eval-module _%ctx151547%_)
              '#!void)
          _%ctx151547%_)))
    (define gx#import-module__0
      (lambda (_%path151552%_)
        (let* ((_%reload?151554%_ '#f) (_%eval?151556%_ '#f))
          (gx#import-module__%
           _%path151552%_
           _%reload?151554%_
           _%eval?151556%_))))
    (define gx#import-module__1
      (lambda (_%path151558%_ _%reload?151559%_)
        (let ((_%eval?151561%_ '#f))
          (gx#import-module__%
           _%path151558%_
           _%reload?151559%_
           _%eval?151561%_))))
    (define gx#import-module
      (lambda _g152583_
        (let ((_g152584_ (##length _g152583_)))
          (cond ((##fx= _g152584_ 1) (apply gx#import-module__0 _g152583_))
                ((##fx= _g152584_ 2) (apply gx#import-module__1 _g152583_))
                ((##fx= _g152584_ 3) (apply gx#import-module__% _g152583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g152583_))))))
    (define gx#eval-module
      (lambda (_%mod151540%_)
        ((gx#current-expander-module-eval) _%mod151540%_)))
    (define gx#core-eval-module
      (lambda (_%obj151519%_)
        (letrec ((_%force-e151521%_
                  (lambda (_%getf151535%_ _%e151536%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf151535%_ _%e151536%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e151536%_))))
          (let _%recur151523%_ ((_%e151525%_ _%obj151519%_))
            (if (##structure-instance-of? _%e151525%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e151528%_
                         (gx#core-context-prelude__% _%e151525%_)))
                    (if _%$e151528%_ (_%recur151523%_ _%$e151528%_) '#!void))
                  (_%force-e151521%_ gx#module-context-e _%e151525%_))
                (if (##structure-instance-of?
                     _%e151525%_
                     'gx#prelude-context::t)
                    (_%force-e151521%_ gx#prelude-context-e _%e151525%_)
                    (if (gx#stx-string? _%e151525%_)
                        (_%recur151523%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e151525%_)))
                        (if (gx#core-library-module-path? _%e151525%_)
                            (_%recur151523%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e151525%_)))
                            (error '"cannot eval module" _%obj151519%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx151499%_)
        (let _%lp151501%_ ((_%e151503%_ _%ctx151499%_))
          (if (or (##structure-instance-of? _%e151503%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e151503%_ 'gx#local-context::t))
              (_%lp151501%_ (##unchecked-structure-ref _%e151503%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e151503%_ 'gx#prelude-context::t)
                  _%e151503%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx151515%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx151515%_))))
    (define gx#core-context-prelude
      (lambda _g152585_
        (let ((_g152586_ (##length _g152585_)))
          (cond ((##fx= _g152586_ 0)
                 (apply gx#core-context-prelude__0 _g152585_))
                ((##fx= _g152586_ 1)
                 (apply gx#core-context-prelude__% _g152585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g152585_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx151490%_)
        (let ((_%$e151492%_ (__hash-get gx#__module-registry _%ctx151490%_)))
          (if _%$e151492%_
              _%$e151492%_
              (let ((_%pre151496%_
                     (let ((__obj152576
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
                        __obj152576
                        _%ctx151490%_)
                       __obj152576)))
                (__hash-put! gx#__module-registry _%ctx151490%_ _%pre151496%_)
                _%pre151496%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath151358%_ _%reload?151359%_)
        (letrec ((_%import-source151361%_
                  (lambda (_%path151449%_)
                    (if (member _%path151449%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path151449%_)
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
                                      (let ((_g152587_
                                             (gx#core-read-module
                                              _%path151449%_)))
                                        (begin
                                          (let ((_g152588_
                                                 (if (##values? _g152587_)
                                                     (##values-length
                                                      _g152587_)
                                                     1)))
                                            (if (not (##fx= _g152588_ 4))
                                                (error "Context expects 4 values"
                                                       _g152588_)))
                                          (let ((_%pre151457%_
                                                 (##values-ref _g152587_ 0))
                                                (_%id151458%_
                                                 (##values-ref _g152587_ 1))
                                                (_%ns151459%_
                                                 (##values-ref _g152587_ 2))
                                                (_%body151460%_
                                                 (##values-ref _g152587_ 3)))
                                            (let* ((_%prelude151470%_
                                                    (if (##structure-instance-of?
                                                         _%pre151457%_
                                                         'gx#prelude-context::t)
                                                        _%pre151457%_
                                                        (if (##structure-instance-of?
                                                             _%pre151457%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre151457%_)
                                                            (if (string? _%pre151457%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre151457%_))
                        (if (not _%pre151457%_)
                            (let ((_%$e151466%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e151466%_
                                  _%$e151466%_
                                  (let ((__obj152577
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
                                     __obj152577
                                     '#f)
                                    __obj152577)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath151358%_
                                   _%pre151457%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx151472%_
                                                    (let ((__obj152578
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
                                                       __obj152578
                                                       _%id151458%_
                                                       _%prelude151470%_
                                                       _%ns151459%_
                                                       _%path151449%_)
                                                      __obj152578))
                                                   (_%body151474%_
                                                    (gx#core-expand-module-begin
                                                     _%body151460%_
                                                     _%ctx151472%_))
                                                   (_%body151476%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body151474%_)
                                                     _%path151449%_
                                                     _%ctx151472%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx151472%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body151476%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx151472%_
                                               _%body151476%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path151449%_
                                               _%ctx151472%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id151458%_
                                               _%ctx151472%_)
                                              _%ctx151472%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path151449%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule151362%_
                  (lambda (_%rpath151378%_)
                    (let* ((_%rpath151379151386%_ _%rpath151378%_)
                           (_%E151381151389%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath151379151386%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K151382151437%_
                            (lambda (_%refs151392%_ _%origin151393%_)
                              (let ((_%ctx151395%_
                                     (if _%origin151393%_
                                         (gx#core-import-module__%
                                          _%origin151393%_
                                          _%reload?151359%_)
                                         (gx#current-expander-context))))
                                (let _%lp151397%_ ((_%rest151399%_
                                                    _%refs151392%_)
                                                   (_%ctx151400%_
                                                    _%ctx151395%_))
                                  (let* ((_%rest151401151409%_ _%rest151399%_)
                                         (_%else151403151417%_
                                          (lambda () _%ctx151400%_))
                                         (_%K151405151425%_
                                          (lambda (_%rest151420%_ _%id151421%_)
                                            (let ((_%bind151423%_
                                                   (gx#resolve-identifier__%
                                                    _%id151421%_
                                                    '0
                                                    _%ctx151400%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind151423%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind151423%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp151397%_
                                                   _%rest151420%_
                                                   (##unchecked-structure-ref
                                                    _%bind151423%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath151378%_
                                                         _%id151421%_
                                                         _%bind151423%_))))))
                                    (if (pair? _%rest151401151409%_)
                                        (let ((_%hd151406151428%_
                                               (##car _%rest151401151409%_))
                                              (_%tl151407151430%_
                                               (##cdr _%rest151401151409%_)))
                                          (let* ((_%id151433%_
                                                  _%hd151406151428%_)
                                                 (_%rest151435%_
                                                  _%tl151407151430%_))
                                            (_%K151405151425%_
                                             _%rest151435%_
                                             _%id151433%_)))
                                        (_%else151403151417%_))))))))
                      (if (pair? _%rpath151379151386%_)
                          (let ((_%hd151383151440%_
                                 (##car _%rpath151379151386%_))
                                (_%tl151384151442%_
                                 (##cdr _%rpath151379151386%_)))
                            (let* ((_%origin151445%_ _%hd151383151440%_)
                                   (_%refs151447%_ _%tl151384151442%_))
                              (_%K151382151437%_
                               _%refs151447%_
                               _%origin151445%_)))
                          (_%E151381151389%_))))))
          (let ((_%$e151364%_
                 (if (not _%reload?151359%_)
                     (__hash-get gx#__module-registry _%rpath151358%_)
                     '#f)))
            (if _%$e151364%_
                _%$e151364%_
                (if (list? _%rpath151358%_)
                    (_%import-submodule151362%_ _%rpath151358%_)
                    (if (gx#core-library-module-path? _%rpath151358%_)
                        (let ((_%ctx151369%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath151358%_)
                                _%reload?151359%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath151358%_
                           _%ctx151369%_)
                          _%ctx151369%_)
                        (let* ((_%npath151372%_
                                (path-normalize _%rpath151358%_))
                               (_%$e151374%_
                                (if (not _%reload?151359%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath151372%_)
                                    '#f)))
                          (if _%$e151374%_
                              _%$e151374%_
                              (_%import-source151361%_
                               _%npath151372%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath151483%_)
        (let ((_%reload?151485%_ '#f))
          (gx#core-import-module__% _%rpath151483%_ _%reload?151485%_))))
    (define gx#core-import-module
      (lambda _g152589_
        (let ((_g152590_ (##length _g152589_)))
          (cond ((##fx= _g152590_ 1)
                 (apply gx#core-import-module__0 _g152589_))
                ((##fx= _g152590_ 2)
                 (apply gx#core-import-module__% _g152589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g152589_))))))
    (define gx#core-read-module
      (lambda (_%path151347%_)
        (__with-catch
         (lambda (_%exn151349%_)
           (if (and (datum-parsing-exception? _%exn151349%_)
                    (eq? (datum-parsing-exception-filepos _%exn151349%_) '0))
               (gx#core-read-module/lang _%path151347%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path151347%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g151351151353%_)
                      (display-exception__% _%exn151349%_ _%g151351151353%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path151347%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path151199%_)
        (let _%lp151201%_ ((_%body151203%_
                            (read-syntax-from-file _%path151199%_))
                           (_%pre151204%_ '#f)
                           (_%ns151205%_ '#f)
                           (_%pkg151206%_ '#f))
          (let* ((_%e151207151231%_ _%body151203%_)
                 (_%E151223151257%_
                  (lambda ()
                    (let ((_g152591_
                           (if _%pkg151206%_
                               (values _%pre151204%_
                                       _%ns151205%_
                                       _%pkg151206%_)
                               (gx#core-read-module-package
                                _%path151199%_
                                _%pre151204%_
                                _%ns151205%_))))
                      (begin
                        (let ((_g152592_
                               (if (##values? _g152591_)
                                   (##values-length _g152591_)
                                   1)))
                          (if (not (##fx= _g152592_ 3))
                              (error "Context expects 3 values" _g152592_)))
                        (let ((_%pre151235%_ (##values-ref _g152591_ 0))
                              (_%ns151236%_ (##values-ref _g152591_ 1))
                              (_%pkg151237%_ (##values-ref _g152591_ 2)))
                          (let* ((_%prelude151243%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre151235%_)
                                      (gx#syntax-local-e__0 _%pre151235%_)
                                      (if (gx#core-library-module-path?
                                           _%pre151235%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre151235%_)
                                          (if (gx#stx-string? _%pre151235%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre151235%_
                                               _%path151199%_)
                                              (gx#stx-e _%pre151235%_)))))
                                 (_%path-id151245%_
                                  (gx#core-module-path->namespace
                                   _%path151199%_))
                                 (_%pkg-id151247%_
                                  (if _%pkg151237%_
                                      (##string-append
                                       _%pkg151237%_
                                       '"/"
                                       _%path-id151245%_)
                                      _%path-id151245%_))
                                 (_%module-id151249%_
                                  (##string->symbol _%pkg-id151247%_))
                                 (_%module-ns151254%_
                                  (if (eq? _%ns151236%_ '#!void)
                                      '#f
                                      (let ((_%$e151251%_ _%ns151236%_))
                                        (if _%$e151251%_
                                            _%$e151251%_
                                            _%pkg-id151247%_)))))
                            (values _%prelude151243%_
                                    _%module-id151249%_
                                    _%module-ns151254%_
                                    _%body151203%_)))))))
                 (_%E151216151289%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151207151231%_)
                        (let ((_%e151224151261%_
                               (gx#syntax-e _%e151207151231%_)))
                          (let ((_%hd151225151264%_ (##car _%e151224151261%_))
                                (_%tl151226151266%_ (##cdr _%e151224151261%_)))
                            (if (eq? (gx#stx-e _%hd151225151264%_) 'package:)
                                (if (gx#stx-pair? _%tl151226151266%_)
                                    (let ((_%e151227151269%_
                                           (gx#syntax-e _%tl151226151266%_)))
                                      (let ((_%hd151228151272%_
                                             (##car _%e151227151269%_))
                                            (_%tl151229151274%_
                                             (##cdr _%e151227151269%_)))
                                        (let* ((_%pkg151277%_
                                                _%hd151228151272%_)
                                               (_%rest151279%_
                                                _%tl151229151274%_)
                                               (_%pkg151287%_
                                                (if (gx#identifier?
                                                     _%pkg151277%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg151277%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg151277%_)
                                                            (gx#stx-false?
                                                             _%pkg151277%_))
                                                        (gx#stx-e
                                                         _%pkg151277%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg151277%_)))))
                                          (_%lp151201%_
                                           _%rest151279%_
                                           _%pre151204%_
                                           _%ns151205%_
                                           _%pkg151287%_))))
                                    (_%E151223151257%_))
                                (_%E151223151257%_))))
                        (_%E151223151257%_))))
                 (_%E151209151319%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151207151231%_)
                        (let ((_%e151217151293%_
                               (gx#syntax-e _%e151207151231%_)))
                          (let ((_%hd151218151296%_ (##car _%e151217151293%_))
                                (_%tl151219151298%_ (##cdr _%e151217151293%_)))
                            (if (eq? (gx#stx-e _%hd151218151296%_) 'namespace:)
                                (if (gx#stx-pair? _%tl151219151298%_)
                                    (let ((_%e151220151301%_
                                           (gx#syntax-e _%tl151219151298%_)))
                                      (let ((_%hd151221151304%_
                                             (##car _%e151220151301%_))
                                            (_%tl151222151306%_
                                             (##cdr _%e151220151301%_)))
                                        (let* ((_%ns151309%_
                                                _%hd151221151304%_)
                                               (_%rest151311%_
                                                _%tl151222151306%_)
                                               (_%ns151317%_
                                                (if (gx#identifier?
                                                     _%ns151309%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns151309%_))
                                                    (if (gx#stx-string?
                                                         _%ns151309%_)
                                                        (gx#stx-e _%ns151309%_)
                                                        (if (gx#stx-false?
                                                             _%ns151309%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns151309%_))))))
                                          (_%lp151201%_
                                           _%rest151311%_
                                           _%pre151204%_
                                           _%ns151317%_
                                           _%pkg151206%_))))
                                    (_%E151216151289%_))
                                (_%E151216151289%_))))
                        (_%E151216151289%_))))
                 (_%E151208151343%_
                  (lambda ()
                    (if (gx#stx-pair? _%e151207151231%_)
                        (let ((_%e151210151323%_
                               (gx#syntax-e _%e151207151231%_)))
                          (let ((_%hd151211151326%_ (##car _%e151210151323%_))
                                (_%tl151212151328%_ (##cdr _%e151210151323%_)))
                            (if (eq? (gx#stx-e _%hd151211151326%_) 'prelude:)
                                (if (gx#stx-pair? _%tl151212151328%_)
                                    (let ((_%e151213151331%_
                                           (gx#syntax-e _%tl151212151328%_)))
                                      (let ((_%hd151214151334%_
                                             (##car _%e151213151331%_))
                                            (_%tl151215151336%_
                                             (##cdr _%e151213151331%_)))
                                        (let* ((_%prelude151339%_
                                                _%hd151214151334%_)
                                               (_%rest151341%_
                                                _%tl151215151336%_))
                                          (_%lp151201%_
                                           _%rest151341%_
                                           _%prelude151339%_
                                           _%ns151205%_
                                           _%pkg151206%_))))
                                    (_%E151209151319%_))
                                (_%E151209151319%_))))
                        (_%E151209151319%_)))))
            (_%E151208151343%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path151020%_)
        (letrec ((_%default-read-module-body151022%_
                  (lambda (_%inp151191%_)
                    (let _%lp151193%_ ((_%body151195%_ '()))
                      (let ((_%next151197%_ (read-syntax__% _%inp151191%_)))
                        (if (eof-object? _%next151197%_)
                            (reverse _%body151195%_)
                            (_%lp151193%_
                             (cons _%next151197%_ _%body151195%_)))))))
                 (_%read-body151023%_
                  (lambda (_%inp151108%_
                           _%pre151109%_
                           _%ns151110%_
                           _%pkg151111%_
                           _%args151112%_)
                    (let ((_g152593_
                           (if _%pkg151111%_
                               (values _%pre151109%_
                                       _%ns151110%_
                                       _%pkg151111%_)
                               (gx#core-read-module-package
                                _%path151020%_
                                _%pre151109%_
                                _%ns151110%_))))
                      (begin
                        (let ((_g152594_
                               (if (##values? _g152593_)
                                   (##values-length _g152593_)
                                   1)))
                          (if (not (##fx= _g152594_ 3))
                              (error "Context expects 3 values" _g152594_)))
                        (let ((_%pre151114%_ (##values-ref _g152593_ 0))
                              (_%ns151115%_ (##values-ref _g152593_ 1))
                              (_%pkg151116%_ (##values-ref _g152593_ 2)))
                          (let* ((_%prelude151118%_
                                  (gx#import-module__0 _%pre151114%_))
                                 (_%read-module-body151173%_
                                  (let ((_%$e151164%_
                                         (__find (lambda (_%e151119151121%_)
                                                   (let* ((_%e151119151123151133%_
                                                           _%e151119151121%_)
                                                          (_%else151125151141%_
                                                           (lambda () '#f))
                                                          (_%K151127151145%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e151119151123151133%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e151128151148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e151119151123151133%_
                          '1
                          '#f
                          '#f))
                        (_%e151129151151%_
                         (##unchecked-structure-ref
                          _%e151119151123151133%_
                          '2
                          '#f
                          '#f))
                        (_%e151130151154%_
                         (##unchecked-structure-ref
                          _%e151119151123151133%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e151130151154%_ '1)
                       (let ((_%e151131151157%_
                              (##unchecked-structure-ref
                               _%e151119151123151133%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g151159151161%_)
                                (eq? _%g151159151161%_ 'read-module-body))
                              _%e151131151157%_)
                             (_%K151127151145%_)
                             (_%else151125151141%_)))
                       (_%else151125151141%_)))
                 (_%else151125151141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude151118%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e151164%_
                                        ((lambda (_%xport151167%_)
                                           (let ((_%proc151170%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport151167%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc151170%_)
                                                 _%proc151170%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path151020%_
                                                  _%pre151114%_
                                                  _%proc151170%_))))
                                         _%$e151164%_)
                                        _%default-read-module-body151022%_)))
                                 (_%path-id151175%_
                                  (gx#core-module-path->namespace
                                   _%path151020%_))
                                 (_%pkg-id151177%_
                                  (if _%pkg151116%_
                                      (##string-append
                                       _%pkg151116%_
                                       '"/"
                                       _%path-id151175%_)
                                      _%path-id151175%_))
                                 (_%module-id151179%_
                                  (##string->symbol _%pkg-id151177%_))
                                 (_%module-ns151184%_
                                  (let ((_%$e151181%_ _%ns151115%_))
                                    (if _%$e151181%_
                                        _%$e151181%_
                                        _%pkg-id151177%_)))
                                 (_%body151188%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body151173%_
                                         _%inp151108%_))
                                      gx#current-module-reader-args
                                      _%args151112%_))
                                   gx#current-module-reader-path
                                   _%path151020%_)))
                            (values _%prelude151118%_
                                    _%module-id151179%_
                                    _%module-ns151184%_
                                    _%body151188%_)))))))
                 (_%string-e151024%_
                  (lambda (_%obj151102%_ _%what151103%_)
                    (if (string? _%obj151102%_)
                        _%obj151102%_
                        (if (symbol? _%obj151102%_)
                            (##symbol->string _%obj151102%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what151103%_)
                             _%path151020%_
                             _%obj151102%_)))))
                 (_%read-lang-args151025%_
                  (lambda (_%inp151057%_ _%args151058%_)
                    (let* ((_%args151059151067%_ _%args151058%_)
                           (_%else151061151075%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path151020%_)))
                           (_%K151063151090%_
                            (lambda (_%args151078%_ _%prelude151079%_)
                              (let* ((_%pkg151081%_
                                      (pgetq__0 'package: _%args151078%_))
                                     (_%pkg151083%_
                                      (if _%pkg151081%_
                                          (_%string-e151024%_
                                           _%pkg151081%_
                                           '"package")
                                          '#f))
                                     (_%ns151085%_
                                      (pgetq__0 'namespace: _%args151078%_))
                                     (_%ns151087%_
                                      (if _%ns151085%_
                                          (_%string-e151024%_
                                           _%ns151085%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body151023%_
                                 _%inp151057%_
                                 _%prelude151079%_
                                 _%ns151087%_
                                 _%pkg151083%_
                                 _%args151078%_)))))
                      (if (pair? _%args151059151067%_)
                          (let ((_%hd151064151093%_
                                 (##car _%args151059151067%_))
                                (_%tl151065151095%_
                                 (##cdr _%args151059151067%_)))
                            (let* ((_%prelude151098%_ _%hd151064151093%_)
                                   (_%args151100%_ _%tl151065151095%_))
                              (_%K151063151090%_
                               _%args151100%_
                               _%prelude151098%_)))
                          (_%else151061151075%_)))))
                 (_%read-lang151026%_
                  (lambda (_%inp151031%_)
                    (let* ((_%head151033%_ (read-line _%inp151031%_))
                           (_%$e151035%_
                            (string-index__0 _%head151033%_ '#\space)))
                      (if _%$e151035%_
                          ((lambda (_%ix151038%_)
                             (let ((_%lang151040%_
                                    (substring
                                     _%head151033%_
                                     '0
                                     _%ix151038%_)))
                               (if (equal? _%lang151040%_ '"#lang")
                                   (let* ((_%rest151042%_
                                           (substring
                                            _%head151033%_
                                            (##fx+ _%ix151038%_ '1)
                                            (string-length _%head151033%_)))
                                          (_%args151053%_
                                           (__with-catch
                                            (lambda (_%g151043151045%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path151020%_
                                               _%g151043151045%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest151042%_
                                               (lambda (_%g151048151050%_)
                                                 (read-all
                                                  _%g151048151050%_
                                                  read)))))))
                                     (_%read-lang-args151025%_
                                      _%inp151031%_
                                      _%args151053%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path151020%_))))
                           _%$e151035%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path151020%_)))))
                 (_%read-e151027%_
                  (lambda (_%inp151029%_)
                    (if (eq? (peek-char _%inp151029%_) '#\#)
                        (_%read-lang151026%_ _%inp151029%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path151020%_)))))
          (gx#call-with-input-source-file _%path151020%_ _%read-e151027%_))))
    (define gx#core-read-module-package
      (lambda (_%path150968%_ _%pre150969%_ _%ns150970%_)
        (letrec ((_%string-e150972%_
                  (lambda (_%e151015%_)
                    (if (symbol? _%e151015%_)
                        (##symbol->string _%e151015%_)
                        (if (string? _%e151015%_)
                            _%e151015%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e151015%_))))))
          (let _%lp150974%_ ((_%dir150976%_ (path-directory _%path150968%_))
                             (_%pkg-path150977%_ '()))
            (let ((_%gerbil.pkg150979%_
                   (path-expand '"gerbil.pkg" _%dir150976%_)))
              (if (##file-exists? _%gerbil.pkg150979%_)
                  (let ((_%plist150981%_
                         (gx#core-library-package-plist__% _%dir150976%_ '#t)))
                    (if (null? _%plist150981%_)
                        (let ((_%pkg150984%_
                               (if (null? _%pkg-path150977%_)
                                   '#f
                                   (string-join _%pkg-path150977%_ '"/"))))
                          (values _%pre150969%_ _%ns150970%_ _%pkg150984%_))
                        (if (list? _%plist150981%_)
                            (let* ((_%root150987%_
                                    (pgetq__0 'package: _%plist150981%_))
                                   (_%pkg150991%_
                                    (let ((_%pkg-path150989%_
                                           (if _%root150987%_
                                               (cons (_%string-e150972%_
                                                      _%root150987%_)
                                                     _%pkg-path150977%_)
                                               _%pkg-path150977%_)))
                                      (if (null? _%pkg-path150989%_)
                                          '#f
                                          (string-join
                                           _%pkg-path150989%_
                                           '"/"))))
                                   (_%ns150998%_
                                    (let ((_%ns150996%_
                                           (let ((_%$e150993%_ _%ns150970%_))
                                             (if _%$e150993%_
                                                 _%$e150993%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist150981%_)))))
                                      (if _%ns150996%_
                                          (_%string-e150972%_ _%ns150996%_)
                                          '#f)))
                                   (_%pre151003%_
                                    (let ((_%$e151000%_ _%pre150969%_))
                                      (if _%$e151000%_
                                          _%$e151000%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist150981%_)))))
                              (values _%pre151003%_
                                      _%ns150998%_
                                      _%pkg150991%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist150981%_))))
                  (let ((_%dir*151007%_
                         (path-strip-trailing-directory-separator
                          _%dir150976%_)))
                    (if (or (__string-empty? _%dir*151007%_)
                            (equal? _%dir150976%_ _%dir*151007%_))
                        (values _%pre150969%_ _%ns150970%_ '#f)
                        (let ((_%xpath151012%_
                               (path-strip-directory _%dir*151007%_))
                              (_%xdir151013%_ (path-directory _%dir*151007%_)))
                          (_%lp150974%_
                           _%xdir151013%_
                           (cons _%xpath151012%_ _%pkg-path150977%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path150966%_)
        (path-strip-extension (path-strip-directory _%path150966%_))))
    (define gx#core-module-path->id
      (lambda (_%path150964%_)
        (##string->symbol (gx#core-module-path->namespace _%path150964%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path150943%_ _%rel150944%_)
        (let* ((_%path150946%_ (gx#stx-e _%stx-path150943%_))
               (_%path150948%_
                (if (__string-empty? (path-extension _%path150946%_))
                    (##string-append _%path150946%_ '".ss")
                    _%path150946%_)))
          (gx#core-resolve-path__%
           _%path150948%_
           (let ((_%$e150951%_ (gx#stx-source _%stx-path150943%_)))
             (if _%$e150951%_ _%$e150951%_ _%rel150944%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path150957%_)
        (let ((_%rel150959%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path150957%_ _%rel150959%_))))
    (define gx#core-resolve-module-path
      (lambda _g152595_
        (let ((_g152596_ (##length _g152595_)))
          (cond ((##fx= _g152596_ 1)
                 (apply gx#core-resolve-module-path__0 _g152595_))
                ((##fx= _g152596_ 2)
                 (apply gx#core-resolve-module-path__% _g152595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g152595_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath150828%_)
        (let* ((_%spath150830%_ (symbol->string (gx#stx-e _%libpath150828%_)))
               (_%spath150832%_
                (substring
                 _%spath150830%_
                 '1
                 (##string-length _%spath150830%_)))
               (_%ext150834%_ (path-extension _%spath150832%_))
               (_%ssi150836%_
                (if (__string-empty? _%ext150834%_)
                    (##string-append _%spath150832%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath150832%_)
                     '".ssi")))
               (_%srcs150840%_
                (if (__string-empty? _%ext150834%_)
                    (##map (lambda (_%ext150838%_)
                             (string-append _%spath150832%_ _%ext150838%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath150832%_ '()))))
          (let _%lp150843%_ ((_%rest150845%_ (load-path)))
            (let* ((_%rest150846150855%_ _%rest150845%_)
                   (_%E150849150859%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest150846150855%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K150851150930%_
                     (lambda (_%rest150870%_ _%dir150871%_)
                       (letrec ((_%resolve150873%_
                                 (lambda (_%ssi150886%_ _%srcs150887%_)
                                   (let ((_%compiled-path150889%_
                                          (path-expand
                                           _%ssi150886%_
                                           _%dir150871%_)))
                                     (if (##file-exists?
                                          _%compiled-path150889%_)
                                         (path-normalize
                                          _%compiled-path150889%_)
                                         (let _%lpr150891%_ ((_%rest-src150893%_
                                                              _%srcs150887%_))
                                           (let* ((_%rest-src150894150902%_
                                                   _%rest-src150893%_)
                                                  (_%else150896150910%_
                                                   (lambda ()
                                                     (_%lp150843%_
                                                      _%rest150870%_)))
                                                  (_%K150898150918%_
                                                   (lambda (_%rest-src150913%_
                                                            _%src150914%_)
                                                     (let ((_%src-path150916%_
                                                            (path-expand
                                                             _%src150914%_
                                                             _%dir150871%_)))
                                                       (if (##file-exists?
                                                            _%src-path150916%_)
                                                           (path-normalize
                                                            _%src-path150916%_)
                                                           (_%lpr150891%_
                                                            _%rest-src150913%_))))))
                                             (if (pair? _%rest-src150894150902%_)
                                                 (let ((_%hd150899150921%_
                                                        (##car _%rest-src150894150902%_))
                                                       (_%tl150900150923%_
                                                        (##cdr _%rest-src150894150902%_)))
                                                   (let* ((_%src150926%_
                                                           _%hd150899150921%_)
                                                          (_%rest-src150928%_
                                                           _%tl150900150923%_))
                                                     (_%K150898150918%_
                                                      _%rest-src150928%_
                                                      _%src150926%_)))
                                                 (_%else150896150910%_)))))))))
                         (let ((_%$e150875%_
                                (gx#core-library-package-path-prefix
                                 _%dir150871%_)))
                           (if _%$e150875%_
                               ((lambda (_%prefix150878%_)
                                  (if (string-prefix?
                                       _%prefix150878%_
                                       _%spath150832%_)
                                      (let ((_%ssi150882%_
                                             (substring
                                              _%ssi150836%_
                                              (string-length _%prefix150878%_)
                                              (##string-length _%ssi150836%_)))
                                            (_%srcs150883%_
                                             (##map (lambda (_%src150880%_)
                                                      (substring
                                                       _%src150880%_
                                                       (string-length
                                                        _%prefix150878%_)
                                                       (string-length
                                                        _%src150880%_)))
                                                    _%srcs150840%_)))
                                        (_%resolve150873%_
                                         _%ssi150882%_
                                         _%srcs150883%_))
                                      (_%lp150843%_ _%rest150870%_)))
                                _%$e150875%_)
                               (_%resolve150873%_
                                _%ssi150836%_
                                _%srcs150840%_))))))
                    (_%K150850150864%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath150828%_))))
                (let ((_%try-match150848150867%_
                       (lambda ()
                         (if (null? _%rest150846150855%_)
                             (_%K150850150864%_)
                             (_%E150849150859%_)))))
                  (if (pair? _%rest150846150855%_)
                      (let ((_%tl150853150935%_ (##cdr _%rest150846150855%_))
                            (_%hd150852150933%_ (##car _%rest150846150855%_)))
                        (let ((_%dir150938%_ _%hd150852150933%_)
                              (_%rest150940%_ _%tl150853150935%_))
                          (_%K150851150930%_ _%rest150940%_ _%dir150938%_)))
                      (_%try-match150848150867%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath150796%_)
        (letrec ((_%resolve150798%_
                  (lambda (_%path150819%_ _%base150820%_)
                    (let ((_%$e150822%_
                           (string-rindex__0 _%base150820%_ '#\/)))
                      (if _%$e150822%_
                          ((lambda (_%idx150825%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base150820%_ '0 _%idx150825%_)
                                '"/"
                                _%path150819%_))))
                           _%$e150822%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path150819%_))))))))
          (let ((_%spath150800%_ (symbol->string (gx#stx-e _%modpath150796%_)))
                (_%mod150801%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod150801%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath150796%_))
            (let ((_%mpath150803%_
                   (symbol->string
                    (##structure-ref
                     _%mod150801%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp150805%_ ((_%spath150807%_ _%spath150800%_)
                                 (_%mpath150808%_ _%mpath150803%_))
                (if (string-prefix? '"../" _%spath150807%_)
                    (let ((_%$e150811%_
                           (string-rindex__0 _%mpath150808%_ '#\/)))
                      (if _%$e150811%_
                          ((lambda (_%idx150814%_)
                             (_%lp150805%_
                              (substring
                               _%spath150807%_
                               '3
                               (string-length _%spath150807%_))
                              (substring _%mpath150808%_ '0 _%idx150814%_)))
                           _%$e150811%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath150796%_)))
                    (if (string-prefix? '"./" _%spath150807%_)
                        (_%lp150805%_
                         (substring
                          _%spath150807%_
                          '2
                          (string-length _%spath150807%_))
                         _%mpath150808%_)
                        (_%resolve150798%_
                         _%spath150807%_
                         _%mpath150808%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir150788%_)
        (let ((_%$e150790%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir150788%_))))
          (if _%$e150790%_
              ((lambda (_%pkg150793%_)
                 (##string-append (symbol->string _%pkg150793%_) '"/"))
               _%$e150790%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir150758%_ _%exists?150759%_)
        (let ((_%$e150761%_ (__hash-get gx#__module-pkg-cache _%dir150758%_)))
          (if _%$e150761%_
              _%$e150761%_
              (let* ((_%gerbil.pkg150765%_
                      (path-expand '"gerbil.pkg" _%dir150758%_))
                     (_%plist150775%_
                      (if (or _%exists?150759%_
                              (##file-exists? _%gerbil.pkg150765%_))
                          (let ((_%e150770%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg150765%_
                                  read)))
                            (if (eof-object? _%e150770%_)
                                '()
                                (if (list? _%e150770%_)
                                    _%e150770%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg150765%_
                                     _%e150770%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir150758%_
                 _%plist150775%_)
                _%plist150775%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir150781%_)
        (let ((_%exists?150783%_ '#f))
          (gx#core-library-package-plist__% _%dir150781%_ _%exists?150783%_))))
    (define gx#core-library-package-plist
      (lambda _g152597_
        (let ((_g152598_ (##length _g152597_)))
          (cond ((##fx= _g152598_ 1)
                 (apply gx#core-library-package-plist__0 _g152597_))
                ((##fx= _g152598_ 2)
                 (apply gx#core-library-package-plist__% _g152597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g152597_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx150755%_)
        (gx#core-special-module-path? _%stx150755%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx150753%_)
        (gx#core-special-module-path? _%stx150753%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx150748%_ _%char150749%_)
        (if (gx#identifier? _%stx150748%_)
            (if (interned-symbol? (gx#stx-e _%stx150748%_))
                (let ((_%str150751%_
                       (symbol->string (gx#stx-e _%stx150748%_))))
                  (if (##fx> (##string-length _%str150751%_) '1)
                      (eq? (string-ref _%str150751%_ '0) _%char150749%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx150742%_)
        (gx#core-bound-identifier?__%
         _%stx150742%_
         (lambda (_%g150743150745%_)
           (gx#expander-binding?__% _%g150743150745%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx150736%_)
        (gx#core-bound-identifier?__%
         _%stx150736%_
         (lambda (_%g150737150739%_)
           (gx#expander-binding?__% _%g150737150739%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx150723%_)
        (letrec ((_%module-prelude?150725%_
                  (lambda (_%e150731%_)
                    (let ((_%$e150733%_
                           (##structure-instance-of?
                            _%e150731%_
                            'gx#module-context::t)))
                      (if _%$e150733%_
                          _%$e150733%_
                          (##structure-instance-of?
                           _%e150731%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx150723%_
           (lambda (_%g150726150728%_)
             (gx#expander-binding?__%
              _%g150726150728%_
              _%module-prelude?150725%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in150654%_ _%ctx150655%_ _%force-weak?150656%_)
        (let* ((_%in150657150666%_ _%in150654%_)
               (_%E150659150669%_
                (lambda ()
                  (error '"No clause matching"
                         _%in150657150666%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K150660150682%_
                (lambda (_%weak?150672%_
                         _%phi150673%_
                         _%key150674%_
                         _%source150675%_)
                  (gx#core-bind!__%
                   _%key150674%_
                   (let* ((_%e150677%_
                           (gx#core-resolve-module-export _%source150675%_))
                          (__obj152579
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
                      __obj152579
                      (##unchecked-structure-ref _%e150677%_ '1 '#f '#f)
                      _%key150674%_
                      _%phi150673%_
                      _%e150677%_
                      (##unchecked-structure-ref _%source150675%_ '1 '#f '#f)
                      (let ((_%$e150679%_ _%force-weak?150656%_))
                        (if _%$e150679%_ _%$e150679%_ _%weak?150672%_)))
                     __obj152579)
                   gx#core-context-rebind?
                   _%phi150673%_
                   _%ctx150655%_))))
          (if (##structure-direct-instance-of?
               _%in150657150666%_
               'gx#module-import::t)
              (let* ((_%e150661150685%_
                      (##unchecked-structure-ref
                       _%in150657150666%_
                       '1
                       '#f
                       '#f))
                     (_%source150688%_ _%e150661150685%_)
                     (_%e150662150690%_
                      (##unchecked-structure-ref
                       _%in150657150666%_
                       '2
                       '#f
                       '#f))
                     (_%key150693%_ _%e150662150690%_)
                     (_%e150663150695%_
                      (##unchecked-structure-ref
                       _%in150657150666%_
                       '3
                       '#f
                       '#f))
                     (_%phi150698%_ _%e150663150695%_)
                     (_%e150664150700%_
                      (##unchecked-structure-ref
                       _%in150657150666%_
                       '4
                       '#f
                       '#f))
                     (_%weak?150703%_ _%e150664150700%_))
                (_%K150660150682%_
                 _%weak?150703%_
                 _%phi150698%_
                 _%key150693%_
                 _%source150688%_))
              (_%E150659150669%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in150708%_)
        (let* ((_%ctx150710%_ (gx#current-expander-context))
               (_%force-weak?150712%_ '#f))
          (gx#core-bind-import!__%
           _%in150708%_
           _%ctx150710%_
           _%force-weak?150712%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in150714%_ _%ctx150715%_)
        (let ((_%force-weak?150717%_ '#f))
          (gx#core-bind-import!__%
           _%in150714%_
           _%ctx150715%_
           _%force-weak?150717%_))))
    (define gx#core-bind-import!
      (lambda _g152599_
        (let ((_g152600_ (##length _g152599_)))
          (cond ((##fx= _g152600_ 1) (apply gx#core-bind-import!__0 _g152599_))
                ((##fx= _g152600_ 2) (apply gx#core-bind-import!__1 _g152599_))
                ((##fx= _g152600_ 3) (apply gx#core-bind-import!__% _g152599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g152599_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in150640%_ _%ctx150641%_)
        (gx#core-bind-import!__% _%in150640%_ _%ctx150641%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in150646%_)
        (let ((_%ctx150648%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in150646%_ _%ctx150648%_))))
    (define gx#core-bind-weak-import!
      (lambda _g152601_
        (let ((_g152602_ (##length _g152601_)))
          (cond ((##fx= _g152602_ 1)
                 (apply gx#core-bind-weak-import!__0 _g152601_))
                ((##fx= _g152602_ 2)
                 (apply gx#core-bind-weak-import!__% _g152601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g152601_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out150533%_)
        (letrec ((_%subst150535%_
                  (lambda (_%key150580%_)
                    (let* ((_%key150581150589%_ _%key150580%_)
                           (_%else150583150597%_ (lambda () _%key150580%_))
                           (_%K150585150627%_
                            (lambda (_%mark150600%_ _%id150601%_)
                              (let* ((_%mark150602150608%_ _%mark150600%_)
                                     (_%E150604150611%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark150602150608%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K150605150619%_
                                      (lambda (_%subst150614%_)
                                        (let ((_%$e150616%_
                                               (if _%subst150614%_
                                                   (hash-get
                                                    _%subst150614%_
                                                    _%id150601%_)
                                                   '#f)))
                                          (if _%$e150616%_
                                              _%$e150616%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key150580%_))))))
                                (if (##structure-instance-of?
                                     _%mark150602150608%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e150606150622%_
                                            (##unchecked-structure-ref
                                             _%mark150602150608%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst150625%_ _%e150606150622%_))
                                      (_%K150605150619%_ _%subst150625%_))
                                    (_%E150604150611%_))))))
                      (if (pair? _%key150581150589%_)
                          (let ((_%hd150586150630%_
                                 (##car _%key150581150589%_))
                                (_%tl150587150632%_
                                 (##cdr _%key150581150589%_)))
                            (let* ((_%id150635%_ _%hd150586150630%_)
                                   (_%mark150637%_ _%tl150587150632%_))
                              (_%K150585150627%_ _%mark150637%_ _%id150635%_)))
                          (_%else150583150597%_))))))
          (let* ((_%out150536150546%_ _%out150533%_)
                 (_%E150538150549%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out150536150546%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K150539150556%_
                  (lambda (_%phi150552%_ _%key150553%_ _%ctx150554%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx150554%_ _%phi150552%_)
                     (_%subst150535%_ _%key150553%_)))))
            (if (##structure-direct-instance-of?
                 _%out150536150546%_
                 'gx#module-export::t)
                (let* ((_%e150540150559%_
                        (##unchecked-structure-ref
                         _%out150536150546%_
                         '1
                         '#f
                         '#f))
                       (_%ctx150562%_ _%e150540150559%_)
                       (_%e150541150564%_
                        (##unchecked-structure-ref
                         _%out150536150546%_
                         '2
                         '#f
                         '#f))
                       (_%key150567%_ _%e150541150564%_)
                       (_%e150542150569%_
                        (##unchecked-structure-ref
                         _%out150536150546%_
                         '3
                         '#f
                         '#f))
                       (_%phi150572%_ _%e150542150569%_)
                       (_%e150543150574%_
                        (##unchecked-structure-ref
                         _%out150536150546%_
                         '4
                         '#f
                         '#f))
                       (_%e150544150577%_
                        (##unchecked-structure-ref
                         _%out150536150546%_
                         '5
                         '#f
                         '#f)))
                  (_%K150539150556%_
                   _%phi150572%_
                   _%key150567%_
                   _%ctx150562%_))
                (_%E150538150549%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out150459%_ _%rename150460%_ _%dphi150461%_)
        (let* ((_%out150462150472%_ _%out150459%_)
               (_%E150464150475%_
                (lambda ()
                  (error '"No clause matching"
                         _%out150462150472%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K150465150487%_
                (lambda (_%weak?150478%_
                         _%name150479%_
                         _%phi150480%_
                         _%key150481%_
                         _%ctx150482%_)
                  (##structure
                   gx#module-import::t
                   _%out150459%_
                   (let ((_%$e150484%_ _%rename150460%_))
                     (if _%$e150484%_ _%$e150484%_ _%name150479%_))
                   (fx+ _%phi150480%_ _%dphi150461%_)
                   _%weak?150478%_))))
          (if (##structure-direct-instance-of?
               _%out150462150472%_
               'gx#module-export::t)
              (let* ((_%e150466150490%_
                      (##unchecked-structure-ref
                       _%out150462150472%_
                       '1
                       '#f
                       '#f))
                     (_%ctx150493%_ _%e150466150490%_)
                     (_%e150467150495%_
                      (##unchecked-structure-ref
                       _%out150462150472%_
                       '2
                       '#f
                       '#f))
                     (_%key150498%_ _%e150467150495%_)
                     (_%e150468150500%_
                      (##unchecked-structure-ref
                       _%out150462150472%_
                       '3
                       '#f
                       '#f))
                     (_%phi150503%_ _%e150468150500%_)
                     (_%e150469150505%_
                      (##unchecked-structure-ref
                       _%out150462150472%_
                       '4
                       '#f
                       '#f))
                     (_%name150508%_ _%e150469150505%_)
                     (_%e150470150510%_
                      (##unchecked-structure-ref
                       _%out150462150472%_
                       '5
                       '#f
                       '#f))
                     (_%weak?150513%_ _%e150470150510%_))
                (_%K150465150487%_
                 _%weak?150513%_
                 _%name150508%_
                 _%phi150503%_
                 _%key150498%_
                 _%ctx150493%_))
              (_%E150464150475%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out150518%_)
        (let* ((_%rename150520%_ '#f) (_%dphi150522%_ '0))
          (gx#core-module-export->import__%
           _%out150518%_
           _%rename150520%_
           _%dphi150522%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out150524%_ _%rename150525%_)
        (let ((_%dphi150527%_ '0))
          (gx#core-module-export->import__%
           _%out150524%_
           _%rename150525%_
           _%dphi150527%_))))
    (define gx#core-module-export->import
      (lambda _g152603_
        (let ((_g152604_ (##length _g152603_)))
          (cond ((##fx= _g152604_ 1)
                 (apply gx#core-module-export->import__0 _g152603_))
                ((##fx= _g152604_ 2)
                 (apply gx#core-module-export->import__1 _g152603_))
                ((##fx= _g152604_ 3)
                 (apply gx#core-module-export->import__% _g152603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g152603_))))))
    (define gx#core-expand-module%
      (lambda (_%stx150358%_)
        (letrec ((_%make-context150360%_
                  (lambda (_%id150437%_)
                    (let* ((_%super150439%_ (gx#current-expander-context))
                           (_%bind-id150441%_ (gx#stx-e _%id150437%_))
                           (_%mod-id150443%_
                            (if (##structure-instance-of?
                                 _%super150439%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super150439%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id150441%_)
                                _%bind-id150441%_))
                           (_%ns150445%_ (symbol->string _%mod-id150443%_))
                           (_%path150455%_
                            (if (##structure-instance-of?
                                 _%super150439%_
                                 'gx#module-context::t)
                                (let ((_%path150447%_
                                       (##unchecked-structure-ref
                                        _%super150439%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path150447%_)
                                          (null? _%path150447%_))
                                      (cons _%bind-id150441%_ _%path150447%_)
                                      (if (not _%path150447%_)
                                          _%bind-id150441%_
                                          (cons _%bind-id150441%_
                                                (cons _%path150447%_ '())))))
                                _%bind-id150441%_))
                           (__obj152580
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
                       __obj152580
                       _%mod-id150443%_
                       _%super150439%_
                       _%ns150445%_
                       _%path150455%_)
                      __obj152580)))
                 (_%valid-module-id?150361%_
                  (lambda (_%id150412%_)
                    (let* ((_%str150414%_ (symbol->string _%id150412%_))
                           (_%len150416%_ (##string-length _%str150414%_)))
                      (if (##fx>= _%len150416%_ '1)
                          (let _%loop150419%_ ((_%index150421%_
                                                (##fx- (##string-length
                                                        _%str150414%_)
                                                       '1)))
                            (if (##fx>= _%index150421%_ '0)
                                (let ((_%c150423%_
                                       (string-ref
                                        _%str150414%_
                                        _%index150421%_)))
                                  (if (or (and (##char>=? _%c150423%_ '#\a)
                                               (##char<=? _%c150423%_ '#\z))
                                          (and (##char>=? _%c150423%_ '#\A)
                                               (##char<=? _%c150423%_ '#\Z))
                                          (and (##char>=? _%c150423%_ '#\0)
                                               (##char<=? _%c150423%_ '#\9))
                                          (##char=? _%c150423%_ '#\_)
                                          (##char=? _%c150423%_ '#\-))
                                      (_%loop150419%_
                                       (##fx- _%index150421%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e150362150372%_ _%stx150358%_)
                 (_%E150364150376%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e150362150372%_)))
                 (_%E150363150408%_
                  (lambda ()
                    (if (gx#stx-pair? _%e150362150372%_)
                        (let ((_%e150365150380%_
                               (gx#syntax-e _%e150362150372%_)))
                          (let ((_%hd150366150383%_ (##car _%e150365150380%_))
                                (_%tl150367150385%_ (##cdr _%e150365150380%_)))
                            (if (gx#stx-pair? _%tl150367150385%_)
                                (let ((_%e150368150388%_
                                       (gx#syntax-e _%tl150367150385%_)))
                                  (let ((_%hd150369150391%_
                                         (##car _%e150368150388%_))
                                        (_%tl150370150393%_
                                         (##cdr _%e150368150388%_)))
                                    (let* ((_%id150396%_ _%hd150369150391%_)
                                           (_%body150398%_ _%tl150370150393%_))
                                      (if (and (gx#identifier? _%id150396%_)
                                               (gx#stx-list? _%body150398%_))
                                          (if (_%valid-module-id?150361%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx150400%_
                                                      (_%make-context150360%_
                                                       _%id150396%_))
                                                     (_%body150402%_
                                                      (gx#core-expand-module-begin
                                                       _%body150398%_
                                                       _%ctx150400%_))
                                                     (_%body150404%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body150402%_)
                                                       (gx#stx-source
                                                        _%stx150358%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx150400%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body150404%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx150400%_
                                                 _%body150404%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id150396%_
                                                 _%ctx150400%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id150396%_)
                                                  _%body150404%_)
                                                 (gx#stx-source
                                                  _%stx150358%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx150358%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E150364150376%_)))))
                                (_%E150364150376%_))))
                        (_%E150364150376%_)))))
            (_%E150363150408%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body150323%_ _%ctx150324%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx150328%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body150323%_)))
                     (_%e150329150336%_ _%stx150328%_)
                     (_%E150331150340%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx150328%_)))
                     (_%E150330150354%_
                      (lambda ()
                        (if (gx#stx-pair? _%e150329150336%_)
                            (let ((_%e150332150344%_
                                   (gx#syntax-e _%e150329150336%_)))
                              (let ((_%hd150333150347%_
                                     (##car _%e150332150344%_))
                                    (_%tl150334150349%_
                                     (##cdr _%e150332150344%_)))
                                (if (and (gx#identifier? _%hd150333150347%_)
                                         (gx#core-identifier=?
                                          _%hd150333150347%_
                                          '%#begin-module))
                                    (let ((_%body150352%_ _%tl150334150349%_))
                                      (if (gx#sealed-syntax? _%stx150328%_)
                                          _%body150352%_
                                          (gx#core-expand-module-body
                                           _%body150352%_)))
                                    (_%E150331150340%_))))
                            (_%E150331150340%_)))))
                (_%E150330150354%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx150324%_)))
    (define gx#core-expand-module-body
      (lambda (_%body150119%_)
        (letrec ((_%expand-special150121%_
                  (lambda (_%hd150250%_ _%K150251%_ _%rest150252%_ _%r150253%_)
                    (let* ((_%e150254150271%_ _%hd150250%_)
                           (_%E150266150275%_
                            (lambda ()
                              (_%K150251%_
                               _%rest150252%_
                               (cons (gx#core-expand-top _%hd150250%_)
                                     _%r150253%_))))
                           (_%E150256150287%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150254150271%_)
                                  (let ((_%e150267150279%_
                                         (gx#syntax-e _%e150254150271%_)))
                                    (let ((_%hd150268150282%_
                                           (##car _%e150267150279%_))
                                          (_%tl150269150284%_
                                           (##cdr _%e150267150279%_)))
                                      (if (and (gx#identifier?
                                                _%hd150268150282%_)
                                               (gx#core-identifier=?
                                                _%hd150268150282%_
                                                '%#export))
                                          (_%K150251%_
                                           _%rest150252%_
                                           (cons _%hd150250%_ _%r150253%_))
                                          (_%E150266150275%_))))
                                  (_%E150266150275%_))))
                           (_%E150255150319%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150254150271%_)
                                  (let ((_%e150257150291%_
                                         (gx#syntax-e _%e150254150271%_)))
                                    (let ((_%hd150258150294%_
                                           (##car _%e150257150291%_))
                                          (_%tl150259150296%_
                                           (##cdr _%e150257150291%_)))
                                      (if (and (gx#identifier?
                                                _%hd150258150294%_)
                                               (gx#core-identifier=?
                                                _%hd150258150294%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl150259150296%_)
                                              (let ((_%e150260150299%_
                                                     (gx#syntax-e
                                                      _%tl150259150296%_)))
                                                (let ((_%hd150261150302%_
                                                       (##car _%e150260150299%_))
                                                      (_%tl150262150304%_
                                                       (##cdr _%e150260150299%_)))
                                                  (let ((_%hd-bind150307%_
                                                         _%hd150261150302%_))
                                                    (if (gx#stx-pair?
                                                         _%tl150262150304%_)
                                                        (let ((_%e150263150309%_
                                                               (gx#syntax-e
                                                                _%tl150262150304%_)))
                                                          (let ((_%hd150264150312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e150263150309%_))
                        (_%tl150265150314%_ (##cdr _%e150263150309%_)))
                    (let ((_%expr150317%_ _%hd150264150312%_))
                      (if (gx#stx-null? _%tl150265150314%_)
                          (if (gx#core-bind-values? _%hd-bind150307%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind150307%_)
                                (_%K150251%_
                                 _%rest150252%_
                                 (cons _%hd150250%_ _%r150253%_)))
                              (_%E150256150287%_))
                          (_%E150256150287%_)))))
                (_%E150256150287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150256150287%_))
                                          (_%E150256150287%_))))
                                  (_%E150256150287%_)))))
                      (_%E150255150319%_))))
                 (_%expand-body150122%_
                  (lambda (_%rbody150124%_)
                    (let _%lp150126%_ ((_%rest150128%_ _%rbody150124%_)
                                       (_%body150129%_ '()))
                      (let* ((_%rest150130150138%_ _%rest150128%_)
                             (_%else150132150146%_ (lambda () _%body150129%_))
                             (_%K150134150238%_
                              (lambda (_%rest150149%_ _%hd150150%_)
                                (let* ((_%e150151150172%_ _%hd150150%_)
                                       (_%E150167150176%_
                                        (lambda ()
                                          (_%lp150126%_
                                           _%rest150149%_
                                           (cons (gx#core-expand-expression
                                                  _%hd150150%_)
                                                 _%body150129%_))))
                                       (_%E150163150190%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150151150172%_)
                                              (let ((_%e150168150180%_
                                                     (gx#syntax-e
                                                      _%e150151150172%_)))
                                                (let ((_%hd150169150183%_
                                                       (##car _%e150168150180%_))
                                                      (_%tl150170150185%_
                                                       (##cdr _%e150168150180%_)))
                                                  (let ((_%form150188%_
                                                         _%hd150169150183%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form150188%_
                                                         gx#special-form-binding?)
                                                        (_%lp150126%_
                                                         _%rest150149%_
                                                         (cons _%hd150150%_
                                                               _%body150129%_))
                                                        (_%E150167150176%_)))))
                                              (_%E150167150176%_))))
                                       (_%E150153150202%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150151150172%_)
                                              (let ((_%e150164150194%_
                                                     (gx#syntax-e
                                                      _%e150151150172%_)))
                                                (let ((_%hd150165150197%_
                                                       (##car _%e150164150194%_))
                                                      (_%tl150166150199%_
                                                       (##cdr _%e150164150194%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150165150197%_)
                                                           (gx#core-identifier=?
                                                            _%hd150165150197%_
                                                            '%#export))
                                                      (_%lp150126%_
                                                       _%rest150149%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd150150%_)
                                                             _%body150129%_))
                                                      (_%E150163150190%_))))
                                              (_%E150163150190%_))))
                                       (_%E150152150234%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e150151150172%_)
                                              (let ((_%e150154150206%_
                                                     (gx#syntax-e
                                                      _%e150151150172%_)))
                                                (let ((_%hd150155150209%_
                                                       (##car _%e150154150206%_))
                                                      (_%tl150156150211%_
                                                       (##cdr _%e150154150206%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd150155150209%_)
                                                           (gx#core-identifier=?
                                                            _%hd150155150209%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl150156150211%_)
                                                          (let ((_%e150157150214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl150156150211%_)))
                    (let ((_%hd150158150217%_ (##car _%e150157150214%_))
                          (_%tl150159150219%_ (##cdr _%e150157150214%_)))
                      (let ((_%hd-bind150222%_ _%hd150158150217%_))
                        (if (gx#stx-pair? _%tl150159150219%_)
                            (let ((_%e150160150224%_
                                   (gx#syntax-e _%tl150159150219%_)))
                              (let ((_%hd150161150227%_
                                     (##car _%e150160150224%_))
                                    (_%tl150162150229%_
                                     (##cdr _%e150160150224%_)))
                                (let ((_%expr150232%_ _%hd150161150227%_))
                                  (if (gx#stx-null? _%tl150162150229%_)
                                      (_%lp150126%_
                                       _%rest150149%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind150222%_)
                                               (gx#core-expand-expression
                                                _%expr150232%_))
                                              (gx#stx-source _%hd150150%_))
                                             _%body150129%_))
                                      (_%E150153150202%_)))))
                            (_%E150153150202%_)))))
                  (_%E150153150202%_))
              (_%E150153150202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150153150202%_)))))
                                  (_%E150152150234%_)))))
                        (if (pair? _%rest150130150138%_)
                            (let ((_%hd150135150241%_
                                   (##car _%rest150130150138%_))
                                  (_%tl150136150243%_
                                   (##cdr _%rest150130150138%_)))
                              (let* ((_%hd150246%_ _%hd150135150241%_)
                                     (_%rest150248%_ _%tl150136150243%_))
                                (_%K150134150238%_
                                 _%rest150248%_
                                 _%hd150246%_)))
                            (_%else150132150146%_)))))))
          (_%expand-body150122%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body150119%_)
            _%expand-special150121%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx149960%_
               _%expanded?149961%_
               _%method149962%_
               _%current-phi149963%_
               _%expand1149964%_)
        (letrec ((_%K149966%_
                  (lambda (_%rest150086%_ _%r150087%_)
                    (let* ((_%e150088150095%_ _%rest150086%_)
                           (_%E150090150099%_ (lambda () _%r150087%_))
                           (_%E150089150115%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150088150095%_)
                                  (let ((_%e150091150103%_
                                         (gx#syntax-e _%e150088150095%_)))
                                    (let ((_%hd150092150106%_
                                           (##car _%e150091150103%_))
                                          (_%tl150093150108%_
                                           (##cdr _%e150091150103%_)))
                                      (let* ((_%hd150111%_ _%hd150092150106%_)
                                             (_%rest150113%_
                                              _%tl150093150108%_))
                                        (_%step149967%_
                                         _%hd150111%_
                                         _%rest150113%_
                                         _%r150087%_))))
                                  (_%E150090150099%_)))))
                      (_%E150089150115%_))))
                 (_%step149967%_
                  (lambda (_%hd150000%_ _%rest150001%_ _%r150002%_)
                    (let* ((_%e150003150021%_ _%hd150000%_)
                           (_%E150016150025%_
                            (lambda ()
                              (if (_%expanded?149961%_ (gx#stx-e _%hd150000%_))
                                  (_%K149966%_
                                   _%rest150001%_
                                   (cons (gx#stx-e _%hd150000%_) _%r150002%_))
                                  (_%expand1149964%_
                                   _%hd150000%_
                                   _%K149966%_
                                   _%rest150001%_
                                   _%r150002%_))))
                           (_%E150012150041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150003150021%_)
                                  (let ((_%e150017150029%_
                                         (gx#syntax-e _%e150003150021%_)))
                                    (let ((_%hd150018150032%_
                                           (##car _%e150017150029%_))
                                          (_%tl150019150034%_
                                           (##cdr _%e150017150029%_)))
                                      (let* ((_%macro150037%_
                                              _%hd150018150032%_)
                                             (_%body150039%_
                                              _%tl150019150034%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro150037%_
                                             gx#syntax-binding?)
                                            (_%K149966%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro150037%_)
                                                    _%hd150000%_
                                                    _%method149962%_)
                                                   _%rest150001%_)
                                             _%r150002%_)
                                            (_%E150016150025%_)))))
                                  (_%E150016150025%_))))
                           (_%E150005150055%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150003150021%_)
                                  (let ((_%e150013150045%_
                                         (gx#syntax-e _%e150003150021%_)))
                                    (let ((_%hd150014150048%_
                                           (##car _%e150013150045%_))
                                          (_%tl150015150050%_
                                           (##cdr _%e150013150045%_)))
                                      (if (eq? (gx#stx-e _%hd150014150048%_)
                                               'begin:)
                                          (let ((_%body150053%_
                                                 _%tl150015150050%_))
                                            (_%K149966%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest150001%_
                                              _%body150053%_)
                                             _%r150002%_))
                                          (_%E150012150041%_))))
                                  (_%E150012150041%_))))
                           (_%E150004150082%_
                            (lambda ()
                              (if (gx#stx-pair? _%e150003150021%_)
                                  (let ((_%e150006150059%_
                                         (gx#syntax-e _%e150003150021%_)))
                                    (let ((_%hd150007150062%_
                                           (##car _%e150006150059%_))
                                          (_%tl150008150064%_
                                           (##cdr _%e150006150059%_)))
                                      (if (eq? (gx#stx-e _%hd150007150062%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl150008150064%_)
                                              (let ((_%e150009150067%_
                                                     (gx#syntax-e
                                                      _%tl150008150064%_)))
                                                (let ((_%hd150010150070%_
                                                       (##car _%e150009150067%_))
                                                      (_%tl150011150072%_
                                                       (##cdr _%e150009150067%_)))
                                                  (let* ((_%dphi150075%_
                                                          _%hd150010150070%_)
                                                         (_%body150077%_
                                                          _%tl150011150072%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi150075%_)
                                                        (let ((_%rbody150080%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K149966%_ _%body150077%_ '()))
                        _%current-phi149963%_
                        (fx+ (gx#stx-e _%dphi150075%_)
                             (_%current-phi149963%_)))))
                  (_%K149966%_
                   _%rest150001%_
                   (__foldr1 cons _%r150002%_ _%rbody150080%_)))
                (_%E150005150055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E150005150055%_))
                                          (_%E150005150055%_))))
                                  (_%E150005150055%_)))))
                      (_%E150004150082%_)))))
          (let* ((_%e149968149975%_ _%stx149960%_)
                 (_%E149970149979%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e149968149975%_)))
                 (_%E149969149996%_
                  (lambda ()
                    (if (gx#stx-pair? _%e149968149975%_)
                        (let ((_%e149971149983%_
                               (gx#syntax-e _%e149968149975%_)))
                          (let ((_%hd149972149986%_ (##car _%e149971149983%_))
                                (_%tl149973149988%_ (##cdr _%e149971149983%_)))
                            (let ((_%body149991%_ _%tl149973149988%_))
                              (if (_%current-phi149963%_)
                                  (_%K149966%_ _%body149991%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K149966%_ _%body149991%_ '()))
                                   _%current-phi149963%_
                                   (gx#current-expander-phi))))))
                        (_%E149970149979%_)))))
            (_%E149969149996%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx149614%_ _%internal-expand?149615%_)
        (letrec ((_%expand1149617%_
                  (lambda (_%hd149932%_ _%K149933%_ _%rest149934%_ _%r149935%_)
                    (if (gx#core-bound-module? _%hd149932%_)
                        (_%import1149618%_
                         (gx#syntax-local-e__0 _%hd149932%_)
                         _%K149933%_
                         _%rest149934%_
                         _%r149935%_)
                        (if (gx#core-library-module-path? _%hd149932%_)
                            (_%import1149618%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd149932%_))
                             _%K149933%_
                             _%rest149934%_
                             _%r149935%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd149932%_)
                                (_%import1149618%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd149932%_))
                                 _%K149933%_
                                 _%rest149934%_
                                 _%r149935%_)
                                (let ((_%e149941%_ (gx#stx-e _%hd149932%_)))
                                  (if (pair? _%e149941%_)
                                      (let ((_%$e149944%_
                                             (gx#stx-e (##car _%e149941%_))))
                                        (if (eq? 'spec: _%$e149944%_)
                                            (_%import-spec149621%_
                                             _%hd149932%_
                                             _%K149933%_
                                             _%rest149934%_
                                             _%r149935%_)
                                            (if (eq? 'in: _%$e149944%_)
                                                (_%import-submodule149619%_
                                                 _%hd149932%_
                                                 _%K149933%_
                                                 _%rest149934%_
                                                 _%r149935%_)
                                                (if (eq? 'runtime:
                                                         _%$e149944%_)
                                                    (_%import-runtime149620%_
                                                     _%hd149932%_
                                                     _%K149933%_
                                                     _%rest149934%_
                                                     _%r149935%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx149614%_
                                                     _%hd149932%_)))))
                                      (if (string? _%e149941%_)
                                          (_%import1149618%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd149932%_
                                             (gx#stx-source _%stx149614%_)))
                                           _%K149933%_
                                           _%rest149934%_
                                           _%r149935%_)
                                          (if (##structure-instance-of?
                                               _%e149941%_
                                               'gx#module-context::t)
                                              (_%K149933%_
                                               _%rest149934%_
                                               (cons _%e149941%_ _%r149935%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx149614%_
                                               _%hd149932%_))))))))))
                 (_%import1149618%_
                  (lambda (_%ctx149921%_
                           _%K149922%_
                           _%rest149923%_
                           _%r149924%_)
                    (let ((_%dphi149926%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K149922%_
                       _%rest149923%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx149921%_
                              _%dphi149926%_
                              (map (lambda (_%g149927149929%_)
                                     (gx#core-module-export->import__%
                                      _%g149927149929%_
                                      '#f
                                      _%dphi149926%_))
                                   (##unchecked-structure-ref
                                    _%ctx149921%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r149924%_)))))
                 (_%import-submodule149619%_
                  (lambda (_%hd149888%_ _%K149889%_ _%rest149890%_ _%r149891%_)
                    (let* ((_%e149892149899%_ _%hd149888%_)
                           (_%E149894149903%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149892149899%_)))
                           (_%E149893149917%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149892149899%_)
                                  (let ((_%e149895149907%_
                                         (gx#syntax-e _%e149892149899%_)))
                                    (let ((_%hd149896149910%_
                                           (##car _%e149895149907%_))
                                          (_%tl149897149912%_
                                           (##cdr _%e149895149907%_)))
                                      (let ((_%spath149915%_
                                             _%tl149897149912%_))
                                        (_%import1149618%_
                                         (_%import-spec-source149622%_
                                          _%spath149915%_)
                                         _%K149889%_
                                         _%rest149890%_
                                         _%r149891%_))))
                                  (_%E149894149903%_)))))
                      (_%E149893149917%_))))
                 (_%import-runtime149620%_
                  (lambda (_%hd149855%_ _%K149856%_ _%rest149857%_ _%r149858%_)
                    (let* ((_%e149859149866%_ _%hd149855%_)
                           (_%E149861149870%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149859149866%_)))
                           (_%E149860149884%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149859149866%_)
                                  (let ((_%e149862149874%_
                                         (gx#syntax-e _%e149859149866%_)))
                                    (let ((_%hd149863149877%_
                                           (##car _%e149862149874%_))
                                          (_%tl149864149879%_
                                           (##cdr _%e149862149874%_)))
                                      (let ((_%spath149882%_
                                             _%tl149864149879%_))
                                        (_%K149856%_
                                         _%rest149857%_
                                         (cons (_%import-spec-source149622%_
                                                _%spath149882%_)
                                               _%r149858%_)))))
                                  (_%E149861149870%_)))))
                      (_%E149860149884%_))))
                 (_%import-spec149621%_
                  (lambda (_%hd149693%_ _%K149694%_ _%rest149695%_ _%r149696%_)
                    (let* ((_%e149697149714%_ _%hd149693%_)
                           (_%E149706149718%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e149697149714%_)))
                           (_%E149699149829%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149697149714%_)
                                  (let ((_%e149707149722%_
                                         (gx#syntax-e _%e149697149714%_)))
                                    (let ((_%hd149708149725%_
                                           (##car _%e149707149722%_))
                                          (_%tl149709149727%_
                                           (##cdr _%e149707149722%_)))
                                      (if (gx#stx-pair? _%tl149709149727%_)
                                          (let ((_%e149710149730%_
                                                 (gx#syntax-e
                                                  _%tl149709149727%_)))
                                            (let ((_%hd149711149733%_
                                                   (##car _%e149710149730%_))
                                                  (_%tl149712149735%_
                                                   (##cdr _%e149710149730%_)))
                                              (let* ((_%path149738%_
                                                      _%hd149711149733%_)
                                                     (_%specs149740%_
                                                      _%tl149712149735%_))
                                                (let ((_%src-ctx149742%_
                                                       (_%import-spec-source149622%_
                                                        _%path149738%_))
                                                      (_%exports149743%_
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
                                                      (_%specs149744%_
                                                       (gx#syntax->list
                                                        _%specs149740%_)))
                                                  (for-each
                                                   (lambda (_%out149746%_)
                                                     (__hash-put!
                                                      _%exports149743%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out149746%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out149746%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out149746%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx149742%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K149694%_
                                                   _%rest149695%_
                                                   (__foldl1
                                                    (lambda (_%spec149748%_
                                                             _%r149749%_)
                                                      (let* ((_%e149750149766%_
                                                              _%spec149748%_)
                                                             (_%E149752149770%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e149750149766%_)))
                     (_%E149751149825%_
                      (lambda ()
                        (if (gx#stx-pair? _%e149750149766%_)
                            (let ((_%e149753149774%_
                                   (gx#syntax-e _%e149750149766%_)))
                              (let ((_%hd149754149777%_
                                     (##car _%e149753149774%_))
                                    (_%tl149755149779%_
                                     (##cdr _%e149753149774%_)))
                                (let ((_%phi149782%_ _%hd149754149777%_))
                                  (if (gx#stx-pair? _%tl149755149779%_)
                                      (let ((_%e149756149784%_
                                             (gx#syntax-e _%tl149755149779%_)))
                                        (let ((_%hd149757149787%_
                                               (##car _%e149756149784%_))
                                              (_%tl149758149789%_
                                               (##cdr _%e149756149784%_)))
                                          (let ((_%name149792%_
                                                 _%hd149757149787%_))
                                            (if (gx#stx-pair?
                                                 _%tl149758149789%_)
                                                (let ((_%e149759149794%_
                                                       (gx#syntax-e
                                                        _%tl149758149789%_)))
                                                  (let ((_%hd149760149797%_
                                                         (##car _%e149759149794%_))
                                                        (_%tl149761149799%_
                                                         (##cdr _%e149759149794%_)))
                                                    (let ((_%src-phi149802%_
                                                           _%hd149760149797%_))
                                                      (if (gx#stx-pair?
                                                           _%tl149761149799%_)
                                                          (let ((_%e149762149804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl149761149799%_)))
                    (let ((_%hd149763149807%_ (##car _%e149762149804%_))
                          (_%tl149764149809%_ (##cdr _%e149762149804%_)))
                      (let ((_%src-name149812%_ _%hd149763149807%_))
                        (if (gx#stx-null? _%tl149764149809%_)
                            (if (and (gx#stx-fixnum? _%src-phi149802%_)
                                     (gx#identifier? _%src-name149812%_)
                                     (gx#stx-fixnum? _%phi149782%_)
                                     (gx#identifier? _%name149792%_))
                                (let ((_%src-phi149814%_
                                       (gx#stx-e _%src-phi149802%_))
                                      (_%src-name149815%_
                                       (gx#core-identifier-key
                                        _%src-name149812%_))
                                      (_%phi149816%_ (gx#stx-e _%phi149782%_))
                                      (_%name149817%_
                                       (gx#core-identifier-key
                                        _%name149792%_)))
                                  (let ((_%$e149819%_
                                         (__hash-get
                                          _%exports149743%_
                                          (cons _%src-phi149814%_
                                                _%src-name149815%_))))
                                    (if _%$e149819%_
                                        ((lambda (_%out149822%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out149822%_
                                                  _%name149817%_
                                                  (fx- _%phi149816%_
                                                       _%src-phi149814%_))
                                                 _%r149749%_))
                                         _%$e149819%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx149614%_
                                         _%hd149693%_))))
                                (_%E149752149770%_))
                            (_%E149752149770%_)))))
                  (_%E149752149770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E149752149770%_)))))
                                      (_%E149752149770%_)))))
                            (_%E149752149770%_)))))
                (_%E149751149825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r149696%_
                                                    _%specs149744%_))))))
                                          (_%E149706149718%_))))
                                  (_%E149706149718%_))))
                           (_%E149698149851%_
                            (lambda ()
                              (if (gx#stx-pair? _%e149697149714%_)
                                  (let ((_%e149700149833%_
                                         (gx#syntax-e _%e149697149714%_)))
                                    (let ((_%hd149701149836%_
                                           (##car _%e149700149833%_))
                                          (_%tl149702149838%_
                                           (##cdr _%e149700149833%_)))
                                      (if (gx#stx-pair? _%tl149702149838%_)
                                          (let ((_%e149703149841%_
                                                 (gx#syntax-e
                                                  _%tl149702149838%_)))
                                            (let ((_%hd149704149844%_
                                                   (##car _%e149703149841%_))
                                                  (_%tl149705149846%_
                                                   (##cdr _%e149703149841%_)))
                                              (let ((_%path149849%_
                                                     _%hd149704149844%_))
                                                (if (gx#stx-null?
                                                     _%tl149705149846%_)
                                                    (_%K149694%_
                                                     _%rest149695%_
                                                     (cons (_%import-spec-source149622%_
                                                            _%path149849%_)
                                                           _%r149696%_))
                                                    (_%E149699149829%_)))))
                                          (_%E149699149829%_))))
                                  (_%E149699149829%_)))))
                      (_%E149698149851%_))))
                 (_%import-spec-source149622%_
                  (lambda (_%spath149691%_)
                    (gx#core-import-nested-module
                     _%spath149691%_
                     _%stx149614%_)))
                 (_%import!149623%_
                  (lambda (_%rbody149636%_)
                    (letrec* ((_%current-ctx149638%_
                               (gx#current-expander-context))
                              (_%deps149639%_ (make-hash-table-eq))
                              (_%bind!149640%_
                               (lambda (_%hd149689%_)
                                 (gx#core-bind-import!__1
                                  _%hd149689%_
                                  _%current-ctx149638%_))))
                      (let _%lp149642%_ ((_%rest149644%_ _%rbody149636%_)
                                         (_%body149645%_ '()))
                        (let* ((_%rest149646149654%_ _%rest149644%_)
                               (_%else149648149665%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx149638%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx149638%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx149638%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body149645%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx149662%_ _%_149663%_)
                                     (gx#eval-module _%ctx149662%_))
                                   _%deps149639%_)
                                  _%body149645%_))
                               (_%K149650149677%_
                                (lambda (_%rest149668%_ _%hd149669%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd149669%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!149640%_ _%hd149669%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd149669%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd149669%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps149639%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd149669%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd149669%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!149640%_
                                             (##unchecked-structure-ref
                                              _%hd149669%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd149669%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps149639%_
                                                 (##unchecked-structure-ref
                                                  _%hd149669%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e149673%_
                                                 (##structure-instance-of?
                                                  _%hd149669%_
                                                  'gx#module-context::t)))
                                            (if _%$e149673%_
                                                _%$e149673%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx149614%_
                                                 _%hd149669%_)))))
                                  (_%lp149642%_
                                   _%rest149668%_
                                   (cons _%hd149669%_ _%body149645%_)))))
                          (if (pair? _%rest149646149654%_)
                              (let ((_%hd149651149680%_
                                     (##car _%rest149646149654%_))
                                    (_%tl149652149682%_
                                     (##cdr _%rest149646149654%_)))
                                (let* ((_%hd149685%_ _%hd149651149680%_)
                                       (_%rest149687%_ _%tl149652149682%_))
                                  (_%K149650149677%_
                                   _%rest149687%_
                                   _%hd149685%_)))
                              (_%else149648149665%_)))))))
                 (_%expanded-import?149624%_
                  (lambda (_%e149628%_)
                    (let ((_%$e149630%_
                           (##structure-direct-instance-of?
                            _%e149628%_
                            'gx#import-set::t)))
                      (if _%$e149630%_
                          _%$e149630%_
                          (let ((_%$e149633%_
                                 (##structure-direct-instance-of?
                                  _%e149628%_
                                  'gx#module-import::t)))
                            (if _%$e149633%_
                                _%$e149633%_
                                (##structure-instance-of?
                                 _%e149628%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody149626%_
                 (gx#core-expand-import/export
                  _%stx149614%_
                  _%expanded-import?149624%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1149617%_)))
            (if _%internal-expand?149615%_
                (reverse _%rbody149626%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!149623%_ _%rbody149626%_))
                 (gx#stx-source _%stx149614%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx149953%_)
        (let ((_%internal-expand?149955%_ '#f))
          (gx#core-expand-import%__%
           _%stx149953%_
           _%internal-expand?149955%_))))
    (define gx#core-expand-import%
      (lambda _g152605_
        (let ((_g152606_ (##length _g152605_)))
          (cond ((##fx= _g152606_ 1)
                 (apply gx#core-expand-import%__0 _g152605_))
                ((##fx= _g152606_ 2)
                 (apply gx#core-expand-import%__% _g152605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g152605_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath149541%_ _%where149542%_)
        (let* ((_%e149543149550%_ _%spath149541%_)
               (_%E149545149554%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149543149550%_)))
               (_%E149544149609%_
                (lambda ()
                  (if (gx#stx-pair? _%e149543149550%_)
                      (let ((_%e149546149558%_
                             (gx#syntax-e _%e149543149550%_)))
                        (let ((_%hd149547149561%_ (##car _%e149546149558%_))
                              (_%tl149548149563%_ (##cdr _%e149546149558%_)))
                          (let* ((_%origin149566%_ _%hd149547149561%_)
                                 (_%sub149568%_ _%tl149548149563%_)
                                 (_%origin-ctx149570%_
                                  (if (gx#stx-false? _%origin149566%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin149566%_))))
                            (let _%lp149572%_ ((_%rest149574%_ _%sub149568%_)
                                               (_%ctx149575%_
                                                _%origin-ctx149570%_))
                              (let* ((_%e149576149583%_ _%rest149574%_)
                                     (_%E149578149587%_
                                      (lambda () _%ctx149575%_))
                                     (_%E149577149605%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e149576149583%_)
                                            (let ((_%e149579149591%_
                                                   (gx#syntax-e
                                                    _%e149576149583%_)))
                                              (let ((_%hd149580149594%_
                                                     (##car _%e149579149591%_))
                                                    (_%tl149581149596%_
                                                     (##cdr _%e149579149591%_)))
                                                (let* ((_%id149599%_
                                                        _%hd149580149594%_)
                                                       (_%rest149601%_
                                                        _%tl149581149596%_)
                                                       (_%bind149603%_
                                                        (gx#resolve-identifier__%
                                                         _%id149599%_
                                                         '0
                                                         _%ctx149575%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind149603%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind149603%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where149542%_
                                                       _%spath149541%_
                                                       _%id149599%_))
                                                  (_%lp149572%_
                                                   _%rest149601%_
                                                   (##unchecked-structure-ref
                                                    _%bind149603%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E149578149587%_)))))
                                (_%E149577149605%_))))))
                      (_%E149545149554%_)))))
          (_%E149544149609%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd149539%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd149539%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx149034%_ _%internal-expand?149035%_)
        (letrec* ((_%make-export__152533152534%_
                   (lambda (_%bind149487%_
                            _%phi149488%_
                            _%ctx149489%_
                            _%name149490%_)
                     (let* ((_%key149492%_
                             (##unchecked-structure-ref
                              _%bind149487%_
                              '2
                              '#f
                              '#f))
                            (_%export-key149494%_
                             (if _%name149490%_
                                 (gx#core-identifier-key _%name149490%_)
                                 _%key149492%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx149489%_
                        _%key149492%_
                        _%phi149488%_
                        _%export-key149494%_
                        (let ((_%$e149497%_
                               (##structure-instance-of?
                                _%bind149487%_
                                'gx#extern-binding::t)))
                          (if _%$e149497%_
                              _%$e149497%_
                              (##structure-direct-instance-of?
                               _%bind149487%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__152535152538%_
                   (lambda (_%bind149503%_)
                     (let* ((_%phi149505%_ (gx#current-export-expander-phi))
                            (_%ctx149507%_ (gx#current-expander-context))
                            (_%name149509%_ '#f))
                       (_%make-export__152533152534%_
                        _%bind149503%_
                        _%phi149505%_
                        _%ctx149507%_
                        _%name149509%_))))
                  (_%make-export__1__152536152539%_
                   (lambda (_%bind149511%_ _%phi149512%_)
                     (let* ((_%ctx149514%_ (gx#current-expander-context))
                            (_%name149516%_ '#f))
                       (_%make-export__152533152534%_
                        _%bind149511%_
                        _%phi149512%_
                        _%ctx149514%_
                        _%name149516%_))))
                  (_%make-export__2__152537152540%_
                   (lambda (_%bind149518%_ _%phi149519%_ _%ctx149520%_)
                     (let ((_%name149522%_ '#f))
                       (_%make-export__152533152534%_
                        _%bind149518%_
                        _%phi149519%_
                        _%ctx149520%_
                        _%name149522%_))))
                  (_%make-export149037%_
                   (lambda _g152607_
                     (let ((_g152608_ (##length _g152607_)))
                       (cond ((##fx= _g152608_ 1)
                              (apply _%make-export__0__152535152538%_
                                     _g152607_))
                             ((##fx= _g152608_ 2)
                              (apply _%make-export__1__152536152539%_
                                     _g152607_))
                             ((##fx= _g152608_ 3)
                              (apply _%make-export__2__152537152540%_
                                     _g152607_))
                             ((##fx= _g152608_ 4)
                              (apply _%make-export__152533152534%_ _g152607_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g152607_))))))
                  (_%expand1149038%_
                   (lambda (_%hd149192%_
                            _%K149193%_
                            _%rest149194%_
                            _%r149195%_)
                     (let* ((_%e149196149228%_ _%hd149192%_)
                            (_%E149223149232%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx149034%_
                                _%hd149192%_)))
                            (_%E149213149316%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149196149228%_)
                                   (let ((_%e149224149236%_
                                          (gx#syntax-e _%e149196149228%_)))
                                     (let ((_%hd149225149239%_
                                            (##car _%e149224149236%_))
                                           (_%tl149226149241%_
                                            (##cdr _%e149224149236%_)))
                                       (if (eq? (gx#stx-e _%hd149225149239%_)
                                                'import:)
                                           (let ((_%in149244%_
                                                  _%tl149226149241%_))
                                             (if (gx#stx-list? _%in149244%_)
                                                 (let _%lp149246%_ ((_%in-rest149248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in149244%_)
                            (_%r149249%_ _%r149195%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e149250149257%_
                                                           _%in-rest149248%_)
                                                          (_%E149252149261%_
                                                           (lambda ()
                                                             (_%K149193%_
                                                              _%rest149194%_
                                                              _%r149249%_)))
                                                          (_%E149251149312%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e149250149257%_)
                         (let ((_%e149253149265%_
                                (gx#syntax-e _%e149250149257%_)))
                           (let ((_%hd149254149268%_ (##car _%e149253149265%_))
                                 (_%tl149255149270%_
                                  (##cdr _%e149253149265%_)))
                             (let* ((_%hd149273%_ _%hd149254149268%_)
                                    (_%in-rest149275%_ _%tl149255149270%_)
                                    (_%src149310%_
                                     (if (gx#core-bound-module? _%hd149273%_)
                                         (gx#syntax-local-e__0 _%hd149273%_)
                                         (if (gx#core-library-module-path?
                                              _%hd149273%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd149273%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd149273%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd149273%_))
                                                 (if (gx#stx-string?
                                                      _%hd149273%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd149273%_
                                                       (gx#stx-source
                                                        _%stx149034%_)))
                                                     (let* ((_%e149281149288%_
                                                             _%hd149273%_)
                                                            (_%E149283149292%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx149034%_
                                                                _%hd149273%_)))
                                                            (_%E149282149306%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e149281149288%_)
                           (let ((_%e149284149296%_
                                  (gx#syntax-e _%e149281149288%_)))
                             (let ((_%hd149285149299%_
                                    (##car _%e149284149296%_))
                                   (_%tl149286149301%_
                                    (##cdr _%e149284149296%_)))
                               (if (eq? (gx#stx-e _%hd149285149299%_) 'in:)
                                   (let ((_%spath149304%_ _%tl149286149301%_))
                                     (gx#core-import-nested-module
                                      _%spath149304%_
                                      _%stx149034%_))
                                   (_%E149283149292%_))))
                           (_%E149283149292%_)))))
               (_%E149282149306%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp149246%_
                                _%in-rest149275%_
                                (_%export-imports149039%_
                                 _%src149310%_
                                 _%r149249%_)))))
                         (_%E149252149261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E149251149312%_)))
                                                 (_%E149223149232%_)))
                                           (_%E149223149232%_))))
                                   (_%E149223149232%_))))
                            (_%E149200149356%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149196149228%_)
                                   (let ((_%e149214149320%_
                                          (gx#syntax-e _%e149196149228%_)))
                                     (let ((_%hd149215149323%_
                                            (##car _%e149214149320%_))
                                           (_%tl149216149325%_
                                            (##cdr _%e149214149320%_)))
                                       (if (eq? (gx#stx-e _%hd149215149323%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl149216149325%_)
                                               (let ((_%e149217149328%_
                                                      (gx#syntax-e
                                                       _%tl149216149325%_)))
                                                 (let ((_%hd149218149331%_
                                                        (##car _%e149217149328%_))
                                                       (_%tl149219149333%_
                                                        (##cdr _%e149217149328%_)))
                                                   (let ((_%id149336%_
                                                          _%hd149218149331%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149219149333%_)
                                                         (let ((_%e149220149338%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149219149333%_)))
                   (let ((_%hd149221149341%_ (##car _%e149220149338%_))
                         (_%tl149222149343%_ (##cdr _%e149220149338%_)))
                     (let ((_%name149346%_ _%hd149221149341%_))
                       (if (gx#stx-null? _%tl149222149343%_)
                           (let* ((_%phi149348%_
                                   (gx#current-export-expander-phi))
                                  (_%$e149350%_
                                   (gx#core-resolve-identifier__1
                                    _%id149336%_
                                    _%phi149348%_)))
                             (if _%$e149350%_
                                 ((lambda (_%bind149353%_)
                                    (_%K149193%_
                                     _%rest149194%_
                                     (cons (_%make-export__152533152534%_
                                            _%bind149353%_
                                            _%phi149348%_
                                            (gx#current-expander-context)
                                            _%name149346%_)
                                           _%r149195%_)))
                                  _%$e149350%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx149034%_
                                  _%hd149192%_
                                  _%id149336%_)))
                           (_%E149213149316%_)))))
                 (_%E149213149316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149213149316%_))
                                           (_%E149213149316%_))))
                                   (_%E149213149316%_))))
                            (_%E149199149406%_
                             (lambda ()
                               (if (gx#stx-pair? _%e149196149228%_)
                                   (let ((_%e149201149360%_
                                          (gx#syntax-e _%e149196149228%_)))
                                     (let ((_%hd149202149363%_
                                            (##car _%e149201149360%_))
                                           (_%tl149203149365%_
                                            (##cdr _%e149201149360%_)))
                                       (if (eq? (gx#stx-e _%hd149202149363%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl149203149365%_)
                                               (let ((_%e149204149368%_
                                                      (gx#syntax-e
                                                       _%tl149203149365%_)))
                                                 (let ((_%hd149205149371%_
                                                        (##car _%e149204149368%_))
                                                       (_%tl149206149373%_
                                                        (##cdr _%e149204149368%_)))
                                                   (let ((_%phi149376%_
                                                          _%hd149205149371%_))
                                                     (if (gx#stx-pair?
                                                          _%tl149206149373%_)
                                                         (let ((_%e149207149378%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl149206149373%_)))
                   (let ((_%hd149208149381%_ (##car _%e149207149378%_))
                         (_%tl149209149383%_ (##cdr _%e149207149378%_)))
                     (let ((_%id149386%_ _%hd149208149381%_))
                       (if (gx#stx-pair? _%tl149209149383%_)
                           (let ((_%e149210149388%_
                                  (gx#syntax-e _%tl149209149383%_)))
                             (let ((_%hd149211149391%_
                                    (##car _%e149210149388%_))
                                   (_%tl149212149393%_
                                    (##cdr _%e149210149388%_)))
                               (let ((_%name149396%_ _%hd149211149391%_))
                                 (if (gx#stx-null? _%tl149212149393%_)
                                     (if (and (gx#stx-fixnum? _%phi149376%_)
                                              (gx#identifier? _%id149386%_)
                                              (gx#identifier? _%name149396%_))
                                         (let* ((_%phi149398%_
                                                 (gx#stx-e _%phi149376%_))
                                                (_%$e149400%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id149386%_
                                                  _%phi149398%_)))
                                           (if _%$e149400%_
                                               ((lambda (_%bind149403%_)
                                                  (_%K149193%_
                                                   _%rest149194%_
                                                   (cons (_%make-export__152533152534%_
                                                          _%bind149403%_
                                                          _%phi149398%_
                                                          (gx#current-expander-context)
                                                          _%name149396%_)
                                                         _%r149195%_)))
                                                _%$e149400%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx149034%_
                                                _%hd149192%_
                                                _%id149386%_)))
                                         (_%E149200149356%_))
                                     (_%E149200149356%_)))))
                           (_%E149200149356%_)))))
                 (_%E149200149356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E149200149356%_))
                                           (_%E149200149356%_))))
                                   (_%E149200149356%_))))
                            (_%E149198149418%_
                             (lambda ()
                               (let ((_%id149410%_ _%e149196149228%_))
                                 (if (gx#identifier? _%id149410%_)
                                     (let ((_%$e149412%_
                                            (gx#core-resolve-identifier__1
                                             _%id149410%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e149412%_
                                           ((lambda (_%bind149415%_)
                                              (_%K149193%_
                                               _%rest149194%_
                                               (cons (_%make-export__0__152535152538%_
                                                      _%bind149415%_)
                                                     _%r149195%_)))
                                            _%$e149412%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx149034%_
                                            _%hd149192%_)))
                                     (_%E149199149406%_)))))
                            (_%E149197149482%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e149196149228%_) '#t)
                                   (let* ((_%current-ctx149422%_
                                           (gx#current-expander-context))
                                          (_%current-phi149424%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx149426%_
                                           (gx#core-context-shift
                                            _%current-ctx149422%_
                                            _%current-phi149424%_))
                                          (_%phi-bind149428%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx149426%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp149431%_ ((_%bind-rest149433%_
                                                         _%phi-bind149428%_)
                                                        (_%set149434%_ '()))
                                       (let* ((_%bind-rest149435149445%_
                                               _%bind-rest149433%_)
                                              (_%else149437149453%_
                                               (lambda ()
                                                 (_%K149193%_
                                                  _%rest149194%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi149424%_
                                                         _%set149434%_)
                                                        _%r149195%_))))
                                              (_%K149439149463%_
                                               (lambda (_%bind-rest149456%_
                                                        _%bind149457%_
                                                        _%key149458%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind149457%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind149457%_))
                                                     (_%lp149431%_
                                                      _%bind-rest149456%_
                                                      _%set149434%_)
                                                     (_%lp149431%_
                                                      _%bind-rest149456%_
                                                      (cons (_%make-export__2__152537152540%_
                                                             _%bind149457%_
                                                             _%current-phi149424%_
                                                             _%current-ctx149422%_)
                                                            _%set149434%_))))))
                                         (if (pair? _%bind-rest149435149445%_)
                                             (let ((_%hd149440149466%_
                                                    (##car _%bind-rest149435149445%_))
                                                   (_%tl149441149468%_
                                                    (##cdr _%bind-rest149435149445%_)))
                                               (if (pair? _%hd149440149466%_)
                                                   (let ((_%hd149442149471%_
                                                          (##car _%hd149440149466%_))
                                                         (_%tl149443149473%_
                                                          (##cdr _%hd149440149466%_)))
                                                     (let* ((_%key149476%_
                                                             _%hd149442149471%_)
                                                            (_%bind149478%_
                                                             _%tl149443149473%_)
                                                            (_%bind-rest149480%_
                                                             _%tl149441149468%_))
                                                       (_%K149439149463%_
                                                        _%bind-rest149480%_
                                                        _%bind149478%_
                                                        _%key149476%_)))
                                                   (_%else149437149453%_)))
                                             (_%else149437149453%_)))))
                                   (_%E149198149418%_)))))
                       (_%E149197149482%_))))
                  (_%export-imports149039%_
                   (lambda (_%src149069%_ _%r149070%_)
                     (letrec* ((_%current-ctx149072%_
                                (gx#current-expander-context))
                               (_%current-phi149073%_
                                (gx#current-export-expander-phi))
                               (_%import->export149074%_
                                (lambda (_%in149155%_)
                                  (let* ((_%in149156149164%_ _%in149155%_)
                                         (_%E149158149167%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in149156149164%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K149159149174%_
                                          (lambda (_%phi149170%_
                                                   _%key149171%_
                                                   _%out149172%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx149072%_
                                             _%key149171%_
                                             _%phi149170%_
                                             _%key149171%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in149156149164%_
                                         'gx#module-import::t)
                                        (let* ((_%e149160149177%_
                                                (##unchecked-structure-ref
                                                 _%in149156149164%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out149180%_
                                                _%e149160149177%_)
                                               (_%e149161149182%_
                                                (##unchecked-structure-ref
                                                 _%in149156149164%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key149185%_
                                                _%e149161149182%_)
                                               (_%e149162149187%_
                                                (##unchecked-structure-ref
                                                 _%in149156149164%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi149190%_
                                                _%e149162149187%_))
                                          (_%K149159149174%_
                                           _%phi149190%_
                                           _%key149185%_
                                           _%out149180%_))
                                        (_%E149158149167%_)))))
                               (_%fold-e149075%_
                                (lambda (_%in149077%_ _%r149078%_)
                                  (let* ((_%in149079149093%_ _%in149077%_)
                                         (_%else149082149101%_
                                          (lambda () _%r149078%_)))
                                    (let ((_%K149088149137%_
                                           (lambda (_%phi149133%_
                                                    _%key149134%_
                                                    _%out149135%_)
                                             (if (and (fx= _%phi149133%_
                                                           _%current-phi149073%_)
                                                      (eq? _%src149069%_
                                                           (##unchecked-structure-ref
                                                            _%out149135%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export149074%_
                                                        _%in149077%_)
                                                       _%r149078%_)
                                                 _%r149078%_)))
                                          (_%K149084149112%_
                                           (lambda (_%imports149105%_
                                                    _%phi149106%_
                                                    _%ctx149107%_)
                                             (if (and (fx= _%phi149106%_
                                                           _%current-phi149073%_)
                                                      (eq? _%src149069%_
                                                           _%ctx149107%_))
                                                 (__foldl1
                                                  (lambda (_%in149109%_
                                                           _%r149110%_)
                                                    (cons (_%import->export149074%_
                                                           _%in149109%_)
                                                          _%r149110%_))
                                                  _%r149078%_
                                                  _%imports149105%_)
                                                 _%r149078%_))))
                                      (let ((_%try-match149081149130%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in149079149093%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e149085149115%_
                                                           (##unchecked-structure-ref
                                                            _%in149079149093%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e149086149120%_
                                                           (##unchecked-structure-ref
                                                            _%in149079149093%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e149087149125%_
                                                           (##unchecked-structure-ref
                                                            _%in149079149093%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx149118%_
                                                            _%e149085149115%_)
                                                           (_%phi149123%_
                                                            _%e149086149120%_)
                                                           (_%imports149128%_
                                                            _%e149087149125%_))
                                                       (_%K149084149112%_
                                                        _%imports149128%_
                                                        _%phi149123%_
                                                        _%ctx149118%_)))
                                                   (_%else149082149101%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in149079149093%_
                                             'gx#module-import::t)
                                            (let* ((_%e149089149140%_
                                                    (##unchecked-structure-ref
                                                     _%in149079149093%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e149090149145%_
                                                    (##unchecked-structure-ref
                                                     _%in149079149093%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e149091149150%_
                                                    (##unchecked-structure-ref
                                                     _%in149079149093%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out149143%_
                                                     _%e149089149140%_)
                                                    (_%key149148%_
                                                     _%e149090149145%_)
                                                    (_%phi149153%_
                                                     _%e149091149150%_))
                                                (_%K149088149137%_
                                                 _%phi149153%_
                                                 _%key149148%_
                                                 _%out149143%_)))
                                            (_%try-match149081149130%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src149069%_
                              _%current-phi149073%_
                              (__foldl1
                               _%fold-e149075%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx149072%_
                                '8
                                '#f
                                '#f)))
                             _%r149070%_))))
                  (_%export!149040%_
                   (lambda (_%rbody149056%_)
                     (letrec* ((_%current-ctx149058%_
                                (gx#current-expander-context))
                               (_%fold-e149059%_
                                (lambda (_%out149063%_ _%r149064%_)
                                  (if (##structure-direct-instance-of?
                                       _%out149063%_
                                       'gx#module-export::t)
                                      (cons _%out149063%_ _%r149064%_)
                                      (if (##structure-direct-instance-of?
                                           _%out149063%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r149064%_
                                           (##unchecked-structure-ref
                                            _%out149063%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r149064%_)))))
                       (let ((_%body149061%_ (reverse _%rbody149056%_)))
                         (##unchecked-structure-set!
                          _%current-ctx149058%_
                          (__foldl1
                           _%fold-e149059%_
                           (##unchecked-structure-ref
                            _%current-ctx149058%_
                            '9
                            '#f
                            '#f)
                           _%body149061%_)
                          '9
                          '#f
                          '#f)
                         _%body149061%_))))
                  (_%expanded-export?149041%_
                   (lambda (_%e149051%_)
                     (let ((_%$e149053%_
                            (##structure-direct-instance-of?
                             _%e149051%_
                             'gx#module-export::t)))
                       (if _%$e149053%_
                           _%$e149053%_
                           (##structure-direct-instance-of?
                            _%e149051%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?149035%_)
              (let ((_%rbody149047%_
                     (gx#core-expand-import/export
                      _%stx149034%_
                      _%expanded-export?149041%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1149038%_)))
                (if _%internal-expand?149035%_
                    (reverse _%rbody149047%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!149040%_ _%rbody149047%_))
                     (gx#stx-source _%stx149034%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx149034%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx149034%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx149532%_)
        (let ((_%internal-expand?149534%_ '#f))
          (gx#core-expand-export%__%
           _%stx149532%_
           _%internal-expand?149534%_))))
    (define gx#core-expand-export%
      (lambda _g152609_
        (let ((_g152610_ (##length _g152609_)))
          (cond ((##fx= _g152610_ 1)
                 (apply gx#core-expand-export%__0 _g152609_))
                ((##fx= _g152610_ 2)
                 (apply gx#core-expand-export%__% _g152609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g152609_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd149031%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd149031%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx149001%_)
        (let* ((_%e149002149009%_ _%stx149001%_)
               (_%E149004149013%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e149002149009%_)))
               (_%E149003149027%_
                (lambda ()
                  (if (gx#stx-pair? _%e149002149009%_)
                      (let ((_%e149005149017%_
                             (gx#syntax-e _%e149002149009%_)))
                        (let ((_%hd149006149020%_ (##car _%e149005149017%_))
                              (_%tl149007149022%_ (##cdr _%e149005149017%_)))
                          (let ((_%body149025%_ _%tl149007149022%_))
                            (if (gx#identifier-list? _%body149025%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body149025%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body149025%_))
                                   (gx#stx-source _%stx149001%_)))
                                (_%E149004149013%_)))))
                      (_%E149004149013%_)))))
          (_%E149003149027%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id148967%_ _%private?148968%_ _%phi148969%_ _%ctx148970%_)
        (gx#core-bind-syntax!__%
         _%id148967%_
         ((if _%private?148968%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id148967%_))
         _%private?148968%_
         _%phi148969%_
         _%ctx148970%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id148975%_)
        (let* ((_%private?148977%_ '#f)
               (_%phi148979%_ (gx#current-expander-phi))
               (_%ctx148981%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id148975%_
           _%private?148977%_
           _%phi148979%_
           _%ctx148981%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id148983%_ _%private?148984%_)
        (let* ((_%phi148986%_ (gx#current-expander-phi))
               (_%ctx148988%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id148983%_
           _%private?148984%_
           _%phi148986%_
           _%ctx148988%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id148990%_ _%private?148991%_ _%phi148992%_)
        (let ((_%ctx148994%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id148990%_
           _%private?148991%_
           _%phi148992%_
           _%ctx148994%_))))
    (define gx#core-bind-feature!
      (lambda _g152611_
        (let ((_g152612_ (##length _g152611_)))
          (cond ((##fx= _g152612_ 1)
                 (apply gx#core-bind-feature!__0 _g152611_))
                ((##fx= _g152612_ 2)
                 (apply gx#core-bind-feature!__1 _g152611_))
                ((##fx= _g152612_ 3)
                 (apply gx#core-bind-feature!__2 _g152611_))
                ((##fx= _g152612_ 4)
                 (apply gx#core-bind-feature!__% _g152611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g152611_))))))))
