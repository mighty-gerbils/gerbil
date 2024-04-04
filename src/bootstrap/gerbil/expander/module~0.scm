(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712256087)
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
      (lambda _%$args125728%_
        (apply make-instance gx#module-import::t _%$args125728%_)))
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
      (lambda _%$args125725%_
        (apply make-instance gx#module-export::t _%$args125725%_)))
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
      (lambda _%$args125722%_
        (apply make-instance gx#import-set::t _%$args125722%_)))
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
      (lambda _%$args125719%_
        (apply make-instance gx#export-set::t _%$args125719%_)))
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
      (lambda _%$args125716%_
        (apply make-instance gx#import-expander::t _%$args125716%_)))
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
      (lambda _%$args125713%_
        (apply make-instance gx#export-expander::t _%$args125713%_)))
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
      (lambda _%$args125710%_
        (apply make-instance gx#import-export-expander::t _%$args125710%_)))
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
      (lambda (_%path125707%_ _%fun125708%_)
        (call-with-input-file
         (cons 'path: (cons _%path125707%_ gx#source-file-settings))
         _%fun125708%_)))
    (define gx#module-context:::init!
      (lambda (_%self125690%_
               _%id125691%_
               _%super125692%_
               _%ns125693%_
               _%path125694%_)
        (let ((_%self125697%_ _%self125690%_))
          (if (##fx< '11 (##structure-length _%self125697%_))
              (begin
                (##unchecked-structure-set!
                 _%self125697%_
                 _%id125691%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125697%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125697%_
                 _%super125692%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125697%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125697%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125697%_
                 _%ns125693%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125697%_
                 _%path125694%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125697%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125697%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125697%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125697%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125697%_
                     '11
                     (##vector-length _%self125697%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125523%_ _%ctx125524%_ _%root125525%_)
        (let ()
          (let* ((_%self125528%_ _%self125523%_)
                 (_%super125544%_
                  (let ((_%$e125538%_ _%root125525%_))
                    (if _%$e125538%_
                        _%$e125538%_
                        (let ((_%$e125541%_ (gx#core-context-root__0)))
                          (if _%$e125541%_
                              _%$e125541%_
                              (let ((__obj125772
                                     (##structure gx#root-context::t '#f '#f)))
                                (let ((__constructor125773
                                       (direct-method-ref
                                        gx#root-context::t
                                        __obj125772
                                        ':init!)))
                                  (if __constructor125773
                                      (__constructor125773 __obj125772)
                                      (error '"missing constructor method implementation"
                                             'class:
                                             gx#root-context::t
                                             'method:
                                             ':init!)))
                                __obj125772)))))))
            (if _%ctx125524%_
                (let ((_%id125547%_
                       (##structure-ref
                        _%ctx125524%_
                        '1
                        gx#expander-context::t
                        '#f))
                      (_%path125548%_
                       (##structure-ref
                        _%ctx125524%_
                        '7
                        gx#module-context::t
                        '#f))
                      (_%in125549%_
                       (map gx#core-module-export->import
                            (##structure-ref
                             _%ctx125524%_
                             '9
                             gx#module-context::t
                             '#f)))
                      (_%e125550%_
                       (__make-promise
                        (lambda () (gx#eval-module _%ctx125524%_)))))
                  (if (##fx< '8 (##structure-length _%self125528%_))
                      (begin
                        (##unchecked-structure-set!
                         _%self125528%_
                         _%id125547%_
                         '1
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125528%_
                         (make-hash-table-eq 'size: (##length _%in125549%_))
                         '2
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125528%_
                         _%super125544%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125528%_
                         '#f
                         '4
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125528%_
                         '#f
                         '5
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125528%_
                         _%path125548%_
                         '6
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125528%_
                         _%in125549%_
                         '7
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125528%_
                         _%e125550%_
                         '8
                         '#f
                         '#f)
                        '#!void)
                      (error '"struct-instance-init!: too many arguments for struct"
                             _%self125528%_
                             '8
                             (##vector-length _%self125528%_)))
                  (##for-each
                   (lambda (_%g125551125553%_)
                     (gx#core-bind-weak-import!__%
                      _%g125551125553%_
                      _%self125528%_))
                   _%in125549%_))
                (if (##fx< '8 (##structure-length _%self125528%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125528%_
                       '#f
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125528%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125528%_
                       _%super125544%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125528%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125528%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125528%_
                       '#f
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125528%_
                       '()
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125528%_
                       '#f
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125528%_
                           '8
                           (##vector-length _%self125528%_))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125559%_ _%ctx125560%_)
        (let ((_%root125562%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125559%_
           _%ctx125560%_
           _%root125562%_))))
    (define gx#prelude-context:::init!
      (lambda _g125779_
        (let ((_g125778_ (##length _g125779_)))
          (cond ((##fx= _g125778_ 2)
                 (apply (lambda (_%self125559%_ _%ctx125560%_)
                          (gx#prelude-context:::init!__0
                           _%self125559%_
                           _%ctx125560%_))
                        _g125779_))
                ((##fx= _g125778_ 3)
                 (apply (lambda (_%self125564%_ _%ctx125565%_ _%root125566%_)
                          (gx#prelude-context:::init!__%
                           _%self125564%_
                           _%ctx125565%_
                           _%root125566%_))
                        _g125779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125779_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125397%_ _%e125398%_)
        (if (##fx< '3 (##structure-length _%self125397%_))
            (begin
              (##unchecked-structure-set!
               _%self125397%_
               _%e125398%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125397%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125397%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125397%_
                   '3
                   (##vector-length _%self125397%_)))))
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
      (lambda (_%g125023125026%_ _%g125024125028%_)
        (gx#core-apply-user-expander__%
         _%g125023125026%_
         _%g125024125028%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124894124897%_ _%g124895124899%_)
        (gx#core-apply-user-expander__%
         _%g124894124897%_
         _%g124895124899%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124765%_)
        (let* ((_%path124767%_
                (##structure-ref _%ctx124765%_ '7 gx#module-context::t '#f))
               (_%path124769%_
                (if (pair? _%path124767%_)
                    (last _%path124767%_)
                    _%path124767%_)))
          (if (string? _%path124769%_) _%path124769%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124741%_ _%reload?124742%_ _%eval?124743%_)
        (let ((_%ctx124745%_
               ((gx#current-expander-module-import)
                _%path124741%_
                _%reload?124742%_)))
          (if (and _%ctx124745%_ _%eval?124743%_)
              (gx#eval-module _%ctx124745%_)
              '#!void)
          _%ctx124745%_)))
    (define gx#import-module__0
      (lambda (_%path124750%_)
        (let* ((_%reload?124752%_ '#f) (_%eval?124754%_ '#f))
          (gx#import-module__%
           _%path124750%_
           _%reload?124752%_
           _%eval?124754%_))))
    (define gx#import-module__1
      (lambda (_%path124756%_ _%reload?124757%_)
        (let ((_%eval?124759%_ '#f))
          (gx#import-module__%
           _%path124756%_
           _%reload?124757%_
           _%eval?124759%_))))
    (define gx#import-module
      (lambda _g125781_
        (let ((_g125780_ (##length _g125781_)))
          (cond ((##fx= _g125780_ 1)
                 (apply (lambda (_%path124750%_)
                          (gx#import-module__0 _%path124750%_))
                        _g125781_))
                ((##fx= _g125780_ 2)
                 (apply (lambda (_%path124756%_ _%reload?124757%_)
                          (gx#import-module__1
                           _%path124756%_
                           _%reload?124757%_))
                        _g125781_))
                ((##fx= _g125780_ 3)
                 (apply (lambda (_%path124761%_
                                 _%reload?124762%_
                                 _%eval?124763%_)
                          (gx#import-module__%
                           _%path124761%_
                           _%reload?124762%_
                           _%eval?124763%_))
                        _g125781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125781_))))))
    (define gx#eval-module
      (lambda (_%mod124738%_)
        ((gx#current-expander-module-eval) _%mod124738%_)))
    (define gx#core-eval-module
      (lambda (_%obj124718%_)
        (letrec ((_%force-e124720%_
                  (lambda (_%getf124734%_ _%e124735%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124734%_ _%e124735%_)))
                     gx#current-expander-context
                     _%e124735%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124722%_ ((_%e124724%_ _%obj124718%_))
            (if (##structure-instance-of? _%e124724%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124727%_
                         (gx#core-context-prelude__% _%e124724%_)))
                    (if _%$e124727%_ (_%recur124722%_ _%$e124727%_) '#!void))
                  (_%force-e124720%_ gx#module-context-e _%e124724%_))
                (if (##structure-instance-of?
                     _%e124724%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124720%_ gx#prelude-context-e _%e124724%_))
                    (if (gx#stx-string? _%e124724%_)
                        (let ()
                          (_%recur124722%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124724%_))))
                        (if (gx#core-library-module-path? _%e124724%_)
                            (let ()
                              (_%recur124722%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124724%_))))
                            (let ()
                              (error '"cannot eval module"
                                     _%obj124718%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124698%_)
        (let _%lp124700%_ ((_%e124702%_ _%ctx124698%_))
          (if (or (##structure-instance-of? _%e124702%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124702%_ 'gx#local-context::t))
              (let ()
                (_%lp124700%_
                 (##unchecked-structure-ref _%e124702%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124702%_ 'gx#prelude-context::t)
                  (let () _%e124702%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124714%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124714%_))))
    (define gx#core-context-prelude
      (lambda _g125783_
        (let ((_g125782_ (##length _g125783_)))
          (cond ((##fx= _g125782_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125783_))
                ((##fx= _g125782_ 1)
                 (apply (lambda (_%ctx124716%_)
                          (gx#core-context-prelude__% _%ctx124716%_))
                        _g125783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125783_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124689%_)
        (let ((_%$e124691%_ (hash-get gx#__module-registry _%ctx124689%_)))
          (if _%$e124691%_
              _%$e124691%_
              (let ((_%pre124695%_
                     (let ((__obj125774
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
                       (gx#prelude-context:::init! __obj125774 _%ctx124689%_)
                       __obj125774)))
                (hash-put! gx#__module-registry _%ctx124689%_ _%pre124695%_)
                _%pre124695%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124561%_ _%reload?124562%_)
        (letrec ((_%import-source124564%_
                  (lambda (_%path124653%_)
                    (if (member _%path124653%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124653%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125784_ (gx#core-read-module _%path124653%_)))
                         (begin
                           (let ((_g125785_
                                  (if (##values? _g125784_)
                                      (##vector-length _g125784_)
                                      1)))
                             (if (not (##fx= _g125785_ 4))
                                 (error "Context expects 4 values" _g125785_)))
                           (let ((_%pre124656%_ (##vector-ref _g125784_ 0))
                                 (_%id124657%_ (##vector-ref _g125784_ 1))
                                 (_%ns124658%_ (##vector-ref _g125784_ 2))
                                 (_%body124659%_ (##vector-ref _g125784_ 3)))
                             (let* ((_%prelude124669%_
                                     (if (##structure-instance-of?
                                          _%pre124656%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124656%_)
                                         (if (##structure-instance-of?
                                              _%pre124656%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124656%_))
                                             (if (string? _%pre124656%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124656%_)))
                                                 (if (not _%pre124656%_)
                                                     (let ((_%$e124665%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124665%_
                                                           _%$e124665%_
                                                           (let ((__obj125775
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
                     (gx#prelude-context:::init! __obj125775 '#f)
                     __obj125775)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"cannot import module; unknown prelude"
                                                              _%rpath124561%_
                                                              _%pre124656%_)))))))
                                    (_%ctx124671%_
                                     (let ((__obj125776
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
                                        __obj125776
                                        _%id124657%_
                                        _%prelude124669%_
                                        _%ns124658%_
                                        _%path124653%_)
                                       __obj125776))
                                    (_%body124673%_
                                     (gx#core-expand-module-begin
                                      _%body124659%_
                                      _%ctx124671%_))
                                    (_%body124675%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124673%_)
                                      _%path124653%_
                                      _%ctx124671%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124671%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124675%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124671%_
                                _%body124675%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124653%_
                                _%ctx124671%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124657%_
                                _%ctx124671%_)
                               _%ctx124671%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124653%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124565%_
                  (lambda (_%rpath124581%_)
                    (let* ((_%rpath124582124589%_ _%rpath124581%_)
                           (_%E124584124593%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124582124589%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124585124641%_
                            (lambda (_%refs124596%_ _%origin124597%_)
                              (let ((_%ctx124599%_
                                     (if _%origin124597%_
                                         (gx#core-import-module__%
                                          _%origin124597%_
                                          _%reload?124562%_)
                                         (gx#current-expander-context))))
                                (let _%lp124601%_ ((_%rest124603%_
                                                    _%refs124596%_)
                                                   (_%ctx124604%_
                                                    _%ctx124599%_))
                                  (let* ((_%rest124605124613%_ _%rest124603%_)
                                         (_%else124607124621%_
                                          (lambda () _%ctx124604%_))
                                         (_%K124609124629%_
                                          (lambda (_%rest124624%_ _%id124625%_)
                                            (let ((_%bind124627%_
                                                   (gx#resolve-identifier__%
                                                    _%id124625%_
                                                    '0
                                                    _%ctx124604%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124627%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124627%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124601%_
                                                   _%rest124624%_
                                                   (##unchecked-structure-ref
                                                    _%bind124627%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124581%_
                                                         _%id124625%_
                                                         _%bind124627%_))))))
                                    (if (##pair? _%rest124605124613%_)
                                        (let ((_%hd124610124632%_
                                               (##car _%rest124605124613%_))
                                              (_%tl124611124634%_
                                               (##cdr _%rest124605124613%_)))
                                          (let* ((_%id124637%_
                                                  _%hd124610124632%_)
                                                 (_%rest124639%_
                                                  _%tl124611124634%_))
                                            (_%K124609124629%_
                                             _%rest124639%_
                                             _%id124637%_)))
                                        (_%else124607124621%_))))))))
                      (if (##pair? _%rpath124582124589%_)
                          (let ((_%hd124586124644%_
                                 (##car _%rpath124582124589%_))
                                (_%tl124587124646%_
                                 (##cdr _%rpath124582124589%_)))
                            (let* ((_%origin124649%_ _%hd124586124644%_)
                                   (_%refs124651%_ _%tl124587124646%_))
                              (_%K124585124641%_
                               _%refs124651%_
                               _%origin124649%_)))
                          (_%E124584124593%_))))))
          (let ((_%$e124567%_
                 (if (not _%reload?124562%_)
                     (hash-get gx#__module-registry _%rpath124561%_)
                     '#f)))
            (if _%$e124567%_
                _%$e124567%_
                (if (list? _%rpath124561%_)
                    (let () (_%import-submodule124565%_ _%rpath124561%_))
                    (if (gx#core-library-module-path? _%rpath124561%_)
                        (let ((_%ctx124572%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124561%_)
                                _%reload?124562%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124561%_
                           _%ctx124572%_)
                          _%ctx124572%_)
                        (let ()
                          (let* ((_%npath124575%_
                                  (path-normalize _%rpath124561%_))
                                 (_%$e124577%_
                                  (if (not _%reload?124562%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath124575%_)
                                      '#f)))
                            (if _%$e124577%_
                                _%$e124577%_
                                (let ()
                                  (_%import-source124564%_
                                   _%npath124575%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124682%_)
        (let ((_%reload?124684%_ '#f))
          (gx#core-import-module__% _%rpath124682%_ _%reload?124684%_))))
    (define gx#core-import-module
      (lambda _g125787_
        (let ((_g125786_ (##length _g125787_)))
          (cond ((##fx= _g125786_ 1)
                 (apply (lambda (_%rpath124682%_)
                          (gx#core-import-module__0 _%rpath124682%_))
                        _g125787_))
                ((##fx= _g125786_ 2)
                 (apply (lambda (_%rpath124686%_ _%reload?124687%_)
                          (gx#core-import-module__%
                           _%rpath124686%_
                           _%reload?124687%_))
                        _g125787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125787_))))))
    (define gx#core-read-module
      (lambda (_%path124550%_)
        (__with-catch
         (lambda (_%exn124552%_)
           (if (and (datum-parsing-exception? _%exn124552%_)
                    (eq? (datum-parsing-exception-filepos _%exn124552%_) '0))
               (gx#core-read-module/lang _%path124550%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124550%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124554124556%_)
                      (display-exception _%exn124552%_ _%g124554124556%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124550%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124402%_)
        (let _%lp124404%_ ((_%body124406%_
                            (read-syntax-from-file _%path124402%_))
                           (_%pre124407%_ '#f)
                           (_%ns124408%_ '#f)
                           (_%pkg124409%_ '#f))
          (let* ((_%e124410124434%_ _%body124406%_)
                 (_%E124426124460%_
                  (lambda ()
                    (let ((_g125788_
                           (if _%pkg124409%_
                               (values _%pre124407%_
                                       _%ns124408%_
                                       _%pkg124409%_)
                               (gx#core-read-module-package
                                _%path124402%_
                                _%pre124407%_
                                _%ns124408%_))))
                      (begin
                        (let ((_g125789_
                               (if (##values? _g125788_)
                                   (##vector-length _g125788_)
                                   1)))
                          (if (not (##fx= _g125789_ 3))
                              (error "Context expects 3 values" _g125789_)))
                        (let ((_%pre124438%_ (##vector-ref _g125788_ 0))
                              (_%ns124439%_ (##vector-ref _g125788_ 1))
                              (_%pkg124440%_ (##vector-ref _g125788_ 2)))
                          (let* ((_%prelude124446%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124438%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre124438%_))
                                      (if (gx#core-library-module-path?
                                           _%pre124438%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre124438%_))
                                          (if (gx#stx-string? _%pre124438%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre124438%_
                                                 _%path124402%_))
                                              (let ()
                                                (gx#stx-e _%pre124438%_))))))
                                 (_%path-id124448%_
                                  (gx#core-module-path->namespace
                                   _%path124402%_))
                                 (_%pkg-id124450%_
                                  (if _%pkg124440%_
                                      (string-append
                                       _%pkg124440%_
                                       '"/"
                                       _%path-id124448%_)
                                      _%path-id124448%_))
                                 (_%module-id124452%_
                                  (string->symbol _%pkg-id124450%_))
                                 (_%module-ns124457%_
                                  (if (eq? _%ns124439%_ '#!void)
                                      '#f
                                      (let ((_%$e124454%_ _%ns124439%_))
                                        (if _%$e124454%_
                                            _%$e124454%_
                                            _%pkg-id124450%_)))))
                            (values _%prelude124446%_
                                    _%module-id124452%_
                                    _%module-ns124457%_
                                    _%body124406%_)))))))
                 (_%E124419124492%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124410124434%_)
                        (let ((_%e124427124464%_
                               (gx#syntax-e _%e124410124434%_)))
                          (let ((_%hd124428124467%_ (##car _%e124427124464%_))
                                (_%tl124429124469%_ (##cdr _%e124427124464%_)))
                            (if (eq? (gx#stx-e _%hd124428124467%_) 'package:)
                                (if (gx#stx-pair? _%tl124429124469%_)
                                    (let ((_%e124430124472%_
                                           (gx#syntax-e _%tl124429124469%_)))
                                      (let ((_%hd124431124475%_
                                             (##car _%e124430124472%_))
                                            (_%tl124432124477%_
                                             (##cdr _%e124430124472%_)))
                                        (let* ((_%pkg124480%_
                                                _%hd124431124475%_)
                                               (_%rest124482%_
                                                _%tl124432124477%_))
                                          (if '#t
                                              (let ((_%pkg124490%_
                                                     (if (gx#identifier?
                                                          _%pkg124480%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg124480%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124480%_)
                         (gx#stx-false? _%pkg124480%_))
                     (let () (gx#stx-e _%pkg124480%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg124480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124404%_
                                                 _%rest124482%_
                                                 _%pre124407%_
                                                 _%ns124408%_
                                                 _%pkg124490%_))
                                              (_%E124426124460%_)))))
                                    (_%E124426124460%_))
                                (_%E124426124460%_))))
                        (_%E124426124460%_))))
                 (_%E124412124522%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124410124434%_)
                        (let ((_%e124420124496%_
                               (gx#syntax-e _%e124410124434%_)))
                          (let ((_%hd124421124499%_ (##car _%e124420124496%_))
                                (_%tl124422124501%_ (##cdr _%e124420124496%_)))
                            (if (eq? (gx#stx-e _%hd124421124499%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124422124501%_)
                                    (let ((_%e124423124504%_
                                           (gx#syntax-e _%tl124422124501%_)))
                                      (let ((_%hd124424124507%_
                                             (##car _%e124423124504%_))
                                            (_%tl124425124509%_
                                             (##cdr _%e124423124504%_)))
                                        (let* ((_%ns124512%_
                                                _%hd124424124507%_)
                                               (_%rest124514%_
                                                _%tl124425124509%_))
                                          (if '#t
                                              (let ((_%ns124520%_
                                                     (if (gx#identifier?
                                                          _%ns124512%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns124512%_)))
                                                         (if (gx#stx-string?
                                                              _%ns124512%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns124512%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124512%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns124512%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124404%_
                                                 _%rest124514%_
                                                 _%pre124407%_
                                                 _%ns124520%_
                                                 _%pkg124409%_))
                                              (_%E124419124492%_)))))
                                    (_%E124419124492%_))
                                (_%E124419124492%_))))
                        (_%E124419124492%_))))
                 (_%E124411124546%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124410124434%_)
                        (let ((_%e124413124526%_
                               (gx#syntax-e _%e124410124434%_)))
                          (let ((_%hd124414124529%_ (##car _%e124413124526%_))
                                (_%tl124415124531%_ (##cdr _%e124413124526%_)))
                            (if (eq? (gx#stx-e _%hd124414124529%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124415124531%_)
                                    (let ((_%e124416124534%_
                                           (gx#syntax-e _%tl124415124531%_)))
                                      (let ((_%hd124417124537%_
                                             (##car _%e124416124534%_))
                                            (_%tl124418124539%_
                                             (##cdr _%e124416124534%_)))
                                        (let* ((_%prelude124542%_
                                                _%hd124417124537%_)
                                               (_%rest124544%_
                                                _%tl124418124539%_))
                                          (if '#t
                                              (_%lp124404%_
                                               _%rest124544%_
                                               _%prelude124542%_
                                               _%ns124408%_
                                               _%pkg124409%_)
                                              (_%E124412124522%_)))))
                                    (_%E124412124522%_))
                                (_%E124412124522%_))))
                        (_%E124412124522%_)))))
            (_%E124411124546%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124224%_)
        (letrec ((_%default-read-module-body124226%_
                  (lambda (_%inp124394%_)
                    (let _%lp124396%_ ((_%body124398%_ '()))
                      (let ((_%next124400%_ (read-syntax__% _%inp124394%_)))
                        (if (eof-object? _%next124400%_)
                            (reverse _%body124398%_)
                            (_%lp124396%_
                             (cons _%next124400%_ _%body124398%_)))))))
                 (_%read-body124227%_
                  (lambda (_%inp124312%_
                           _%pre124313%_
                           _%ns124314%_
                           _%pkg124315%_
                           _%args124316%_)
                    (let ((_g125790_
                           (if _%pkg124315%_
                               (values _%pre124313%_
                                       _%ns124314%_
                                       _%pkg124315%_)
                               (gx#core-read-module-package
                                _%path124224%_
                                _%pre124313%_
                                _%ns124314%_))))
                      (begin
                        (let ((_g125791_
                               (if (##values? _g125790_)
                                   (##vector-length _g125790_)
                                   1)))
                          (if (not (##fx= _g125791_ 3))
                              (error "Context expects 3 values" _g125791_)))
                        (let ((_%pre124318%_ (##vector-ref _g125790_ 0))
                              (_%ns124319%_ (##vector-ref _g125790_ 1))
                              (_%pkg124320%_ (##vector-ref _g125790_ 2)))
                          (let* ((_%prelude124322%_
                                  (gx#import-module__0 _%pre124318%_))
                                 (_%read-module-body124377%_
                                  (let ((_%$e124368%_
                                         (__find (lambda (_%e124323124325%_)
                                                   (let* ((_%g124327124337%_
                                                           _%e124323124325%_)
                                                          (_%else124329124345%_
                                                           (lambda () '#f))
                                                          (_%K124331124349%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124327124337%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124332124352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124327124337%_
                          '1
                          '#f
                          '#f))
                        (_%e124333124355%_
                         (##unchecked-structure-ref
                          _%g124327124337%_
                          '2
                          '#f
                          '#f))
                        (_%e124334124358%_
                         (##unchecked-structure-ref
                          _%g124327124337%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124334124358%_ '1)
                       (let ((_%e124335124361%_
                              (##unchecked-structure-ref
                               _%g124327124337%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124363124365%_)
                                (eq? _%g124363124365%_ 'read-module-body))
                              _%e124335124361%_)
                             (_%K124331124349%_)
                             (_%else124329124345%_)))
                       (_%else124329124345%_)))
                 (_%else124329124345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124322%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124368%_
                                        ((lambda (_%xport124371%_)
                                           (let ((_%proc124374%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124371%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124374%_)
                                                 _%proc124374%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124224%_
                                                  _%pre124318%_
                                                  _%proc124374%_))))
                                         _%$e124368%_)
                                        (let ()
                                          _%default-read-module-body124226%_))))
                                 (_%path-id124379%_
                                  (gx#core-module-path->namespace
                                   _%path124224%_))
                                 (_%pkg-id124381%_
                                  (if _%pkg124320%_
                                      (string-append
                                       _%pkg124320%_
                                       '"/"
                                       _%path-id124379%_)
                                      _%path-id124379%_))
                                 (_%module-id124383%_
                                  (string->symbol _%pkg-id124381%_))
                                 (_%module-ns124388%_
                                  (let ((_%$e124385%_ _%ns124319%_))
                                    (if _%$e124385%_
                                        _%$e124385%_
                                        _%pkg-id124381%_)))
                                 (_%body124391%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124377%_
                                      _%inp124312%_))
                                   gx#current-module-reader-path
                                   _%path124224%_
                                   gx#current-module-reader-args
                                   _%args124316%_)))
                            (values _%prelude124322%_
                                    _%module-id124383%_
                                    _%module-ns124388%_
                                    _%body124391%_)))))))
                 (_%string-e124228%_
                  (lambda (_%obj124306%_ _%what124307%_)
                    (if (string? _%obj124306%_)
                        (let () _%obj124306%_)
                        (if (symbol? _%obj124306%_)
                            (let () (symbol->string _%obj124306%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what124307%_)
                               _%path124224%_
                               _%obj124306%_))))))
                 (_%read-lang-args124229%_
                  (lambda (_%inp124261%_ _%args124262%_)
                    (let* ((_%args124263124271%_ _%args124262%_)
                           (_%else124265124279%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124224%_)))
                           (_%K124267124294%_
                            (lambda (_%args124282%_ _%prelude124283%_)
                              (let* ((_%pkg124285%_
                                      (pgetq__0 'package: _%args124282%_))
                                     (_%pkg124287%_
                                      (if _%pkg124285%_
                                          (_%string-e124228%_
                                           _%pkg124285%_
                                           '"package")
                                          '#f))
                                     (_%ns124289%_
                                      (pgetq__0 'namespace: _%args124282%_))
                                     (_%ns124291%_
                                      (if _%ns124289%_
                                          (_%string-e124228%_
                                           _%ns124289%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124227%_
                                 _%inp124261%_
                                 _%prelude124283%_
                                 _%ns124291%_
                                 _%pkg124287%_
                                 _%args124282%_)))))
                      (if (##pair? _%args124263124271%_)
                          (let ((_%hd124268124297%_
                                 (##car _%args124263124271%_))
                                (_%tl124269124299%_
                                 (##cdr _%args124263124271%_)))
                            (let* ((_%prelude124302%_ _%hd124268124297%_)
                                   (_%args124304%_ _%tl124269124299%_))
                              (_%K124267124294%_
                               _%args124304%_
                               _%prelude124302%_)))
                          (_%else124265124279%_)))))
                 (_%read-lang124230%_
                  (lambda (_%inp124235%_)
                    (let* ((_%head124237%_ (read-line _%inp124235%_))
                           (_%$e124239%_
                            (string-index__0 _%head124237%_ '#\space)))
                      (if _%$e124239%_
                          ((lambda (_%ix124242%_)
                             (let ((_%lang124244%_
                                    (substring
                                     _%head124237%_
                                     '0
                                     _%ix124242%_)))
                               (if (equal? _%lang124244%_ '"#lang")
                                   (let* ((_%rest124246%_
                                           (substring
                                            _%head124237%_
                                            (##fx+ _%ix124242%_ '1)
                                            (##string-length _%head124237%_)))
                                          (_%args124257%_
                                           (__with-catch
                                            (lambda (_%g124247124249%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124224%_
                                               _%g124247124249%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124246%_
                                               (lambda (_%g124252124254%_)
                                                 (read-all
                                                  _%g124252124254%_
                                                  read)))))))
                                     (_%read-lang-args124229%_
                                      _%inp124235%_
                                      _%args124257%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124224%_))))
                           _%$e124239%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path124224%_))))))
                 (_%read-e124231%_
                  (lambda (_%inp124233%_)
                    (if (eq? (peek-char _%inp124233%_) '#\#)
                        (_%read-lang124230%_ _%inp124233%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124224%_)))))
          (gx#call-with-input-source-file _%path124224%_ _%read-e124231%_))))
    (define gx#core-read-module-package
      (lambda (_%path124172%_ _%pre124173%_ _%ns124174%_)
        (letrec ((_%string-e124176%_
                  (lambda (_%e124219%_)
                    (if (symbol? _%e124219%_)
                        (let () (symbol->string _%e124219%_))
                        (if (string? _%e124219%_)
                            (let () _%e124219%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e124219%_)))))))
          (let _%lp124178%_ ((_%dir124180%_ (path-directory _%path124172%_))
                             (_%pkg-path124181%_ '()))
            (let ((_%gerbil.pkg124183%_
                   (path-expand '"gerbil.pkg" _%dir124180%_)))
              (if (##file-exists? _%gerbil.pkg124183%_)
                  (let ((_%plist124185%_
                         (gx#core-library-package-plist__% _%dir124180%_ '#t)))
                    (if (null? _%plist124185%_)
                        (let ((_%pkg124188%_
                               (if (not (null? _%pkg-path124181%_))
                                   (string-join _%pkg-path124181%_ '"/")
                                   '#f)))
                          (values _%pre124173%_ _%ns124174%_ _%pkg124188%_))
                        (if (list? _%plist124185%_)
                            (let ()
                              (let* ((_%root124191%_
                                      (pgetq__0 'package: _%plist124185%_))
                                     (_%pkg124195%_
                                      (let ((_%pkg-path124193%_
                                             (if _%root124191%_
                                                 (cons (_%string-e124176%_
                                                        _%root124191%_)
                                                       _%pkg-path124181%_)
                                                 _%pkg-path124181%_)))
                                        (if (not (null? _%pkg-path124193%_))
                                            (string-join
                                             _%pkg-path124193%_
                                             '"/")
                                            '#f)))
                                     (_%ns124202%_
                                      (let ((_%ns124200%_
                                             (let ((_%$e124197%_ _%ns124174%_))
                                               (if _%$e124197%_
                                                   _%$e124197%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist124185%_)))))
                                        (if _%ns124200%_
                                            (_%string-e124176%_ _%ns124200%_)
                                            '#f)))
                                     (_%pre124207%_
                                      (let ((_%$e124204%_ _%pre124173%_))
                                        (if _%$e124204%_
                                            _%$e124204%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist124185%_)))))
                                (values _%pre124207%_
                                        _%ns124202%_
                                        _%pkg124195%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist124185%_)))))
                  (let ((_%dir*124211%_
                         (path-strip-trailing-directory-separator
                          _%dir124180%_)))
                    (if (or (__string-empty? _%dir*124211%_)
                            (equal? _%dir124180%_ _%dir*124211%_))
                        (values _%pre124173%_ _%ns124174%_ '#f)
                        (let ((_%xpath124216%_
                               (path-strip-directory _%dir*124211%_))
                              (_%xdir124217%_ (path-directory _%dir*124211%_)))
                          (_%lp124178%_
                           _%xdir124217%_
                           (cons _%xpath124216%_ _%pkg-path124181%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124170%_)
        (path-strip-extension (path-strip-directory _%path124170%_))))
    (define gx#core-module-path->id
      (lambda (_%path124168%_)
        (##string->symbol (gx#core-module-path->namespace _%path124168%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124147%_ _%rel124148%_)
        (let* ((_%path124150%_ (gx#stx-e _%stx-path124147%_))
               (_%path124152%_
                (if (__string-empty? (path-extension _%path124150%_))
                    (##string-append _%path124150%_ '".ss")
                    _%path124150%_)))
          (gx#core-resolve-path__%
           _%path124152%_
           (let ((_%$e124155%_ (gx#stx-source _%stx-path124147%_)))
             (if _%$e124155%_ _%$e124155%_ _%rel124148%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124161%_)
        (let ((_%rel124163%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124161%_ _%rel124163%_))))
    (define gx#core-resolve-module-path
      (lambda _g125793_
        (let ((_g125792_ (##length _g125793_)))
          (cond ((##fx= _g125792_ 1)
                 (apply (lambda (_%stx-path124161%_)
                          (gx#core-resolve-module-path__0 _%stx-path124161%_))
                        _g125793_))
                ((##fx= _g125792_ 2)
                 (apply (lambda (_%stx-path124165%_ _%rel124166%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path124165%_
                           _%rel124166%_))
                        _g125793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125793_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath124032%_)
        (let* ((_%spath124034%_ (symbol->string (gx#stx-e _%libpath124032%_)))
               (_%spath124036%_
                (substring
                 _%spath124034%_
                 '1
                 (##string-length _%spath124034%_)))
               (_%ext124038%_ (path-extension _%spath124036%_))
               (_%ssi124040%_
                (if (__string-empty? _%ext124038%_)
                    (##string-append _%spath124036%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath124036%_)
                     '".ssi")))
               (_%srcs124044%_
                (if (__string-empty? _%ext124038%_)
                    (##map (lambda (_%ext124042%_)
                             (string-append _%spath124036%_ _%ext124042%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath124036%_ '()))))
          (let _%lp124047%_ ((_%rest124049%_ (load-path)))
            (let* ((_%rest124050124059%_ _%rest124049%_)
                   (_%E124053124063%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest124050124059%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K124055124134%_
                     (lambda (_%rest124074%_ _%dir124075%_)
                       (letrec ((_%resolve124077%_
                                 (lambda (_%ssi124090%_ _%srcs124091%_)
                                   (let ((_%compiled-path124093%_
                                          (path-expand
                                           _%ssi124090%_
                                           _%dir124075%_)))
                                     (if (##file-exists?
                                          _%compiled-path124093%_)
                                         (path-normalize
                                          _%compiled-path124093%_)
                                         (let _%lpr124095%_ ((_%rest-src124097%_
                                                              _%srcs124091%_))
                                           (let* ((_%rest-src124098124106%_
                                                   _%rest-src124097%_)
                                                  (_%else124100124114%_
                                                   (lambda ()
                                                     (_%lp124047%_
                                                      _%rest124074%_)))
                                                  (_%K124102124122%_
                                                   (lambda (_%rest-src124117%_
                                                            _%src124118%_)
                                                     (let ((_%src-path124120%_
                                                            (path-expand
                                                             _%src124118%_
                                                             _%dir124075%_)))
                                                       (if (##file-exists?
                                                            _%src-path124120%_)
                                                           (path-normalize
                                                            _%src-path124120%_)
                                                           (_%lpr124095%_
                                                            _%rest-src124117%_))))))
                                             (if (##pair? _%rest-src124098124106%_)
                                                 (let ((_%hd124103124125%_
                                                        (##car _%rest-src124098124106%_))
                                                       (_%tl124104124127%_
                                                        (##cdr _%rest-src124098124106%_)))
                                                   (let* ((_%src124130%_
                                                           _%hd124103124125%_)
                                                          (_%rest-src124132%_
                                                           _%tl124104124127%_))
                                                     (_%K124102124122%_
                                                      _%rest-src124132%_
                                                      _%src124130%_)))
                                                 (_%else124100124114%_)))))))))
                         (let ((_%$e124079%_
                                (gx#core-library-package-path-prefix
                                 _%dir124075%_)))
                           (if _%$e124079%_
                               ((lambda (_%prefix124082%_)
                                  (if (string-prefix?
                                       _%prefix124082%_
                                       _%spath124036%_)
                                      (let ((_%ssi124086%_
                                             (substring
                                              _%ssi124040%_
                                              (string-length _%prefix124082%_)
                                              (##string-length _%ssi124040%_)))
                                            (_%srcs124087%_
                                             (##map (lambda (_%src124084%_)
                                                      (substring
                                                       _%src124084%_
                                                       (string-length
                                                        _%prefix124082%_)
                                                       (string-length
                                                        _%src124084%_)))
                                                    _%srcs124044%_)))
                                        (_%resolve124077%_
                                         _%ssi124086%_
                                         _%srcs124087%_))
                                      (_%lp124047%_ _%rest124074%_)))
                                _%$e124079%_)
                               (let ()
                                 (_%resolve124077%_
                                  _%ssi124040%_
                                  _%srcs124044%_)))))))
                    (_%K124054124068%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath124032%_))))
                (let ((_%try-match124052124071%_
                       (lambda ()
                         (if (##null? _%rest124050124059%_)
                             (_%K124054124068%_)
                             (_%E124053124063%_)))))
                  (if (##pair? _%rest124050124059%_)
                      (let ((_%tl124057124139%_ (##cdr _%rest124050124059%_))
                            (_%hd124056124137%_ (##car _%rest124050124059%_)))
                        (let ((_%dir124142%_ _%hd124056124137%_)
                              (_%rest124144%_ _%tl124057124139%_))
                          (_%K124055124134%_ _%rest124144%_ _%dir124142%_)))
                      (_%try-match124052124071%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath124000%_)
        (letrec ((_%resolve124002%_
                  (lambda (_%path124023%_ _%base124024%_)
                    (let ((_%$e124026%_
                           (string-rindex__0 _%base124024%_ '#\/)))
                      (if _%$e124026%_
                          ((lambda (_%idx124029%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base124024%_ '0 _%idx124029%_)
                                '"/"
                                _%path124023%_))))
                           _%$e124026%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path124023%_)))))))))
          (let ((_%spath124004%_ (symbol->string (gx#stx-e _%modpath124000%_)))
                (_%mod124005%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod124005%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath124000%_))
            (let ((_%mpath124007%_
                   (symbol->string
                    (##structure-ref
                     _%mod124005%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp124009%_ ((_%spath124011%_ _%spath124004%_)
                                 (_%mpath124012%_ _%mpath124007%_))
                (if (string-prefix? '"../" _%spath124011%_)
                    (let ((_%$e124015%_
                           (string-rindex__0 _%mpath124012%_ '#\/)))
                      (if _%$e124015%_
                          ((lambda (_%idx124018%_)
                             (_%lp124009%_
                              (substring
                               _%spath124011%_
                               '3
                               (string-length _%spath124011%_))
                              (substring _%mpath124012%_ '0 _%idx124018%_)))
                           _%$e124015%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"cannot resolve relative module path; illegal traversal"
                             _%modpath124000%_))))
                    (if (string-prefix? '"./" _%spath124011%_)
                        (let ()
                          (_%lp124009%_
                           (substring
                            _%spath124011%_
                            '2
                            (string-length _%spath124011%_))
                           _%mpath124012%_))
                        (let ()
                          (_%resolve124002%_
                           _%spath124011%_
                           _%mpath124012%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123992%_)
        (let ((_%$e123994%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123992%_))))
          (if _%$e123994%_
              ((lambda (_%pkg123997%_)
                 (##string-append (symbol->string _%pkg123997%_) '"/"))
               _%$e123994%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123962%_ _%exists?123963%_)
        (let ((_%$e123965%_ (hash-get gx#__module-pkg-cache _%dir123962%_)))
          (if _%$e123965%_
              (values _%$e123965%_)
              (let ()
                (let* ((_%gerbil.pkg123969%_
                        (path-expand '"gerbil.pkg" _%dir123962%_))
                       (_%plist123979%_
                        (if (or _%exists?123963%_
                                (##file-exists? _%gerbil.pkg123969%_))
                            (let ((_%e123974%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123969%_
                                    read)))
                              (if (eof-object? _%e123974%_)
                                  (let () '())
                                  (if (list? _%e123974%_)
                                      (let () _%e123974%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123969%_
                                         _%e123974%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123962%_
                   _%plist123979%_)
                  _%plist123979%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123985%_)
        (let ((_%exists?123987%_ '#f))
          (gx#core-library-package-plist__% _%dir123985%_ _%exists?123987%_))))
    (define gx#core-library-package-plist
      (lambda _g125795_
        (let ((_g125794_ (##length _g125795_)))
          (cond ((##fx= _g125794_ 1)
                 (apply (lambda (_%dir123985%_)
                          (gx#core-library-package-plist__0 _%dir123985%_))
                        _g125795_))
                ((##fx= _g125794_ 2)
                 (apply (lambda (_%dir123989%_ _%exists?123990%_)
                          (gx#core-library-package-plist__%
                           _%dir123989%_
                           _%exists?123990%_))
                        _g125795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125795_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123959%_)
        (gx#core-special-module-path? _%stx123959%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123957%_)
        (gx#core-special-module-path? _%stx123957%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123952%_ _%char123953%_)
        (if (gx#identifier? _%stx123952%_)
            (if (interned-symbol? (gx#stx-e _%stx123952%_))
                (let ((_%str123955%_
                       (symbol->string (gx#stx-e _%stx123952%_))))
                  (if (##fx> (##string-length _%str123955%_) '1)
                      (eq? (string-ref _%str123955%_ '0) _%char123953%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123946%_)
        (gx#core-bound-identifier?__%
         _%stx123946%_
         (lambda (_%g123947123949%_)
           (gx#expander-binding?__% _%g123947123949%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123940%_)
        (gx#core-bound-identifier?__%
         _%stx123940%_
         (lambda (_%g123941123943%_)
           (gx#expander-binding?__% _%g123941123943%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123927%_)
        (letrec ((_%module-prelude?123929%_
                  (lambda (_%e123935%_)
                    (let ((_%$e123937%_
                           (##structure-instance-of?
                            _%e123935%_
                            'gx#module-context::t)))
                      (if _%$e123937%_
                          _%$e123937%_
                          (##structure-instance-of?
                           _%e123935%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123927%_
           (lambda (_%g123930123932%_)
             (gx#expander-binding?__%
              _%g123930123932%_
              _%module-prelude?123929%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123857%_ _%ctx123858%_ _%force-weak?123859%_)
        (let* ((_%in123860123869%_ _%in123857%_)
               (_%E123862123873%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123860123869%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123863123886%_
                (lambda (_%weak?123876%_
                         _%phi123877%_
                         _%key123878%_
                         _%source123879%_)
                  (gx#core-bind!__%
                   _%key123878%_
                   (let ((_%e123881%_
                          (gx#core-resolve-module-export _%source123879%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123881%_ '1 '#f '#f)
                      _%key123878%_
                      _%phi123877%_
                      _%e123881%_
                      (##unchecked-structure-ref _%source123879%_ '1 '#f '#f)
                      (let ((_%$e123883%_ _%force-weak?123859%_))
                        (if _%$e123883%_ _%$e123883%_ _%weak?123876%_))))
                   gx#core-context-rebind?
                   _%phi123877%_
                   _%ctx123858%_))))
          (if (##structure-direct-instance-of?
               _%in123860123869%_
               'gx#module-import::t)
              (let* ((_%e123864123889%_
                      (##unchecked-structure-ref
                       _%in123860123869%_
                       '1
                       '#f
                       '#f))
                     (_%source123892%_ _%e123864123889%_)
                     (_%e123865123894%_
                      (##unchecked-structure-ref
                       _%in123860123869%_
                       '2
                       '#f
                       '#f))
                     (_%key123897%_ _%e123865123894%_)
                     (_%e123866123899%_
                      (##unchecked-structure-ref
                       _%in123860123869%_
                       '3
                       '#f
                       '#f))
                     (_%phi123902%_ _%e123866123899%_)
                     (_%e123867123904%_
                      (##unchecked-structure-ref
                       _%in123860123869%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123907%_ _%e123867123904%_))
                (_%K123863123886%_
                 _%weak?123907%_
                 _%phi123902%_
                 _%key123897%_
                 _%source123892%_))
              (_%E123862123873%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123912%_)
        (let* ((_%ctx123914%_ (gx#current-expander-context))
               (_%force-weak?123916%_ '#f))
          (gx#core-bind-import!__%
           _%in123912%_
           _%ctx123914%_
           _%force-weak?123916%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123918%_ _%ctx123919%_)
        (let ((_%force-weak?123921%_ '#f))
          (gx#core-bind-import!__%
           _%in123918%_
           _%ctx123919%_
           _%force-weak?123921%_))))
    (define gx#core-bind-import!
      (lambda _g125797_
        (let ((_g125796_ (##length _g125797_)))
          (cond ((##fx= _g125796_ 1)
                 (apply (lambda (_%in123912%_)
                          (gx#core-bind-import!__0 _%in123912%_))
                        _g125797_))
                ((##fx= _g125796_ 2)
                 (apply (lambda (_%in123918%_ _%ctx123919%_)
                          (gx#core-bind-import!__1 _%in123918%_ _%ctx123919%_))
                        _g125797_))
                ((##fx= _g125796_ 3)
                 (apply (lambda (_%in123923%_
                                 _%ctx123924%_
                                 _%force-weak?123925%_)
                          (gx#core-bind-import!__%
                           _%in123923%_
                           _%ctx123924%_
                           _%force-weak?123925%_))
                        _g125797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125797_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123843%_ _%ctx123844%_)
        (gx#core-bind-import!__% _%in123843%_ _%ctx123844%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123849%_)
        (let ((_%ctx123851%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123849%_ _%ctx123851%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125799_
        (let ((_g125798_ (##length _g125799_)))
          (cond ((##fx= _g125798_ 1)
                 (apply (lambda (_%in123849%_)
                          (gx#core-bind-weak-import!__0 _%in123849%_))
                        _g125799_))
                ((##fx= _g125798_ 2)
                 (apply (lambda (_%in123853%_ _%ctx123854%_)
                          (gx#core-bind-weak-import!__%
                           _%in123853%_
                           _%ctx123854%_))
                        _g125799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125799_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123734%_)
        (letrec ((_%subst123736%_
                  (lambda (_%key123782%_)
                    (let* ((_%key123783123791%_ _%key123782%_)
                           (_%else123785123799%_ (lambda () _%key123782%_))
                           (_%K123787123830%_
                            (lambda (_%mark123802%_ _%id123803%_)
                              (let* ((_%mark123804123810%_ _%mark123802%_)
                                     (_%E123806123814%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123804123810%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123807123822%_
                                      (lambda (_%subst123817%_)
                                        (let ((_%$e123819%_
                                               (if _%subst123817%_
                                                   (hash-get
                                                    _%subst123817%_
                                                    _%id123803%_)
                                                   '#f)))
                                          (if _%$e123819%_
                                              _%$e123819%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123782%_))))))
                                (if (##structure-instance-of?
                                     _%mark123804123810%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123808123825%_
                                            (##unchecked-structure-ref
                                             _%mark123804123810%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123828%_ _%e123808123825%_))
                                      (_%K123807123822%_ _%subst123828%_))
                                    (_%E123806123814%_))))))
                      (if (##pair? _%key123783123791%_)
                          (let ((_%hd123788123833%_
                                 (##car _%key123783123791%_))
                                (_%tl123789123835%_
                                 (##cdr _%key123783123791%_)))
                            (let* ((_%id123838%_ _%hd123788123833%_)
                                   (_%mark123840%_ _%tl123789123835%_))
                              (_%K123787123830%_ _%mark123840%_ _%id123838%_)))
                          (_%else123785123799%_))))))
          (let* ((_%out123737123747%_ _%out123734%_)
                 (_%E123739123751%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123737123747%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123740123758%_
                  (lambda (_%phi123754%_ _%key123755%_ _%ctx123756%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123756%_ _%phi123754%_)
                     (_%subst123736%_ _%key123755%_)))))
            (if (##structure-direct-instance-of?
                 _%out123737123747%_
                 'gx#module-export::t)
                (let* ((_%e123741123761%_
                        (##unchecked-structure-ref
                         _%out123737123747%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123764%_ _%e123741123761%_)
                       (_%e123742123766%_
                        (##unchecked-structure-ref
                         _%out123737123747%_
                         '2
                         '#f
                         '#f))
                       (_%key123769%_ _%e123742123766%_)
                       (_%e123743123771%_
                        (##unchecked-structure-ref
                         _%out123737123747%_
                         '3
                         '#f
                         '#f))
                       (_%phi123774%_ _%e123743123771%_)
                       (_%e123744123776%_
                        (##unchecked-structure-ref
                         _%out123737123747%_
                         '4
                         '#f
                         '#f))
                       (_%e123745123779%_
                        (##unchecked-structure-ref
                         _%out123737123747%_
                         '5
                         '#f
                         '#f)))
                  (_%K123740123758%_
                   _%phi123774%_
                   _%key123769%_
                   _%ctx123764%_))
                (_%E123739123751%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123659%_ _%rename123660%_ _%dphi123661%_)
        (let* ((_%out123662123672%_ _%out123659%_)
               (_%E123664123676%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123662123672%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123665123688%_
                (lambda (_%weak?123679%_
                         _%name123680%_
                         _%phi123681%_
                         _%key123682%_
                         _%ctx123683%_)
                  (##structure
                   gx#module-import::t
                   _%out123659%_
                   (let ((_%$e123685%_ _%rename123660%_))
                     (if _%$e123685%_ _%$e123685%_ _%name123680%_))
                   (fx+ _%phi123681%_ _%dphi123661%_)
                   _%weak?123679%_))))
          (if (##structure-direct-instance-of?
               _%out123662123672%_
               'gx#module-export::t)
              (let* ((_%e123666123691%_
                      (##unchecked-structure-ref
                       _%out123662123672%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123694%_ _%e123666123691%_)
                     (_%e123667123696%_
                      (##unchecked-structure-ref
                       _%out123662123672%_
                       '2
                       '#f
                       '#f))
                     (_%key123699%_ _%e123667123696%_)
                     (_%e123668123701%_
                      (##unchecked-structure-ref
                       _%out123662123672%_
                       '3
                       '#f
                       '#f))
                     (_%phi123704%_ _%e123668123701%_)
                     (_%e123669123706%_
                      (##unchecked-structure-ref
                       _%out123662123672%_
                       '4
                       '#f
                       '#f))
                     (_%name123709%_ _%e123669123706%_)
                     (_%e123670123711%_
                      (##unchecked-structure-ref
                       _%out123662123672%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123714%_ _%e123670123711%_))
                (_%K123665123688%_
                 _%weak?123714%_
                 _%name123709%_
                 _%phi123704%_
                 _%key123699%_
                 _%ctx123694%_))
              (_%E123664123676%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123719%_)
        (let* ((_%rename123721%_ '#f) (_%dphi123723%_ '0))
          (gx#core-module-export->import__%
           _%out123719%_
           _%rename123721%_
           _%dphi123723%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123725%_ _%rename123726%_)
        (let ((_%dphi123728%_ '0))
          (gx#core-module-export->import__%
           _%out123725%_
           _%rename123726%_
           _%dphi123728%_))))
    (define gx#core-module-export->import
      (lambda _g125801_
        (let ((_g125800_ (##length _g125801_)))
          (cond ((##fx= _g125800_ 1)
                 (apply (lambda (_%out123719%_)
                          (gx#core-module-export->import__0 _%out123719%_))
                        _g125801_))
                ((##fx= _g125800_ 2)
                 (apply (lambda (_%out123725%_ _%rename123726%_)
                          (gx#core-module-export->import__1
                           _%out123725%_
                           _%rename123726%_))
                        _g125801_))
                ((##fx= _g125800_ 3)
                 (apply (lambda (_%out123730%_ _%rename123731%_ _%dphi123732%_)
                          (gx#core-module-export->import__%
                           _%out123730%_
                           _%rename123731%_
                           _%dphi123732%_))
                        _g125801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125801_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123558%_)
        (letrec ((_%make-context123560%_
                  (lambda (_%id123637%_)
                    (let* ((_%super123639%_ (gx#current-expander-context))
                           (_%bind-id123641%_ (gx#stx-e _%id123637%_))
                           (_%mod-id123643%_
                            (if (##structure-instance-of?
                                 _%super123639%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123639%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123641%_)
                                _%bind-id123641%_))
                           (_%ns123645%_ (symbol->string _%mod-id123643%_))
                           (_%path123655%_
                            (if (##structure-instance-of?
                                 _%super123639%_
                                 'gx#module-context::t)
                                (let ((_%path123647%_
                                       (##unchecked-structure-ref
                                        _%super123639%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123647%_)
                                          (null? _%path123647%_))
                                      (let ()
                                        (cons _%bind-id123641%_
                                              _%path123647%_))
                                      (if (not _%path123647%_)
                                          (let () _%bind-id123641%_)
                                          (let ()
                                            (cons _%bind-id123641%_
                                                  (cons _%path123647%_
                                                        '()))))))
                                _%bind-id123641%_))
                           (__obj125777
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
                       __obj125777
                       _%mod-id123643%_
                       _%super123639%_
                       _%ns123645%_
                       _%path123655%_)
                      __obj125777)))
                 (_%valid-module-id?123561%_
                  (lambda (_%id123612%_)
                    (let* ((_%str123614%_ (symbol->string _%id123612%_))
                           (_%len123616%_ (##string-length _%str123614%_)))
                      (if (##fx>= _%len123616%_ '1)
                          (let _%loop123619%_ ((_%index123621%_
                                                (##fx- (##string-length
                                                        _%str123614%_)
                                                       '1)))
                            (if (##fx>= _%index123621%_ '0)
                                (let ((_%c123623%_
                                       (string-ref
                                        _%str123614%_
                                        _%index123621%_)))
                                  (if (or (and (##char>=? _%c123623%_ '#\a)
                                               (##char<=? _%c123623%_ '#\z))
                                          (and (##char>=? _%c123623%_ '#\A)
                                               (##char<=? _%c123623%_ '#\Z))
                                          (and (##char>=? _%c123623%_ '#\0)
                                               (##char<=? _%c123623%_ '#\9))
                                          (##char=? _%c123623%_ '#\_)
                                          (##char=? _%c123623%_ '#\-))
                                      (_%loop123619%_
                                       (##fx- _%index123621%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123562123572%_ _%stx123558%_)
                 (_%E123564123576%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123562123572%_)))
                 (_%E123563123608%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123562123572%_)
                        (let ((_%e123565123580%_
                               (gx#syntax-e _%e123562123572%_)))
                          (let ((_%hd123566123583%_ (##car _%e123565123580%_))
                                (_%tl123567123585%_ (##cdr _%e123565123580%_)))
                            (if (gx#stx-pair? _%tl123567123585%_)
                                (let ((_%e123568123588%_
                                       (gx#syntax-e _%tl123567123585%_)))
                                  (let ((_%hd123569123591%_
                                         (##car _%e123568123588%_))
                                        (_%tl123570123593%_
                                         (##cdr _%e123568123588%_)))
                                    (let* ((_%id123596%_ _%hd123569123591%_)
                                           (_%body123598%_ _%tl123570123593%_))
                                      (if (and (gx#identifier? _%id123596%_)
                                               (gx#stx-list? _%body123598%_))
                                          (if (_%valid-module-id?123561%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123600%_
                                                      (_%make-context123560%_
                                                       _%id123596%_))
                                                     (_%body123602%_
                                                      (gx#core-expand-module-begin
                                                       _%body123598%_
                                                       _%ctx123600%_))
                                                     (_%body123604%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123602%_)
                                                       (gx#stx-source
                                                        _%stx123558%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123600%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123604%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123600%_
                                                 _%body123604%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123596%_
                                                 _%ctx123600%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123596%_)
                                                  _%body123604%_)
                                                 (gx#stx-source
                                                  _%stx123558%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123558%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123564123576%_)))))
                                (_%E123564123576%_))))
                        (_%E123564123576%_)))))
            (_%E123563123608%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123524%_ _%ctx123525%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123528%_
                   (gx#core-expand-head (cons '%%begin-module _%body123524%_)))
                  (_%e123529123536%_ _%stx123528%_)
                  (_%E123531123540%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123528%_)))
                  (_%E123530123554%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123529123536%_)
                         (let ((_%e123532123544%_
                                (gx#syntax-e _%e123529123536%_)))
                           (let ((_%hd123533123547%_ (##car _%e123532123544%_))
                                 (_%tl123534123549%_
                                  (##cdr _%e123532123544%_)))
                             (if (and (gx#identifier? _%hd123533123547%_)
                                      (gx#core-identifier=?
                                       _%hd123533123547%_
                                       '%#begin-module))
                                 (let ((_%body123552%_ _%tl123534123549%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123528%_)
                                           _%body123552%_
                                           (gx#core-expand-module-body
                                            _%body123552%_))
                                       (_%E123531123540%_)))
                                 (_%E123531123540%_))))
                         (_%E123531123540%_)))))
             (_%E123530123554%_)))
         gx#current-expander-context
         _%ctx123525%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123320%_)
        (letrec ((_%expand-special123322%_
                  (lambda (_%hd123451%_ _%K123452%_ _%rest123453%_ _%r123454%_)
                    (let* ((_%e123455123472%_ _%hd123451%_)
                           (_%E123467123476%_
                            (lambda ()
                              (_%K123452%_
                               _%rest123453%_
                               (cons (gx#core-expand-top _%hd123451%_)
                                     _%r123454%_))))
                           (_%E123457123488%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123455123472%_)
                                  (let ((_%e123468123480%_
                                         (gx#syntax-e _%e123455123472%_)))
                                    (let ((_%hd123469123483%_
                                           (##car _%e123468123480%_))
                                          (_%tl123470123485%_
                                           (##cdr _%e123468123480%_)))
                                      (if (and (gx#identifier?
                                                _%hd123469123483%_)
                                               (gx#core-identifier=?
                                                _%hd123469123483%_
                                                '%#export))
                                          (if '#t
                                              (_%K123452%_
                                               _%rest123453%_
                                               (cons _%hd123451%_ _%r123454%_))
                                              (_%E123467123476%_))
                                          (_%E123467123476%_))))
                                  (_%E123467123476%_))))
                           (_%E123456123520%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123455123472%_)
                                  (let ((_%e123458123492%_
                                         (gx#syntax-e _%e123455123472%_)))
                                    (let ((_%hd123459123495%_
                                           (##car _%e123458123492%_))
                                          (_%tl123460123497%_
                                           (##cdr _%e123458123492%_)))
                                      (if (and (gx#identifier?
                                                _%hd123459123495%_)
                                               (gx#core-identifier=?
                                                _%hd123459123495%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123460123497%_)
                                              (let ((_%e123461123500%_
                                                     (gx#syntax-e
                                                      _%tl123460123497%_)))
                                                (let ((_%hd123462123503%_
                                                       (##car _%e123461123500%_))
                                                      (_%tl123463123505%_
                                                       (##cdr _%e123461123500%_)))
                                                  (let ((_%hd-bind123508%_
                                                         _%hd123462123503%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123463123505%_)
                                                        (let ((_%e123464123510%_
                                                               (gx#syntax-e
                                                                _%tl123463123505%_)))
                                                          (let ((_%hd123465123513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123464123510%_))
                        (_%tl123466123515%_ (##cdr _%e123464123510%_)))
                    (let ((_%expr123518%_ _%hd123465123513%_))
                      (if (gx#stx-null? _%tl123466123515%_)
                          (if (gx#core-bind-values? _%hd-bind123508%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123508%_)
                                (_%K123452%_
                                 _%rest123453%_
                                 (cons _%hd123451%_ _%r123454%_)))
                              (_%E123457123488%_))
                          (_%E123457123488%_)))))
                (_%E123457123488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123457123488%_))
                                          (_%E123457123488%_))))
                                  (_%E123457123488%_)))))
                      (_%E123456123520%_))))
                 (_%expand-body123323%_
                  (lambda (_%rbody123325%_)
                    (let _%lp123327%_ ((_%rest123329%_ _%rbody123325%_)
                                       (_%body123330%_ '()))
                      (let* ((_%rest123331123339%_ _%rest123329%_)
                             (_%else123333123347%_ (lambda () _%body123330%_))
                             (_%K123335123439%_
                              (lambda (_%rest123350%_ _%hd123351%_)
                                (let* ((_%e123352123373%_ _%hd123351%_)
                                       (_%E123368123377%_
                                        (lambda ()
                                          (_%lp123327%_
                                           _%rest123350%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123351%_)
                                                 _%body123330%_))))
                                       (_%E123364123391%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123352123373%_)
                                              (let ((_%e123369123381%_
                                                     (gx#syntax-e
                                                      _%e123352123373%_)))
                                                (let ((_%hd123370123384%_
                                                       (##car _%e123369123381%_))
                                                      (_%tl123371123386%_
                                                       (##cdr _%e123369123381%_)))
                                                  (let ((_%form123389%_
                                                         _%hd123370123384%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123389%_
                                                         gx#special-form-binding?)
                                                        (_%lp123327%_
                                                         _%rest123350%_
                                                         (cons _%hd123351%_
                                                               _%body123330%_))
                                                        (_%E123368123377%_)))))
                                              (_%E123368123377%_))))
                                       (_%E123354123403%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123352123373%_)
                                              (let ((_%e123365123395%_
                                                     (gx#syntax-e
                                                      _%e123352123373%_)))
                                                (let ((_%hd123366123398%_
                                                       (##car _%e123365123395%_))
                                                      (_%tl123367123400%_
                                                       (##cdr _%e123365123395%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123366123398%_)
                                                           (gx#core-identifier=?
                                                            _%hd123366123398%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123327%_
                                                           _%rest123350%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123351%_)
                         _%body123330%_))
                  (_%E123364123391%_))
              (_%E123364123391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123364123391%_))))
                                       (_%E123353123435%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123352123373%_)
                                              (let ((_%e123355123407%_
                                                     (gx#syntax-e
                                                      _%e123352123373%_)))
                                                (let ((_%hd123356123410%_
                                                       (##car _%e123355123407%_))
                                                      (_%tl123357123412%_
                                                       (##cdr _%e123355123407%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123356123410%_)
                                                           (gx#core-identifier=?
                                                            _%hd123356123410%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123357123412%_)
                                                          (let ((_%e123358123415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123357123412%_)))
                    (let ((_%hd123359123418%_ (##car _%e123358123415%_))
                          (_%tl123360123420%_ (##cdr _%e123358123415%_)))
                      (let ((_%hd-bind123423%_ _%hd123359123418%_))
                        (if (gx#stx-pair? _%tl123360123420%_)
                            (let ((_%e123361123425%_
                                   (gx#syntax-e _%tl123360123420%_)))
                              (let ((_%hd123362123428%_
                                     (##car _%e123361123425%_))
                                    (_%tl123363123430%_
                                     (##cdr _%e123361123425%_)))
                                (let ((_%expr123433%_ _%hd123362123428%_))
                                  (if (gx#stx-null? _%tl123363123430%_)
                                      (if '#t
                                          (_%lp123327%_
                                           _%rest123350%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123423%_)
                                                   (gx#core-expand-expression
                                                    _%expr123433%_))
                                                  (gx#stx-source _%hd123351%_))
                                                 _%body123330%_))
                                          (_%E123354123403%_))
                                      (_%E123354123403%_)))))
                            (_%E123354123403%_)))))
                  (_%E123354123403%_))
              (_%E123354123403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123354123403%_)))))
                                  (_%E123353123435%_)))))
                        (if (##pair? _%rest123331123339%_)
                            (let ((_%hd123336123442%_
                                   (##car _%rest123331123339%_))
                                  (_%tl123337123444%_
                                   (##cdr _%rest123331123339%_)))
                              (let* ((_%hd123447%_ _%hd123336123442%_)
                                     (_%rest123449%_ _%tl123337123444%_))
                                (_%K123335123439%_
                                 _%rest123449%_
                                 _%hd123447%_)))
                            (_%else123333123347%_)))))))
          (_%expand-body123323%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123320%_)
            _%expand-special123322%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123161%_
               _%expanded?123162%_
               _%method123163%_
               _%current-phi123164%_
               _%expand1123165%_)
        (letrec ((_%K123167%_
                  (lambda (_%rest123287%_ _%r123288%_)
                    (let* ((_%e123289123296%_ _%rest123287%_)
                           (_%E123291123300%_ (lambda () _%r123288%_))
                           (_%E123290123316%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123289123296%_)
                                  (let ((_%e123292123304%_
                                         (gx#syntax-e _%e123289123296%_)))
                                    (let ((_%hd123293123307%_
                                           (##car _%e123292123304%_))
                                          (_%tl123294123309%_
                                           (##cdr _%e123292123304%_)))
                                      (let* ((_%hd123312%_ _%hd123293123307%_)
                                             (_%rest123314%_
                                              _%tl123294123309%_))
                                        (if '#t
                                            (_%step123168%_
                                             _%hd123312%_
                                             _%rest123314%_
                                             _%r123288%_)
                                            (_%E123291123300%_)))))
                                  (_%E123291123300%_)))))
                      (_%E123290123316%_))))
                 (_%step123168%_
                  (lambda (_%hd123201%_ _%rest123202%_ _%r123203%_)
                    (let* ((_%e123204123222%_ _%hd123201%_)
                           (_%E123217123226%_
                            (lambda ()
                              (if (_%expanded?123162%_ (gx#stx-e _%hd123201%_))
                                  (_%K123167%_
                                   _%rest123202%_
                                   (cons (gx#stx-e _%hd123201%_) _%r123203%_))
                                  (_%expand1123165%_
                                   _%hd123201%_
                                   _%K123167%_
                                   _%rest123202%_
                                   _%r123203%_))))
                           (_%E123213123242%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123204123222%_)
                                  (let ((_%e123218123230%_
                                         (gx#syntax-e _%e123204123222%_)))
                                    (let ((_%hd123219123233%_
                                           (##car _%e123218123230%_))
                                          (_%tl123220123235%_
                                           (##cdr _%e123218123230%_)))
                                      (let* ((_%macro123238%_
                                              _%hd123219123233%_)
                                             (_%body123240%_
                                              _%tl123220123235%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123238%_
                                             gx#syntax-binding?)
                                            (_%K123167%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123238%_)
                                                    _%hd123201%_
                                                    _%method123163%_)
                                                   _%rest123202%_)
                                             _%r123203%_)
                                            (_%E123217123226%_)))))
                                  (_%E123217123226%_))))
                           (_%E123206123256%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123204123222%_)
                                  (let ((_%e123214123246%_
                                         (gx#syntax-e _%e123204123222%_)))
                                    (let ((_%hd123215123249%_
                                           (##car _%e123214123246%_))
                                          (_%tl123216123251%_
                                           (##cdr _%e123214123246%_)))
                                      (if (eq? (gx#stx-e _%hd123215123249%_)
                                               'begin:)
                                          (let ((_%body123254%_
                                                 _%tl123216123251%_))
                                            (if '#t
                                                (_%K123167%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123202%_
                                                  _%body123254%_)
                                                 _%r123203%_)
                                                (_%E123213123242%_)))
                                          (_%E123213123242%_))))
                                  (_%E123213123242%_))))
                           (_%E123205123283%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123204123222%_)
                                  (let ((_%e123207123260%_
                                         (gx#syntax-e _%e123204123222%_)))
                                    (let ((_%hd123208123263%_
                                           (##car _%e123207123260%_))
                                          (_%tl123209123265%_
                                           (##cdr _%e123207123260%_)))
                                      (if (eq? (gx#stx-e _%hd123208123263%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123209123265%_)
                                              (let ((_%e123210123268%_
                                                     (gx#syntax-e
                                                      _%tl123209123265%_)))
                                                (let ((_%hd123211123271%_
                                                       (##car _%e123210123268%_))
                                                      (_%tl123212123273%_
                                                       (##cdr _%e123210123268%_)))
                                                  (let* ((_%dphi123276%_
                                                          _%hd123211123271%_)
                                                         (_%body123278%_
                                                          _%tl123212123273%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123276%_)
                                                        (let ((_%rbody123281%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123167%_ _%body123278%_ '()))
                        _%current-phi123164%_
                        (fx+ (gx#stx-e _%dphi123276%_)
                             (_%current-phi123164%_)))))
                  (_%K123167%_
                   _%rest123202%_
                   (__foldr1 cons _%r123203%_ _%rbody123281%_)))
                (_%E123206123256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123206123256%_))
                                          (_%E123206123256%_))))
                                  (_%E123206123256%_)))))
                      (_%E123205123283%_)))))
          (let* ((_%e123169123176%_ _%stx123161%_)
                 (_%E123171123180%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123169123176%_)))
                 (_%E123170123197%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123169123176%_)
                        (let ((_%e123172123184%_
                               (gx#syntax-e _%e123169123176%_)))
                          (let ((_%hd123173123187%_ (##car _%e123172123184%_))
                                (_%tl123174123189%_ (##cdr _%e123172123184%_)))
                            (let ((_%body123192%_ _%tl123174123189%_))
                              (if '#t
                                  (if (_%current-phi123164%_)
                                      (let () (_%K123167%_ _%body123192%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K123167%_ _%body123192%_ '()))
                                         _%current-phi123164%_
                                         (gx#current-expander-phi))))
                                  (_%E123171123180%_)))))
                        (_%E123171123180%_)))))
            (_%E123170123197%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122815%_ _%internal-expand?122816%_)
        (letrec ((_%expand1122818%_
                  (lambda (_%hd123133%_ _%K123134%_ _%rest123135%_ _%r123136%_)
                    (if (gx#core-bound-module? _%hd123133%_)
                        (let ()
                          (_%import1122819%_
                           (gx#syntax-local-e__0 _%hd123133%_)
                           _%K123134%_
                           _%rest123135%_
                           _%r123136%_))
                        (if (gx#core-library-module-path? _%hd123133%_)
                            (let ()
                              (_%import1122819%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd123133%_))
                               _%K123134%_
                               _%rest123135%_
                               _%r123136%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd123133%_)
                                (let ()
                                  (_%import1122819%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd123133%_))
                                   _%K123134%_
                                   _%rest123135%_
                                   _%r123136%_))
                                (let ((_%e123142%_ (gx#stx-e _%hd123133%_)))
                                  (if (pair? _%e123142%_)
                                      (let ((_%$e123145%_
                                             (gx#stx-e (car _%e123142%_))))
                                        (if (eq? 'spec: _%$e123145%_)
                                            (_%import-spec122822%_
                                             _%hd123133%_
                                             _%K123134%_
                                             _%rest123135%_
                                             _%r123136%_)
                                            (if (eq? 'in: _%$e123145%_)
                                                (_%import-submodule122820%_
                                                 _%hd123133%_
                                                 _%K123134%_
                                                 _%rest123135%_
                                                 _%r123136%_)
                                                (if (eq? 'runtime:
                                                         _%$e123145%_)
                                                    (_%import-runtime122821%_
                                                     _%hd123133%_
                                                     _%K123134%_
                                                     _%rest123135%_
                                                     _%r123136%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122815%_
                                                     _%hd123133%_)))))
                                      (if (string? _%e123142%_)
                                          (let ()
                                            (_%import1122819%_
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__%
                                               _%hd123133%_
                                               (gx#stx-source _%stx122815%_)))
                                             _%K123134%_
                                             _%rest123135%_
                                             _%r123136%_))
                                          (if (##structure-instance-of?
                                               _%e123142%_
                                               'gx#module-context::t)
                                              (let ()
                                                (_%K123134%_
                                                 _%rest123135%_
                                                 (cons _%e123142%_
                                                       _%r123136%_)))
                                              (let ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _%stx122815%_
                                                 _%hd123133%_)))))))))))
                 (_%import1122819%_
                  (lambda (_%ctx123122%_
                           _%K123123%_
                           _%rest123124%_
                           _%r123125%_)
                    (let ((_%dphi123127%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123123%_
                       _%rest123124%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123122%_
                              _%dphi123127%_
                              (map (lambda (_%g123128123130%_)
                                     (gx#core-module-export->import__%
                                      _%g123128123130%_
                                      '#f
                                      _%dphi123127%_))
                                   (##unchecked-structure-ref
                                    _%ctx123122%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123125%_)))))
                 (_%import-submodule122820%_
                  (lambda (_%hd123089%_ _%K123090%_ _%rest123091%_ _%r123092%_)
                    (let* ((_%e123093123100%_ _%hd123089%_)
                           (_%E123095123104%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123093123100%_)))
                           (_%E123094123118%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123093123100%_)
                                  (let ((_%e123096123108%_
                                         (gx#syntax-e _%e123093123100%_)))
                                    (let ((_%hd123097123111%_
                                           (##car _%e123096123108%_))
                                          (_%tl123098123113%_
                                           (##cdr _%e123096123108%_)))
                                      (let ((_%spath123116%_
                                             _%tl123098123113%_))
                                        (if '#t
                                            (_%import1122819%_
                                             (_%import-spec-source122823%_
                                              _%spath123116%_)
                                             _%K123090%_
                                             _%rest123091%_
                                             _%r123092%_)
                                            (_%E123095123104%_)))))
                                  (_%E123095123104%_)))))
                      (_%E123094123118%_))))
                 (_%import-runtime122821%_
                  (lambda (_%hd123056%_ _%K123057%_ _%rest123058%_ _%r123059%_)
                    (let* ((_%e123060123067%_ _%hd123056%_)
                           (_%E123062123071%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123060123067%_)))
                           (_%E123061123085%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123060123067%_)
                                  (let ((_%e123063123075%_
                                         (gx#syntax-e _%e123060123067%_)))
                                    (let ((_%hd123064123078%_
                                           (##car _%e123063123075%_))
                                          (_%tl123065123080%_
                                           (##cdr _%e123063123075%_)))
                                      (let ((_%spath123083%_
                                             _%tl123065123080%_))
                                        (if '#t
                                            (_%K123057%_
                                             _%rest123058%_
                                             (cons (_%import-spec-source122823%_
                                                    _%spath123083%_)
                                                   _%r123059%_))
                                            (_%E123062123071%_)))))
                                  (_%E123062123071%_)))))
                      (_%E123061123085%_))))
                 (_%import-spec122822%_
                  (lambda (_%hd122894%_ _%K122895%_ _%rest122896%_ _%r122897%_)
                    (let* ((_%e122898122915%_ _%hd122894%_)
                           (_%E122907122919%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122898122915%_)))
                           (_%E122900123030%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122898122915%_)
                                  (let ((_%e122908122923%_
                                         (gx#syntax-e _%e122898122915%_)))
                                    (let ((_%hd122909122926%_
                                           (##car _%e122908122923%_))
                                          (_%tl122910122928%_
                                           (##cdr _%e122908122923%_)))
                                      (if (gx#stx-pair? _%tl122910122928%_)
                                          (let ((_%e122911122931%_
                                                 (gx#syntax-e
                                                  _%tl122910122928%_)))
                                            (let ((_%hd122912122934%_
                                                   (##car _%e122911122931%_))
                                                  (_%tl122913122936%_
                                                   (##cdr _%e122911122931%_)))
                                              (let* ((_%path122939%_
                                                      _%hd122912122934%_)
                                                     (_%specs122941%_
                                                      _%tl122913122936%_))
                                                (if '#t
                                                    (let ((_%src-ctx122943%_
                                                           (_%import-spec-source122823%_
                                                            _%path122939%_))
                                                          (_%exports122944%_
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
                                                          (_%specs122945%_
                                                           (gx#syntax->list
                                                            _%specs122941%_)))
                                                      (for-each
                                                       (lambda (_%out122947%_)
                                                         (hash-put!
                                                          _%exports122944%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122947%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122947%_ '4 '#f '#f))
                  _%out122947%_))
               (##unchecked-structure-ref _%src-ctx122943%_ '9 '#f '#f))
              (_%K122895%_
               _%rest122896%_
               (__foldl1
                (lambda (_%spec122949%_ _%r122950%_)
                  (let* ((_%e122951122967%_ _%spec122949%_)
                         (_%E122953122971%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122951122967%_)))
                         (_%E122952123026%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122951122967%_)
                                (let ((_%e122954122975%_
                                       (gx#syntax-e _%e122951122967%_)))
                                  (let ((_%hd122955122978%_
                                         (##car _%e122954122975%_))
                                        (_%tl122956122980%_
                                         (##cdr _%e122954122975%_)))
                                    (let ((_%phi122983%_ _%hd122955122978%_))
                                      (if (gx#stx-pair? _%tl122956122980%_)
                                          (let ((_%e122957122985%_
                                                 (gx#syntax-e
                                                  _%tl122956122980%_)))
                                            (let ((_%hd122958122988%_
                                                   (##car _%e122957122985%_))
                                                  (_%tl122959122990%_
                                                   (##cdr _%e122957122985%_)))
                                              (let ((_%name122993%_
                                                     _%hd122958122988%_))
                                                (if (gx#stx-pair?
                                                     _%tl122959122990%_)
                                                    (let ((_%e122960122995%_
                                                           (gx#syntax-e
                                                            _%tl122959122990%_)))
                                                      (let ((_%hd122961122998%_
                                                             (##car _%e122960122995%_))
                                                            (_%tl122962123000%_
                                                             (##cdr _%e122960122995%_)))
                                                        (let ((_%src-phi123003%_
                                                               _%hd122961122998%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122962123000%_)
                                                              (let ((_%e122963123005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122962123000%_)))
                        (let ((_%hd122964123008%_ (##car _%e122963123005%_))
                              (_%tl122965123010%_ (##cdr _%e122963123005%_)))
                          (let ((_%src-name123013%_ _%hd122964123008%_))
                            (if (gx#stx-null? _%tl122965123010%_)
                                (if (and (gx#stx-fixnum? _%src-phi123003%_)
                                         (gx#identifier? _%src-name123013%_)
                                         (gx#stx-fixnum? _%phi122983%_)
                                         (gx#identifier? _%name122993%_))
                                    (let ((_%src-phi123015%_
                                           (gx#stx-e _%src-phi123003%_))
                                          (_%src-name123016%_
                                           (gx#core-identifier-key
                                            _%src-name123013%_))
                                          (_%phi123017%_
                                           (gx#stx-e _%phi122983%_))
                                          (_%name123018%_
                                           (gx#core-identifier-key
                                            _%name122993%_)))
                                      (let ((_%$e123020%_
                                             (hash-get
                                              _%exports122944%_
                                              (cons _%src-phi123015%_
                                                    _%src-name123016%_))))
                                        (if _%$e123020%_
                                            ((lambda (_%out123023%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out123023%_
                                                      _%name123018%_
                                                      (fx- _%phi123017%_
                                                           _%src-phi123015%_))
                                                     _%r122950%_))
                                             _%$e123020%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122815%_
                                               _%hd122894%_)))))
                                    (_%E122953122971%_))
                                (_%E122953122971%_)))))
                      (_%E122953122971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122953122971%_)))))
                                          (_%E122953122971%_)))))
                                (_%E122953122971%_)))))
                    (_%E122952123026%_)))
                _%r122897%_
                _%specs122945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122907122919%_)))))
                                          (_%E122907122919%_))))
                                  (_%E122907122919%_))))
                           (_%E122899123052%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122898122915%_)
                                  (let ((_%e122901123034%_
                                         (gx#syntax-e _%e122898122915%_)))
                                    (let ((_%hd122902123037%_
                                           (##car _%e122901123034%_))
                                          (_%tl122903123039%_
                                           (##cdr _%e122901123034%_)))
                                      (if (gx#stx-pair? _%tl122903123039%_)
                                          (let ((_%e122904123042%_
                                                 (gx#syntax-e
                                                  _%tl122903123039%_)))
                                            (let ((_%hd122905123045%_
                                                   (##car _%e122904123042%_))
                                                  (_%tl122906123047%_
                                                   (##cdr _%e122904123042%_)))
                                              (let ((_%path123050%_
                                                     _%hd122905123045%_))
                                                (if (gx#stx-null?
                                                     _%tl122906123047%_)
                                                    (if '#t
                                                        (_%K122895%_
                                                         _%rest122896%_
                                                         (cons (_%import-spec-source122823%_
                                                                _%path123050%_)
                                                               _%r122897%_))
                                                        (_%E122900123030%_))
                                                    (_%E122900123030%_)))))
                                          (_%E122900123030%_))))
                                  (_%E122900123030%_)))))
                      (_%E122899123052%_))))
                 (_%import-spec-source122823%_
                  (lambda (_%spath122892%_)
                    (gx#core-import-nested-module
                     _%spath122892%_
                     _%stx122815%_)))
                 (_%import!122824%_
                  (lambda (_%rbody122837%_)
                    (letrec* ((_%current-ctx122839%_
                               (gx#current-expander-context))
                              (_%deps122840%_ (make-hash-table-eq))
                              (_%bind!122841%_
                               (lambda (_%hd122890%_)
                                 (gx#core-bind-import!__1
                                  _%hd122890%_
                                  _%current-ctx122839%_))))
                      (let _%lp122843%_ ((_%rest122845%_ _%rbody122837%_)
                                         (_%body122846%_ '()))
                        (let* ((_%rest122847122855%_ _%rest122845%_)
                               (_%else122849122866%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122839%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122839%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122839%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122846%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122863%_ _%_122864%_)
                                     (gx#eval-module _%ctx122863%_))
                                   _%deps122840%_)
                                  _%body122846%_))
                               (_%K122851122878%_
                                (lambda (_%rest122869%_ _%hd122870%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122870%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122841%_ _%hd122870%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122870%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122870%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122840%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122870%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122870%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122841%_
                                             (##unchecked-structure-ref
                                              _%hd122870%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122870%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122840%_
                                                 (##unchecked-structure-ref
                                                  _%hd122870%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122874%_
                                                 (##structure-instance-of?
                                                  _%hd122870%_
                                                  'gx#module-context::t)))
                                            (if _%$e122874%_
                                                _%$e122874%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122815%_
                                                   _%hd122870%_))))))
                                  (_%lp122843%_
                                   _%rest122869%_
                                   (cons _%hd122870%_ _%body122846%_)))))
                          (if (##pair? _%rest122847122855%_)
                              (let ((_%hd122852122881%_
                                     (##car _%rest122847122855%_))
                                    (_%tl122853122883%_
                                     (##cdr _%rest122847122855%_)))
                                (let* ((_%hd122886%_ _%hd122852122881%_)
                                       (_%rest122888%_ _%tl122853122883%_))
                                  (_%K122851122878%_
                                   _%rest122888%_
                                   _%hd122886%_)))
                              (_%else122849122866%_)))))))
                 (_%expanded-import?122825%_
                  (lambda (_%e122829%_)
                    (let ((_%$e122831%_
                           (##structure-direct-instance-of?
                            _%e122829%_
                            'gx#import-set::t)))
                      (if _%$e122831%_
                          _%$e122831%_
                          (let ((_%$e122834%_
                                 (##structure-direct-instance-of?
                                  _%e122829%_
                                  'gx#module-import::t)))
                            (if _%$e122834%_
                                _%$e122834%_
                                (##structure-instance-of?
                                 _%e122829%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122827%_
                 (gx#core-expand-import/export
                  _%stx122815%_
                  _%expanded-import?122825%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122818%_)))
            (if _%internal-expand?122816%_
                (reverse _%rbody122827%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122824%_ _%rbody122827%_))
                 (gx#stx-source _%stx122815%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123154%_)
        (let ((_%internal-expand?123156%_ '#f))
          (gx#core-expand-import%__%
           _%stx123154%_
           _%internal-expand?123156%_))))
    (define gx#core-expand-import%
      (lambda _g125803_
        (let ((_g125802_ (##length _g125803_)))
          (cond ((##fx= _g125802_ 1)
                 (apply (lambda (_%stx123154%_)
                          (gx#core-expand-import%__0 _%stx123154%_))
                        _g125803_))
                ((##fx= _g125802_ 2)
                 (apply (lambda (_%stx123158%_ _%internal-expand?123159%_)
                          (gx#core-expand-import%__%
                           _%stx123158%_
                           _%internal-expand?123159%_))
                        _g125803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125803_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122742%_ _%where122743%_)
        (let* ((_%e122744122751%_ _%spath122742%_)
               (_%E122746122755%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122744122751%_)))
               (_%E122745122810%_
                (lambda ()
                  (if (gx#stx-pair? _%e122744122751%_)
                      (let ((_%e122747122759%_
                             (gx#syntax-e _%e122744122751%_)))
                        (let ((_%hd122748122762%_ (##car _%e122747122759%_))
                              (_%tl122749122764%_ (##cdr _%e122747122759%_)))
                          (let* ((_%origin122767%_ _%hd122748122762%_)
                                 (_%sub122769%_ _%tl122749122764%_))
                            (if '#t
                                (let ((_%origin-ctx122771%_
                                       (if (gx#stx-false? _%origin122767%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122767%_))))
                                  (let _%lp122773%_ ((_%rest122775%_
                                                      _%sub122769%_)
                                                     (_%ctx122776%_
                                                      _%origin-ctx122771%_))
                                    (let* ((_%e122777122784%_ _%rest122775%_)
                                           (_%E122779122788%_
                                            (lambda () _%ctx122776%_))
                                           (_%E122778122806%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122777122784%_)
                                                  (let ((_%e122780122792%_
                                                         (gx#syntax-e
                                                          _%e122777122784%_)))
                                                    (let ((_%hd122781122795%_
                                                           (##car _%e122780122792%_))
                                                          (_%tl122782122797%_
                                                           (##cdr _%e122780122792%_)))
                                                      (let* ((_%id122800%_
                                                              _%hd122781122795%_)
                                                             (_%rest122802%_
                                                              _%tl122782122797%_))
                                                        (if '#t
                                                            (let ((_%bind122804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122800%_
                            '0
                            _%ctx122776%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122804%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122804%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122743%_
                           _%spath122742%_
                           _%id122800%_))
                      (_%lp122773%_
                       _%rest122802%_
                       (##unchecked-structure-ref _%bind122804%_ '4 '#f '#f)))
                    (_%E122779122788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122779122788%_)))))
                                      (_%E122778122806%_))))
                                (_%E122746122755%_)))))
                      (_%E122746122755%_)))))
          (_%E122745122810%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122740%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122740%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122234%_ _%internal-expand?122235%_)
        (letrec* ((_%make-export__125731125732%_
                   (lambda (_%bind122688%_
                            _%phi122689%_
                            _%ctx122690%_
                            _%name122691%_)
                     (let* ((_%key122693%_
                             (##unchecked-structure-ref
                              _%bind122688%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122695%_
                             (if _%name122691%_
                                 (gx#core-identifier-key _%name122691%_)
                                 _%key122693%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122690%_
                        _%key122693%_
                        _%phi122689%_
                        _%export-key122695%_
                        (let ((_%$e122698%_
                               (##structure-instance-of?
                                _%bind122688%_
                                'gx#extern-binding::t)))
                          (if _%$e122698%_
                              _%$e122698%_
                              (##structure-direct-instance-of?
                               _%bind122688%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125733125736%_
                   (lambda (_%bind122704%_)
                     (let* ((_%phi122706%_ (gx#current-export-expander-phi))
                            (_%ctx122708%_ (gx#current-expander-context))
                            (_%name122710%_ '#f))
                       (_%make-export__125731125732%_
                        _%bind122704%_
                        _%phi122706%_
                        _%ctx122708%_
                        _%name122710%_))))
                  (_%make-export__1__125734125737%_
                   (lambda (_%bind122712%_ _%phi122713%_)
                     (let* ((_%ctx122715%_ (gx#current-expander-context))
                            (_%name122717%_ '#f))
                       (_%make-export__125731125732%_
                        _%bind122712%_
                        _%phi122713%_
                        _%ctx122715%_
                        _%name122717%_))))
                  (_%make-export__2__125735125738%_
                   (lambda (_%bind122719%_ _%phi122720%_ _%ctx122721%_)
                     (let ((_%name122723%_ '#f))
                       (_%make-export__125731125732%_
                        _%bind122719%_
                        _%phi122720%_
                        _%ctx122721%_
                        _%name122723%_))))
                  (_%make-export122237%_
                   (lambda _g125805_
                     (let ((_g125804_ (##length _g125805_)))
                       (cond ((##fx= _g125804_ 1)
                              (apply (lambda (_%bind122704%_)
                                       (_%make-export__0__125733125736%_
                                        _%bind122704%_))
                                     _g125805_))
                             ((##fx= _g125804_ 2)
                              (apply (lambda (_%bind122712%_ _%phi122713%_)
                                       (_%make-export__1__125734125737%_
                                        _%bind122712%_
                                        _%phi122713%_))
                                     _g125805_))
                             ((##fx= _g125804_ 3)
                              (apply (lambda (_%bind122719%_
                                              _%phi122720%_
                                              _%ctx122721%_)
                                       (_%make-export__2__125735125738%_
                                        _%bind122719%_
                                        _%phi122720%_
                                        _%ctx122721%_))
                                     _g125805_))
                             ((##fx= _g125804_ 4)
                              (apply (lambda (_%bind122725%_
                                              _%phi122726%_
                                              _%ctx122727%_
                                              _%name122728%_)
                                       (_%make-export__125731125732%_
                                        _%bind122725%_
                                        _%phi122726%_
                                        _%ctx122727%_
                                        _%name122728%_))
                                     _g125805_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125805_))))))
                  (_%expand1122238%_
                   (lambda (_%hd122393%_
                            _%K122394%_
                            _%rest122395%_
                            _%r122396%_)
                     (let* ((_%e122397122429%_ _%hd122393%_)
                            (_%E122424122433%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122234%_
                                _%hd122393%_)))
                            (_%E122414122517%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122397122429%_)
                                   (let ((_%e122425122437%_
                                          (gx#syntax-e _%e122397122429%_)))
                                     (let ((_%hd122426122440%_
                                            (##car _%e122425122437%_))
                                           (_%tl122427122442%_
                                            (##cdr _%e122425122437%_)))
                                       (if (eq? (gx#stx-e _%hd122426122440%_)
                                                'import:)
                                           (let ((_%in122445%_
                                                  _%tl122427122442%_))
                                             (if (gx#stx-list? _%in122445%_)
                                                 (let _%lp122447%_ ((_%in-rest122449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122445%_)
                            (_%r122450%_ _%r122396%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122451122458%_
                                                           _%in-rest122449%_)
                                                          (_%E122453122462%_
                                                           (lambda ()
                                                             (_%K122394%_
                                                              _%rest122395%_
                                                              _%r122450%_)))
                                                          (_%E122452122513%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122451122458%_)
                         (let ((_%e122454122466%_
                                (gx#syntax-e _%e122451122458%_)))
                           (let ((_%hd122455122469%_ (##car _%e122454122466%_))
                                 (_%tl122456122471%_
                                  (##cdr _%e122454122466%_)))
                             (let* ((_%hd122474%_ _%hd122455122469%_)
                                    (_%in-rest122476%_ _%tl122456122471%_))
                               (if '#t
                                   (let ((_%src122511%_
                                          (if (gx#core-bound-module?
                                               _%hd122474%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd122474%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd122474%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd122474%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122474%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd122474%_)))
                                                      (if (gx#stx-string?
                                                           _%hd122474%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd122474%_
                                                              (gx#stx-source
                                                               _%stx122234%_))))
                                                          (let ()
                                                            (let* ((_%e122482122489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122474%_)
                           (_%E122484122493%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx122234%_
                               _%hd122474%_)))
                           (_%E122483122507%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122482122489%_)
                                  (let ((_%e122485122497%_
                                         (gx#syntax-e _%e122482122489%_)))
                                    (let ((_%hd122486122500%_
                                           (##car _%e122485122497%_))
                                          (_%tl122487122502%_
                                           (##cdr _%e122485122497%_)))
                                      (if (eq? (gx#stx-e _%hd122486122500%_)
                                               'in:)
                                          (let ((_%spath122505%_
                                                 _%tl122487122502%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath122505%_
                                                 _%stx122234%_)
                                                (_%E122484122493%_)))
                                          (_%E122484122493%_))))
                                  (_%E122484122493%_)))))
                      (_%E122483122507%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122447%_
                                      _%in-rest122476%_
                                      (_%export-imports122239%_
                                       _%src122511%_
                                       _%r122450%_)))
                                   (_%E122453122462%_)))))
                         (_%E122453122462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122452122513%_)))
                                                 (_%E122424122433%_)))
                                           (_%E122424122433%_))))
                                   (_%E122424122433%_))))
                            (_%E122401122557%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122397122429%_)
                                   (let ((_%e122415122521%_
                                          (gx#syntax-e _%e122397122429%_)))
                                     (let ((_%hd122416122524%_
                                            (##car _%e122415122521%_))
                                           (_%tl122417122526%_
                                            (##cdr _%e122415122521%_)))
                                       (if (eq? (gx#stx-e _%hd122416122524%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122417122526%_)
                                               (let ((_%e122418122529%_
                                                      (gx#syntax-e
                                                       _%tl122417122526%_)))
                                                 (let ((_%hd122419122532%_
                                                        (##car _%e122418122529%_))
                                                       (_%tl122420122534%_
                                                        (##cdr _%e122418122529%_)))
                                                   (let ((_%id122537%_
                                                          _%hd122419122532%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122420122534%_)
                                                         (let ((_%e122421122539%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122420122534%_)))
                   (let ((_%hd122422122542%_ (##car _%e122421122539%_))
                         (_%tl122423122544%_ (##cdr _%e122421122539%_)))
                     (let ((_%name122547%_ _%hd122422122542%_))
                       (if (gx#stx-null? _%tl122423122544%_)
                           (if '#t
                               (let* ((_%phi122549%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122551%_
                                       (gx#core-resolve-identifier__1
                                        _%id122537%_
                                        _%phi122549%_)))
                                 (if _%$e122551%_
                                     ((lambda (_%bind122554%_)
                                        (_%K122394%_
                                         _%rest122395%_
                                         (cons (_%make-export__125731125732%_
                                                _%bind122554%_
                                                _%phi122549%_
                                                (gx#current-expander-context)
                                                _%name122547%_)
                                               _%r122396%_)))
                                      _%$e122551%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx122234%_
                                        _%hd122393%_
                                        _%id122537%_))))
                               (_%E122414122517%_))
                           (_%E122414122517%_)))))
                 (_%E122414122517%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122414122517%_))
                                           (_%E122414122517%_))))
                                   (_%E122414122517%_))))
                            (_%E122400122607%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122397122429%_)
                                   (let ((_%e122402122561%_
                                          (gx#syntax-e _%e122397122429%_)))
                                     (let ((_%hd122403122564%_
                                            (##car _%e122402122561%_))
                                           (_%tl122404122566%_
                                            (##cdr _%e122402122561%_)))
                                       (if (eq? (gx#stx-e _%hd122403122564%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122404122566%_)
                                               (let ((_%e122405122569%_
                                                      (gx#syntax-e
                                                       _%tl122404122566%_)))
                                                 (let ((_%hd122406122572%_
                                                        (##car _%e122405122569%_))
                                                       (_%tl122407122574%_
                                                        (##cdr _%e122405122569%_)))
                                                   (let ((_%phi122577%_
                                                          _%hd122406122572%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122407122574%_)
                                                         (let ((_%e122408122579%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122407122574%_)))
                   (let ((_%hd122409122582%_ (##car _%e122408122579%_))
                         (_%tl122410122584%_ (##cdr _%e122408122579%_)))
                     (let ((_%id122587%_ _%hd122409122582%_))
                       (if (gx#stx-pair? _%tl122410122584%_)
                           (let ((_%e122411122589%_
                                  (gx#syntax-e _%tl122410122584%_)))
                             (let ((_%hd122412122592%_
                                    (##car _%e122411122589%_))
                                   (_%tl122413122594%_
                                    (##cdr _%e122411122589%_)))
                               (let ((_%name122597%_ _%hd122412122592%_))
                                 (if (gx#stx-null? _%tl122413122594%_)
                                     (if (and (gx#stx-fixnum? _%phi122577%_)
                                              (gx#identifier? _%id122587%_)
                                              (gx#identifier? _%name122597%_))
                                         (let* ((_%phi122599%_
                                                 (gx#stx-e _%phi122577%_))
                                                (_%$e122601%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122587%_
                                                  _%phi122599%_)))
                                           (if _%$e122601%_
                                               ((lambda (_%bind122604%_)
                                                  (_%K122394%_
                                                   _%rest122395%_
                                                   (cons (_%make-export__125731125732%_
                                                          _%bind122604%_
                                                          _%phi122599%_
                                                          (gx#current-expander-context)
                                                          _%name122597%_)
                                                         _%r122396%_)))
                                                _%$e122601%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx122234%_
                                                  _%hd122393%_
                                                  _%id122587%_))))
                                         (_%E122401122557%_))
                                     (_%E122401122557%_)))))
                           (_%E122401122557%_)))))
                 (_%E122401122557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122401122557%_))
                                           (_%E122401122557%_))))
                                   (_%E122401122557%_))))
                            (_%E122399122619%_
                             (lambda ()
                               (let ((_%id122611%_ _%e122397122429%_))
                                 (if (gx#identifier? _%id122611%_)
                                     (let ((_%$e122613%_
                                            (gx#core-resolve-identifier__1
                                             _%id122611%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122613%_
                                           ((lambda (_%bind122616%_)
                                              (_%K122394%_
                                               _%rest122395%_
                                               (cons (_%make-export__0__125733125736%_
                                                      _%bind122616%_)
                                                     _%r122396%_)))
                                            _%$e122613%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx122234%_
                                              _%hd122393%_))))
                                     (_%E122400122607%_)))))
                            (_%E122398122683%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122397122429%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122623%_
                                               (gx#current-expander-context))
                                              (_%current-phi122625%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122627%_
                                               (gx#core-context-shift
                                                _%current-ctx122623%_
                                                _%current-phi122625%_))
                                              (_%phi-bind122629%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122627%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122632%_ ((_%bind-rest122634%_
                                                             _%phi-bind122629%_)
                                                            (_%set122635%_
                                                             '()))
                                           (let* ((_%bind-rest122636122646%_
                                                   _%bind-rest122634%_)
                                                  (_%else122638122654%_
                                                   (lambda ()
                                                     (_%K122394%_
                                                      _%rest122395%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122625%_
                                                             _%set122635%_)
                                                            _%r122396%_))))
                                                  (_%K122640122664%_
                                                   (lambda (_%bind-rest122657%_
                                                            _%bind122658%_
                                                            _%key122659%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122658%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122658%_))
                                                         (_%lp122632%_
                                                          _%bind-rest122657%_
                                                          _%set122635%_)
                                                         (_%lp122632%_
                                                          _%bind-rest122657%_
                                                          (cons (_%make-export__2__125735125738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122658%_
                         _%current-phi122625%_
                         _%current-ctx122623%_)
                        _%set122635%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122636122646%_)
                                                 (let ((_%hd122641122667%_
                                                        (##car _%bind-rest122636122646%_))
                                                       (_%tl122642122669%_
                                                        (##cdr _%bind-rest122636122646%_)))
                                                   (if (##pair? _%hd122641122667%_)
                                                       (let ((_%hd122643122672%_
                                                              (##car _%hd122641122667%_))
                                                             (_%tl122644122674%_
                                                              (##cdr _%hd122641122667%_)))
                                                         (let* ((_%key122677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122643122672%_)
                        (_%bind122679%_ _%tl122644122674%_)
                        (_%bind-rest122681%_ _%tl122642122669%_))
                   (_%K122640122664%_
                    _%bind-rest122681%_
                    _%bind122679%_
                    _%key122677%_)))
               (_%else122638122654%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122638122654%_)))))
                                       (_%E122399122619%_))
                                   (_%E122399122619%_)))))
                       (_%E122398122683%_))))
                  (_%export-imports122239%_
                   (lambda (_%src122269%_ _%r122270%_)
                     (letrec* ((_%current-ctx122272%_
                                (gx#current-expander-context))
                               (_%current-phi122273%_
                                (gx#current-export-expander-phi))
                               (_%import->export122274%_
                                (lambda (_%in122355%_)
                                  (let* ((_%in122356122364%_ _%in122355%_)
                                         (_%E122358122368%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122356122364%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122359122375%_
                                          (lambda (_%phi122371%_
                                                   _%key122372%_
                                                   _%out122373%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122272%_
                                             _%key122372%_
                                             _%phi122371%_
                                             _%key122372%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122356122364%_
                                         'gx#module-import::t)
                                        (let* ((_%e122360122378%_
                                                (##unchecked-structure-ref
                                                 _%in122356122364%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122381%_
                                                _%e122360122378%_)
                                               (_%e122361122383%_
                                                (##unchecked-structure-ref
                                                 _%in122356122364%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122386%_
                                                _%e122361122383%_)
                                               (_%e122362122388%_
                                                (##unchecked-structure-ref
                                                 _%in122356122364%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122391%_
                                                _%e122362122388%_))
                                          (_%K122359122375%_
                                           _%phi122391%_
                                           _%key122386%_
                                           _%out122381%_))
                                        (_%E122358122368%_)))))
                               (_%fold-e122275%_
                                (lambda (_%in122277%_ _%r122278%_)
                                  (let* ((_%in122279122293%_ _%in122277%_)
                                         (_%else122282122301%_
                                          (lambda () _%r122278%_)))
                                    (let ((_%K122288122337%_
                                           (lambda (_%phi122333%_
                                                    _%key122334%_
                                                    _%out122335%_)
                                             (if (and (fx= _%phi122333%_
                                                           _%current-phi122273%_)
                                                      (eq? _%src122269%_
                                                           (##unchecked-structure-ref
                                                            _%out122335%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122274%_
                                                        _%in122277%_)
                                                       _%r122278%_)
                                                 _%r122278%_)))
                                          (_%K122284122312%_
                                           (lambda (_%imports122305%_
                                                    _%phi122306%_
                                                    _%ctx122307%_)
                                             (if (and (fx= _%phi122306%_
                                                           _%current-phi122273%_)
                                                      (eq? _%src122269%_
                                                           _%ctx122307%_))
                                                 (__foldl1
                                                  (lambda (_%in122309%_
                                                           _%r122310%_)
                                                    (cons (_%import->export122274%_
                                                           _%in122309%_)
                                                          _%r122310%_))
                                                  _%r122278%_
                                                  _%imports122305%_)
                                                 _%r122278%_))))
                                      (let ((_%try-match122281122330%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122279122293%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122285122315%_
                                                           (##unchecked-structure-ref
                                                            _%in122279122293%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122286122320%_
                                                           (##unchecked-structure-ref
                                                            _%in122279122293%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122287122325%_
                                                           (##unchecked-structure-ref
                                                            _%in122279122293%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122318%_
                                                            _%e122285122315%_)
                                                           (_%phi122323%_
                                                            _%e122286122320%_)
                                                           (_%imports122328%_
                                                            _%e122287122325%_))
                                                       (_%K122284122312%_
                                                        _%imports122328%_
                                                        _%phi122323%_
                                                        _%ctx122318%_)))
                                                   (_%else122282122301%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122279122293%_
                                             'gx#module-import::t)
                                            (let* ((_%e122289122340%_
                                                    (##unchecked-structure-ref
                                                     _%in122279122293%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122290122345%_
                                                    (##unchecked-structure-ref
                                                     _%in122279122293%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122291122350%_
                                                    (##unchecked-structure-ref
                                                     _%in122279122293%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122343%_
                                                     _%e122289122340%_)
                                                    (_%key122348%_
                                                     _%e122290122345%_)
                                                    (_%phi122353%_
                                                     _%e122291122350%_))
                                                (_%K122288122337%_
                                                 _%phi122353%_
                                                 _%key122348%_
                                                 _%out122343%_)))
                                            (_%try-match122281122330%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122269%_
                              _%current-phi122273%_
                              (__foldl1
                               _%fold-e122275%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122272%_
                                '8
                                '#f
                                '#f)))
                             _%r122270%_))))
                  (_%export!122240%_
                   (lambda (_%rbody122256%_)
                     (letrec* ((_%current-ctx122258%_
                                (gx#current-expander-context))
                               (_%fold-e122259%_
                                (lambda (_%out122263%_ _%r122264%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122263%_
                                       'gx#module-export::t)
                                      (let () (cons _%out122263%_ _%r122264%_))
                                      (if (##structure-direct-instance-of?
                                           _%out122263%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r122264%_
                                             (##unchecked-structure-ref
                                              _%out122263%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r122264%_))))))
                       (let ((_%body122261%_ (reverse _%rbody122256%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122258%_
                          (__foldl1
                           _%fold-e122259%_
                           (##unchecked-structure-ref
                            _%current-ctx122258%_
                            '9
                            '#f
                            '#f)
                           _%body122261%_)
                          '9
                          '#f
                          '#f)
                         _%body122261%_))))
                  (_%expanded-export?122241%_
                   (lambda (_%e122251%_)
                     (let ((_%$e122253%_
                            (##structure-direct-instance-of?
                             _%e122251%_
                             'gx#module-export::t)))
                       (if _%$e122253%_
                           _%$e122253%_
                           (##structure-direct-instance-of?
                            _%e122251%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122235%_)
              (let ((_%rbody122247%_
                     (gx#core-expand-import/export
                      _%stx122234%_
                      _%expanded-export?122241%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122238%_)))
                (if _%internal-expand?122235%_
                    (reverse _%rbody122247%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122240%_ _%rbody122247%_))
                     (gx#stx-source _%stx122234%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx122234%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx122234%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122733%_)
        (let ((_%internal-expand?122735%_ '#f))
          (gx#core-expand-export%__%
           _%stx122733%_
           _%internal-expand?122735%_))))
    (define gx#core-expand-export%
      (lambda _g125807_
        (let ((_g125806_ (##length _g125807_)))
          (cond ((##fx= _g125806_ 1)
                 (apply (lambda (_%stx122733%_)
                          (gx#core-expand-export%__0 _%stx122733%_))
                        _g125807_))
                ((##fx= _g125806_ 2)
                 (apply (lambda (_%stx122737%_ _%internal-expand?122738%_)
                          (gx#core-expand-export%__%
                           _%stx122737%_
                           _%internal-expand?122738%_))
                        _g125807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125807_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122231%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122231%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122201%_)
        (let* ((_%e122202122209%_ _%stx122201%_)
               (_%E122204122213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122202122209%_)))
               (_%E122203122227%_
                (lambda ()
                  (if (gx#stx-pair? _%e122202122209%_)
                      (let ((_%e122205122217%_
                             (gx#syntax-e _%e122202122209%_)))
                        (let ((_%hd122206122220%_ (##car _%e122205122217%_))
                              (_%tl122207122222%_ (##cdr _%e122205122217%_)))
                          (let ((_%body122225%_ _%tl122207122222%_))
                            (if (gx#identifier-list? _%body122225%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122225%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122225%_))
                                   (gx#stx-source _%stx122201%_)))
                                (_%E122204122213%_)))))
                      (_%E122204122213%_)))))
          (_%E122203122227%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122167%_ _%private?122168%_ _%phi122169%_ _%ctx122170%_)
        (gx#core-bind-syntax!__%
         _%id122167%_
         ((if _%private?122168%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122167%_))
         _%private?122168%_
         _%phi122169%_
         _%ctx122170%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122175%_)
        (let* ((_%private?122177%_ '#f)
               (_%phi122179%_ (gx#current-expander-phi))
               (_%ctx122181%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122175%_
           _%private?122177%_
           _%phi122179%_
           _%ctx122181%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122183%_ _%private?122184%_)
        (let* ((_%phi122186%_ (gx#current-expander-phi))
               (_%ctx122188%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122183%_
           _%private?122184%_
           _%phi122186%_
           _%ctx122188%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122190%_ _%private?122191%_ _%phi122192%_)
        (let ((_%ctx122194%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122190%_
           _%private?122191%_
           _%phi122192%_
           _%ctx122194%_))))
    (define gx#core-bind-feature!
      (lambda _g125809_
        (let ((_g125808_ (##length _g125809_)))
          (cond ((##fx= _g125808_ 1)
                 (apply (lambda (_%id122175%_)
                          (gx#core-bind-feature!__0 _%id122175%_))
                        _g125809_))
                ((##fx= _g125808_ 2)
                 (apply (lambda (_%id122183%_ _%private?122184%_)
                          (gx#core-bind-feature!__1
                           _%id122183%_
                           _%private?122184%_))
                        _g125809_))
                ((##fx= _g125808_ 3)
                 (apply (lambda (_%id122190%_ _%private?122191%_ _%phi122192%_)
                          (gx#core-bind-feature!__2
                           _%id122190%_
                           _%private?122191%_
                           _%phi122192%_))
                        _g125809_))
                ((##fx= _g125808_ 4)
                 (apply (lambda (_%id122196%_
                                 _%private?122197%_
                                 _%phi122198%_
                                 _%ctx122199%_)
                          (gx#core-bind-feature!__%
                           _%id122196%_
                           _%private?122197%_
                           _%phi122198%_
                           _%ctx122199%_))
                        _g125809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125809_))))))))
