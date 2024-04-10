(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712784665)
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
      (lambda _%$args126235%_
        (apply make-instance gx#module-import::t _%$args126235%_)))
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
      (lambda _%$args126232%_
        (apply make-instance gx#module-export::t _%$args126232%_)))
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
      (lambda _%$args126229%_
        (apply make-instance gx#import-set::t _%$args126229%_)))
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
      (lambda _%$args126226%_
        (apply make-instance gx#export-set::t _%$args126226%_)))
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
      (lambda _%$args126223%_
        (apply make-instance gx#import-expander::t _%$args126223%_)))
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
      (lambda _%$args126220%_
        (apply make-instance gx#export-expander::t _%$args126220%_)))
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
      (lambda _%$args126217%_
        (apply make-instance gx#import-export-expander::t _%$args126217%_)))
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
      (lambda (_%path126214%_ _%fun126215%_)
        (call-with-input-file
         (cons 'path: (cons _%path126214%_ gx#source-file-settings))
         _%fun126215%_)))
    (define gx#module-context:::init!
      (lambda (_%self122666126195%_
               _%id126197%_
               _%super126198%_
               _%ns126199%_
               _%path126200%_)
        (let* ((_%self126202%_ _%self122666126195%_)
               (_%self126204%_ _%self126202%_))
          (if (##fx< '11 (##structure-length _%self126204%_))
              (begin
                (##unchecked-structure-set!
                 _%self126204%_
                 _%id126197%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126204%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126204%_
                 _%super126198%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126204%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self126204%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self126204%_
                 _%ns126199%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126204%_
                 _%path126200%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126204%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self126204%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self126204%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self126204%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self126204%_
                     '11
                     (##vector-length _%self126204%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self122667126026%_ _%ctx126028%_ _%root126029%_)
        (let* ((_%self126031%_ _%self122667126026%_)
               (_%self126033%_ _%self126031%_)
               (_%super126049%_
                (let ((_%$e126043%_ _%root126029%_))
                  (if _%$e126043%_
                      _%$e126043%_
                      (let ((_%$e126046%_ (gx#core-context-root__0)))
                        (if _%$e126046%_
                            _%$e126046%_
                            (let ((__obj126279
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor126280
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj126279
                                      ':init!)))
                                (if __constructor126280
                                    (__constructor126280 __obj126279)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj126279)))))))
          (if _%ctx126028%_
              (let ((_%id126052%_
                     (##structure-ref
                      _%ctx126028%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path126053%_
                     (##structure-ref
                      _%ctx126028%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in126054%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx126028%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e126055%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx126028%_)))))
                (if (##fx< '8 (##structure-length _%self126033%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self126033%_
                       _%id126052%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126033%_
                       (make-hash-table-eq 'size: (##length _%in126054%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126033%_
                       _%super126049%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126033%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126033%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126033%_
                       _%path126053%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126033%_
                       _%in126054%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126033%_
                       _%e126055%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self126033%_
                           '8
                           (##vector-length _%self126033%_)))
                (##for-each
                 (lambda (_%g126056126058%_)
                   (gx#core-bind-weak-import!__%
                    _%g126056126058%_
                    _%self126033%_))
                 _%in126054%_))
              (if (##fx< '8 (##structure-length _%self126033%_))
                  (begin
                    (##unchecked-structure-set! _%self126033%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self126033%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self126033%_
                     _%super126049%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self126033%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self126033%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self126033%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self126033%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self126033%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self126033%_
                         '8
                         (##vector-length _%self126033%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self122667126064%_ _%ctx126065%_)
        (let ((_%root126067%_ '#f))
          (gx#prelude-context:::init!__%
           _%self122667126064%_
           _%ctx126065%_
           _%root126067%_))))
    (define gx#prelude-context:::init!
      (lambda _g126286_
        (let ((_g126285_ (##length _g126286_)))
          (cond ((##fx= _g126285_ 2)
                 (apply gx#prelude-context:::init!__0 _g126286_))
                ((##fx= _g126285_ 3)
                 (apply gx#prelude-context:::init!__% _g126286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g126286_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125900%_ _%e125901%_)
        (if (##fx< '3 (##structure-length _%self125900%_))
            (begin
              (##unchecked-structure-set!
               _%self125900%_
               _%e125901%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125900%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125900%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125900%_
                   '3
                   (##vector-length _%self125900%_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_%g125526125529%_ _%g125527125531%_)
        (gx#core-apply-user-expander__%
         _%g125526125529%_
         _%g125527125531%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g125397125400%_ _%g125398125402%_)
        (gx#core-apply-user-expander__%
         _%g125397125400%_
         _%g125398125402%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx125268%_)
        (let* ((_%path125270%_
                (##structure-ref _%ctx125268%_ '7 gx#module-context::t '#f))
               (_%path125272%_
                (if (pair? _%path125270%_)
                    (last _%path125270%_)
                    _%path125270%_)))
          (if (string? _%path125272%_) _%path125272%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path125244%_ _%reload?125245%_ _%eval?125246%_)
        (let ((_%ctx125248%_
               ((gx#current-expander-module-import)
                _%path125244%_
                _%reload?125245%_)))
          (if (and _%ctx125248%_ _%eval?125246%_)
              (gx#eval-module _%ctx125248%_)
              '#!void)
          _%ctx125248%_)))
    (define gx#import-module__0
      (lambda (_%path125253%_)
        (let* ((_%reload?125255%_ '#f) (_%eval?125257%_ '#f))
          (gx#import-module__%
           _%path125253%_
           _%reload?125255%_
           _%eval?125257%_))))
    (define gx#import-module__1
      (lambda (_%path125259%_ _%reload?125260%_)
        (let ((_%eval?125262%_ '#f))
          (gx#import-module__%
           _%path125259%_
           _%reload?125260%_
           _%eval?125262%_))))
    (define gx#import-module
      (lambda _g126288_
        (let ((_g126287_ (##length _g126288_)))
          (cond ((##fx= _g126287_ 1) (apply gx#import-module__0 _g126288_))
                ((##fx= _g126287_ 2) (apply gx#import-module__1 _g126288_))
                ((##fx= _g126287_ 3) (apply gx#import-module__% _g126288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g126288_))))))
    (define gx#eval-module
      (lambda (_%mod125241%_)
        ((gx#current-expander-module-eval) _%mod125241%_)))
    (define gx#core-eval-module
      (lambda (_%obj125221%_)
        (letrec ((_%force-e125223%_
                  (lambda (_%getf125237%_ _%e125238%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf125237%_ _%e125238%_)))
                     gx#current-expander-context
                     _%e125238%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur125225%_ ((_%e125227%_ _%obj125221%_))
            (if (##structure-instance-of? _%e125227%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e125230%_
                         (gx#core-context-prelude__% _%e125227%_)))
                    (if _%$e125230%_ (_%recur125225%_ _%$e125230%_) '#!void))
                  (_%force-e125223%_ gx#module-context-e _%e125227%_))
                (if (##structure-instance-of?
                     _%e125227%_
                     'gx#prelude-context::t)
                    (_%force-e125223%_ gx#prelude-context-e _%e125227%_)
                    (if (gx#stx-string? _%e125227%_)
                        (_%recur125225%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e125227%_)))
                        (if (gx#core-library-module-path? _%e125227%_)
                            (_%recur125225%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e125227%_)))
                            (error '"cannot eval module" _%obj125221%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx125201%_)
        (let _%lp125203%_ ((_%e125205%_ _%ctx125201%_))
          (if (or (##structure-instance-of? _%e125205%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e125205%_ 'gx#local-context::t))
              (_%lp125203%_ (##unchecked-structure-ref _%e125205%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e125205%_ 'gx#prelude-context::t)
                  _%e125205%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx125217%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx125217%_))))
    (define gx#core-context-prelude
      (lambda _g126290_
        (let ((_g126289_ (##length _g126290_)))
          (cond ((##fx= _g126289_ 0)
                 (apply gx#core-context-prelude__0 _g126290_))
                ((##fx= _g126289_ 1)
                 (apply gx#core-context-prelude__% _g126290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g126290_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx125192%_)
        (let ((_%$e125194%_ (hash-get gx#__module-registry _%ctx125192%_)))
          (if _%$e125194%_
              _%$e125194%_
              (let ((_%pre125198%_
                     (let ((__obj126281
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
                       (gx#prelude-context:::init! __obj126281 _%ctx125192%_)
                       __obj126281)))
                (hash-put! gx#__module-registry _%ctx125192%_ _%pre125198%_)
                _%pre125198%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath125064%_ _%reload?125065%_)
        (letrec ((_%import-source125067%_
                  (lambda (_%path125156%_)
                    (if (member _%path125156%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path125156%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g126291_ (gx#core-read-module _%path125156%_)))
                         (begin
                           (let ((_g126292_
                                  (if (##values? _g126291_)
                                      (##vector-length _g126291_)
                                      1)))
                             (if (not (##fx= _g126292_ 4))
                                 (error "Context expects 4 values" _g126292_)))
                           (let ((_%pre125159%_ (##vector-ref _g126291_ 0))
                                 (_%id125160%_ (##vector-ref _g126291_ 1))
                                 (_%ns125161%_ (##vector-ref _g126291_ 2))
                                 (_%body125162%_ (##vector-ref _g126291_ 3)))
                             (let* ((_%prelude125172%_
                                     (if (##structure-instance-of?
                                          _%pre125159%_
                                          'gx#prelude-context::t)
                                         _%pre125159%_
                                         (if (##structure-instance-of?
                                              _%pre125159%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre125159%_)
                                             (if (string? _%pre125159%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre125159%_))
                                                 (if (not _%pre125159%_)
                                                     (let ((_%$e125168%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e125168%_
                                                           _%$e125168%_
                                                           (let ((__obj126282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                     (gx#prelude-context:::init! __obj126282 '#f)
                     __obj126282)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath125064%_
                                                            _%pre125159%_))))))
                                    (_%ctx125174%_
                                     (let ((__obj126283
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
                                        __obj126283
                                        _%id125160%_
                                        _%prelude125172%_
                                        _%ns125161%_
                                        _%path125156%_)
                                       __obj126283))
                                    (_%body125176%_
                                     (gx#core-expand-module-begin
                                      _%body125162%_
                                      _%ctx125174%_))
                                    (_%body125178%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body125176%_)
                                      _%path125156%_
                                      _%ctx125174%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx125174%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body125178%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx125174%_
                                _%body125178%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path125156%_
                                _%ctx125174%_)
                               (hash-put!
                                gx#__module-registry
                                _%id125160%_
                                _%ctx125174%_)
                               _%ctx125174%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path125156%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule125068%_
                  (lambda (_%rpath125084%_)
                    (let* ((_%rpath125085125092%_ _%rpath125084%_)
                           (_%E125087125096%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath125085125092%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K125088125144%_
                            (lambda (_%refs125099%_ _%origin125100%_)
                              (let ((_%ctx125102%_
                                     (if _%origin125100%_
                                         (gx#core-import-module__%
                                          _%origin125100%_
                                          _%reload?125065%_)
                                         (gx#current-expander-context))))
                                (let _%lp125104%_ ((_%rest125106%_
                                                    _%refs125099%_)
                                                   (_%ctx125107%_
                                                    _%ctx125102%_))
                                  (let* ((_%rest125108125116%_ _%rest125106%_)
                                         (_%else125110125124%_
                                          (lambda () _%ctx125107%_))
                                         (_%K125112125132%_
                                          (lambda (_%rest125127%_ _%id125128%_)
                                            (let ((_%bind125130%_
                                                   (gx#resolve-identifier__%
                                                    _%id125128%_
                                                    '0
                                                    _%ctx125107%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind125130%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind125130%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp125104%_
                                                   _%rest125127%_
                                                   (##unchecked-structure-ref
                                                    _%bind125130%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath125084%_
                                                         _%id125128%_
                                                         _%bind125130%_))))))
                                    (if (##pair? _%rest125108125116%_)
                                        (let ((_%hd125113125135%_
                                               (##car _%rest125108125116%_))
                                              (_%tl125114125137%_
                                               (##cdr _%rest125108125116%_)))
                                          (let* ((_%id125140%_
                                                  _%hd125113125135%_)
                                                 (_%rest125142%_
                                                  _%tl125114125137%_))
                                            (_%K125112125132%_
                                             _%rest125142%_
                                             _%id125140%_)))
                                        (_%else125110125124%_))))))))
                      (if (##pair? _%rpath125085125092%_)
                          (let ((_%hd125089125147%_
                                 (##car _%rpath125085125092%_))
                                (_%tl125090125149%_
                                 (##cdr _%rpath125085125092%_)))
                            (let* ((_%origin125152%_ _%hd125089125147%_)
                                   (_%refs125154%_ _%tl125090125149%_))
                              (_%K125088125144%_
                               _%refs125154%_
                               _%origin125152%_)))
                          (_%E125087125096%_))))))
          (let ((_%$e125070%_
                 (if (not _%reload?125065%_)
                     (hash-get gx#__module-registry _%rpath125064%_)
                     '#f)))
            (if _%$e125070%_
                _%$e125070%_
                (if (list? _%rpath125064%_)
                    (_%import-submodule125068%_ _%rpath125064%_)
                    (if (gx#core-library-module-path? _%rpath125064%_)
                        (let ((_%ctx125075%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath125064%_)
                                _%reload?125065%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath125064%_
                           _%ctx125075%_)
                          _%ctx125075%_)
                        (let* ((_%npath125078%_
                                (path-normalize _%rpath125064%_))
                               (_%$e125080%_
                                (if (not _%reload?125065%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath125078%_)
                                    '#f)))
                          (if _%$e125080%_
                              _%$e125080%_
                              (_%import-source125067%_
                               _%npath125078%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath125185%_)
        (let ((_%reload?125187%_ '#f))
          (gx#core-import-module__% _%rpath125185%_ _%reload?125187%_))))
    (define gx#core-import-module
      (lambda _g126294_
        (let ((_g126293_ (##length _g126294_)))
          (cond ((##fx= _g126293_ 1)
                 (apply gx#core-import-module__0 _g126294_))
                ((##fx= _g126293_ 2)
                 (apply gx#core-import-module__% _g126294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g126294_))))))
    (define gx#core-read-module
      (lambda (_%path125053%_)
        (__with-catch
         (lambda (_%exn125055%_)
           (if (and (datum-parsing-exception? _%exn125055%_)
                    (eq? (datum-parsing-exception-filepos _%exn125055%_) '0))
               (gx#core-read-module/lang _%path125053%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path125053%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g125057125059%_)
                      (display-exception _%exn125055%_ _%g125057125059%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path125053%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124905%_)
        (let _%lp124907%_ ((_%body124909%_
                            (read-syntax-from-file _%path124905%_))
                           (_%pre124910%_ '#f)
                           (_%ns124911%_ '#f)
                           (_%pkg124912%_ '#f))
          (let* ((_%e124913124937%_ _%body124909%_)
                 (_%E124929124963%_
                  (lambda ()
                    (let ((_g126295_
                           (if _%pkg124912%_
                               (values _%pre124910%_
                                       _%ns124911%_
                                       _%pkg124912%_)
                               (gx#core-read-module-package
                                _%path124905%_
                                _%pre124910%_
                                _%ns124911%_))))
                      (begin
                        (let ((_g126296_
                               (if (##values? _g126295_)
                                   (##vector-length _g126295_)
                                   1)))
                          (if (not (##fx= _g126296_ 3))
                              (error "Context expects 3 values" _g126296_)))
                        (let ((_%pre124941%_ (##vector-ref _g126295_ 0))
                              (_%ns124942%_ (##vector-ref _g126295_ 1))
                              (_%pkg124943%_ (##vector-ref _g126295_ 2)))
                          (let* ((_%prelude124949%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124941%_)
                                      (gx#syntax-local-e__0 _%pre124941%_)
                                      (if (gx#core-library-module-path?
                                           _%pre124941%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre124941%_)
                                          (if (gx#stx-string? _%pre124941%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre124941%_
                                               _%path124905%_)
                                              (gx#stx-e _%pre124941%_)))))
                                 (_%path-id124951%_
                                  (gx#core-module-path->namespace
                                   _%path124905%_))
                                 (_%pkg-id124953%_
                                  (if _%pkg124943%_
                                      (##string-append
                                       _%pkg124943%_
                                       '"/"
                                       _%path-id124951%_)
                                      _%path-id124951%_))
                                 (_%module-id124955%_
                                  (##string->symbol _%pkg-id124953%_))
                                 (_%module-ns124960%_
                                  (if (eq? _%ns124942%_ '#!void)
                                      '#f
                                      (let ((_%$e124957%_ _%ns124942%_))
                                        (if _%$e124957%_
                                            _%$e124957%_
                                            _%pkg-id124953%_)))))
                            (values _%prelude124949%_
                                    _%module-id124955%_
                                    _%module-ns124960%_
                                    _%body124909%_)))))))
                 (_%E124922124995%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124913124937%_)
                        (let ((_%e124930124967%_
                               (gx#syntax-e _%e124913124937%_)))
                          (let ((_%hd124931124970%_ (##car _%e124930124967%_))
                                (_%tl124932124972%_ (##cdr _%e124930124967%_)))
                            (if (eq? (gx#stx-e _%hd124931124970%_) 'package:)
                                (if (gx#stx-pair? _%tl124932124972%_)
                                    (let ((_%e124933124975%_
                                           (gx#syntax-e _%tl124932124972%_)))
                                      (let ((_%hd124934124978%_
                                             (##car _%e124933124975%_))
                                            (_%tl124935124980%_
                                             (##cdr _%e124933124975%_)))
                                        (let* ((_%pkg124983%_
                                                _%hd124934124978%_)
                                               (_%rest124985%_
                                                _%tl124935124980%_))
                                          (if '#t
                                              (let ((_%pkg124993%_
                                                     (if (gx#identifier?
                                                          _%pkg124983%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg124983%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124983%_)
                         (gx#stx-false? _%pkg124983%_))
                     (gx#stx-e _%pkg124983%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg124983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124907%_
                                                 _%rest124985%_
                                                 _%pre124910%_
                                                 _%ns124911%_
                                                 _%pkg124993%_))
                                              (_%E124929124963%_)))))
                                    (_%E124929124963%_))
                                (_%E124929124963%_))))
                        (_%E124929124963%_))))
                 (_%E124915125025%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124913124937%_)
                        (let ((_%e124923124999%_
                               (gx#syntax-e _%e124913124937%_)))
                          (let ((_%hd124924125002%_ (##car _%e124923124999%_))
                                (_%tl124925125004%_ (##cdr _%e124923124999%_)))
                            (if (eq? (gx#stx-e _%hd124924125002%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124925125004%_)
                                    (let ((_%e124926125007%_
                                           (gx#syntax-e _%tl124925125004%_)))
                                      (let ((_%hd124927125010%_
                                             (##car _%e124926125007%_))
                                            (_%tl124928125012%_
                                             (##cdr _%e124926125007%_)))
                                        (let* ((_%ns125015%_
                                                _%hd124927125010%_)
                                               (_%rest125017%_
                                                _%tl124928125012%_))
                                          (if '#t
                                              (let ((_%ns125023%_
                                                     (if (gx#identifier?
                                                          _%ns125015%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns125015%_))
                                                         (if (gx#stx-string?
                                                              _%ns125015%_)
                                                             (gx#stx-e
                                                              _%ns125015%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns125015%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns125015%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124907%_
                                                 _%rest125017%_
                                                 _%pre124910%_
                                                 _%ns125023%_
                                                 _%pkg124912%_))
                                              (_%E124922124995%_)))))
                                    (_%E124922124995%_))
                                (_%E124922124995%_))))
                        (_%E124922124995%_))))
                 (_%E124914125049%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124913124937%_)
                        (let ((_%e124916125029%_
                               (gx#syntax-e _%e124913124937%_)))
                          (let ((_%hd124917125032%_ (##car _%e124916125029%_))
                                (_%tl124918125034%_ (##cdr _%e124916125029%_)))
                            (if (eq? (gx#stx-e _%hd124917125032%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124918125034%_)
                                    (let ((_%e124919125037%_
                                           (gx#syntax-e _%tl124918125034%_)))
                                      (let ((_%hd124920125040%_
                                             (##car _%e124919125037%_))
                                            (_%tl124921125042%_
                                             (##cdr _%e124919125037%_)))
                                        (let* ((_%prelude125045%_
                                                _%hd124920125040%_)
                                               (_%rest125047%_
                                                _%tl124921125042%_))
                                          (if '#t
                                              (_%lp124907%_
                                               _%rest125047%_
                                               _%prelude125045%_
                                               _%ns124911%_
                                               _%pkg124912%_)
                                              (_%E124915125025%_)))))
                                    (_%E124915125025%_))
                                (_%E124915125025%_))))
                        (_%E124915125025%_)))))
            (_%E124914125049%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124727%_)
        (letrec ((_%default-read-module-body124729%_
                  (lambda (_%inp124897%_)
                    (let _%lp124899%_ ((_%body124901%_ '()))
                      (let ((_%next124903%_ (read-syntax__% _%inp124897%_)))
                        (if (eof-object? _%next124903%_)
                            (reverse _%body124901%_)
                            (_%lp124899%_
                             (cons _%next124903%_ _%body124901%_)))))))
                 (_%read-body124730%_
                  (lambda (_%inp124815%_
                           _%pre124816%_
                           _%ns124817%_
                           _%pkg124818%_
                           _%args124819%_)
                    (let ((_g126297_
                           (if _%pkg124818%_
                               (values _%pre124816%_
                                       _%ns124817%_
                                       _%pkg124818%_)
                               (gx#core-read-module-package
                                _%path124727%_
                                _%pre124816%_
                                _%ns124817%_))))
                      (begin
                        (let ((_g126298_
                               (if (##values? _g126297_)
                                   (##vector-length _g126297_)
                                   1)))
                          (if (not (##fx= _g126298_ 3))
                              (error "Context expects 3 values" _g126298_)))
                        (let ((_%pre124821%_ (##vector-ref _g126297_ 0))
                              (_%ns124822%_ (##vector-ref _g126297_ 1))
                              (_%pkg124823%_ (##vector-ref _g126297_ 2)))
                          (let* ((_%prelude124825%_
                                  (gx#import-module__0 _%pre124821%_))
                                 (_%read-module-body124880%_
                                  (let ((_%$e124871%_
                                         (__find (lambda (_%e124826124828%_)
                                                   (let* ((_%g124830124840%_
                                                           _%e124826124828%_)
                                                          (_%else124832124848%_
                                                           (lambda () '#f))
                                                          (_%K124834124852%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124830124840%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124835124855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124830124840%_
                          '1
                          '#f
                          '#f))
                        (_%e124836124858%_
                         (##unchecked-structure-ref
                          _%g124830124840%_
                          '2
                          '#f
                          '#f))
                        (_%e124837124861%_
                         (##unchecked-structure-ref
                          _%g124830124840%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124837124861%_ '1)
                       (let ((_%e124838124864%_
                              (##unchecked-structure-ref
                               _%g124830124840%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124866124868%_)
                                (eq? _%g124866124868%_ 'read-module-body))
                              _%e124838124864%_)
                             (_%K124834124852%_)
                             (_%else124832124848%_)))
                       (_%else124832124848%_)))
                 (_%else124832124848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124825%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124871%_
                                        ((lambda (_%xport124874%_)
                                           (let ((_%proc124877%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124874%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124877%_)
                                                 _%proc124877%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124727%_
                                                  _%pre124821%_
                                                  _%proc124877%_))))
                                         _%$e124871%_)
                                        _%default-read-module-body124729%_)))
                                 (_%path-id124882%_
                                  (gx#core-module-path->namespace
                                   _%path124727%_))
                                 (_%pkg-id124884%_
                                  (if _%pkg124823%_
                                      (##string-append
                                       _%pkg124823%_
                                       '"/"
                                       _%path-id124882%_)
                                      _%path-id124882%_))
                                 (_%module-id124886%_
                                  (##string->symbol _%pkg-id124884%_))
                                 (_%module-ns124891%_
                                  (let ((_%$e124888%_ _%ns124822%_))
                                    (if _%$e124888%_
                                        _%$e124888%_
                                        _%pkg-id124884%_)))
                                 (_%body124894%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124880%_
                                      _%inp124815%_))
                                   gx#current-module-reader-path
                                   _%path124727%_
                                   gx#current-module-reader-args
                                   _%args124819%_)))
                            (values _%prelude124825%_
                                    _%module-id124886%_
                                    _%module-ns124891%_
                                    _%body124894%_)))))))
                 (_%string-e124731%_
                  (lambda (_%obj124809%_ _%what124810%_)
                    (if (string? _%obj124809%_)
                        _%obj124809%_
                        (if (symbol? _%obj124809%_)
                            (symbol->string _%obj124809%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what124810%_)
                             _%path124727%_
                             _%obj124809%_)))))
                 (_%read-lang-args124732%_
                  (lambda (_%inp124764%_ _%args124765%_)
                    (let* ((_%args124766124774%_ _%args124765%_)
                           (_%else124768124782%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124727%_)))
                           (_%K124770124797%_
                            (lambda (_%args124785%_ _%prelude124786%_)
                              (let* ((_%pkg124788%_
                                      (pgetq__0 'package: _%args124785%_))
                                     (_%pkg124790%_
                                      (if _%pkg124788%_
                                          (_%string-e124731%_
                                           _%pkg124788%_
                                           '"package")
                                          '#f))
                                     (_%ns124792%_
                                      (pgetq__0 'namespace: _%args124785%_))
                                     (_%ns124794%_
                                      (if _%ns124792%_
                                          (_%string-e124731%_
                                           _%ns124792%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124730%_
                                 _%inp124764%_
                                 _%prelude124786%_
                                 _%ns124794%_
                                 _%pkg124790%_
                                 _%args124785%_)))))
                      (if (##pair? _%args124766124774%_)
                          (let ((_%hd124771124800%_
                                 (##car _%args124766124774%_))
                                (_%tl124772124802%_
                                 (##cdr _%args124766124774%_)))
                            (let* ((_%prelude124805%_ _%hd124771124800%_)
                                   (_%args124807%_ _%tl124772124802%_))
                              (_%K124770124797%_
                               _%args124807%_
                               _%prelude124805%_)))
                          (_%else124768124782%_)))))
                 (_%read-lang124733%_
                  (lambda (_%inp124738%_)
                    (let* ((_%head124740%_ (read-line _%inp124738%_))
                           (_%$e124742%_
                            (string-index__0 _%head124740%_ '#\space)))
                      (if _%$e124742%_
                          ((lambda (_%ix124745%_)
                             (let ((_%lang124747%_
                                    (substring
                                     _%head124740%_
                                     '0
                                     _%ix124745%_)))
                               (if (equal? _%lang124747%_ '"#lang")
                                   (let* ((_%rest124749%_
                                           (substring
                                            _%head124740%_
                                            (##fx+ _%ix124745%_ '1)
                                            (string-length _%head124740%_)))
                                          (_%args124760%_
                                           (__with-catch
                                            (lambda (_%g124750124752%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124727%_
                                               _%g124750124752%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124749%_
                                               (lambda (_%g124755124757%_)
                                                 (read-all
                                                  _%g124755124757%_
                                                  read)))))))
                                     (_%read-lang-args124732%_
                                      _%inp124738%_
                                      _%args124760%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124727%_))))
                           _%$e124742%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path124727%_)))))
                 (_%read-e124734%_
                  (lambda (_%inp124736%_)
                    (if (eq? (peek-char _%inp124736%_) '#\#)
                        (_%read-lang124733%_ _%inp124736%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124727%_)))))
          (gx#call-with-input-source-file _%path124727%_ _%read-e124734%_))))
    (define gx#core-read-module-package
      (lambda (_%path124675%_ _%pre124676%_ _%ns124677%_)
        (letrec ((_%string-e124679%_
                  (lambda (_%e124722%_)
                    (if (symbol? _%e124722%_)
                        (symbol->string _%e124722%_)
                        (if (string? _%e124722%_)
                            _%e124722%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e124722%_))))))
          (let _%lp124681%_ ((_%dir124683%_ (path-directory _%path124675%_))
                             (_%pkg-path124684%_ '()))
            (let ((_%gerbil.pkg124686%_
                   (path-expand '"gerbil.pkg" _%dir124683%_)))
              (if (##file-exists? _%gerbil.pkg124686%_)
                  (let ((_%plist124688%_
                         (gx#core-library-package-plist__% _%dir124683%_ '#t)))
                    (if (null? _%plist124688%_)
                        (let ((_%pkg124691%_
                               (if (not (null? _%pkg-path124684%_))
                                   (string-join _%pkg-path124684%_ '"/")
                                   '#f)))
                          (values _%pre124676%_ _%ns124677%_ _%pkg124691%_))
                        (if (list? _%plist124688%_)
                            (let* ((_%root124694%_
                                    (pgetq__0 'package: _%plist124688%_))
                                   (_%pkg124698%_
                                    (let ((_%pkg-path124696%_
                                           (if _%root124694%_
                                               (cons (_%string-e124679%_
                                                      _%root124694%_)
                                                     _%pkg-path124684%_)
                                               _%pkg-path124684%_)))
                                      (if (not (null? _%pkg-path124696%_))
                                          (string-join _%pkg-path124696%_ '"/")
                                          '#f)))
                                   (_%ns124705%_
                                    (let ((_%ns124703%_
                                           (let ((_%$e124700%_ _%ns124677%_))
                                             (if _%$e124700%_
                                                 _%$e124700%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist124688%_)))))
                                      (if _%ns124703%_
                                          (_%string-e124679%_ _%ns124703%_)
                                          '#f)))
                                   (_%pre124710%_
                                    (let ((_%$e124707%_ _%pre124676%_))
                                      (if _%$e124707%_
                                          _%$e124707%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist124688%_)))))
                              (values _%pre124710%_
                                      _%ns124705%_
                                      _%pkg124698%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist124688%_))))
                  (let ((_%dir*124714%_
                         (path-strip-trailing-directory-separator
                          _%dir124683%_)))
                    (if (or (__string-empty? _%dir*124714%_)
                            (equal? _%dir124683%_ _%dir*124714%_))
                        (values _%pre124676%_ _%ns124677%_ '#f)
                        (let ((_%xpath124719%_
                               (path-strip-directory _%dir*124714%_))
                              (_%xdir124720%_ (path-directory _%dir*124714%_)))
                          (_%lp124681%_
                           _%xdir124720%_
                           (cons _%xpath124719%_ _%pkg-path124684%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124673%_)
        (path-strip-extension (path-strip-directory _%path124673%_))))
    (define gx#core-module-path->id
      (lambda (_%path124671%_)
        (##string->symbol (gx#core-module-path->namespace _%path124671%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124650%_ _%rel124651%_)
        (let* ((_%path124653%_ (gx#stx-e _%stx-path124650%_))
               (_%path124655%_
                (if (__string-empty? (path-extension _%path124653%_))
                    (##string-append _%path124653%_ '".ss")
                    _%path124653%_)))
          (gx#core-resolve-path__%
           _%path124655%_
           (let ((_%$e124658%_ (gx#stx-source _%stx-path124650%_)))
             (if _%$e124658%_ _%$e124658%_ _%rel124651%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124664%_)
        (let ((_%rel124666%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124664%_ _%rel124666%_))))
    (define gx#core-resolve-module-path
      (lambda _g126300_
        (let ((_g126299_ (##length _g126300_)))
          (cond ((##fx= _g126299_ 1)
                 (apply gx#core-resolve-module-path__0 _g126300_))
                ((##fx= _g126299_ 2)
                 (apply gx#core-resolve-module-path__% _g126300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g126300_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath124535%_)
        (let* ((_%spath124537%_ (symbol->string (gx#stx-e _%libpath124535%_)))
               (_%spath124539%_
                (substring
                 _%spath124537%_
                 '1
                 (##string-length _%spath124537%_)))
               (_%ext124541%_ (path-extension _%spath124539%_))
               (_%ssi124543%_
                (if (__string-empty? _%ext124541%_)
                    (##string-append _%spath124539%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath124539%_)
                     '".ssi")))
               (_%srcs124547%_
                (if (__string-empty? _%ext124541%_)
                    (##map (lambda (_%ext124545%_)
                             (string-append _%spath124539%_ _%ext124545%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath124539%_ '()))))
          (let _%lp124550%_ ((_%rest124552%_ (load-path)))
            (let* ((_%rest124553124562%_ _%rest124552%_)
                   (_%E124556124566%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest124553124562%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K124558124637%_
                     (lambda (_%rest124577%_ _%dir124578%_)
                       (letrec ((_%resolve124580%_
                                 (lambda (_%ssi124593%_ _%srcs124594%_)
                                   (let ((_%compiled-path124596%_
                                          (path-expand
                                           _%ssi124593%_
                                           _%dir124578%_)))
                                     (if (##file-exists?
                                          _%compiled-path124596%_)
                                         (path-normalize
                                          _%compiled-path124596%_)
                                         (let _%lpr124598%_ ((_%rest-src124600%_
                                                              _%srcs124594%_))
                                           (let* ((_%rest-src124601124609%_
                                                   _%rest-src124600%_)
                                                  (_%else124603124617%_
                                                   (lambda ()
                                                     (_%lp124550%_
                                                      _%rest124577%_)))
                                                  (_%K124605124625%_
                                                   (lambda (_%rest-src124620%_
                                                            _%src124621%_)
                                                     (let ((_%src-path124623%_
                                                            (path-expand
                                                             _%src124621%_
                                                             _%dir124578%_)))
                                                       (if (##file-exists?
                                                            _%src-path124623%_)
                                                           (path-normalize
                                                            _%src-path124623%_)
                                                           (_%lpr124598%_
                                                            _%rest-src124620%_))))))
                                             (if (##pair? _%rest-src124601124609%_)
                                                 (let ((_%hd124606124628%_
                                                        (##car _%rest-src124601124609%_))
                                                       (_%tl124607124630%_
                                                        (##cdr _%rest-src124601124609%_)))
                                                   (let* ((_%src124633%_
                                                           _%hd124606124628%_)
                                                          (_%rest-src124635%_
                                                           _%tl124607124630%_))
                                                     (_%K124605124625%_
                                                      _%rest-src124635%_
                                                      _%src124633%_)))
                                                 (_%else124603124617%_)))))))))
                         (let ((_%$e124582%_
                                (gx#core-library-package-path-prefix
                                 _%dir124578%_)))
                           (if _%$e124582%_
                               ((lambda (_%prefix124585%_)
                                  (if (string-prefix?
                                       _%prefix124585%_
                                       _%spath124539%_)
                                      (let ((_%ssi124589%_
                                             (substring
                                              _%ssi124543%_
                                              (string-length _%prefix124585%_)
                                              (##string-length _%ssi124543%_)))
                                            (_%srcs124590%_
                                             (##map (lambda (_%src124587%_)
                                                      (substring
                                                       _%src124587%_
                                                       (string-length
                                                        _%prefix124585%_)
                                                       (string-length
                                                        _%src124587%_)))
                                                    _%srcs124547%_)))
                                        (_%resolve124580%_
                                         _%ssi124589%_
                                         _%srcs124590%_))
                                      (_%lp124550%_ _%rest124577%_)))
                                _%$e124582%_)
                               (_%resolve124580%_
                                _%ssi124543%_
                                _%srcs124547%_))))))
                    (_%K124557124571%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath124535%_))))
                (let ((_%try-match124555124574%_
                       (lambda ()
                         (if (##null? _%rest124553124562%_)
                             (_%K124557124571%_)
                             (_%E124556124566%_)))))
                  (if (##pair? _%rest124553124562%_)
                      (let ((_%tl124560124642%_ (##cdr _%rest124553124562%_))
                            (_%hd124559124640%_ (##car _%rest124553124562%_)))
                        (let ((_%dir124645%_ _%hd124559124640%_)
                              (_%rest124647%_ _%tl124560124642%_))
                          (_%K124558124637%_ _%rest124647%_ _%dir124645%_)))
                      (_%try-match124555124574%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath124503%_)
        (letrec ((_%resolve124505%_
                  (lambda (_%path124526%_ _%base124527%_)
                    (let ((_%$e124529%_
                           (string-rindex__0 _%base124527%_ '#\/)))
                      (if _%$e124529%_
                          ((lambda (_%idx124532%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base124527%_ '0 _%idx124532%_)
                                '"/"
                                _%path124526%_))))
                           _%$e124529%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path124526%_))))))))
          (let ((_%spath124507%_ (symbol->string (gx#stx-e _%modpath124503%_)))
                (_%mod124508%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod124508%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath124503%_))
            (let ((_%mpath124510%_
                   (symbol->string
                    (##structure-ref
                     _%mod124508%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp124512%_ ((_%spath124514%_ _%spath124507%_)
                                 (_%mpath124515%_ _%mpath124510%_))
                (if (string-prefix? '"../" _%spath124514%_)
                    (let ((_%$e124518%_
                           (string-rindex__0 _%mpath124515%_ '#\/)))
                      (if _%$e124518%_
                          ((lambda (_%idx124521%_)
                             (_%lp124512%_
                              (substring
                               _%spath124514%_
                               '3
                               (string-length _%spath124514%_))
                              (substring _%mpath124515%_ '0 _%idx124521%_)))
                           _%$e124518%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath124503%_)))
                    (if (string-prefix? '"./" _%spath124514%_)
                        (_%lp124512%_
                         (substring
                          _%spath124514%_
                          '2
                          (string-length _%spath124514%_))
                         _%mpath124515%_)
                        (_%resolve124505%_
                         _%spath124514%_
                         _%mpath124515%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir124495%_)
        (let ((_%$e124497%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir124495%_))))
          (if _%$e124497%_
              ((lambda (_%pkg124500%_)
                 (##string-append (symbol->string _%pkg124500%_) '"/"))
               _%$e124497%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir124465%_ _%exists?124466%_)
        (let ((_%$e124468%_ (hash-get gx#__module-pkg-cache _%dir124465%_)))
          (if _%$e124468%_
              (values _%$e124468%_)
              (let* ((_%gerbil.pkg124472%_
                      (path-expand '"gerbil.pkg" _%dir124465%_))
                     (_%plist124482%_
                      (if (or _%exists?124466%_
                              (##file-exists? _%gerbil.pkg124472%_))
                          (let ((_%e124477%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg124472%_
                                  read)))
                            (if (eof-object? _%e124477%_)
                                '()
                                (if (list? _%e124477%_)
                                    _%e124477%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg124472%_
                                     _%e124477%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir124465%_ _%plist124482%_)
                _%plist124482%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir124488%_)
        (let ((_%exists?124490%_ '#f))
          (gx#core-library-package-plist__% _%dir124488%_ _%exists?124490%_))))
    (define gx#core-library-package-plist
      (lambda _g126302_
        (let ((_g126301_ (##length _g126302_)))
          (cond ((##fx= _g126301_ 1)
                 (apply gx#core-library-package-plist__0 _g126302_))
                ((##fx= _g126301_ 2)
                 (apply gx#core-library-package-plist__% _g126302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g126302_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx124462%_)
        (gx#core-special-module-path? _%stx124462%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx124460%_)
        (gx#core-special-module-path? _%stx124460%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx124455%_ _%char124456%_)
        (if (gx#identifier? _%stx124455%_)
            (if (interned-symbol? (gx#stx-e _%stx124455%_))
                (let ((_%str124458%_
                       (symbol->string (gx#stx-e _%stx124455%_))))
                  (if (##fx> (##string-length _%str124458%_) '1)
                      (eq? (string-ref _%str124458%_ '0) _%char124456%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx124449%_)
        (gx#core-bound-identifier?__%
         _%stx124449%_
         (lambda (_%g124450124452%_)
           (gx#expander-binding?__% _%g124450124452%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx124443%_)
        (gx#core-bound-identifier?__%
         _%stx124443%_
         (lambda (_%g124444124446%_)
           (gx#expander-binding?__% _%g124444124446%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx124430%_)
        (letrec ((_%module-prelude?124432%_
                  (lambda (_%e124438%_)
                    (let ((_%$e124440%_
                           (##structure-instance-of?
                            _%e124438%_
                            'gx#module-context::t)))
                      (if _%$e124440%_
                          _%$e124440%_
                          (##structure-instance-of?
                           _%e124438%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx124430%_
           (lambda (_%g124433124435%_)
             (gx#expander-binding?__%
              _%g124433124435%_
              _%module-prelude?124432%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in124360%_ _%ctx124361%_ _%force-weak?124362%_)
        (let* ((_%in124363124372%_ _%in124360%_)
               (_%E124365124376%_
                (lambda ()
                  (error '"No clause matching"
                         _%in124363124372%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K124366124389%_
                (lambda (_%weak?124379%_
                         _%phi124380%_
                         _%key124381%_
                         _%source124382%_)
                  (gx#core-bind!__%
                   _%key124381%_
                   (let ((_%e124384%_
                          (gx#core-resolve-module-export _%source124382%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e124384%_ '1 '#f '#f)
                      _%key124381%_
                      _%phi124380%_
                      _%e124384%_
                      (##unchecked-structure-ref _%source124382%_ '1 '#f '#f)
                      (let ((_%$e124386%_ _%force-weak?124362%_))
                        (if _%$e124386%_ _%$e124386%_ _%weak?124379%_))))
                   gx#core-context-rebind?
                   _%phi124380%_
                   _%ctx124361%_))))
          (if (##structure-direct-instance-of?
               _%in124363124372%_
               'gx#module-import::t)
              (let* ((_%e124367124392%_
                      (##unchecked-structure-ref
                       _%in124363124372%_
                       '1
                       '#f
                       '#f))
                     (_%source124395%_ _%e124367124392%_)
                     (_%e124368124397%_
                      (##unchecked-structure-ref
                       _%in124363124372%_
                       '2
                       '#f
                       '#f))
                     (_%key124400%_ _%e124368124397%_)
                     (_%e124369124402%_
                      (##unchecked-structure-ref
                       _%in124363124372%_
                       '3
                       '#f
                       '#f))
                     (_%phi124405%_ _%e124369124402%_)
                     (_%e124370124407%_
                      (##unchecked-structure-ref
                       _%in124363124372%_
                       '4
                       '#f
                       '#f))
                     (_%weak?124410%_ _%e124370124407%_))
                (_%K124366124389%_
                 _%weak?124410%_
                 _%phi124405%_
                 _%key124400%_
                 _%source124395%_))
              (_%E124365124376%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in124415%_)
        (let* ((_%ctx124417%_ (gx#current-expander-context))
               (_%force-weak?124419%_ '#f))
          (gx#core-bind-import!__%
           _%in124415%_
           _%ctx124417%_
           _%force-weak?124419%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in124421%_ _%ctx124422%_)
        (let ((_%force-weak?124424%_ '#f))
          (gx#core-bind-import!__%
           _%in124421%_
           _%ctx124422%_
           _%force-weak?124424%_))))
    (define gx#core-bind-import!
      (lambda _g126304_
        (let ((_g126303_ (##length _g126304_)))
          (cond ((##fx= _g126303_ 1) (apply gx#core-bind-import!__0 _g126304_))
                ((##fx= _g126303_ 2) (apply gx#core-bind-import!__1 _g126304_))
                ((##fx= _g126303_ 3) (apply gx#core-bind-import!__% _g126304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g126304_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in124346%_ _%ctx124347%_)
        (gx#core-bind-import!__% _%in124346%_ _%ctx124347%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in124352%_)
        (let ((_%ctx124354%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in124352%_ _%ctx124354%_))))
    (define gx#core-bind-weak-import!
      (lambda _g126306_
        (let ((_g126305_ (##length _g126306_)))
          (cond ((##fx= _g126305_ 1)
                 (apply gx#core-bind-weak-import!__0 _g126306_))
                ((##fx= _g126305_ 2)
                 (apply gx#core-bind-weak-import!__% _g126306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g126306_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out124237%_)
        (letrec ((_%subst124239%_
                  (lambda (_%key124285%_)
                    (let* ((_%key124286124294%_ _%key124285%_)
                           (_%else124288124302%_ (lambda () _%key124285%_))
                           (_%K124290124333%_
                            (lambda (_%mark124305%_ _%id124306%_)
                              (let* ((_%mark124307124313%_ _%mark124305%_)
                                     (_%E124309124317%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark124307124313%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K124310124325%_
                                      (lambda (_%subst124320%_)
                                        (let ((_%$e124322%_
                                               (if _%subst124320%_
                                                   (hash-get
                                                    _%subst124320%_
                                                    _%id124306%_)
                                                   '#f)))
                                          (if _%$e124322%_
                                              _%$e124322%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key124285%_))))))
                                (if (##structure-instance-of?
                                     _%mark124307124313%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e124311124328%_
                                            (##unchecked-structure-ref
                                             _%mark124307124313%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst124331%_ _%e124311124328%_))
                                      (_%K124310124325%_ _%subst124331%_))
                                    (_%E124309124317%_))))))
                      (if (##pair? _%key124286124294%_)
                          (let ((_%hd124291124336%_
                                 (##car _%key124286124294%_))
                                (_%tl124292124338%_
                                 (##cdr _%key124286124294%_)))
                            (let* ((_%id124341%_ _%hd124291124336%_)
                                   (_%mark124343%_ _%tl124292124338%_))
                              (_%K124290124333%_ _%mark124343%_ _%id124341%_)))
                          (_%else124288124302%_))))))
          (let* ((_%out124240124250%_ _%out124237%_)
                 (_%E124242124254%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out124240124250%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K124243124261%_
                  (lambda (_%phi124257%_ _%key124258%_ _%ctx124259%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx124259%_ _%phi124257%_)
                     (_%subst124239%_ _%key124258%_)))))
            (if (##structure-direct-instance-of?
                 _%out124240124250%_
                 'gx#module-export::t)
                (let* ((_%e124244124264%_
                        (##unchecked-structure-ref
                         _%out124240124250%_
                         '1
                         '#f
                         '#f))
                       (_%ctx124267%_ _%e124244124264%_)
                       (_%e124245124269%_
                        (##unchecked-structure-ref
                         _%out124240124250%_
                         '2
                         '#f
                         '#f))
                       (_%key124272%_ _%e124245124269%_)
                       (_%e124246124274%_
                        (##unchecked-structure-ref
                         _%out124240124250%_
                         '3
                         '#f
                         '#f))
                       (_%phi124277%_ _%e124246124274%_)
                       (_%e124247124279%_
                        (##unchecked-structure-ref
                         _%out124240124250%_
                         '4
                         '#f
                         '#f))
                       (_%e124248124282%_
                        (##unchecked-structure-ref
                         _%out124240124250%_
                         '5
                         '#f
                         '#f)))
                  (_%K124243124261%_
                   _%phi124277%_
                   _%key124272%_
                   _%ctx124267%_))
                (_%E124242124254%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out124162%_ _%rename124163%_ _%dphi124164%_)
        (let* ((_%out124165124175%_ _%out124162%_)
               (_%E124167124179%_
                (lambda ()
                  (error '"No clause matching"
                         _%out124165124175%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K124168124191%_
                (lambda (_%weak?124182%_
                         _%name124183%_
                         _%phi124184%_
                         _%key124185%_
                         _%ctx124186%_)
                  (##structure
                   gx#module-import::t
                   _%out124162%_
                   (let ((_%$e124188%_ _%rename124163%_))
                     (if _%$e124188%_ _%$e124188%_ _%name124183%_))
                   (fx+ _%phi124184%_ _%dphi124164%_)
                   _%weak?124182%_))))
          (if (##structure-direct-instance-of?
               _%out124165124175%_
               'gx#module-export::t)
              (let* ((_%e124169124194%_
                      (##unchecked-structure-ref
                       _%out124165124175%_
                       '1
                       '#f
                       '#f))
                     (_%ctx124197%_ _%e124169124194%_)
                     (_%e124170124199%_
                      (##unchecked-structure-ref
                       _%out124165124175%_
                       '2
                       '#f
                       '#f))
                     (_%key124202%_ _%e124170124199%_)
                     (_%e124171124204%_
                      (##unchecked-structure-ref
                       _%out124165124175%_
                       '3
                       '#f
                       '#f))
                     (_%phi124207%_ _%e124171124204%_)
                     (_%e124172124209%_
                      (##unchecked-structure-ref
                       _%out124165124175%_
                       '4
                       '#f
                       '#f))
                     (_%name124212%_ _%e124172124209%_)
                     (_%e124173124214%_
                      (##unchecked-structure-ref
                       _%out124165124175%_
                       '5
                       '#f
                       '#f))
                     (_%weak?124217%_ _%e124173124214%_))
                (_%K124168124191%_
                 _%weak?124217%_
                 _%name124212%_
                 _%phi124207%_
                 _%key124202%_
                 _%ctx124197%_))
              (_%E124167124179%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out124222%_)
        (let* ((_%rename124224%_ '#f) (_%dphi124226%_ '0))
          (gx#core-module-export->import__%
           _%out124222%_
           _%rename124224%_
           _%dphi124226%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out124228%_ _%rename124229%_)
        (let ((_%dphi124231%_ '0))
          (gx#core-module-export->import__%
           _%out124228%_
           _%rename124229%_
           _%dphi124231%_))))
    (define gx#core-module-export->import
      (lambda _g126308_
        (let ((_g126307_ (##length _g126308_)))
          (cond ((##fx= _g126307_ 1)
                 (apply gx#core-module-export->import__0 _g126308_))
                ((##fx= _g126307_ 2)
                 (apply gx#core-module-export->import__1 _g126308_))
                ((##fx= _g126307_ 3)
                 (apply gx#core-module-export->import__% _g126308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g126308_))))))
    (define gx#core-expand-module%
      (lambda (_%stx124061%_)
        (letrec ((_%make-context124063%_
                  (lambda (_%id124140%_)
                    (let* ((_%super124142%_ (gx#current-expander-context))
                           (_%bind-id124144%_ (gx#stx-e _%id124140%_))
                           (_%mod-id124146%_
                            (if (##structure-instance-of?
                                 _%super124142%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super124142%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id124144%_)
                                _%bind-id124144%_))
                           (_%ns124148%_ (symbol->string _%mod-id124146%_))
                           (_%path124158%_
                            (if (##structure-instance-of?
                                 _%super124142%_
                                 'gx#module-context::t)
                                (let ((_%path124150%_
                                       (##unchecked-structure-ref
                                        _%super124142%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path124150%_)
                                          (null? _%path124150%_))
                                      (cons _%bind-id124144%_ _%path124150%_)
                                      (if (not _%path124150%_)
                                          _%bind-id124144%_
                                          (cons _%bind-id124144%_
                                                (cons _%path124150%_ '())))))
                                _%bind-id124144%_))
                           (__obj126284
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
                       __obj126284
                       _%mod-id124146%_
                       _%super124142%_
                       _%ns124148%_
                       _%path124158%_)
                      __obj126284)))
                 (_%valid-module-id?124064%_
                  (lambda (_%id124115%_)
                    (let* ((_%str124117%_ (symbol->string _%id124115%_))
                           (_%len124119%_ (##string-length _%str124117%_)))
                      (if (##fx>= _%len124119%_ '1)
                          (let _%loop124122%_ ((_%index124124%_
                                                (##fx- (##string-length
                                                        _%str124117%_)
                                                       '1)))
                            (if (##fx>= _%index124124%_ '0)
                                (let ((_%c124126%_
                                       (string-ref
                                        _%str124117%_
                                        _%index124124%_)))
                                  (if (or (and (##char>=? _%c124126%_ '#\a)
                                               (##char<=? _%c124126%_ '#\z))
                                          (and (##char>=? _%c124126%_ '#\A)
                                               (##char<=? _%c124126%_ '#\Z))
                                          (and (##char>=? _%c124126%_ '#\0)
                                               (##char<=? _%c124126%_ '#\9))
                                          (##char=? _%c124126%_ '#\_)
                                          (##char=? _%c124126%_ '#\-))
                                      (_%loop124122%_
                                       (##fx- _%index124124%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e124065124075%_ _%stx124061%_)
                 (_%E124067124079%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124065124075%_)))
                 (_%E124066124111%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124065124075%_)
                        (let ((_%e124068124083%_
                               (gx#syntax-e _%e124065124075%_)))
                          (let ((_%hd124069124086%_ (##car _%e124068124083%_))
                                (_%tl124070124088%_ (##cdr _%e124068124083%_)))
                            (if (gx#stx-pair? _%tl124070124088%_)
                                (let ((_%e124071124091%_
                                       (gx#syntax-e _%tl124070124088%_)))
                                  (let ((_%hd124072124094%_
                                         (##car _%e124071124091%_))
                                        (_%tl124073124096%_
                                         (##cdr _%e124071124091%_)))
                                    (let* ((_%id124099%_ _%hd124072124094%_)
                                           (_%body124101%_ _%tl124073124096%_))
                                      (if (and (gx#identifier? _%id124099%_)
                                               (gx#stx-list? _%body124101%_))
                                          (if (_%valid-module-id?124064%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx124103%_
                                                      (_%make-context124063%_
                                                       _%id124099%_))
                                                     (_%body124105%_
                                                      (gx#core-expand-module-begin
                                                       _%body124101%_
                                                       _%ctx124103%_))
                                                     (_%body124107%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body124105%_)
                                                       (gx#stx-source
                                                        _%stx124061%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx124103%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body124107%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx124103%_
                                                 _%body124107%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id124099%_
                                                 _%ctx124103%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id124099%_)
                                                  _%body124107%_)
                                                 (gx#stx-source
                                                  _%stx124061%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx124061%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E124067124079%_)))))
                                (_%E124067124079%_))))
                        (_%E124067124079%_)))))
            (_%E124066124111%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body124027%_ _%ctx124028%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx124031%_
                   (gx#core-expand-head (cons '%%begin-module _%body124027%_)))
                  (_%e124032124039%_ _%stx124031%_)
                  (_%E124034124043%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx124031%_)))
                  (_%E124033124057%_
                   (lambda ()
                     (if (gx#stx-pair? _%e124032124039%_)
                         (let ((_%e124035124047%_
                                (gx#syntax-e _%e124032124039%_)))
                           (let ((_%hd124036124050%_ (##car _%e124035124047%_))
                                 (_%tl124037124052%_
                                  (##cdr _%e124035124047%_)))
                             (if (and (gx#identifier? _%hd124036124050%_)
                                      (gx#core-identifier=?
                                       _%hd124036124050%_
                                       '%#begin-module))
                                 (let ((_%body124055%_ _%tl124037124052%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx124031%_)
                                           _%body124055%_
                                           (gx#core-expand-module-body
                                            _%body124055%_))
                                       (_%E124034124043%_)))
                                 (_%E124034124043%_))))
                         (_%E124034124043%_)))))
             (_%E124033124057%_)))
         gx#current-expander-context
         _%ctx124028%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123823%_)
        (letrec ((_%expand-special123825%_
                  (lambda (_%hd123954%_ _%K123955%_ _%rest123956%_ _%r123957%_)
                    (let* ((_%e123958123975%_ _%hd123954%_)
                           (_%E123970123979%_
                            (lambda ()
                              (_%K123955%_
                               _%rest123956%_
                               (cons (gx#core-expand-top _%hd123954%_)
                                     _%r123957%_))))
                           (_%E123960123991%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123958123975%_)
                                  (let ((_%e123971123983%_
                                         (gx#syntax-e _%e123958123975%_)))
                                    (let ((_%hd123972123986%_
                                           (##car _%e123971123983%_))
                                          (_%tl123973123988%_
                                           (##cdr _%e123971123983%_)))
                                      (if (and (gx#identifier?
                                                _%hd123972123986%_)
                                               (gx#core-identifier=?
                                                _%hd123972123986%_
                                                '%#export))
                                          (if '#t
                                              (_%K123955%_
                                               _%rest123956%_
                                               (cons _%hd123954%_ _%r123957%_))
                                              (_%E123970123979%_))
                                          (_%E123970123979%_))))
                                  (_%E123970123979%_))))
                           (_%E123959124023%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123958123975%_)
                                  (let ((_%e123961123995%_
                                         (gx#syntax-e _%e123958123975%_)))
                                    (let ((_%hd123962123998%_
                                           (##car _%e123961123995%_))
                                          (_%tl123963124000%_
                                           (##cdr _%e123961123995%_)))
                                      (if (and (gx#identifier?
                                                _%hd123962123998%_)
                                               (gx#core-identifier=?
                                                _%hd123962123998%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123963124000%_)
                                              (let ((_%e123964124003%_
                                                     (gx#syntax-e
                                                      _%tl123963124000%_)))
                                                (let ((_%hd123965124006%_
                                                       (##car _%e123964124003%_))
                                                      (_%tl123966124008%_
                                                       (##cdr _%e123964124003%_)))
                                                  (let ((_%hd-bind124011%_
                                                         _%hd123965124006%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123966124008%_)
                                                        (let ((_%e123967124013%_
                                                               (gx#syntax-e
                                                                _%tl123966124008%_)))
                                                          (let ((_%hd123968124016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123967124013%_))
                        (_%tl123969124018%_ (##cdr _%e123967124013%_)))
                    (let ((_%expr124021%_ _%hd123968124016%_))
                      (if (gx#stx-null? _%tl123969124018%_)
                          (if (gx#core-bind-values? _%hd-bind124011%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124011%_)
                                (_%K123955%_
                                 _%rest123956%_
                                 (cons _%hd123954%_ _%r123957%_)))
                              (_%E123960123991%_))
                          (_%E123960123991%_)))))
                (_%E123960123991%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123960123991%_))
                                          (_%E123960123991%_))))
                                  (_%E123960123991%_)))))
                      (_%E123959124023%_))))
                 (_%expand-body123826%_
                  (lambda (_%rbody123828%_)
                    (let _%lp123830%_ ((_%rest123832%_ _%rbody123828%_)
                                       (_%body123833%_ '()))
                      (let* ((_%rest123834123842%_ _%rest123832%_)
                             (_%else123836123850%_ (lambda () _%body123833%_))
                             (_%K123838123942%_
                              (lambda (_%rest123853%_ _%hd123854%_)
                                (let* ((_%e123855123876%_ _%hd123854%_)
                                       (_%E123871123880%_
                                        (lambda ()
                                          (_%lp123830%_
                                           _%rest123853%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123854%_)
                                                 _%body123833%_))))
                                       (_%E123867123894%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123855123876%_)
                                              (let ((_%e123872123884%_
                                                     (gx#syntax-e
                                                      _%e123855123876%_)))
                                                (let ((_%hd123873123887%_
                                                       (##car _%e123872123884%_))
                                                      (_%tl123874123889%_
                                                       (##cdr _%e123872123884%_)))
                                                  (let ((_%form123892%_
                                                         _%hd123873123887%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123892%_
                                                         gx#special-form-binding?)
                                                        (_%lp123830%_
                                                         _%rest123853%_
                                                         (cons _%hd123854%_
                                                               _%body123833%_))
                                                        (_%E123871123880%_)))))
                                              (_%E123871123880%_))))
                                       (_%E123857123906%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123855123876%_)
                                              (let ((_%e123868123898%_
                                                     (gx#syntax-e
                                                      _%e123855123876%_)))
                                                (let ((_%hd123869123901%_
                                                       (##car _%e123868123898%_))
                                                      (_%tl123870123903%_
                                                       (##cdr _%e123868123898%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123869123901%_)
                                                           (gx#core-identifier=?
                                                            _%hd123869123901%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123830%_
                                                           _%rest123853%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123854%_)
                         _%body123833%_))
                  (_%E123867123894%_))
              (_%E123867123894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123867123894%_))))
                                       (_%E123856123938%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123855123876%_)
                                              (let ((_%e123858123910%_
                                                     (gx#syntax-e
                                                      _%e123855123876%_)))
                                                (let ((_%hd123859123913%_
                                                       (##car _%e123858123910%_))
                                                      (_%tl123860123915%_
                                                       (##cdr _%e123858123910%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123859123913%_)
                                                           (gx#core-identifier=?
                                                            _%hd123859123913%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123860123915%_)
                                                          (let ((_%e123861123918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123860123915%_)))
                    (let ((_%hd123862123921%_ (##car _%e123861123918%_))
                          (_%tl123863123923%_ (##cdr _%e123861123918%_)))
                      (let ((_%hd-bind123926%_ _%hd123862123921%_))
                        (if (gx#stx-pair? _%tl123863123923%_)
                            (let ((_%e123864123928%_
                                   (gx#syntax-e _%tl123863123923%_)))
                              (let ((_%hd123865123931%_
                                     (##car _%e123864123928%_))
                                    (_%tl123866123933%_
                                     (##cdr _%e123864123928%_)))
                                (let ((_%expr123936%_ _%hd123865123931%_))
                                  (if (gx#stx-null? _%tl123866123933%_)
                                      (if '#t
                                          (_%lp123830%_
                                           _%rest123853%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123926%_)
                                                   (gx#core-expand-expression
                                                    _%expr123936%_))
                                                  (gx#stx-source _%hd123854%_))
                                                 _%body123833%_))
                                          (_%E123857123906%_))
                                      (_%E123857123906%_)))))
                            (_%E123857123906%_)))))
                  (_%E123857123906%_))
              (_%E123857123906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123857123906%_)))))
                                  (_%E123856123938%_)))))
                        (if (##pair? _%rest123834123842%_)
                            (let ((_%hd123839123945%_
                                   (##car _%rest123834123842%_))
                                  (_%tl123840123947%_
                                   (##cdr _%rest123834123842%_)))
                              (let* ((_%hd123950%_ _%hd123839123945%_)
                                     (_%rest123952%_ _%tl123840123947%_))
                                (_%K123838123942%_
                                 _%rest123952%_
                                 _%hd123950%_)))
                            (_%else123836123850%_)))))))
          (_%expand-body123826%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123823%_)
            _%expand-special123825%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123664%_
               _%expanded?123665%_
               _%method123666%_
               _%current-phi123667%_
               _%expand1123668%_)
        (letrec ((_%K123670%_
                  (lambda (_%rest123790%_ _%r123791%_)
                    (let* ((_%e123792123799%_ _%rest123790%_)
                           (_%E123794123803%_ (lambda () _%r123791%_))
                           (_%E123793123819%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123792123799%_)
                                  (let ((_%e123795123807%_
                                         (gx#syntax-e _%e123792123799%_)))
                                    (let ((_%hd123796123810%_
                                           (##car _%e123795123807%_))
                                          (_%tl123797123812%_
                                           (##cdr _%e123795123807%_)))
                                      (let* ((_%hd123815%_ _%hd123796123810%_)
                                             (_%rest123817%_
                                              _%tl123797123812%_))
                                        (if '#t
                                            (_%step123671%_
                                             _%hd123815%_
                                             _%rest123817%_
                                             _%r123791%_)
                                            (_%E123794123803%_)))))
                                  (_%E123794123803%_)))))
                      (_%E123793123819%_))))
                 (_%step123671%_
                  (lambda (_%hd123704%_ _%rest123705%_ _%r123706%_)
                    (let* ((_%e123707123725%_ _%hd123704%_)
                           (_%E123720123729%_
                            (lambda ()
                              (if (_%expanded?123665%_ (gx#stx-e _%hd123704%_))
                                  (_%K123670%_
                                   _%rest123705%_
                                   (cons (gx#stx-e _%hd123704%_) _%r123706%_))
                                  (_%expand1123668%_
                                   _%hd123704%_
                                   _%K123670%_
                                   _%rest123705%_
                                   _%r123706%_))))
                           (_%E123716123745%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123707123725%_)
                                  (let ((_%e123721123733%_
                                         (gx#syntax-e _%e123707123725%_)))
                                    (let ((_%hd123722123736%_
                                           (##car _%e123721123733%_))
                                          (_%tl123723123738%_
                                           (##cdr _%e123721123733%_)))
                                      (let* ((_%macro123741%_
                                              _%hd123722123736%_)
                                             (_%body123743%_
                                              _%tl123723123738%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123741%_
                                             gx#syntax-binding?)
                                            (_%K123670%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123741%_)
                                                    _%hd123704%_
                                                    _%method123666%_)
                                                   _%rest123705%_)
                                             _%r123706%_)
                                            (_%E123720123729%_)))))
                                  (_%E123720123729%_))))
                           (_%E123709123759%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123707123725%_)
                                  (let ((_%e123717123749%_
                                         (gx#syntax-e _%e123707123725%_)))
                                    (let ((_%hd123718123752%_
                                           (##car _%e123717123749%_))
                                          (_%tl123719123754%_
                                           (##cdr _%e123717123749%_)))
                                      (if (eq? (gx#stx-e _%hd123718123752%_)
                                               'begin:)
                                          (let ((_%body123757%_
                                                 _%tl123719123754%_))
                                            (if '#t
                                                (_%K123670%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123705%_
                                                  _%body123757%_)
                                                 _%r123706%_)
                                                (_%E123716123745%_)))
                                          (_%E123716123745%_))))
                                  (_%E123716123745%_))))
                           (_%E123708123786%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123707123725%_)
                                  (let ((_%e123710123763%_
                                         (gx#syntax-e _%e123707123725%_)))
                                    (let ((_%hd123711123766%_
                                           (##car _%e123710123763%_))
                                          (_%tl123712123768%_
                                           (##cdr _%e123710123763%_)))
                                      (if (eq? (gx#stx-e _%hd123711123766%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123712123768%_)
                                              (let ((_%e123713123771%_
                                                     (gx#syntax-e
                                                      _%tl123712123768%_)))
                                                (let ((_%hd123714123774%_
                                                       (##car _%e123713123771%_))
                                                      (_%tl123715123776%_
                                                       (##cdr _%e123713123771%_)))
                                                  (let* ((_%dphi123779%_
                                                          _%hd123714123774%_)
                                                         (_%body123781%_
                                                          _%tl123715123776%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123779%_)
                                                        (let ((_%rbody123784%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123670%_ _%body123781%_ '()))
                        _%current-phi123667%_
                        (fx+ (gx#stx-e _%dphi123779%_)
                             (_%current-phi123667%_)))))
                  (_%K123670%_
                   _%rest123705%_
                   (__foldr1 cons _%r123706%_ _%rbody123784%_)))
                (_%E123709123759%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123709123759%_))
                                          (_%E123709123759%_))))
                                  (_%E123709123759%_)))))
                      (_%E123708123786%_)))))
          (let* ((_%e123672123679%_ _%stx123664%_)
                 (_%E123674123683%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123672123679%_)))
                 (_%E123673123700%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123672123679%_)
                        (let ((_%e123675123687%_
                               (gx#syntax-e _%e123672123679%_)))
                          (let ((_%hd123676123690%_ (##car _%e123675123687%_))
                                (_%tl123677123692%_ (##cdr _%e123675123687%_)))
                            (let ((_%body123695%_ _%tl123677123692%_))
                              (if '#t
                                  (if (_%current-phi123667%_)
                                      (_%K123670%_ _%body123695%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K123670%_ _%body123695%_ '()))
                                       _%current-phi123667%_
                                       (gx#current-expander-phi)))
                                  (_%E123674123683%_)))))
                        (_%E123674123683%_)))))
            (_%E123673123700%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx123318%_ _%internal-expand?123319%_)
        (letrec ((_%expand1123321%_
                  (lambda (_%hd123636%_ _%K123637%_ _%rest123638%_ _%r123639%_)
                    (if (gx#core-bound-module? _%hd123636%_)
                        (_%import1123322%_
                         (gx#syntax-local-e__0 _%hd123636%_)
                         _%K123637%_
                         _%rest123638%_
                         _%r123639%_)
                        (if (gx#core-library-module-path? _%hd123636%_)
                            (_%import1123322%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd123636%_))
                             _%K123637%_
                             _%rest123638%_
                             _%r123639%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd123636%_)
                                (_%import1123322%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd123636%_))
                                 _%K123637%_
                                 _%rest123638%_
                                 _%r123639%_)
                                (let ((_%e123645%_ (gx#stx-e _%hd123636%_)))
                                  (if (pair? _%e123645%_)
                                      (let ((_%$e123648%_
                                             (gx#stx-e (car _%e123645%_))))
                                        (if (eq? 'spec: _%$e123648%_)
                                            (_%import-spec123325%_
                                             _%hd123636%_
                                             _%K123637%_
                                             _%rest123638%_
                                             _%r123639%_)
                                            (if (eq? 'in: _%$e123648%_)
                                                (_%import-submodule123323%_
                                                 _%hd123636%_
                                                 _%K123637%_
                                                 _%rest123638%_
                                                 _%r123639%_)
                                                (if (eq? 'runtime:
                                                         _%$e123648%_)
                                                    (_%import-runtime123324%_
                                                     _%hd123636%_
                                                     _%K123637%_
                                                     _%rest123638%_
                                                     _%r123639%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx123318%_
                                                     _%hd123636%_)))))
                                      (if (string? _%e123645%_)
                                          (_%import1123322%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd123636%_
                                             (gx#stx-source _%stx123318%_)))
                                           _%K123637%_
                                           _%rest123638%_
                                           _%r123639%_)
                                          (if (##structure-instance-of?
                                               _%e123645%_
                                               'gx#module-context::t)
                                              (_%K123637%_
                                               _%rest123638%_
                                               (cons _%e123645%_ _%r123639%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx123318%_
                                               _%hd123636%_))))))))))
                 (_%import1123322%_
                  (lambda (_%ctx123625%_
                           _%K123626%_
                           _%rest123627%_
                           _%r123628%_)
                    (let ((_%dphi123630%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123626%_
                       _%rest123627%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123625%_
                              _%dphi123630%_
                              (map (lambda (_%g123631123633%_)
                                     (gx#core-module-export->import__%
                                      _%g123631123633%_
                                      '#f
                                      _%dphi123630%_))
                                   (##unchecked-structure-ref
                                    _%ctx123625%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123628%_)))))
                 (_%import-submodule123323%_
                  (lambda (_%hd123592%_ _%K123593%_ _%rest123594%_ _%r123595%_)
                    (let* ((_%e123596123603%_ _%hd123592%_)
                           (_%E123598123607%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123596123603%_)))
                           (_%E123597123621%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123596123603%_)
                                  (let ((_%e123599123611%_
                                         (gx#syntax-e _%e123596123603%_)))
                                    (let ((_%hd123600123614%_
                                           (##car _%e123599123611%_))
                                          (_%tl123601123616%_
                                           (##cdr _%e123599123611%_)))
                                      (let ((_%spath123619%_
                                             _%tl123601123616%_))
                                        (if '#t
                                            (_%import1123322%_
                                             (_%import-spec-source123326%_
                                              _%spath123619%_)
                                             _%K123593%_
                                             _%rest123594%_
                                             _%r123595%_)
                                            (_%E123598123607%_)))))
                                  (_%E123598123607%_)))))
                      (_%E123597123621%_))))
                 (_%import-runtime123324%_
                  (lambda (_%hd123559%_ _%K123560%_ _%rest123561%_ _%r123562%_)
                    (let* ((_%e123563123570%_ _%hd123559%_)
                           (_%E123565123574%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123563123570%_)))
                           (_%E123564123588%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123563123570%_)
                                  (let ((_%e123566123578%_
                                         (gx#syntax-e _%e123563123570%_)))
                                    (let ((_%hd123567123581%_
                                           (##car _%e123566123578%_))
                                          (_%tl123568123583%_
                                           (##cdr _%e123566123578%_)))
                                      (let ((_%spath123586%_
                                             _%tl123568123583%_))
                                        (if '#t
                                            (_%K123560%_
                                             _%rest123561%_
                                             (cons (_%import-spec-source123326%_
                                                    _%spath123586%_)
                                                   _%r123562%_))
                                            (_%E123565123574%_)))))
                                  (_%E123565123574%_)))))
                      (_%E123564123588%_))))
                 (_%import-spec123325%_
                  (lambda (_%hd123397%_ _%K123398%_ _%rest123399%_ _%r123400%_)
                    (let* ((_%e123401123418%_ _%hd123397%_)
                           (_%E123410123422%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123401123418%_)))
                           (_%E123403123533%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123401123418%_)
                                  (let ((_%e123411123426%_
                                         (gx#syntax-e _%e123401123418%_)))
                                    (let ((_%hd123412123429%_
                                           (##car _%e123411123426%_))
                                          (_%tl123413123431%_
                                           (##cdr _%e123411123426%_)))
                                      (if (gx#stx-pair? _%tl123413123431%_)
                                          (let ((_%e123414123434%_
                                                 (gx#syntax-e
                                                  _%tl123413123431%_)))
                                            (let ((_%hd123415123437%_
                                                   (##car _%e123414123434%_))
                                                  (_%tl123416123439%_
                                                   (##cdr _%e123414123434%_)))
                                              (let* ((_%path123442%_
                                                      _%hd123415123437%_)
                                                     (_%specs123444%_
                                                      _%tl123416123439%_))
                                                (if '#t
                                                    (let ((_%src-ctx123446%_
                                                           (_%import-spec-source123326%_
                                                            _%path123442%_))
                                                          (_%exports123447%_
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
                                                          (_%specs123448%_
                                                           (gx#syntax->list
                                                            _%specs123444%_)))
                                                      (for-each
                                                       (lambda (_%out123450%_)
                                                         (hash-put!
                                                          _%exports123447%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out123450%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out123450%_ '4 '#f '#f))
                  _%out123450%_))
               (##unchecked-structure-ref _%src-ctx123446%_ '9 '#f '#f))
              (_%K123398%_
               _%rest123399%_
               (__foldl1
                (lambda (_%spec123452%_ _%r123453%_)
                  (let* ((_%e123454123470%_ _%spec123452%_)
                         (_%E123456123474%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e123454123470%_)))
                         (_%E123455123529%_
                          (lambda ()
                            (if (gx#stx-pair? _%e123454123470%_)
                                (let ((_%e123457123478%_
                                       (gx#syntax-e _%e123454123470%_)))
                                  (let ((_%hd123458123481%_
                                         (##car _%e123457123478%_))
                                        (_%tl123459123483%_
                                         (##cdr _%e123457123478%_)))
                                    (let ((_%phi123486%_ _%hd123458123481%_))
                                      (if (gx#stx-pair? _%tl123459123483%_)
                                          (let ((_%e123460123488%_
                                                 (gx#syntax-e
                                                  _%tl123459123483%_)))
                                            (let ((_%hd123461123491%_
                                                   (##car _%e123460123488%_))
                                                  (_%tl123462123493%_
                                                   (##cdr _%e123460123488%_)))
                                              (let ((_%name123496%_
                                                     _%hd123461123491%_))
                                                (if (gx#stx-pair?
                                                     _%tl123462123493%_)
                                                    (let ((_%e123463123498%_
                                                           (gx#syntax-e
                                                            _%tl123462123493%_)))
                                                      (let ((_%hd123464123501%_
                                                             (##car _%e123463123498%_))
                                                            (_%tl123465123503%_
                                                             (##cdr _%e123463123498%_)))
                                                        (let ((_%src-phi123506%_
                                                               _%hd123464123501%_))
                                                          (if (gx#stx-pair?
                                                               _%tl123465123503%_)
                                                              (let ((_%e123466123508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl123465123503%_)))
                        (let ((_%hd123467123511%_ (##car _%e123466123508%_))
                              (_%tl123468123513%_ (##cdr _%e123466123508%_)))
                          (let ((_%src-name123516%_ _%hd123467123511%_))
                            (if (gx#stx-null? _%tl123468123513%_)
                                (if (and (gx#stx-fixnum? _%src-phi123506%_)
                                         (gx#identifier? _%src-name123516%_)
                                         (gx#stx-fixnum? _%phi123486%_)
                                         (gx#identifier? _%name123496%_))
                                    (let ((_%src-phi123518%_
                                           (gx#stx-e _%src-phi123506%_))
                                          (_%src-name123519%_
                                           (gx#core-identifier-key
                                            _%src-name123516%_))
                                          (_%phi123520%_
                                           (gx#stx-e _%phi123486%_))
                                          (_%name123521%_
                                           (gx#core-identifier-key
                                            _%name123496%_)))
                                      (let ((_%$e123523%_
                                             (hash-get
                                              _%exports123447%_
                                              (cons _%src-phi123518%_
                                                    _%src-name123519%_))))
                                        (if _%$e123523%_
                                            ((lambda (_%out123526%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out123526%_
                                                      _%name123521%_
                                                      (fx- _%phi123520%_
                                                           _%src-phi123518%_))
                                                     _%r123453%_))
                                             _%$e123523%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx123318%_
                                             _%hd123397%_))))
                                    (_%E123456123474%_))
                                (_%E123456123474%_)))))
                      (_%E123456123474%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E123456123474%_)))))
                                          (_%E123456123474%_)))))
                                (_%E123456123474%_)))))
                    (_%E123455123529%_)))
                _%r123400%_
                _%specs123448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E123410123422%_)))))
                                          (_%E123410123422%_))))
                                  (_%E123410123422%_))))
                           (_%E123402123555%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123401123418%_)
                                  (let ((_%e123404123537%_
                                         (gx#syntax-e _%e123401123418%_)))
                                    (let ((_%hd123405123540%_
                                           (##car _%e123404123537%_))
                                          (_%tl123406123542%_
                                           (##cdr _%e123404123537%_)))
                                      (if (gx#stx-pair? _%tl123406123542%_)
                                          (let ((_%e123407123545%_
                                                 (gx#syntax-e
                                                  _%tl123406123542%_)))
                                            (let ((_%hd123408123548%_
                                                   (##car _%e123407123545%_))
                                                  (_%tl123409123550%_
                                                   (##cdr _%e123407123545%_)))
                                              (let ((_%path123553%_
                                                     _%hd123408123548%_))
                                                (if (gx#stx-null?
                                                     _%tl123409123550%_)
                                                    (if '#t
                                                        (_%K123398%_
                                                         _%rest123399%_
                                                         (cons (_%import-spec-source123326%_
                                                                _%path123553%_)
                                                               _%r123400%_))
                                                        (_%E123403123533%_))
                                                    (_%E123403123533%_)))))
                                          (_%E123403123533%_))))
                                  (_%E123403123533%_)))))
                      (_%E123402123555%_))))
                 (_%import-spec-source123326%_
                  (lambda (_%spath123395%_)
                    (gx#core-import-nested-module
                     _%spath123395%_
                     _%stx123318%_)))
                 (_%import!123327%_
                  (lambda (_%rbody123340%_)
                    (letrec* ((_%current-ctx123342%_
                               (gx#current-expander-context))
                              (_%deps123343%_ (make-hash-table-eq))
                              (_%bind!123344%_
                               (lambda (_%hd123393%_)
                                 (gx#core-bind-import!__1
                                  _%hd123393%_
                                  _%current-ctx123342%_))))
                      (let _%lp123346%_ ((_%rest123348%_ _%rbody123340%_)
                                         (_%body123349%_ '()))
                        (let* ((_%rest123350123358%_ _%rest123348%_)
                               (_%else123352123369%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx123342%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx123342%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx123342%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body123349%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx123366%_ _%_123367%_)
                                     (gx#eval-module _%ctx123366%_))
                                   _%deps123343%_)
                                  _%body123349%_))
                               (_%K123354123381%_
                                (lambda (_%rest123372%_ _%hd123373%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd123373%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!123344%_ _%hd123373%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd123373%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd123373%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps123343%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd123373%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd123373%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!123344%_
                                             (##unchecked-structure-ref
                                              _%hd123373%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd123373%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps123343%_
                                                 (##unchecked-structure-ref
                                                  _%hd123373%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e123377%_
                                                 (##structure-instance-of?
                                                  _%hd123373%_
                                                  'gx#module-context::t)))
                                            (if _%$e123377%_
                                                _%$e123377%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx123318%_
                                                 _%hd123373%_)))))
                                  (_%lp123346%_
                                   _%rest123372%_
                                   (cons _%hd123373%_ _%body123349%_)))))
                          (if (##pair? _%rest123350123358%_)
                              (let ((_%hd123355123384%_
                                     (##car _%rest123350123358%_))
                                    (_%tl123356123386%_
                                     (##cdr _%rest123350123358%_)))
                                (let* ((_%hd123389%_ _%hd123355123384%_)
                                       (_%rest123391%_ _%tl123356123386%_))
                                  (_%K123354123381%_
                                   _%rest123391%_
                                   _%hd123389%_)))
                              (_%else123352123369%_)))))))
                 (_%expanded-import?123328%_
                  (lambda (_%e123332%_)
                    (let ((_%$e123334%_
                           (##structure-direct-instance-of?
                            _%e123332%_
                            'gx#import-set::t)))
                      (if _%$e123334%_
                          _%$e123334%_
                          (let ((_%$e123337%_
                                 (##structure-direct-instance-of?
                                  _%e123332%_
                                  'gx#module-import::t)))
                            (if _%$e123337%_
                                _%$e123337%_
                                (##structure-instance-of?
                                 _%e123332%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody123330%_
                 (gx#core-expand-import/export
                  _%stx123318%_
                  _%expanded-import?123328%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1123321%_)))
            (if _%internal-expand?123319%_
                (reverse _%rbody123330%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!123327%_ _%rbody123330%_))
                 (gx#stx-source _%stx123318%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123657%_)
        (let ((_%internal-expand?123659%_ '#f))
          (gx#core-expand-import%__%
           _%stx123657%_
           _%internal-expand?123659%_))))
    (define gx#core-expand-import%
      (lambda _g126310_
        (let ((_g126309_ (##length _g126310_)))
          (cond ((##fx= _g126309_ 1)
                 (apply gx#core-expand-import%__0 _g126310_))
                ((##fx= _g126309_ 2)
                 (apply gx#core-expand-import%__% _g126310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g126310_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath123245%_ _%where123246%_)
        (let* ((_%e123247123254%_ _%spath123245%_)
               (_%E123249123258%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123247123254%_)))
               (_%E123248123313%_
                (lambda ()
                  (if (gx#stx-pair? _%e123247123254%_)
                      (let ((_%e123250123262%_
                             (gx#syntax-e _%e123247123254%_)))
                        (let ((_%hd123251123265%_ (##car _%e123250123262%_))
                              (_%tl123252123267%_ (##cdr _%e123250123262%_)))
                          (let* ((_%origin123270%_ _%hd123251123265%_)
                                 (_%sub123272%_ _%tl123252123267%_))
                            (if '#t
                                (let ((_%origin-ctx123274%_
                                       (if (gx#stx-false? _%origin123270%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin123270%_))))
                                  (let _%lp123276%_ ((_%rest123278%_
                                                      _%sub123272%_)
                                                     (_%ctx123279%_
                                                      _%origin-ctx123274%_))
                                    (let* ((_%e123280123287%_ _%rest123278%_)
                                           (_%E123282123291%_
                                            (lambda () _%ctx123279%_))
                                           (_%E123281123309%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e123280123287%_)
                                                  (let ((_%e123283123295%_
                                                         (gx#syntax-e
                                                          _%e123280123287%_)))
                                                    (let ((_%hd123284123298%_
                                                           (##car _%e123283123295%_))
                                                          (_%tl123285123300%_
                                                           (##cdr _%e123283123295%_)))
                                                      (let* ((_%id123303%_
                                                              _%hd123284123298%_)
                                                             (_%rest123305%_
                                                              _%tl123285123300%_))
                                                        (if '#t
                                                            (let ((_%bind123307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id123303%_
                            '0
                            _%ctx123279%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind123307%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind123307%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where123246%_
                           _%spath123245%_
                           _%id123303%_))
                      (_%lp123276%_
                       _%rest123305%_
                       (##unchecked-structure-ref _%bind123307%_ '4 '#f '#f)))
                    (_%E123282123291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123282123291%_)))))
                                      (_%E123281123309%_))))
                                (_%E123249123258%_)))))
                      (_%E123249123258%_)))))
          (_%E123248123313%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd123243%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd123243%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122737%_ _%internal-expand?122738%_)
        (letrec* ((_%make-export__126238126239%_
                   (lambda (_%bind123191%_
                            _%phi123192%_
                            _%ctx123193%_
                            _%name123194%_)
                     (let* ((_%key123196%_
                             (##unchecked-structure-ref
                              _%bind123191%_
                              '2
                              '#f
                              '#f))
                            (_%export-key123198%_
                             (if _%name123194%_
                                 (gx#core-identifier-key _%name123194%_)
                                 _%key123196%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx123193%_
                        _%key123196%_
                        _%phi123192%_
                        _%export-key123198%_
                        (let ((_%$e123201%_
                               (##structure-instance-of?
                                _%bind123191%_
                                'gx#extern-binding::t)))
                          (if _%$e123201%_
                              _%$e123201%_
                              (##structure-direct-instance-of?
                               _%bind123191%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__126240126243%_
                   (lambda (_%bind123207%_)
                     (let* ((_%phi123209%_ (gx#current-export-expander-phi))
                            (_%ctx123211%_ (gx#current-expander-context))
                            (_%name123213%_ '#f))
                       (_%make-export__126238126239%_
                        _%bind123207%_
                        _%phi123209%_
                        _%ctx123211%_
                        _%name123213%_))))
                  (_%make-export__1__126241126244%_
                   (lambda (_%bind123215%_ _%phi123216%_)
                     (let* ((_%ctx123218%_ (gx#current-expander-context))
                            (_%name123220%_ '#f))
                       (_%make-export__126238126239%_
                        _%bind123215%_
                        _%phi123216%_
                        _%ctx123218%_
                        _%name123220%_))))
                  (_%make-export__2__126242126245%_
                   (lambda (_%bind123222%_ _%phi123223%_ _%ctx123224%_)
                     (let ((_%name123226%_ '#f))
                       (_%make-export__126238126239%_
                        _%bind123222%_
                        _%phi123223%_
                        _%ctx123224%_
                        _%name123226%_))))
                  (_%make-export122740%_
                   (lambda _g126312_
                     (let ((_g126311_ (##length _g126312_)))
                       (cond ((##fx= _g126311_ 1)
                              (apply _%make-export__0__126240126243%_
                                     _g126312_))
                             ((##fx= _g126311_ 2)
                              (apply _%make-export__1__126241126244%_
                                     _g126312_))
                             ((##fx= _g126311_ 3)
                              (apply _%make-export__2__126242126245%_
                                     _g126312_))
                             ((##fx= _g126311_ 4)
                              (apply _%make-export__126238126239%_ _g126312_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g126312_))))))
                  (_%expand1122741%_
                   (lambda (_%hd122896%_
                            _%K122897%_
                            _%rest122898%_
                            _%r122899%_)
                     (let* ((_%e122900122932%_ _%hd122896%_)
                            (_%E122927122936%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122737%_
                                _%hd122896%_)))
                            (_%E122917123020%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122900122932%_)
                                   (let ((_%e122928122940%_
                                          (gx#syntax-e _%e122900122932%_)))
                                     (let ((_%hd122929122943%_
                                            (##car _%e122928122940%_))
                                           (_%tl122930122945%_
                                            (##cdr _%e122928122940%_)))
                                       (if (eq? (gx#stx-e _%hd122929122943%_)
                                                'import:)
                                           (let ((_%in122948%_
                                                  _%tl122930122945%_))
                                             (if (gx#stx-list? _%in122948%_)
                                                 (let _%lp122950%_ ((_%in-rest122952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122948%_)
                            (_%r122953%_ _%r122899%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122954122961%_
                                                           _%in-rest122952%_)
                                                          (_%E122956122965%_
                                                           (lambda ()
                                                             (_%K122897%_
                                                              _%rest122898%_
                                                              _%r122953%_)))
                                                          (_%E122955123016%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122954122961%_)
                         (let ((_%e122957122969%_
                                (gx#syntax-e _%e122954122961%_)))
                           (let ((_%hd122958122972%_ (##car _%e122957122969%_))
                                 (_%tl122959122974%_
                                  (##cdr _%e122957122969%_)))
                             (let* ((_%hd122977%_ _%hd122958122972%_)
                                    (_%in-rest122979%_ _%tl122959122974%_))
                               (if '#t
                                   (let ((_%src123014%_
                                          (if (gx#core-bound-module?
                                               _%hd122977%_)
                                              (gx#syntax-local-e__0
                                               _%hd122977%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd122977%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd122977%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122977%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd122977%_))
                                                      (if (gx#stx-string?
                                                           _%hd122977%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd122977%_
                                                            (gx#stx-source
                                                             _%stx122737%_)))
                                                          (let* ((_%e122985122992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122977%_)
                         (_%E122987122996%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx122737%_
                             _%hd122977%_)))
                         (_%E122986123010%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122985122992%_)
                                (let ((_%e122988123000%_
                                       (gx#syntax-e _%e122985122992%_)))
                                  (let ((_%hd122989123003%_
                                         (##car _%e122988123000%_))
                                        (_%tl122990123005%_
                                         (##cdr _%e122988123000%_)))
                                    (if (eq? (gx#stx-e _%hd122989123003%_)
                                             'in:)
                                        (let ((_%spath123008%_
                                               _%tl122990123005%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath123008%_
                                               _%stx122737%_)
                                              (_%E122987122996%_)))
                                        (_%E122987122996%_))))
                                (_%E122987122996%_)))))
                    (_%E122986123010%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122950%_
                                      _%in-rest122979%_
                                      (_%export-imports122742%_
                                       _%src123014%_
                                       _%r122953%_)))
                                   (_%E122956122965%_)))))
                         (_%E122956122965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122955123016%_)))
                                                 (_%E122927122936%_)))
                                           (_%E122927122936%_))))
                                   (_%E122927122936%_))))
                            (_%E122904123060%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122900122932%_)
                                   (let ((_%e122918123024%_
                                          (gx#syntax-e _%e122900122932%_)))
                                     (let ((_%hd122919123027%_
                                            (##car _%e122918123024%_))
                                           (_%tl122920123029%_
                                            (##cdr _%e122918123024%_)))
                                       (if (eq? (gx#stx-e _%hd122919123027%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122920123029%_)
                                               (let ((_%e122921123032%_
                                                      (gx#syntax-e
                                                       _%tl122920123029%_)))
                                                 (let ((_%hd122922123035%_
                                                        (##car _%e122921123032%_))
                                                       (_%tl122923123037%_
                                                        (##cdr _%e122921123032%_)))
                                                   (let ((_%id123040%_
                                                          _%hd122922123035%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122923123037%_)
                                                         (let ((_%e122924123042%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122923123037%_)))
                   (let ((_%hd122925123045%_ (##car _%e122924123042%_))
                         (_%tl122926123047%_ (##cdr _%e122924123042%_)))
                     (let ((_%name123050%_ _%hd122925123045%_))
                       (if (gx#stx-null? _%tl122926123047%_)
                           (if '#t
                               (let* ((_%phi123052%_
                                       (gx#current-export-expander-phi))
                                      (_%$e123054%_
                                       (gx#core-resolve-identifier__1
                                        _%id123040%_
                                        _%phi123052%_)))
                                 (if _%$e123054%_
                                     ((lambda (_%bind123057%_)
                                        (_%K122897%_
                                         _%rest122898%_
                                         (cons (_%make-export__126238126239%_
                                                _%bind123057%_
                                                _%phi123052%_
                                                (gx#current-expander-context)
                                                _%name123050%_)
                                               _%r122899%_)))
                                      _%$e123054%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx122737%_
                                      _%hd122896%_
                                      _%id123040%_)))
                               (_%E122917123020%_))
                           (_%E122917123020%_)))))
                 (_%E122917123020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122917123020%_))
                                           (_%E122917123020%_))))
                                   (_%E122917123020%_))))
                            (_%E122903123110%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122900122932%_)
                                   (let ((_%e122905123064%_
                                          (gx#syntax-e _%e122900122932%_)))
                                     (let ((_%hd122906123067%_
                                            (##car _%e122905123064%_))
                                           (_%tl122907123069%_
                                            (##cdr _%e122905123064%_)))
                                       (if (eq? (gx#stx-e _%hd122906123067%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122907123069%_)
                                               (let ((_%e122908123072%_
                                                      (gx#syntax-e
                                                       _%tl122907123069%_)))
                                                 (let ((_%hd122909123075%_
                                                        (##car _%e122908123072%_))
                                                       (_%tl122910123077%_
                                                        (##cdr _%e122908123072%_)))
                                                   (let ((_%phi123080%_
                                                          _%hd122909123075%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122910123077%_)
                                                         (let ((_%e122911123082%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122910123077%_)))
                   (let ((_%hd122912123085%_ (##car _%e122911123082%_))
                         (_%tl122913123087%_ (##cdr _%e122911123082%_)))
                     (let ((_%id123090%_ _%hd122912123085%_))
                       (if (gx#stx-pair? _%tl122913123087%_)
                           (let ((_%e122914123092%_
                                  (gx#syntax-e _%tl122913123087%_)))
                             (let ((_%hd122915123095%_
                                    (##car _%e122914123092%_))
                                   (_%tl122916123097%_
                                    (##cdr _%e122914123092%_)))
                               (let ((_%name123100%_ _%hd122915123095%_))
                                 (if (gx#stx-null? _%tl122916123097%_)
                                     (if (and (gx#stx-fixnum? _%phi123080%_)
                                              (gx#identifier? _%id123090%_)
                                              (gx#identifier? _%name123100%_))
                                         (let* ((_%phi123102%_
                                                 (gx#stx-e _%phi123080%_))
                                                (_%$e123104%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id123090%_
                                                  _%phi123102%_)))
                                           (if _%$e123104%_
                                               ((lambda (_%bind123107%_)
                                                  (_%K122897%_
                                                   _%rest122898%_
                                                   (cons (_%make-export__126238126239%_
                                                          _%bind123107%_
                                                          _%phi123102%_
                                                          (gx#current-expander-context)
                                                          _%name123100%_)
                                                         _%r122899%_)))
                                                _%$e123104%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx122737%_
                                                _%hd122896%_
                                                _%id123090%_)))
                                         (_%E122904123060%_))
                                     (_%E122904123060%_)))))
                           (_%E122904123060%_)))))
                 (_%E122904123060%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122904123060%_))
                                           (_%E122904123060%_))))
                                   (_%E122904123060%_))))
                            (_%E122902123122%_
                             (lambda ()
                               (let ((_%id123114%_ _%e122900122932%_))
                                 (if (gx#identifier? _%id123114%_)
                                     (let ((_%$e123116%_
                                            (gx#core-resolve-identifier__1
                                             _%id123114%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e123116%_
                                           ((lambda (_%bind123119%_)
                                              (_%K122897%_
                                               _%rest122898%_
                                               (cons (_%make-export__0__126240126243%_
                                                      _%bind123119%_)
                                                     _%r122899%_)))
                                            _%$e123116%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx122737%_
                                            _%hd122896%_)))
                                     (_%E122903123110%_)))))
                            (_%E122901123186%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122900122932%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx123126%_
                                               (gx#current-expander-context))
                                              (_%current-phi123128%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx123130%_
                                               (gx#core-context-shift
                                                _%current-ctx123126%_
                                                _%current-phi123128%_))
                                              (_%phi-bind123132%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx123130%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp123135%_ ((_%bind-rest123137%_
                                                             _%phi-bind123132%_)
                                                            (_%set123138%_
                                                             '()))
                                           (let* ((_%bind-rest123139123149%_
                                                   _%bind-rest123137%_)
                                                  (_%else123141123157%_
                                                   (lambda ()
                                                     (_%K122897%_
                                                      _%rest122898%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi123128%_
                                                             _%set123138%_)
                                                            _%r122899%_))))
                                                  (_%K123143123167%_
                                                   (lambda (_%bind-rest123160%_
                                                            _%bind123161%_
                                                            _%key123162%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind123161%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind123161%_))
                                                         (_%lp123135%_
                                                          _%bind-rest123160%_
                                                          _%set123138%_)
                                                         (_%lp123135%_
                                                          _%bind-rest123160%_
                                                          (cons (_%make-export__2__126242126245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind123161%_
                         _%current-phi123128%_
                         _%current-ctx123126%_)
                        _%set123138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest123139123149%_)
                                                 (let ((_%hd123144123170%_
                                                        (##car _%bind-rest123139123149%_))
                                                       (_%tl123145123172%_
                                                        (##cdr _%bind-rest123139123149%_)))
                                                   (if (##pair? _%hd123144123170%_)
                                                       (let ((_%hd123146123175%_
                                                              (##car _%hd123144123170%_))
                                                             (_%tl123147123177%_
                                                              (##cdr _%hd123144123170%_)))
                                                         (let* ((_%key123180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd123146123175%_)
                        (_%bind123182%_ _%tl123147123177%_)
                        (_%bind-rest123184%_ _%tl123145123172%_))
                   (_%K123143123167%_
                    _%bind-rest123184%_
                    _%bind123182%_
                    _%key123180%_)))
               (_%else123141123157%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else123141123157%_)))))
                                       (_%E122902123122%_))
                                   (_%E122902123122%_)))))
                       (_%E122901123186%_))))
                  (_%export-imports122742%_
                   (lambda (_%src122772%_ _%r122773%_)
                     (letrec* ((_%current-ctx122775%_
                                (gx#current-expander-context))
                               (_%current-phi122776%_
                                (gx#current-export-expander-phi))
                               (_%import->export122777%_
                                (lambda (_%in122858%_)
                                  (let* ((_%in122859122867%_ _%in122858%_)
                                         (_%E122861122871%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122859122867%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122862122878%_
                                          (lambda (_%phi122874%_
                                                   _%key122875%_
                                                   _%out122876%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122775%_
                                             _%key122875%_
                                             _%phi122874%_
                                             _%key122875%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122859122867%_
                                         'gx#module-import::t)
                                        (let* ((_%e122863122881%_
                                                (##unchecked-structure-ref
                                                 _%in122859122867%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122884%_
                                                _%e122863122881%_)
                                               (_%e122864122886%_
                                                (##unchecked-structure-ref
                                                 _%in122859122867%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122889%_
                                                _%e122864122886%_)
                                               (_%e122865122891%_
                                                (##unchecked-structure-ref
                                                 _%in122859122867%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122894%_
                                                _%e122865122891%_))
                                          (_%K122862122878%_
                                           _%phi122894%_
                                           _%key122889%_
                                           _%out122884%_))
                                        (_%E122861122871%_)))))
                               (_%fold-e122778%_
                                (lambda (_%in122780%_ _%r122781%_)
                                  (let* ((_%in122782122796%_ _%in122780%_)
                                         (_%else122785122804%_
                                          (lambda () _%r122781%_)))
                                    (let ((_%K122791122840%_
                                           (lambda (_%phi122836%_
                                                    _%key122837%_
                                                    _%out122838%_)
                                             (if (and (fx= _%phi122836%_
                                                           _%current-phi122776%_)
                                                      (eq? _%src122772%_
                                                           (##unchecked-structure-ref
                                                            _%out122838%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122777%_
                                                        _%in122780%_)
                                                       _%r122781%_)
                                                 _%r122781%_)))
                                          (_%K122787122815%_
                                           (lambda (_%imports122808%_
                                                    _%phi122809%_
                                                    _%ctx122810%_)
                                             (if (and (fx= _%phi122809%_
                                                           _%current-phi122776%_)
                                                      (eq? _%src122772%_
                                                           _%ctx122810%_))
                                                 (__foldl1
                                                  (lambda (_%in122812%_
                                                           _%r122813%_)
                                                    (cons (_%import->export122777%_
                                                           _%in122812%_)
                                                          _%r122813%_))
                                                  _%r122781%_
                                                  _%imports122808%_)
                                                 _%r122781%_))))
                                      (let ((_%try-match122784122833%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122782122796%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122788122818%_
                                                           (##unchecked-structure-ref
                                                            _%in122782122796%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122789122823%_
                                                           (##unchecked-structure-ref
                                                            _%in122782122796%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122790122828%_
                                                           (##unchecked-structure-ref
                                                            _%in122782122796%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122821%_
                                                            _%e122788122818%_)
                                                           (_%phi122826%_
                                                            _%e122789122823%_)
                                                           (_%imports122831%_
                                                            _%e122790122828%_))
                                                       (_%K122787122815%_
                                                        _%imports122831%_
                                                        _%phi122826%_
                                                        _%ctx122821%_)))
                                                   (_%else122785122804%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122782122796%_
                                             'gx#module-import::t)
                                            (let* ((_%e122792122843%_
                                                    (##unchecked-structure-ref
                                                     _%in122782122796%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122793122848%_
                                                    (##unchecked-structure-ref
                                                     _%in122782122796%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122794122853%_
                                                    (##unchecked-structure-ref
                                                     _%in122782122796%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122846%_
                                                     _%e122792122843%_)
                                                    (_%key122851%_
                                                     _%e122793122848%_)
                                                    (_%phi122856%_
                                                     _%e122794122853%_))
                                                (_%K122791122840%_
                                                 _%phi122856%_
                                                 _%key122851%_
                                                 _%out122846%_)))
                                            (_%try-match122784122833%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122772%_
                              _%current-phi122776%_
                              (__foldl1
                               _%fold-e122778%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122775%_
                                '8
                                '#f
                                '#f)))
                             _%r122773%_))))
                  (_%export!122743%_
                   (lambda (_%rbody122759%_)
                     (letrec* ((_%current-ctx122761%_
                                (gx#current-expander-context))
                               (_%fold-e122762%_
                                (lambda (_%out122766%_ _%r122767%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122766%_
                                       'gx#module-export::t)
                                      (cons _%out122766%_ _%r122767%_)
                                      (if (##structure-direct-instance-of?
                                           _%out122766%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r122767%_
                                           (##unchecked-structure-ref
                                            _%out122766%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r122767%_)))))
                       (let ((_%body122764%_ (reverse _%rbody122759%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122761%_
                          (__foldl1
                           _%fold-e122762%_
                           (##unchecked-structure-ref
                            _%current-ctx122761%_
                            '9
                            '#f
                            '#f)
                           _%body122764%_)
                          '9
                          '#f
                          '#f)
                         _%body122764%_))))
                  (_%expanded-export?122744%_
                   (lambda (_%e122754%_)
                     (let ((_%$e122756%_
                            (##structure-direct-instance-of?
                             _%e122754%_
                             'gx#module-export::t)))
                       (if _%$e122756%_
                           _%$e122756%_
                           (##structure-direct-instance-of?
                            _%e122754%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122738%_)
              (let ((_%rbody122750%_
                     (gx#core-expand-import/export
                      _%stx122737%_
                      _%expanded-export?122744%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122741%_)))
                (if _%internal-expand?122738%_
                    (reverse _%rbody122750%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122743%_ _%rbody122750%_))
                     (gx#stx-source _%stx122737%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx122737%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx122737%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx123236%_)
        (let ((_%internal-expand?123238%_ '#f))
          (gx#core-expand-export%__%
           _%stx123236%_
           _%internal-expand?123238%_))))
    (define gx#core-expand-export%
      (lambda _g126314_
        (let ((_g126313_ (##length _g126314_)))
          (cond ((##fx= _g126313_ 1)
                 (apply gx#core-expand-export%__0 _g126314_))
                ((##fx= _g126313_ 2)
                 (apply gx#core-expand-export%__% _g126314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g126314_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122734%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122734%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122704%_)
        (let* ((_%e122705122712%_ _%stx122704%_)
               (_%E122707122716%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122705122712%_)))
               (_%E122706122730%_
                (lambda ()
                  (if (gx#stx-pair? _%e122705122712%_)
                      (let ((_%e122708122720%_
                             (gx#syntax-e _%e122705122712%_)))
                        (let ((_%hd122709122723%_ (##car _%e122708122720%_))
                              (_%tl122710122725%_ (##cdr _%e122708122720%_)))
                          (let ((_%body122728%_ _%tl122710122725%_))
                            (if (gx#identifier-list? _%body122728%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122728%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122728%_))
                                   (gx#stx-source _%stx122704%_)))
                                (_%E122707122716%_)))))
                      (_%E122707122716%_)))))
          (_%E122706122730%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122670%_ _%private?122671%_ _%phi122672%_ _%ctx122673%_)
        (gx#core-bind-syntax!__%
         _%id122670%_
         ((if _%private?122671%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122670%_))
         _%private?122671%_
         _%phi122672%_
         _%ctx122673%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122678%_)
        (let* ((_%private?122680%_ '#f)
               (_%phi122682%_ (gx#current-expander-phi))
               (_%ctx122684%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122678%_
           _%private?122680%_
           _%phi122682%_
           _%ctx122684%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122686%_ _%private?122687%_)
        (let* ((_%phi122689%_ (gx#current-expander-phi))
               (_%ctx122691%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122686%_
           _%private?122687%_
           _%phi122689%_
           _%ctx122691%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122693%_ _%private?122694%_ _%phi122695%_)
        (let ((_%ctx122697%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122693%_
           _%private?122694%_
           _%phi122695%_
           _%ctx122697%_))))
    (define gx#core-bind-feature!
      (lambda _g126316_
        (let ((_g126315_ (##length _g126316_)))
          (cond ((##fx= _g126315_ 1)
                 (apply gx#core-bind-feature!__0 _g126316_))
                ((##fx= _g126315_ 2)
                 (apply gx#core-bind-feature!__1 _g126316_))
                ((##fx= _g126315_ 3)
                 (apply gx#core-bind-feature!__2 _g126316_))
                ((##fx= _g126315_ 4)
                 (apply gx#core-bind-feature!__% _g126316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g126316_))))))))
