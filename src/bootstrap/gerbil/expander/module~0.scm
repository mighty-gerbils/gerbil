(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712786279)
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
      (lambda _%$args126953%_
        (apply make-instance gx#module-import::t _%$args126953%_)))
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
      (lambda _%$args126950%_
        (apply make-instance gx#module-export::t _%$args126950%_)))
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
      (lambda _%$args126947%_
        (apply make-instance gx#import-set::t _%$args126947%_)))
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
      (lambda _%$args126944%_
        (apply make-instance gx#export-set::t _%$args126944%_)))
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
      (lambda _%$args126941%_
        (apply make-instance gx#import-expander::t _%$args126941%_)))
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
      (lambda _%$args126938%_
        (apply make-instance gx#export-expander::t _%$args126938%_)))
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
      (lambda _%$args126935%_
        (apply make-instance gx#import-export-expander::t _%$args126935%_)))
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
      (lambda (_%path126932%_ _%fun126933%_)
        (call-with-input-file
         (cons 'path: (cons _%path126932%_ gx#source-file-settings))
         _%fun126933%_)))
    (define gx#module-context:::init!
      (lambda (_%self123384126913%_
               _%id126915%_
               _%super126916%_
               _%ns126917%_
               _%path126918%_)
        (let* ((_%self126920%_ _%self123384126913%_)
               (_%self126922%_ _%self126920%_))
          (if (##fx< '11 (##structure-length _%self126922%_))
              (begin
                (##unchecked-structure-set!
                 _%self126922%_
                 _%id126915%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126922%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126922%_
                 _%super126916%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126922%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self126922%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self126922%_
                 _%ns126917%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126922%_
                 _%path126918%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126922%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self126922%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self126922%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self126922%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self126922%_
                     '11
                     (##vector-length _%self126922%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self123385126744%_ _%ctx126746%_ _%root126747%_)
        (let* ((_%self126749%_ _%self123385126744%_)
               (_%self126751%_ _%self126749%_)
               (_%super126767%_
                (let ((_%$e126761%_ _%root126747%_))
                  (if _%$e126761%_
                      _%$e126761%_
                      (let ((_%$e126764%_ (gx#core-context-root__0)))
                        (if _%$e126764%_
                            _%$e126764%_
                            (let ((__obj126997
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor126998
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj126997
                                      ':init!)))
                                (if __constructor126998
                                    (__constructor126998 __obj126997)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj126997)))))))
          (if _%ctx126746%_
              (let ((_%id126770%_
                     (##structure-ref
                      _%ctx126746%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path126771%_
                     (##structure-ref
                      _%ctx126746%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in126772%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx126746%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e126773%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx126746%_)))))
                (if (##fx< '8 (##structure-length _%self126751%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self126751%_
                       _%id126770%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126751%_
                       (make-hash-table-eq 'size: (##length _%in126772%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126751%_
                       _%super126767%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126751%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126751%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126751%_
                       _%path126771%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126751%_
                       _%in126772%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126751%_
                       _%e126773%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self126751%_
                           '8
                           (##vector-length _%self126751%_)))
                (##for-each
                 (lambda (_%g126774126776%_)
                   (gx#core-bind-weak-import!__%
                    _%g126774126776%_
                    _%self126751%_))
                 _%in126772%_))
              (if (##fx< '8 (##structure-length _%self126751%_))
                  (begin
                    (##unchecked-structure-set! _%self126751%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self126751%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self126751%_
                     _%super126767%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self126751%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self126751%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self126751%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self126751%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self126751%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self126751%_
                         '8
                         (##vector-length _%self126751%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self123385126782%_ _%ctx126783%_)
        (let ((_%root126785%_ '#f))
          (gx#prelude-context:::init!__%
           _%self123385126782%_
           _%ctx126783%_
           _%root126785%_))))
    (define gx#prelude-context:::init!
      (lambda _g127004_
        (let ((_g127003_ (##length _g127004_)))
          (cond ((##fx= _g127003_ 2)
                 (apply gx#prelude-context:::init!__0 _g127004_))
                ((##fx= _g127003_ 3)
                 (apply gx#prelude-context:::init!__% _g127004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127004_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self126618%_ _%e126619%_)
        (if (##fx< '3 (##structure-length _%self126618%_))
            (begin
              (##unchecked-structure-set!
               _%self126618%_
               _%e126619%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126618%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126618%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self126618%_
                   '3
                   (##vector-length _%self126618%_)))))
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
      (lambda (_%g126244126247%_ _%g126245126249%_)
        (gx#core-apply-user-expander__%
         _%g126244126247%_
         _%g126245126249%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126115126118%_ _%g126116126120%_)
        (gx#core-apply-user-expander__%
         _%g126115126118%_
         _%g126116126120%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx125986%_)
        (let* ((_%path125988%_
                (##structure-ref _%ctx125986%_ '7 gx#module-context::t '#f))
               (_%path125990%_
                (if (pair? _%path125988%_)
                    (last _%path125988%_)
                    _%path125988%_)))
          (if (string? _%path125990%_) _%path125990%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path125962%_ _%reload?125963%_ _%eval?125964%_)
        (let ((_%ctx125966%_
               ((gx#current-expander-module-import)
                _%path125962%_
                _%reload?125963%_)))
          (if (and _%ctx125966%_ _%eval?125964%_)
              (gx#eval-module _%ctx125966%_)
              '#!void)
          _%ctx125966%_)))
    (define gx#import-module__0
      (lambda (_%path125971%_)
        (let* ((_%reload?125973%_ '#f) (_%eval?125975%_ '#f))
          (gx#import-module__%
           _%path125971%_
           _%reload?125973%_
           _%eval?125975%_))))
    (define gx#import-module__1
      (lambda (_%path125977%_ _%reload?125978%_)
        (let ((_%eval?125980%_ '#f))
          (gx#import-module__%
           _%path125977%_
           _%reload?125978%_
           _%eval?125980%_))))
    (define gx#import-module
      (lambda _g127006_
        (let ((_g127005_ (##length _g127006_)))
          (cond ((##fx= _g127005_ 1) (apply gx#import-module__0 _g127006_))
                ((##fx= _g127005_ 2) (apply gx#import-module__1 _g127006_))
                ((##fx= _g127005_ 3) (apply gx#import-module__% _g127006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127006_))))))
    (define gx#eval-module
      (lambda (_%mod125959%_)
        ((gx#current-expander-module-eval) _%mod125959%_)))
    (define gx#core-eval-module
      (lambda (_%obj125939%_)
        (letrec ((_%force-e125941%_
                  (lambda (_%getf125955%_ _%e125956%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf125955%_ _%e125956%_)))
                     gx#current-expander-context
                     _%e125956%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur125943%_ ((_%e125945%_ _%obj125939%_))
            (if (##structure-instance-of? _%e125945%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e125948%_
                         (gx#core-context-prelude__% _%e125945%_)))
                    (if _%$e125948%_ (_%recur125943%_ _%$e125948%_) '#!void))
                  (_%force-e125941%_ gx#module-context-e _%e125945%_))
                (if (##structure-instance-of?
                     _%e125945%_
                     'gx#prelude-context::t)
                    (_%force-e125941%_ gx#prelude-context-e _%e125945%_)
                    (if (gx#stx-string? _%e125945%_)
                        (_%recur125943%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e125945%_)))
                        (if (gx#core-library-module-path? _%e125945%_)
                            (_%recur125943%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e125945%_)))
                            (error '"cannot eval module" _%obj125939%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx125919%_)
        (let _%lp125921%_ ((_%e125923%_ _%ctx125919%_))
          (if (or (##structure-instance-of? _%e125923%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e125923%_ 'gx#local-context::t))
              (_%lp125921%_ (##unchecked-structure-ref _%e125923%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e125923%_ 'gx#prelude-context::t)
                  _%e125923%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx125935%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx125935%_))))
    (define gx#core-context-prelude
      (lambda _g127008_
        (let ((_g127007_ (##length _g127008_)))
          (cond ((##fx= _g127007_ 0)
                 (apply gx#core-context-prelude__0 _g127008_))
                ((##fx= _g127007_ 1)
                 (apply gx#core-context-prelude__% _g127008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127008_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx125910%_)
        (let ((_%$e125912%_ (hash-get gx#__module-registry _%ctx125910%_)))
          (if _%$e125912%_
              _%$e125912%_
              (let ((_%pre125916%_
                     (let ((__obj126999
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
                       (gx#prelude-context:::init! __obj126999 _%ctx125910%_)
                       __obj126999)))
                (hash-put! gx#__module-registry _%ctx125910%_ _%pre125916%_)
                _%pre125916%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath125782%_ _%reload?125783%_)
        (letrec ((_%import-source125785%_
                  (lambda (_%path125874%_)
                    (if (member _%path125874%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path125874%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127009_ (gx#core-read-module _%path125874%_)))
                         (begin
                           (let ((_g127010_
                                  (if (##values? _g127009_)
                                      (##vector-length _g127009_)
                                      1)))
                             (if (not (##fx= _g127010_ 4))
                                 (error "Context expects 4 values" _g127010_)))
                           (let ((_%pre125877%_ (##vector-ref _g127009_ 0))
                                 (_%id125878%_ (##vector-ref _g127009_ 1))
                                 (_%ns125879%_ (##vector-ref _g127009_ 2))
                                 (_%body125880%_ (##vector-ref _g127009_ 3)))
                             (let* ((_%prelude125890%_
                                     (if (##structure-instance-of?
                                          _%pre125877%_
                                          'gx#prelude-context::t)
                                         _%pre125877%_
                                         (if (##structure-instance-of?
                                              _%pre125877%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre125877%_)
                                             (if (string? _%pre125877%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre125877%_))
                                                 (if (not _%pre125877%_)
                                                     (let ((_%$e125886%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e125886%_
                                                           _%$e125886%_
                                                           (let ((__obj127000
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
                     (gx#prelude-context:::init! __obj127000 '#f)
                     __obj127000)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath125782%_
                                                            _%pre125877%_))))))
                                    (_%ctx125892%_
                                     (let ((__obj127001
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
                                        __obj127001
                                        _%id125878%_
                                        _%prelude125890%_
                                        _%ns125879%_
                                        _%path125874%_)
                                       __obj127001))
                                    (_%body125894%_
                                     (gx#core-expand-module-begin
                                      _%body125880%_
                                      _%ctx125892%_))
                                    (_%body125896%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body125894%_)
                                      _%path125874%_
                                      _%ctx125892%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx125892%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body125896%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx125892%_
                                _%body125896%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path125874%_
                                _%ctx125892%_)
                               (hash-put!
                                gx#__module-registry
                                _%id125878%_
                                _%ctx125892%_)
                               _%ctx125892%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path125874%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule125786%_
                  (lambda (_%rpath125802%_)
                    (let* ((_%rpath125803125810%_ _%rpath125802%_)
                           (_%E125805125814%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath125803125810%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K125806125862%_
                            (lambda (_%refs125817%_ _%origin125818%_)
                              (let ((_%ctx125820%_
                                     (if _%origin125818%_
                                         (gx#core-import-module__%
                                          _%origin125818%_
                                          _%reload?125783%_)
                                         (gx#current-expander-context))))
                                (let _%lp125822%_ ((_%rest125824%_
                                                    _%refs125817%_)
                                                   (_%ctx125825%_
                                                    _%ctx125820%_))
                                  (let* ((_%rest125826125834%_ _%rest125824%_)
                                         (_%else125828125842%_
                                          (lambda () _%ctx125825%_))
                                         (_%K125830125850%_
                                          (lambda (_%rest125845%_ _%id125846%_)
                                            (let ((_%bind125848%_
                                                   (gx#resolve-identifier__%
                                                    _%id125846%_
                                                    '0
                                                    _%ctx125825%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind125848%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind125848%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp125822%_
                                                   _%rest125845%_
                                                   (##unchecked-structure-ref
                                                    _%bind125848%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath125802%_
                                                         _%id125846%_
                                                         _%bind125848%_))))))
                                    (if (##pair? _%rest125826125834%_)
                                        (let ((_%hd125831125853%_
                                               (##car _%rest125826125834%_))
                                              (_%tl125832125855%_
                                               (##cdr _%rest125826125834%_)))
                                          (let* ((_%id125858%_
                                                  _%hd125831125853%_)
                                                 (_%rest125860%_
                                                  _%tl125832125855%_))
                                            (_%K125830125850%_
                                             _%rest125860%_
                                             _%id125858%_)))
                                        (_%else125828125842%_))))))))
                      (if (##pair? _%rpath125803125810%_)
                          (let ((_%hd125807125865%_
                                 (##car _%rpath125803125810%_))
                                (_%tl125808125867%_
                                 (##cdr _%rpath125803125810%_)))
                            (let* ((_%origin125870%_ _%hd125807125865%_)
                                   (_%refs125872%_ _%tl125808125867%_))
                              (_%K125806125862%_
                               _%refs125872%_
                               _%origin125870%_)))
                          (_%E125805125814%_))))))
          (let ((_%$e125788%_
                 (if (not _%reload?125783%_)
                     (hash-get gx#__module-registry _%rpath125782%_)
                     '#f)))
            (if _%$e125788%_
                _%$e125788%_
                (if (list? _%rpath125782%_)
                    (_%import-submodule125786%_ _%rpath125782%_)
                    (if (gx#core-library-module-path? _%rpath125782%_)
                        (let ((_%ctx125793%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath125782%_)
                                _%reload?125783%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath125782%_
                           _%ctx125793%_)
                          _%ctx125793%_)
                        (let* ((_%npath125796%_
                                (path-normalize _%rpath125782%_))
                               (_%$e125798%_
                                (if (not _%reload?125783%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath125796%_)
                                    '#f)))
                          (if _%$e125798%_
                              _%$e125798%_
                              (_%import-source125785%_
                               _%npath125796%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath125903%_)
        (let ((_%reload?125905%_ '#f))
          (gx#core-import-module__% _%rpath125903%_ _%reload?125905%_))))
    (define gx#core-import-module
      (lambda _g127012_
        (let ((_g127011_ (##length _g127012_)))
          (cond ((##fx= _g127011_ 1)
                 (apply gx#core-import-module__0 _g127012_))
                ((##fx= _g127011_ 2)
                 (apply gx#core-import-module__% _g127012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127012_))))))
    (define gx#core-read-module
      (lambda (_%path125771%_)
        (__with-catch
         (lambda (_%exn125773%_)
           (if (and (datum-parsing-exception? _%exn125773%_)
                    (eq? (datum-parsing-exception-filepos _%exn125773%_) '0))
               (gx#core-read-module/lang _%path125771%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path125771%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g125775125777%_)
                      (display-exception _%exn125773%_ _%g125775125777%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path125771%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path125623%_)
        (let _%lp125625%_ ((_%body125627%_
                            (read-syntax-from-file _%path125623%_))
                           (_%pre125628%_ '#f)
                           (_%ns125629%_ '#f)
                           (_%pkg125630%_ '#f))
          (let* ((_%e125631125655%_ _%body125627%_)
                 (_%E125647125681%_
                  (lambda ()
                    (let ((_g127013_
                           (if _%pkg125630%_
                               (values _%pre125628%_
                                       _%ns125629%_
                                       _%pkg125630%_)
                               (gx#core-read-module-package
                                _%path125623%_
                                _%pre125628%_
                                _%ns125629%_))))
                      (begin
                        (let ((_g127014_
                               (if (##values? _g127013_)
                                   (##vector-length _g127013_)
                                   1)))
                          (if (not (##fx= _g127014_ 3))
                              (error "Context expects 3 values" _g127014_)))
                        (let ((_%pre125659%_ (##vector-ref _g127013_ 0))
                              (_%ns125660%_ (##vector-ref _g127013_ 1))
                              (_%pkg125661%_ (##vector-ref _g127013_ 2)))
                          (let* ((_%prelude125667%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre125659%_)
                                      (gx#syntax-local-e__0 _%pre125659%_)
                                      (if (gx#core-library-module-path?
                                           _%pre125659%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre125659%_)
                                          (if (gx#stx-string? _%pre125659%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre125659%_
                                               _%path125623%_)
                                              (gx#stx-e _%pre125659%_)))))
                                 (_%path-id125669%_
                                  (gx#core-module-path->namespace
                                   _%path125623%_))
                                 (_%pkg-id125671%_
                                  (if _%pkg125661%_
                                      (##string-append
                                       _%pkg125661%_
                                       '"/"
                                       _%path-id125669%_)
                                      _%path-id125669%_))
                                 (_%module-id125673%_
                                  (##string->symbol _%pkg-id125671%_))
                                 (_%module-ns125678%_
                                  (if (eq? _%ns125660%_ '#!void)
                                      '#f
                                      (let ((_%$e125675%_ _%ns125660%_))
                                        (if _%$e125675%_
                                            _%$e125675%_
                                            _%pkg-id125671%_)))))
                            (values _%prelude125667%_
                                    _%module-id125673%_
                                    _%module-ns125678%_
                                    _%body125627%_)))))))
                 (_%E125640125713%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125631125655%_)
                        (let ((_%e125648125685%_
                               (gx#syntax-e _%e125631125655%_)))
                          (let ((_%hd125649125688%_ (##car _%e125648125685%_))
                                (_%tl125650125690%_ (##cdr _%e125648125685%_)))
                            (if (eq? (gx#stx-e _%hd125649125688%_) 'package:)
                                (if (gx#stx-pair? _%tl125650125690%_)
                                    (let ((_%e125651125693%_
                                           (gx#syntax-e _%tl125650125690%_)))
                                      (let ((_%hd125652125696%_
                                             (##car _%e125651125693%_))
                                            (_%tl125653125698%_
                                             (##cdr _%e125651125693%_)))
                                        (let* ((_%pkg125701%_
                                                _%hd125652125696%_)
                                               (_%rest125703%_
                                                _%tl125653125698%_))
                                          (if '#t
                                              (let ((_%pkg125711%_
                                                     (if (gx#identifier?
                                                          _%pkg125701%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg125701%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg125701%_)
                         (gx#stx-false? _%pkg125701%_))
                     (gx#stx-e _%pkg125701%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg125701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp125625%_
                                                 _%rest125703%_
                                                 _%pre125628%_
                                                 _%ns125629%_
                                                 _%pkg125711%_))
                                              (_%E125647125681%_)))))
                                    (_%E125647125681%_))
                                (_%E125647125681%_))))
                        (_%E125647125681%_))))
                 (_%E125633125743%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125631125655%_)
                        (let ((_%e125641125717%_
                               (gx#syntax-e _%e125631125655%_)))
                          (let ((_%hd125642125720%_ (##car _%e125641125717%_))
                                (_%tl125643125722%_ (##cdr _%e125641125717%_)))
                            (if (eq? (gx#stx-e _%hd125642125720%_) 'namespace:)
                                (if (gx#stx-pair? _%tl125643125722%_)
                                    (let ((_%e125644125725%_
                                           (gx#syntax-e _%tl125643125722%_)))
                                      (let ((_%hd125645125728%_
                                             (##car _%e125644125725%_))
                                            (_%tl125646125730%_
                                             (##cdr _%e125644125725%_)))
                                        (let* ((_%ns125733%_
                                                _%hd125645125728%_)
                                               (_%rest125735%_
                                                _%tl125646125730%_))
                                          (if '#t
                                              (let ((_%ns125741%_
                                                     (if (gx#identifier?
                                                          _%ns125733%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns125733%_))
                                                         (if (gx#stx-string?
                                                              _%ns125733%_)
                                                             (gx#stx-e
                                                              _%ns125733%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns125733%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns125733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp125625%_
                                                 _%rest125735%_
                                                 _%pre125628%_
                                                 _%ns125741%_
                                                 _%pkg125630%_))
                                              (_%E125640125713%_)))))
                                    (_%E125640125713%_))
                                (_%E125640125713%_))))
                        (_%E125640125713%_))))
                 (_%E125632125767%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125631125655%_)
                        (let ((_%e125634125747%_
                               (gx#syntax-e _%e125631125655%_)))
                          (let ((_%hd125635125750%_ (##car _%e125634125747%_))
                                (_%tl125636125752%_ (##cdr _%e125634125747%_)))
                            (if (eq? (gx#stx-e _%hd125635125750%_) 'prelude:)
                                (if (gx#stx-pair? _%tl125636125752%_)
                                    (let ((_%e125637125755%_
                                           (gx#syntax-e _%tl125636125752%_)))
                                      (let ((_%hd125638125758%_
                                             (##car _%e125637125755%_))
                                            (_%tl125639125760%_
                                             (##cdr _%e125637125755%_)))
                                        (let* ((_%prelude125763%_
                                                _%hd125638125758%_)
                                               (_%rest125765%_
                                                _%tl125639125760%_))
                                          (if '#t
                                              (_%lp125625%_
                                               _%rest125765%_
                                               _%prelude125763%_
                                               _%ns125629%_
                                               _%pkg125630%_)
                                              (_%E125633125743%_)))))
                                    (_%E125633125743%_))
                                (_%E125633125743%_))))
                        (_%E125633125743%_)))))
            (_%E125632125767%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path125445%_)
        (letrec ((_%default-read-module-body125447%_
                  (lambda (_%inp125615%_)
                    (let _%lp125617%_ ((_%body125619%_ '()))
                      (let ((_%next125621%_ (read-syntax__% _%inp125615%_)))
                        (if (eof-object? _%next125621%_)
                            (reverse _%body125619%_)
                            (_%lp125617%_
                             (cons _%next125621%_ _%body125619%_)))))))
                 (_%read-body125448%_
                  (lambda (_%inp125533%_
                           _%pre125534%_
                           _%ns125535%_
                           _%pkg125536%_
                           _%args125537%_)
                    (let ((_g127015_
                           (if _%pkg125536%_
                               (values _%pre125534%_
                                       _%ns125535%_
                                       _%pkg125536%_)
                               (gx#core-read-module-package
                                _%path125445%_
                                _%pre125534%_
                                _%ns125535%_))))
                      (begin
                        (let ((_g127016_
                               (if (##values? _g127015_)
                                   (##vector-length _g127015_)
                                   1)))
                          (if (not (##fx= _g127016_ 3))
                              (error "Context expects 3 values" _g127016_)))
                        (let ((_%pre125539%_ (##vector-ref _g127015_ 0))
                              (_%ns125540%_ (##vector-ref _g127015_ 1))
                              (_%pkg125541%_ (##vector-ref _g127015_ 2)))
                          (let* ((_%prelude125543%_
                                  (gx#import-module__0 _%pre125539%_))
                                 (_%read-module-body125598%_
                                  (let ((_%$e125589%_
                                         (__find (lambda (_%e125544125546%_)
                                                   (let* ((_%g125548125558%_
                                                           _%e125544125546%_)
                                                          (_%else125550125566%_
                                                           (lambda () '#f))
                                                          (_%K125552125570%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g125548125558%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e125553125573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g125548125558%_
                          '1
                          '#f
                          '#f))
                        (_%e125554125576%_
                         (##unchecked-structure-ref
                          _%g125548125558%_
                          '2
                          '#f
                          '#f))
                        (_%e125555125579%_
                         (##unchecked-structure-ref
                          _%g125548125558%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e125555125579%_ '1)
                       (let ((_%e125556125582%_
                              (##unchecked-structure-ref
                               _%g125548125558%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g125584125586%_)
                                (eq? _%g125584125586%_ 'read-module-body))
                              _%e125556125582%_)
                             (_%K125552125570%_)
                             (_%else125550125566%_)))
                       (_%else125550125566%_)))
                 (_%else125550125566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude125543%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e125589%_
                                        ((lambda (_%xport125592%_)
                                           (let ((_%proc125595%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport125592%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc125595%_)
                                                 _%proc125595%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path125445%_
                                                  _%pre125539%_
                                                  _%proc125595%_))))
                                         _%$e125589%_)
                                        _%default-read-module-body125447%_)))
                                 (_%path-id125600%_
                                  (gx#core-module-path->namespace
                                   _%path125445%_))
                                 (_%pkg-id125602%_
                                  (if _%pkg125541%_
                                      (##string-append
                                       _%pkg125541%_
                                       '"/"
                                       _%path-id125600%_)
                                      _%path-id125600%_))
                                 (_%module-id125604%_
                                  (##string->symbol _%pkg-id125602%_))
                                 (_%module-ns125609%_
                                  (let ((_%$e125606%_ _%ns125540%_))
                                    (if _%$e125606%_
                                        _%$e125606%_
                                        _%pkg-id125602%_)))
                                 (_%body125612%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body125598%_
                                      _%inp125533%_))
                                   gx#current-module-reader-path
                                   _%path125445%_
                                   gx#current-module-reader-args
                                   _%args125537%_)))
                            (values _%prelude125543%_
                                    _%module-id125604%_
                                    _%module-ns125609%_
                                    _%body125612%_)))))))
                 (_%string-e125449%_
                  (lambda (_%obj125527%_ _%what125528%_)
                    (if (string? _%obj125527%_)
                        _%obj125527%_
                        (if (symbol? _%obj125527%_)
                            (symbol->string _%obj125527%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what125528%_)
                             _%path125445%_
                             _%obj125527%_)))))
                 (_%read-lang-args125450%_
                  (lambda (_%inp125482%_ _%args125483%_)
                    (let* ((_%args125484125492%_ _%args125483%_)
                           (_%else125486125500%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path125445%_)))
                           (_%K125488125515%_
                            (lambda (_%args125503%_ _%prelude125504%_)
                              (let* ((_%pkg125506%_
                                      (pgetq__0 'package: _%args125503%_))
                                     (_%pkg125508%_
                                      (if _%pkg125506%_
                                          (_%string-e125449%_
                                           _%pkg125506%_
                                           '"package")
                                          '#f))
                                     (_%ns125510%_
                                      (pgetq__0 'namespace: _%args125503%_))
                                     (_%ns125512%_
                                      (if _%ns125510%_
                                          (_%string-e125449%_
                                           _%ns125510%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body125448%_
                                 _%inp125482%_
                                 _%prelude125504%_
                                 _%ns125512%_
                                 _%pkg125508%_
                                 _%args125503%_)))))
                      (if (##pair? _%args125484125492%_)
                          (let ((_%hd125489125518%_
                                 (##car _%args125484125492%_))
                                (_%tl125490125520%_
                                 (##cdr _%args125484125492%_)))
                            (let* ((_%prelude125523%_ _%hd125489125518%_)
                                   (_%args125525%_ _%tl125490125520%_))
                              (_%K125488125515%_
                               _%args125525%_
                               _%prelude125523%_)))
                          (_%else125486125500%_)))))
                 (_%read-lang125451%_
                  (lambda (_%inp125456%_)
                    (let* ((_%head125458%_ (read-line _%inp125456%_))
                           (_%$e125460%_
                            (string-index__0 _%head125458%_ '#\space)))
                      (if _%$e125460%_
                          ((lambda (_%ix125463%_)
                             (let ((_%lang125465%_
                                    (substring
                                     _%head125458%_
                                     '0
                                     _%ix125463%_)))
                               (if (equal? _%lang125465%_ '"#lang")
                                   (let* ((_%rest125467%_
                                           (substring
                                            _%head125458%_
                                            (##fx+ _%ix125463%_ '1)
                                            (string-length _%head125458%_)))
                                          (_%args125478%_
                                           (__with-catch
                                            (lambda (_%g125468125470%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path125445%_
                                               _%g125468125470%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest125467%_
                                               (lambda (_%g125473125475%_)
                                                 (read-all
                                                  _%g125473125475%_
                                                  read)))))))
                                     (_%read-lang-args125450%_
                                      _%inp125456%_
                                      _%args125478%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path125445%_))))
                           _%$e125460%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path125445%_)))))
                 (_%read-e125452%_
                  (lambda (_%inp125454%_)
                    (if (eq? (peek-char _%inp125454%_) '#\#)
                        (_%read-lang125451%_ _%inp125454%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path125445%_)))))
          (gx#call-with-input-source-file _%path125445%_ _%read-e125452%_))))
    (define gx#core-read-module-package
      (lambda (_%path125393%_ _%pre125394%_ _%ns125395%_)
        (letrec ((_%string-e125397%_
                  (lambda (_%e125440%_)
                    (if (symbol? _%e125440%_)
                        (symbol->string _%e125440%_)
                        (if (string? _%e125440%_)
                            _%e125440%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e125440%_))))))
          (let _%lp125399%_ ((_%dir125401%_ (path-directory _%path125393%_))
                             (_%pkg-path125402%_ '()))
            (let ((_%gerbil.pkg125404%_
                   (path-expand '"gerbil.pkg" _%dir125401%_)))
              (if (##file-exists? _%gerbil.pkg125404%_)
                  (let ((_%plist125406%_
                         (gx#core-library-package-plist__% _%dir125401%_ '#t)))
                    (if (null? _%plist125406%_)
                        (let ((_%pkg125409%_
                               (if (not (null? _%pkg-path125402%_))
                                   (string-join _%pkg-path125402%_ '"/")
                                   '#f)))
                          (values _%pre125394%_ _%ns125395%_ _%pkg125409%_))
                        (if (list? _%plist125406%_)
                            (let* ((_%root125412%_
                                    (pgetq__0 'package: _%plist125406%_))
                                   (_%pkg125416%_
                                    (let ((_%pkg-path125414%_
                                           (if _%root125412%_
                                               (cons (_%string-e125397%_
                                                      _%root125412%_)
                                                     _%pkg-path125402%_)
                                               _%pkg-path125402%_)))
                                      (if (not (null? _%pkg-path125414%_))
                                          (string-join _%pkg-path125414%_ '"/")
                                          '#f)))
                                   (_%ns125423%_
                                    (let ((_%ns125421%_
                                           (let ((_%$e125418%_ _%ns125395%_))
                                             (if _%$e125418%_
                                                 _%$e125418%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist125406%_)))))
                                      (if _%ns125421%_
                                          (_%string-e125397%_ _%ns125421%_)
                                          '#f)))
                                   (_%pre125428%_
                                    (let ((_%$e125425%_ _%pre125394%_))
                                      (if _%$e125425%_
                                          _%$e125425%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist125406%_)))))
                              (values _%pre125428%_
                                      _%ns125423%_
                                      _%pkg125416%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist125406%_))))
                  (let ((_%dir*125432%_
                         (path-strip-trailing-directory-separator
                          _%dir125401%_)))
                    (if (or (__string-empty? _%dir*125432%_)
                            (equal? _%dir125401%_ _%dir*125432%_))
                        (values _%pre125394%_ _%ns125395%_ '#f)
                        (let ((_%xpath125437%_
                               (path-strip-directory _%dir*125432%_))
                              (_%xdir125438%_ (path-directory _%dir*125432%_)))
                          (_%lp125399%_
                           _%xdir125438%_
                           (cons _%xpath125437%_ _%pkg-path125402%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path125391%_)
        (path-strip-extension (path-strip-directory _%path125391%_))))
    (define gx#core-module-path->id
      (lambda (_%path125389%_)
        (##string->symbol (gx#core-module-path->namespace _%path125389%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path125368%_ _%rel125369%_)
        (let* ((_%path125371%_ (gx#stx-e _%stx-path125368%_))
               (_%path125373%_
                (if (__string-empty? (path-extension _%path125371%_))
                    (##string-append _%path125371%_ '".ss")
                    _%path125371%_)))
          (gx#core-resolve-path__%
           _%path125373%_
           (let ((_%$e125376%_ (gx#stx-source _%stx-path125368%_)))
             (if _%$e125376%_ _%$e125376%_ _%rel125369%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path125382%_)
        (let ((_%rel125384%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path125382%_ _%rel125384%_))))
    (define gx#core-resolve-module-path
      (lambda _g127018_
        (let ((_g127017_ (##length _g127018_)))
          (cond ((##fx= _g127017_ 1)
                 (apply gx#core-resolve-module-path__0 _g127018_))
                ((##fx= _g127017_ 2)
                 (apply gx#core-resolve-module-path__% _g127018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127018_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125253%_)
        (let* ((_%spath125255%_ (symbol->string (gx#stx-e _%libpath125253%_)))
               (_%spath125257%_
                (substring
                 _%spath125255%_
                 '1
                 (##string-length _%spath125255%_)))
               (_%ext125259%_ (path-extension _%spath125257%_))
               (_%ssi125261%_
                (if (__string-empty? _%ext125259%_)
                    (##string-append _%spath125257%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125257%_)
                     '".ssi")))
               (_%srcs125265%_
                (if (__string-empty? _%ext125259%_)
                    (##map (lambda (_%ext125263%_)
                             (string-append _%spath125257%_ _%ext125263%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125257%_ '()))))
          (let _%lp125268%_ ((_%rest125270%_ (load-path)))
            (let* ((_%rest125271125280%_ _%rest125270%_)
                   (_%E125274125284%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125271125280%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125276125355%_
                     (lambda (_%rest125295%_ _%dir125296%_)
                       (letrec ((_%resolve125298%_
                                 (lambda (_%ssi125311%_ _%srcs125312%_)
                                   (let ((_%compiled-path125314%_
                                          (path-expand
                                           _%ssi125311%_
                                           _%dir125296%_)))
                                     (if (##file-exists?
                                          _%compiled-path125314%_)
                                         (path-normalize
                                          _%compiled-path125314%_)
                                         (let _%lpr125316%_ ((_%rest-src125318%_
                                                              _%srcs125312%_))
                                           (let* ((_%rest-src125319125327%_
                                                   _%rest-src125318%_)
                                                  (_%else125321125335%_
                                                   (lambda ()
                                                     (_%lp125268%_
                                                      _%rest125295%_)))
                                                  (_%K125323125343%_
                                                   (lambda (_%rest-src125338%_
                                                            _%src125339%_)
                                                     (let ((_%src-path125341%_
                                                            (path-expand
                                                             _%src125339%_
                                                             _%dir125296%_)))
                                                       (if (##file-exists?
                                                            _%src-path125341%_)
                                                           (path-normalize
                                                            _%src-path125341%_)
                                                           (_%lpr125316%_
                                                            _%rest-src125338%_))))))
                                             (if (##pair? _%rest-src125319125327%_)
                                                 (let ((_%hd125324125346%_
                                                        (##car _%rest-src125319125327%_))
                                                       (_%tl125325125348%_
                                                        (##cdr _%rest-src125319125327%_)))
                                                   (let* ((_%src125351%_
                                                           _%hd125324125346%_)
                                                          (_%rest-src125353%_
                                                           _%tl125325125348%_))
                                                     (_%K125323125343%_
                                                      _%rest-src125353%_
                                                      _%src125351%_)))
                                                 (_%else125321125335%_)))))))))
                         (let ((_%$e125300%_
                                (gx#core-library-package-path-prefix
                                 _%dir125296%_)))
                           (if _%$e125300%_
                               ((lambda (_%prefix125303%_)
                                  (if (string-prefix?
                                       _%prefix125303%_
                                       _%spath125257%_)
                                      (let ((_%ssi125307%_
                                             (substring
                                              _%ssi125261%_
                                              (string-length _%prefix125303%_)
                                              (##string-length _%ssi125261%_)))
                                            (_%srcs125308%_
                                             (##map (lambda (_%src125305%_)
                                                      (substring
                                                       _%src125305%_
                                                       (string-length
                                                        _%prefix125303%_)
                                                       (string-length
                                                        _%src125305%_)))
                                                    _%srcs125265%_)))
                                        (_%resolve125298%_
                                         _%ssi125307%_
                                         _%srcs125308%_))
                                      (_%lp125268%_ _%rest125295%_)))
                                _%$e125300%_)
                               (_%resolve125298%_
                                _%ssi125261%_
                                _%srcs125265%_))))))
                    (_%K125275125289%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125253%_))))
                (let ((_%try-match125273125292%_
                       (lambda ()
                         (if (##null? _%rest125271125280%_)
                             (_%K125275125289%_)
                             (_%E125274125284%_)))))
                  (if (##pair? _%rest125271125280%_)
                      (let ((_%tl125278125360%_ (##cdr _%rest125271125280%_))
                            (_%hd125277125358%_ (##car _%rest125271125280%_)))
                        (let ((_%dir125363%_ _%hd125277125358%_)
                              (_%rest125365%_ _%tl125278125360%_))
                          (_%K125276125355%_ _%rest125365%_ _%dir125363%_)))
                      (_%try-match125273125292%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125221%_)
        (letrec ((_%resolve125223%_
                  (lambda (_%path125244%_ _%base125245%_)
                    (let ((_%$e125247%_
                           (string-rindex__0 _%base125245%_ '#\/)))
                      (if _%$e125247%_
                          ((lambda (_%idx125250%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125245%_ '0 _%idx125250%_)
                                '"/"
                                _%path125244%_))))
                           _%$e125247%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125244%_))))))))
          (let ((_%spath125225%_ (symbol->string (gx#stx-e _%modpath125221%_)))
                (_%mod125226%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125226%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125221%_))
            (let ((_%mpath125228%_
                   (symbol->string
                    (##structure-ref
                     _%mod125226%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125230%_ ((_%spath125232%_ _%spath125225%_)
                                 (_%mpath125233%_ _%mpath125228%_))
                (if (string-prefix? '"../" _%spath125232%_)
                    (let ((_%$e125236%_
                           (string-rindex__0 _%mpath125233%_ '#\/)))
                      (if _%$e125236%_
                          ((lambda (_%idx125239%_)
                             (_%lp125230%_
                              (substring
                               _%spath125232%_
                               '3
                               (string-length _%spath125232%_))
                              (substring _%mpath125233%_ '0 _%idx125239%_)))
                           _%$e125236%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125221%_)))
                    (if (string-prefix? '"./" _%spath125232%_)
                        (_%lp125230%_
                         (substring
                          _%spath125232%_
                          '2
                          (string-length _%spath125232%_))
                         _%mpath125233%_)
                        (_%resolve125223%_
                         _%spath125232%_
                         _%mpath125233%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125213%_)
        (let ((_%$e125215%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125213%_))))
          (if _%$e125215%_
              ((lambda (_%pkg125218%_)
                 (##string-append (symbol->string _%pkg125218%_) '"/"))
               _%$e125215%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125183%_ _%exists?125184%_)
        (let ((_%$e125186%_ (hash-get gx#__module-pkg-cache _%dir125183%_)))
          (if _%$e125186%_
              (values _%$e125186%_)
              (let* ((_%gerbil.pkg125190%_
                      (path-expand '"gerbil.pkg" _%dir125183%_))
                     (_%plist125200%_
                      (if (or _%exists?125184%_
                              (##file-exists? _%gerbil.pkg125190%_))
                          (let ((_%e125195%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125190%_
                                  read)))
                            (if (eof-object? _%e125195%_)
                                '()
                                (if (list? _%e125195%_)
                                    _%e125195%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125190%_
                                     _%e125195%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir125183%_ _%plist125200%_)
                _%plist125200%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125206%_)
        (let ((_%exists?125208%_ '#f))
          (gx#core-library-package-plist__% _%dir125206%_ _%exists?125208%_))))
    (define gx#core-library-package-plist
      (lambda _g127020_
        (let ((_g127019_ (##length _g127020_)))
          (cond ((##fx= _g127019_ 1)
                 (apply gx#core-library-package-plist__0 _g127020_))
                ((##fx= _g127019_ 2)
                 (apply gx#core-library-package-plist__% _g127020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127020_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125180%_)
        (gx#core-special-module-path? _%stx125180%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125178%_)
        (gx#core-special-module-path? _%stx125178%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125173%_ _%char125174%_)
        (if (gx#identifier? _%stx125173%_)
            (if (interned-symbol? (gx#stx-e _%stx125173%_))
                (let ((_%str125176%_
                       (symbol->string (gx#stx-e _%stx125173%_))))
                  (if (##fx> (##string-length _%str125176%_) '1)
                      (eq? (string-ref _%str125176%_ '0) _%char125174%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125167%_)
        (gx#core-bound-identifier?__%
         _%stx125167%_
         (lambda (_%g125168125170%_)
           (gx#expander-binding?__% _%g125168125170%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125161%_)
        (gx#core-bound-identifier?__%
         _%stx125161%_
         (lambda (_%g125162125164%_)
           (gx#expander-binding?__% _%g125162125164%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125148%_)
        (letrec ((_%module-prelude?125150%_
                  (lambda (_%e125156%_)
                    (let ((_%$e125158%_
                           (##structure-instance-of?
                            _%e125156%_
                            'gx#module-context::t)))
                      (if _%$e125158%_
                          _%$e125158%_
                          (##structure-instance-of?
                           _%e125156%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125148%_
           (lambda (_%g125151125153%_)
             (gx#expander-binding?__%
              _%g125151125153%_
              _%module-prelude?125150%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125078%_ _%ctx125079%_ _%force-weak?125080%_)
        (let* ((_%in125081125090%_ _%in125078%_)
               (_%E125083125094%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125081125090%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125084125107%_
                (lambda (_%weak?125097%_
                         _%phi125098%_
                         _%key125099%_
                         _%source125100%_)
                  (gx#core-bind!__%
                   _%key125099%_
                   (let ((_%e125102%_
                          (gx#core-resolve-module-export _%source125100%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125102%_ '1 '#f '#f)
                      _%key125099%_
                      _%phi125098%_
                      _%e125102%_
                      (##unchecked-structure-ref _%source125100%_ '1 '#f '#f)
                      (let ((_%$e125104%_ _%force-weak?125080%_))
                        (if _%$e125104%_ _%$e125104%_ _%weak?125097%_))))
                   gx#core-context-rebind?
                   _%phi125098%_
                   _%ctx125079%_))))
          (if (##structure-direct-instance-of?
               _%in125081125090%_
               'gx#module-import::t)
              (let* ((_%e125085125110%_
                      (##unchecked-structure-ref
                       _%in125081125090%_
                       '1
                       '#f
                       '#f))
                     (_%source125113%_ _%e125085125110%_)
                     (_%e125086125115%_
                      (##unchecked-structure-ref
                       _%in125081125090%_
                       '2
                       '#f
                       '#f))
                     (_%key125118%_ _%e125086125115%_)
                     (_%e125087125120%_
                      (##unchecked-structure-ref
                       _%in125081125090%_
                       '3
                       '#f
                       '#f))
                     (_%phi125123%_ _%e125087125120%_)
                     (_%e125088125125%_
                      (##unchecked-structure-ref
                       _%in125081125090%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125128%_ _%e125088125125%_))
                (_%K125084125107%_
                 _%weak?125128%_
                 _%phi125123%_
                 _%key125118%_
                 _%source125113%_))
              (_%E125083125094%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125133%_)
        (let* ((_%ctx125135%_ (gx#current-expander-context))
               (_%force-weak?125137%_ '#f))
          (gx#core-bind-import!__%
           _%in125133%_
           _%ctx125135%_
           _%force-weak?125137%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125139%_ _%ctx125140%_)
        (let ((_%force-weak?125142%_ '#f))
          (gx#core-bind-import!__%
           _%in125139%_
           _%ctx125140%_
           _%force-weak?125142%_))))
    (define gx#core-bind-import!
      (lambda _g127022_
        (let ((_g127021_ (##length _g127022_)))
          (cond ((##fx= _g127021_ 1) (apply gx#core-bind-import!__0 _g127022_))
                ((##fx= _g127021_ 2) (apply gx#core-bind-import!__1 _g127022_))
                ((##fx= _g127021_ 3) (apply gx#core-bind-import!__% _g127022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127022_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125064%_ _%ctx125065%_)
        (gx#core-bind-import!__% _%in125064%_ _%ctx125065%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125070%_)
        (let ((_%ctx125072%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125070%_ _%ctx125072%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127024_
        (let ((_g127023_ (##length _g127024_)))
          (cond ((##fx= _g127023_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127024_))
                ((##fx= _g127023_ 2)
                 (apply gx#core-bind-weak-import!__% _g127024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127024_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out124955%_)
        (letrec ((_%subst124957%_
                  (lambda (_%key125003%_)
                    (let* ((_%key125004125012%_ _%key125003%_)
                           (_%else125006125020%_ (lambda () _%key125003%_))
                           (_%K125008125051%_
                            (lambda (_%mark125023%_ _%id125024%_)
                              (let* ((_%mark125025125031%_ _%mark125023%_)
                                     (_%E125027125035%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125025125031%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125028125043%_
                                      (lambda (_%subst125038%_)
                                        (let ((_%$e125040%_
                                               (if _%subst125038%_
                                                   (hash-get
                                                    _%subst125038%_
                                                    _%id125024%_)
                                                   '#f)))
                                          (if _%$e125040%_
                                              _%$e125040%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125003%_))))))
                                (if (##structure-instance-of?
                                     _%mark125025125031%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125029125046%_
                                            (##unchecked-structure-ref
                                             _%mark125025125031%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125049%_ _%e125029125046%_))
                                      (_%K125028125043%_ _%subst125049%_))
                                    (_%E125027125035%_))))))
                      (if (##pair? _%key125004125012%_)
                          (let ((_%hd125009125054%_
                                 (##car _%key125004125012%_))
                                (_%tl125010125056%_
                                 (##cdr _%key125004125012%_)))
                            (let* ((_%id125059%_ _%hd125009125054%_)
                                   (_%mark125061%_ _%tl125010125056%_))
                              (_%K125008125051%_ _%mark125061%_ _%id125059%_)))
                          (_%else125006125020%_))))))
          (let* ((_%out124958124968%_ _%out124955%_)
                 (_%E124960124972%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out124958124968%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K124961124979%_
                  (lambda (_%phi124975%_ _%key124976%_ _%ctx124977%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx124977%_ _%phi124975%_)
                     (_%subst124957%_ _%key124976%_)))))
            (if (##structure-direct-instance-of?
                 _%out124958124968%_
                 'gx#module-export::t)
                (let* ((_%e124962124982%_
                        (##unchecked-structure-ref
                         _%out124958124968%_
                         '1
                         '#f
                         '#f))
                       (_%ctx124985%_ _%e124962124982%_)
                       (_%e124963124987%_
                        (##unchecked-structure-ref
                         _%out124958124968%_
                         '2
                         '#f
                         '#f))
                       (_%key124990%_ _%e124963124987%_)
                       (_%e124964124992%_
                        (##unchecked-structure-ref
                         _%out124958124968%_
                         '3
                         '#f
                         '#f))
                       (_%phi124995%_ _%e124964124992%_)
                       (_%e124965124997%_
                        (##unchecked-structure-ref
                         _%out124958124968%_
                         '4
                         '#f
                         '#f))
                       (_%e124966125000%_
                        (##unchecked-structure-ref
                         _%out124958124968%_
                         '5
                         '#f
                         '#f)))
                  (_%K124961124979%_
                   _%phi124995%_
                   _%key124990%_
                   _%ctx124985%_))
                (_%E124960124972%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out124880%_ _%rename124881%_ _%dphi124882%_)
        (let* ((_%out124883124893%_ _%out124880%_)
               (_%E124885124897%_
                (lambda ()
                  (error '"No clause matching"
                         _%out124883124893%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K124886124909%_
                (lambda (_%weak?124900%_
                         _%name124901%_
                         _%phi124902%_
                         _%key124903%_
                         _%ctx124904%_)
                  (##structure
                   gx#module-import::t
                   _%out124880%_
                   (let ((_%$e124906%_ _%rename124881%_))
                     (if _%$e124906%_ _%$e124906%_ _%name124901%_))
                   (fx+ _%phi124902%_ _%dphi124882%_)
                   _%weak?124900%_))))
          (if (##structure-direct-instance-of?
               _%out124883124893%_
               'gx#module-export::t)
              (let* ((_%e124887124912%_
                      (##unchecked-structure-ref
                       _%out124883124893%_
                       '1
                       '#f
                       '#f))
                     (_%ctx124915%_ _%e124887124912%_)
                     (_%e124888124917%_
                      (##unchecked-structure-ref
                       _%out124883124893%_
                       '2
                       '#f
                       '#f))
                     (_%key124920%_ _%e124888124917%_)
                     (_%e124889124922%_
                      (##unchecked-structure-ref
                       _%out124883124893%_
                       '3
                       '#f
                       '#f))
                     (_%phi124925%_ _%e124889124922%_)
                     (_%e124890124927%_
                      (##unchecked-structure-ref
                       _%out124883124893%_
                       '4
                       '#f
                       '#f))
                     (_%name124930%_ _%e124890124927%_)
                     (_%e124891124932%_
                      (##unchecked-structure-ref
                       _%out124883124893%_
                       '5
                       '#f
                       '#f))
                     (_%weak?124935%_ _%e124891124932%_))
                (_%K124886124909%_
                 _%weak?124935%_
                 _%name124930%_
                 _%phi124925%_
                 _%key124920%_
                 _%ctx124915%_))
              (_%E124885124897%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out124940%_)
        (let* ((_%rename124942%_ '#f) (_%dphi124944%_ '0))
          (gx#core-module-export->import__%
           _%out124940%_
           _%rename124942%_
           _%dphi124944%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out124946%_ _%rename124947%_)
        (let ((_%dphi124949%_ '0))
          (gx#core-module-export->import__%
           _%out124946%_
           _%rename124947%_
           _%dphi124949%_))))
    (define gx#core-module-export->import
      (lambda _g127026_
        (let ((_g127025_ (##length _g127026_)))
          (cond ((##fx= _g127025_ 1)
                 (apply gx#core-module-export->import__0 _g127026_))
                ((##fx= _g127025_ 2)
                 (apply gx#core-module-export->import__1 _g127026_))
                ((##fx= _g127025_ 3)
                 (apply gx#core-module-export->import__% _g127026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127026_))))))
    (define gx#core-expand-module%
      (lambda (_%stx124779%_)
        (letrec ((_%make-context124781%_
                  (lambda (_%id124858%_)
                    (let* ((_%super124860%_ (gx#current-expander-context))
                           (_%bind-id124862%_ (gx#stx-e _%id124858%_))
                           (_%mod-id124864%_
                            (if (##structure-instance-of?
                                 _%super124860%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super124860%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id124862%_)
                                _%bind-id124862%_))
                           (_%ns124866%_ (symbol->string _%mod-id124864%_))
                           (_%path124876%_
                            (if (##structure-instance-of?
                                 _%super124860%_
                                 'gx#module-context::t)
                                (let ((_%path124868%_
                                       (##unchecked-structure-ref
                                        _%super124860%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path124868%_)
                                          (null? _%path124868%_))
                                      (cons _%bind-id124862%_ _%path124868%_)
                                      (if (not _%path124868%_)
                                          _%bind-id124862%_
                                          (cons _%bind-id124862%_
                                                (cons _%path124868%_ '())))))
                                _%bind-id124862%_))
                           (__obj127002
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
                       __obj127002
                       _%mod-id124864%_
                       _%super124860%_
                       _%ns124866%_
                       _%path124876%_)
                      __obj127002)))
                 (_%valid-module-id?124782%_
                  (lambda (_%id124833%_)
                    (let* ((_%str124835%_ (symbol->string _%id124833%_))
                           (_%len124837%_ (##string-length _%str124835%_)))
                      (if (##fx>= _%len124837%_ '1)
                          (let _%loop124840%_ ((_%index124842%_
                                                (##fx- (##string-length
                                                        _%str124835%_)
                                                       '1)))
                            (if (##fx>= _%index124842%_ '0)
                                (let ((_%c124844%_
                                       (string-ref
                                        _%str124835%_
                                        _%index124842%_)))
                                  (if (or (and (##char>=? _%c124844%_ '#\a)
                                               (##char<=? _%c124844%_ '#\z))
                                          (and (##char>=? _%c124844%_ '#\A)
                                               (##char<=? _%c124844%_ '#\Z))
                                          (and (##char>=? _%c124844%_ '#\0)
                                               (##char<=? _%c124844%_ '#\9))
                                          (##char=? _%c124844%_ '#\_)
                                          (##char=? _%c124844%_ '#\-))
                                      (_%loop124840%_
                                       (##fx- _%index124842%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e124783124793%_ _%stx124779%_)
                 (_%E124785124797%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124783124793%_)))
                 (_%E124784124829%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124783124793%_)
                        (let ((_%e124786124801%_
                               (gx#syntax-e _%e124783124793%_)))
                          (let ((_%hd124787124804%_ (##car _%e124786124801%_))
                                (_%tl124788124806%_ (##cdr _%e124786124801%_)))
                            (if (gx#stx-pair? _%tl124788124806%_)
                                (let ((_%e124789124809%_
                                       (gx#syntax-e _%tl124788124806%_)))
                                  (let ((_%hd124790124812%_
                                         (##car _%e124789124809%_))
                                        (_%tl124791124814%_
                                         (##cdr _%e124789124809%_)))
                                    (let* ((_%id124817%_ _%hd124790124812%_)
                                           (_%body124819%_ _%tl124791124814%_))
                                      (if (and (gx#identifier? _%id124817%_)
                                               (gx#stx-list? _%body124819%_))
                                          (if (_%valid-module-id?124782%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx124821%_
                                                      (_%make-context124781%_
                                                       _%id124817%_))
                                                     (_%body124823%_
                                                      (gx#core-expand-module-begin
                                                       _%body124819%_
                                                       _%ctx124821%_))
                                                     (_%body124825%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body124823%_)
                                                       (gx#stx-source
                                                        _%stx124779%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx124821%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body124825%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx124821%_
                                                 _%body124825%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id124817%_
                                                 _%ctx124821%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id124817%_)
                                                  _%body124825%_)
                                                 (gx#stx-source
                                                  _%stx124779%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx124779%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E124785124797%_)))))
                                (_%E124785124797%_))))
                        (_%E124785124797%_)))))
            (_%E124784124829%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body124745%_ _%ctx124746%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx124749%_
                   (gx#core-expand-head (cons '%%begin-module _%body124745%_)))
                  (_%e124750124757%_ _%stx124749%_)
                  (_%E124752124761%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx124749%_)))
                  (_%E124751124775%_
                   (lambda ()
                     (if (gx#stx-pair? _%e124750124757%_)
                         (let ((_%e124753124765%_
                                (gx#syntax-e _%e124750124757%_)))
                           (let ((_%hd124754124768%_ (##car _%e124753124765%_))
                                 (_%tl124755124770%_
                                  (##cdr _%e124753124765%_)))
                             (if (and (gx#identifier? _%hd124754124768%_)
                                      (gx#core-identifier=?
                                       _%hd124754124768%_
                                       '%#begin-module))
                                 (let ((_%body124773%_ _%tl124755124770%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx124749%_)
                                           _%body124773%_
                                           (gx#core-expand-module-body
                                            _%body124773%_))
                                       (_%E124752124761%_)))
                                 (_%E124752124761%_))))
                         (_%E124752124761%_)))))
             (_%E124751124775%_)))
         gx#current-expander-context
         _%ctx124746%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body124541%_)
        (letrec ((_%expand-special124543%_
                  (lambda (_%hd124672%_ _%K124673%_ _%rest124674%_ _%r124675%_)
                    (let* ((_%e124676124693%_ _%hd124672%_)
                           (_%E124688124697%_
                            (lambda ()
                              (_%K124673%_
                               _%rest124674%_
                               (cons (gx#core-expand-top _%hd124672%_)
                                     _%r124675%_))))
                           (_%E124678124709%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124676124693%_)
                                  (let ((_%e124689124701%_
                                         (gx#syntax-e _%e124676124693%_)))
                                    (let ((_%hd124690124704%_
                                           (##car _%e124689124701%_))
                                          (_%tl124691124706%_
                                           (##cdr _%e124689124701%_)))
                                      (if (and (gx#identifier?
                                                _%hd124690124704%_)
                                               (gx#core-identifier=?
                                                _%hd124690124704%_
                                                '%#export))
                                          (if '#t
                                              (_%K124673%_
                                               _%rest124674%_
                                               (cons _%hd124672%_ _%r124675%_))
                                              (_%E124688124697%_))
                                          (_%E124688124697%_))))
                                  (_%E124688124697%_))))
                           (_%E124677124741%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124676124693%_)
                                  (let ((_%e124679124713%_
                                         (gx#syntax-e _%e124676124693%_)))
                                    (let ((_%hd124680124716%_
                                           (##car _%e124679124713%_))
                                          (_%tl124681124718%_
                                           (##cdr _%e124679124713%_)))
                                      (if (and (gx#identifier?
                                                _%hd124680124716%_)
                                               (gx#core-identifier=?
                                                _%hd124680124716%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124681124718%_)
                                              (let ((_%e124682124721%_
                                                     (gx#syntax-e
                                                      _%tl124681124718%_)))
                                                (let ((_%hd124683124724%_
                                                       (##car _%e124682124721%_))
                                                      (_%tl124684124726%_
                                                       (##cdr _%e124682124721%_)))
                                                  (let ((_%hd-bind124729%_
                                                         _%hd124683124724%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124684124726%_)
                                                        (let ((_%e124685124731%_
                                                               (gx#syntax-e
                                                                _%tl124684124726%_)))
                                                          (let ((_%hd124686124734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124685124731%_))
                        (_%tl124687124736%_ (##cdr _%e124685124731%_)))
                    (let ((_%expr124739%_ _%hd124686124734%_))
                      (if (gx#stx-null? _%tl124687124736%_)
                          (if (gx#core-bind-values? _%hd-bind124729%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124729%_)
                                (_%K124673%_
                                 _%rest124674%_
                                 (cons _%hd124672%_ _%r124675%_)))
                              (_%E124678124709%_))
                          (_%E124678124709%_)))))
                (_%E124678124709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124678124709%_))
                                          (_%E124678124709%_))))
                                  (_%E124678124709%_)))))
                      (_%E124677124741%_))))
                 (_%expand-body124544%_
                  (lambda (_%rbody124546%_)
                    (let _%lp124548%_ ((_%rest124550%_ _%rbody124546%_)
                                       (_%body124551%_ '()))
                      (let* ((_%rest124552124560%_ _%rest124550%_)
                             (_%else124554124568%_ (lambda () _%body124551%_))
                             (_%K124556124660%_
                              (lambda (_%rest124571%_ _%hd124572%_)
                                (let* ((_%e124573124594%_ _%hd124572%_)
                                       (_%E124589124598%_
                                        (lambda ()
                                          (_%lp124548%_
                                           _%rest124571%_
                                           (cons (gx#core-expand-expression
                                                  _%hd124572%_)
                                                 _%body124551%_))))
                                       (_%E124585124612%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124573124594%_)
                                              (let ((_%e124590124602%_
                                                     (gx#syntax-e
                                                      _%e124573124594%_)))
                                                (let ((_%hd124591124605%_
                                                       (##car _%e124590124602%_))
                                                      (_%tl124592124607%_
                                                       (##cdr _%e124590124602%_)))
                                                  (let ((_%form124610%_
                                                         _%hd124591124605%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form124610%_
                                                         gx#special-form-binding?)
                                                        (_%lp124548%_
                                                         _%rest124571%_
                                                         (cons _%hd124572%_
                                                               _%body124551%_))
                                                        (_%E124589124598%_)))))
                                              (_%E124589124598%_))))
                                       (_%E124575124624%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124573124594%_)
                                              (let ((_%e124586124616%_
                                                     (gx#syntax-e
                                                      _%e124573124594%_)))
                                                (let ((_%hd124587124619%_
                                                       (##car _%e124586124616%_))
                                                      (_%tl124588124621%_
                                                       (##cdr _%e124586124616%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124587124619%_)
                                                           (gx#core-identifier=?
                                                            _%hd124587124619%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp124548%_
                                                           _%rest124571%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd124572%_)
                         _%body124551%_))
                  (_%E124585124612%_))
              (_%E124585124612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124585124612%_))))
                                       (_%E124574124656%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124573124594%_)
                                              (let ((_%e124576124628%_
                                                     (gx#syntax-e
                                                      _%e124573124594%_)))
                                                (let ((_%hd124577124631%_
                                                       (##car _%e124576124628%_))
                                                      (_%tl124578124633%_
                                                       (##cdr _%e124576124628%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124577124631%_)
                                                           (gx#core-identifier=?
                                                            _%hd124577124631%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124578124633%_)
                                                          (let ((_%e124579124636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124578124633%_)))
                    (let ((_%hd124580124639%_ (##car _%e124579124636%_))
                          (_%tl124581124641%_ (##cdr _%e124579124636%_)))
                      (let ((_%hd-bind124644%_ _%hd124580124639%_))
                        (if (gx#stx-pair? _%tl124581124641%_)
                            (let ((_%e124582124646%_
                                   (gx#syntax-e _%tl124581124641%_)))
                              (let ((_%hd124583124649%_
                                     (##car _%e124582124646%_))
                                    (_%tl124584124651%_
                                     (##cdr _%e124582124646%_)))
                                (let ((_%expr124654%_ _%hd124583124649%_))
                                  (if (gx#stx-null? _%tl124584124651%_)
                                      (if '#t
                                          (_%lp124548%_
                                           _%rest124571%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind124644%_)
                                                   (gx#core-expand-expression
                                                    _%expr124654%_))
                                                  (gx#stx-source _%hd124572%_))
                                                 _%body124551%_))
                                          (_%E124575124624%_))
                                      (_%E124575124624%_)))))
                            (_%E124575124624%_)))))
                  (_%E124575124624%_))
              (_%E124575124624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124575124624%_)))))
                                  (_%E124574124656%_)))))
                        (if (##pair? _%rest124552124560%_)
                            (let ((_%hd124557124663%_
                                   (##car _%rest124552124560%_))
                                  (_%tl124558124665%_
                                   (##cdr _%rest124552124560%_)))
                              (let* ((_%hd124668%_ _%hd124557124663%_)
                                     (_%rest124670%_ _%tl124558124665%_))
                                (_%K124556124660%_
                                 _%rest124670%_
                                 _%hd124668%_)))
                            (_%else124554124568%_)))))))
          (_%expand-body124544%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body124541%_)
            _%expand-special124543%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx124382%_
               _%expanded?124383%_
               _%method124384%_
               _%current-phi124385%_
               _%expand1124386%_)
        (letrec ((_%K124388%_
                  (lambda (_%rest124508%_ _%r124509%_)
                    (let* ((_%e124510124517%_ _%rest124508%_)
                           (_%E124512124521%_ (lambda () _%r124509%_))
                           (_%E124511124537%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124510124517%_)
                                  (let ((_%e124513124525%_
                                         (gx#syntax-e _%e124510124517%_)))
                                    (let ((_%hd124514124528%_
                                           (##car _%e124513124525%_))
                                          (_%tl124515124530%_
                                           (##cdr _%e124513124525%_)))
                                      (let* ((_%hd124533%_ _%hd124514124528%_)
                                             (_%rest124535%_
                                              _%tl124515124530%_))
                                        (if '#t
                                            (_%step124389%_
                                             _%hd124533%_
                                             _%rest124535%_
                                             _%r124509%_)
                                            (_%E124512124521%_)))))
                                  (_%E124512124521%_)))))
                      (_%E124511124537%_))))
                 (_%step124389%_
                  (lambda (_%hd124422%_ _%rest124423%_ _%r124424%_)
                    (let* ((_%e124425124443%_ _%hd124422%_)
                           (_%E124438124447%_
                            (lambda ()
                              (if (_%expanded?124383%_ (gx#stx-e _%hd124422%_))
                                  (_%K124388%_
                                   _%rest124423%_
                                   (cons (gx#stx-e _%hd124422%_) _%r124424%_))
                                  (_%expand1124386%_
                                   _%hd124422%_
                                   _%K124388%_
                                   _%rest124423%_
                                   _%r124424%_))))
                           (_%E124434124463%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124425124443%_)
                                  (let ((_%e124439124451%_
                                         (gx#syntax-e _%e124425124443%_)))
                                    (let ((_%hd124440124454%_
                                           (##car _%e124439124451%_))
                                          (_%tl124441124456%_
                                           (##cdr _%e124439124451%_)))
                                      (let* ((_%macro124459%_
                                              _%hd124440124454%_)
                                             (_%body124461%_
                                              _%tl124441124456%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro124459%_
                                             gx#syntax-binding?)
                                            (_%K124388%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro124459%_)
                                                    _%hd124422%_
                                                    _%method124384%_)
                                                   _%rest124423%_)
                                             _%r124424%_)
                                            (_%E124438124447%_)))))
                                  (_%E124438124447%_))))
                           (_%E124427124477%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124425124443%_)
                                  (let ((_%e124435124467%_
                                         (gx#syntax-e _%e124425124443%_)))
                                    (let ((_%hd124436124470%_
                                           (##car _%e124435124467%_))
                                          (_%tl124437124472%_
                                           (##cdr _%e124435124467%_)))
                                      (if (eq? (gx#stx-e _%hd124436124470%_)
                                               'begin:)
                                          (let ((_%body124475%_
                                                 _%tl124437124472%_))
                                            (if '#t
                                                (_%K124388%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest124423%_
                                                  _%body124475%_)
                                                 _%r124424%_)
                                                (_%E124434124463%_)))
                                          (_%E124434124463%_))))
                                  (_%E124434124463%_))))
                           (_%E124426124504%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124425124443%_)
                                  (let ((_%e124428124481%_
                                         (gx#syntax-e _%e124425124443%_)))
                                    (let ((_%hd124429124484%_
                                           (##car _%e124428124481%_))
                                          (_%tl124430124486%_
                                           (##cdr _%e124428124481%_)))
                                      (if (eq? (gx#stx-e _%hd124429124484%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl124430124486%_)
                                              (let ((_%e124431124489%_
                                                     (gx#syntax-e
                                                      _%tl124430124486%_)))
                                                (let ((_%hd124432124492%_
                                                       (##car _%e124431124489%_))
                                                      (_%tl124433124494%_
                                                       (##cdr _%e124431124489%_)))
                                                  (let* ((_%dphi124497%_
                                                          _%hd124432124492%_)
                                                         (_%body124499%_
                                                          _%tl124433124494%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi124497%_)
                                                        (let ((_%rbody124502%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K124388%_ _%body124499%_ '()))
                        _%current-phi124385%_
                        (fx+ (gx#stx-e _%dphi124497%_)
                             (_%current-phi124385%_)))))
                  (_%K124388%_
                   _%rest124423%_
                   (__foldr1 cons _%r124424%_ _%rbody124502%_)))
                (_%E124427124477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124427124477%_))
                                          (_%E124427124477%_))))
                                  (_%E124427124477%_)))))
                      (_%E124426124504%_)))))
          (let* ((_%e124390124397%_ _%stx124382%_)
                 (_%E124392124401%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124390124397%_)))
                 (_%E124391124418%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124390124397%_)
                        (let ((_%e124393124405%_
                               (gx#syntax-e _%e124390124397%_)))
                          (let ((_%hd124394124408%_ (##car _%e124393124405%_))
                                (_%tl124395124410%_ (##cdr _%e124393124405%_)))
                            (let ((_%body124413%_ _%tl124395124410%_))
                              (if '#t
                                  (if (_%current-phi124385%_)
                                      (_%K124388%_ _%body124413%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K124388%_ _%body124413%_ '()))
                                       _%current-phi124385%_
                                       (gx#current-expander-phi)))
                                  (_%E124392124401%_)))))
                        (_%E124392124401%_)))))
            (_%E124391124418%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124036%_ _%internal-expand?124037%_)
        (letrec ((_%expand1124039%_
                  (lambda (_%hd124354%_ _%K124355%_ _%rest124356%_ _%r124357%_)
                    (if (gx#core-bound-module? _%hd124354%_)
                        (_%import1124040%_
                         (gx#syntax-local-e__0 _%hd124354%_)
                         _%K124355%_
                         _%rest124356%_
                         _%r124357%_)
                        (if (gx#core-library-module-path? _%hd124354%_)
                            (_%import1124040%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd124354%_))
                             _%K124355%_
                             _%rest124356%_
                             _%r124357%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd124354%_)
                                (_%import1124040%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd124354%_))
                                 _%K124355%_
                                 _%rest124356%_
                                 _%r124357%_)
                                (let ((_%e124363%_ (gx#stx-e _%hd124354%_)))
                                  (if (pair? _%e124363%_)
                                      (let ((_%$e124366%_
                                             (gx#stx-e (car _%e124363%_))))
                                        (if (eq? 'spec: _%$e124366%_)
                                            (_%import-spec124043%_
                                             _%hd124354%_
                                             _%K124355%_
                                             _%rest124356%_
                                             _%r124357%_)
                                            (if (eq? 'in: _%$e124366%_)
                                                (_%import-submodule124041%_
                                                 _%hd124354%_
                                                 _%K124355%_
                                                 _%rest124356%_
                                                 _%r124357%_)
                                                (if (eq? 'runtime:
                                                         _%$e124366%_)
                                                    (_%import-runtime124042%_
                                                     _%hd124354%_
                                                     _%K124355%_
                                                     _%rest124356%_
                                                     _%r124357%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124036%_
                                                     _%hd124354%_)))))
                                      (if (string? _%e124363%_)
                                          (_%import1124040%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd124354%_
                                             (gx#stx-source _%stx124036%_)))
                                           _%K124355%_
                                           _%rest124356%_
                                           _%r124357%_)
                                          (if (##structure-instance-of?
                                               _%e124363%_
                                               'gx#module-context::t)
                                              (_%K124355%_
                                               _%rest124356%_
                                               (cons _%e124363%_ _%r124357%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124036%_
                                               _%hd124354%_))))))))))
                 (_%import1124040%_
                  (lambda (_%ctx124343%_
                           _%K124344%_
                           _%rest124345%_
                           _%r124346%_)
                    (let ((_%dphi124348%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K124344%_
                       _%rest124345%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx124343%_
                              _%dphi124348%_
                              (map (lambda (_%g124349124351%_)
                                     (gx#core-module-export->import__%
                                      _%g124349124351%_
                                      '#f
                                      _%dphi124348%_))
                                   (##unchecked-structure-ref
                                    _%ctx124343%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r124346%_)))))
                 (_%import-submodule124041%_
                  (lambda (_%hd124310%_ _%K124311%_ _%rest124312%_ _%r124313%_)
                    (let* ((_%e124314124321%_ _%hd124310%_)
                           (_%E124316124325%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124314124321%_)))
                           (_%E124315124339%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124314124321%_)
                                  (let ((_%e124317124329%_
                                         (gx#syntax-e _%e124314124321%_)))
                                    (let ((_%hd124318124332%_
                                           (##car _%e124317124329%_))
                                          (_%tl124319124334%_
                                           (##cdr _%e124317124329%_)))
                                      (let ((_%spath124337%_
                                             _%tl124319124334%_))
                                        (if '#t
                                            (_%import1124040%_
                                             (_%import-spec-source124044%_
                                              _%spath124337%_)
                                             _%K124311%_
                                             _%rest124312%_
                                             _%r124313%_)
                                            (_%E124316124325%_)))))
                                  (_%E124316124325%_)))))
                      (_%E124315124339%_))))
                 (_%import-runtime124042%_
                  (lambda (_%hd124277%_ _%K124278%_ _%rest124279%_ _%r124280%_)
                    (let* ((_%e124281124288%_ _%hd124277%_)
                           (_%E124283124292%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124281124288%_)))
                           (_%E124282124306%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124281124288%_)
                                  (let ((_%e124284124296%_
                                         (gx#syntax-e _%e124281124288%_)))
                                    (let ((_%hd124285124299%_
                                           (##car _%e124284124296%_))
                                          (_%tl124286124301%_
                                           (##cdr _%e124284124296%_)))
                                      (let ((_%spath124304%_
                                             _%tl124286124301%_))
                                        (if '#t
                                            (_%K124278%_
                                             _%rest124279%_
                                             (cons (_%import-spec-source124044%_
                                                    _%spath124304%_)
                                                   _%r124280%_))
                                            (_%E124283124292%_)))))
                                  (_%E124283124292%_)))))
                      (_%E124282124306%_))))
                 (_%import-spec124043%_
                  (lambda (_%hd124115%_ _%K124116%_ _%rest124117%_ _%r124118%_)
                    (let* ((_%e124119124136%_ _%hd124115%_)
                           (_%E124128124140%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124119124136%_)))
                           (_%E124121124251%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124119124136%_)
                                  (let ((_%e124129124144%_
                                         (gx#syntax-e _%e124119124136%_)))
                                    (let ((_%hd124130124147%_
                                           (##car _%e124129124144%_))
                                          (_%tl124131124149%_
                                           (##cdr _%e124129124144%_)))
                                      (if (gx#stx-pair? _%tl124131124149%_)
                                          (let ((_%e124132124152%_
                                                 (gx#syntax-e
                                                  _%tl124131124149%_)))
                                            (let ((_%hd124133124155%_
                                                   (##car _%e124132124152%_))
                                                  (_%tl124134124157%_
                                                   (##cdr _%e124132124152%_)))
                                              (let* ((_%path124160%_
                                                      _%hd124133124155%_)
                                                     (_%specs124162%_
                                                      _%tl124134124157%_))
                                                (if '#t
                                                    (let ((_%src-ctx124164%_
                                                           (_%import-spec-source124044%_
                                                            _%path124160%_))
                                                          (_%exports124165%_
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
                                                          (_%specs124166%_
                                                           (gx#syntax->list
                                                            _%specs124162%_)))
                                                      (for-each
                                                       (lambda (_%out124168%_)
                                                         (hash-put!
                                                          _%exports124165%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out124168%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out124168%_ '4 '#f '#f))
                  _%out124168%_))
               (##unchecked-structure-ref _%src-ctx124164%_ '9 '#f '#f))
              (_%K124116%_
               _%rest124117%_
               (__foldl1
                (lambda (_%spec124170%_ _%r124171%_)
                  (let* ((_%e124172124188%_ _%spec124170%_)
                         (_%E124174124192%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e124172124188%_)))
                         (_%E124173124247%_
                          (lambda ()
                            (if (gx#stx-pair? _%e124172124188%_)
                                (let ((_%e124175124196%_
                                       (gx#syntax-e _%e124172124188%_)))
                                  (let ((_%hd124176124199%_
                                         (##car _%e124175124196%_))
                                        (_%tl124177124201%_
                                         (##cdr _%e124175124196%_)))
                                    (let ((_%phi124204%_ _%hd124176124199%_))
                                      (if (gx#stx-pair? _%tl124177124201%_)
                                          (let ((_%e124178124206%_
                                                 (gx#syntax-e
                                                  _%tl124177124201%_)))
                                            (let ((_%hd124179124209%_
                                                   (##car _%e124178124206%_))
                                                  (_%tl124180124211%_
                                                   (##cdr _%e124178124206%_)))
                                              (let ((_%name124214%_
                                                     _%hd124179124209%_))
                                                (if (gx#stx-pair?
                                                     _%tl124180124211%_)
                                                    (let ((_%e124181124216%_
                                                           (gx#syntax-e
                                                            _%tl124180124211%_)))
                                                      (let ((_%hd124182124219%_
                                                             (##car _%e124181124216%_))
                                                            (_%tl124183124221%_
                                                             (##cdr _%e124181124216%_)))
                                                        (let ((_%src-phi124224%_
                                                               _%hd124182124219%_))
                                                          (if (gx#stx-pair?
                                                               _%tl124183124221%_)
                                                              (let ((_%e124184124226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl124183124221%_)))
                        (let ((_%hd124185124229%_ (##car _%e124184124226%_))
                              (_%tl124186124231%_ (##cdr _%e124184124226%_)))
                          (let ((_%src-name124234%_ _%hd124185124229%_))
                            (if (gx#stx-null? _%tl124186124231%_)
                                (if (and (gx#stx-fixnum? _%src-phi124224%_)
                                         (gx#identifier? _%src-name124234%_)
                                         (gx#stx-fixnum? _%phi124204%_)
                                         (gx#identifier? _%name124214%_))
                                    (let ((_%src-phi124236%_
                                           (gx#stx-e _%src-phi124224%_))
                                          (_%src-name124237%_
                                           (gx#core-identifier-key
                                            _%src-name124234%_))
                                          (_%phi124238%_
                                           (gx#stx-e _%phi124204%_))
                                          (_%name124239%_
                                           (gx#core-identifier-key
                                            _%name124214%_)))
                                      (let ((_%$e124241%_
                                             (hash-get
                                              _%exports124165%_
                                              (cons _%src-phi124236%_
                                                    _%src-name124237%_))))
                                        (if _%$e124241%_
                                            ((lambda (_%out124244%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out124244%_
                                                      _%name124239%_
                                                      (fx- _%phi124238%_
                                                           _%src-phi124236%_))
                                                     _%r124171%_))
                                             _%$e124241%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx124036%_
                                             _%hd124115%_))))
                                    (_%E124174124192%_))
                                (_%E124174124192%_)))))
                      (_%E124174124192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124174124192%_)))))
                                          (_%E124174124192%_)))))
                                (_%E124174124192%_)))))
                    (_%E124173124247%_)))
                _%r124118%_
                _%specs124166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124128124140%_)))))
                                          (_%E124128124140%_))))
                                  (_%E124128124140%_))))
                           (_%E124120124273%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124119124136%_)
                                  (let ((_%e124122124255%_
                                         (gx#syntax-e _%e124119124136%_)))
                                    (let ((_%hd124123124258%_
                                           (##car _%e124122124255%_))
                                          (_%tl124124124260%_
                                           (##cdr _%e124122124255%_)))
                                      (if (gx#stx-pair? _%tl124124124260%_)
                                          (let ((_%e124125124263%_
                                                 (gx#syntax-e
                                                  _%tl124124124260%_)))
                                            (let ((_%hd124126124266%_
                                                   (##car _%e124125124263%_))
                                                  (_%tl124127124268%_
                                                   (##cdr _%e124125124263%_)))
                                              (let ((_%path124271%_
                                                     _%hd124126124266%_))
                                                (if (gx#stx-null?
                                                     _%tl124127124268%_)
                                                    (if '#t
                                                        (_%K124116%_
                                                         _%rest124117%_
                                                         (cons (_%import-spec-source124044%_
                                                                _%path124271%_)
                                                               _%r124118%_))
                                                        (_%E124121124251%_))
                                                    (_%E124121124251%_)))))
                                          (_%E124121124251%_))))
                                  (_%E124121124251%_)))))
                      (_%E124120124273%_))))
                 (_%import-spec-source124044%_
                  (lambda (_%spath124113%_)
                    (gx#core-import-nested-module
                     _%spath124113%_
                     _%stx124036%_)))
                 (_%import!124045%_
                  (lambda (_%rbody124058%_)
                    (letrec* ((_%current-ctx124060%_
                               (gx#current-expander-context))
                              (_%deps124061%_ (make-hash-table-eq))
                              (_%bind!124062%_
                               (lambda (_%hd124111%_)
                                 (gx#core-bind-import!__1
                                  _%hd124111%_
                                  _%current-ctx124060%_))))
                      (let _%lp124064%_ ((_%rest124066%_ _%rbody124058%_)
                                         (_%body124067%_ '()))
                        (let* ((_%rest124068124076%_ _%rest124066%_)
                               (_%else124070124087%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124060%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124060%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124060%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124067%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx124084%_ _%_124085%_)
                                     (gx#eval-module _%ctx124084%_))
                                   _%deps124061%_)
                                  _%body124067%_))
                               (_%K124072124099%_
                                (lambda (_%rest124090%_ _%hd124091%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124091%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124062%_ _%hd124091%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124091%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124091%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps124061%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124091%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124091%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124062%_
                                             (##unchecked-structure-ref
                                              _%hd124091%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124091%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps124061%_
                                                 (##unchecked-structure-ref
                                                  _%hd124091%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124095%_
                                                 (##structure-instance-of?
                                                  _%hd124091%_
                                                  'gx#module-context::t)))
                                            (if _%$e124095%_
                                                _%$e124095%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124036%_
                                                 _%hd124091%_)))))
                                  (_%lp124064%_
                                   _%rest124090%_
                                   (cons _%hd124091%_ _%body124067%_)))))
                          (if (##pair? _%rest124068124076%_)
                              (let ((_%hd124073124102%_
                                     (##car _%rest124068124076%_))
                                    (_%tl124074124104%_
                                     (##cdr _%rest124068124076%_)))
                                (let* ((_%hd124107%_ _%hd124073124102%_)
                                       (_%rest124109%_ _%tl124074124104%_))
                                  (_%K124072124099%_
                                   _%rest124109%_
                                   _%hd124107%_)))
                              (_%else124070124087%_)))))))
                 (_%expanded-import?124046%_
                  (lambda (_%e124050%_)
                    (let ((_%$e124052%_
                           (##structure-direct-instance-of?
                            _%e124050%_
                            'gx#import-set::t)))
                      (if _%$e124052%_
                          _%$e124052%_
                          (let ((_%$e124055%_
                                 (##structure-direct-instance-of?
                                  _%e124050%_
                                  'gx#module-import::t)))
                            (if _%$e124055%_
                                _%$e124055%_
                                (##structure-instance-of?
                                 _%e124050%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124048%_
                 (gx#core-expand-import/export
                  _%stx124036%_
                  _%expanded-import?124046%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124039%_)))
            (if _%internal-expand?124037%_
                (reverse _%rbody124048%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124045%_ _%rbody124048%_))
                 (gx#stx-source _%stx124036%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx124375%_)
        (let ((_%internal-expand?124377%_ '#f))
          (gx#core-expand-import%__%
           _%stx124375%_
           _%internal-expand?124377%_))))
    (define gx#core-expand-import%
      (lambda _g127028_
        (let ((_g127027_ (##length _g127028_)))
          (cond ((##fx= _g127027_ 1)
                 (apply gx#core-expand-import%__0 _g127028_))
                ((##fx= _g127027_ 2)
                 (apply gx#core-expand-import%__% _g127028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127028_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath123963%_ _%where123964%_)
        (let* ((_%e123965123972%_ _%spath123963%_)
               (_%E123967123976%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123965123972%_)))
               (_%E123966124031%_
                (lambda ()
                  (if (gx#stx-pair? _%e123965123972%_)
                      (let ((_%e123968123980%_
                             (gx#syntax-e _%e123965123972%_)))
                        (let ((_%hd123969123983%_ (##car _%e123968123980%_))
                              (_%tl123970123985%_ (##cdr _%e123968123980%_)))
                          (let* ((_%origin123988%_ _%hd123969123983%_)
                                 (_%sub123990%_ _%tl123970123985%_))
                            (if '#t
                                (let ((_%origin-ctx123992%_
                                       (if (gx#stx-false? _%origin123988%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin123988%_))))
                                  (let _%lp123994%_ ((_%rest123996%_
                                                      _%sub123990%_)
                                                     (_%ctx123997%_
                                                      _%origin-ctx123992%_))
                                    (let* ((_%e123998124005%_ _%rest123996%_)
                                           (_%E124000124009%_
                                            (lambda () _%ctx123997%_))
                                           (_%E123999124027%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e123998124005%_)
                                                  (let ((_%e124001124013%_
                                                         (gx#syntax-e
                                                          _%e123998124005%_)))
                                                    (let ((_%hd124002124016%_
                                                           (##car _%e124001124013%_))
                                                          (_%tl124003124018%_
                                                           (##cdr _%e124001124013%_)))
                                                      (let* ((_%id124021%_
                                                              _%hd124002124016%_)
                                                             (_%rest124023%_
                                                              _%tl124003124018%_))
                                                        (if '#t
                                                            (let ((_%bind124025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id124021%_
                            '0
                            _%ctx123997%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind124025%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind124025%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where123964%_
                           _%spath123963%_
                           _%id124021%_))
                      (_%lp123994%_
                       _%rest124023%_
                       (##unchecked-structure-ref _%bind124025%_ '4 '#f '#f)))
                    (_%E124000124009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124000124009%_)))))
                                      (_%E123999124027%_))))
                                (_%E123967123976%_)))))
                      (_%E123967123976%_)))))
          (_%E123966124031%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd123961%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd123961%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx123455%_ _%internal-expand?123456%_)
        (letrec* ((_%make-export__126956126957%_
                   (lambda (_%bind123909%_
                            _%phi123910%_
                            _%ctx123911%_
                            _%name123912%_)
                     (let* ((_%key123914%_
                             (##unchecked-structure-ref
                              _%bind123909%_
                              '2
                              '#f
                              '#f))
                            (_%export-key123916%_
                             (if _%name123912%_
                                 (gx#core-identifier-key _%name123912%_)
                                 _%key123914%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx123911%_
                        _%key123914%_
                        _%phi123910%_
                        _%export-key123916%_
                        (let ((_%$e123919%_
                               (##structure-instance-of?
                                _%bind123909%_
                                'gx#extern-binding::t)))
                          (if _%$e123919%_
                              _%$e123919%_
                              (##structure-direct-instance-of?
                               _%bind123909%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__126958126961%_
                   (lambda (_%bind123925%_)
                     (let* ((_%phi123927%_ (gx#current-export-expander-phi))
                            (_%ctx123929%_ (gx#current-expander-context))
                            (_%name123931%_ '#f))
                       (_%make-export__126956126957%_
                        _%bind123925%_
                        _%phi123927%_
                        _%ctx123929%_
                        _%name123931%_))))
                  (_%make-export__1__126959126962%_
                   (lambda (_%bind123933%_ _%phi123934%_)
                     (let* ((_%ctx123936%_ (gx#current-expander-context))
                            (_%name123938%_ '#f))
                       (_%make-export__126956126957%_
                        _%bind123933%_
                        _%phi123934%_
                        _%ctx123936%_
                        _%name123938%_))))
                  (_%make-export__2__126960126963%_
                   (lambda (_%bind123940%_ _%phi123941%_ _%ctx123942%_)
                     (let ((_%name123944%_ '#f))
                       (_%make-export__126956126957%_
                        _%bind123940%_
                        _%phi123941%_
                        _%ctx123942%_
                        _%name123944%_))))
                  (_%make-export123458%_
                   (lambda _g127030_
                     (let ((_g127029_ (##length _g127030_)))
                       (cond ((##fx= _g127029_ 1)
                              (apply _%make-export__0__126958126961%_
                                     _g127030_))
                             ((##fx= _g127029_ 2)
                              (apply _%make-export__1__126959126962%_
                                     _g127030_))
                             ((##fx= _g127029_ 3)
                              (apply _%make-export__2__126960126963%_
                                     _g127030_))
                             ((##fx= _g127029_ 4)
                              (apply _%make-export__126956126957%_ _g127030_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127030_))))))
                  (_%expand1123459%_
                   (lambda (_%hd123614%_
                            _%K123615%_
                            _%rest123616%_
                            _%r123617%_)
                     (let* ((_%e123618123650%_ _%hd123614%_)
                            (_%E123645123654%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx123455%_
                                _%hd123614%_)))
                            (_%E123635123738%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123618123650%_)
                                   (let ((_%e123646123658%_
                                          (gx#syntax-e _%e123618123650%_)))
                                     (let ((_%hd123647123661%_
                                            (##car _%e123646123658%_))
                                           (_%tl123648123663%_
                                            (##cdr _%e123646123658%_)))
                                       (if (eq? (gx#stx-e _%hd123647123661%_)
                                                'import:)
                                           (let ((_%in123666%_
                                                  _%tl123648123663%_))
                                             (if (gx#stx-list? _%in123666%_)
                                                 (let _%lp123668%_ ((_%in-rest123670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in123666%_)
                            (_%r123671%_ _%r123617%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e123672123679%_
                                                           _%in-rest123670%_)
                                                          (_%E123674123683%_
                                                           (lambda ()
                                                             (_%K123615%_
                                                              _%rest123616%_
                                                              _%r123671%_)))
                                                          (_%E123673123734%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e123672123679%_)
                         (let ((_%e123675123687%_
                                (gx#syntax-e _%e123672123679%_)))
                           (let ((_%hd123676123690%_ (##car _%e123675123687%_))
                                 (_%tl123677123692%_
                                  (##cdr _%e123675123687%_)))
                             (let* ((_%hd123695%_ _%hd123676123690%_)
                                    (_%in-rest123697%_ _%tl123677123692%_))
                               (if '#t
                                   (let ((_%src123732%_
                                          (if (gx#core-bound-module?
                                               _%hd123695%_)
                                              (gx#syntax-local-e__0
                                               _%hd123695%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd123695%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd123695%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd123695%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd123695%_))
                                                      (if (gx#stx-string?
                                                           _%hd123695%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd123695%_
                                                            (gx#stx-source
                                                             _%stx123455%_)))
                                                          (let* ((_%e123703123710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123695%_)
                         (_%E123705123714%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx123455%_
                             _%hd123695%_)))
                         (_%E123704123728%_
                          (lambda ()
                            (if (gx#stx-pair? _%e123703123710%_)
                                (let ((_%e123706123718%_
                                       (gx#syntax-e _%e123703123710%_)))
                                  (let ((_%hd123707123721%_
                                         (##car _%e123706123718%_))
                                        (_%tl123708123723%_
                                         (##cdr _%e123706123718%_)))
                                    (if (eq? (gx#stx-e _%hd123707123721%_)
                                             'in:)
                                        (let ((_%spath123726%_
                                               _%tl123708123723%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath123726%_
                                               _%stx123455%_)
                                              (_%E123705123714%_)))
                                        (_%E123705123714%_))))
                                (_%E123705123714%_)))))
                    (_%E123704123728%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp123668%_
                                      _%in-rest123697%_
                                      (_%export-imports123460%_
                                       _%src123732%_
                                       _%r123671%_)))
                                   (_%E123674123683%_)))))
                         (_%E123674123683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E123673123734%_)))
                                                 (_%E123645123654%_)))
                                           (_%E123645123654%_))))
                                   (_%E123645123654%_))))
                            (_%E123622123778%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123618123650%_)
                                   (let ((_%e123636123742%_
                                          (gx#syntax-e _%e123618123650%_)))
                                     (let ((_%hd123637123745%_
                                            (##car _%e123636123742%_))
                                           (_%tl123638123747%_
                                            (##cdr _%e123636123742%_)))
                                       (if (eq? (gx#stx-e _%hd123637123745%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl123638123747%_)
                                               (let ((_%e123639123750%_
                                                      (gx#syntax-e
                                                       _%tl123638123747%_)))
                                                 (let ((_%hd123640123753%_
                                                        (##car _%e123639123750%_))
                                                       (_%tl123641123755%_
                                                        (##cdr _%e123639123750%_)))
                                                   (let ((_%id123758%_
                                                          _%hd123640123753%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123641123755%_)
                                                         (let ((_%e123642123760%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123641123755%_)))
                   (let ((_%hd123643123763%_ (##car _%e123642123760%_))
                         (_%tl123644123765%_ (##cdr _%e123642123760%_)))
                     (let ((_%name123768%_ _%hd123643123763%_))
                       (if (gx#stx-null? _%tl123644123765%_)
                           (if '#t
                               (let* ((_%phi123770%_
                                       (gx#current-export-expander-phi))
                                      (_%$e123772%_
                                       (gx#core-resolve-identifier__1
                                        _%id123758%_
                                        _%phi123770%_)))
                                 (if _%$e123772%_
                                     ((lambda (_%bind123775%_)
                                        (_%K123615%_
                                         _%rest123616%_
                                         (cons (_%make-export__126956126957%_
                                                _%bind123775%_
                                                _%phi123770%_
                                                (gx#current-expander-context)
                                                _%name123768%_)
                                               _%r123617%_)))
                                      _%$e123772%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx123455%_
                                      _%hd123614%_
                                      _%id123758%_)))
                               (_%E123635123738%_))
                           (_%E123635123738%_)))))
                 (_%E123635123738%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123635123738%_))
                                           (_%E123635123738%_))))
                                   (_%E123635123738%_))))
                            (_%E123621123828%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123618123650%_)
                                   (let ((_%e123623123782%_
                                          (gx#syntax-e _%e123618123650%_)))
                                     (let ((_%hd123624123785%_
                                            (##car _%e123623123782%_))
                                           (_%tl123625123787%_
                                            (##cdr _%e123623123782%_)))
                                       (if (eq? (gx#stx-e _%hd123624123785%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl123625123787%_)
                                               (let ((_%e123626123790%_
                                                      (gx#syntax-e
                                                       _%tl123625123787%_)))
                                                 (let ((_%hd123627123793%_
                                                        (##car _%e123626123790%_))
                                                       (_%tl123628123795%_
                                                        (##cdr _%e123626123790%_)))
                                                   (let ((_%phi123798%_
                                                          _%hd123627123793%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123628123795%_)
                                                         (let ((_%e123629123800%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123628123795%_)))
                   (let ((_%hd123630123803%_ (##car _%e123629123800%_))
                         (_%tl123631123805%_ (##cdr _%e123629123800%_)))
                     (let ((_%id123808%_ _%hd123630123803%_))
                       (if (gx#stx-pair? _%tl123631123805%_)
                           (let ((_%e123632123810%_
                                  (gx#syntax-e _%tl123631123805%_)))
                             (let ((_%hd123633123813%_
                                    (##car _%e123632123810%_))
                                   (_%tl123634123815%_
                                    (##cdr _%e123632123810%_)))
                               (let ((_%name123818%_ _%hd123633123813%_))
                                 (if (gx#stx-null? _%tl123634123815%_)
                                     (if (and (gx#stx-fixnum? _%phi123798%_)
                                              (gx#identifier? _%id123808%_)
                                              (gx#identifier? _%name123818%_))
                                         (let* ((_%phi123820%_
                                                 (gx#stx-e _%phi123798%_))
                                                (_%$e123822%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id123808%_
                                                  _%phi123820%_)))
                                           (if _%$e123822%_
                                               ((lambda (_%bind123825%_)
                                                  (_%K123615%_
                                                   _%rest123616%_
                                                   (cons (_%make-export__126956126957%_
                                                          _%bind123825%_
                                                          _%phi123820%_
                                                          (gx#current-expander-context)
                                                          _%name123818%_)
                                                         _%r123617%_)))
                                                _%$e123822%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx123455%_
                                                _%hd123614%_
                                                _%id123808%_)))
                                         (_%E123622123778%_))
                                     (_%E123622123778%_)))))
                           (_%E123622123778%_)))))
                 (_%E123622123778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123622123778%_))
                                           (_%E123622123778%_))))
                                   (_%E123622123778%_))))
                            (_%E123620123840%_
                             (lambda ()
                               (let ((_%id123832%_ _%e123618123650%_))
                                 (if (gx#identifier? _%id123832%_)
                                     (let ((_%$e123834%_
                                            (gx#core-resolve-identifier__1
                                             _%id123832%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e123834%_
                                           ((lambda (_%bind123837%_)
                                              (_%K123615%_
                                               _%rest123616%_
                                               (cons (_%make-export__0__126958126961%_
                                                      _%bind123837%_)
                                                     _%r123617%_)))
                                            _%$e123834%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx123455%_
                                            _%hd123614%_)))
                                     (_%E123621123828%_)))))
                            (_%E123619123904%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e123618123650%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx123844%_
                                               (gx#current-expander-context))
                                              (_%current-phi123846%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx123848%_
                                               (gx#core-context-shift
                                                _%current-ctx123844%_
                                                _%current-phi123846%_))
                                              (_%phi-bind123850%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx123848%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp123853%_ ((_%bind-rest123855%_
                                                             _%phi-bind123850%_)
                                                            (_%set123856%_
                                                             '()))
                                           (let* ((_%bind-rest123857123867%_
                                                   _%bind-rest123855%_)
                                                  (_%else123859123875%_
                                                   (lambda ()
                                                     (_%K123615%_
                                                      _%rest123616%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi123846%_
                                                             _%set123856%_)
                                                            _%r123617%_))))
                                                  (_%K123861123885%_
                                                   (lambda (_%bind-rest123878%_
                                                            _%bind123879%_
                                                            _%key123880%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind123879%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind123879%_))
                                                         (_%lp123853%_
                                                          _%bind-rest123878%_
                                                          _%set123856%_)
                                                         (_%lp123853%_
                                                          _%bind-rest123878%_
                                                          (cons (_%make-export__2__126960126963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind123879%_
                         _%current-phi123846%_
                         _%current-ctx123844%_)
                        _%set123856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest123857123867%_)
                                                 (let ((_%hd123862123888%_
                                                        (##car _%bind-rest123857123867%_))
                                                       (_%tl123863123890%_
                                                        (##cdr _%bind-rest123857123867%_)))
                                                   (if (##pair? _%hd123862123888%_)
                                                       (let ((_%hd123864123893%_
                                                              (##car _%hd123862123888%_))
                                                             (_%tl123865123895%_
                                                              (##cdr _%hd123862123888%_)))
                                                         (let* ((_%key123898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd123864123893%_)
                        (_%bind123900%_ _%tl123865123895%_)
                        (_%bind-rest123902%_ _%tl123863123890%_))
                   (_%K123861123885%_
                    _%bind-rest123902%_
                    _%bind123900%_
                    _%key123898%_)))
               (_%else123859123875%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else123859123875%_)))))
                                       (_%E123620123840%_))
                                   (_%E123620123840%_)))))
                       (_%E123619123904%_))))
                  (_%export-imports123460%_
                   (lambda (_%src123490%_ _%r123491%_)
                     (letrec* ((_%current-ctx123493%_
                                (gx#current-expander-context))
                               (_%current-phi123494%_
                                (gx#current-export-expander-phi))
                               (_%import->export123495%_
                                (lambda (_%in123576%_)
                                  (let* ((_%in123577123585%_ _%in123576%_)
                                         (_%E123579123589%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in123577123585%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K123580123596%_
                                          (lambda (_%phi123592%_
                                                   _%key123593%_
                                                   _%out123594%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx123493%_
                                             _%key123593%_
                                             _%phi123592%_
                                             _%key123593%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in123577123585%_
                                         'gx#module-import::t)
                                        (let* ((_%e123581123599%_
                                                (##unchecked-structure-ref
                                                 _%in123577123585%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out123602%_
                                                _%e123581123599%_)
                                               (_%e123582123604%_
                                                (##unchecked-structure-ref
                                                 _%in123577123585%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key123607%_
                                                _%e123582123604%_)
                                               (_%e123583123609%_
                                                (##unchecked-structure-ref
                                                 _%in123577123585%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi123612%_
                                                _%e123583123609%_))
                                          (_%K123580123596%_
                                           _%phi123612%_
                                           _%key123607%_
                                           _%out123602%_))
                                        (_%E123579123589%_)))))
                               (_%fold-e123496%_
                                (lambda (_%in123498%_ _%r123499%_)
                                  (let* ((_%in123500123514%_ _%in123498%_)
                                         (_%else123503123522%_
                                          (lambda () _%r123499%_)))
                                    (let ((_%K123509123558%_
                                           (lambda (_%phi123554%_
                                                    _%key123555%_
                                                    _%out123556%_)
                                             (if (and (fx= _%phi123554%_
                                                           _%current-phi123494%_)
                                                      (eq? _%src123490%_
                                                           (##unchecked-structure-ref
                                                            _%out123556%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export123495%_
                                                        _%in123498%_)
                                                       _%r123499%_)
                                                 _%r123499%_)))
                                          (_%K123505123533%_
                                           (lambda (_%imports123526%_
                                                    _%phi123527%_
                                                    _%ctx123528%_)
                                             (if (and (fx= _%phi123527%_
                                                           _%current-phi123494%_)
                                                      (eq? _%src123490%_
                                                           _%ctx123528%_))
                                                 (__foldl1
                                                  (lambda (_%in123530%_
                                                           _%r123531%_)
                                                    (cons (_%import->export123495%_
                                                           _%in123530%_)
                                                          _%r123531%_))
                                                  _%r123499%_
                                                  _%imports123526%_)
                                                 _%r123499%_))))
                                      (let ((_%try-match123502123551%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in123500123514%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e123506123536%_
                                                           (##unchecked-structure-ref
                                                            _%in123500123514%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e123507123541%_
                                                           (##unchecked-structure-ref
                                                            _%in123500123514%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e123508123546%_
                                                           (##unchecked-structure-ref
                                                            _%in123500123514%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx123539%_
                                                            _%e123506123536%_)
                                                           (_%phi123544%_
                                                            _%e123507123541%_)
                                                           (_%imports123549%_
                                                            _%e123508123546%_))
                                                       (_%K123505123533%_
                                                        _%imports123549%_
                                                        _%phi123544%_
                                                        _%ctx123539%_)))
                                                   (_%else123503123522%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in123500123514%_
                                             'gx#module-import::t)
                                            (let* ((_%e123510123561%_
                                                    (##unchecked-structure-ref
                                                     _%in123500123514%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e123511123566%_
                                                    (##unchecked-structure-ref
                                                     _%in123500123514%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e123512123571%_
                                                    (##unchecked-structure-ref
                                                     _%in123500123514%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out123564%_
                                                     _%e123510123561%_)
                                                    (_%key123569%_
                                                     _%e123511123566%_)
                                                    (_%phi123574%_
                                                     _%e123512123571%_))
                                                (_%K123509123558%_
                                                 _%phi123574%_
                                                 _%key123569%_
                                                 _%out123564%_)))
                                            (_%try-match123502123551%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src123490%_
                              _%current-phi123494%_
                              (__foldl1
                               _%fold-e123496%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx123493%_
                                '8
                                '#f
                                '#f)))
                             _%r123491%_))))
                  (_%export!123461%_
                   (lambda (_%rbody123477%_)
                     (letrec* ((_%current-ctx123479%_
                                (gx#current-expander-context))
                               (_%fold-e123480%_
                                (lambda (_%out123484%_ _%r123485%_)
                                  (if (##structure-direct-instance-of?
                                       _%out123484%_
                                       'gx#module-export::t)
                                      (cons _%out123484%_ _%r123485%_)
                                      (if (##structure-direct-instance-of?
                                           _%out123484%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r123485%_
                                           (##unchecked-structure-ref
                                            _%out123484%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r123485%_)))))
                       (let ((_%body123482%_ (reverse _%rbody123477%_)))
                         (##unchecked-structure-set!
                          _%current-ctx123479%_
                          (__foldl1
                           _%fold-e123480%_
                           (##unchecked-structure-ref
                            _%current-ctx123479%_
                            '9
                            '#f
                            '#f)
                           _%body123482%_)
                          '9
                          '#f
                          '#f)
                         _%body123482%_))))
                  (_%expanded-export?123462%_
                   (lambda (_%e123472%_)
                     (let ((_%$e123474%_
                            (##structure-direct-instance-of?
                             _%e123472%_
                             'gx#module-export::t)))
                       (if _%$e123474%_
                           _%$e123474%_
                           (##structure-direct-instance-of?
                            _%e123472%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?123456%_)
              (let ((_%rbody123468%_
                     (gx#core-expand-import/export
                      _%stx123455%_
                      _%expanded-export?123462%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1123459%_)))
                (if _%internal-expand?123456%_
                    (reverse _%rbody123468%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!123461%_ _%rbody123468%_))
                     (gx#stx-source _%stx123455%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx123455%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx123455%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx123954%_)
        (let ((_%internal-expand?123956%_ '#f))
          (gx#core-expand-export%__%
           _%stx123954%_
           _%internal-expand?123956%_))))
    (define gx#core-expand-export%
      (lambda _g127032_
        (let ((_g127031_ (##length _g127032_)))
          (cond ((##fx= _g127031_ 1)
                 (apply gx#core-expand-export%__0 _g127032_))
                ((##fx= _g127031_ 2)
                 (apply gx#core-expand-export%__% _g127032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127032_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd123452%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd123452%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx123422%_)
        (let* ((_%e123423123430%_ _%stx123422%_)
               (_%E123425123434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123423123430%_)))
               (_%E123424123448%_
                (lambda ()
                  (if (gx#stx-pair? _%e123423123430%_)
                      (let ((_%e123426123438%_
                             (gx#syntax-e _%e123423123430%_)))
                        (let ((_%hd123427123441%_ (##car _%e123426123438%_))
                              (_%tl123428123443%_ (##cdr _%e123426123438%_)))
                          (let ((_%body123446%_ _%tl123428123443%_))
                            (if (gx#identifier-list? _%body123446%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body123446%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body123446%_))
                                   (gx#stx-source _%stx123422%_)))
                                (_%E123425123434%_)))))
                      (_%E123425123434%_)))))
          (_%E123424123448%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id123388%_ _%private?123389%_ _%phi123390%_ _%ctx123391%_)
        (gx#core-bind-syntax!__%
         _%id123388%_
         ((if _%private?123389%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id123388%_))
         _%private?123389%_
         _%phi123390%_
         _%ctx123391%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id123396%_)
        (let* ((_%private?123398%_ '#f)
               (_%phi123400%_ (gx#current-expander-phi))
               (_%ctx123402%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123396%_
           _%private?123398%_
           _%phi123400%_
           _%ctx123402%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id123404%_ _%private?123405%_)
        (let* ((_%phi123407%_ (gx#current-expander-phi))
               (_%ctx123409%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123404%_
           _%private?123405%_
           _%phi123407%_
           _%ctx123409%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id123411%_ _%private?123412%_ _%phi123413%_)
        (let ((_%ctx123415%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123411%_
           _%private?123412%_
           _%phi123413%_
           _%ctx123415%_))))
    (define gx#core-bind-feature!
      (lambda _g127034_
        (let ((_g127033_ (##length _g127034_)))
          (cond ((##fx= _g127033_ 1)
                 (apply gx#core-bind-feature!__0 _g127034_))
                ((##fx= _g127033_ 2)
                 (apply gx#core-bind-feature!__1 _g127034_))
                ((##fx= _g127033_ 3)
                 (apply gx#core-bind-feature!__2 _g127034_))
                ((##fx= _g127033_ 4)
                 (apply gx#core-bind-feature!__% _g127034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127034_))))))))
