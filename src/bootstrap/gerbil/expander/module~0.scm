(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770405374)
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
      (lambda _%$args182364%_
        (apply make-instance gx#module-import::t _%$args182364%_)))
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
      (lambda _%$args182361%_
        (apply make-instance gx#module-export::t _%$args182361%_)))
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
      (lambda _%$args182358%_
        (apply make-instance gx#import-set::t _%$args182358%_)))
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
      (lambda _%$args182355%_
        (apply make-instance gx#export-set::t _%$args182355%_)))
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
      (lambda _%$args182352%_
        (apply make-instance gx#import-expander::t _%$args182352%_)))
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
      (lambda _%$args182349%_
        (apply make-instance gx#export-expander::t _%$args182349%_)))
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
      (lambda _%$args182346%_
        (apply make-instance gx#import-export-expander::t _%$args182346%_)))
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
      (lambda (_%path182343%_ _%fun182344%_)
        (call-with-input-file
         (cons 'path: (cons _%path182343%_ gx#source-file-settings))
         _%fun182344%_)))
    (define gx#module-context:::init!
      (lambda (_%self182326%_
               _%id182327%_
               _%super182328%_
               _%ns182329%_
               _%path182330%_)
        (let ((_%self182333%_ _%self182326%_))
          (if (##fx< '11 (##structure-length _%self182333%_))
              (begin
                (##unchecked-structure-set!
                 _%self182333%_
                 _%id182327%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182333%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182333%_
                 _%super182328%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self182333%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self182333%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self182333%_
                 _%ns182329%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182333%_
                 _%path182330%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self182333%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self182333%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self182333%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self182333%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self182333%_
                     '11
                     (##structure-length _%self182333%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self182159%_ _%ctx182160%_ _%root182161%_)
        (let* ((_%self182164%_ _%self182159%_)
               (_%super182180%_
                (let ((_%$e182174%_ _%root182161%_))
                  (if _%$e182174%_
                      _%$e182174%_
                      (let ((_%$e182177%_ (gx#core-context-root__0)))
                        (if _%$e182177%_
                            _%$e182177%_
                            (let ((__obj182408
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor182409
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj182408
                                      ':init!)))
                                (if __constructor182409
                                    (__constructor182409 __obj182408)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj182408)))))))
          (if _%ctx182160%_
              (let ((_%id182183%_
                     (##structure-ref
                      _%ctx182160%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path182184%_
                     (##structure-ref
                      _%ctx182160%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in182185%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx182160%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e182186%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx182160%_)))))
                (if (##fx< '8 (##structure-length _%self182164%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self182164%_
                       _%id182183%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182164%_
                       (make-hash-table-eq 'size: (##length _%in182185%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182164%_
                       _%super182180%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182164%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182164%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182164%_
                       _%path182184%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182164%_
                       _%in182185%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182164%_
                       _%e182186%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self182164%_
                           '8
                           (##structure-length _%self182164%_)))
                (##for-each
                 (lambda (_%g182187182189%_)
                   (gx#core-bind-weak-import!__%
                    _%g182187182189%_
                    _%self182164%_))
                 _%in182185%_))
              (if (##fx< '8 (##structure-length _%self182164%_))
                  (begin
                    (##unchecked-structure-set! _%self182164%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self182164%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self182164%_
                     _%super182180%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self182164%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self182164%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self182164%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self182164%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self182164%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self182164%_
                         '8
                         (##structure-length _%self182164%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self182195%_ _%ctx182196%_)
        (let ((_%root182198%_ '#f))
          (gx#prelude-context:::init!__%
           _%self182195%_
           _%ctx182196%_
           _%root182198%_))))
    (define gx#prelude-context:::init!
      (lambda _g182415_
        (let ((_g182416_ (##length _g182415_)))
          (cond ((##fx= _g182416_ 2)
                 (apply gx#prelude-context:::init!__0 _g182415_))
                ((##fx= _g182416_ 3)
                 (apply gx#prelude-context:::init!__% _g182415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g182415_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self182033%_ _%e182034%_)
        (if (##fx< '3 (##structure-length _%self182033%_))
            (begin
              (##unchecked-structure-set!
               _%self182033%_
               _%e182034%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self182033%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self182033%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self182033%_
                   '3
                   (##structure-length _%self182033%_)))))
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
      (lambda (_%g181659181662%_ _%g181660181664%_)
        (gx#core-apply-user-expander__%
         _%g181659181662%_
         _%g181660181664%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g181530181533%_ _%g181531181535%_)
        (gx#core-apply-user-expander__%
         _%g181530181533%_
         _%g181531181535%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx181401%_)
        (let* ((_%path181403%_
                (##structure-ref _%ctx181401%_ '7 gx#module-context::t '#f))
               (_%path181405%_
                (if (pair? _%path181403%_)
                    (##last _%path181403%_)
                    _%path181403%_)))
          (if (string? _%path181405%_) _%path181405%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path181377%_ _%reload?181378%_ _%eval?181379%_)
        (let ((_%ctx181381%_
               ((gx#current-expander-module-import)
                _%path181377%_
                _%reload?181378%_)))
          (if (and _%ctx181381%_ _%eval?181379%_)
              (gx#eval-module _%ctx181381%_)
              '#!void)
          _%ctx181381%_)))
    (define gx#import-module__0
      (lambda (_%path181386%_)
        (let* ((_%reload?181388%_ '#f) (_%eval?181390%_ '#f))
          (gx#import-module__%
           _%path181386%_
           _%reload?181388%_
           _%eval?181390%_))))
    (define gx#import-module__1
      (lambda (_%path181392%_ _%reload?181393%_)
        (let ((_%eval?181395%_ '#f))
          (gx#import-module__%
           _%path181392%_
           _%reload?181393%_
           _%eval?181395%_))))
    (define gx#import-module
      (lambda _g182417_
        (let ((_g182418_ (##length _g182417_)))
          (cond ((##fx= _g182418_ 1) (apply gx#import-module__0 _g182417_))
                ((##fx= _g182418_ 2) (apply gx#import-module__1 _g182417_))
                ((##fx= _g182418_ 3) (apply gx#import-module__% _g182417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g182417_))))))
    (define gx#eval-module
      (lambda (_%mod181374%_)
        ((gx#current-expander-module-eval) _%mod181374%_)))
    (define gx#core-eval-module
      (lambda (_%obj181353%_)
        (letrec ((_%force-e181355%_
                  (lambda (_%getf181369%_ _%e181370%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf181369%_ _%e181370%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e181370%_))))
          (let _%recur181357%_ ((_%e181359%_ _%obj181353%_))
            (if (##structure-instance-of? _%e181359%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e181362%_
                         (gx#core-context-prelude__% _%e181359%_)))
                    (if _%$e181362%_ (_%recur181357%_ _%$e181362%_) '#!void))
                  (_%force-e181355%_ gx#module-context-e _%e181359%_))
                (if (##structure-instance-of?
                     _%e181359%_
                     'gx#prelude-context::t)
                    (_%force-e181355%_ gx#prelude-context-e _%e181359%_)
                    (if (gx#stx-string? _%e181359%_)
                        (_%recur181357%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e181359%_)))
                        (if (gx#core-library-module-path? _%e181359%_)
                            (_%recur181357%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e181359%_)))
                            (error '"cannot eval module" _%obj181353%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx181333%_)
        (let _%lp181335%_ ((_%e181337%_ _%ctx181333%_))
          (if (or (##structure-instance-of? _%e181337%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e181337%_ 'gx#local-context::t))
              (_%lp181335%_ (##unchecked-structure-ref _%e181337%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e181337%_ 'gx#prelude-context::t)
                  _%e181337%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx181349%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx181349%_))))
    (define gx#core-context-prelude
      (lambda _g182419_
        (let ((_g182420_ (##length _g182419_)))
          (cond ((##fx= _g182420_ 0)
                 (apply gx#core-context-prelude__0 _g182419_))
                ((##fx= _g182420_ 1)
                 (apply gx#core-context-prelude__% _g182419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g182419_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx181324%_)
        (let ((_%$e181326%_ (__hash-get gx#__module-registry _%ctx181324%_)))
          (if _%$e181326%_
              _%$e181326%_
              (let ((_%pre181330%_
                     (let ((__obj182410
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
                        __obj182410
                        _%ctx181324%_)
                       __obj182410)))
                (__hash-put! gx#__module-registry _%ctx181324%_ _%pre181330%_)
                _%pre181330%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath181192%_ _%reload?181193%_)
        (letrec ((_%import-source181195%_
                  (lambda (_%path181283%_)
                    (if (member _%path181283%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path181283%_)
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
                                      (let ((_g182421_
                                             (gx#core-read-module
                                              _%path181283%_)))
                                        (begin
                                          (let ((_g182422_
                                                 (if (##values? _g182421_)
                                                     (##values-length
                                                      _g182421_)
                                                     1)))
                                            (if (not (##fx= _g182422_ 4))
                                                (error "Context expects 4 values"
                                                       _g182422_)))
                                          (let ((_%pre181291%_
                                                 (##values-ref _g182421_ 0))
                                                (_%id181292%_
                                                 (##values-ref _g182421_ 1))
                                                (_%ns181293%_
                                                 (##values-ref _g182421_ 2))
                                                (_%body181294%_
                                                 (##values-ref _g182421_ 3)))
                                            (let* ((_%prelude181304%_
                                                    (if (##structure-instance-of?
                                                         _%pre181291%_
                                                         'gx#prelude-context::t)
                                                        _%pre181291%_
                                                        (if (##structure-instance-of?
                                                             _%pre181291%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre181291%_)
                                                            (if (string? _%pre181291%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre181291%_))
                        (if (not _%pre181291%_)
                            (let ((_%$e181300%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e181300%_
                                  _%$e181300%_
                                  (let ((__obj182411
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
                                     __obj182411
                                     '#f)
                                    __obj182411)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath181192%_
                                   _%pre181291%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx181306%_
                                                    (let ((__obj182412
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
                                                       __obj182412
                                                       _%id181292%_
                                                       _%prelude181304%_
                                                       _%ns181293%_
                                                       _%path181283%_)
                                                      __obj182412))
                                                   (_%body181308%_
                                                    (gx#core-expand-module-begin
                                                     _%body181294%_
                                                     _%ctx181306%_))
                                                   (_%body181310%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body181308%_)
                                                     _%path181283%_
                                                     _%ctx181306%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx181306%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body181310%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx181306%_
                                               _%body181310%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path181283%_
                                               _%ctx181306%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id181292%_
                                               _%ctx181306%_)
                                              _%ctx181306%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path181283%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule181196%_
                  (lambda (_%rpath181212%_)
                    (let* ((_%rpath181213181220%_ _%rpath181212%_)
                           (_%E181215181223%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath181213181220%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K181216181271%_
                            (lambda (_%refs181226%_ _%origin181227%_)
                              (let ((_%ctx181229%_
                                     (if _%origin181227%_
                                         (gx#core-import-module__%
                                          _%origin181227%_
                                          _%reload?181193%_)
                                         (gx#current-expander-context))))
                                (let _%lp181231%_ ((_%rest181233%_
                                                    _%refs181226%_)
                                                   (_%ctx181234%_
                                                    _%ctx181229%_))
                                  (let* ((_%rest181235181243%_ _%rest181233%_)
                                         (_%else181237181251%_
                                          (lambda () _%ctx181234%_))
                                         (_%K181239181259%_
                                          (lambda (_%rest181254%_ _%id181255%_)
                                            (let ((_%bind181257%_
                                                   (gx#resolve-identifier__%
                                                    _%id181255%_
                                                    '0
                                                    _%ctx181234%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind181257%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind181257%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp181231%_
                                                   _%rest181254%_
                                                   (##unchecked-structure-ref
                                                    _%bind181257%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath181212%_
                                                         _%id181255%_
                                                         _%bind181257%_))))))
                                    (if (pair? _%rest181235181243%_)
                                        (let ((_%hd181240181262%_
                                               (##car _%rest181235181243%_))
                                              (_%tl181241181264%_
                                               (##cdr _%rest181235181243%_)))
                                          (let* ((_%id181267%_
                                                  _%hd181240181262%_)
                                                 (_%rest181269%_
                                                  _%tl181241181264%_))
                                            (_%K181239181259%_
                                             _%rest181269%_
                                             _%id181267%_)))
                                        (_%else181237181251%_))))))))
                      (if (pair? _%rpath181213181220%_)
                          (let ((_%hd181217181274%_
                                 (##car _%rpath181213181220%_))
                                (_%tl181218181276%_
                                 (##cdr _%rpath181213181220%_)))
                            (let* ((_%origin181279%_ _%hd181217181274%_)
                                   (_%refs181281%_ _%tl181218181276%_))
                              (_%K181216181271%_
                               _%refs181281%_
                               _%origin181279%_)))
                          (_%E181215181223%_))))))
          (let ((_%$e181198%_
                 (if (not _%reload?181193%_)
                     (__hash-get gx#__module-registry _%rpath181192%_)
                     '#f)))
            (if _%$e181198%_
                _%$e181198%_
                (if (list? _%rpath181192%_)
                    (_%import-submodule181196%_ _%rpath181192%_)
                    (if (gx#core-library-module-path? _%rpath181192%_)
                        (let ((_%ctx181203%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath181192%_)
                                _%reload?181193%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath181192%_
                           _%ctx181203%_)
                          _%ctx181203%_)
                        (let* ((_%npath181206%_
                                (path-normalize _%rpath181192%_))
                               (_%$e181208%_
                                (if (not _%reload?181193%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath181206%_)
                                    '#f)))
                          (if _%$e181208%_
                              _%$e181208%_
                              (_%import-source181195%_
                               _%npath181206%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath181317%_)
        (let ((_%reload?181319%_ '#f))
          (gx#core-import-module__% _%rpath181317%_ _%reload?181319%_))))
    (define gx#core-import-module
      (lambda _g182423_
        (let ((_g182424_ (##length _g182423_)))
          (cond ((##fx= _g182424_ 1)
                 (apply gx#core-import-module__0 _g182423_))
                ((##fx= _g182424_ 2)
                 (apply gx#core-import-module__% _g182423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g182423_))))))
    (define gx#core-read-module
      (lambda (_%path181181%_)
        (__with-catch
         (lambda (_%exn181183%_)
           (if (and (datum-parsing-exception? _%exn181183%_)
                    (eq? (datum-parsing-exception-filepos _%exn181183%_) '0))
               (gx#core-read-module/lang _%path181181%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path181181%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g181185181187%_)
                      (display-exception__% _%exn181183%_ _%g181185181187%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path181181%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path181033%_)
        (let _%lp181035%_ ((_%body181037%_
                            (read-syntax-from-file _%path181033%_))
                           (_%pre181038%_ '#f)
                           (_%ns181039%_ '#f)
                           (_%pkg181040%_ '#f))
          (let* ((_%e181041181065%_ _%body181037%_)
                 (_%E181057181091%_
                  (lambda ()
                    (let ((_g182425_
                           (if _%pkg181040%_
                               (values _%pre181038%_
                                       _%ns181039%_
                                       _%pkg181040%_)
                               (gx#core-read-module-package
                                _%path181033%_
                                _%pre181038%_
                                _%ns181039%_))))
                      (begin
                        (let ((_g182426_
                               (if (##values? _g182425_)
                                   (##values-length _g182425_)
                                   1)))
                          (if (not (##fx= _g182426_ 3))
                              (error "Context expects 3 values" _g182426_)))
                        (let ((_%pre181069%_ (##values-ref _g182425_ 0))
                              (_%ns181070%_ (##values-ref _g182425_ 1))
                              (_%pkg181071%_ (##values-ref _g182425_ 2)))
                          (let* ((_%prelude181077%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre181069%_)
                                      (gx#syntax-local-e__0 _%pre181069%_)
                                      (if (gx#core-library-module-path?
                                           _%pre181069%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre181069%_)
                                          (if (gx#stx-string? _%pre181069%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre181069%_
                                               _%path181033%_)
                                              (gx#stx-e _%pre181069%_)))))
                                 (_%path-id181079%_
                                  (gx#core-module-path->namespace
                                   _%path181033%_))
                                 (_%pkg-id181081%_
                                  (if _%pkg181071%_
                                      (##string-append
                                       _%pkg181071%_
                                       '"/"
                                       _%path-id181079%_)
                                      _%path-id181079%_))
                                 (_%module-id181083%_
                                  (##string->symbol _%pkg-id181081%_))
                                 (_%module-ns181088%_
                                  (if (eq? _%ns181070%_ '#!void)
                                      '#f
                                      (let ((_%$e181085%_ _%ns181070%_))
                                        (if _%$e181085%_
                                            _%$e181085%_
                                            _%pkg-id181081%_)))))
                            (values _%prelude181077%_
                                    _%module-id181083%_
                                    _%module-ns181088%_
                                    _%body181037%_)))))))
                 (_%E181050181123%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181041181065%_)
                        (let ((_%e181058181095%_
                               (gx#syntax-e _%e181041181065%_)))
                          (let ((_%hd181059181098%_ (##car _%e181058181095%_))
                                (_%tl181060181100%_ (##cdr _%e181058181095%_)))
                            (if (eq? (gx#stx-e _%hd181059181098%_) 'package:)
                                (if (gx#stx-pair? _%tl181060181100%_)
                                    (let ((_%e181061181103%_
                                           (gx#syntax-e _%tl181060181100%_)))
                                      (let ((_%hd181062181106%_
                                             (##car _%e181061181103%_))
                                            (_%tl181063181108%_
                                             (##cdr _%e181061181103%_)))
                                        (let* ((_%pkg181111%_
                                                _%hd181062181106%_)
                                               (_%rest181113%_
                                                _%tl181063181108%_)
                                               (_%pkg181121%_
                                                (if (gx#identifier?
                                                     _%pkg181111%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg181111%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg181111%_)
                                                            (gx#stx-false?
                                                             _%pkg181111%_))
                                                        (gx#stx-e
                                                         _%pkg181111%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg181111%_)))))
                                          (_%lp181035%_
                                           _%rest181113%_
                                           _%pre181038%_
                                           _%ns181039%_
                                           _%pkg181121%_))))
                                    (_%E181057181091%_))
                                (_%E181057181091%_))))
                        (_%E181057181091%_))))
                 (_%E181043181153%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181041181065%_)
                        (let ((_%e181051181127%_
                               (gx#syntax-e _%e181041181065%_)))
                          (let ((_%hd181052181130%_ (##car _%e181051181127%_))
                                (_%tl181053181132%_ (##cdr _%e181051181127%_)))
                            (if (eq? (gx#stx-e _%hd181052181130%_) 'namespace:)
                                (if (gx#stx-pair? _%tl181053181132%_)
                                    (let ((_%e181054181135%_
                                           (gx#syntax-e _%tl181053181132%_)))
                                      (let ((_%hd181055181138%_
                                             (##car _%e181054181135%_))
                                            (_%tl181056181140%_
                                             (##cdr _%e181054181135%_)))
                                        (let* ((_%ns181143%_
                                                _%hd181055181138%_)
                                               (_%rest181145%_
                                                _%tl181056181140%_)
                                               (_%ns181151%_
                                                (if (gx#identifier?
                                                     _%ns181143%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns181143%_))
                                                    (if (gx#stx-string?
                                                         _%ns181143%_)
                                                        (gx#stx-e _%ns181143%_)
                                                        (if (gx#stx-false?
                                                             _%ns181143%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns181143%_))))))
                                          (_%lp181035%_
                                           _%rest181145%_
                                           _%pre181038%_
                                           _%ns181151%_
                                           _%pkg181040%_))))
                                    (_%E181050181123%_))
                                (_%E181050181123%_))))
                        (_%E181050181123%_))))
                 (_%E181042181177%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181041181065%_)
                        (let ((_%e181044181157%_
                               (gx#syntax-e _%e181041181065%_)))
                          (let ((_%hd181045181160%_ (##car _%e181044181157%_))
                                (_%tl181046181162%_ (##cdr _%e181044181157%_)))
                            (if (eq? (gx#stx-e _%hd181045181160%_) 'prelude:)
                                (if (gx#stx-pair? _%tl181046181162%_)
                                    (let ((_%e181047181165%_
                                           (gx#syntax-e _%tl181046181162%_)))
                                      (let ((_%hd181048181168%_
                                             (##car _%e181047181165%_))
                                            (_%tl181049181170%_
                                             (##cdr _%e181047181165%_)))
                                        (let* ((_%prelude181173%_
                                                _%hd181048181168%_)
                                               (_%rest181175%_
                                                _%tl181049181170%_))
                                          (_%lp181035%_
                                           _%rest181175%_
                                           _%prelude181173%_
                                           _%ns181039%_
                                           _%pkg181040%_))))
                                    (_%E181043181153%_))
                                (_%E181043181153%_))))
                        (_%E181043181153%_)))))
            (_%E181042181177%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path180854%_)
        (letrec ((_%default-read-module-body180856%_
                  (lambda (_%inp181025%_)
                    (let _%lp181027%_ ((_%body181029%_ '()))
                      (let ((_%next181031%_ (read-syntax__% _%inp181025%_)))
                        (if (eof-object? _%next181031%_)
                            (reverse _%body181029%_)
                            (_%lp181027%_
                             (cons _%next181031%_ _%body181029%_)))))))
                 (_%read-body180857%_
                  (lambda (_%inp180942%_
                           _%pre180943%_
                           _%ns180944%_
                           _%pkg180945%_
                           _%args180946%_)
                    (let ((_g182427_
                           (if _%pkg180945%_
                               (values _%pre180943%_
                                       _%ns180944%_
                                       _%pkg180945%_)
                               (gx#core-read-module-package
                                _%path180854%_
                                _%pre180943%_
                                _%ns180944%_))))
                      (begin
                        (let ((_g182428_
                               (if (##values? _g182427_)
                                   (##values-length _g182427_)
                                   1)))
                          (if (not (##fx= _g182428_ 3))
                              (error "Context expects 3 values" _g182428_)))
                        (let ((_%pre180948%_ (##values-ref _g182427_ 0))
                              (_%ns180949%_ (##values-ref _g182427_ 1))
                              (_%pkg180950%_ (##values-ref _g182427_ 2)))
                          (let* ((_%prelude180952%_
                                  (gx#import-module__0 _%pre180948%_))
                                 (_%read-module-body181007%_
                                  (let ((_%$e180998%_
                                         (__find (lambda (_%e180953180955%_)
                                                   (let* ((_%e180953180957180967%_
                                                           _%e180953180955%_)
                                                          (_%else180959180975%_
                                                           (lambda () '#f))
                                                          (_%K180961180979%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e180953180957180967%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e180962180982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e180953180957180967%_
                          '1
                          '#f
                          '#f))
                        (_%e180963180985%_
                         (##unchecked-structure-ref
                          _%e180953180957180967%_
                          '2
                          '#f
                          '#f))
                        (_%e180964180988%_
                         (##unchecked-structure-ref
                          _%e180953180957180967%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e180964180988%_ '1)
                       (let ((_%e180965180991%_
                              (##unchecked-structure-ref
                               _%e180953180957180967%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g180993180995%_)
                                (eq? _%g180993180995%_ 'read-module-body))
                              _%e180965180991%_)
                             (_%K180961180979%_)
                             (_%else180959180975%_)))
                       (_%else180959180975%_)))
                 (_%else180959180975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude180952%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e180998%_
                                        ((lambda (_%xport181001%_)
                                           (let ((_%proc181004%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport181001%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc181004%_)
                                                 _%proc181004%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path180854%_
                                                  _%pre180948%_
                                                  _%proc181004%_))))
                                         _%$e180998%_)
                                        _%default-read-module-body180856%_)))
                                 (_%path-id181009%_
                                  (gx#core-module-path->namespace
                                   _%path180854%_))
                                 (_%pkg-id181011%_
                                  (if _%pkg180950%_
                                      (##string-append
                                       _%pkg180950%_
                                       '"/"
                                       _%path-id181009%_)
                                      _%path-id181009%_))
                                 (_%module-id181013%_
                                  (##string->symbol _%pkg-id181011%_))
                                 (_%module-ns181018%_
                                  (let ((_%$e181015%_ _%ns180949%_))
                                    (if _%$e181015%_
                                        _%$e181015%_
                                        _%pkg-id181011%_)))
                                 (_%body181022%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body181007%_
                                         _%inp180942%_))
                                      gx#current-module-reader-args
                                      _%args180946%_))
                                   gx#current-module-reader-path
                                   _%path180854%_)))
                            (values _%prelude180952%_
                                    _%module-id181013%_
                                    _%module-ns181018%_
                                    _%body181022%_)))))))
                 (_%string-e180858%_
                  (lambda (_%obj180936%_ _%what180937%_)
                    (if (string? _%obj180936%_)
                        _%obj180936%_
                        (if (symbol? _%obj180936%_)
                            (##symbol->string _%obj180936%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what180937%_)
                             _%path180854%_
                             _%obj180936%_)))))
                 (_%read-lang-args180859%_
                  (lambda (_%inp180891%_ _%args180892%_)
                    (let* ((_%args180893180901%_ _%args180892%_)
                           (_%else180895180909%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path180854%_)))
                           (_%K180897180924%_
                            (lambda (_%args180912%_ _%prelude180913%_)
                              (let* ((_%pkg180915%_
                                      (pgetq__0 'package: _%args180912%_))
                                     (_%pkg180917%_
                                      (if _%pkg180915%_
                                          (_%string-e180858%_
                                           _%pkg180915%_
                                           '"package")
                                          '#f))
                                     (_%ns180919%_
                                      (pgetq__0 'namespace: _%args180912%_))
                                     (_%ns180921%_
                                      (if _%ns180919%_
                                          (_%string-e180858%_
                                           _%ns180919%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body180857%_
                                 _%inp180891%_
                                 _%prelude180913%_
                                 _%ns180921%_
                                 _%pkg180917%_
                                 _%args180912%_)))))
                      (if (pair? _%args180893180901%_)
                          (let ((_%hd180898180927%_
                                 (##car _%args180893180901%_))
                                (_%tl180899180929%_
                                 (##cdr _%args180893180901%_)))
                            (let* ((_%prelude180932%_ _%hd180898180927%_)
                                   (_%args180934%_ _%tl180899180929%_))
                              (_%K180897180924%_
                               _%args180934%_
                               _%prelude180932%_)))
                          (_%else180895180909%_)))))
                 (_%read-lang180860%_
                  (lambda (_%inp180865%_)
                    (let* ((_%head180867%_ (read-line _%inp180865%_))
                           (_%$e180869%_
                            (string-index__0 _%head180867%_ '#\space)))
                      (if _%$e180869%_
                          ((lambda (_%ix180872%_)
                             (let ((_%lang180874%_
                                    (substring
                                     _%head180867%_
                                     '0
                                     _%ix180872%_)))
                               (if (equal? _%lang180874%_ '"#lang")
                                   (let* ((_%rest180876%_
                                           (substring
                                            _%head180867%_
                                            (##fx+ _%ix180872%_ '1)
                                            (string-length _%head180867%_)))
                                          (_%args180887%_
                                           (__with-catch
                                            (lambda (_%g180877180879%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path180854%_
                                               _%g180877180879%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest180876%_
                                               (lambda (_%g180882180884%_)
                                                 (read-all
                                                  _%g180882180884%_
                                                  read)))))))
                                     (_%read-lang-args180859%_
                                      _%inp180865%_
                                      _%args180887%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path180854%_))))
                           _%$e180869%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path180854%_)))))
                 (_%read-e180861%_
                  (lambda (_%inp180863%_)
                    (if (eq? (peek-char _%inp180863%_) '#\#)
                        (_%read-lang180860%_ _%inp180863%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path180854%_)))))
          (gx#call-with-input-source-file _%path180854%_ _%read-e180861%_))))
    (define gx#core-read-module-package
      (lambda (_%path180802%_ _%pre180803%_ _%ns180804%_)
        (letrec ((_%string-e180806%_
                  (lambda (_%e180849%_)
                    (if (symbol? _%e180849%_)
                        (##symbol->string _%e180849%_)
                        (if (string? _%e180849%_)
                            _%e180849%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e180849%_))))))
          (let _%lp180808%_ ((_%dir180810%_ (path-directory _%path180802%_))
                             (_%pkg-path180811%_ '()))
            (let ((_%gerbil.pkg180813%_
                   (path-expand '"gerbil.pkg" _%dir180810%_)))
              (if (##file-exists? _%gerbil.pkg180813%_)
                  (let ((_%plist180815%_
                         (gx#core-library-package-plist__% _%dir180810%_ '#t)))
                    (if (null? _%plist180815%_)
                        (let ((_%pkg180818%_
                               (if (null? _%pkg-path180811%_)
                                   '#f
                                   (string-join _%pkg-path180811%_ '"/"))))
                          (values _%pre180803%_ _%ns180804%_ _%pkg180818%_))
                        (if (list? _%plist180815%_)
                            (let* ((_%root180821%_
                                    (pgetq__0 'package: _%plist180815%_))
                                   (_%pkg180825%_
                                    (let ((_%pkg-path180823%_
                                           (if _%root180821%_
                                               (cons (_%string-e180806%_
                                                      _%root180821%_)
                                                     _%pkg-path180811%_)
                                               _%pkg-path180811%_)))
                                      (if (null? _%pkg-path180823%_)
                                          '#f
                                          (string-join
                                           _%pkg-path180823%_
                                           '"/"))))
                                   (_%ns180832%_
                                    (let ((_%ns180830%_
                                           (let ((_%$e180827%_ _%ns180804%_))
                                             (if _%$e180827%_
                                                 _%$e180827%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist180815%_)))))
                                      (if _%ns180830%_
                                          (_%string-e180806%_ _%ns180830%_)
                                          '#f)))
                                   (_%pre180837%_
                                    (let ((_%$e180834%_ _%pre180803%_))
                                      (if _%$e180834%_
                                          _%$e180834%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist180815%_)))))
                              (values _%pre180837%_
                                      _%ns180832%_
                                      _%pkg180825%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist180815%_))))
                  (let ((_%dir*180841%_
                         (path-strip-trailing-directory-separator
                          _%dir180810%_)))
                    (if (or (__string-empty? _%dir*180841%_)
                            (equal? _%dir180810%_ _%dir*180841%_))
                        (values _%pre180803%_ _%ns180804%_ '#f)
                        (let ((_%xpath180846%_
                               (path-strip-directory _%dir*180841%_))
                              (_%xdir180847%_ (path-directory _%dir*180841%_)))
                          (_%lp180808%_
                           _%xdir180847%_
                           (cons _%xpath180846%_ _%pkg-path180811%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path180800%_)
        (path-strip-extension (path-strip-directory _%path180800%_))))
    (define gx#core-module-path->id
      (lambda (_%path180798%_)
        (##string->symbol (gx#core-module-path->namespace _%path180798%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path180777%_ _%rel180778%_)
        (let* ((_%path180780%_ (gx#stx-e _%stx-path180777%_))
               (_%path180782%_
                (if (__string-empty? (path-extension _%path180780%_))
                    (##string-append _%path180780%_ '".ss")
                    _%path180780%_)))
          (gx#core-resolve-path__%
           _%path180782%_
           (let ((_%$e180785%_ (gx#stx-source _%stx-path180777%_)))
             (if _%$e180785%_ _%$e180785%_ _%rel180778%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path180791%_)
        (let ((_%rel180793%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path180791%_ _%rel180793%_))))
    (define gx#core-resolve-module-path
      (lambda _g182429_
        (let ((_g182430_ (##length _g182429_)))
          (cond ((##fx= _g182430_ 1)
                 (apply gx#core-resolve-module-path__0 _g182429_))
                ((##fx= _g182430_ 2)
                 (apply gx#core-resolve-module-path__% _g182429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g182429_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath180662%_)
        (let* ((_%spath180664%_ (symbol->string (gx#stx-e _%libpath180662%_)))
               (_%spath180666%_
                (substring
                 _%spath180664%_
                 '1
                 (##string-length _%spath180664%_)))
               (_%ext180668%_ (path-extension _%spath180666%_))
               (_%ssi180670%_
                (if (__string-empty? _%ext180668%_)
                    (##string-append _%spath180666%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath180666%_)
                     '".ssi")))
               (_%srcs180674%_
                (if (__string-empty? _%ext180668%_)
                    (##map (lambda (_%ext180672%_)
                             (string-append _%spath180666%_ _%ext180672%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath180666%_ '()))))
          (let _%lp180677%_ ((_%rest180679%_ (load-path)))
            (let* ((_%rest180680180689%_ _%rest180679%_)
                   (_%E180683180693%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest180680180689%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K180685180764%_
                     (lambda (_%rest180704%_ _%dir180705%_)
                       (letrec ((_%resolve180707%_
                                 (lambda (_%ssi180720%_ _%srcs180721%_)
                                   (let ((_%compiled-path180723%_
                                          (path-expand
                                           _%ssi180720%_
                                           _%dir180705%_)))
                                     (if (##file-exists?
                                          _%compiled-path180723%_)
                                         (path-normalize
                                          _%compiled-path180723%_)
                                         (let _%lpr180725%_ ((_%rest-src180727%_
                                                              _%srcs180721%_))
                                           (let* ((_%rest-src180728180736%_
                                                   _%rest-src180727%_)
                                                  (_%else180730180744%_
                                                   (lambda ()
                                                     (_%lp180677%_
                                                      _%rest180704%_)))
                                                  (_%K180732180752%_
                                                   (lambda (_%rest-src180747%_
                                                            _%src180748%_)
                                                     (let ((_%src-path180750%_
                                                            (path-expand
                                                             _%src180748%_
                                                             _%dir180705%_)))
                                                       (if (##file-exists?
                                                            _%src-path180750%_)
                                                           (path-normalize
                                                            _%src-path180750%_)
                                                           (_%lpr180725%_
                                                            _%rest-src180747%_))))))
                                             (if (pair? _%rest-src180728180736%_)
                                                 (let ((_%hd180733180755%_
                                                        (##car _%rest-src180728180736%_))
                                                       (_%tl180734180757%_
                                                        (##cdr _%rest-src180728180736%_)))
                                                   (let* ((_%src180760%_
                                                           _%hd180733180755%_)
                                                          (_%rest-src180762%_
                                                           _%tl180734180757%_))
                                                     (_%K180732180752%_
                                                      _%rest-src180762%_
                                                      _%src180760%_)))
                                                 (_%else180730180744%_)))))))))
                         (let ((_%$e180709%_
                                (gx#core-library-package-path-prefix
                                 _%dir180705%_)))
                           (if _%$e180709%_
                               ((lambda (_%prefix180712%_)
                                  (if (string-prefix?
                                       _%prefix180712%_
                                       _%spath180666%_)
                                      (let ((_%ssi180716%_
                                             (substring
                                              _%ssi180670%_
                                              (string-length _%prefix180712%_)
                                              (##string-length _%ssi180670%_)))
                                            (_%srcs180717%_
                                             (##map (lambda (_%src180714%_)
                                                      (substring
                                                       _%src180714%_
                                                       (string-length
                                                        _%prefix180712%_)
                                                       (string-length
                                                        _%src180714%_)))
                                                    _%srcs180674%_)))
                                        (_%resolve180707%_
                                         _%ssi180716%_
                                         _%srcs180717%_))
                                      (_%lp180677%_ _%rest180704%_)))
                                _%$e180709%_)
                               (_%resolve180707%_
                                _%ssi180670%_
                                _%srcs180674%_))))))
                    (_%K180684180698%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath180662%_))))
                (let ((_%try-match180682180701%_
                       (lambda ()
                         (if (null? _%rest180680180689%_)
                             (_%K180684180698%_)
                             (_%E180683180693%_)))))
                  (if (pair? _%rest180680180689%_)
                      (let ((_%tl180687180769%_ (##cdr _%rest180680180689%_))
                            (_%hd180686180767%_ (##car _%rest180680180689%_)))
                        (let ((_%dir180772%_ _%hd180686180767%_)
                              (_%rest180774%_ _%tl180687180769%_))
                          (_%K180685180764%_ _%rest180774%_ _%dir180772%_)))
                      (_%try-match180682180701%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath180630%_)
        (letrec ((_%resolve180632%_
                  (lambda (_%path180653%_ _%base180654%_)
                    (let ((_%$e180656%_
                           (string-rindex__0 _%base180654%_ '#\/)))
                      (if _%$e180656%_
                          ((lambda (_%idx180659%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base180654%_ '0 _%idx180659%_)
                                '"/"
                                _%path180653%_))))
                           _%$e180656%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path180653%_))))))))
          (let ((_%spath180634%_ (symbol->string (gx#stx-e _%modpath180630%_)))
                (_%mod180635%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod180635%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath180630%_))
            (let ((_%mpath180637%_
                   (symbol->string
                    (##structure-ref
                     _%mod180635%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp180639%_ ((_%spath180641%_ _%spath180634%_)
                                 (_%mpath180642%_ _%mpath180637%_))
                (if (string-prefix? '"../" _%spath180641%_)
                    (let ((_%$e180645%_
                           (string-rindex__0 _%mpath180642%_ '#\/)))
                      (if _%$e180645%_
                          ((lambda (_%idx180648%_)
                             (_%lp180639%_
                              (substring
                               _%spath180641%_
                               '3
                               (string-length _%spath180641%_))
                              (substring _%mpath180642%_ '0 _%idx180648%_)))
                           _%$e180645%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath180630%_)))
                    (if (string-prefix? '"./" _%spath180641%_)
                        (_%lp180639%_
                         (substring
                          _%spath180641%_
                          '2
                          (string-length _%spath180641%_))
                         _%mpath180642%_)
                        (_%resolve180632%_
                         _%spath180641%_
                         _%mpath180642%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir180622%_)
        (let ((_%$e180624%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir180622%_))))
          (if _%$e180624%_
              ((lambda (_%pkg180627%_)
                 (##string-append (symbol->string _%pkg180627%_) '"/"))
               _%$e180624%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir180592%_ _%exists?180593%_)
        (let ((_%$e180595%_ (__hash-get gx#__module-pkg-cache _%dir180592%_)))
          (if _%$e180595%_
              _%$e180595%_
              (let* ((_%gerbil.pkg180599%_
                      (path-expand '"gerbil.pkg" _%dir180592%_))
                     (_%plist180609%_
                      (if (or _%exists?180593%_
                              (##file-exists? _%gerbil.pkg180599%_))
                          (let ((_%e180604%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg180599%_
                                  read)))
                            (if (eof-object? _%e180604%_)
                                '()
                                (if (list? _%e180604%_)
                                    _%e180604%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg180599%_
                                     _%e180604%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir180592%_
                 _%plist180609%_)
                _%plist180609%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir180615%_)
        (let ((_%exists?180617%_ '#f))
          (gx#core-library-package-plist__% _%dir180615%_ _%exists?180617%_))))
    (define gx#core-library-package-plist
      (lambda _g182431_
        (let ((_g182432_ (##length _g182431_)))
          (cond ((##fx= _g182432_ 1)
                 (apply gx#core-library-package-plist__0 _g182431_))
                ((##fx= _g182432_ 2)
                 (apply gx#core-library-package-plist__% _g182431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g182431_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx180589%_)
        (gx#core-special-module-path? _%stx180589%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx180587%_)
        (gx#core-special-module-path? _%stx180587%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx180582%_ _%char180583%_)
        (if (gx#identifier? _%stx180582%_)
            (if (interned-symbol? (gx#stx-e _%stx180582%_))
                (let ((_%str180585%_
                       (symbol->string (gx#stx-e _%stx180582%_))))
                  (if (##fx> (##string-length _%str180585%_) '1)
                      (eq? (string-ref _%str180585%_ '0) _%char180583%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx180576%_)
        (gx#core-bound-identifier?__%
         _%stx180576%_
         (lambda (_%g180577180579%_)
           (gx#expander-binding?__% _%g180577180579%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx180570%_)
        (gx#core-bound-identifier?__%
         _%stx180570%_
         (lambda (_%g180571180573%_)
           (gx#expander-binding?__% _%g180571180573%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx180557%_)
        (letrec ((_%module-prelude?180559%_
                  (lambda (_%e180565%_)
                    (let ((_%$e180567%_
                           (##structure-instance-of?
                            _%e180565%_
                            'gx#module-context::t)))
                      (if _%$e180567%_
                          _%$e180567%_
                          (##structure-instance-of?
                           _%e180565%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx180557%_
           (lambda (_%g180560180562%_)
             (gx#expander-binding?__%
              _%g180560180562%_
              _%module-prelude?180559%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in180488%_ _%ctx180489%_ _%force-weak?180490%_)
        (let* ((_%in180491180500%_ _%in180488%_)
               (_%E180493180503%_
                (lambda ()
                  (error '"No clause matching"
                         _%in180491180500%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K180494180516%_
                (lambda (_%weak?180506%_
                         _%phi180507%_
                         _%key180508%_
                         _%source180509%_)
                  (gx#core-bind!__%
                   _%key180508%_
                   (let* ((_%e180511%_
                           (gx#core-resolve-module-export _%source180509%_))
                          (__obj182413
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
                      __obj182413
                      (##unchecked-structure-ref _%e180511%_ '1 '#f '#f)
                      _%key180508%_
                      _%phi180507%_
                      _%e180511%_
                      (##unchecked-structure-ref _%source180509%_ '1 '#f '#f)
                      (let ((_%$e180513%_ _%force-weak?180490%_))
                        (if _%$e180513%_ _%$e180513%_ _%weak?180506%_)))
                     __obj182413)
                   gx#core-context-rebind?
                   _%phi180507%_
                   _%ctx180489%_))))
          (if (##structure-direct-instance-of?
               _%in180491180500%_
               'gx#module-import::t)
              (let* ((_%e180495180519%_
                      (##unchecked-structure-ref
                       _%in180491180500%_
                       '1
                       '#f
                       '#f))
                     (_%source180522%_ _%e180495180519%_)
                     (_%e180496180524%_
                      (##unchecked-structure-ref
                       _%in180491180500%_
                       '2
                       '#f
                       '#f))
                     (_%key180527%_ _%e180496180524%_)
                     (_%e180497180529%_
                      (##unchecked-structure-ref
                       _%in180491180500%_
                       '3
                       '#f
                       '#f))
                     (_%phi180532%_ _%e180497180529%_)
                     (_%e180498180534%_
                      (##unchecked-structure-ref
                       _%in180491180500%_
                       '4
                       '#f
                       '#f))
                     (_%weak?180537%_ _%e180498180534%_))
                (_%K180494180516%_
                 _%weak?180537%_
                 _%phi180532%_
                 _%key180527%_
                 _%source180522%_))
              (_%E180493180503%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in180542%_)
        (let* ((_%ctx180544%_ (gx#current-expander-context))
               (_%force-weak?180546%_ '#f))
          (gx#core-bind-import!__%
           _%in180542%_
           _%ctx180544%_
           _%force-weak?180546%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in180548%_ _%ctx180549%_)
        (let ((_%force-weak?180551%_ '#f))
          (gx#core-bind-import!__%
           _%in180548%_
           _%ctx180549%_
           _%force-weak?180551%_))))
    (define gx#core-bind-import!
      (lambda _g182433_
        (let ((_g182434_ (##length _g182433_)))
          (cond ((##fx= _g182434_ 1) (apply gx#core-bind-import!__0 _g182433_))
                ((##fx= _g182434_ 2) (apply gx#core-bind-import!__1 _g182433_))
                ((##fx= _g182434_ 3) (apply gx#core-bind-import!__% _g182433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g182433_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in180474%_ _%ctx180475%_)
        (gx#core-bind-import!__% _%in180474%_ _%ctx180475%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in180480%_)
        (let ((_%ctx180482%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in180480%_ _%ctx180482%_))))
    (define gx#core-bind-weak-import!
      (lambda _g182435_
        (let ((_g182436_ (##length _g182435_)))
          (cond ((##fx= _g182436_ 1)
                 (apply gx#core-bind-weak-import!__0 _g182435_))
                ((##fx= _g182436_ 2)
                 (apply gx#core-bind-weak-import!__% _g182435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g182435_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out180367%_)
        (letrec ((_%subst180369%_
                  (lambda (_%key180414%_)
                    (let* ((_%key180415180423%_ _%key180414%_)
                           (_%else180417180431%_ (lambda () _%key180414%_))
                           (_%K180419180461%_
                            (lambda (_%mark180434%_ _%id180435%_)
                              (let* ((_%mark180436180442%_ _%mark180434%_)
                                     (_%E180438180445%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark180436180442%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K180439180453%_
                                      (lambda (_%subst180448%_)
                                        (let ((_%$e180450%_
                                               (if _%subst180448%_
                                                   (hash-get
                                                    _%subst180448%_
                                                    _%id180435%_)
                                                   '#f)))
                                          (if _%$e180450%_
                                              _%$e180450%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key180414%_))))))
                                (if (##structure-instance-of?
                                     _%mark180436180442%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e180440180456%_
                                            (##unchecked-structure-ref
                                             _%mark180436180442%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst180459%_ _%e180440180456%_))
                                      (_%K180439180453%_ _%subst180459%_))
                                    (_%E180438180445%_))))))
                      (if (pair? _%key180415180423%_)
                          (let ((_%hd180420180464%_
                                 (##car _%key180415180423%_))
                                (_%tl180421180466%_
                                 (##cdr _%key180415180423%_)))
                            (let* ((_%id180469%_ _%hd180420180464%_)
                                   (_%mark180471%_ _%tl180421180466%_))
                              (_%K180419180461%_ _%mark180471%_ _%id180469%_)))
                          (_%else180417180431%_))))))
          (let* ((_%out180370180380%_ _%out180367%_)
                 (_%E180372180383%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out180370180380%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K180373180390%_
                  (lambda (_%phi180386%_ _%key180387%_ _%ctx180388%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx180388%_ _%phi180386%_)
                     (_%subst180369%_ _%key180387%_)))))
            (if (##structure-direct-instance-of?
                 _%out180370180380%_
                 'gx#module-export::t)
                (let* ((_%e180374180393%_
                        (##unchecked-structure-ref
                         _%out180370180380%_
                         '1
                         '#f
                         '#f))
                       (_%ctx180396%_ _%e180374180393%_)
                       (_%e180375180398%_
                        (##unchecked-structure-ref
                         _%out180370180380%_
                         '2
                         '#f
                         '#f))
                       (_%key180401%_ _%e180375180398%_)
                       (_%e180376180403%_
                        (##unchecked-structure-ref
                         _%out180370180380%_
                         '3
                         '#f
                         '#f))
                       (_%phi180406%_ _%e180376180403%_)
                       (_%e180377180408%_
                        (##unchecked-structure-ref
                         _%out180370180380%_
                         '4
                         '#f
                         '#f))
                       (_%e180378180411%_
                        (##unchecked-structure-ref
                         _%out180370180380%_
                         '5
                         '#f
                         '#f)))
                  (_%K180373180390%_
                   _%phi180406%_
                   _%key180401%_
                   _%ctx180396%_))
                (_%E180372180383%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out180293%_ _%rename180294%_ _%dphi180295%_)
        (let* ((_%out180296180306%_ _%out180293%_)
               (_%E180298180309%_
                (lambda ()
                  (error '"No clause matching"
                         _%out180296180306%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K180299180321%_
                (lambda (_%weak?180312%_
                         _%name180313%_
                         _%phi180314%_
                         _%key180315%_
                         _%ctx180316%_)
                  (##structure
                   gx#module-import::t
                   _%out180293%_
                   (let ((_%$e180318%_ _%rename180294%_))
                     (if _%$e180318%_ _%$e180318%_ _%name180313%_))
                   (fx+ _%phi180314%_ _%dphi180295%_)
                   _%weak?180312%_))))
          (if (##structure-direct-instance-of?
               _%out180296180306%_
               'gx#module-export::t)
              (let* ((_%e180300180324%_
                      (##unchecked-structure-ref
                       _%out180296180306%_
                       '1
                       '#f
                       '#f))
                     (_%ctx180327%_ _%e180300180324%_)
                     (_%e180301180329%_
                      (##unchecked-structure-ref
                       _%out180296180306%_
                       '2
                       '#f
                       '#f))
                     (_%key180332%_ _%e180301180329%_)
                     (_%e180302180334%_
                      (##unchecked-structure-ref
                       _%out180296180306%_
                       '3
                       '#f
                       '#f))
                     (_%phi180337%_ _%e180302180334%_)
                     (_%e180303180339%_
                      (##unchecked-structure-ref
                       _%out180296180306%_
                       '4
                       '#f
                       '#f))
                     (_%name180342%_ _%e180303180339%_)
                     (_%e180304180344%_
                      (##unchecked-structure-ref
                       _%out180296180306%_
                       '5
                       '#f
                       '#f))
                     (_%weak?180347%_ _%e180304180344%_))
                (_%K180299180321%_
                 _%weak?180347%_
                 _%name180342%_
                 _%phi180337%_
                 _%key180332%_
                 _%ctx180327%_))
              (_%E180298180309%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out180352%_)
        (let* ((_%rename180354%_ '#f) (_%dphi180356%_ '0))
          (gx#core-module-export->import__%
           _%out180352%_
           _%rename180354%_
           _%dphi180356%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out180358%_ _%rename180359%_)
        (let ((_%dphi180361%_ '0))
          (gx#core-module-export->import__%
           _%out180358%_
           _%rename180359%_
           _%dphi180361%_))))
    (define gx#core-module-export->import
      (lambda _g182437_
        (let ((_g182438_ (##length _g182437_)))
          (cond ((##fx= _g182438_ 1)
                 (apply gx#core-module-export->import__0 _g182437_))
                ((##fx= _g182438_ 2)
                 (apply gx#core-module-export->import__1 _g182437_))
                ((##fx= _g182438_ 3)
                 (apply gx#core-module-export->import__% _g182437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g182437_))))))
    (define gx#core-expand-module%
      (lambda (_%stx180192%_)
        (letrec ((_%make-context180194%_
                  (lambda (_%id180271%_)
                    (let* ((_%super180273%_ (gx#current-expander-context))
                           (_%bind-id180275%_ (gx#stx-e _%id180271%_))
                           (_%mod-id180277%_
                            (if (##structure-instance-of?
                                 _%super180273%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super180273%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id180275%_)
                                _%bind-id180275%_))
                           (_%ns180279%_ (symbol->string _%mod-id180277%_))
                           (_%path180289%_
                            (if (##structure-instance-of?
                                 _%super180273%_
                                 'gx#module-context::t)
                                (let ((_%path180281%_
                                       (##unchecked-structure-ref
                                        _%super180273%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path180281%_)
                                          (null? _%path180281%_))
                                      (cons _%bind-id180275%_ _%path180281%_)
                                      (if (not _%path180281%_)
                                          _%bind-id180275%_
                                          (cons _%bind-id180275%_
                                                (cons _%path180281%_ '())))))
                                _%bind-id180275%_))
                           (__obj182414
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
                       __obj182414
                       _%mod-id180277%_
                       _%super180273%_
                       _%ns180279%_
                       _%path180289%_)
                      __obj182414)))
                 (_%valid-module-id?180195%_
                  (lambda (_%id180246%_)
                    (let* ((_%str180248%_ (symbol->string _%id180246%_))
                           (_%len180250%_ (##string-length _%str180248%_)))
                      (if (##fx>= _%len180250%_ '1)
                          (let _%loop180253%_ ((_%index180255%_
                                                (##fx- (##string-length
                                                        _%str180248%_)
                                                       '1)))
                            (if (##fx>= _%index180255%_ '0)
                                (let ((_%c180257%_
                                       (string-ref
                                        _%str180248%_
                                        _%index180255%_)))
                                  (if (or (and (##char>=? _%c180257%_ '#\a)
                                               (##char<=? _%c180257%_ '#\z))
                                          (and (##char>=? _%c180257%_ '#\A)
                                               (##char<=? _%c180257%_ '#\Z))
                                          (and (##char>=? _%c180257%_ '#\0)
                                               (##char<=? _%c180257%_ '#\9))
                                          (##char=? _%c180257%_ '#\_)
                                          (##char=? _%c180257%_ '#\-))
                                      (_%loop180253%_
                                       (##fx- _%index180255%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e180196180206%_ _%stx180192%_)
                 (_%E180198180210%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180196180206%_)))
                 (_%E180197180242%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180196180206%_)
                        (let ((_%e180199180214%_
                               (gx#syntax-e _%e180196180206%_)))
                          (let ((_%hd180200180217%_ (##car _%e180199180214%_))
                                (_%tl180201180219%_ (##cdr _%e180199180214%_)))
                            (if (gx#stx-pair? _%tl180201180219%_)
                                (let ((_%e180202180222%_
                                       (gx#syntax-e _%tl180201180219%_)))
                                  (let ((_%hd180203180225%_
                                         (##car _%e180202180222%_))
                                        (_%tl180204180227%_
                                         (##cdr _%e180202180222%_)))
                                    (let* ((_%id180230%_ _%hd180203180225%_)
                                           (_%body180232%_ _%tl180204180227%_))
                                      (if (and (gx#identifier? _%id180230%_)
                                               (gx#stx-list? _%body180232%_))
                                          (if (_%valid-module-id?180195%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx180234%_
                                                      (_%make-context180194%_
                                                       _%id180230%_))
                                                     (_%body180236%_
                                                      (gx#core-expand-module-begin
                                                       _%body180232%_
                                                       _%ctx180234%_))
                                                     (_%body180238%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body180236%_)
                                                       (gx#stx-source
                                                        _%stx180192%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx180234%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body180238%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx180234%_
                                                 _%body180238%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id180230%_
                                                 _%ctx180234%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id180230%_)
                                                  _%body180238%_)
                                                 (gx#stx-source
                                                  _%stx180192%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx180192%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E180198180210%_)))))
                                (_%E180198180210%_))))
                        (_%E180198180210%_)))))
            (_%E180197180242%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body180157%_ _%ctx180158%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx180162%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body180157%_)))
                     (_%e180163180170%_ _%stx180162%_)
                     (_%E180165180174%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx180162%_)))
                     (_%E180164180188%_
                      (lambda ()
                        (if (gx#stx-pair? _%e180163180170%_)
                            (let ((_%e180166180178%_
                                   (gx#syntax-e _%e180163180170%_)))
                              (let ((_%hd180167180181%_
                                     (##car _%e180166180178%_))
                                    (_%tl180168180183%_
                                     (##cdr _%e180166180178%_)))
                                (if (and (gx#identifier? _%hd180167180181%_)
                                         (gx#core-identifier=?
                                          _%hd180167180181%_
                                          '%#begin-module))
                                    (let ((_%body180186%_ _%tl180168180183%_))
                                      (if (gx#sealed-syntax? _%stx180162%_)
                                          _%body180186%_
                                          (gx#core-expand-module-body
                                           _%body180186%_)))
                                    (_%E180165180174%_))))
                            (_%E180165180174%_)))))
                (_%E180164180188%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx180158%_)))
    (define gx#core-expand-module-body
      (lambda (_%body179953%_)
        (letrec ((_%expand-special179955%_
                  (lambda (_%hd180084%_ _%K180085%_ _%rest180086%_ _%r180087%_)
                    (let* ((_%e180088180105%_ _%hd180084%_)
                           (_%E180100180109%_
                            (lambda ()
                              (_%K180085%_
                               _%rest180086%_
                               (cons (gx#core-expand-top _%hd180084%_)
                                     _%r180087%_))))
                           (_%E180090180121%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180088180105%_)
                                  (let ((_%e180101180113%_
                                         (gx#syntax-e _%e180088180105%_)))
                                    (let ((_%hd180102180116%_
                                           (##car _%e180101180113%_))
                                          (_%tl180103180118%_
                                           (##cdr _%e180101180113%_)))
                                      (if (and (gx#identifier?
                                                _%hd180102180116%_)
                                               (gx#core-identifier=?
                                                _%hd180102180116%_
                                                '%#export))
                                          (_%K180085%_
                                           _%rest180086%_
                                           (cons _%hd180084%_ _%r180087%_))
                                          (_%E180100180109%_))))
                                  (_%E180100180109%_))))
                           (_%E180089180153%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180088180105%_)
                                  (let ((_%e180091180125%_
                                         (gx#syntax-e _%e180088180105%_)))
                                    (let ((_%hd180092180128%_
                                           (##car _%e180091180125%_))
                                          (_%tl180093180130%_
                                           (##cdr _%e180091180125%_)))
                                      (if (and (gx#identifier?
                                                _%hd180092180128%_)
                                               (gx#core-identifier=?
                                                _%hd180092180128%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl180093180130%_)
                                              (let ((_%e180094180133%_
                                                     (gx#syntax-e
                                                      _%tl180093180130%_)))
                                                (let ((_%hd180095180136%_
                                                       (##car _%e180094180133%_))
                                                      (_%tl180096180138%_
                                                       (##cdr _%e180094180133%_)))
                                                  (let ((_%hd-bind180141%_
                                                         _%hd180095180136%_))
                                                    (if (gx#stx-pair?
                                                         _%tl180096180138%_)
                                                        (let ((_%e180097180143%_
                                                               (gx#syntax-e
                                                                _%tl180096180138%_)))
                                                          (let ((_%hd180098180146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180097180143%_))
                        (_%tl180099180148%_ (##cdr _%e180097180143%_)))
                    (let ((_%expr180151%_ _%hd180098180146%_))
                      (if (gx#stx-null? _%tl180099180148%_)
                          (if (gx#core-bind-values? _%hd-bind180141%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind180141%_)
                                (_%K180085%_
                                 _%rest180086%_
                                 (cons _%hd180084%_ _%r180087%_)))
                              (_%E180090180121%_))
                          (_%E180090180121%_)))))
                (_%E180090180121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180090180121%_))
                                          (_%E180090180121%_))))
                                  (_%E180090180121%_)))))
                      (_%E180089180153%_))))
                 (_%expand-body179956%_
                  (lambda (_%rbody179958%_)
                    (let _%lp179960%_ ((_%rest179962%_ _%rbody179958%_)
                                       (_%body179963%_ '()))
                      (let* ((_%rest179964179972%_ _%rest179962%_)
                             (_%else179966179980%_ (lambda () _%body179963%_))
                             (_%K179968180072%_
                              (lambda (_%rest179983%_ _%hd179984%_)
                                (let* ((_%e179985180006%_ _%hd179984%_)
                                       (_%E180001180010%_
                                        (lambda ()
                                          (_%lp179960%_
                                           _%rest179983%_
                                           (cons (gx#core-expand-expression
                                                  _%hd179984%_)
                                                 _%body179963%_))))
                                       (_%E179997180024%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179985180006%_)
                                              (let ((_%e180002180014%_
                                                     (gx#syntax-e
                                                      _%e179985180006%_)))
                                                (let ((_%hd180003180017%_
                                                       (##car _%e180002180014%_))
                                                      (_%tl180004180019%_
                                                       (##cdr _%e180002180014%_)))
                                                  (let ((_%form180022%_
                                                         _%hd180003180017%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form180022%_
                                                         gx#special-form-binding?)
                                                        (_%lp179960%_
                                                         _%rest179983%_
                                                         (cons _%hd179984%_
                                                               _%body179963%_))
                                                        (_%E180001180010%_)))))
                                              (_%E180001180010%_))))
                                       (_%E179987180036%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179985180006%_)
                                              (let ((_%e179998180028%_
                                                     (gx#syntax-e
                                                      _%e179985180006%_)))
                                                (let ((_%hd179999180031%_
                                                       (##car _%e179998180028%_))
                                                      (_%tl180000180033%_
                                                       (##cdr _%e179998180028%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd179999180031%_)
                                                           (gx#core-identifier=?
                                                            _%hd179999180031%_
                                                            '%#export))
                                                      (_%lp179960%_
                                                       _%rest179983%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd179984%_)
                                                             _%body179963%_))
                                                      (_%E179997180024%_))))
                                              (_%E179997180024%_))))
                                       (_%E179986180068%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179985180006%_)
                                              (let ((_%e179988180040%_
                                                     (gx#syntax-e
                                                      _%e179985180006%_)))
                                                (let ((_%hd179989180043%_
                                                       (##car _%e179988180040%_))
                                                      (_%tl179990180045%_
                                                       (##cdr _%e179988180040%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd179989180043%_)
                                                           (gx#core-identifier=?
                                                            _%hd179989180043%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl179990180045%_)
                                                          (let ((_%e179991180048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl179990180045%_)))
                    (let ((_%hd179992180051%_ (##car _%e179991180048%_))
                          (_%tl179993180053%_ (##cdr _%e179991180048%_)))
                      (let ((_%hd-bind180056%_ _%hd179992180051%_))
                        (if (gx#stx-pair? _%tl179993180053%_)
                            (let ((_%e179994180058%_
                                   (gx#syntax-e _%tl179993180053%_)))
                              (let ((_%hd179995180061%_
                                     (##car _%e179994180058%_))
                                    (_%tl179996180063%_
                                     (##cdr _%e179994180058%_)))
                                (let ((_%expr180066%_ _%hd179995180061%_))
                                  (if (gx#stx-null? _%tl179996180063%_)
                                      (_%lp179960%_
                                       _%rest179983%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind180056%_)
                                               (gx#core-expand-expression
                                                _%expr180066%_))
                                              (gx#stx-source _%hd179984%_))
                                             _%body179963%_))
                                      (_%E179987180036%_)))))
                            (_%E179987180036%_)))))
                  (_%E179987180036%_))
              (_%E179987180036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179987180036%_)))))
                                  (_%E179986180068%_)))))
                        (if (pair? _%rest179964179972%_)
                            (let ((_%hd179969180075%_
                                   (##car _%rest179964179972%_))
                                  (_%tl179970180077%_
                                   (##cdr _%rest179964179972%_)))
                              (let* ((_%hd180080%_ _%hd179969180075%_)
                                     (_%rest180082%_ _%tl179970180077%_))
                                (_%K179968180072%_
                                 _%rest180082%_
                                 _%hd180080%_)))
                            (_%else179966179980%_)))))))
          (_%expand-body179956%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body179953%_)
            _%expand-special179955%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx179794%_
               _%expanded?179795%_
               _%method179796%_
               _%current-phi179797%_
               _%expand1179798%_)
        (letrec ((_%K179800%_
                  (lambda (_%rest179920%_ _%r179921%_)
                    (let* ((_%e179922179929%_ _%rest179920%_)
                           (_%E179924179933%_ (lambda () _%r179921%_))
                           (_%E179923179949%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179922179929%_)
                                  (let ((_%e179925179937%_
                                         (gx#syntax-e _%e179922179929%_)))
                                    (let ((_%hd179926179940%_
                                           (##car _%e179925179937%_))
                                          (_%tl179927179942%_
                                           (##cdr _%e179925179937%_)))
                                      (let* ((_%hd179945%_ _%hd179926179940%_)
                                             (_%rest179947%_
                                              _%tl179927179942%_))
                                        (_%step179801%_
                                         _%hd179945%_
                                         _%rest179947%_
                                         _%r179921%_))))
                                  (_%E179924179933%_)))))
                      (_%E179923179949%_))))
                 (_%step179801%_
                  (lambda (_%hd179834%_ _%rest179835%_ _%r179836%_)
                    (let* ((_%e179837179855%_ _%hd179834%_)
                           (_%E179850179859%_
                            (lambda ()
                              (if (_%expanded?179795%_ (gx#stx-e _%hd179834%_))
                                  (_%K179800%_
                                   _%rest179835%_
                                   (cons (gx#stx-e _%hd179834%_) _%r179836%_))
                                  (_%expand1179798%_
                                   _%hd179834%_
                                   _%K179800%_
                                   _%rest179835%_
                                   _%r179836%_))))
                           (_%E179846179875%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179837179855%_)
                                  (let ((_%e179851179863%_
                                         (gx#syntax-e _%e179837179855%_)))
                                    (let ((_%hd179852179866%_
                                           (##car _%e179851179863%_))
                                          (_%tl179853179868%_
                                           (##cdr _%e179851179863%_)))
                                      (let* ((_%macro179871%_
                                              _%hd179852179866%_)
                                             (_%body179873%_
                                              _%tl179853179868%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro179871%_
                                             gx#syntax-binding?)
                                            (_%K179800%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro179871%_)
                                                    _%hd179834%_
                                                    _%method179796%_)
                                                   _%rest179835%_)
                                             _%r179836%_)
                                            (_%E179850179859%_)))))
                                  (_%E179850179859%_))))
                           (_%E179839179889%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179837179855%_)
                                  (let ((_%e179847179879%_
                                         (gx#syntax-e _%e179837179855%_)))
                                    (let ((_%hd179848179882%_
                                           (##car _%e179847179879%_))
                                          (_%tl179849179884%_
                                           (##cdr _%e179847179879%_)))
                                      (if (eq? (gx#stx-e _%hd179848179882%_)
                                               'begin:)
                                          (let ((_%body179887%_
                                                 _%tl179849179884%_))
                                            (_%K179800%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest179835%_
                                              _%body179887%_)
                                             _%r179836%_))
                                          (_%E179846179875%_))))
                                  (_%E179846179875%_))))
                           (_%E179838179916%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179837179855%_)
                                  (let ((_%e179840179893%_
                                         (gx#syntax-e _%e179837179855%_)))
                                    (let ((_%hd179841179896%_
                                           (##car _%e179840179893%_))
                                          (_%tl179842179898%_
                                           (##cdr _%e179840179893%_)))
                                      (if (eq? (gx#stx-e _%hd179841179896%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl179842179898%_)
                                              (let ((_%e179843179901%_
                                                     (gx#syntax-e
                                                      _%tl179842179898%_)))
                                                (let ((_%hd179844179904%_
                                                       (##car _%e179843179901%_))
                                                      (_%tl179845179906%_
                                                       (##cdr _%e179843179901%_)))
                                                  (let* ((_%dphi179909%_
                                                          _%hd179844179904%_)
                                                         (_%body179911%_
                                                          _%tl179845179906%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi179909%_)
                                                        (let ((_%rbody179914%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K179800%_ _%body179911%_ '()))
                        _%current-phi179797%_
                        (fx+ (gx#stx-e _%dphi179909%_)
                             (_%current-phi179797%_)))))
                  (_%K179800%_
                   _%rest179835%_
                   (foldr__0 cons _%r179836%_ _%rbody179914%_)))
                (_%E179839179889%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179839179889%_))
                                          (_%E179839179889%_))))
                                  (_%E179839179889%_)))))
                      (_%E179838179916%_)))))
          (let* ((_%e179802179809%_ _%stx179794%_)
                 (_%E179804179813%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179802179809%_)))
                 (_%E179803179830%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179802179809%_)
                        (let ((_%e179805179817%_
                               (gx#syntax-e _%e179802179809%_)))
                          (let ((_%hd179806179820%_ (##car _%e179805179817%_))
                                (_%tl179807179822%_ (##cdr _%e179805179817%_)))
                            (let ((_%body179825%_ _%tl179807179822%_))
                              (if (_%current-phi179797%_)
                                  (_%K179800%_ _%body179825%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K179800%_ _%body179825%_ '()))
                                   _%current-phi179797%_
                                   (gx#current-expander-phi))))))
                        (_%E179804179813%_)))))
            (_%E179803179830%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx179448%_ _%internal-expand?179449%_)
        (letrec ((_%expand1179451%_
                  (lambda (_%hd179766%_ _%K179767%_ _%rest179768%_ _%r179769%_)
                    (if (gx#core-bound-module? _%hd179766%_)
                        (_%import1179452%_
                         (gx#syntax-local-e__0 _%hd179766%_)
                         _%K179767%_
                         _%rest179768%_
                         _%r179769%_)
                        (if (gx#core-library-module-path? _%hd179766%_)
                            (_%import1179452%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd179766%_))
                             _%K179767%_
                             _%rest179768%_
                             _%r179769%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd179766%_)
                                (_%import1179452%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd179766%_))
                                 _%K179767%_
                                 _%rest179768%_
                                 _%r179769%_)
                                (let ((_%e179775%_ (gx#stx-e _%hd179766%_)))
                                  (if (pair? _%e179775%_)
                                      (let ((_%$e179778%_
                                             (gx#stx-e (##car _%e179775%_))))
                                        (if (eq? 'spec: _%$e179778%_)
                                            (_%import-spec179455%_
                                             _%hd179766%_
                                             _%K179767%_
                                             _%rest179768%_
                                             _%r179769%_)
                                            (if (eq? 'in: _%$e179778%_)
                                                (_%import-submodule179453%_
                                                 _%hd179766%_
                                                 _%K179767%_
                                                 _%rest179768%_
                                                 _%r179769%_)
                                                (if (eq? 'runtime:
                                                         _%$e179778%_)
                                                    (_%import-runtime179454%_
                                                     _%hd179766%_
                                                     _%K179767%_
                                                     _%rest179768%_
                                                     _%r179769%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx179448%_
                                                     _%hd179766%_)))))
                                      (if (string? _%e179775%_)
                                          (_%import1179452%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd179766%_
                                             (gx#stx-source _%stx179448%_)))
                                           _%K179767%_
                                           _%rest179768%_
                                           _%r179769%_)
                                          (if (##structure-instance-of?
                                               _%e179775%_
                                               'gx#module-context::t)
                                              (_%K179767%_
                                               _%rest179768%_
                                               (cons _%e179775%_ _%r179769%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx179448%_
                                               _%hd179766%_))))))))))
                 (_%import1179452%_
                  (lambda (_%ctx179755%_
                           _%K179756%_
                           _%rest179757%_
                           _%r179758%_)
                    (let ((_%dphi179760%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K179756%_
                       _%rest179757%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx179755%_
                              _%dphi179760%_
                              (map (lambda (_%g179761179763%_)
                                     (gx#core-module-export->import__%
                                      _%g179761179763%_
                                      '#f
                                      _%dphi179760%_))
                                   (##unchecked-structure-ref
                                    _%ctx179755%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r179758%_)))))
                 (_%import-submodule179453%_
                  (lambda (_%hd179722%_ _%K179723%_ _%rest179724%_ _%r179725%_)
                    (let* ((_%e179726179733%_ _%hd179722%_)
                           (_%E179728179737%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179726179733%_)))
                           (_%E179727179751%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179726179733%_)
                                  (let ((_%e179729179741%_
                                         (gx#syntax-e _%e179726179733%_)))
                                    (let ((_%hd179730179744%_
                                           (##car _%e179729179741%_))
                                          (_%tl179731179746%_
                                           (##cdr _%e179729179741%_)))
                                      (let ((_%spath179749%_
                                             _%tl179731179746%_))
                                        (_%import1179452%_
                                         (_%import-spec-source179456%_
                                          _%spath179749%_)
                                         _%K179723%_
                                         _%rest179724%_
                                         _%r179725%_))))
                                  (_%E179728179737%_)))))
                      (_%E179727179751%_))))
                 (_%import-runtime179454%_
                  (lambda (_%hd179689%_ _%K179690%_ _%rest179691%_ _%r179692%_)
                    (let* ((_%e179693179700%_ _%hd179689%_)
                           (_%E179695179704%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179693179700%_)))
                           (_%E179694179718%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179693179700%_)
                                  (let ((_%e179696179708%_
                                         (gx#syntax-e _%e179693179700%_)))
                                    (let ((_%hd179697179711%_
                                           (##car _%e179696179708%_))
                                          (_%tl179698179713%_
                                           (##cdr _%e179696179708%_)))
                                      (let ((_%spath179716%_
                                             _%tl179698179713%_))
                                        (_%K179690%_
                                         _%rest179691%_
                                         (cons (_%import-spec-source179456%_
                                                _%spath179716%_)
                                               _%r179692%_)))))
                                  (_%E179695179704%_)))))
                      (_%E179694179718%_))))
                 (_%import-spec179455%_
                  (lambda (_%hd179527%_ _%K179528%_ _%rest179529%_ _%r179530%_)
                    (let* ((_%e179531179548%_ _%hd179527%_)
                           (_%E179540179552%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179531179548%_)))
                           (_%E179533179663%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179531179548%_)
                                  (let ((_%e179541179556%_
                                         (gx#syntax-e _%e179531179548%_)))
                                    (let ((_%hd179542179559%_
                                           (##car _%e179541179556%_))
                                          (_%tl179543179561%_
                                           (##cdr _%e179541179556%_)))
                                      (if (gx#stx-pair? _%tl179543179561%_)
                                          (let ((_%e179544179564%_
                                                 (gx#syntax-e
                                                  _%tl179543179561%_)))
                                            (let ((_%hd179545179567%_
                                                   (##car _%e179544179564%_))
                                                  (_%tl179546179569%_
                                                   (##cdr _%e179544179564%_)))
                                              (let* ((_%path179572%_
                                                      _%hd179545179567%_)
                                                     (_%specs179574%_
                                                      _%tl179546179569%_))
                                                (let ((_%src-ctx179576%_
                                                       (_%import-spec-source179456%_
                                                        _%path179572%_))
                                                      (_%exports179577%_
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
                                                      (_%specs179578%_
                                                       (gx#syntax->list
                                                        _%specs179574%_)))
                                                  (for-each
                                                   (lambda (_%out179580%_)
                                                     (__hash-put!
                                                      _%exports179577%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out179580%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out179580%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out179580%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx179576%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K179528%_
                                                   _%rest179529%_
                                                   (foldl__0
                                                    (lambda (_%spec179582%_
                                                             _%r179583%_)
                                                      (let* ((_%e179584179600%_
                                                              _%spec179582%_)
                                                             (_%E179586179604%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e179584179600%_)))
                     (_%E179585179659%_
                      (lambda ()
                        (if (gx#stx-pair? _%e179584179600%_)
                            (let ((_%e179587179608%_
                                   (gx#syntax-e _%e179584179600%_)))
                              (let ((_%hd179588179611%_
                                     (##car _%e179587179608%_))
                                    (_%tl179589179613%_
                                     (##cdr _%e179587179608%_)))
                                (let ((_%phi179616%_ _%hd179588179611%_))
                                  (if (gx#stx-pair? _%tl179589179613%_)
                                      (let ((_%e179590179618%_
                                             (gx#syntax-e _%tl179589179613%_)))
                                        (let ((_%hd179591179621%_
                                               (##car _%e179590179618%_))
                                              (_%tl179592179623%_
                                               (##cdr _%e179590179618%_)))
                                          (let ((_%name179626%_
                                                 _%hd179591179621%_))
                                            (if (gx#stx-pair?
                                                 _%tl179592179623%_)
                                                (let ((_%e179593179628%_
                                                       (gx#syntax-e
                                                        _%tl179592179623%_)))
                                                  (let ((_%hd179594179631%_
                                                         (##car _%e179593179628%_))
                                                        (_%tl179595179633%_
                                                         (##cdr _%e179593179628%_)))
                                                    (let ((_%src-phi179636%_
                                                           _%hd179594179631%_))
                                                      (if (gx#stx-pair?
                                                           _%tl179595179633%_)
                                                          (let ((_%e179596179638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl179595179633%_)))
                    (let ((_%hd179597179641%_ (##car _%e179596179638%_))
                          (_%tl179598179643%_ (##cdr _%e179596179638%_)))
                      (let ((_%src-name179646%_ _%hd179597179641%_))
                        (if (gx#stx-null? _%tl179598179643%_)
                            (if (and (gx#stx-fixnum? _%src-phi179636%_)
                                     (gx#identifier? _%src-name179646%_)
                                     (gx#stx-fixnum? _%phi179616%_)
                                     (gx#identifier? _%name179626%_))
                                (let ((_%src-phi179648%_
                                       (gx#stx-e _%src-phi179636%_))
                                      (_%src-name179649%_
                                       (gx#core-identifier-key
                                        _%src-name179646%_))
                                      (_%phi179650%_ (gx#stx-e _%phi179616%_))
                                      (_%name179651%_
                                       (gx#core-identifier-key
                                        _%name179626%_)))
                                  (let ((_%$e179653%_
                                         (__hash-get
                                          _%exports179577%_
                                          (cons _%src-phi179648%_
                                                _%src-name179649%_))))
                                    (if _%$e179653%_
                                        ((lambda (_%out179656%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out179656%_
                                                  _%name179651%_
                                                  (fx- _%phi179650%_
                                                       _%src-phi179648%_))
                                                 _%r179583%_))
                                         _%$e179653%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx179448%_
                                         _%hd179527%_))))
                                (_%E179586179604%_))
                            (_%E179586179604%_)))))
                  (_%E179586179604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179586179604%_)))))
                                      (_%E179586179604%_)))))
                            (_%E179586179604%_)))))
                (_%E179585179659%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r179530%_
                                                    _%specs179578%_))))))
                                          (_%E179540179552%_))))
                                  (_%E179540179552%_))))
                           (_%E179532179685%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179531179548%_)
                                  (let ((_%e179534179667%_
                                         (gx#syntax-e _%e179531179548%_)))
                                    (let ((_%hd179535179670%_
                                           (##car _%e179534179667%_))
                                          (_%tl179536179672%_
                                           (##cdr _%e179534179667%_)))
                                      (if (gx#stx-pair? _%tl179536179672%_)
                                          (let ((_%e179537179675%_
                                                 (gx#syntax-e
                                                  _%tl179536179672%_)))
                                            (let ((_%hd179538179678%_
                                                   (##car _%e179537179675%_))
                                                  (_%tl179539179680%_
                                                   (##cdr _%e179537179675%_)))
                                              (let ((_%path179683%_
                                                     _%hd179538179678%_))
                                                (if (gx#stx-null?
                                                     _%tl179539179680%_)
                                                    (_%K179528%_
                                                     _%rest179529%_
                                                     (cons (_%import-spec-source179456%_
                                                            _%path179683%_)
                                                           _%r179530%_))
                                                    (_%E179533179663%_)))))
                                          (_%E179533179663%_))))
                                  (_%E179533179663%_)))))
                      (_%E179532179685%_))))
                 (_%import-spec-source179456%_
                  (lambda (_%spath179525%_)
                    (gx#core-import-nested-module
                     _%spath179525%_
                     _%stx179448%_)))
                 (_%import!179457%_
                  (lambda (_%rbody179470%_)
                    (letrec* ((_%current-ctx179472%_
                               (gx#current-expander-context))
                              (_%deps179473%_ (make-hash-table-eq))
                              (_%bind!179474%_
                               (lambda (_%hd179523%_)
                                 (gx#core-bind-import!__1
                                  _%hd179523%_
                                  _%current-ctx179472%_))))
                      (let _%lp179476%_ ((_%rest179478%_ _%rbody179470%_)
                                         (_%body179479%_ '()))
                        (let* ((_%rest179480179488%_ _%rest179478%_)
                               (_%else179482179499%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx179472%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx179472%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx179472%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body179479%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx179496%_ _%_179497%_)
                                     (gx#eval-module _%ctx179496%_))
                                   _%deps179473%_)
                                  _%body179479%_))
                               (_%K179484179511%_
                                (lambda (_%rest179502%_ _%hd179503%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd179503%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!179474%_ _%hd179503%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd179503%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd179503%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps179473%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd179503%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd179503%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!179474%_
                                             (##unchecked-structure-ref
                                              _%hd179503%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd179503%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps179473%_
                                                 (##unchecked-structure-ref
                                                  _%hd179503%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e179507%_
                                                 (##structure-instance-of?
                                                  _%hd179503%_
                                                  'gx#module-context::t)))
                                            (if _%$e179507%_
                                                _%$e179507%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx179448%_
                                                 _%hd179503%_)))))
                                  (_%lp179476%_
                                   _%rest179502%_
                                   (cons _%hd179503%_ _%body179479%_)))))
                          (if (pair? _%rest179480179488%_)
                              (let ((_%hd179485179514%_
                                     (##car _%rest179480179488%_))
                                    (_%tl179486179516%_
                                     (##cdr _%rest179480179488%_)))
                                (let* ((_%hd179519%_ _%hd179485179514%_)
                                       (_%rest179521%_ _%tl179486179516%_))
                                  (_%K179484179511%_
                                   _%rest179521%_
                                   _%hd179519%_)))
                              (_%else179482179499%_)))))))
                 (_%expanded-import?179458%_
                  (lambda (_%e179462%_)
                    (let ((_%$e179464%_
                           (##structure-direct-instance-of?
                            _%e179462%_
                            'gx#import-set::t)))
                      (if _%$e179464%_
                          _%$e179464%_
                          (let ((_%$e179467%_
                                 (##structure-direct-instance-of?
                                  _%e179462%_
                                  'gx#module-import::t)))
                            (if _%$e179467%_
                                _%$e179467%_
                                (##structure-instance-of?
                                 _%e179462%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody179460%_
                 (gx#core-expand-import/export
                  _%stx179448%_
                  _%expanded-import?179458%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1179451%_)))
            (if _%internal-expand?179449%_
                (reverse _%rbody179460%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!179457%_ _%rbody179460%_))
                 (gx#stx-source _%stx179448%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx179787%_)
        (let ((_%internal-expand?179789%_ '#f))
          (gx#core-expand-import%__%
           _%stx179787%_
           _%internal-expand?179789%_))))
    (define gx#core-expand-import%
      (lambda _g182439_
        (let ((_g182440_ (##length _g182439_)))
          (cond ((##fx= _g182440_ 1)
                 (apply gx#core-expand-import%__0 _g182439_))
                ((##fx= _g182440_ 2)
                 (apply gx#core-expand-import%__% _g182439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g182439_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath179375%_ _%where179376%_)
        (let* ((_%e179377179384%_ _%spath179375%_)
               (_%E179379179388%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179377179384%_)))
               (_%E179378179443%_
                (lambda ()
                  (if (gx#stx-pair? _%e179377179384%_)
                      (let ((_%e179380179392%_
                             (gx#syntax-e _%e179377179384%_)))
                        (let ((_%hd179381179395%_ (##car _%e179380179392%_))
                              (_%tl179382179397%_ (##cdr _%e179380179392%_)))
                          (let* ((_%origin179400%_ _%hd179381179395%_)
                                 (_%sub179402%_ _%tl179382179397%_)
                                 (_%origin-ctx179404%_
                                  (if (gx#stx-false? _%origin179400%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin179400%_))))
                            (let _%lp179406%_ ((_%rest179408%_ _%sub179402%_)
                                               (_%ctx179409%_
                                                _%origin-ctx179404%_))
                              (let* ((_%e179410179417%_ _%rest179408%_)
                                     (_%E179412179421%_
                                      (lambda () _%ctx179409%_))
                                     (_%E179411179439%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e179410179417%_)
                                            (let ((_%e179413179425%_
                                                   (gx#syntax-e
                                                    _%e179410179417%_)))
                                              (let ((_%hd179414179428%_
                                                     (##car _%e179413179425%_))
                                                    (_%tl179415179430%_
                                                     (##cdr _%e179413179425%_)))
                                                (let* ((_%id179433%_
                                                        _%hd179414179428%_)
                                                       (_%rest179435%_
                                                        _%tl179415179430%_)
                                                       (_%bind179437%_
                                                        (gx#resolve-identifier__%
                                                         _%id179433%_
                                                         '0
                                                         _%ctx179409%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind179437%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind179437%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where179376%_
                                                       _%spath179375%_
                                                       _%id179433%_))
                                                  (_%lp179406%_
                                                   _%rest179435%_
                                                   (##unchecked-structure-ref
                                                    _%bind179437%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E179412179421%_)))))
                                (_%E179411179439%_))))))
                      (_%E179379179388%_)))))
          (_%E179378179443%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd179373%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd179373%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx178868%_ _%internal-expand?178869%_)
        (letrec* ((_%make-export__182367182368%_
                   (lambda (_%bind179321%_
                            _%phi179322%_
                            _%ctx179323%_
                            _%name179324%_)
                     (let* ((_%key179326%_
                             (##unchecked-structure-ref
                              _%bind179321%_
                              '2
                              '#f
                              '#f))
                            (_%export-key179328%_
                             (if _%name179324%_
                                 (gx#core-identifier-key _%name179324%_)
                                 _%key179326%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx179323%_
                        _%key179326%_
                        _%phi179322%_
                        _%export-key179328%_
                        (let ((_%$e179331%_
                               (##structure-instance-of?
                                _%bind179321%_
                                'gx#extern-binding::t)))
                          (if _%$e179331%_
                              _%$e179331%_
                              (##structure-direct-instance-of?
                               _%bind179321%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__182369182372%_
                   (lambda (_%bind179337%_)
                     (let* ((_%phi179339%_ (gx#current-export-expander-phi))
                            (_%ctx179341%_ (gx#current-expander-context))
                            (_%name179343%_ '#f))
                       (_%make-export__182367182368%_
                        _%bind179337%_
                        _%phi179339%_
                        _%ctx179341%_
                        _%name179343%_))))
                  (_%make-export__1__182370182373%_
                   (lambda (_%bind179345%_ _%phi179346%_)
                     (let* ((_%ctx179348%_ (gx#current-expander-context))
                            (_%name179350%_ '#f))
                       (_%make-export__182367182368%_
                        _%bind179345%_
                        _%phi179346%_
                        _%ctx179348%_
                        _%name179350%_))))
                  (_%make-export__2__182371182374%_
                   (lambda (_%bind179352%_ _%phi179353%_ _%ctx179354%_)
                     (let ((_%name179356%_ '#f))
                       (_%make-export__182367182368%_
                        _%bind179352%_
                        _%phi179353%_
                        _%ctx179354%_
                        _%name179356%_))))
                  (_%make-export178871%_
                   (lambda _g182441_
                     (let ((_g182442_ (##length _g182441_)))
                       (cond ((##fx= _g182442_ 1)
                              (apply _%make-export__0__182369182372%_
                                     _g182441_))
                             ((##fx= _g182442_ 2)
                              (apply _%make-export__1__182370182373%_
                                     _g182441_))
                             ((##fx= _g182442_ 3)
                              (apply _%make-export__2__182371182374%_
                                     _g182441_))
                             ((##fx= _g182442_ 4)
                              (apply _%make-export__182367182368%_ _g182441_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g182441_))))))
                  (_%expand1178872%_
                   (lambda (_%hd179026%_
                            _%K179027%_
                            _%rest179028%_
                            _%r179029%_)
                     (let* ((_%e179030179062%_ _%hd179026%_)
                            (_%E179057179066%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx178868%_
                                _%hd179026%_)))
                            (_%E179047179150%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179030179062%_)
                                   (let ((_%e179058179070%_
                                          (gx#syntax-e _%e179030179062%_)))
                                     (let ((_%hd179059179073%_
                                            (##car _%e179058179070%_))
                                           (_%tl179060179075%_
                                            (##cdr _%e179058179070%_)))
                                       (if (eq? (gx#stx-e _%hd179059179073%_)
                                                'import:)
                                           (let ((_%in179078%_
                                                  _%tl179060179075%_))
                                             (if (gx#stx-list? _%in179078%_)
                                                 (let _%lp179080%_ ((_%in-rest179082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in179078%_)
                            (_%r179083%_ _%r179029%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e179084179091%_
                                                           _%in-rest179082%_)
                                                          (_%E179086179095%_
                                                           (lambda ()
                                                             (_%K179027%_
                                                              _%rest179028%_
                                                              _%r179083%_)))
                                                          (_%E179085179146%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e179084179091%_)
                         (let ((_%e179087179099%_
                                (gx#syntax-e _%e179084179091%_)))
                           (let ((_%hd179088179102%_ (##car _%e179087179099%_))
                                 (_%tl179089179104%_
                                  (##cdr _%e179087179099%_)))
                             (let* ((_%hd179107%_ _%hd179088179102%_)
                                    (_%in-rest179109%_ _%tl179089179104%_)
                                    (_%src179144%_
                                     (if (gx#core-bound-module? _%hd179107%_)
                                         (gx#syntax-local-e__0 _%hd179107%_)
                                         (if (gx#core-library-module-path?
                                              _%hd179107%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd179107%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd179107%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd179107%_))
                                                 (if (gx#stx-string?
                                                      _%hd179107%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd179107%_
                                                       (gx#stx-source
                                                        _%stx178868%_)))
                                                     (let* ((_%e179115179122%_
                                                             _%hd179107%_)
                                                            (_%E179117179126%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx178868%_
                                                                _%hd179107%_)))
                                                            (_%E179116179140%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e179115179122%_)
                           (let ((_%e179118179130%_
                                  (gx#syntax-e _%e179115179122%_)))
                             (let ((_%hd179119179133%_
                                    (##car _%e179118179130%_))
                                   (_%tl179120179135%_
                                    (##cdr _%e179118179130%_)))
                               (if (eq? (gx#stx-e _%hd179119179133%_) 'in:)
                                   (let ((_%spath179138%_ _%tl179120179135%_))
                                     (gx#core-import-nested-module
                                      _%spath179138%_
                                      _%stx178868%_))
                                   (_%E179117179126%_))))
                           (_%E179117179126%_)))))
               (_%E179116179140%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp179080%_
                                _%in-rest179109%_
                                (_%export-imports178873%_
                                 _%src179144%_
                                 _%r179083%_)))))
                         (_%E179086179095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E179085179146%_)))
                                                 (_%E179057179066%_)))
                                           (_%E179057179066%_))))
                                   (_%E179057179066%_))))
                            (_%E179034179190%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179030179062%_)
                                   (let ((_%e179048179154%_
                                          (gx#syntax-e _%e179030179062%_)))
                                     (let ((_%hd179049179157%_
                                            (##car _%e179048179154%_))
                                           (_%tl179050179159%_
                                            (##cdr _%e179048179154%_)))
                                       (if (eq? (gx#stx-e _%hd179049179157%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl179050179159%_)
                                               (let ((_%e179051179162%_
                                                      (gx#syntax-e
                                                       _%tl179050179159%_)))
                                                 (let ((_%hd179052179165%_
                                                        (##car _%e179051179162%_))
                                                       (_%tl179053179167%_
                                                        (##cdr _%e179051179162%_)))
                                                   (let ((_%id179170%_
                                                          _%hd179052179165%_))
                                                     (if (gx#stx-pair?
                                                          _%tl179053179167%_)
                                                         (let ((_%e179054179172%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl179053179167%_)))
                   (let ((_%hd179055179175%_ (##car _%e179054179172%_))
                         (_%tl179056179177%_ (##cdr _%e179054179172%_)))
                     (let ((_%name179180%_ _%hd179055179175%_))
                       (if (gx#stx-null? _%tl179056179177%_)
                           (let* ((_%phi179182%_
                                   (gx#current-export-expander-phi))
                                  (_%$e179184%_
                                   (gx#core-resolve-identifier__1
                                    _%id179170%_
                                    _%phi179182%_)))
                             (if _%$e179184%_
                                 ((lambda (_%bind179187%_)
                                    (_%K179027%_
                                     _%rest179028%_
                                     (cons (_%make-export__182367182368%_
                                            _%bind179187%_
                                            _%phi179182%_
                                            (gx#current-expander-context)
                                            _%name179180%_)
                                           _%r179029%_)))
                                  _%$e179184%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx178868%_
                                  _%hd179026%_
                                  _%id179170%_)))
                           (_%E179047179150%_)))))
                 (_%E179047179150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179047179150%_))
                                           (_%E179047179150%_))))
                                   (_%E179047179150%_))))
                            (_%E179033179240%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179030179062%_)
                                   (let ((_%e179035179194%_
                                          (gx#syntax-e _%e179030179062%_)))
                                     (let ((_%hd179036179197%_
                                            (##car _%e179035179194%_))
                                           (_%tl179037179199%_
                                            (##cdr _%e179035179194%_)))
                                       (if (eq? (gx#stx-e _%hd179036179197%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl179037179199%_)
                                               (let ((_%e179038179202%_
                                                      (gx#syntax-e
                                                       _%tl179037179199%_)))
                                                 (let ((_%hd179039179205%_
                                                        (##car _%e179038179202%_))
                                                       (_%tl179040179207%_
                                                        (##cdr _%e179038179202%_)))
                                                   (let ((_%phi179210%_
                                                          _%hd179039179205%_))
                                                     (if (gx#stx-pair?
                                                          _%tl179040179207%_)
                                                         (let ((_%e179041179212%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl179040179207%_)))
                   (let ((_%hd179042179215%_ (##car _%e179041179212%_))
                         (_%tl179043179217%_ (##cdr _%e179041179212%_)))
                     (let ((_%id179220%_ _%hd179042179215%_))
                       (if (gx#stx-pair? _%tl179043179217%_)
                           (let ((_%e179044179222%_
                                  (gx#syntax-e _%tl179043179217%_)))
                             (let ((_%hd179045179225%_
                                    (##car _%e179044179222%_))
                                   (_%tl179046179227%_
                                    (##cdr _%e179044179222%_)))
                               (let ((_%name179230%_ _%hd179045179225%_))
                                 (if (gx#stx-null? _%tl179046179227%_)
                                     (if (and (gx#stx-fixnum? _%phi179210%_)
                                              (gx#identifier? _%id179220%_)
                                              (gx#identifier? _%name179230%_))
                                         (let* ((_%phi179232%_
                                                 (gx#stx-e _%phi179210%_))
                                                (_%$e179234%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id179220%_
                                                  _%phi179232%_)))
                                           (if _%$e179234%_
                                               ((lambda (_%bind179237%_)
                                                  (_%K179027%_
                                                   _%rest179028%_
                                                   (cons (_%make-export__182367182368%_
                                                          _%bind179237%_
                                                          _%phi179232%_
                                                          (gx#current-expander-context)
                                                          _%name179230%_)
                                                         _%r179029%_)))
                                                _%$e179234%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx178868%_
                                                _%hd179026%_
                                                _%id179220%_)))
                                         (_%E179034179190%_))
                                     (_%E179034179190%_)))))
                           (_%E179034179190%_)))))
                 (_%E179034179190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179034179190%_))
                                           (_%E179034179190%_))))
                                   (_%E179034179190%_))))
                            (_%E179032179252%_
                             (lambda ()
                               (let ((_%id179244%_ _%e179030179062%_))
                                 (if (gx#identifier? _%id179244%_)
                                     (let ((_%$e179246%_
                                            (gx#core-resolve-identifier__1
                                             _%id179244%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e179246%_
                                           ((lambda (_%bind179249%_)
                                              (_%K179027%_
                                               _%rest179028%_
                                               (cons (_%make-export__0__182369182372%_
                                                      _%bind179249%_)
                                                     _%r179029%_)))
                                            _%$e179246%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx178868%_
                                            _%hd179026%_)))
                                     (_%E179033179240%_)))))
                            (_%E179031179316%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e179030179062%_) '#t)
                                   (let* ((_%current-ctx179256%_
                                           (gx#current-expander-context))
                                          (_%current-phi179258%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx179260%_
                                           (gx#core-context-shift
                                            _%current-ctx179256%_
                                            _%current-phi179258%_))
                                          (_%phi-bind179262%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx179260%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp179265%_ ((_%bind-rest179267%_
                                                         _%phi-bind179262%_)
                                                        (_%set179268%_ '()))
                                       (let* ((_%bind-rest179269179279%_
                                               _%bind-rest179267%_)
                                              (_%else179271179287%_
                                               (lambda ()
                                                 (_%K179027%_
                                                  _%rest179028%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi179258%_
                                                         _%set179268%_)
                                                        _%r179029%_))))
                                              (_%K179273179297%_
                                               (lambda (_%bind-rest179290%_
                                                        _%bind179291%_
                                                        _%key179292%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind179291%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind179291%_))
                                                     (_%lp179265%_
                                                      _%bind-rest179290%_
                                                      _%set179268%_)
                                                     (_%lp179265%_
                                                      _%bind-rest179290%_
                                                      (cons (_%make-export__2__182371182374%_
                                                             _%bind179291%_
                                                             _%current-phi179258%_
                                                             _%current-ctx179256%_)
                                                            _%set179268%_))))))
                                         (if (pair? _%bind-rest179269179279%_)
                                             (let ((_%hd179274179300%_
                                                    (##car _%bind-rest179269179279%_))
                                                   (_%tl179275179302%_
                                                    (##cdr _%bind-rest179269179279%_)))
                                               (if (pair? _%hd179274179300%_)
                                                   (let ((_%hd179276179305%_
                                                          (##car _%hd179274179300%_))
                                                         (_%tl179277179307%_
                                                          (##cdr _%hd179274179300%_)))
                                                     (let* ((_%key179310%_
                                                             _%hd179276179305%_)
                                                            (_%bind179312%_
                                                             _%tl179277179307%_)
                                                            (_%bind-rest179314%_
                                                             _%tl179275179302%_))
                                                       (_%K179273179297%_
                                                        _%bind-rest179314%_
                                                        _%bind179312%_
                                                        _%key179310%_)))
                                                   (_%else179271179287%_)))
                                             (_%else179271179287%_)))))
                                   (_%E179032179252%_)))))
                       (_%E179031179316%_))))
                  (_%export-imports178873%_
                   (lambda (_%src178903%_ _%r178904%_)
                     (letrec* ((_%current-ctx178906%_
                                (gx#current-expander-context))
                               (_%current-phi178907%_
                                (gx#current-export-expander-phi))
                               (_%import->export178908%_
                                (lambda (_%in178989%_)
                                  (let* ((_%in178990178998%_ _%in178989%_)
                                         (_%E178992179001%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in178990178998%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K178993179008%_
                                          (lambda (_%phi179004%_
                                                   _%key179005%_
                                                   _%out179006%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx178906%_
                                             _%key179005%_
                                             _%phi179004%_
                                             _%key179005%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in178990178998%_
                                         'gx#module-import::t)
                                        (let* ((_%e178994179011%_
                                                (##unchecked-structure-ref
                                                 _%in178990178998%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out179014%_
                                                _%e178994179011%_)
                                               (_%e178995179016%_
                                                (##unchecked-structure-ref
                                                 _%in178990178998%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key179019%_
                                                _%e178995179016%_)
                                               (_%e178996179021%_
                                                (##unchecked-structure-ref
                                                 _%in178990178998%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi179024%_
                                                _%e178996179021%_))
                                          (_%K178993179008%_
                                           _%phi179024%_
                                           _%key179019%_
                                           _%out179014%_))
                                        (_%E178992179001%_)))))
                               (_%fold-e178909%_
                                (lambda (_%in178911%_ _%r178912%_)
                                  (let* ((_%in178913178927%_ _%in178911%_)
                                         (_%else178916178935%_
                                          (lambda () _%r178912%_)))
                                    (let ((_%K178922178971%_
                                           (lambda (_%phi178967%_
                                                    _%key178968%_
                                                    _%out178969%_)
                                             (if (and (fx= _%phi178967%_
                                                           _%current-phi178907%_)
                                                      (eq? _%src178903%_
                                                           (##unchecked-structure-ref
                                                            _%out178969%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export178908%_
                                                        _%in178911%_)
                                                       _%r178912%_)
                                                 _%r178912%_)))
                                          (_%K178918178946%_
                                           (lambda (_%imports178939%_
                                                    _%phi178940%_
                                                    _%ctx178941%_)
                                             (if (and (fx= _%phi178940%_
                                                           _%current-phi178907%_)
                                                      (eq? _%src178903%_
                                                           _%ctx178941%_))
                                                 (foldl__0
                                                  (lambda (_%in178943%_
                                                           _%r178944%_)
                                                    (cons (_%import->export178908%_
                                                           _%in178943%_)
                                                          _%r178944%_))
                                                  _%r178912%_
                                                  _%imports178939%_)
                                                 _%r178912%_))))
                                      (let ((_%try-match178915178964%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in178913178927%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e178919178949%_
                                                           (##unchecked-structure-ref
                                                            _%in178913178927%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e178920178954%_
                                                           (##unchecked-structure-ref
                                                            _%in178913178927%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e178921178959%_
                                                           (##unchecked-structure-ref
                                                            _%in178913178927%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx178952%_
                                                            _%e178919178949%_)
                                                           (_%phi178957%_
                                                            _%e178920178954%_)
                                                           (_%imports178962%_
                                                            _%e178921178959%_))
                                                       (_%K178918178946%_
                                                        _%imports178962%_
                                                        _%phi178957%_
                                                        _%ctx178952%_)))
                                                   (_%else178916178935%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in178913178927%_
                                             'gx#module-import::t)
                                            (let* ((_%e178923178974%_
                                                    (##unchecked-structure-ref
                                                     _%in178913178927%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e178924178979%_
                                                    (##unchecked-structure-ref
                                                     _%in178913178927%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e178925178984%_
                                                    (##unchecked-structure-ref
                                                     _%in178913178927%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out178977%_
                                                     _%e178923178974%_)
                                                    (_%key178982%_
                                                     _%e178924178979%_)
                                                    (_%phi178987%_
                                                     _%e178925178984%_))
                                                (_%K178922178971%_
                                                 _%phi178987%_
                                                 _%key178982%_
                                                 _%out178977%_)))
                                            (_%try-match178915178964%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src178903%_
                              _%current-phi178907%_
                              (foldl__0
                               _%fold-e178909%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx178906%_
                                '8
                                '#f
                                '#f)))
                             _%r178904%_))))
                  (_%export!178874%_
                   (lambda (_%rbody178890%_)
                     (letrec* ((_%current-ctx178892%_
                                (gx#current-expander-context))
                               (_%fold-e178893%_
                                (lambda (_%out178897%_ _%r178898%_)
                                  (if (##structure-direct-instance-of?
                                       _%out178897%_
                                       'gx#module-export::t)
                                      (cons _%out178897%_ _%r178898%_)
                                      (if (##structure-direct-instance-of?
                                           _%out178897%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r178898%_
                                           (##unchecked-structure-ref
                                            _%out178897%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r178898%_)))))
                       (let ((_%body178895%_ (reverse _%rbody178890%_)))
                         (##unchecked-structure-set!
                          _%current-ctx178892%_
                          (foldl__0
                           _%fold-e178893%_
                           (##unchecked-structure-ref
                            _%current-ctx178892%_
                            '9
                            '#f
                            '#f)
                           _%body178895%_)
                          '9
                          '#f
                          '#f)
                         _%body178895%_))))
                  (_%expanded-export?178875%_
                   (lambda (_%e178885%_)
                     (let ((_%$e178887%_
                            (##structure-direct-instance-of?
                             _%e178885%_
                             'gx#module-export::t)))
                       (if _%$e178887%_
                           _%$e178887%_
                           (##structure-direct-instance-of?
                            _%e178885%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?178869%_)
              (let ((_%rbody178881%_
                     (gx#core-expand-import/export
                      _%stx178868%_
                      _%expanded-export?178875%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1178872%_)))
                (if _%internal-expand?178869%_
                    (reverse _%rbody178881%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!178874%_ _%rbody178881%_))
                     (gx#stx-source _%stx178868%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx178868%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx178868%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx179366%_)
        (let ((_%internal-expand?179368%_ '#f))
          (gx#core-expand-export%__%
           _%stx179366%_
           _%internal-expand?179368%_))))
    (define gx#core-expand-export%
      (lambda _g182443_
        (let ((_g182444_ (##length _g182443_)))
          (cond ((##fx= _g182444_ 1)
                 (apply gx#core-expand-export%__0 _g182443_))
                ((##fx= _g182444_ 2)
                 (apply gx#core-expand-export%__% _g182443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g182443_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd178865%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd178865%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx178835%_)
        (let* ((_%e178836178843%_ _%stx178835%_)
               (_%E178838178847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178836178843%_)))
               (_%E178837178861%_
                (lambda ()
                  (if (gx#stx-pair? _%e178836178843%_)
                      (let ((_%e178839178851%_
                             (gx#syntax-e _%e178836178843%_)))
                        (let ((_%hd178840178854%_ (##car _%e178839178851%_))
                              (_%tl178841178856%_ (##cdr _%e178839178851%_)))
                          (let ((_%body178859%_ _%tl178841178856%_))
                            (if (gx#identifier-list? _%body178859%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body178859%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body178859%_))
                                   (gx#stx-source _%stx178835%_)))
                                (_%E178838178847%_)))))
                      (_%E178838178847%_)))))
          (_%E178837178861%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id178801%_ _%private?178802%_ _%phi178803%_ _%ctx178804%_)
        (gx#core-bind-syntax!__%
         _%id178801%_
         ((if _%private?178802%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id178801%_))
         _%private?178802%_
         _%phi178803%_
         _%ctx178804%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id178809%_)
        (let* ((_%private?178811%_ '#f)
               (_%phi178813%_ (gx#current-expander-phi))
               (_%ctx178815%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178809%_
           _%private?178811%_
           _%phi178813%_
           _%ctx178815%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id178817%_ _%private?178818%_)
        (let* ((_%phi178820%_ (gx#current-expander-phi))
               (_%ctx178822%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178817%_
           _%private?178818%_
           _%phi178820%_
           _%ctx178822%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id178824%_ _%private?178825%_ _%phi178826%_)
        (let ((_%ctx178828%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178824%_
           _%private?178825%_
           _%phi178826%_
           _%ctx178828%_))))
    (define gx#core-bind-feature!
      (lambda _g182445_
        (let ((_g182446_ (##length _g182445_)))
          (cond ((##fx= _g182446_ 1)
                 (apply gx#core-bind-feature!__0 _g182445_))
                ((##fx= _g182446_ 2)
                 (apply gx#core-bind-feature!__1 _g182445_))
                ((##fx= _g182446_ 3)
                 (apply gx#core-bind-feature!__2 _g182445_))
                ((##fx= _g182446_ 4)
                 (apply gx#core-bind-feature!__% _g182445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g182445_))))))))
