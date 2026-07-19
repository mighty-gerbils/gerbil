(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1784279016)
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args194721%_
        (apply make-instance gx#module-import::t _%$args194721%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args194718%_
        (apply make-instance gx#module-export::t _%$args194718%_)))
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
      (lambda _%$args194715%_
        (apply make-instance gx#import-set::t _%$args194715%_)))
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
      (lambda _%$args194712%_
        (apply make-instance gx#export-set::t _%$args194712%_)))
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
      (lambda _%$args194709%_
        (apply make-instance gx#import-expander::t _%$args194709%_)))
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
      (lambda _%$args194706%_
        (apply make-instance gx#export-expander::t _%$args194706%_)))
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
      (lambda _%$args194703%_
        (apply make-instance gx#import-export-expander::t _%$args194703%_)))
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
      (lambda (_%path194700%_ _%fun194701%_)
        (call-with-input-file
         (cons 'path: (cons _%path194700%_ gx#source-file-settings))
         _%fun194701%_)))
    (define gx#module-context:::init!
      (lambda (_%self194683%_
               _%id194684%_
               _%super194685%_
               _%ns194686%_
               _%path194687%_)
        (let ((_%self194690%_ _%self194683%_))
          (if (##fx< '11 (##structure-length _%self194690%_))
              (begin
                (##unchecked-structure-set!
                 _%self194690%_
                 _%id194684%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194690%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194690%_
                 _%super194685%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194690%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self194690%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self194690%_
                 _%ns194686%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194690%_
                 _%path194687%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194690%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self194690%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self194690%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self194690%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self194690%_
                     '11
                     (##structure-length _%self194690%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self194516%_ _%ctx194517%_ _%root194518%_)
        (let* ((_%self194521%_ _%self194516%_)
               (_%super194537%_
                (let ((_%$e194531%_ _%root194518%_))
                  (if _%$e194531%_
                      _%$e194531%_
                      (let ((_%$e194534%_ (gx#core-context-root__0)))
                        (if _%$e194534%_
                            _%$e194534%_
                            (let ((__obj194765
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor194766
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj194765
                                      ':init!)))
                                (if __constructor194766
                                    (__constructor194766 __obj194765)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj194765)))))))
          (if _%ctx194517%_
              (let ((_%id194540%_
                     (##structure-ref
                      _%ctx194517%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path194541%_
                     (##structure-ref
                      _%ctx194517%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in194542%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx194517%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e194543%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx194517%_)))))
                (if (##fx< '8 (##structure-length _%self194521%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self194521%_
                       _%id194540%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194521%_
                       (make-hash-table-eq 'size: (##length _%in194542%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194521%_
                       _%super194537%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194521%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194521%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194521%_
                       _%path194541%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194521%_
                       _%in194542%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194521%_
                       _%e194543%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self194521%_
                           '8
                           (##structure-length _%self194521%_)))
                (##for-each
                 (lambda (_%$%g194544194546%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g194544194546%_
                    _%self194521%_))
                 _%in194542%_))
              (if (##fx< '8 (##structure-length _%self194521%_))
                  (begin
                    (##unchecked-structure-set! _%self194521%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self194521%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self194521%_
                     _%super194537%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self194521%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self194521%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self194521%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self194521%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self194521%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self194521%_
                         '8
                         (##structure-length _%self194521%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self194552%_ _%ctx194553%_)
        (let ((_%root194555%_ '#f))
          (gx#prelude-context:::init!__%
           _%self194552%_
           _%ctx194553%_
           _%root194555%_))))
    (define gx#prelude-context:::init!
      (lambda _g194772_
        (let ((_g194773_ (##length _g194772_)))
          (cond ((##fx= _g194773_ 2)
                 (apply gx#prelude-context:::init!__0 _g194772_))
                ((##fx= _g194773_ 3)
                 (apply gx#prelude-context:::init!__% _g194772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g194772_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self194390%_ _%e194391%_)
        (if (##fx< '3 (##structure-length _%self194390%_))
            (begin
              (##unchecked-structure-set!
               _%self194390%_
               _%e194391%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self194390%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self194390%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self194390%_
                   '3
                   (##structure-length _%self194390%_)))))
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
      (lambda (_%$%g194016194019%_ _%$%g194017194021%_)
        (gx#core-apply-user-expander__%
         _%$%g194016194019%_
         _%$%g194017194021%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g193887193890%_ _%$%g193888193892%_)
        (gx#core-apply-user-expander__%
         _%$%g193887193890%_
         _%$%g193888193892%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx193758%_)
        (let* ((_%path193760%_
                (##structure-ref _%ctx193758%_ '7 gx#module-context::t '#f))
               (_%path193762%_
                (if (pair? _%path193760%_)
                    (##last _%path193760%_)
                    _%path193760%_)))
          (if (string? _%path193762%_) _%path193762%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path193734%_ _%reload?193735%_ _%eval?193736%_)
        (let ((_%ctx193738%_
               ((gx#current-expander-module-import)
                _%path193734%_
                _%reload?193735%_)))
          (if (and _%ctx193738%_ _%eval?193736%_)
              (gx#eval-module _%ctx193738%_)
              '#!void)
          _%ctx193738%_)))
    (define gx#import-module__0
      (lambda (_%path193743%_)
        (let* ((_%reload?193745%_ '#f) (_%eval?193747%_ '#f))
          (gx#import-module__%
           _%path193743%_
           _%reload?193745%_
           _%eval?193747%_))))
    (define gx#import-module__1
      (lambda (_%path193749%_ _%reload?193750%_)
        (let ((_%eval?193752%_ '#f))
          (gx#import-module__%
           _%path193749%_
           _%reload?193750%_
           _%eval?193752%_))))
    (define gx#import-module
      (lambda _g194774_
        (let ((_g194775_ (##length _g194774_)))
          (cond ((##fx= _g194775_ 1) (apply gx#import-module__0 _g194774_))
                ((##fx= _g194775_ 2) (apply gx#import-module__1 _g194774_))
                ((##fx= _g194775_ 3) (apply gx#import-module__% _g194774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g194774_))))))
    (define gx#eval-module
      (lambda (_%mod193731%_)
        ((gx#current-expander-module-eval) _%mod193731%_)))
    (define gx#core-eval-module
      (lambda (_%obj193710%_)
        (letrec ((_%force-e193712%_
                  (lambda (_%getf193726%_ _%e193727%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf193726%_ _%e193727%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e193727%_))))
          (let _%recur193714%_ ((_%e193716%_ _%obj193710%_))
            (if (##structure-instance-of? _%e193716%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e193719%_
                         (gx#core-context-prelude__% _%e193716%_)))
                    (if _%$e193719%_ (_%recur193714%_ _%$e193719%_) '#!void))
                  (_%force-e193712%_ gx#module-context-e _%e193716%_))
                (if (##structure-instance-of?
                     _%e193716%_
                     'gx#prelude-context::t)
                    (_%force-e193712%_ gx#prelude-context-e _%e193716%_)
                    (if (gx#stx-string? _%e193716%_)
                        (_%recur193714%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e193716%_)))
                        (if (gx#core-library-module-path? _%e193716%_)
                            (_%recur193714%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e193716%_)))
                            (error '"cannot eval module" _%obj193710%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx193690%_)
        (let _%lp193692%_ ((_%e193694%_ _%ctx193690%_))
          (if (or (##structure-instance-of? _%e193694%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e193694%_ 'gx#local-context::t))
              (_%lp193692%_ (##unchecked-structure-ref _%e193694%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e193694%_ 'gx#prelude-context::t)
                  _%e193694%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx193706%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx193706%_))))
    (define gx#core-context-prelude
      (lambda _g194776_
        (let ((_g194777_ (##length _g194776_)))
          (cond ((##fx= _g194777_ 0)
                 (apply gx#core-context-prelude__0 _g194776_))
                ((##fx= _g194777_ 1)
                 (apply gx#core-context-prelude__% _g194776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g194776_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx193681%_)
        (let ((_%$e193683%_ (__hash-get gx#__module-registry _%ctx193681%_)))
          (if _%$e193683%_
              _%$e193683%_
              (let ((_%pre193687%_
                     (let ((__obj194767
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
                        __obj194767
                        _%ctx193681%_)
                       __obj194767)))
                (__hash-put! gx#__module-registry _%ctx193681%_ _%pre193687%_)
                _%pre193687%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath193549%_ _%reload?193550%_)
        (letrec ((_%import-source193552%_
                  (lambda (_%path193640%_)
                    (if (member _%path193640%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path193640%_)
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
                                      (let ((_g194778_
                                             (gx#core-read-module
                                              _%path193640%_)))
                                        (begin
                                          (let ((_g194779_
                                                 (if (##values? _g194778_)
                                                     (##values-length
                                                      _g194778_)
                                                     1)))
                                            (if (not (##fx= _g194779_ 4))
                                                (error "Context expects 4 values"
                                                       _g194779_)))
                                          (let ((_%pre193648%_
                                                 (##values-ref _g194778_ 0))
                                                (_%id193649%_
                                                 (##values-ref _g194778_ 1))
                                                (_%ns193650%_
                                                 (##values-ref _g194778_ 2))
                                                (_%body193651%_
                                                 (##values-ref _g194778_ 3)))
                                            (let* ((_%prelude193661%_
                                                    (if (##structure-instance-of?
                                                         _%pre193648%_
                                                         'gx#prelude-context::t)
                                                        _%pre193648%_
                                                        (if (##structure-instance-of?
                                                             _%pre193648%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre193648%_)
                                                            (if (string? _%pre193648%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre193648%_))
                        (if (not _%pre193648%_)
                            (let ((_%$e193657%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e193657%_
                                  _%$e193657%_
                                  (let ((__obj194768
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
                                     __obj194768
                                     '#f)
                                    __obj194768)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath193549%_
                                   _%pre193648%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx193663%_
                                                    (let ((__obj194769
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
                                                       __obj194769
                                                       _%id193649%_
                                                       _%prelude193661%_
                                                       _%ns193650%_
                                                       _%path193640%_)
                                                      __obj194769))
                                                   (_%body193665%_
                                                    (gx#core-expand-module-begin
                                                     _%body193651%_
                                                     _%ctx193663%_))
                                                   (_%body193667%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body193665%_)
                                                     _%path193640%_
                                                     _%ctx193663%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx193663%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body193667%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx193663%_
                                               _%body193667%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path193640%_
                                               _%ctx193663%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id193649%_
                                               _%ctx193663%_)
                                              _%ctx193663%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path193640%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule193553%_
                  (lambda (_%rpath193569%_)
                    (let* ((_%$%rpath193570193577%_ _%rpath193569%_)
                           (_%$%E193572193580%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath193570193577%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K193573193628%_
                            (lambda (_%refs193583%_ _%origin193584%_)
                              (let ((_%ctx193586%_
                                     (if _%origin193584%_
                                         (gx#core-import-module__%
                                          _%origin193584%_
                                          _%reload?193550%_)
                                         (gx#current-expander-context))))
                                (let _%lp193588%_ ((_%rest193590%_
                                                    _%refs193583%_)
                                                   (_%ctx193591%_
                                                    _%ctx193586%_))
                                  (let* ((_%$%rest193592193600%_
                                          _%rest193590%_)
                                         (_%$%else193594193608%_
                                          (lambda () _%ctx193591%_))
                                         (_%$%K193596193616%_
                                          (lambda (_%rest193611%_ _%id193612%_)
                                            (let ((_%bind193614%_
                                                   (gx#resolve-identifier__%
                                                    _%id193612%_
                                                    '0
                                                    _%ctx193591%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind193614%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind193614%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp193588%_
                                                   _%rest193611%_
                                                   (##unchecked-structure-ref
                                                    _%bind193614%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath193569%_
                                                         _%id193612%_
                                                         _%bind193614%_))))))
                                    (if (pair? _%$%rest193592193600%_)
                                        (let ((_%$%hd193597193619%_
                                               (##car _%$%rest193592193600%_))
                                              (_%$%tl193598193621%_
                                               (##cdr _%$%rest193592193600%_)))
                                          (let* ((_%id193624%_
                                                  _%$%hd193597193619%_)
                                                 (_%rest193626%_
                                                  _%$%tl193598193621%_))
                                            (_%$%K193596193616%_
                                             _%rest193626%_
                                             _%id193624%_)))
                                        (_%$%else193594193608%_))))))))
                      (if (pair? _%$%rpath193570193577%_)
                          (let ((_%$%hd193574193631%_
                                 (##car _%$%rpath193570193577%_))
                                (_%$%tl193575193633%_
                                 (##cdr _%$%rpath193570193577%_)))
                            (let* ((_%origin193636%_ _%$%hd193574193631%_)
                                   (_%refs193638%_ _%$%tl193575193633%_))
                              (_%$%K193573193628%_
                               _%refs193638%_
                               _%origin193636%_)))
                          (_%$%E193572193580%_))))))
          (let ((_%$e193555%_
                 (if (not _%reload?193550%_)
                     (__hash-get gx#__module-registry _%rpath193549%_)
                     '#f)))
            (if _%$e193555%_
                _%$e193555%_
                (if (list? _%rpath193549%_)
                    (_%import-submodule193553%_ _%rpath193549%_)
                    (if (gx#core-library-module-path? _%rpath193549%_)
                        (let ((_%ctx193560%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath193549%_)
                                _%reload?193550%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath193549%_
                           _%ctx193560%_)
                          _%ctx193560%_)
                        (let* ((_%npath193563%_
                                (path-normalize _%rpath193549%_))
                               (_%$e193565%_
                                (if (not _%reload?193550%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath193563%_)
                                    '#f)))
                          (if _%$e193565%_
                              _%$e193565%_
                              (_%import-source193552%_
                               _%npath193563%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath193674%_)
        (let ((_%reload?193676%_ '#f))
          (gx#core-import-module__% _%rpath193674%_ _%reload?193676%_))))
    (define gx#core-import-module
      (lambda _g194780_
        (let ((_g194781_ (##length _g194780_)))
          (cond ((##fx= _g194781_ 1)
                 (apply gx#core-import-module__0 _g194780_))
                ((##fx= _g194781_ 2)
                 (apply gx#core-import-module__% _g194780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g194780_))))))
    (define gx#core-read-module
      (lambda (_%path193531%_)
        (__with-catch
         (lambda (_%exn193533%_)
           (if (datum-parsing-exception? _%exn193533%_)
               (let ((_%pos193535%_
                      (datum-parsing-exception-filepos _%exn193533%_)))
                 (if (= _%pos193535%_ '0)
                     (gx#core-read-module/lang _%path193531%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path193531%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g193537193539%_)
                            (display-exception__%
                             _%exn193533%_
                             _%$%g193537193539%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos193535%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos193535%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path193531%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g193542193544%_)
                      (display-exception__%
                       _%exn193533%_
                       _%$%g193542193544%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path193531%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path193383%_)
        (let _%lp193385%_ ((_%body193387%_
                            (read-syntax-from-file _%path193383%_))
                           (_%pre193388%_ '#f)
                           (_%ns193389%_ '#f)
                           (_%pkg193390%_ '#f))
          (let* ((_%$%e193391193415%_ _%body193387%_)
                 (_%$%E193407193441%_
                  (lambda ()
                    (let ((_g194782_
                           (if _%pkg193390%_
                               (values _%pre193388%_
                                       _%ns193389%_
                                       _%pkg193390%_)
                               (gx#core-read-module-package
                                _%path193383%_
                                _%pre193388%_
                                _%ns193389%_))))
                      (begin
                        (let ((_g194783_
                               (if (##values? _g194782_)
                                   (##values-length _g194782_)
                                   1)))
                          (if (not (##fx= _g194783_ 3))
                              (error "Context expects 3 values" _g194783_)))
                        (let ((_%pre193419%_ (##values-ref _g194782_ 0))
                              (_%ns193420%_ (##values-ref _g194782_ 1))
                              (_%pkg193421%_ (##values-ref _g194782_ 2)))
                          (let* ((_%prelude193427%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre193419%_)
                                      (gx#syntax-local-e__0 _%pre193419%_)
                                      (if (gx#core-library-module-path?
                                           _%pre193419%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre193419%_)
                                          (if (gx#stx-string? _%pre193419%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre193419%_
                                               _%path193383%_)
                                              (gx#stx-e _%pre193419%_)))))
                                 (_%path-id193429%_
                                  (gx#core-module-path->namespace
                                   _%path193383%_))
                                 (_%pkg-id193431%_
                                  (if _%pkg193421%_
                                      (##string-append
                                       _%pkg193421%_
                                       '"/"
                                       _%path-id193429%_)
                                      _%path-id193429%_))
                                 (_%module-id193433%_
                                  (##string->symbol _%pkg-id193431%_))
                                 (_%module-ns193438%_
                                  (if (eq? _%ns193420%_ '#!void)
                                      '#f
                                      (let ((_%$e193435%_ _%ns193420%_))
                                        (if _%$e193435%_
                                            _%$e193435%_
                                            _%pkg-id193431%_)))))
                            (values _%prelude193427%_
                                    _%module-id193433%_
                                    _%module-ns193438%_
                                    _%body193387%_)))))))
                 (_%$%E193400193473%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193391193415%_)
                        (let ((_%$%e193408193445%_
                               (gx#syntax-e _%$%e193391193415%_)))
                          (let ((_%$%hd193409193448%_
                                 (##car _%$%e193408193445%_))
                                (_%$%tl193410193450%_
                                 (##cdr _%$%e193408193445%_)))
                            (if (eq? (gx#stx-e _%$%hd193409193448%_) 'package:)
                                (if (gx#stx-pair? _%$%tl193410193450%_)
                                    (let ((_%$%e193411193453%_
                                           (gx#syntax-e _%$%tl193410193450%_)))
                                      (let ((_%$%hd193412193456%_
                                             (##car _%$%e193411193453%_))
                                            (_%$%tl193413193458%_
                                             (##cdr _%$%e193411193453%_)))
                                        (let* ((_%pkg193461%_
                                                _%$%hd193412193456%_)
                                               (_%rest193463%_
                                                _%$%tl193413193458%_)
                                               (_%pkg193471%_
                                                (if (gx#identifier?
                                                     _%pkg193461%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg193461%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg193461%_)
                                                            (gx#stx-false?
                                                             _%pkg193461%_))
                                                        (gx#stx-e
                                                         _%pkg193461%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg193461%_)))))
                                          (_%lp193385%_
                                           _%rest193463%_
                                           _%pre193388%_
                                           _%ns193389%_
                                           _%pkg193471%_))))
                                    (_%$%E193407193441%_))
                                (_%$%E193407193441%_))))
                        (_%$%E193407193441%_))))
                 (_%$%E193393193503%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193391193415%_)
                        (let ((_%$%e193401193477%_
                               (gx#syntax-e _%$%e193391193415%_)))
                          (let ((_%$%hd193402193480%_
                                 (##car _%$%e193401193477%_))
                                (_%$%tl193403193482%_
                                 (##cdr _%$%e193401193477%_)))
                            (if (eq? (gx#stx-e _%$%hd193402193480%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl193403193482%_)
                                    (let ((_%$%e193404193485%_
                                           (gx#syntax-e _%$%tl193403193482%_)))
                                      (let ((_%$%hd193405193488%_
                                             (##car _%$%e193404193485%_))
                                            (_%$%tl193406193490%_
                                             (##cdr _%$%e193404193485%_)))
                                        (let* ((_%ns193493%_
                                                _%$%hd193405193488%_)
                                               (_%rest193495%_
                                                _%$%tl193406193490%_)
                                               (_%ns193501%_
                                                (if (gx#identifier?
                                                     _%ns193493%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns193493%_))
                                                    (if (gx#stx-string?
                                                         _%ns193493%_)
                                                        (gx#stx-e _%ns193493%_)
                                                        (if (gx#stx-false?
                                                             _%ns193493%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns193493%_))))))
                                          (_%lp193385%_
                                           _%rest193495%_
                                           _%pre193388%_
                                           _%ns193501%_
                                           _%pkg193390%_))))
                                    (_%$%E193400193473%_))
                                (_%$%E193400193473%_))))
                        (_%$%E193400193473%_))))
                 (_%$%E193392193527%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193391193415%_)
                        (let ((_%$%e193394193507%_
                               (gx#syntax-e _%$%e193391193415%_)))
                          (let ((_%$%hd193395193510%_
                                 (##car _%$%e193394193507%_))
                                (_%$%tl193396193512%_
                                 (##cdr _%$%e193394193507%_)))
                            (if (eq? (gx#stx-e _%$%hd193395193510%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl193396193512%_)
                                    (let ((_%$%e193397193515%_
                                           (gx#syntax-e _%$%tl193396193512%_)))
                                      (let ((_%$%hd193398193518%_
                                             (##car _%$%e193397193515%_))
                                            (_%$%tl193399193520%_
                                             (##cdr _%$%e193397193515%_)))
                                        (let* ((_%prelude193523%_
                                                _%$%hd193398193518%_)
                                               (_%rest193525%_
                                                _%$%tl193399193520%_))
                                          (_%lp193385%_
                                           _%rest193525%_
                                           _%prelude193523%_
                                           _%ns193389%_
                                           _%pkg193390%_))))
                                    (_%$%E193393193503%_))
                                (_%$%E193393193503%_))))
                        (_%$%E193393193503%_)))))
            (_%$%E193392193527%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path193204%_)
        (letrec ((_%default-read-module-body193206%_
                  (lambda (_%inp193375%_)
                    (let _%lp193377%_ ((_%body193379%_ '()))
                      (let ((_%next193381%_ (read-syntax__% _%inp193375%_)))
                        (if (eof-object? _%next193381%_)
                            (reverse _%body193379%_)
                            (_%lp193377%_
                             (cons _%next193381%_ _%body193379%_)))))))
                 (_%read-body193207%_
                  (lambda (_%inp193292%_
                           _%pre193293%_
                           _%ns193294%_
                           _%pkg193295%_
                           _%args193296%_)
                    (let ((_g194784_
                           (if _%pkg193295%_
                               (values _%pre193293%_
                                       _%ns193294%_
                                       _%pkg193295%_)
                               (gx#core-read-module-package
                                _%path193204%_
                                _%pre193293%_
                                _%ns193294%_))))
                      (begin
                        (let ((_g194785_
                               (if (##values? _g194784_)
                                   (##values-length _g194784_)
                                   1)))
                          (if (not (##fx= _g194785_ 3))
                              (error "Context expects 3 values" _g194785_)))
                        (let ((_%pre193298%_ (##values-ref _g194784_ 0))
                              (_%ns193299%_ (##values-ref _g194784_ 1))
                              (_%pkg193300%_ (##values-ref _g194784_ 2)))
                          (let* ((_%prelude193302%_
                                  (gx#import-module__0 _%pre193298%_))
                                 (_%read-module-body193357%_
                                  (let ((_%$e193348%_
                                         (__find (lambda (_%$%e193303193305%_)
                                                   (let* ((_%$%$%e193303193307193317%_
                                                           _%$%e193303193305%_)
                                                          (_%$%else193309193325%_
                                                           (lambda () '#f))
                                                          (_%$%K193311193329%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e193303193307193317%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e193312193332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e193303193307193317%_
                          '1
                          '#f
                          '#f))
                        (_%$%e193313193335%_
                         (##unchecked-structure-ref
                          _%$%$%e193303193307193317%_
                          '2
                          '#f
                          '#f))
                        (_%$%e193314193338%_
                         (##unchecked-structure-ref
                          _%$%$%e193303193307193317%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e193314193338%_ '1)
                       (let ((_%$%e193315193341%_
                              (##unchecked-structure-ref
                               _%$%$%e193303193307193317%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e193315193341%_ 'read-module-body)
                             (_%$%K193311193329%_)
                             (_%$%else193309193325%_)))
                       (_%$%else193309193325%_)))
                 (_%$%else193309193325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude193302%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e193348%_
                                        (let ((_%proc193354%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e193348%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc193354%_)
                                              _%proc193354%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path193204%_
                                               _%pre193298%_
                                               _%proc193354%_)))
                                        _%default-read-module-body193206%_)))
                                 (_%path-id193359%_
                                  (gx#core-module-path->namespace
                                   _%path193204%_))
                                 (_%pkg-id193361%_
                                  (if _%pkg193300%_
                                      (##string-append
                                       _%pkg193300%_
                                       '"/"
                                       _%path-id193359%_)
                                      _%path-id193359%_))
                                 (_%module-id193363%_
                                  (##string->symbol _%pkg-id193361%_))
                                 (_%module-ns193368%_
                                  (let ((_%$e193365%_ _%ns193299%_))
                                    (if _%$e193365%_
                                        _%$e193365%_
                                        _%pkg-id193361%_)))
                                 (_%body193372%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body193357%_
                                         _%inp193292%_))
                                      gx#current-module-reader-args
                                      _%args193296%_))
                                   gx#current-module-reader-path
                                   _%path193204%_)))
                            (values _%prelude193302%_
                                    _%module-id193363%_
                                    _%module-ns193368%_
                                    _%body193372%_)))))))
                 (_%string-e193208%_
                  (lambda (_%obj193286%_ _%what193287%_)
                    (if (string? _%obj193286%_)
                        _%obj193286%_
                        (if (symbol? _%obj193286%_)
                            (##symbol->string _%obj193286%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what193287%_)
                             _%path193204%_
                             _%obj193286%_)))))
                 (_%read-lang-args193209%_
                  (lambda (_%inp193241%_ _%args193242%_)
                    (let* ((_%$%args193243193251%_ _%args193242%_)
                           (_%$%else193245193259%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path193204%_)))
                           (_%$%K193247193274%_
                            (lambda (_%args193262%_ _%prelude193263%_)
                              (let* ((_%pkg193265%_
                                      (pgetq__0 'package: _%args193262%_))
                                     (_%pkg193267%_
                                      (if _%pkg193265%_
                                          (_%string-e193208%_
                                           _%pkg193265%_
                                           '"package")
                                          '#f))
                                     (_%ns193269%_
                                      (pgetq__0 'namespace: _%args193262%_))
                                     (_%ns193271%_
                                      (if _%ns193269%_
                                          (_%string-e193208%_
                                           _%ns193269%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body193207%_
                                 _%inp193241%_
                                 _%prelude193263%_
                                 _%ns193271%_
                                 _%pkg193267%_
                                 _%args193262%_)))))
                      (if (pair? _%$%args193243193251%_)
                          (let ((_%$%hd193248193277%_
                                 (##car _%$%args193243193251%_))
                                (_%$%tl193249193279%_
                                 (##cdr _%$%args193243193251%_)))
                            (let* ((_%prelude193282%_ _%$%hd193248193277%_)
                                   (_%args193284%_ _%$%tl193249193279%_))
                              (_%$%K193247193274%_
                               _%args193284%_
                               _%prelude193282%_)))
                          (_%$%else193245193259%_)))))
                 (_%read-lang193210%_
                  (lambda (_%inp193215%_)
                    (let* ((_%head193217%_ (read-line _%inp193215%_))
                           (_%$e193219%_
                            (string-index__0 _%head193217%_ '#\space)))
                      (if _%$e193219%_
                          (let ((_%lang193224%_
                                 (substring _%head193217%_ '0 _%$e193219%_)))
                            (if (equal? _%lang193224%_ '"#lang")
                                (let* ((_%rest193226%_
                                        (substring
                                         _%head193217%_
                                         (##fx+ _%$e193219%_ '1)
                                         (string-length _%head193217%_)))
                                       (_%args193237%_
                                        (__with-catch
                                         (lambda (_%$%g193227193229%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path193204%_
                                            _%$%g193227193229%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest193226%_
                                            (lambda (_%$%g193232193234%_)
                                              (read-all
                                               _%$%g193232193234%_
                                               read)))))))
                                  (_%read-lang-args193209%_
                                   _%inp193215%_
                                   _%args193237%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path193204%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path193204%_)))))
                 (_%read-e193211%_
                  (lambda (_%inp193213%_)
                    (if (eq? (peek-char _%inp193213%_) '#\#)
                        (_%read-lang193210%_ _%inp193213%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path193204%_)))))
          (gx#call-with-input-source-file _%path193204%_ _%read-e193211%_))))
    (define gx#core-read-module-package
      (lambda (_%path193152%_ _%pre193153%_ _%ns193154%_)
        (letrec ((_%string-e193156%_
                  (lambda (_%e193199%_)
                    (if (symbol? _%e193199%_)
                        (##symbol->string _%e193199%_)
                        (if (string? _%e193199%_)
                            _%e193199%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e193199%_))))))
          (let _%lp193158%_ ((_%dir193160%_ (path-directory _%path193152%_))
                             (_%pkg-path193161%_ '()))
            (let ((_%gerbil.pkg193163%_
                   (path-expand '"gerbil.pkg" _%dir193160%_)))
              (if (##file-exists? _%gerbil.pkg193163%_)
                  (let ((_%plist193165%_
                         (gx#core-library-package-plist__% _%dir193160%_ '#t)))
                    (if (null? _%plist193165%_)
                        (let ((_%pkg193168%_
                               (if (null? _%pkg-path193161%_)
                                   '#f
                                   (string-join _%pkg-path193161%_ '"/"))))
                          (values _%pre193153%_ _%ns193154%_ _%pkg193168%_))
                        (if (list? _%plist193165%_)
                            (let* ((_%root193171%_
                                    (pgetq__0 'package: _%plist193165%_))
                                   (_%pkg193175%_
                                    (let ((_%pkg-path193173%_
                                           (if _%root193171%_
                                               (cons (_%string-e193156%_
                                                      _%root193171%_)
                                                     _%pkg-path193161%_)
                                               _%pkg-path193161%_)))
                                      (if (null? _%pkg-path193173%_)
                                          '#f
                                          (string-join
                                           _%pkg-path193173%_
                                           '"/"))))
                                   (_%ns193182%_
                                    (let ((_%ns193180%_
                                           (let ((_%$e193177%_ _%ns193154%_))
                                             (if _%$e193177%_
                                                 _%$e193177%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist193165%_)))))
                                      (if _%ns193180%_
                                          (_%string-e193156%_ _%ns193180%_)
                                          '#f)))
                                   (_%pre193187%_
                                    (let ((_%$e193184%_ _%pre193153%_))
                                      (if _%$e193184%_
                                          _%$e193184%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist193165%_)))))
                              (values _%pre193187%_
                                      _%ns193182%_
                                      _%pkg193175%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist193165%_))))
                  (let ((_%dir*193191%_
                         (path-strip-trailing-directory-separator
                          _%dir193160%_)))
                    (if (or (__string-empty? _%dir*193191%_)
                            (equal? _%dir193160%_ _%dir*193191%_))
                        (values _%pre193153%_ _%ns193154%_ '#f)
                        (let ((_%xpath193196%_
                               (path-strip-directory _%dir*193191%_))
                              (_%xdir193197%_ (path-directory _%dir*193191%_)))
                          (_%lp193158%_
                           _%xdir193197%_
                           (cons _%xpath193196%_ _%pkg-path193161%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path193150%_)
        (path-strip-extension (path-strip-directory _%path193150%_))))
    (define gx#core-module-path->id
      (lambda (_%path193148%_)
        (##string->symbol (gx#core-module-path->namespace _%path193148%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path193127%_ _%rel193128%_)
        (let* ((_%path193130%_ (gx#stx-e _%stx-path193127%_))
               (_%path193132%_
                (if (__string-empty? (path-extension _%path193130%_))
                    (##string-append _%path193130%_ '".ss")
                    _%path193130%_)))
          (gx#core-resolve-path__%
           _%path193132%_
           (let ((_%$e193135%_ (gx#stx-source _%stx-path193127%_)))
             (if _%$e193135%_ _%$e193135%_ _%rel193128%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path193141%_)
        (let ((_%rel193143%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path193141%_ _%rel193143%_))))
    (define gx#core-resolve-module-path
      (lambda _g194786_
        (let ((_g194787_ (##length _g194786_)))
          (cond ((##fx= _g194787_ 1)
                 (apply gx#core-resolve-module-path__0 _g194786_))
                ((##fx= _g194787_ 2)
                 (apply gx#core-resolve-module-path__% _g194786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g194786_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath193012%_)
        (let* ((_%spath193014%_ (symbol->string (gx#stx-e _%libpath193012%_)))
               (_%spath193016%_
                (substring
                 _%spath193014%_
                 '1
                 (##string-length _%spath193014%_)))
               (_%ext193018%_ (path-extension _%spath193016%_))
               (_%ssi193020%_
                (if (__string-empty? _%ext193018%_)
                    (##string-append _%spath193016%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath193016%_)
                     '".ssi")))
               (_%srcs193024%_
                (if (__string-empty? _%ext193018%_)
                    (##map (lambda (_%ext193022%_)
                             (string-append _%spath193016%_ _%ext193022%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath193016%_ '()))))
          (let _%lp193027%_ ((_%rest193029%_ (load-path)))
            (let* ((_%$%rest193030193039%_ _%rest193029%_)
                   (_%$%E193033193043%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest193030193039%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K193035193114%_
                     (lambda (_%rest193054%_ _%dir193055%_)
                       (letrec ((_%resolve193057%_
                                 (lambda (_%ssi193070%_ _%srcs193071%_)
                                   (let ((_%compiled-path193073%_
                                          (path-expand
                                           _%ssi193070%_
                                           _%dir193055%_)))
                                     (if (##file-exists?
                                          _%compiled-path193073%_)
                                         (path-normalize
                                          _%compiled-path193073%_)
                                         (let _%lpr193075%_ ((_%rest-src193077%_
                                                              _%srcs193071%_))
                                           (let* ((_%$%rest-src193078193086%_
                                                   _%rest-src193077%_)
                                                  (_%$%else193080193094%_
                                                   (lambda ()
                                                     (_%lp193027%_
                                                      _%rest193054%_)))
                                                  (_%$%K193082193102%_
                                                   (lambda (_%rest-src193097%_
                                                            _%src193098%_)
                                                     (let ((_%src-path193100%_
                                                            (path-expand
                                                             _%src193098%_
                                                             _%dir193055%_)))
                                                       (if (##file-exists?
                                                            _%src-path193100%_)
                                                           (path-normalize
                                                            _%src-path193100%_)
                                                           (_%lpr193075%_
                                                            _%rest-src193097%_))))))
                                             (if (pair? _%$%rest-src193078193086%_)
                                                 (let ((_%$%hd193083193105%_
                                                        (##car _%$%rest-src193078193086%_))
                                                       (_%$%tl193084193107%_
                                                        (##cdr _%$%rest-src193078193086%_)))
                                                   (let* ((_%src193110%_
                                                           _%$%hd193083193105%_)
                                                          (_%rest-src193112%_
                                                           _%$%tl193084193107%_))
                                                     (_%$%K193082193102%_
                                                      _%rest-src193112%_
                                                      _%src193110%_)))
                                                 (_%$%else193080193094%_)))))))))
                         (let ((_%$e193059%_
                                (gx#core-library-package-path-prefix
                                 _%dir193055%_)))
                           (if _%$e193059%_
                               (if (string-prefix?
                                    _%$e193059%_
                                    _%spath193016%_)
                                   (let ((_%ssi193066%_
                                          (substring
                                           _%ssi193020%_
                                           (string-length _%$e193059%_)
                                           (##string-length _%ssi193020%_)))
                                         (_%srcs193067%_
                                          (##map (lambda (_%src193064%_)
                                                   (substring
                                                    _%src193064%_
                                                    (string-length
                                                     _%$e193059%_)
                                                    (string-length
                                                     _%src193064%_)))
                                                 _%srcs193024%_)))
                                     (_%resolve193057%_
                                      _%ssi193066%_
                                      _%srcs193067%_))
                                   (_%lp193027%_ _%rest193054%_))
                               (_%resolve193057%_
                                _%ssi193020%_
                                _%srcs193024%_))))))
                    (_%$%K193034193048%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath193012%_))))
                (let ((_%$%try-match193032193051%_
                       (lambda ()
                         (if (null? _%$%rest193030193039%_)
                             (_%$%K193034193048%_)
                             (_%$%E193033193043%_)))))
                  (if (pair? _%$%rest193030193039%_)
                      (let ((_%$%tl193037193119%_
                             (##cdr _%$%rest193030193039%_))
                            (_%$%hd193036193117%_
                             (##car _%$%rest193030193039%_)))
                        (let ((_%dir193122%_ _%$%hd193036193117%_)
                              (_%rest193124%_ _%$%tl193037193119%_))
                          (_%$%K193035193114%_ _%rest193124%_ _%dir193122%_)))
                      (_%$%try-match193032193051%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath192980%_)
        (letrec ((_%resolve192982%_
                  (lambda (_%path193003%_ _%base193004%_)
                    (let ((_%$e193006%_
                           (string-rindex__0 _%base193004%_ '#\/)))
                      (if _%$e193006%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base193004%_ '0 _%$e193006%_)
                             '"/"
                             _%path193003%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path193003%_))))))))
          (let ((_%spath192984%_ (symbol->string (gx#stx-e _%modpath192980%_)))
                (_%mod192985%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod192985%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath192980%_))
            (let ((_%mpath192987%_
                   (symbol->string
                    (##structure-ref
                     _%mod192985%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp192989%_ ((_%spath192991%_ _%spath192984%_)
                                 (_%mpath192992%_ _%mpath192987%_))
                (if (string-prefix? '"../" _%spath192991%_)
                    (let ((_%$e192995%_
                           (string-rindex__0 _%mpath192992%_ '#\/)))
                      (if _%$e192995%_
                          (_%lp192989%_
                           (substring
                            _%spath192991%_
                            '3
                            (string-length _%spath192991%_))
                           (substring _%mpath192992%_ '0 _%$e192995%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath192980%_)))
                    (if (string-prefix? '"./" _%spath192991%_)
                        (_%lp192989%_
                         (substring
                          _%spath192991%_
                          '2
                          (string-length _%spath192991%_))
                         _%mpath192992%_)
                        (_%resolve192982%_
                         _%spath192991%_
                         _%mpath192992%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir192972%_)
        (let ((_%$e192974%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir192972%_))))
          (if _%$e192974%_
              (##string-append (symbol->string _%$e192974%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir192942%_ _%exists?192943%_)
        (let ((_%$e192945%_ (__hash-get gx#__module-pkg-cache _%dir192942%_)))
          (if _%$e192945%_
              _%$e192945%_
              (let* ((_%gerbil.pkg192949%_
                      (path-expand '"gerbil.pkg" _%dir192942%_))
                     (_%plist192959%_
                      (if (or _%exists?192943%_
                              (##file-exists? _%gerbil.pkg192949%_))
                          (let ((_%e192954%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg192949%_
                                  read)))
                            (if (eof-object? _%e192954%_)
                                '()
                                (if (list? _%e192954%_)
                                    _%e192954%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg192949%_
                                     _%e192954%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir192942%_
                 _%plist192959%_)
                _%plist192959%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir192965%_)
        (let ((_%exists?192967%_ '#f))
          (gx#core-library-package-plist__% _%dir192965%_ _%exists?192967%_))))
    (define gx#core-library-package-plist
      (lambda _g194788_
        (let ((_g194789_ (##length _g194788_)))
          (cond ((##fx= _g194789_ 1)
                 (apply gx#core-library-package-plist__0 _g194788_))
                ((##fx= _g194789_ 2)
                 (apply gx#core-library-package-plist__% _g194788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g194788_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx192939%_)
        (gx#core-special-module-path? _%stx192939%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx192937%_)
        (gx#core-special-module-path? _%stx192937%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx192932%_ _%char192933%_)
        (if (gx#identifier? _%stx192932%_)
            (if (interned-symbol? (gx#stx-e _%stx192932%_))
                (let ((_%str192935%_
                       (symbol->string (gx#stx-e _%stx192932%_))))
                  (if (##fx> (##string-length _%str192935%_) '1)
                      (eq? (string-ref _%str192935%_ '0) _%char192933%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx192926%_)
        (gx#core-bound-identifier?__%
         _%stx192926%_
         (lambda (_%$%g192927192929%_)
           (gx#expander-binding?__%
            _%$%g192927192929%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx192920%_)
        (gx#core-bound-identifier?__%
         _%stx192920%_
         (lambda (_%$%g192921192923%_)
           (gx#expander-binding?__% _%$%g192921192923%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx192907%_)
        (letrec ((_%module-prelude?192909%_
                  (lambda (_%e192915%_)
                    (let ((_%$e192917%_
                           (##structure-instance-of?
                            _%e192915%_
                            'gx#module-context::t)))
                      (if _%$e192917%_
                          _%$e192917%_
                          (##structure-instance-of?
                           _%e192915%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx192907%_
           (lambda (_%$%g192910192912%_)
             (gx#expander-binding?__%
              _%$%g192910192912%_
              _%module-prelude?192909%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in192838%_ _%ctx192839%_ _%force-weak?192840%_)
        (let* ((_%$%in192841192850%_ _%in192838%_)
               (_%$%E192843192853%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in192841192850%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K192844192866%_
                (lambda (_%weak?192856%_
                         _%phi192857%_
                         _%key192858%_
                         _%source192859%_)
                  (gx#core-bind!__%
                   _%key192858%_
                   (let* ((_%e192861%_
                           (gx#core-resolve-module-export _%source192859%_))
                          (__obj194770
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
                      __obj194770
                      (##unchecked-structure-ref _%e192861%_ '1 '#f '#f)
                      _%key192858%_
                      _%phi192857%_
                      _%e192861%_
                      (##unchecked-structure-ref _%source192859%_ '1 '#f '#f)
                      (let ((_%$e192863%_ _%force-weak?192840%_))
                        (if _%$e192863%_ _%$e192863%_ _%weak?192856%_)))
                     __obj194770)
                   gx#core-context-rebind?
                   _%phi192857%_
                   _%ctx192839%_))))
          (if (##structure-direct-instance-of?
               _%$%in192841192850%_
               'gx#module-import::t)
              (let* ((_%$%e192845192869%_
                      (##unchecked-structure-ref
                       _%$%in192841192850%_
                       '1
                       '#f
                       '#f))
                     (_%source192872%_ _%$%e192845192869%_)
                     (_%$%e192846192874%_
                      (##unchecked-structure-ref
                       _%$%in192841192850%_
                       '2
                       '#f
                       '#f))
                     (_%key192877%_ _%$%e192846192874%_)
                     (_%$%e192847192879%_
                      (##unchecked-structure-ref
                       _%$%in192841192850%_
                       '3
                       '#f
                       '#f))
                     (_%phi192882%_ _%$%e192847192879%_)
                     (_%$%e192848192884%_
                      (##unchecked-structure-ref
                       _%$%in192841192850%_
                       '4
                       '#f
                       '#f))
                     (_%weak?192887%_ _%$%e192848192884%_))
                (_%$%K192844192866%_
                 _%weak?192887%_
                 _%phi192882%_
                 _%key192877%_
                 _%source192872%_))
              (_%$%E192843192853%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in192892%_)
        (let* ((_%ctx192894%_ (gx#current-expander-context))
               (_%force-weak?192896%_ '#f))
          (gx#core-bind-import!__%
           _%in192892%_
           _%ctx192894%_
           _%force-weak?192896%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in192898%_ _%ctx192899%_)
        (let ((_%force-weak?192901%_ '#f))
          (gx#core-bind-import!__%
           _%in192898%_
           _%ctx192899%_
           _%force-weak?192901%_))))
    (define gx#core-bind-import!
      (lambda _g194790_
        (let ((_g194791_ (##length _g194790_)))
          (cond ((##fx= _g194791_ 1) (apply gx#core-bind-import!__0 _g194790_))
                ((##fx= _g194791_ 2) (apply gx#core-bind-import!__1 _g194790_))
                ((##fx= _g194791_ 3) (apply gx#core-bind-import!__% _g194790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g194790_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in192824%_ _%ctx192825%_)
        (gx#core-bind-import!__% _%in192824%_ _%ctx192825%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in192830%_)
        (let ((_%ctx192832%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in192830%_ _%ctx192832%_))))
    (define gx#core-bind-weak-import!
      (lambda _g194792_
        (let ((_g194793_ (##length _g194792_)))
          (cond ((##fx= _g194793_ 1)
                 (apply gx#core-bind-weak-import!__0 _g194792_))
                ((##fx= _g194793_ 2)
                 (apply gx#core-bind-weak-import!__% _g194792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g194792_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out192717%_)
        (letrec ((_%subst192719%_
                  (lambda (_%key192764%_)
                    (let* ((_%$%key192765192773%_ _%key192764%_)
                           (_%$%else192767192781%_ (lambda () _%key192764%_))
                           (_%$%K192769192811%_
                            (lambda (_%mark192784%_ _%id192785%_)
                              (let* ((_%$%mark192786192792%_ _%mark192784%_)
                                     (_%$%E192788192795%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark192786192792%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K192789192803%_
                                      (lambda (_%subst192798%_)
                                        (let ((_%$e192800%_
                                               (if _%subst192798%_
                                                   (hash-get
                                                    _%subst192798%_
                                                    _%id192785%_)
                                                   '#f)))
                                          (if _%$e192800%_
                                              _%$e192800%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key192764%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark192786192792%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e192790192806%_
                                            (##unchecked-structure-ref
                                             _%$%mark192786192792%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst192809%_
                                            _%$%e192790192806%_))
                                      (_%$%K192789192803%_ _%subst192809%_))
                                    (_%$%E192788192795%_))))))
                      (if (pair? _%$%key192765192773%_)
                          (let ((_%$%hd192770192814%_
                                 (##car _%$%key192765192773%_))
                                (_%$%tl192771192816%_
                                 (##cdr _%$%key192765192773%_)))
                            (let* ((_%id192819%_ _%$%hd192770192814%_)
                                   (_%mark192821%_ _%$%tl192771192816%_))
                              (_%$%K192769192811%_
                               _%mark192821%_
                               _%id192819%_)))
                          (_%$%else192767192781%_))))))
          (let* ((_%$%out192720192730%_ _%out192717%_)
                 (_%$%E192722192733%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out192720192730%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K192723192740%_
                  (lambda (_%phi192736%_ _%key192737%_ _%ctx192738%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx192738%_ _%phi192736%_)
                     (_%subst192719%_ _%key192737%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out192720192730%_
                 'gx#module-export::t)
                (let* ((_%$%e192724192743%_
                        (##unchecked-structure-ref
                         _%$%out192720192730%_
                         '1
                         '#f
                         '#f))
                       (_%ctx192746%_ _%$%e192724192743%_)
                       (_%$%e192725192748%_
                        (##unchecked-structure-ref
                         _%$%out192720192730%_
                         '2
                         '#f
                         '#f))
                       (_%key192751%_ _%$%e192725192748%_)
                       (_%$%e192726192753%_
                        (##unchecked-structure-ref
                         _%$%out192720192730%_
                         '3
                         '#f
                         '#f))
                       (_%phi192756%_ _%$%e192726192753%_)
                       (_%$%e192727192758%_
                        (##unchecked-structure-ref
                         _%$%out192720192730%_
                         '4
                         '#f
                         '#f))
                       (_%$%e192728192761%_
                        (##unchecked-structure-ref
                         _%$%out192720192730%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K192723192740%_
                   _%phi192756%_
                   _%key192751%_
                   _%ctx192746%_))
                (_%$%E192722192733%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out192643%_ _%rename192644%_ _%dphi192645%_)
        (let* ((_%$%out192646192656%_ _%out192643%_)
               (_%$%E192648192659%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out192646192656%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K192649192671%_
                (lambda (_%weak?192662%_
                         _%name192663%_
                         _%phi192664%_
                         _%key192665%_
                         _%ctx192666%_)
                  (##structure
                   gx#module-import::t
                   _%out192643%_
                   (let ((_%$e192668%_ _%rename192644%_))
                     (if _%$e192668%_ _%$e192668%_ _%name192663%_))
                   (fx+ _%phi192664%_ _%dphi192645%_)
                   _%weak?192662%_))))
          (if (##structure-direct-instance-of?
               _%$%out192646192656%_
               'gx#module-export::t)
              (let* ((_%$%e192650192674%_
                      (##unchecked-structure-ref
                       _%$%out192646192656%_
                       '1
                       '#f
                       '#f))
                     (_%ctx192677%_ _%$%e192650192674%_)
                     (_%$%e192651192679%_
                      (##unchecked-structure-ref
                       _%$%out192646192656%_
                       '2
                       '#f
                       '#f))
                     (_%key192682%_ _%$%e192651192679%_)
                     (_%$%e192652192684%_
                      (##unchecked-structure-ref
                       _%$%out192646192656%_
                       '3
                       '#f
                       '#f))
                     (_%phi192687%_ _%$%e192652192684%_)
                     (_%$%e192653192689%_
                      (##unchecked-structure-ref
                       _%$%out192646192656%_
                       '4
                       '#f
                       '#f))
                     (_%name192692%_ _%$%e192653192689%_)
                     (_%$%e192654192694%_
                      (##unchecked-structure-ref
                       _%$%out192646192656%_
                       '5
                       '#f
                       '#f))
                     (_%weak?192697%_ _%$%e192654192694%_))
                (_%$%K192649192671%_
                 _%weak?192697%_
                 _%name192692%_
                 _%phi192687%_
                 _%key192682%_
                 _%ctx192677%_))
              (_%$%E192648192659%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out192702%_)
        (let* ((_%rename192704%_ '#f) (_%dphi192706%_ '0))
          (gx#core-module-export->import__%
           _%out192702%_
           _%rename192704%_
           _%dphi192706%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out192708%_ _%rename192709%_)
        (let ((_%dphi192711%_ '0))
          (gx#core-module-export->import__%
           _%out192708%_
           _%rename192709%_
           _%dphi192711%_))))
    (define gx#core-module-export->import
      (lambda _g194794_
        (let ((_g194795_ (##length _g194794_)))
          (cond ((##fx= _g194795_ 1)
                 (apply gx#core-module-export->import__0 _g194794_))
                ((##fx= _g194795_ 2)
                 (apply gx#core-module-export->import__1 _g194794_))
                ((##fx= _g194795_ 3)
                 (apply gx#core-module-export->import__% _g194794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g194794_))))))
    (define gx#core-expand-module%
      (lambda (_%stx192542%_)
        (letrec ((_%make-context192544%_
                  (lambda (_%id192621%_)
                    (let* ((_%super192623%_ (gx#current-expander-context))
                           (_%bind-id192625%_ (gx#stx-e _%id192621%_))
                           (_%mod-id192627%_
                            (if (##structure-instance-of?
                                 _%super192623%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super192623%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id192625%_)
                                _%bind-id192625%_))
                           (_%ns192629%_ (symbol->string _%mod-id192627%_))
                           (_%path192639%_
                            (if (##structure-instance-of?
                                 _%super192623%_
                                 'gx#module-context::t)
                                (let ((_%path192631%_
                                       (##unchecked-structure-ref
                                        _%super192623%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path192631%_)
                                          (null? _%path192631%_))
                                      (cons _%bind-id192625%_ _%path192631%_)
                                      (if (not _%path192631%_)
                                          _%bind-id192625%_
                                          (cons _%bind-id192625%_
                                                (cons _%path192631%_ '())))))
                                _%bind-id192625%_))
                           (__obj194771
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
                       __obj194771
                       _%mod-id192627%_
                       _%super192623%_
                       _%ns192629%_
                       _%path192639%_)
                      __obj194771)))
                 (_%valid-module-id?192545%_
                  (lambda (_%id192596%_)
                    (let* ((_%str192598%_ (symbol->string _%id192596%_))
                           (_%len192600%_ (##string-length _%str192598%_)))
                      (if (##fx>= _%len192600%_ '1)
                          (let _%loop192603%_ ((_%index192605%_
                                                (##fx- (##string-length
                                                        _%str192598%_)
                                                       '1)))
                            (if (##fx>= _%index192605%_ '0)
                                (let ((_%c192607%_
                                       (string-ref
                                        _%str192598%_
                                        _%index192605%_)))
                                  (if (or (and (##char>=? _%c192607%_ '#\a)
                                               (##char<=? _%c192607%_ '#\z))
                                          (and (##char>=? _%c192607%_ '#\A)
                                               (##char<=? _%c192607%_ '#\Z))
                                          (and (##char>=? _%c192607%_ '#\0)
                                               (##char<=? _%c192607%_ '#\9))
                                          (##char=? _%c192607%_ '#\_)
                                          (##char=? _%c192607%_ '#\-))
                                      (_%loop192603%_
                                       (##fx- _%index192605%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e192546192556%_ _%stx192542%_)
                 (_%$%E192548192560%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e192546192556%_)))
                 (_%$%E192547192592%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e192546192556%_)
                        (let ((_%$%e192549192564%_
                               (gx#syntax-e _%$%e192546192556%_)))
                          (let ((_%$%hd192550192567%_
                                 (##car _%$%e192549192564%_))
                                (_%$%tl192551192569%_
                                 (##cdr _%$%e192549192564%_)))
                            (if (gx#stx-pair? _%$%tl192551192569%_)
                                (let ((_%$%e192552192572%_
                                       (gx#syntax-e _%$%tl192551192569%_)))
                                  (let ((_%$%hd192553192575%_
                                         (##car _%$%e192552192572%_))
                                        (_%$%tl192554192577%_
                                         (##cdr _%$%e192552192572%_)))
                                    (let* ((_%id192580%_ _%$%hd192553192575%_)
                                           (_%body192582%_
                                            _%$%tl192554192577%_))
                                      (if (and (gx#identifier? _%id192580%_)
                                               (gx#stx-list? _%body192582%_))
                                          (if (_%valid-module-id?192545%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx192584%_
                                                      (_%make-context192544%_
                                                       _%id192580%_))
                                                     (_%body192586%_
                                                      (gx#core-expand-module-begin
                                                       _%body192582%_
                                                       _%ctx192584%_))
                                                     (_%body192588%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body192586%_)
                                                       (gx#stx-source
                                                        _%stx192542%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx192584%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body192588%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx192584%_
                                                 _%body192588%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id192580%_
                                                 _%ctx192584%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id192580%_)
                                                  _%body192588%_)
                                                 (gx#stx-source
                                                  _%stx192542%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx192542%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E192548192560%_)))))
                                (_%$%E192548192560%_))))
                        (_%$%E192548192560%_)))))
            (_%$%E192547192592%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body192507%_ _%ctx192508%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx192512%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body192507%_)))
                     (_%$%e192513192520%_ _%stx192512%_)
                     (_%$%E192515192524%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx192512%_)))
                     (_%$%E192514192538%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e192513192520%_)
                            (let ((_%$%e192516192528%_
                                   (gx#syntax-e _%$%e192513192520%_)))
                              (let ((_%$%hd192517192531%_
                                     (##car _%$%e192516192528%_))
                                    (_%$%tl192518192533%_
                                     (##cdr _%$%e192516192528%_)))
                                (if (and (gx#identifier? _%$%hd192517192531%_)
                                         (gx#core-identifier=?
                                          _%$%hd192517192531%_
                                          '%#begin-module))
                                    (let ((_%body192536%_
                                           _%$%tl192518192533%_))
                                      (if (gx#sealed-syntax? _%stx192512%_)
                                          _%body192536%_
                                          (gx#core-expand-module-body
                                           _%body192536%_)))
                                    (_%$%E192515192524%_))))
                            (_%$%E192515192524%_)))))
                (_%$%E192514192538%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx192508%_)))
    (define gx#core-expand-module-body
      (lambda (_%body192204%_)
        (letrec ((_%expand-special192206%_
                  (lambda (_%hd192335%_ _%K192336%_ _%rest192337%_ _%r192338%_)
                    (let* ((_%$%e192339192379%_ _%hd192335%_)
                           (_%$%E192374192383%_
                            (lambda ()
                              (_%K192336%_
                               _%rest192337%_
                               (cons (gx#core-expand-top _%hd192335%_)
                                     _%r192338%_))))
                           (_%$%E192361192395%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192339192379%_)
                                  (let ((_%$%e192375192387%_
                                         (gx#syntax-e _%$%e192339192379%_)))
                                    (let ((_%$%hd192376192390%_
                                           (##car _%$%e192375192387%_))
                                          (_%$%tl192377192392%_
                                           (##cdr _%$%e192375192387%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192376192390%_)
                                               (gx#core-identifier=?
                                                _%$%hd192376192390%_
                                                '%#export))
                                          (_%K192336%_
                                           _%rest192337%_
                                           (cons _%hd192335%_ _%r192338%_))
                                          (_%$%E192374192383%_))))
                                  (_%$%E192374192383%_))))
                           (_%$%E192351192437%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192339192379%_)
                                  (let ((_%$%e192362192399%_
                                         (gx#syntax-e _%$%e192339192379%_)))
                                    (let ((_%$%hd192363192402%_
                                           (##car _%$%e192362192399%_))
                                          (_%$%tl192364192404%_
                                           (##cdr _%$%e192362192399%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192363192402%_)
                                               (gx#core-identifier=?
                                                _%$%hd192363192402%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl192364192404%_)
                                              (let ((_%$%e192365192407%_
                                                     (gx#syntax-e
                                                      _%$%tl192364192404%_)))
                                                (let ((_%$%hd192366192410%_
                                                       (##car _%$%e192365192407%_))
                                                      (_%$%tl192367192412%_
                                                       (##cdr _%$%e192365192407%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd192366192410%_)
                                                      (let ((_%$%e192371192415%_
                                                             (gx#syntax-e
                                                              _%$%hd192366192410%_)))
                                                        (let ((_%$%hd192372192418%_
                                                               (##car _%$%e192371192415%_))
                                                              (_%$%tl192373192420%_
                                                               (##cdr _%$%e192371192415%_)))
                                                          (let ((_%id192423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd192372192418%_))
                    (if (gx#stx-null? _%$%tl192373192420%_)
                        (if (gx#stx-pair? _%$%tl192367192412%_)
                            (let ((_%$%e192368192425%_
                                   (gx#syntax-e _%$%tl192367192412%_)))
                              (let ((_%$%hd192369192428%_
                                     (##car _%$%e192368192425%_))
                                    (_%$%tl192370192430%_
                                     (##cdr _%$%e192368192425%_)))
                                (let ((_%props192433%_ _%$%hd192369192428%_))
                                  (if (gx#stx-null? _%$%tl192370192430%_)
                                      (let ((_%bind192435%_
                                             (gx#resolve-identifier__0
                                              _%id192423%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind192435%_
                                         _%props192433%_)
                                        (_%K192336%_
                                         _%rest192337%_
                                         _%r192338%_))
                                      (_%$%E192361192395%_)))))
                            (_%$%E192361192395%_))
                        (_%$%E192361192395%_)))))
              (_%$%E192361192395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192361192395%_))
                                          (_%$%E192361192395%_))))
                                  (_%$%E192361192395%_))))
                           (_%$%E192341192469%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192339192379%_)
                                  (let ((_%$%e192352192441%_
                                         (gx#syntax-e _%$%e192339192379%_)))
                                    (let ((_%$%hd192353192444%_
                                           (##car _%$%e192352192441%_))
                                          (_%$%tl192354192446%_
                                           (##cdr _%$%e192352192441%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192353192444%_)
                                               (gx#core-identifier=?
                                                _%$%hd192353192444%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl192354192446%_)
                                              (let ((_%$%e192355192449%_
                                                     (gx#syntax-e
                                                      _%$%tl192354192446%_)))
                                                (let ((_%$%hd192356192452%_
                                                       (##car _%$%e192355192449%_))
                                                      (_%$%tl192357192454%_
                                                       (##cdr _%$%e192355192449%_)))
                                                  (let ((_%hd-bind192457%_
                                                         _%$%hd192356192452%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl192357192454%_)
                                                        (let ((_%$%e192358192459%_
                                                               (gx#syntax-e
                                                                _%$%tl192357192454%_)))
                                                          (let ((_%$%hd192359192462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e192358192459%_))
                        (_%$%tl192360192464%_ (##cdr _%$%e192358192459%_)))
                    (let ((_%expr192467%_ _%$%hd192359192462%_))
                      (if (gx#stx-null? _%$%tl192360192464%_)
                          (if (gx#core-bind-values? _%hd-bind192457%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind192457%_)
                                (_%K192336%_
                                 _%rest192337%_
                                 (cons _%hd192335%_ _%r192338%_)))
                              (_%$%E192351192437%_))
                          (_%$%E192351192437%_)))))
                (_%$%E192351192437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192351192437%_))
                                          (_%$%E192351192437%_))))
                                  (_%$%E192351192437%_))))
                           (_%$%E192340192503%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192339192379%_)
                                  (let ((_%$%e192342192473%_
                                         (gx#syntax-e _%$%e192339192379%_)))
                                    (let ((_%$%hd192343192476%_
                                           (##car _%$%e192342192473%_))
                                          (_%$%tl192344192478%_
                                           (##cdr _%$%e192342192473%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192343192476%_)
                                               (gx#core-identifier=?
                                                _%$%hd192343192476%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl192344192478%_)
                                              (let ((_%$%e192345192481%_
                                                     (gx#syntax-e
                                                      _%$%tl192344192478%_)))
                                                (let ((_%$%hd192346192484%_
                                                       (##car _%$%e192345192481%_))
                                                      (_%$%tl192347192486%_
                                                       (##cdr _%$%e192345192481%_)))
                                                  (let ((_%hd-bind192489%_
                                                         _%$%hd192346192484%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl192347192486%_)
                                                        (let ((_%$%e192348192491%_
                                                               (gx#syntax-e
                                                                _%$%tl192347192486%_)))
                                                          (let ((_%$%hd192349192494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e192348192491%_))
                        (_%$%tl192350192496%_ (##cdr _%$%e192348192491%_)))
                    (let* ((_%expr192499%_ _%$%hd192349192494%_)
                           (_%props192501%_ _%$%tl192350192496%_))
                      (if (and (gx#core-bind-values? _%hd-bind192489%_)
                               (gx#stx-list? _%props192501%_)
                               (not (gx#stx-null? _%props192501%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind192489%_)
                            (_%K192336%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind192489%_
                                          (cons _%props192501%_ '())))
                                   _%rest192337%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind192489%_
                                          (cons _%expr192499%_ '())))
                                   _%r192338%_)))
                          (_%$%E192341192469%_)))))
                (_%$%E192341192469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192341192469%_))
                                          (_%$%E192341192469%_))))
                                  (_%$%E192341192469%_)))))
                      (_%$%E192340192503%_))))
                 (_%expand-body192207%_
                  (lambda (_%rbody192209%_)
                    (let _%lp192211%_ ((_%rest192213%_ _%rbody192209%_)
                                       (_%body192214%_ '()))
                      (let* ((_%$%rest192215192223%_ _%rest192213%_)
                             (_%$%else192217192231%_
                              (lambda () _%body192214%_))
                             (_%$%K192219192323%_
                              (lambda (_%rest192234%_ _%hd192235%_)
                                (let* ((_%$%e192236192257%_ _%hd192235%_)
                                       (_%$%E192252192261%_
                                        (lambda ()
                                          (_%lp192211%_
                                           _%rest192234%_
                                           (cons (gx#core-expand-expression
                                                  _%hd192235%_)
                                                 _%body192214%_))))
                                       (_%$%E192248192275%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192236192257%_)
                                              (let ((_%$%e192253192265%_
                                                     (gx#syntax-e
                                                      _%$%e192236192257%_)))
                                                (let ((_%$%hd192254192268%_
                                                       (##car _%$%e192253192265%_))
                                                      (_%$%tl192255192270%_
                                                       (##cdr _%$%e192253192265%_)))
                                                  (let ((_%form192273%_
                                                         _%$%hd192254192268%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form192273%_
                                                         gx#special-form-binding?)
                                                        (_%lp192211%_
                                                         _%rest192234%_
                                                         (cons _%hd192235%_
                                                               _%body192214%_))
                                                        (_%$%E192252192261%_)))))
                                              (_%$%E192252192261%_))))
                                       (_%$%E192238192287%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192236192257%_)
                                              (let ((_%$%e192249192279%_
                                                     (gx#syntax-e
                                                      _%$%e192236192257%_)))
                                                (let ((_%$%hd192250192282%_
                                                       (##car _%$%e192249192279%_))
                                                      (_%$%tl192251192284%_
                                                       (##cdr _%$%e192249192279%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd192250192282%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd192250192282%_
                                                            '%#export))
                                                      (_%lp192211%_
                                                       _%rest192234%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd192235%_)
                                                             _%body192214%_))
                                                      (_%$%E192248192275%_))))
                                              (_%$%E192248192275%_))))
                                       (_%$%E192237192319%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192236192257%_)
                                              (let ((_%$%e192239192291%_
                                                     (gx#syntax-e
                                                      _%$%e192236192257%_)))
                                                (let ((_%$%hd192240192294%_
                                                       (##car _%$%e192239192291%_))
                                                      (_%$%tl192241192296%_
                                                       (##cdr _%$%e192239192291%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd192240192294%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd192240192294%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl192241192296%_)
                                                          (let ((_%$%e192242192299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl192241192296%_)))
                    (let ((_%$%hd192243192302%_ (##car _%$%e192242192299%_))
                          (_%$%tl192244192304%_ (##cdr _%$%e192242192299%_)))
                      (let ((_%hd-bind192307%_ _%$%hd192243192302%_))
                        (if (gx#stx-pair? _%$%tl192244192304%_)
                            (let ((_%$%e192245192309%_
                                   (gx#syntax-e _%$%tl192244192304%_)))
                              (let ((_%$%hd192246192312%_
                                     (##car _%$%e192245192309%_))
                                    (_%$%tl192247192314%_
                                     (##cdr _%$%e192245192309%_)))
                                (let ((_%expr192317%_ _%$%hd192246192312%_))
                                  (if (gx#stx-null? _%$%tl192247192314%_)
                                      (_%lp192211%_
                                       _%rest192234%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind192307%_)
                                               (gx#core-expand-expression
                                                _%expr192317%_))
                                              (gx#stx-source _%hd192235%_))
                                             _%body192214%_))
                                      (_%$%E192238192287%_)))))
                            (_%$%E192238192287%_)))))
                  (_%$%E192238192287%_))
              (_%$%E192238192287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192238192287%_)))))
                                  (_%$%E192237192319%_)))))
                        (if (pair? _%$%rest192215192223%_)
                            (let ((_%$%hd192220192326%_
                                   (##car _%$%rest192215192223%_))
                                  (_%$%tl192221192328%_
                                   (##cdr _%$%rest192215192223%_)))
                              (let* ((_%hd192331%_ _%$%hd192220192326%_)
                                     (_%rest192333%_ _%$%tl192221192328%_))
                                (_%$%K192219192323%_
                                 _%rest192333%_
                                 _%hd192331%_)))
                            (_%$%else192217192231%_)))))))
          (_%expand-body192207%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body192204%_)
            _%expand-special192206%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx192045%_
               _%expanded?192046%_
               _%method192047%_
               _%current-phi192048%_
               _%expand1192049%_)
        (letrec ((_%K192051%_
                  (lambda (_%rest192171%_ _%r192172%_)
                    (let* ((_%$%e192173192180%_ _%rest192171%_)
                           (_%$%E192175192184%_ (lambda () _%r192172%_))
                           (_%$%E192174192200%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192173192180%_)
                                  (let ((_%$%e192176192188%_
                                         (gx#syntax-e _%$%e192173192180%_)))
                                    (let ((_%$%hd192177192191%_
                                           (##car _%$%e192176192188%_))
                                          (_%$%tl192178192193%_
                                           (##cdr _%$%e192176192188%_)))
                                      (let* ((_%hd192196%_
                                              _%$%hd192177192191%_)
                                             (_%rest192198%_
                                              _%$%tl192178192193%_))
                                        (_%step192052%_
                                         _%hd192196%_
                                         _%rest192198%_
                                         _%r192172%_))))
                                  (_%$%E192175192184%_)))))
                      (_%$%E192174192200%_))))
                 (_%step192052%_
                  (lambda (_%hd192085%_ _%rest192086%_ _%r192087%_)
                    (let* ((_%$%e192088192106%_ _%hd192085%_)
                           (_%$%E192101192110%_
                            (lambda ()
                              (if (_%expanded?192046%_ (gx#stx-e _%hd192085%_))
                                  (_%K192051%_
                                   _%rest192086%_
                                   (cons (gx#stx-e _%hd192085%_) _%r192087%_))
                                  (_%expand1192049%_
                                   _%hd192085%_
                                   _%K192051%_
                                   _%rest192086%_
                                   _%r192087%_))))
                           (_%$%E192097192126%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192088192106%_)
                                  (let ((_%$%e192102192114%_
                                         (gx#syntax-e _%$%e192088192106%_)))
                                    (let ((_%$%hd192103192117%_
                                           (##car _%$%e192102192114%_))
                                          (_%$%tl192104192119%_
                                           (##cdr _%$%e192102192114%_)))
                                      (let* ((_%macro192122%_
                                              _%$%hd192103192117%_)
                                             (_%body192124%_
                                              _%$%tl192104192119%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro192122%_
                                             gx#syntax-binding?)
                                            (_%K192051%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro192122%_)
                                                    _%hd192085%_
                                                    _%method192047%_)
                                                   _%rest192086%_)
                                             _%r192087%_)
                                            (_%$%E192101192110%_)))))
                                  (_%$%E192101192110%_))))
                           (_%$%E192090192140%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192088192106%_)
                                  (let ((_%$%e192098192130%_
                                         (gx#syntax-e _%$%e192088192106%_)))
                                    (let ((_%$%hd192099192133%_
                                           (##car _%$%e192098192130%_))
                                          (_%$%tl192100192135%_
                                           (##cdr _%$%e192098192130%_)))
                                      (if (eq? (gx#stx-e _%$%hd192099192133%_)
                                               'begin:)
                                          (let ((_%body192138%_
                                                 _%$%tl192100192135%_))
                                            (_%K192051%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest192086%_
                                              _%body192138%_)
                                             _%r192087%_))
                                          (_%$%E192097192126%_))))
                                  (_%$%E192097192126%_))))
                           (_%$%E192089192167%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192088192106%_)
                                  (let ((_%$%e192091192144%_
                                         (gx#syntax-e _%$%e192088192106%_)))
                                    (let ((_%$%hd192092192147%_
                                           (##car _%$%e192091192144%_))
                                          (_%$%tl192093192149%_
                                           (##cdr _%$%e192091192144%_)))
                                      (if (eq? (gx#stx-e _%$%hd192092192147%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl192093192149%_)
                                              (let ((_%$%e192094192152%_
                                                     (gx#syntax-e
                                                      _%$%tl192093192149%_)))
                                                (let ((_%$%hd192095192155%_
                                                       (##car _%$%e192094192152%_))
                                                      (_%$%tl192096192157%_
                                                       (##cdr _%$%e192094192152%_)))
                                                  (let* ((_%dphi192160%_
                                                          _%$%hd192095192155%_)
                                                         (_%body192162%_
                                                          _%$%tl192096192157%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi192160%_)
                                                        (let ((_%rbody192165%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K192051%_ _%body192162%_ '()))
                        _%current-phi192048%_
                        (fx+ (gx#stx-e _%dphi192160%_)
                             (_%current-phi192048%_)))))
                  (_%K192051%_
                   _%rest192086%_
                   (append _%rbody192165%_ _%r192087%_)))
                (_%$%E192090192140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192090192140%_))
                                          (_%$%E192090192140%_))))
                                  (_%$%E192090192140%_)))))
                      (_%$%E192089192167%_)))))
          (let* ((_%$%e192053192060%_ _%stx192045%_)
                 (_%$%E192055192064%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e192053192060%_)))
                 (_%$%E192054192081%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e192053192060%_)
                        (let ((_%$%e192056192068%_
                               (gx#syntax-e _%$%e192053192060%_)))
                          (let ((_%$%hd192057192071%_
                                 (##car _%$%e192056192068%_))
                                (_%$%tl192058192073%_
                                 (##cdr _%$%e192056192068%_)))
                            (let ((_%body192076%_ _%$%tl192058192073%_))
                              (if (_%current-phi192048%_)
                                  (_%K192051%_ _%body192076%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K192051%_ _%body192076%_ '()))
                                   _%current-phi192048%_
                                   (gx#current-expander-phi))))))
                        (_%$%E192055192064%_)))))
            (_%$%E192054192081%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx191699%_ _%internal-expand?191700%_)
        (letrec ((_%expand1191702%_
                  (lambda (_%hd192017%_ _%K192018%_ _%rest192019%_ _%r192020%_)
                    (if (gx#core-bound-module? _%hd192017%_)
                        (_%import1191703%_
                         (gx#syntax-local-e__0 _%hd192017%_)
                         _%K192018%_
                         _%rest192019%_
                         _%r192020%_)
                        (if (gx#core-library-module-path? _%hd192017%_)
                            (_%import1191703%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd192017%_))
                             _%K192018%_
                             _%rest192019%_
                             _%r192020%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd192017%_)
                                (_%import1191703%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd192017%_))
                                 _%K192018%_
                                 _%rest192019%_
                                 _%r192020%_)
                                (let ((_%e192026%_ (gx#stx-e _%hd192017%_)))
                                  (if (pair? _%e192026%_)
                                      (let ((_%$e192029%_
                                             (gx#stx-e (##car _%e192026%_))))
                                        (if (eq? 'spec: _%$e192029%_)
                                            (_%import-spec191706%_
                                             _%hd192017%_
                                             _%K192018%_
                                             _%rest192019%_
                                             _%r192020%_)
                                            (if (eq? 'in: _%$e192029%_)
                                                (_%import-submodule191704%_
                                                 _%hd192017%_
                                                 _%K192018%_
                                                 _%rest192019%_
                                                 _%r192020%_)
                                                (if (eq? 'runtime:
                                                         _%$e192029%_)
                                                    (_%import-runtime191705%_
                                                     _%hd192017%_
                                                     _%K192018%_
                                                     _%rest192019%_
                                                     _%r192020%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx191699%_
                                                     _%hd192017%_)))))
                                      (if (string? _%e192026%_)
                                          (_%import1191703%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd192017%_
                                             (gx#stx-source _%stx191699%_)))
                                           _%K192018%_
                                           _%rest192019%_
                                           _%r192020%_)
                                          (if (##structure-instance-of?
                                               _%e192026%_
                                               'gx#module-context::t)
                                              (_%K192018%_
                                               _%rest192019%_
                                               (cons _%e192026%_ _%r192020%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx191699%_
                                               _%hd192017%_))))))))))
                 (_%import1191703%_
                  (lambda (_%ctx192006%_
                           _%K192007%_
                           _%rest192008%_
                           _%r192009%_)
                    (let ((_%dphi192011%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K192007%_
                       _%rest192008%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx192006%_
                              _%dphi192011%_
                              (map (lambda (_%$%g192012192014%_)
                                     (gx#core-module-export->import__%
                                      _%$%g192012192014%_
                                      '#f
                                      _%dphi192011%_))
                                   (##unchecked-structure-ref
                                    _%ctx192006%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r192009%_)))))
                 (_%import-submodule191704%_
                  (lambda (_%hd191973%_ _%K191974%_ _%rest191975%_ _%r191976%_)
                    (let* ((_%$%e191977191984%_ _%hd191973%_)
                           (_%$%E191979191988%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191977191984%_)))
                           (_%$%E191978192002%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191977191984%_)
                                  (let ((_%$%e191980191992%_
                                         (gx#syntax-e _%$%e191977191984%_)))
                                    (let ((_%$%hd191981191995%_
                                           (##car _%$%e191980191992%_))
                                          (_%$%tl191982191997%_
                                           (##cdr _%$%e191980191992%_)))
                                      (let ((_%spath192000%_
                                             _%$%tl191982191997%_))
                                        (_%import1191703%_
                                         (_%import-spec-source191707%_
                                          _%spath192000%_)
                                         _%K191974%_
                                         _%rest191975%_
                                         _%r191976%_))))
                                  (_%$%E191979191988%_)))))
                      (_%$%E191978192002%_))))
                 (_%import-runtime191705%_
                  (lambda (_%hd191940%_ _%K191941%_ _%rest191942%_ _%r191943%_)
                    (let* ((_%$%e191944191951%_ _%hd191940%_)
                           (_%$%E191946191955%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191944191951%_)))
                           (_%$%E191945191969%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191944191951%_)
                                  (let ((_%$%e191947191959%_
                                         (gx#syntax-e _%$%e191944191951%_)))
                                    (let ((_%$%hd191948191962%_
                                           (##car _%$%e191947191959%_))
                                          (_%$%tl191949191964%_
                                           (##cdr _%$%e191947191959%_)))
                                      (let ((_%spath191967%_
                                             _%$%tl191949191964%_))
                                        (_%K191941%_
                                         _%rest191942%_
                                         (cons (_%import-spec-source191707%_
                                                _%spath191967%_)
                                               _%r191943%_)))))
                                  (_%$%E191946191955%_)))))
                      (_%$%E191945191969%_))))
                 (_%import-spec191706%_
                  (lambda (_%hd191778%_ _%K191779%_ _%rest191780%_ _%r191781%_)
                    (let* ((_%$%e191782191799%_ _%hd191778%_)
                           (_%$%E191791191803%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191782191799%_)))
                           (_%$%E191784191914%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191782191799%_)
                                  (let ((_%$%e191792191807%_
                                         (gx#syntax-e _%$%e191782191799%_)))
                                    (let ((_%$%hd191793191810%_
                                           (##car _%$%e191792191807%_))
                                          (_%$%tl191794191812%_
                                           (##cdr _%$%e191792191807%_)))
                                      (if (gx#stx-pair? _%$%tl191794191812%_)
                                          (let ((_%$%e191795191815%_
                                                 (gx#syntax-e
                                                  _%$%tl191794191812%_)))
                                            (let ((_%$%hd191796191818%_
                                                   (##car _%$%e191795191815%_))
                                                  (_%$%tl191797191820%_
                                                   (##cdr _%$%e191795191815%_)))
                                              (let* ((_%path191823%_
                                                      _%$%hd191796191818%_)
                                                     (_%specs191825%_
                                                      _%$%tl191797191820%_))
                                                (let ((_%src-ctx191827%_
                                                       (_%import-spec-source191707%_
                                                        _%path191823%_))
                                                      (_%exports191828%_
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
                                                      (_%specs191829%_
                                                       (gx#syntax->list
                                                        _%specs191825%_)))
                                                  (for-each
                                                   (lambda (_%out191831%_)
                                                     (__hash-put!
                                                      _%exports191828%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out191831%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out191831%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out191831%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx191827%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K191779%_
                                                   _%rest191780%_
                                                   (foldl__0
                                                    (lambda (_%spec191833%_
                                                             _%r191834%_)
                                                      (let* ((_%$%e191835191851%_
                                                              _%spec191833%_)
                                                             (_%$%E191837191855%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e191835191851%_)))
                     (_%$%E191836191910%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e191835191851%_)
                            (let ((_%$%e191838191859%_
                                   (gx#syntax-e _%$%e191835191851%_)))
                              (let ((_%$%hd191839191862%_
                                     (##car _%$%e191838191859%_))
                                    (_%$%tl191840191864%_
                                     (##cdr _%$%e191838191859%_)))
                                (let ((_%phi191867%_ _%$%hd191839191862%_))
                                  (if (gx#stx-pair? _%$%tl191840191864%_)
                                      (let ((_%$%e191841191869%_
                                             (gx#syntax-e
                                              _%$%tl191840191864%_)))
                                        (let ((_%$%hd191842191872%_
                                               (##car _%$%e191841191869%_))
                                              (_%$%tl191843191874%_
                                               (##cdr _%$%e191841191869%_)))
                                          (let ((_%name191877%_
                                                 _%$%hd191842191872%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl191843191874%_)
                                                (let ((_%$%e191844191879%_
                                                       (gx#syntax-e
                                                        _%$%tl191843191874%_)))
                                                  (let ((_%$%hd191845191882%_
                                                         (##car _%$%e191844191879%_))
                                                        (_%$%tl191846191884%_
                                                         (##cdr _%$%e191844191879%_)))
                                                    (let ((_%src-phi191887%_
                                                           _%$%hd191845191882%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl191846191884%_)
                                                          (let ((_%$%e191847191889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl191846191884%_)))
                    (let ((_%$%hd191848191892%_ (##car _%$%e191847191889%_))
                          (_%$%tl191849191894%_ (##cdr _%$%e191847191889%_)))
                      (let ((_%src-name191897%_ _%$%hd191848191892%_))
                        (if (gx#stx-null? _%$%tl191849191894%_)
                            (if (and (gx#stx-fixnum? _%src-phi191887%_)
                                     (gx#identifier? _%src-name191897%_)
                                     (gx#stx-fixnum? _%phi191867%_)
                                     (gx#identifier? _%name191877%_))
                                (let ((_%src-phi191899%_
                                       (gx#stx-e _%src-phi191887%_))
                                      (_%src-name191900%_
                                       (gx#core-identifier-key
                                        _%src-name191897%_))
                                      (_%phi191901%_ (gx#stx-e _%phi191867%_))
                                      (_%name191902%_
                                       (gx#core-identifier-key
                                        _%name191877%_)))
                                  (let ((_%$e191904%_
                                         (__hash-get
                                          _%exports191828%_
                                          (cons _%src-phi191899%_
                                                _%src-name191900%_))))
                                    (if _%$e191904%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e191904%_
                                               _%name191902%_
                                               (fx- _%phi191901%_
                                                    _%src-phi191899%_))
                                              _%r191834%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx191699%_
                                         _%hd191778%_))))
                                (_%$%E191837191855%_))
                            (_%$%E191837191855%_)))))
                  (_%$%E191837191855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E191837191855%_)))))
                                      (_%$%E191837191855%_)))))
                            (_%$%E191837191855%_)))))
                (_%$%E191836191910%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r191781%_
                                                    _%specs191829%_))))))
                                          (_%$%E191791191803%_))))
                                  (_%$%E191791191803%_))))
                           (_%$%E191783191936%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191782191799%_)
                                  (let ((_%$%e191785191918%_
                                         (gx#syntax-e _%$%e191782191799%_)))
                                    (let ((_%$%hd191786191921%_
                                           (##car _%$%e191785191918%_))
                                          (_%$%tl191787191923%_
                                           (##cdr _%$%e191785191918%_)))
                                      (if (gx#stx-pair? _%$%tl191787191923%_)
                                          (let ((_%$%e191788191926%_
                                                 (gx#syntax-e
                                                  _%$%tl191787191923%_)))
                                            (let ((_%$%hd191789191929%_
                                                   (##car _%$%e191788191926%_))
                                                  (_%$%tl191790191931%_
                                                   (##cdr _%$%e191788191926%_)))
                                              (let ((_%path191934%_
                                                     _%$%hd191789191929%_))
                                                (if (gx#stx-null?
                                                     _%$%tl191790191931%_)
                                                    (_%K191779%_
                                                     _%rest191780%_
                                                     (cons (_%import-spec-source191707%_
                                                            _%path191934%_)
                                                           _%r191781%_))
                                                    (_%$%E191784191914%_)))))
                                          (_%$%E191784191914%_))))
                                  (_%$%E191784191914%_)))))
                      (_%$%E191783191936%_))))
                 (_%import-spec-source191707%_
                  (lambda (_%spath191776%_)
                    (gx#core-import-nested-module
                     _%spath191776%_
                     _%stx191699%_)))
                 (_%import!191708%_
                  (lambda (_%rbody191721%_)
                    (letrec* ((_%current-ctx191723%_
                               (gx#current-expander-context))
                              (_%deps191724%_ (make-hash-table-eq))
                              (_%bind!191725%_
                               (lambda (_%hd191774%_)
                                 (gx#core-bind-import!__1
                                  _%hd191774%_
                                  _%current-ctx191723%_))))
                      (let _%lp191727%_ ((_%rest191729%_ _%rbody191721%_)
                                         (_%body191730%_ '()))
                        (let* ((_%$%rest191731191739%_ _%rest191729%_)
                               (_%$%else191733191750%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx191723%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx191723%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx191723%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body191730%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx191747%_ _%_191748%_)
                                     (gx#eval-module _%ctx191747%_))
                                   _%deps191724%_)
                                  _%body191730%_))
                               (_%$%K191735191762%_
                                (lambda (_%rest191753%_ _%hd191754%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd191754%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!191725%_ _%hd191754%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd191754%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd191754%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps191724%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd191754%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd191754%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!191725%_
                                             (##unchecked-structure-ref
                                              _%hd191754%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd191754%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps191724%_
                                                 (##unchecked-structure-ref
                                                  _%hd191754%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e191758%_
                                                 (##structure-instance-of?
                                                  _%hd191754%_
                                                  'gx#module-context::t)))
                                            (if _%$e191758%_
                                                _%$e191758%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx191699%_
                                                 _%hd191754%_)))))
                                  (_%lp191727%_
                                   _%rest191753%_
                                   (cons _%hd191754%_ _%body191730%_)))))
                          (if (pair? _%$%rest191731191739%_)
                              (let ((_%$%hd191736191765%_
                                     (##car _%$%rest191731191739%_))
                                    (_%$%tl191737191767%_
                                     (##cdr _%$%rest191731191739%_)))
                                (let* ((_%hd191770%_ _%$%hd191736191765%_)
                                       (_%rest191772%_ _%$%tl191737191767%_))
                                  (_%$%K191735191762%_
                                   _%rest191772%_
                                   _%hd191770%_)))
                              (_%$%else191733191750%_)))))))
                 (_%expanded-import?191709%_
                  (lambda (_%e191713%_)
                    (let ((_%$e191715%_
                           (##structure-direct-instance-of?
                            _%e191713%_
                            'gx#import-set::t)))
                      (if _%$e191715%_
                          _%$e191715%_
                          (let ((_%$e191718%_
                                 (##structure-direct-instance-of?
                                  _%e191713%_
                                  'gx#module-import::t)))
                            (if _%$e191718%_
                                _%$e191718%_
                                (##structure-instance-of?
                                 _%e191713%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody191711%_
                 (gx#core-expand-import/export
                  _%stx191699%_
                  _%expanded-import?191709%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1191702%_)))
            (if _%internal-expand?191700%_
                (reverse _%rbody191711%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!191708%_ _%rbody191711%_))
                 (gx#stx-source _%stx191699%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx192038%_)
        (let ((_%internal-expand?192040%_ '#f))
          (gx#core-expand-import%__%
           _%stx192038%_
           _%internal-expand?192040%_))))
    (define gx#core-expand-import%
      (lambda _g194796_
        (let ((_g194797_ (##length _g194796_)))
          (cond ((##fx= _g194797_ 1)
                 (apply gx#core-expand-import%__0 _g194796_))
                ((##fx= _g194797_ 2)
                 (apply gx#core-expand-import%__% _g194796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g194796_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath191626%_ _%where191627%_)
        (let* ((_%$%e191628191635%_ _%spath191626%_)
               (_%$%E191630191639%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191628191635%_)))
               (_%$%E191629191694%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191628191635%_)
                      (let ((_%$%e191631191643%_
                             (gx#syntax-e _%$%e191628191635%_)))
                        (let ((_%$%hd191632191646%_
                               (##car _%$%e191631191643%_))
                              (_%$%tl191633191648%_
                               (##cdr _%$%e191631191643%_)))
                          (let* ((_%origin191651%_ _%$%hd191632191646%_)
                                 (_%sub191653%_ _%$%tl191633191648%_)
                                 (_%origin-ctx191655%_
                                  (if (gx#stx-false? _%origin191651%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin191651%_))))
                            (let _%lp191657%_ ((_%rest191659%_ _%sub191653%_)
                                               (_%ctx191660%_
                                                _%origin-ctx191655%_))
                              (let* ((_%$%e191661191668%_ _%rest191659%_)
                                     (_%$%E191663191672%_
                                      (lambda () _%ctx191660%_))
                                     (_%$%E191662191690%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e191661191668%_)
                                            (let ((_%$%e191664191676%_
                                                   (gx#syntax-e
                                                    _%$%e191661191668%_)))
                                              (let ((_%$%hd191665191679%_
                                                     (##car _%$%e191664191676%_))
                                                    (_%$%tl191666191681%_
                                                     (##cdr _%$%e191664191676%_)))
                                                (let* ((_%id191684%_
                                                        _%$%hd191665191679%_)
                                                       (_%rest191686%_
                                                        _%$%tl191666191681%_)
                                                       (_%bind191688%_
                                                        (gx#resolve-identifier__%
                                                         _%id191684%_
                                                         '0
                                                         _%ctx191660%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind191688%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind191688%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where191627%_
                                                       _%spath191626%_
                                                       _%id191684%_))
                                                  (_%lp191657%_
                                                   _%rest191686%_
                                                   (##unchecked-structure-ref
                                                    _%bind191688%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E191663191672%_)))))
                                (_%$%E191662191690%_))))))
                      (_%$%E191630191639%_)))))
          (_%$%E191629191694%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd191624%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd191624%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx191119%_ _%internal-expand?191120%_)
        (letrec* ((_%make-export__194724194725%_
                   (lambda (_%bind191572%_
                            _%phi191573%_
                            _%ctx191574%_
                            _%name191575%_)
                     (let* ((_%key191577%_
                             (##unchecked-structure-ref
                              _%bind191572%_
                              '2
                              '#f
                              '#f))
                            (_%export-key191579%_
                             (if _%name191575%_
                                 (gx#core-identifier-key _%name191575%_)
                                 _%key191577%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx191574%_
                        _%key191577%_
                        _%phi191573%_
                        _%export-key191579%_
                        (let ((_%$e191582%_
                               (##structure-instance-of?
                                _%bind191572%_
                                'gx#extern-binding::t)))
                          (if _%$e191582%_
                              _%$e191582%_
                              (##structure-direct-instance-of?
                               _%bind191572%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__194726194729%_
                   (lambda (_%bind191588%_)
                     (let* ((_%phi191590%_ (gx#current-export-expander-phi))
                            (_%ctx191592%_ (gx#current-expander-context))
                            (_%name191594%_ '#f))
                       (_%make-export__194724194725%_
                        _%bind191588%_
                        _%phi191590%_
                        _%ctx191592%_
                        _%name191594%_))))
                  (_%make-export__1__194727194730%_
                   (lambda (_%bind191596%_ _%phi191597%_)
                     (let* ((_%ctx191599%_ (gx#current-expander-context))
                            (_%name191601%_ '#f))
                       (_%make-export__194724194725%_
                        _%bind191596%_
                        _%phi191597%_
                        _%ctx191599%_
                        _%name191601%_))))
                  (_%make-export__2__194728194731%_
                   (lambda (_%bind191603%_ _%phi191604%_ _%ctx191605%_)
                     (let ((_%name191607%_ '#f))
                       (_%make-export__194724194725%_
                        _%bind191603%_
                        _%phi191604%_
                        _%ctx191605%_
                        _%name191607%_))))
                  (_%make-export191122%_
                   (lambda _g194798_
                     (let ((_g194799_ (##length _g194798_)))
                       (cond ((##fx= _g194799_ 1)
                              (apply _%make-export__0__194726194729%_
                                     _g194798_))
                             ((##fx= _g194799_ 2)
                              (apply _%make-export__1__194727194730%_
                                     _g194798_))
                             ((##fx= _g194799_ 3)
                              (apply _%make-export__2__194728194731%_
                                     _g194798_))
                             ((##fx= _g194799_ 4)
                              (apply _%make-export__194724194725%_ _g194798_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g194798_))))))
                  (_%expand1191123%_
                   (lambda (_%hd191277%_
                            _%K191278%_
                            _%rest191279%_
                            _%r191280%_)
                     (let* ((_%$%e191281191313%_ _%hd191277%_)
                            (_%$%E191308191317%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx191119%_
                                _%hd191277%_)))
                            (_%$%E191298191401%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191281191313%_)
                                   (let ((_%$%e191309191321%_
                                          (gx#syntax-e _%$%e191281191313%_)))
                                     (let ((_%$%hd191310191324%_
                                            (##car _%$%e191309191321%_))
                                           (_%$%tl191311191326%_
                                            (##cdr _%$%e191309191321%_)))
                                       (if (eq? (gx#stx-e _%$%hd191310191324%_)
                                                'import:)
                                           (let ((_%in191329%_
                                                  _%$%tl191311191326%_))
                                             (if (gx#stx-list? _%in191329%_)
                                                 (let _%lp191331%_ ((_%in-rest191333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in191329%_)
                            (_%r191334%_ _%r191280%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e191335191342%_
                                                           _%in-rest191333%_)
                                                          (_%$%E191337191346%_
                                                           (lambda ()
                                                             (_%K191278%_
                                                              _%rest191279%_
                                                              _%r191334%_)))
                                                          (_%$%E191336191397%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e191335191342%_)
                         (let ((_%$%e191338191350%_
                                (gx#syntax-e _%$%e191335191342%_)))
                           (let ((_%$%hd191339191353%_
                                  (##car _%$%e191338191350%_))
                                 (_%$%tl191340191355%_
                                  (##cdr _%$%e191338191350%_)))
                             (let* ((_%hd191358%_ _%$%hd191339191353%_)
                                    (_%in-rest191360%_ _%$%tl191340191355%_)
                                    (_%src191395%_
                                     (if (gx#core-bound-module? _%hd191358%_)
                                         (gx#syntax-local-e__0 _%hd191358%_)
                                         (if (gx#core-library-module-path?
                                              _%hd191358%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd191358%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd191358%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd191358%_))
                                                 (if (gx#stx-string?
                                                      _%hd191358%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd191358%_
                                                       (gx#stx-source
                                                        _%stx191119%_)))
                                                     (let* ((_%$%e191366191373%_
                                                             _%hd191358%_)
                                                            (_%$%E191368191377%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx191119%_
                                                                _%hd191358%_)))
                                                            (_%$%E191367191391%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e191366191373%_)
                           (let ((_%$%e191369191381%_
                                  (gx#syntax-e _%$%e191366191373%_)))
                             (let ((_%$%hd191370191384%_
                                    (##car _%$%e191369191381%_))
                                   (_%$%tl191371191386%_
                                    (##cdr _%$%e191369191381%_)))
                               (if (eq? (gx#stx-e _%$%hd191370191384%_) 'in:)
                                   (let ((_%spath191389%_
                                          _%$%tl191371191386%_))
                                     (gx#core-import-nested-module
                                      _%spath191389%_
                                      _%stx191119%_))
                                   (_%$%E191368191377%_))))
                           (_%$%E191368191377%_)))))
               (_%$%E191367191391%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp191331%_
                                _%in-rest191360%_
                                (_%export-imports191124%_
                                 _%src191395%_
                                 _%r191334%_)))))
                         (_%$%E191337191346%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E191336191397%_)))
                                                 (_%$%E191308191317%_)))
                                           (_%$%E191308191317%_))))
                                   (_%$%E191308191317%_))))
                            (_%$%E191285191441%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191281191313%_)
                                   (let ((_%$%e191299191405%_
                                          (gx#syntax-e _%$%e191281191313%_)))
                                     (let ((_%$%hd191300191408%_
                                            (##car _%$%e191299191405%_))
                                           (_%$%tl191301191410%_
                                            (##cdr _%$%e191299191405%_)))
                                       (if (eq? (gx#stx-e _%$%hd191300191408%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl191301191410%_)
                                               (let ((_%$%e191302191413%_
                                                      (gx#syntax-e
                                                       _%$%tl191301191410%_)))
                                                 (let ((_%$%hd191303191416%_
                                                        (##car _%$%e191302191413%_))
                                                       (_%$%tl191304191418%_
                                                        (##cdr _%$%e191302191413%_)))
                                                   (let ((_%id191421%_
                                                          _%$%hd191303191416%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl191304191418%_)
                                                         (let ((_%$%e191305191423%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl191304191418%_)))
                   (let ((_%$%hd191306191426%_ (##car _%$%e191305191423%_))
                         (_%$%tl191307191428%_ (##cdr _%$%e191305191423%_)))
                     (let ((_%name191431%_ _%$%hd191306191426%_))
                       (if (gx#stx-null? _%$%tl191307191428%_)
                           (let* ((_%phi191433%_
                                   (gx#current-export-expander-phi))
                                  (_%$e191435%_
                                   (gx#core-resolve-identifier__1
                                    _%id191421%_
                                    _%phi191433%_)))
                             (if _%$e191435%_
                                 (_%K191278%_
                                  _%rest191279%_
                                  (cons (_%make-export__194724194725%_
                                         _%$e191435%_
                                         _%phi191433%_
                                         (gx#current-expander-context)
                                         _%name191431%_)
                                        _%r191280%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx191119%_
                                  _%hd191277%_
                                  _%id191421%_)))
                           (_%$%E191298191401%_)))))
                 (_%$%E191298191401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191298191401%_))
                                           (_%$%E191298191401%_))))
                                   (_%$%E191298191401%_))))
                            (_%$%E191284191491%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191281191313%_)
                                   (let ((_%$%e191286191445%_
                                          (gx#syntax-e _%$%e191281191313%_)))
                                     (let ((_%$%hd191287191448%_
                                            (##car _%$%e191286191445%_))
                                           (_%$%tl191288191450%_
                                            (##cdr _%$%e191286191445%_)))
                                       (if (eq? (gx#stx-e _%$%hd191287191448%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl191288191450%_)
                                               (let ((_%$%e191289191453%_
                                                      (gx#syntax-e
                                                       _%$%tl191288191450%_)))
                                                 (let ((_%$%hd191290191456%_
                                                        (##car _%$%e191289191453%_))
                                                       (_%$%tl191291191458%_
                                                        (##cdr _%$%e191289191453%_)))
                                                   (let ((_%phi191461%_
                                                          _%$%hd191290191456%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl191291191458%_)
                                                         (let ((_%$%e191292191463%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl191291191458%_)))
                   (let ((_%$%hd191293191466%_ (##car _%$%e191292191463%_))
                         (_%$%tl191294191468%_ (##cdr _%$%e191292191463%_)))
                     (let ((_%id191471%_ _%$%hd191293191466%_))
                       (if (gx#stx-pair? _%$%tl191294191468%_)
                           (let ((_%$%e191295191473%_
                                  (gx#syntax-e _%$%tl191294191468%_)))
                             (let ((_%$%hd191296191476%_
                                    (##car _%$%e191295191473%_))
                                   (_%$%tl191297191478%_
                                    (##cdr _%$%e191295191473%_)))
                               (let ((_%name191481%_ _%$%hd191296191476%_))
                                 (if (gx#stx-null? _%$%tl191297191478%_)
                                     (if (and (gx#stx-fixnum? _%phi191461%_)
                                              (gx#identifier? _%id191471%_)
                                              (gx#identifier? _%name191481%_))
                                         (let* ((_%phi191483%_
                                                 (gx#stx-e _%phi191461%_))
                                                (_%$e191485%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id191471%_
                                                  _%phi191483%_)))
                                           (if _%$e191485%_
                                               (_%K191278%_
                                                _%rest191279%_
                                                (cons (_%make-export__194724194725%_
                                                       _%$e191485%_
                                                       _%phi191483%_
                                                       (gx#current-expander-context)
                                                       _%name191481%_)
                                                      _%r191280%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx191119%_
                                                _%hd191277%_
                                                _%id191471%_)))
                                         (_%$%E191285191441%_))
                                     (_%$%E191285191441%_)))))
                           (_%$%E191285191441%_)))))
                 (_%$%E191285191441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191285191441%_))
                                           (_%$%E191285191441%_))))
                                   (_%$%E191285191441%_))))
                            (_%$%E191283191503%_
                             (lambda ()
                               (let ((_%id191495%_ _%$%e191281191313%_))
                                 (if (gx#identifier? _%id191495%_)
                                     (let ((_%$e191497%_
                                            (gx#core-resolve-identifier__1
                                             _%id191495%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e191497%_
                                           (_%K191278%_
                                            _%rest191279%_
                                            (cons (_%make-export__0__194726194729%_
                                                   _%$e191497%_)
                                                  _%r191280%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx191119%_
                                            _%hd191277%_)))
                                     (_%$%E191284191491%_)))))
                            (_%$%E191282191567%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e191281191313%_) '#t)
                                   (let* ((_%current-ctx191507%_
                                           (gx#current-expander-context))
                                          (_%current-phi191509%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx191511%_
                                           (gx#core-context-shift
                                            _%current-ctx191507%_
                                            _%current-phi191509%_))
                                          (_%phi-bind191513%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx191511%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp191516%_ ((_%bind-rest191518%_
                                                         _%phi-bind191513%_)
                                                        (_%set191519%_ '()))
                                       (let* ((_%$%bind-rest191520191530%_
                                               _%bind-rest191518%_)
                                              (_%$%else191522191538%_
                                               (lambda ()
                                                 (_%K191278%_
                                                  _%rest191279%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi191509%_
                                                         _%set191519%_)
                                                        _%r191280%_))))
                                              (_%$%K191524191548%_
                                               (lambda (_%bind-rest191541%_
                                                        _%bind191542%_
                                                        _%key191543%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind191542%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind191542%_))
                                                     (_%lp191516%_
                                                      _%bind-rest191541%_
                                                      _%set191519%_)
                                                     (_%lp191516%_
                                                      _%bind-rest191541%_
                                                      (cons (_%make-export__2__194728194731%_
                                                             _%bind191542%_
                                                             _%current-phi191509%_
                                                             _%current-ctx191507%_)
                                                            _%set191519%_))))))
                                         (if (pair? _%$%bind-rest191520191530%_)
                                             (let ((_%$%hd191525191551%_
                                                    (##car _%$%bind-rest191520191530%_))
                                                   (_%$%tl191526191553%_
                                                    (##cdr _%$%bind-rest191520191530%_)))
                                               (if (pair? _%$%hd191525191551%_)
                                                   (let ((_%$%hd191527191556%_
                                                          (##car _%$%hd191525191551%_))
                                                         (_%$%tl191528191558%_
                                                          (##cdr _%$%hd191525191551%_)))
                                                     (let* ((_%key191561%_
                                                             _%$%hd191527191556%_)
                                                            (_%bind191563%_
                                                             _%$%tl191528191558%_)
                                                            (_%bind-rest191565%_
                                                             _%$%tl191526191553%_))
                                                       (_%$%K191524191548%_
                                                        _%bind-rest191565%_
                                                        _%bind191563%_
                                                        _%key191561%_)))
                                                   (_%$%else191522191538%_)))
                                             (_%$%else191522191538%_)))))
                                   (_%$%E191283191503%_)))))
                       (_%$%E191282191567%_))))
                  (_%export-imports191124%_
                   (lambda (_%src191154%_ _%r191155%_)
                     (letrec* ((_%current-ctx191157%_
                                (gx#current-expander-context))
                               (_%current-phi191158%_
                                (gx#current-export-expander-phi))
                               (_%import->export191159%_
                                (lambda (_%in191240%_)
                                  (let* ((_%$%in191241191249%_ _%in191240%_)
                                         (_%$%E191243191252%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in191241191249%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K191244191259%_
                                          (lambda (_%phi191255%_
                                                   _%key191256%_
                                                   _%out191257%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx191157%_
                                             _%key191256%_
                                             _%phi191255%_
                                             _%key191256%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in191241191249%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e191245191262%_
                                                (##unchecked-structure-ref
                                                 _%$%in191241191249%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out191265%_
                                                _%$%e191245191262%_)
                                               (_%$%e191246191267%_
                                                (##unchecked-structure-ref
                                                 _%$%in191241191249%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key191270%_
                                                _%$%e191246191267%_)
                                               (_%$%e191247191272%_
                                                (##unchecked-structure-ref
                                                 _%$%in191241191249%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi191275%_
                                                _%$%e191247191272%_))
                                          (_%$%K191244191259%_
                                           _%phi191275%_
                                           _%key191270%_
                                           _%out191265%_))
                                        (_%$%E191243191252%_)))))
                               (_%fold-e191160%_
                                (lambda (_%in191162%_ _%r191163%_)
                                  (let* ((_%$%in191164191178%_ _%in191162%_)
                                         (_%$%else191167191186%_
                                          (lambda () _%r191163%_)))
                                    (let ((_%$%K191173191222%_
                                           (lambda (_%phi191218%_
                                                    _%key191219%_
                                                    _%out191220%_)
                                             (if (and (fx= _%phi191218%_
                                                           _%current-phi191158%_)
                                                      (eq? _%src191154%_
                                                           (##unchecked-structure-ref
                                                            _%out191220%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export191159%_
                                                        _%in191162%_)
                                                       _%r191163%_)
                                                 _%r191163%_)))
                                          (_%$%K191169191197%_
                                           (lambda (_%imports191190%_
                                                    _%phi191191%_
                                                    _%ctx191192%_)
                                             (if (and (fx= _%phi191191%_
                                                           _%current-phi191158%_)
                                                      (eq? _%src191154%_
                                                           _%ctx191192%_))
                                                 (foldl__0
                                                  (lambda (_%in191194%_
                                                           _%r191195%_)
                                                    (cons (_%import->export191159%_
                                                           _%in191194%_)
                                                          _%r191195%_))
                                                  _%r191163%_
                                                  _%imports191190%_)
                                                 _%r191163%_))))
                                      (let ((_%$%try-match191166191215%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in191164191178%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e191170191200%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191164191178%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e191171191205%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191164191178%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e191172191210%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191164191178%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx191203%_
                                                            _%$%e191170191200%_)
                                                           (_%phi191208%_
                                                            _%$%e191171191205%_)
                                                           (_%imports191213%_
                                                            _%$%e191172191210%_))
                                                       (_%$%K191169191197%_
                                                        _%imports191213%_
                                                        _%phi191208%_
                                                        _%ctx191203%_)))
                                                   (_%$%else191167191186%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in191164191178%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e191174191225%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191164191178%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e191175191230%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191164191178%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e191176191235%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191164191178%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out191228%_
                                                     _%$%e191174191225%_)
                                                    (_%key191233%_
                                                     _%$%e191175191230%_)
                                                    (_%phi191238%_
                                                     _%$%e191176191235%_))
                                                (_%$%K191173191222%_
                                                 _%phi191238%_
                                                 _%key191233%_
                                                 _%out191228%_)))
                                            (_%$%try-match191166191215%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src191154%_
                              _%current-phi191158%_
                              (foldl__0
                               _%fold-e191160%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx191157%_
                                '8
                                '#f
                                '#f)))
                             _%r191155%_))))
                  (_%export!191125%_
                   (lambda (_%rbody191141%_)
                     (letrec* ((_%current-ctx191143%_
                                (gx#current-expander-context))
                               (_%fold-e191144%_
                                (lambda (_%out191148%_ _%r191149%_)
                                  (if (##structure-direct-instance-of?
                                       _%out191148%_
                                       'gx#module-export::t)
                                      (cons _%out191148%_ _%r191149%_)
                                      (if (##structure-direct-instance-of?
                                           _%out191148%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r191149%_
                                           (##unchecked-structure-ref
                                            _%out191148%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r191149%_)))))
                       (let ((_%body191146%_ (reverse _%rbody191141%_)))
                         (##unchecked-structure-set!
                          _%current-ctx191143%_
                          (foldl__0
                           _%fold-e191144%_
                           (##unchecked-structure-ref
                            _%current-ctx191143%_
                            '9
                            '#f
                            '#f)
                           _%body191146%_)
                          '9
                          '#f
                          '#f)
                         _%body191146%_))))
                  (_%expanded-export?191126%_
                   (lambda (_%e191136%_)
                     (let ((_%$e191138%_
                            (##structure-direct-instance-of?
                             _%e191136%_
                             'gx#module-export::t)))
                       (if _%$e191138%_
                           _%$e191138%_
                           (##structure-direct-instance-of?
                            _%e191136%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?191120%_)
              (let ((_%rbody191132%_
                     (gx#core-expand-import/export
                      _%stx191119%_
                      _%expanded-export?191126%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1191123%_)))
                (if _%internal-expand?191120%_
                    (reverse _%rbody191132%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!191125%_ _%rbody191132%_))
                     (gx#stx-source _%stx191119%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx191119%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx191119%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx191617%_)
        (let ((_%internal-expand?191619%_ '#f))
          (gx#core-expand-export%__%
           _%stx191617%_
           _%internal-expand?191619%_))))
    (define gx#core-expand-export%
      (lambda _g194800_
        (let ((_g194801_ (##length _g194800_)))
          (cond ((##fx= _g194801_ 1)
                 (apply gx#core-expand-export%__0 _g194800_))
                ((##fx= _g194801_ 2)
                 (apply gx#core-expand-export%__% _g194800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g194800_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd191116%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd191116%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx191086%_)
        (let* ((_%$%e191087191094%_ _%stx191086%_)
               (_%$%E191089191098%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191087191094%_)))
               (_%$%E191088191112%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191087191094%_)
                      (let ((_%$%e191090191102%_
                             (gx#syntax-e _%$%e191087191094%_)))
                        (let ((_%$%hd191091191105%_
                               (##car _%$%e191090191102%_))
                              (_%$%tl191092191107%_
                               (##cdr _%$%e191090191102%_)))
                          (let ((_%body191110%_ _%$%tl191092191107%_))
                            (if (gx#identifier-list? _%body191110%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body191110%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body191110%_))
                                   (gx#stx-source _%stx191086%_)))
                                (_%$%E191089191098%_)))))
                      (_%$%E191089191098%_)))))
          (_%$%E191088191112%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id191052%_ _%private?191053%_ _%phi191054%_ _%ctx191055%_)
        (gx#core-bind-syntax!__%
         _%id191052%_
         ((if _%private?191053%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id191052%_))
         _%private?191053%_
         _%phi191054%_
         _%ctx191055%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id191060%_)
        (let* ((_%private?191062%_ '#f)
               (_%phi191064%_ (gx#current-expander-phi))
               (_%ctx191066%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191060%_
           _%private?191062%_
           _%phi191064%_
           _%ctx191066%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id191068%_ _%private?191069%_)
        (let* ((_%phi191071%_ (gx#current-expander-phi))
               (_%ctx191073%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191068%_
           _%private?191069%_
           _%phi191071%_
           _%ctx191073%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id191075%_ _%private?191076%_ _%phi191077%_)
        (let ((_%ctx191079%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191075%_
           _%private?191076%_
           _%phi191077%_
           _%ctx191079%_))))
    (define gx#core-bind-feature!
      (lambda _g194802_
        (let ((_g194803_ (##length _g194802_)))
          (cond ((##fx= _g194803_ 1)
                 (apply gx#core-bind-feature!__0 _g194802_))
                ((##fx= _g194803_ 2)
                 (apply gx#core-bind-feature!__1 _g194802_))
                ((##fx= _g194803_ 3)
                 (apply gx#core-bind-feature!__2 _g194802_))
                ((##fx= _g194803_ 4)
                 (apply gx#core-bind-feature!__% _g194802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g194802_))))))))
