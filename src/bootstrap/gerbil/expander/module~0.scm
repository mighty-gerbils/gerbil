(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712251112)
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
      (lambda _%$args125720%_
        (apply make-instance gx#module-import::t _%$args125720%_)))
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
      (lambda _%$args125717%_
        (apply make-instance gx#module-export::t _%$args125717%_)))
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
      (lambda _%$args125714%_
        (apply make-instance gx#import-set::t _%$args125714%_)))
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
      (lambda _%$args125711%_
        (apply make-instance gx#export-set::t _%$args125711%_)))
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
      (lambda _%$args125708%_
        (apply make-instance gx#import-expander::t _%$args125708%_)))
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
      (lambda _%$args125705%_
        (apply make-instance gx#export-expander::t _%$args125705%_)))
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
      (lambda _%$args125702%_
        (apply make-instance gx#import-export-expander::t _%$args125702%_)))
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
      (lambda (_%path125699%_ _%fun125700%_)
        (call-with-input-file
         (cons 'path: (cons _%path125699%_ gx#source-file-settings))
         _%fun125700%_)))
    (define gx#module-context:::init!
      (lambda (_%self125682%_
               _%id125683%_
               _%super125684%_
               _%ns125685%_
               _%path125686%_)
        (let ((_%self125689%_ _%self125682%_))
          (if (##fx< '11 (##structure-length _%self125689%_))
              (begin
                (##unchecked-structure-set!
                 _%self125689%_
                 _%id125683%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125689%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125689%_
                 _%super125684%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125689%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125689%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125689%_
                 _%ns125685%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125689%_
                 _%path125686%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125689%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125689%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125689%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125689%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125689%_
                     '11
                     (##vector-length _%self125689%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125515%_ _%ctx125516%_ _%root125517%_)
        (let ()
          (let* ((_%self125520%_ _%self125515%_)
                 (_%super125536%_
                  (let ((_%$e125530%_ _%root125517%_))
                    (if _%$e125530%_
                        _%$e125530%_
                        (let ((_%$e125533%_ (gx#core-context-root__0)))
                          (if _%$e125533%_
                              _%$e125533%_
                              (let ((__obj125764
                                     (##structure gx#root-context::t '#f '#f)))
                                (let ((__constructor125765
                                       (direct-method-ref
                                        gx#root-context::t
                                        __obj125764
                                        ':init!)))
                                  (if __constructor125765
                                      (__constructor125765 __obj125764)
                                      (error '"missing constructor method implementation"
                                             'class:
                                             gx#root-context::t
                                             'method:
                                             ':init!)))
                                __obj125764)))))))
            (if _%ctx125516%_
                (let ((_%id125539%_
                       (##structure-ref
                        _%ctx125516%_
                        '1
                        gx#expander-context::t
                        '#f))
                      (_%path125540%_
                       (##structure-ref
                        _%ctx125516%_
                        '7
                        gx#module-context::t
                        '#f))
                      (_%in125541%_
                       (map gx#core-module-export->import
                            (##structure-ref
                             _%ctx125516%_
                             '9
                             gx#module-context::t
                             '#f)))
                      (_%e125542%_
                       (__make-promise
                        (lambda () (gx#eval-module _%ctx125516%_)))))
                  (if (##fx< '8 (##structure-length _%self125520%_))
                      (begin
                        (##unchecked-structure-set!
                         _%self125520%_
                         _%id125539%_
                         '1
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125520%_
                         (make-hash-table-eq 'size: (##length _%in125541%_))
                         '2
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125520%_
                         _%super125536%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125520%_
                         '#f
                         '4
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125520%_
                         '#f
                         '5
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125520%_
                         _%path125540%_
                         '6
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125520%_
                         _%in125541%_
                         '7
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125520%_
                         _%e125542%_
                         '8
                         '#f
                         '#f)
                        '#!void)
                      (error '"struct-instance-init!: too many arguments for struct"
                             _%self125520%_
                             '8
                             (##vector-length _%self125520%_)))
                  (##for-each
                   (lambda (_%g125543125545%_)
                     (gx#core-bind-weak-import!__%
                      _%g125543125545%_
                      _%self125520%_))
                   _%in125541%_))
                (if (##fx< '8 (##structure-length _%self125520%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125520%_
                       '#f
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125520%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125520%_
                       _%super125536%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125520%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125520%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125520%_
                       '#f
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125520%_
                       '()
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125520%_
                       '#f
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125520%_
                           '8
                           (##vector-length _%self125520%_))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125551%_ _%ctx125552%_)
        (let ((_%root125554%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125551%_
           _%ctx125552%_
           _%root125554%_))))
    (define gx#prelude-context:::init!
      (lambda _g125771_
        (let ((_g125770_ (##length _g125771_)))
          (cond ((##fx= _g125770_ 2)
                 (apply (lambda (_%self125551%_ _%ctx125552%_)
                          (gx#prelude-context:::init!__0
                           _%self125551%_
                           _%ctx125552%_))
                        _g125771_))
                ((##fx= _g125770_ 3)
                 (apply (lambda (_%self125556%_ _%ctx125557%_ _%root125558%_)
                          (gx#prelude-context:::init!__%
                           _%self125556%_
                           _%ctx125557%_
                           _%root125558%_))
                        _g125771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125771_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125389%_ _%e125390%_)
        (if (##fx< '3 (##structure-length _%self125389%_))
            (begin
              (##unchecked-structure-set!
               _%self125389%_
               _%e125390%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125389%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125389%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125389%_
                   '3
                   (##vector-length _%self125389%_)))))
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
      (lambda (_%g125015125018%_ _%g125016125020%_)
        (gx#core-apply-user-expander__%
         _%g125015125018%_
         _%g125016125020%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124886124889%_ _%g124887124891%_)
        (gx#core-apply-user-expander__%
         _%g124886124889%_
         _%g124887124891%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124757%_)
        (let* ((_%path124759%_
                (##structure-ref _%ctx124757%_ '7 gx#module-context::t '#f))
               (_%path124761%_
                (if (pair? _%path124759%_)
                    (last _%path124759%_)
                    _%path124759%_)))
          (if (string? _%path124761%_) _%path124761%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124733%_ _%reload?124734%_ _%eval?124735%_)
        (let ((_%ctx124737%_
               ((gx#current-expander-module-import)
                _%path124733%_
                _%reload?124734%_)))
          (if (and _%ctx124737%_ _%eval?124735%_)
              (gx#eval-module _%ctx124737%_)
              '#!void)
          _%ctx124737%_)))
    (define gx#import-module__0
      (lambda (_%path124742%_)
        (let* ((_%reload?124744%_ '#f) (_%eval?124746%_ '#f))
          (gx#import-module__%
           _%path124742%_
           _%reload?124744%_
           _%eval?124746%_))))
    (define gx#import-module__1
      (lambda (_%path124748%_ _%reload?124749%_)
        (let ((_%eval?124751%_ '#f))
          (gx#import-module__%
           _%path124748%_
           _%reload?124749%_
           _%eval?124751%_))))
    (define gx#import-module
      (lambda _g125773_
        (let ((_g125772_ (##length _g125773_)))
          (cond ((##fx= _g125772_ 1)
                 (apply (lambda (_%path124742%_)
                          (gx#import-module__0 _%path124742%_))
                        _g125773_))
                ((##fx= _g125772_ 2)
                 (apply (lambda (_%path124748%_ _%reload?124749%_)
                          (gx#import-module__1
                           _%path124748%_
                           _%reload?124749%_))
                        _g125773_))
                ((##fx= _g125772_ 3)
                 (apply (lambda (_%path124753%_
                                 _%reload?124754%_
                                 _%eval?124755%_)
                          (gx#import-module__%
                           _%path124753%_
                           _%reload?124754%_
                           _%eval?124755%_))
                        _g125773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125773_))))))
    (define gx#eval-module
      (lambda (_%mod124730%_)
        ((gx#current-expander-module-eval) _%mod124730%_)))
    (define gx#core-eval-module
      (lambda (_%obj124710%_)
        (letrec ((_%force-e124712%_
                  (lambda (_%getf124726%_ _%e124727%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124726%_ _%e124727%_)))
                     gx#current-expander-context
                     _%e124727%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124714%_ ((_%e124716%_ _%obj124710%_))
            (if (##structure-instance-of? _%e124716%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124719%_
                         (gx#core-context-prelude__% _%e124716%_)))
                    (if _%$e124719%_ (_%recur124714%_ _%$e124719%_) '#!void))
                  (_%force-e124712%_ gx#module-context-e _%e124716%_))
                (if (##structure-instance-of?
                     _%e124716%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124712%_ gx#prelude-context-e _%e124716%_))
                    (if (gx#stx-string? _%e124716%_)
                        (let ()
                          (_%recur124714%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124716%_))))
                        (if (gx#core-library-module-path? _%e124716%_)
                            (let ()
                              (_%recur124714%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124716%_))))
                            (let ()
                              (error '"cannot eval module"
                                     _%obj124710%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124690%_)
        (let _%lp124692%_ ((_%e124694%_ _%ctx124690%_))
          (if (or (##structure-instance-of? _%e124694%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124694%_ 'gx#local-context::t))
              (let ()
                (_%lp124692%_
                 (##unchecked-structure-ref _%e124694%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124694%_ 'gx#prelude-context::t)
                  (let () _%e124694%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124706%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124706%_))))
    (define gx#core-context-prelude
      (lambda _g125775_
        (let ((_g125774_ (##length _g125775_)))
          (cond ((##fx= _g125774_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125775_))
                ((##fx= _g125774_ 1)
                 (apply (lambda (_%ctx124708%_)
                          (gx#core-context-prelude__% _%ctx124708%_))
                        _g125775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125775_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124681%_)
        (let ((_%$e124683%_ (hash-get gx#__module-registry _%ctx124681%_)))
          (if _%$e124683%_
              _%$e124683%_
              (let ((_%pre124687%_
                     (let ((__obj125766
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
                       (gx#prelude-context:::init! __obj125766 _%ctx124681%_)
                       __obj125766)))
                (hash-put! gx#__module-registry _%ctx124681%_ _%pre124687%_)
                _%pre124687%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124553%_ _%reload?124554%_)
        (letrec ((_%import-source124556%_
                  (lambda (_%path124645%_)
                    (if (member _%path124645%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124645%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125776_ (gx#core-read-module _%path124645%_)))
                         (begin
                           (let ((_g125777_
                                  (if (##values? _g125776_)
                                      (##vector-length _g125776_)
                                      1)))
                             (if (not (##fx= _g125777_ 4))
                                 (error "Context expects 4 values" _g125777_)))
                           (let ((_%pre124648%_ (##vector-ref _g125776_ 0))
                                 (_%id124649%_ (##vector-ref _g125776_ 1))
                                 (_%ns124650%_ (##vector-ref _g125776_ 2))
                                 (_%body124651%_ (##vector-ref _g125776_ 3)))
                             (let* ((_%prelude124661%_
                                     (if (##structure-instance-of?
                                          _%pre124648%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124648%_)
                                         (if (##structure-instance-of?
                                              _%pre124648%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124648%_))
                                             (if (string? _%pre124648%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124648%_)))
                                                 (if (not _%pre124648%_)
                                                     (let ((_%$e124657%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124657%_
                                                           _%$e124657%_
                                                           (let ((__obj125767
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
                     (gx#prelude-context:::init! __obj125767 '#f)
                     __obj125767)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"cannot import module; unknown prelude"
                                                              _%rpath124553%_
                                                              _%pre124648%_)))))))
                                    (_%ctx124663%_
                                     (let ((__obj125768
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
                                        __obj125768
                                        _%id124649%_
                                        _%prelude124661%_
                                        _%ns124650%_
                                        _%path124645%_)
                                       __obj125768))
                                    (_%body124665%_
                                     (gx#core-expand-module-begin
                                      _%body124651%_
                                      _%ctx124663%_))
                                    (_%body124667%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124665%_)
                                      _%path124645%_
                                      _%ctx124663%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124663%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124667%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124663%_
                                _%body124667%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124645%_
                                _%ctx124663%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124649%_
                                _%ctx124663%_)
                               _%ctx124663%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124645%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124557%_
                  (lambda (_%rpath124573%_)
                    (let* ((_%rpath124574124581%_ _%rpath124573%_)
                           (_%E124576124585%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124574124581%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124577124633%_
                            (lambda (_%refs124588%_ _%origin124589%_)
                              (let ((_%ctx124591%_
                                     (if _%origin124589%_
                                         (gx#core-import-module__%
                                          _%origin124589%_
                                          _%reload?124554%_)
                                         (gx#current-expander-context))))
                                (let _%lp124593%_ ((_%rest124595%_
                                                    _%refs124588%_)
                                                   (_%ctx124596%_
                                                    _%ctx124591%_))
                                  (let* ((_%rest124597124605%_ _%rest124595%_)
                                         (_%else124599124613%_
                                          (lambda () _%ctx124596%_))
                                         (_%K124601124621%_
                                          (lambda (_%rest124616%_ _%id124617%_)
                                            (let ((_%bind124619%_
                                                   (gx#resolve-identifier__%
                                                    _%id124617%_
                                                    '0
                                                    _%ctx124596%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124619%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124619%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124593%_
                                                   _%rest124616%_
                                                   (##unchecked-structure-ref
                                                    _%bind124619%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124573%_
                                                         _%id124617%_
                                                         _%bind124619%_))))))
                                    (if (##pair? _%rest124597124605%_)
                                        (let ((_%hd124602124624%_
                                               (##car _%rest124597124605%_))
                                              (_%tl124603124626%_
                                               (##cdr _%rest124597124605%_)))
                                          (let* ((_%id124629%_
                                                  _%hd124602124624%_)
                                                 (_%rest124631%_
                                                  _%tl124603124626%_))
                                            (_%K124601124621%_
                                             _%rest124631%_
                                             _%id124629%_)))
                                        (_%else124599124613%_))))))))
                      (if (##pair? _%rpath124574124581%_)
                          (let ((_%hd124578124636%_
                                 (##car _%rpath124574124581%_))
                                (_%tl124579124638%_
                                 (##cdr _%rpath124574124581%_)))
                            (let* ((_%origin124641%_ _%hd124578124636%_)
                                   (_%refs124643%_ _%tl124579124638%_))
                              (_%K124577124633%_
                               _%refs124643%_
                               _%origin124641%_)))
                          (_%E124576124585%_))))))
          (let ((_%$e124559%_
                 (if (not _%reload?124554%_)
                     (hash-get gx#__module-registry _%rpath124553%_)
                     '#f)))
            (if _%$e124559%_
                _%$e124559%_
                (if (list? _%rpath124553%_)
                    (let () (_%import-submodule124557%_ _%rpath124553%_))
                    (if (gx#core-library-module-path? _%rpath124553%_)
                        (let ((_%ctx124564%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124553%_)
                                _%reload?124554%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124553%_
                           _%ctx124564%_)
                          _%ctx124564%_)
                        (let ()
                          (let* ((_%npath124567%_
                                  (path-normalize _%rpath124553%_))
                                 (_%$e124569%_
                                  (if (not _%reload?124554%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath124567%_)
                                      '#f)))
                            (if _%$e124569%_
                                _%$e124569%_
                                (let ()
                                  (_%import-source124556%_
                                   _%npath124567%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124674%_)
        (let ((_%reload?124676%_ '#f))
          (gx#core-import-module__% _%rpath124674%_ _%reload?124676%_))))
    (define gx#core-import-module
      (lambda _g125779_
        (let ((_g125778_ (##length _g125779_)))
          (cond ((##fx= _g125778_ 1)
                 (apply (lambda (_%rpath124674%_)
                          (gx#core-import-module__0 _%rpath124674%_))
                        _g125779_))
                ((##fx= _g125778_ 2)
                 (apply (lambda (_%rpath124678%_ _%reload?124679%_)
                          (gx#core-import-module__%
                           _%rpath124678%_
                           _%reload?124679%_))
                        _g125779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125779_))))))
    (define gx#core-read-module
      (lambda (_%path124542%_)
        (__with-catch
         (lambda (_%exn124544%_)
           (if (and (datum-parsing-exception? _%exn124544%_)
                    (eq? (datum-parsing-exception-filepos _%exn124544%_) '0))
               (gx#core-read-module/lang _%path124542%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124542%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124546124548%_)
                      (display-exception _%exn124544%_ _%g124546124548%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124542%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124394%_)
        (let _%lp124396%_ ((_%body124398%_
                            (read-syntax-from-file _%path124394%_))
                           (_%pre124399%_ '#f)
                           (_%ns124400%_ '#f)
                           (_%pkg124401%_ '#f))
          (let* ((_%e124402124426%_ _%body124398%_)
                 (_%E124418124452%_
                  (lambda ()
                    (let ((_g125780_
                           (if _%pkg124401%_
                               (values _%pre124399%_
                                       _%ns124400%_
                                       _%pkg124401%_)
                               (gx#core-read-module-package
                                _%path124394%_
                                _%pre124399%_
                                _%ns124400%_))))
                      (begin
                        (let ((_g125781_
                               (if (##values? _g125780_)
                                   (##vector-length _g125780_)
                                   1)))
                          (if (not (##fx= _g125781_ 3))
                              (error "Context expects 3 values" _g125781_)))
                        (let ((_%pre124430%_ (##vector-ref _g125780_ 0))
                              (_%ns124431%_ (##vector-ref _g125780_ 1))
                              (_%pkg124432%_ (##vector-ref _g125780_ 2)))
                          (let* ((_%prelude124438%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124430%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre124430%_))
                                      (if (gx#core-library-module-path?
                                           _%pre124430%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre124430%_))
                                          (if (gx#stx-string? _%pre124430%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre124430%_
                                                 _%path124394%_))
                                              (let ()
                                                (gx#stx-e _%pre124430%_))))))
                                 (_%path-id124440%_
                                  (gx#core-module-path->namespace
                                   _%path124394%_))
                                 (_%pkg-id124442%_
                                  (if _%pkg124432%_
                                      (string-append
                                       _%pkg124432%_
                                       '"/"
                                       _%path-id124440%_)
                                      _%path-id124440%_))
                                 (_%module-id124444%_
                                  (string->symbol _%pkg-id124442%_))
                                 (_%module-ns124449%_
                                  (if (eq? _%ns124431%_ '#!void)
                                      '#f
                                      (let ((_%$e124446%_ _%ns124431%_))
                                        (if _%$e124446%_
                                            _%$e124446%_
                                            _%pkg-id124442%_)))))
                            (values _%prelude124438%_
                                    _%module-id124444%_
                                    _%module-ns124449%_
                                    _%body124398%_)))))))
                 (_%E124411124484%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124402124426%_)
                        (let ((_%e124419124456%_
                               (gx#syntax-e _%e124402124426%_)))
                          (let ((_%hd124420124459%_ (##car _%e124419124456%_))
                                (_%tl124421124461%_ (##cdr _%e124419124456%_)))
                            (if (eq? (gx#stx-e _%hd124420124459%_) 'package:)
                                (if (gx#stx-pair? _%tl124421124461%_)
                                    (let ((_%e124422124464%_
                                           (gx#syntax-e _%tl124421124461%_)))
                                      (let ((_%hd124423124467%_
                                             (##car _%e124422124464%_))
                                            (_%tl124424124469%_
                                             (##cdr _%e124422124464%_)))
                                        (let* ((_%pkg124472%_
                                                _%hd124423124467%_)
                                               (_%rest124474%_
                                                _%tl124424124469%_))
                                          (if '#t
                                              (let ((_%pkg124482%_
                                                     (if (gx#identifier?
                                                          _%pkg124472%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg124472%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124472%_)
                         (gx#stx-false? _%pkg124472%_))
                     (let () (gx#stx-e _%pkg124472%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg124472%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124396%_
                                                 _%rest124474%_
                                                 _%pre124399%_
                                                 _%ns124400%_
                                                 _%pkg124482%_))
                                              (_%E124418124452%_)))))
                                    (_%E124418124452%_))
                                (_%E124418124452%_))))
                        (_%E124418124452%_))))
                 (_%E124404124514%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124402124426%_)
                        (let ((_%e124412124488%_
                               (gx#syntax-e _%e124402124426%_)))
                          (let ((_%hd124413124491%_ (##car _%e124412124488%_))
                                (_%tl124414124493%_ (##cdr _%e124412124488%_)))
                            (if (eq? (gx#stx-e _%hd124413124491%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124414124493%_)
                                    (let ((_%e124415124496%_
                                           (gx#syntax-e _%tl124414124493%_)))
                                      (let ((_%hd124416124499%_
                                             (##car _%e124415124496%_))
                                            (_%tl124417124501%_
                                             (##cdr _%e124415124496%_)))
                                        (let* ((_%ns124504%_
                                                _%hd124416124499%_)
                                               (_%rest124506%_
                                                _%tl124417124501%_))
                                          (if '#t
                                              (let ((_%ns124512%_
                                                     (if (gx#identifier?
                                                          _%ns124504%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns124504%_)))
                                                         (if (gx#stx-string?
                                                              _%ns124504%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns124504%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124504%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns124504%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124396%_
                                                 _%rest124506%_
                                                 _%pre124399%_
                                                 _%ns124512%_
                                                 _%pkg124401%_))
                                              (_%E124411124484%_)))))
                                    (_%E124411124484%_))
                                (_%E124411124484%_))))
                        (_%E124411124484%_))))
                 (_%E124403124538%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124402124426%_)
                        (let ((_%e124405124518%_
                               (gx#syntax-e _%e124402124426%_)))
                          (let ((_%hd124406124521%_ (##car _%e124405124518%_))
                                (_%tl124407124523%_ (##cdr _%e124405124518%_)))
                            (if (eq? (gx#stx-e _%hd124406124521%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124407124523%_)
                                    (let ((_%e124408124526%_
                                           (gx#syntax-e _%tl124407124523%_)))
                                      (let ((_%hd124409124529%_
                                             (##car _%e124408124526%_))
                                            (_%tl124410124531%_
                                             (##cdr _%e124408124526%_)))
                                        (let* ((_%prelude124534%_
                                                _%hd124409124529%_)
                                               (_%rest124536%_
                                                _%tl124410124531%_))
                                          (if '#t
                                              (_%lp124396%_
                                               _%rest124536%_
                                               _%prelude124534%_
                                               _%ns124400%_
                                               _%pkg124401%_)
                                              (_%E124404124514%_)))))
                                    (_%E124404124514%_))
                                (_%E124404124514%_))))
                        (_%E124404124514%_)))))
            (_%E124403124538%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124216%_)
        (letrec ((_%default-read-module-body124218%_
                  (lambda (_%inp124386%_)
                    (let _%lp124388%_ ((_%body124390%_ '()))
                      (let ((_%next124392%_ (read-syntax__% _%inp124386%_)))
                        (if (eof-object? _%next124392%_)
                            (reverse _%body124390%_)
                            (_%lp124388%_
                             (cons _%next124392%_ _%body124390%_)))))))
                 (_%read-body124219%_
                  (lambda (_%inp124304%_
                           _%pre124305%_
                           _%ns124306%_
                           _%pkg124307%_
                           _%args124308%_)
                    (let ((_g125782_
                           (if _%pkg124307%_
                               (values _%pre124305%_
                                       _%ns124306%_
                                       _%pkg124307%_)
                               (gx#core-read-module-package
                                _%path124216%_
                                _%pre124305%_
                                _%ns124306%_))))
                      (begin
                        (let ((_g125783_
                               (if (##values? _g125782_)
                                   (##vector-length _g125782_)
                                   1)))
                          (if (not (##fx= _g125783_ 3))
                              (error "Context expects 3 values" _g125783_)))
                        (let ((_%pre124310%_ (##vector-ref _g125782_ 0))
                              (_%ns124311%_ (##vector-ref _g125782_ 1))
                              (_%pkg124312%_ (##vector-ref _g125782_ 2)))
                          (let* ((_%prelude124314%_
                                  (gx#import-module__0 _%pre124310%_))
                                 (_%read-module-body124369%_
                                  (let ((_%$e124360%_
                                         (__find (lambda (_%e124315124317%_)
                                                   (let* ((_%g124319124329%_
                                                           _%e124315124317%_)
                                                          (_%else124321124337%_
                                                           (lambda () '#f))
                                                          (_%K124323124341%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124319124329%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124324124344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124319124329%_
                          '1
                          '#f
                          '#f))
                        (_%e124325124347%_
                         (##unchecked-structure-ref
                          _%g124319124329%_
                          '2
                          '#f
                          '#f))
                        (_%e124326124350%_
                         (##unchecked-structure-ref
                          _%g124319124329%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124326124350%_ '1)
                       (let ((_%e124327124353%_
                              (##unchecked-structure-ref
                               _%g124319124329%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124355124357%_)
                                (eq? _%g124355124357%_ 'read-module-body))
                              _%e124327124353%_)
                             (_%K124323124341%_)
                             (_%else124321124337%_)))
                       (_%else124321124337%_)))
                 (_%else124321124337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124314%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124360%_
                                        ((lambda (_%xport124363%_)
                                           (let ((_%proc124366%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124363%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124366%_)
                                                 _%proc124366%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124216%_
                                                  _%pre124310%_
                                                  _%proc124366%_))))
                                         _%$e124360%_)
                                        (let ()
                                          _%default-read-module-body124218%_))))
                                 (_%path-id124371%_
                                  (gx#core-module-path->namespace
                                   _%path124216%_))
                                 (_%pkg-id124373%_
                                  (if _%pkg124312%_
                                      (string-append
                                       _%pkg124312%_
                                       '"/"
                                       _%path-id124371%_)
                                      _%path-id124371%_))
                                 (_%module-id124375%_
                                  (string->symbol _%pkg-id124373%_))
                                 (_%module-ns124380%_
                                  (let ((_%$e124377%_ _%ns124311%_))
                                    (if _%$e124377%_
                                        _%$e124377%_
                                        _%pkg-id124373%_)))
                                 (_%body124383%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124369%_
                                      _%inp124304%_))
                                   gx#current-module-reader-path
                                   _%path124216%_
                                   gx#current-module-reader-args
                                   _%args124308%_)))
                            (values _%prelude124314%_
                                    _%module-id124375%_
                                    _%module-ns124380%_
                                    _%body124383%_)))))))
                 (_%string-e124220%_
                  (lambda (_%obj124298%_ _%what124299%_)
                    (if (string? _%obj124298%_)
                        (let () _%obj124298%_)
                        (if (symbol? _%obj124298%_)
                            (let () (symbol->string _%obj124298%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what124299%_)
                               _%path124216%_
                               _%obj124298%_))))))
                 (_%read-lang-args124221%_
                  (lambda (_%inp124253%_ _%args124254%_)
                    (let* ((_%args124255124263%_ _%args124254%_)
                           (_%else124257124271%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124216%_)))
                           (_%K124259124286%_
                            (lambda (_%args124274%_ _%prelude124275%_)
                              (let* ((_%pkg124277%_
                                      (pgetq__0 'package: _%args124274%_))
                                     (_%pkg124279%_
                                      (if _%pkg124277%_
                                          (_%string-e124220%_
                                           _%pkg124277%_
                                           '"package")
                                          '#f))
                                     (_%ns124281%_
                                      (pgetq__0 'namespace: _%args124274%_))
                                     (_%ns124283%_
                                      (if _%ns124281%_
                                          (_%string-e124220%_
                                           _%ns124281%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124219%_
                                 _%inp124253%_
                                 _%prelude124275%_
                                 _%ns124283%_
                                 _%pkg124279%_
                                 _%args124274%_)))))
                      (if (##pair? _%args124255124263%_)
                          (let ((_%hd124260124289%_
                                 (##car _%args124255124263%_))
                                (_%tl124261124291%_
                                 (##cdr _%args124255124263%_)))
                            (let* ((_%prelude124294%_ _%hd124260124289%_)
                                   (_%args124296%_ _%tl124261124291%_))
                              (_%K124259124286%_
                               _%args124296%_
                               _%prelude124294%_)))
                          (_%else124257124271%_)))))
                 (_%read-lang124222%_
                  (lambda (_%inp124227%_)
                    (let* ((_%head124229%_ (read-line _%inp124227%_))
                           (_%$e124231%_
                            (string-index__0 _%head124229%_ '#\space)))
                      (if _%$e124231%_
                          ((lambda (_%ix124234%_)
                             (let ((_%lang124236%_
                                    (substring
                                     _%head124229%_
                                     '0
                                     _%ix124234%_)))
                               (if (equal? _%lang124236%_ '"#lang")
                                   (let* ((_%rest124238%_
                                           (substring
                                            _%head124229%_
                                            (##fx+ _%ix124234%_ '1)
                                            (##string-length _%head124229%_)))
                                          (_%args124249%_
                                           (__with-catch
                                            (lambda (_%g124239124241%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124216%_
                                               _%g124239124241%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124238%_
                                               (lambda (_%g124244124246%_)
                                                 (read-all
                                                  _%g124244124246%_
                                                  read)))))))
                                     (_%read-lang-args124221%_
                                      _%inp124227%_
                                      _%args124249%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124216%_))))
                           _%$e124231%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path124216%_))))))
                 (_%read-e124223%_
                  (lambda (_%inp124225%_)
                    (if (eq? (peek-char _%inp124225%_) '#\#)
                        (_%read-lang124222%_ _%inp124225%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124216%_)))))
          (gx#call-with-input-source-file _%path124216%_ _%read-e124223%_))))
    (define gx#core-read-module-package
      (lambda (_%path124164%_ _%pre124165%_ _%ns124166%_)
        (letrec ((_%string-e124168%_
                  (lambda (_%e124211%_)
                    (if (symbol? _%e124211%_)
                        (let () (symbol->string _%e124211%_))
                        (if (string? _%e124211%_)
                            (let () _%e124211%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e124211%_)))))))
          (let _%lp124170%_ ((_%dir124172%_ (path-directory _%path124164%_))
                             (_%pkg-path124173%_ '()))
            (let ((_%gerbil.pkg124175%_
                   (path-expand '"gerbil.pkg" _%dir124172%_)))
              (if (##file-exists? _%gerbil.pkg124175%_)
                  (let ((_%plist124177%_
                         (gx#core-library-package-plist__% _%dir124172%_ '#t)))
                    (if (null? _%plist124177%_)
                        (let ((_%pkg124180%_
                               (if (not (null? _%pkg-path124173%_))
                                   (string-join _%pkg-path124173%_ '"/")
                                   '#f)))
                          (values _%pre124165%_ _%ns124166%_ _%pkg124180%_))
                        (if (list? _%plist124177%_)
                            (let ()
                              (let* ((_%root124183%_
                                      (pgetq__0 'package: _%plist124177%_))
                                     (_%pkg124187%_
                                      (let ((_%pkg-path124185%_
                                             (if _%root124183%_
                                                 (cons (_%string-e124168%_
                                                        _%root124183%_)
                                                       _%pkg-path124173%_)
                                                 _%pkg-path124173%_)))
                                        (if (not (null? _%pkg-path124185%_))
                                            (string-join
                                             _%pkg-path124185%_
                                             '"/")
                                            '#f)))
                                     (_%ns124194%_
                                      (let ((_%ns124192%_
                                             (let ((_%$e124189%_ _%ns124166%_))
                                               (if _%$e124189%_
                                                   _%$e124189%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist124177%_)))))
                                        (if _%ns124192%_
                                            (_%string-e124168%_ _%ns124192%_)
                                            '#f)))
                                     (_%pre124199%_
                                      (let ((_%$e124196%_ _%pre124165%_))
                                        (if _%$e124196%_
                                            _%$e124196%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist124177%_)))))
                                (values _%pre124199%_
                                        _%ns124194%_
                                        _%pkg124187%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist124177%_)))))
                  (let ((_%dir*124203%_
                         (path-strip-trailing-directory-separator
                          _%dir124172%_)))
                    (if (or (__string-empty? _%dir*124203%_)
                            (equal? _%dir124172%_ _%dir*124203%_))
                        (values _%pre124165%_ _%ns124166%_ '#f)
                        (let ((_%xpath124208%_
                               (path-strip-directory _%dir*124203%_))
                              (_%xdir124209%_ (path-directory _%dir*124203%_)))
                          (_%lp124170%_
                           _%xdir124209%_
                           (cons _%xpath124208%_ _%pkg-path124173%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124162%_)
        (path-strip-extension (path-strip-directory _%path124162%_))))
    (define gx#core-module-path->id
      (lambda (_%path124160%_)
        (##string->symbol (gx#core-module-path->namespace _%path124160%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124139%_ _%rel124140%_)
        (let* ((_%path124142%_ (gx#stx-e _%stx-path124139%_))
               (_%path124144%_
                (if (__string-empty? (path-extension _%path124142%_))
                    (##string-append _%path124142%_ '".ss")
                    _%path124142%_)))
          (gx#core-resolve-path__%
           _%path124144%_
           (let ((_%$e124147%_ (gx#stx-source _%stx-path124139%_)))
             (if _%$e124147%_ _%$e124147%_ _%rel124140%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124153%_)
        (let ((_%rel124155%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124153%_ _%rel124155%_))))
    (define gx#core-resolve-module-path
      (lambda _g125785_
        (let ((_g125784_ (##length _g125785_)))
          (cond ((##fx= _g125784_ 1)
                 (apply (lambda (_%stx-path124153%_)
                          (gx#core-resolve-module-path__0 _%stx-path124153%_))
                        _g125785_))
                ((##fx= _g125784_ 2)
                 (apply (lambda (_%stx-path124157%_ _%rel124158%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path124157%_
                           _%rel124158%_))
                        _g125785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125785_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath124024%_)
        (let* ((_%spath124026%_ (symbol->string (gx#stx-e _%libpath124024%_)))
               (_%spath124028%_
                (substring
                 _%spath124026%_
                 '1
                 (##string-length _%spath124026%_)))
               (_%ext124030%_ (path-extension _%spath124028%_))
               (_%ssi124032%_
                (if (__string-empty? _%ext124030%_)
                    (##string-append _%spath124028%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath124028%_)
                     '".ssi")))
               (_%srcs124036%_
                (if (__string-empty? _%ext124030%_)
                    (##map (lambda (_%ext124034%_)
                             (string-append _%spath124028%_ _%ext124034%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath124028%_ '()))))
          (let _%lp124039%_ ((_%rest124041%_ (load-path)))
            (let* ((_%rest124042124051%_ _%rest124041%_)
                   (_%E124045124055%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest124042124051%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K124047124126%_
                     (lambda (_%rest124066%_ _%dir124067%_)
                       (letrec ((_%resolve124069%_
                                 (lambda (_%ssi124082%_ _%srcs124083%_)
                                   (let ((_%compiled-path124085%_
                                          (path-expand
                                           _%ssi124082%_
                                           _%dir124067%_)))
                                     (if (##file-exists?
                                          _%compiled-path124085%_)
                                         (path-normalize
                                          _%compiled-path124085%_)
                                         (let _%lpr124087%_ ((_%rest-src124089%_
                                                              _%srcs124083%_))
                                           (let* ((_%rest-src124090124098%_
                                                   _%rest-src124089%_)
                                                  (_%else124092124106%_
                                                   (lambda ()
                                                     (_%lp124039%_
                                                      _%rest124066%_)))
                                                  (_%K124094124114%_
                                                   (lambda (_%rest-src124109%_
                                                            _%src124110%_)
                                                     (let ((_%src-path124112%_
                                                            (path-expand
                                                             _%src124110%_
                                                             _%dir124067%_)))
                                                       (if (##file-exists?
                                                            _%src-path124112%_)
                                                           (path-normalize
                                                            _%src-path124112%_)
                                                           (_%lpr124087%_
                                                            _%rest-src124109%_))))))
                                             (if (##pair? _%rest-src124090124098%_)
                                                 (let ((_%hd124095124117%_
                                                        (##car _%rest-src124090124098%_))
                                                       (_%tl124096124119%_
                                                        (##cdr _%rest-src124090124098%_)))
                                                   (let* ((_%src124122%_
                                                           _%hd124095124117%_)
                                                          (_%rest-src124124%_
                                                           _%tl124096124119%_))
                                                     (_%K124094124114%_
                                                      _%rest-src124124%_
                                                      _%src124122%_)))
                                                 (_%else124092124106%_)))))))))
                         (let ((_%$e124071%_
                                (gx#core-library-package-path-prefix
                                 _%dir124067%_)))
                           (if _%$e124071%_
                               ((lambda (_%prefix124074%_)
                                  (if (string-prefix?
                                       _%prefix124074%_
                                       _%spath124028%_)
                                      (let ((_%ssi124078%_
                                             (substring
                                              _%ssi124032%_
                                              (string-length _%prefix124074%_)
                                              (##string-length _%ssi124032%_)))
                                            (_%srcs124079%_
                                             (##map (lambda (_%src124076%_)
                                                      (substring
                                                       _%src124076%_
                                                       (string-length
                                                        _%prefix124074%_)
                                                       (string-length
                                                        _%src124076%_)))
                                                    _%srcs124036%_)))
                                        (_%resolve124069%_
                                         _%ssi124078%_
                                         _%srcs124079%_))
                                      (_%lp124039%_ _%rest124066%_)))
                                _%$e124071%_)
                               (let ()
                                 (_%resolve124069%_
                                  _%ssi124032%_
                                  _%srcs124036%_)))))))
                    (_%K124046124060%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath124024%_))))
                (let ((_%try-match124044124063%_
                       (lambda ()
                         (if (##null? _%rest124042124051%_)
                             (_%K124046124060%_)
                             (_%E124045124055%_)))))
                  (if (##pair? _%rest124042124051%_)
                      (let ((_%tl124049124131%_ (##cdr _%rest124042124051%_))
                            (_%hd124048124129%_ (##car _%rest124042124051%_)))
                        (let ((_%dir124134%_ _%hd124048124129%_)
                              (_%rest124136%_ _%tl124049124131%_))
                          (_%K124047124126%_ _%rest124136%_ _%dir124134%_)))
                      (_%try-match124044124063%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123992%_)
        (letrec ((_%resolve123994%_
                  (lambda (_%path124015%_ _%base124016%_)
                    (let ((_%$e124018%_
                           (string-rindex__0 _%base124016%_ '#\/)))
                      (if _%$e124018%_
                          ((lambda (_%idx124021%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base124016%_ '0 _%idx124021%_)
                                '"/"
                                _%path124015%_))))
                           _%$e124018%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path124015%_)))))))))
          (let ((_%spath123996%_ (symbol->string (gx#stx-e _%modpath123992%_)))
                (_%mod123997%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123997%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123992%_))
            (let ((_%mpath123999%_
                   (symbol->string
                    (##structure-ref
                     _%mod123997%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp124001%_ ((_%spath124003%_ _%spath123996%_)
                                 (_%mpath124004%_ _%mpath123999%_))
                (if (string-prefix? '"../" _%spath124003%_)
                    (let ((_%$e124007%_
                           (string-rindex__0 _%mpath124004%_ '#\/)))
                      (if _%$e124007%_
                          ((lambda (_%idx124010%_)
                             (_%lp124001%_
                              (substring
                               _%spath124003%_
                               '3
                               (string-length _%spath124003%_))
                              (substring _%mpath124004%_ '0 _%idx124010%_)))
                           _%$e124007%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"cannot resolve relative module path; illegal traversal"
                             _%modpath123992%_))))
                    (if (string-prefix? '"./" _%spath124003%_)
                        (let ()
                          (_%lp124001%_
                           (substring
                            _%spath124003%_
                            '2
                            (string-length _%spath124003%_))
                           _%mpath124004%_))
                        (let ()
                          (_%resolve123994%_
                           _%spath124003%_
                           _%mpath124004%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123984%_)
        (let ((_%$e123986%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123984%_))))
          (if _%$e123986%_
              ((lambda (_%pkg123989%_)
                 (##string-append (symbol->string _%pkg123989%_) '"/"))
               _%$e123986%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123954%_ _%exists?123955%_)
        (let ((_%$e123957%_ (hash-get gx#__module-pkg-cache _%dir123954%_)))
          (if _%$e123957%_
              (values _%$e123957%_)
              (let ()
                (let* ((_%gerbil.pkg123961%_
                        (path-expand '"gerbil.pkg" _%dir123954%_))
                       (_%plist123971%_
                        (if (or _%exists?123955%_
                                (##file-exists? _%gerbil.pkg123961%_))
                            (let ((_%e123966%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123961%_
                                    read)))
                              (if (eof-object? _%e123966%_)
                                  (let () '())
                                  (if (list? _%e123966%_)
                                      (let () _%e123966%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123961%_
                                         _%e123966%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123954%_
                   _%plist123971%_)
                  _%plist123971%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123977%_)
        (let ((_%exists?123979%_ '#f))
          (gx#core-library-package-plist__% _%dir123977%_ _%exists?123979%_))))
    (define gx#core-library-package-plist
      (lambda _g125787_
        (let ((_g125786_ (##length _g125787_)))
          (cond ((##fx= _g125786_ 1)
                 (apply (lambda (_%dir123977%_)
                          (gx#core-library-package-plist__0 _%dir123977%_))
                        _g125787_))
                ((##fx= _g125786_ 2)
                 (apply (lambda (_%dir123981%_ _%exists?123982%_)
                          (gx#core-library-package-plist__%
                           _%dir123981%_
                           _%exists?123982%_))
                        _g125787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125787_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123951%_)
        (gx#core-special-module-path? _%stx123951%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123949%_)
        (gx#core-special-module-path? _%stx123949%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123944%_ _%char123945%_)
        (if (gx#identifier? _%stx123944%_)
            (if (interned-symbol? (gx#stx-e _%stx123944%_))
                (let ((_%str123947%_
                       (symbol->string (gx#stx-e _%stx123944%_))))
                  (if (##fx> (##string-length _%str123947%_) '1)
                      (eq? (string-ref _%str123947%_ '0) _%char123945%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123938%_)
        (gx#core-bound-identifier?__%
         _%stx123938%_
         (lambda (_%g123939123941%_)
           (gx#expander-binding?__% _%g123939123941%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123932%_)
        (gx#core-bound-identifier?__%
         _%stx123932%_
         (lambda (_%g123933123935%_)
           (gx#expander-binding?__% _%g123933123935%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123919%_)
        (letrec ((_%module-prelude?123921%_
                  (lambda (_%e123927%_)
                    (let ((_%$e123929%_
                           (##structure-instance-of?
                            _%e123927%_
                            'gx#module-context::t)))
                      (if _%$e123929%_
                          _%$e123929%_
                          (##structure-instance-of?
                           _%e123927%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123919%_
           (lambda (_%g123922123924%_)
             (gx#expander-binding?__%
              _%g123922123924%_
              _%module-prelude?123921%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123849%_ _%ctx123850%_ _%force-weak?123851%_)
        (let* ((_%in123852123861%_ _%in123849%_)
               (_%E123854123865%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123852123861%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123855123878%_
                (lambda (_%weak?123868%_
                         _%phi123869%_
                         _%key123870%_
                         _%source123871%_)
                  (gx#core-bind!__%
                   _%key123870%_
                   (let ((_%e123873%_
                          (gx#core-resolve-module-export _%source123871%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123873%_ '1 '#f '#f)
                      _%key123870%_
                      _%phi123869%_
                      _%e123873%_
                      (##unchecked-structure-ref _%source123871%_ '1 '#f '#f)
                      (let ((_%$e123875%_ _%force-weak?123851%_))
                        (if _%$e123875%_ _%$e123875%_ _%weak?123868%_))))
                   gx#core-context-rebind?
                   _%phi123869%_
                   _%ctx123850%_))))
          (if (##structure-direct-instance-of?
               _%in123852123861%_
               'gx#module-import::t)
              (let* ((_%e123856123881%_
                      (##unchecked-structure-ref
                       _%in123852123861%_
                       '1
                       '#f
                       '#f))
                     (_%source123884%_ _%e123856123881%_)
                     (_%e123857123886%_
                      (##unchecked-structure-ref
                       _%in123852123861%_
                       '2
                       '#f
                       '#f))
                     (_%key123889%_ _%e123857123886%_)
                     (_%e123858123891%_
                      (##unchecked-structure-ref
                       _%in123852123861%_
                       '3
                       '#f
                       '#f))
                     (_%phi123894%_ _%e123858123891%_)
                     (_%e123859123896%_
                      (##unchecked-structure-ref
                       _%in123852123861%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123899%_ _%e123859123896%_))
                (_%K123855123878%_
                 _%weak?123899%_
                 _%phi123894%_
                 _%key123889%_
                 _%source123884%_))
              (_%E123854123865%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123904%_)
        (let* ((_%ctx123906%_ (gx#current-expander-context))
               (_%force-weak?123908%_ '#f))
          (gx#core-bind-import!__%
           _%in123904%_
           _%ctx123906%_
           _%force-weak?123908%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123910%_ _%ctx123911%_)
        (let ((_%force-weak?123913%_ '#f))
          (gx#core-bind-import!__%
           _%in123910%_
           _%ctx123911%_
           _%force-weak?123913%_))))
    (define gx#core-bind-import!
      (lambda _g125789_
        (let ((_g125788_ (##length _g125789_)))
          (cond ((##fx= _g125788_ 1)
                 (apply (lambda (_%in123904%_)
                          (gx#core-bind-import!__0 _%in123904%_))
                        _g125789_))
                ((##fx= _g125788_ 2)
                 (apply (lambda (_%in123910%_ _%ctx123911%_)
                          (gx#core-bind-import!__1 _%in123910%_ _%ctx123911%_))
                        _g125789_))
                ((##fx= _g125788_ 3)
                 (apply (lambda (_%in123915%_
                                 _%ctx123916%_
                                 _%force-weak?123917%_)
                          (gx#core-bind-import!__%
                           _%in123915%_
                           _%ctx123916%_
                           _%force-weak?123917%_))
                        _g125789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125789_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123835%_ _%ctx123836%_)
        (gx#core-bind-import!__% _%in123835%_ _%ctx123836%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123841%_)
        (let ((_%ctx123843%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123841%_ _%ctx123843%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125791_
        (let ((_g125790_ (##length _g125791_)))
          (cond ((##fx= _g125790_ 1)
                 (apply (lambda (_%in123841%_)
                          (gx#core-bind-weak-import!__0 _%in123841%_))
                        _g125791_))
                ((##fx= _g125790_ 2)
                 (apply (lambda (_%in123845%_ _%ctx123846%_)
                          (gx#core-bind-weak-import!__%
                           _%in123845%_
                           _%ctx123846%_))
                        _g125791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125791_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123726%_)
        (letrec ((_%subst123728%_
                  (lambda (_%key123774%_)
                    (let* ((_%key123775123783%_ _%key123774%_)
                           (_%else123777123791%_ (lambda () _%key123774%_))
                           (_%K123779123822%_
                            (lambda (_%mark123794%_ _%id123795%_)
                              (let* ((_%mark123796123802%_ _%mark123794%_)
                                     (_%E123798123806%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123796123802%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123799123814%_
                                      (lambda (_%subst123809%_)
                                        (let ((_%$e123811%_
                                               (if _%subst123809%_
                                                   (hash-get
                                                    _%subst123809%_
                                                    _%id123795%_)
                                                   '#f)))
                                          (if _%$e123811%_
                                              _%$e123811%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123774%_))))))
                                (if (##structure-instance-of?
                                     _%mark123796123802%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123800123817%_
                                            (##unchecked-structure-ref
                                             _%mark123796123802%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123820%_ _%e123800123817%_))
                                      (_%K123799123814%_ _%subst123820%_))
                                    (_%E123798123806%_))))))
                      (if (##pair? _%key123775123783%_)
                          (let ((_%hd123780123825%_
                                 (##car _%key123775123783%_))
                                (_%tl123781123827%_
                                 (##cdr _%key123775123783%_)))
                            (let* ((_%id123830%_ _%hd123780123825%_)
                                   (_%mark123832%_ _%tl123781123827%_))
                              (_%K123779123822%_ _%mark123832%_ _%id123830%_)))
                          (_%else123777123791%_))))))
          (let* ((_%out123729123739%_ _%out123726%_)
                 (_%E123731123743%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123729123739%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123732123750%_
                  (lambda (_%phi123746%_ _%key123747%_ _%ctx123748%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123748%_ _%phi123746%_)
                     (_%subst123728%_ _%key123747%_)))))
            (if (##structure-direct-instance-of?
                 _%out123729123739%_
                 'gx#module-export::t)
                (let* ((_%e123733123753%_
                        (##unchecked-structure-ref
                         _%out123729123739%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123756%_ _%e123733123753%_)
                       (_%e123734123758%_
                        (##unchecked-structure-ref
                         _%out123729123739%_
                         '2
                         '#f
                         '#f))
                       (_%key123761%_ _%e123734123758%_)
                       (_%e123735123763%_
                        (##unchecked-structure-ref
                         _%out123729123739%_
                         '3
                         '#f
                         '#f))
                       (_%phi123766%_ _%e123735123763%_)
                       (_%e123736123768%_
                        (##unchecked-structure-ref
                         _%out123729123739%_
                         '4
                         '#f
                         '#f))
                       (_%e123737123771%_
                        (##unchecked-structure-ref
                         _%out123729123739%_
                         '5
                         '#f
                         '#f)))
                  (_%K123732123750%_
                   _%phi123766%_
                   _%key123761%_
                   _%ctx123756%_))
                (_%E123731123743%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123651%_ _%rename123652%_ _%dphi123653%_)
        (let* ((_%out123654123664%_ _%out123651%_)
               (_%E123656123668%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123654123664%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123657123680%_
                (lambda (_%weak?123671%_
                         _%name123672%_
                         _%phi123673%_
                         _%key123674%_
                         _%ctx123675%_)
                  (##structure
                   gx#module-import::t
                   _%out123651%_
                   (let ((_%$e123677%_ _%rename123652%_))
                     (if _%$e123677%_ _%$e123677%_ _%name123672%_))
                   (fx+ _%phi123673%_ _%dphi123653%_)
                   _%weak?123671%_))))
          (if (##structure-direct-instance-of?
               _%out123654123664%_
               'gx#module-export::t)
              (let* ((_%e123658123683%_
                      (##unchecked-structure-ref
                       _%out123654123664%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123686%_ _%e123658123683%_)
                     (_%e123659123688%_
                      (##unchecked-structure-ref
                       _%out123654123664%_
                       '2
                       '#f
                       '#f))
                     (_%key123691%_ _%e123659123688%_)
                     (_%e123660123693%_
                      (##unchecked-structure-ref
                       _%out123654123664%_
                       '3
                       '#f
                       '#f))
                     (_%phi123696%_ _%e123660123693%_)
                     (_%e123661123698%_
                      (##unchecked-structure-ref
                       _%out123654123664%_
                       '4
                       '#f
                       '#f))
                     (_%name123701%_ _%e123661123698%_)
                     (_%e123662123703%_
                      (##unchecked-structure-ref
                       _%out123654123664%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123706%_ _%e123662123703%_))
                (_%K123657123680%_
                 _%weak?123706%_
                 _%name123701%_
                 _%phi123696%_
                 _%key123691%_
                 _%ctx123686%_))
              (_%E123656123668%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123711%_)
        (let* ((_%rename123713%_ '#f) (_%dphi123715%_ '0))
          (gx#core-module-export->import__%
           _%out123711%_
           _%rename123713%_
           _%dphi123715%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123717%_ _%rename123718%_)
        (let ((_%dphi123720%_ '0))
          (gx#core-module-export->import__%
           _%out123717%_
           _%rename123718%_
           _%dphi123720%_))))
    (define gx#core-module-export->import
      (lambda _g125793_
        (let ((_g125792_ (##length _g125793_)))
          (cond ((##fx= _g125792_ 1)
                 (apply (lambda (_%out123711%_)
                          (gx#core-module-export->import__0 _%out123711%_))
                        _g125793_))
                ((##fx= _g125792_ 2)
                 (apply (lambda (_%out123717%_ _%rename123718%_)
                          (gx#core-module-export->import__1
                           _%out123717%_
                           _%rename123718%_))
                        _g125793_))
                ((##fx= _g125792_ 3)
                 (apply (lambda (_%out123722%_ _%rename123723%_ _%dphi123724%_)
                          (gx#core-module-export->import__%
                           _%out123722%_
                           _%rename123723%_
                           _%dphi123724%_))
                        _g125793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125793_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123550%_)
        (letrec ((_%make-context123552%_
                  (lambda (_%id123629%_)
                    (let* ((_%super123631%_ (gx#current-expander-context))
                           (_%bind-id123633%_ (gx#stx-e _%id123629%_))
                           (_%mod-id123635%_
                            (if (##structure-instance-of?
                                 _%super123631%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123631%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123633%_)
                                _%bind-id123633%_))
                           (_%ns123637%_ (symbol->string _%mod-id123635%_))
                           (_%path123647%_
                            (if (##structure-instance-of?
                                 _%super123631%_
                                 'gx#module-context::t)
                                (let ((_%path123639%_
                                       (##unchecked-structure-ref
                                        _%super123631%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123639%_)
                                          (null? _%path123639%_))
                                      (let ()
                                        (cons _%bind-id123633%_
                                              _%path123639%_))
                                      (if (not _%path123639%_)
                                          (let () _%bind-id123633%_)
                                          (let ()
                                            (cons _%bind-id123633%_
                                                  (cons _%path123639%_
                                                        '()))))))
                                _%bind-id123633%_))
                           (__obj125769
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
                       __obj125769
                       _%mod-id123635%_
                       _%super123631%_
                       _%ns123637%_
                       _%path123647%_)
                      __obj125769)))
                 (_%valid-module-id?123553%_
                  (lambda (_%id123604%_)
                    (let* ((_%str123606%_ (symbol->string _%id123604%_))
                           (_%len123608%_ (##string-length _%str123606%_)))
                      (if (##fx>= _%len123608%_ '1)
                          (let _%loop123611%_ ((_%index123613%_
                                                (##fx- (##string-length
                                                        _%str123606%_)
                                                       '1)))
                            (if (##fx>= _%index123613%_ '0)
                                (let ((_%c123615%_
                                       (string-ref
                                        _%str123606%_
                                        _%index123613%_)))
                                  (if (or (and (##char>=? _%c123615%_ '#\a)
                                               (##char<=? _%c123615%_ '#\z))
                                          (and (##char>=? _%c123615%_ '#\A)
                                               (##char<=? _%c123615%_ '#\Z))
                                          (and (##char>=? _%c123615%_ '#\0)
                                               (##char<=? _%c123615%_ '#\9))
                                          (##char=? _%c123615%_ '#\_)
                                          (##char=? _%c123615%_ '#\-))
                                      (_%loop123611%_
                                       (##fx- _%index123613%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123554123564%_ _%stx123550%_)
                 (_%E123556123568%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123554123564%_)))
                 (_%E123555123600%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123554123564%_)
                        (let ((_%e123557123572%_
                               (gx#syntax-e _%e123554123564%_)))
                          (let ((_%hd123558123575%_ (##car _%e123557123572%_))
                                (_%tl123559123577%_ (##cdr _%e123557123572%_)))
                            (if (gx#stx-pair? _%tl123559123577%_)
                                (let ((_%e123560123580%_
                                       (gx#syntax-e _%tl123559123577%_)))
                                  (let ((_%hd123561123583%_
                                         (##car _%e123560123580%_))
                                        (_%tl123562123585%_
                                         (##cdr _%e123560123580%_)))
                                    (let* ((_%id123588%_ _%hd123561123583%_)
                                           (_%body123590%_ _%tl123562123585%_))
                                      (if (and (gx#identifier? _%id123588%_)
                                               (gx#stx-list? _%body123590%_))
                                          (if (_%valid-module-id?123553%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123592%_
                                                      (_%make-context123552%_
                                                       _%id123588%_))
                                                     (_%body123594%_
                                                      (gx#core-expand-module-begin
                                                       _%body123590%_
                                                       _%ctx123592%_))
                                                     (_%body123596%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123594%_)
                                                       (gx#stx-source
                                                        _%stx123550%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123592%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123596%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123592%_
                                                 _%body123596%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123588%_
                                                 _%ctx123592%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123588%_)
                                                  _%body123596%_)
                                                 (gx#stx-source
                                                  _%stx123550%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123550%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123556123568%_)))))
                                (_%E123556123568%_))))
                        (_%E123556123568%_)))))
            (_%E123555123600%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123516%_ _%ctx123517%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123520%_
                   (gx#core-expand-head (cons '%%begin-module _%body123516%_)))
                  (_%e123521123528%_ _%stx123520%_)
                  (_%E123523123532%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123520%_)))
                  (_%E123522123546%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123521123528%_)
                         (let ((_%e123524123536%_
                                (gx#syntax-e _%e123521123528%_)))
                           (let ((_%hd123525123539%_ (##car _%e123524123536%_))
                                 (_%tl123526123541%_
                                  (##cdr _%e123524123536%_)))
                             (if (and (gx#identifier? _%hd123525123539%_)
                                      (gx#core-identifier=?
                                       _%hd123525123539%_
                                       '%#begin-module))
                                 (let ((_%body123544%_ _%tl123526123541%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123520%_)
                                           _%body123544%_
                                           (gx#core-expand-module-body
                                            _%body123544%_))
                                       (_%E123523123532%_)))
                                 (_%E123523123532%_))))
                         (_%E123523123532%_)))))
             (_%E123522123546%_)))
         gx#current-expander-context
         _%ctx123517%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123312%_)
        (letrec ((_%expand-special123314%_
                  (lambda (_%hd123443%_ _%K123444%_ _%rest123445%_ _%r123446%_)
                    (let* ((_%e123447123464%_ _%hd123443%_)
                           (_%E123459123468%_
                            (lambda ()
                              (_%K123444%_
                               _%rest123445%_
                               (cons (gx#core-expand-top _%hd123443%_)
                                     _%r123446%_))))
                           (_%E123449123480%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123447123464%_)
                                  (let ((_%e123460123472%_
                                         (gx#syntax-e _%e123447123464%_)))
                                    (let ((_%hd123461123475%_
                                           (##car _%e123460123472%_))
                                          (_%tl123462123477%_
                                           (##cdr _%e123460123472%_)))
                                      (if (and (gx#identifier?
                                                _%hd123461123475%_)
                                               (gx#core-identifier=?
                                                _%hd123461123475%_
                                                '%#export))
                                          (if '#t
                                              (_%K123444%_
                                               _%rest123445%_
                                               (cons _%hd123443%_ _%r123446%_))
                                              (_%E123459123468%_))
                                          (_%E123459123468%_))))
                                  (_%E123459123468%_))))
                           (_%E123448123512%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123447123464%_)
                                  (let ((_%e123450123484%_
                                         (gx#syntax-e _%e123447123464%_)))
                                    (let ((_%hd123451123487%_
                                           (##car _%e123450123484%_))
                                          (_%tl123452123489%_
                                           (##cdr _%e123450123484%_)))
                                      (if (and (gx#identifier?
                                                _%hd123451123487%_)
                                               (gx#core-identifier=?
                                                _%hd123451123487%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123452123489%_)
                                              (let ((_%e123453123492%_
                                                     (gx#syntax-e
                                                      _%tl123452123489%_)))
                                                (let ((_%hd123454123495%_
                                                       (##car _%e123453123492%_))
                                                      (_%tl123455123497%_
                                                       (##cdr _%e123453123492%_)))
                                                  (let ((_%hd-bind123500%_
                                                         _%hd123454123495%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123455123497%_)
                                                        (let ((_%e123456123502%_
                                                               (gx#syntax-e
                                                                _%tl123455123497%_)))
                                                          (let ((_%hd123457123505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123456123502%_))
                        (_%tl123458123507%_ (##cdr _%e123456123502%_)))
                    (let ((_%expr123510%_ _%hd123457123505%_))
                      (if (gx#stx-null? _%tl123458123507%_)
                          (if (gx#core-bind-values? _%hd-bind123500%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123500%_)
                                (_%K123444%_
                                 _%rest123445%_
                                 (cons _%hd123443%_ _%r123446%_)))
                              (_%E123449123480%_))
                          (_%E123449123480%_)))))
                (_%E123449123480%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123449123480%_))
                                          (_%E123449123480%_))))
                                  (_%E123449123480%_)))))
                      (_%E123448123512%_))))
                 (_%expand-body123315%_
                  (lambda (_%rbody123317%_)
                    (let _%lp123319%_ ((_%rest123321%_ _%rbody123317%_)
                                       (_%body123322%_ '()))
                      (let* ((_%rest123323123331%_ _%rest123321%_)
                             (_%else123325123339%_ (lambda () _%body123322%_))
                             (_%K123327123431%_
                              (lambda (_%rest123342%_ _%hd123343%_)
                                (let* ((_%e123344123365%_ _%hd123343%_)
                                       (_%E123360123369%_
                                        (lambda ()
                                          (_%lp123319%_
                                           _%rest123342%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123343%_)
                                                 _%body123322%_))))
                                       (_%E123356123383%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123344123365%_)
                                              (let ((_%e123361123373%_
                                                     (gx#syntax-e
                                                      _%e123344123365%_)))
                                                (let ((_%hd123362123376%_
                                                       (##car _%e123361123373%_))
                                                      (_%tl123363123378%_
                                                       (##cdr _%e123361123373%_)))
                                                  (let ((_%form123381%_
                                                         _%hd123362123376%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123381%_
                                                         gx#special-form-binding?)
                                                        (_%lp123319%_
                                                         _%rest123342%_
                                                         (cons _%hd123343%_
                                                               _%body123322%_))
                                                        (_%E123360123369%_)))))
                                              (_%E123360123369%_))))
                                       (_%E123346123395%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123344123365%_)
                                              (let ((_%e123357123387%_
                                                     (gx#syntax-e
                                                      _%e123344123365%_)))
                                                (let ((_%hd123358123390%_
                                                       (##car _%e123357123387%_))
                                                      (_%tl123359123392%_
                                                       (##cdr _%e123357123387%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123358123390%_)
                                                           (gx#core-identifier=?
                                                            _%hd123358123390%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123319%_
                                                           _%rest123342%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123343%_)
                         _%body123322%_))
                  (_%E123356123383%_))
              (_%E123356123383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123356123383%_))))
                                       (_%E123345123427%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123344123365%_)
                                              (let ((_%e123347123399%_
                                                     (gx#syntax-e
                                                      _%e123344123365%_)))
                                                (let ((_%hd123348123402%_
                                                       (##car _%e123347123399%_))
                                                      (_%tl123349123404%_
                                                       (##cdr _%e123347123399%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123348123402%_)
                                                           (gx#core-identifier=?
                                                            _%hd123348123402%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123349123404%_)
                                                          (let ((_%e123350123407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123349123404%_)))
                    (let ((_%hd123351123410%_ (##car _%e123350123407%_))
                          (_%tl123352123412%_ (##cdr _%e123350123407%_)))
                      (let ((_%hd-bind123415%_ _%hd123351123410%_))
                        (if (gx#stx-pair? _%tl123352123412%_)
                            (let ((_%e123353123417%_
                                   (gx#syntax-e _%tl123352123412%_)))
                              (let ((_%hd123354123420%_
                                     (##car _%e123353123417%_))
                                    (_%tl123355123422%_
                                     (##cdr _%e123353123417%_)))
                                (let ((_%expr123425%_ _%hd123354123420%_))
                                  (if (gx#stx-null? _%tl123355123422%_)
                                      (if '#t
                                          (_%lp123319%_
                                           _%rest123342%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123415%_)
                                                   (gx#core-expand-expression
                                                    _%expr123425%_))
                                                  (gx#stx-source _%hd123343%_))
                                                 _%body123322%_))
                                          (_%E123346123395%_))
                                      (_%E123346123395%_)))))
                            (_%E123346123395%_)))))
                  (_%E123346123395%_))
              (_%E123346123395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123346123395%_)))))
                                  (_%E123345123427%_)))))
                        (if (##pair? _%rest123323123331%_)
                            (let ((_%hd123328123434%_
                                   (##car _%rest123323123331%_))
                                  (_%tl123329123436%_
                                   (##cdr _%rest123323123331%_)))
                              (let* ((_%hd123439%_ _%hd123328123434%_)
                                     (_%rest123441%_ _%tl123329123436%_))
                                (_%K123327123431%_
                                 _%rest123441%_
                                 _%hd123439%_)))
                            (_%else123325123339%_)))))))
          (_%expand-body123315%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123312%_)
            _%expand-special123314%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123153%_
               _%expanded?123154%_
               _%method123155%_
               _%current-phi123156%_
               _%expand1123157%_)
        (letrec ((_%K123159%_
                  (lambda (_%rest123279%_ _%r123280%_)
                    (let* ((_%e123281123288%_ _%rest123279%_)
                           (_%E123283123292%_ (lambda () _%r123280%_))
                           (_%E123282123308%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123281123288%_)
                                  (let ((_%e123284123296%_
                                         (gx#syntax-e _%e123281123288%_)))
                                    (let ((_%hd123285123299%_
                                           (##car _%e123284123296%_))
                                          (_%tl123286123301%_
                                           (##cdr _%e123284123296%_)))
                                      (let* ((_%hd123304%_ _%hd123285123299%_)
                                             (_%rest123306%_
                                              _%tl123286123301%_))
                                        (if '#t
                                            (_%step123160%_
                                             _%hd123304%_
                                             _%rest123306%_
                                             _%r123280%_)
                                            (_%E123283123292%_)))))
                                  (_%E123283123292%_)))))
                      (_%E123282123308%_))))
                 (_%step123160%_
                  (lambda (_%hd123193%_ _%rest123194%_ _%r123195%_)
                    (let* ((_%e123196123214%_ _%hd123193%_)
                           (_%E123209123218%_
                            (lambda ()
                              (if (_%expanded?123154%_ (gx#stx-e _%hd123193%_))
                                  (_%K123159%_
                                   _%rest123194%_
                                   (cons (gx#stx-e _%hd123193%_) _%r123195%_))
                                  (_%expand1123157%_
                                   _%hd123193%_
                                   _%K123159%_
                                   _%rest123194%_
                                   _%r123195%_))))
                           (_%E123205123234%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123196123214%_)
                                  (let ((_%e123210123222%_
                                         (gx#syntax-e _%e123196123214%_)))
                                    (let ((_%hd123211123225%_
                                           (##car _%e123210123222%_))
                                          (_%tl123212123227%_
                                           (##cdr _%e123210123222%_)))
                                      (let* ((_%macro123230%_
                                              _%hd123211123225%_)
                                             (_%body123232%_
                                              _%tl123212123227%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123230%_
                                             gx#syntax-binding?)
                                            (_%K123159%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123230%_)
                                                    _%hd123193%_
                                                    _%method123155%_)
                                                   _%rest123194%_)
                                             _%r123195%_)
                                            (_%E123209123218%_)))))
                                  (_%E123209123218%_))))
                           (_%E123198123248%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123196123214%_)
                                  (let ((_%e123206123238%_
                                         (gx#syntax-e _%e123196123214%_)))
                                    (let ((_%hd123207123241%_
                                           (##car _%e123206123238%_))
                                          (_%tl123208123243%_
                                           (##cdr _%e123206123238%_)))
                                      (if (eq? (gx#stx-e _%hd123207123241%_)
                                               'begin:)
                                          (let ((_%body123246%_
                                                 _%tl123208123243%_))
                                            (if '#t
                                                (_%K123159%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123194%_
                                                  _%body123246%_)
                                                 _%r123195%_)
                                                (_%E123205123234%_)))
                                          (_%E123205123234%_))))
                                  (_%E123205123234%_))))
                           (_%E123197123275%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123196123214%_)
                                  (let ((_%e123199123252%_
                                         (gx#syntax-e _%e123196123214%_)))
                                    (let ((_%hd123200123255%_
                                           (##car _%e123199123252%_))
                                          (_%tl123201123257%_
                                           (##cdr _%e123199123252%_)))
                                      (if (eq? (gx#stx-e _%hd123200123255%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123201123257%_)
                                              (let ((_%e123202123260%_
                                                     (gx#syntax-e
                                                      _%tl123201123257%_)))
                                                (let ((_%hd123203123263%_
                                                       (##car _%e123202123260%_))
                                                      (_%tl123204123265%_
                                                       (##cdr _%e123202123260%_)))
                                                  (let* ((_%dphi123268%_
                                                          _%hd123203123263%_)
                                                         (_%body123270%_
                                                          _%tl123204123265%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123268%_)
                                                        (let ((_%rbody123273%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123159%_ _%body123270%_ '()))
                        _%current-phi123156%_
                        (fx+ (gx#stx-e _%dphi123268%_)
                             (_%current-phi123156%_)))))
                  (_%K123159%_
                   _%rest123194%_
                   (__foldr1 cons _%r123195%_ _%rbody123273%_)))
                (_%E123198123248%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123198123248%_))
                                          (_%E123198123248%_))))
                                  (_%E123198123248%_)))))
                      (_%E123197123275%_)))))
          (let* ((_%e123161123168%_ _%stx123153%_)
                 (_%E123163123172%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123161123168%_)))
                 (_%E123162123189%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123161123168%_)
                        (let ((_%e123164123176%_
                               (gx#syntax-e _%e123161123168%_)))
                          (let ((_%hd123165123179%_ (##car _%e123164123176%_))
                                (_%tl123166123181%_ (##cdr _%e123164123176%_)))
                            (let ((_%body123184%_ _%tl123166123181%_))
                              (if '#t
                                  (if (_%current-phi123156%_)
                                      (let () (_%K123159%_ _%body123184%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K123159%_ _%body123184%_ '()))
                                         _%current-phi123156%_
                                         (gx#current-expander-phi))))
                                  (_%E123163123172%_)))))
                        (_%E123163123172%_)))))
            (_%E123162123189%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122807%_ _%internal-expand?122808%_)
        (letrec ((_%expand1122810%_
                  (lambda (_%hd123125%_ _%K123126%_ _%rest123127%_ _%r123128%_)
                    (if (gx#core-bound-module? _%hd123125%_)
                        (let ()
                          (_%import1122811%_
                           (gx#syntax-local-e__0 _%hd123125%_)
                           _%K123126%_
                           _%rest123127%_
                           _%r123128%_))
                        (if (gx#core-library-module-path? _%hd123125%_)
                            (let ()
                              (_%import1122811%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd123125%_))
                               _%K123126%_
                               _%rest123127%_
                               _%r123128%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd123125%_)
                                (let ()
                                  (_%import1122811%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd123125%_))
                                   _%K123126%_
                                   _%rest123127%_
                                   _%r123128%_))
                                (let ((_%e123134%_ (gx#stx-e _%hd123125%_)))
                                  (if (pair? _%e123134%_)
                                      (let ((_%$e123137%_
                                             (gx#stx-e (car _%e123134%_))))
                                        (if (eq? 'spec: _%$e123137%_)
                                            (_%import-spec122814%_
                                             _%hd123125%_
                                             _%K123126%_
                                             _%rest123127%_
                                             _%r123128%_)
                                            (if (eq? 'in: _%$e123137%_)
                                                (_%import-submodule122812%_
                                                 _%hd123125%_
                                                 _%K123126%_
                                                 _%rest123127%_
                                                 _%r123128%_)
                                                (if (eq? 'runtime:
                                                         _%$e123137%_)
                                                    (_%import-runtime122813%_
                                                     _%hd123125%_
                                                     _%K123126%_
                                                     _%rest123127%_
                                                     _%r123128%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122807%_
                                                     _%hd123125%_)))))
                                      (if (string? _%e123134%_)
                                          (let ()
                                            (_%import1122811%_
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__%
                                               _%hd123125%_
                                               (gx#stx-source _%stx122807%_)))
                                             _%K123126%_
                                             _%rest123127%_
                                             _%r123128%_))
                                          (if (##structure-instance-of?
                                               _%e123134%_
                                               'gx#module-context::t)
                                              (let ()
                                                (_%K123126%_
                                                 _%rest123127%_
                                                 (cons _%e123134%_
                                                       _%r123128%_)))
                                              (let ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _%stx122807%_
                                                 _%hd123125%_)))))))))))
                 (_%import1122811%_
                  (lambda (_%ctx123114%_
                           _%K123115%_
                           _%rest123116%_
                           _%r123117%_)
                    (let ((_%dphi123119%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123115%_
                       _%rest123116%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123114%_
                              _%dphi123119%_
                              (map (lambda (_%g123120123122%_)
                                     (gx#core-module-export->import__%
                                      _%g123120123122%_
                                      '#f
                                      _%dphi123119%_))
                                   (##unchecked-structure-ref
                                    _%ctx123114%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123117%_)))))
                 (_%import-submodule122812%_
                  (lambda (_%hd123081%_ _%K123082%_ _%rest123083%_ _%r123084%_)
                    (let* ((_%e123085123092%_ _%hd123081%_)
                           (_%E123087123096%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123085123092%_)))
                           (_%E123086123110%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123085123092%_)
                                  (let ((_%e123088123100%_
                                         (gx#syntax-e _%e123085123092%_)))
                                    (let ((_%hd123089123103%_
                                           (##car _%e123088123100%_))
                                          (_%tl123090123105%_
                                           (##cdr _%e123088123100%_)))
                                      (let ((_%spath123108%_
                                             _%tl123090123105%_))
                                        (if '#t
                                            (_%import1122811%_
                                             (_%import-spec-source122815%_
                                              _%spath123108%_)
                                             _%K123082%_
                                             _%rest123083%_
                                             _%r123084%_)
                                            (_%E123087123096%_)))))
                                  (_%E123087123096%_)))))
                      (_%E123086123110%_))))
                 (_%import-runtime122813%_
                  (lambda (_%hd123048%_ _%K123049%_ _%rest123050%_ _%r123051%_)
                    (let* ((_%e123052123059%_ _%hd123048%_)
                           (_%E123054123063%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123052123059%_)))
                           (_%E123053123077%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123052123059%_)
                                  (let ((_%e123055123067%_
                                         (gx#syntax-e _%e123052123059%_)))
                                    (let ((_%hd123056123070%_
                                           (##car _%e123055123067%_))
                                          (_%tl123057123072%_
                                           (##cdr _%e123055123067%_)))
                                      (let ((_%spath123075%_
                                             _%tl123057123072%_))
                                        (if '#t
                                            (_%K123049%_
                                             _%rest123050%_
                                             (cons (_%import-spec-source122815%_
                                                    _%spath123075%_)
                                                   _%r123051%_))
                                            (_%E123054123063%_)))))
                                  (_%E123054123063%_)))))
                      (_%E123053123077%_))))
                 (_%import-spec122814%_
                  (lambda (_%hd122886%_ _%K122887%_ _%rest122888%_ _%r122889%_)
                    (let* ((_%e122890122907%_ _%hd122886%_)
                           (_%E122899122911%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122890122907%_)))
                           (_%E122892123022%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122890122907%_)
                                  (let ((_%e122900122915%_
                                         (gx#syntax-e _%e122890122907%_)))
                                    (let ((_%hd122901122918%_
                                           (##car _%e122900122915%_))
                                          (_%tl122902122920%_
                                           (##cdr _%e122900122915%_)))
                                      (if (gx#stx-pair? _%tl122902122920%_)
                                          (let ((_%e122903122923%_
                                                 (gx#syntax-e
                                                  _%tl122902122920%_)))
                                            (let ((_%hd122904122926%_
                                                   (##car _%e122903122923%_))
                                                  (_%tl122905122928%_
                                                   (##cdr _%e122903122923%_)))
                                              (let* ((_%path122931%_
                                                      _%hd122904122926%_)
                                                     (_%specs122933%_
                                                      _%tl122905122928%_))
                                                (if '#t
                                                    (let ((_%src-ctx122935%_
                                                           (_%import-spec-source122815%_
                                                            _%path122931%_))
                                                          (_%exports122936%_
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
                                                          (_%specs122937%_
                                                           (gx#syntax->list
                                                            _%specs122933%_)))
                                                      (for-each
                                                       (lambda (_%out122939%_)
                                                         (hash-put!
                                                          _%exports122936%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122939%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122939%_ '4 '#f '#f))
                  _%out122939%_))
               (##unchecked-structure-ref _%src-ctx122935%_ '9 '#f '#f))
              (_%K122887%_
               _%rest122888%_
               (__foldl1
                (lambda (_%spec122941%_ _%r122942%_)
                  (let* ((_%e122943122959%_ _%spec122941%_)
                         (_%E122945122963%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122943122959%_)))
                         (_%E122944123018%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122943122959%_)
                                (let ((_%e122946122967%_
                                       (gx#syntax-e _%e122943122959%_)))
                                  (let ((_%hd122947122970%_
                                         (##car _%e122946122967%_))
                                        (_%tl122948122972%_
                                         (##cdr _%e122946122967%_)))
                                    (let ((_%phi122975%_ _%hd122947122970%_))
                                      (if (gx#stx-pair? _%tl122948122972%_)
                                          (let ((_%e122949122977%_
                                                 (gx#syntax-e
                                                  _%tl122948122972%_)))
                                            (let ((_%hd122950122980%_
                                                   (##car _%e122949122977%_))
                                                  (_%tl122951122982%_
                                                   (##cdr _%e122949122977%_)))
                                              (let ((_%name122985%_
                                                     _%hd122950122980%_))
                                                (if (gx#stx-pair?
                                                     _%tl122951122982%_)
                                                    (let ((_%e122952122987%_
                                                           (gx#syntax-e
                                                            _%tl122951122982%_)))
                                                      (let ((_%hd122953122990%_
                                                             (##car _%e122952122987%_))
                                                            (_%tl122954122992%_
                                                             (##cdr _%e122952122987%_)))
                                                        (let ((_%src-phi122995%_
                                                               _%hd122953122990%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122954122992%_)
                                                              (let ((_%e122955122997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122954122992%_)))
                        (let ((_%hd122956123000%_ (##car _%e122955122997%_))
                              (_%tl122957123002%_ (##cdr _%e122955122997%_)))
                          (let ((_%src-name123005%_ _%hd122956123000%_))
                            (if (gx#stx-null? _%tl122957123002%_)
                                (if (and (gx#stx-fixnum? _%src-phi122995%_)
                                         (gx#identifier? _%src-name123005%_)
                                         (gx#stx-fixnum? _%phi122975%_)
                                         (gx#identifier? _%name122985%_))
                                    (let ((_%src-phi123007%_
                                           (gx#stx-e _%src-phi122995%_))
                                          (_%src-name123008%_
                                           (gx#core-identifier-key
                                            _%src-name123005%_))
                                          (_%phi123009%_
                                           (gx#stx-e _%phi122975%_))
                                          (_%name123010%_
                                           (gx#core-identifier-key
                                            _%name122985%_)))
                                      (let ((_%$e123012%_
                                             (hash-get
                                              _%exports122936%_
                                              (cons _%src-phi123007%_
                                                    _%src-name123008%_))))
                                        (if _%$e123012%_
                                            ((lambda (_%out123015%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out123015%_
                                                      _%name123010%_
                                                      (fx- _%phi123009%_
                                                           _%src-phi123007%_))
                                                     _%r122942%_))
                                             _%$e123012%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122807%_
                                               _%hd122886%_)))))
                                    (_%E122945122963%_))
                                (_%E122945122963%_)))))
                      (_%E122945122963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122945122963%_)))))
                                          (_%E122945122963%_)))))
                                (_%E122945122963%_)))))
                    (_%E122944123018%_)))
                _%r122889%_
                _%specs122937%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122899122911%_)))))
                                          (_%E122899122911%_))))
                                  (_%E122899122911%_))))
                           (_%E122891123044%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122890122907%_)
                                  (let ((_%e122893123026%_
                                         (gx#syntax-e _%e122890122907%_)))
                                    (let ((_%hd122894123029%_
                                           (##car _%e122893123026%_))
                                          (_%tl122895123031%_
                                           (##cdr _%e122893123026%_)))
                                      (if (gx#stx-pair? _%tl122895123031%_)
                                          (let ((_%e122896123034%_
                                                 (gx#syntax-e
                                                  _%tl122895123031%_)))
                                            (let ((_%hd122897123037%_
                                                   (##car _%e122896123034%_))
                                                  (_%tl122898123039%_
                                                   (##cdr _%e122896123034%_)))
                                              (let ((_%path123042%_
                                                     _%hd122897123037%_))
                                                (if (gx#stx-null?
                                                     _%tl122898123039%_)
                                                    (if '#t
                                                        (_%K122887%_
                                                         _%rest122888%_
                                                         (cons (_%import-spec-source122815%_
                                                                _%path123042%_)
                                                               _%r122889%_))
                                                        (_%E122892123022%_))
                                                    (_%E122892123022%_)))))
                                          (_%E122892123022%_))))
                                  (_%E122892123022%_)))))
                      (_%E122891123044%_))))
                 (_%import-spec-source122815%_
                  (lambda (_%spath122884%_)
                    (gx#core-import-nested-module
                     _%spath122884%_
                     _%stx122807%_)))
                 (_%import!122816%_
                  (lambda (_%rbody122829%_)
                    (letrec* ((_%current-ctx122831%_
                               (gx#current-expander-context))
                              (_%deps122832%_ (make-hash-table-eq))
                              (_%bind!122833%_
                               (lambda (_%hd122882%_)
                                 (gx#core-bind-import!__1
                                  _%hd122882%_
                                  _%current-ctx122831%_))))
                      (let _%lp122835%_ ((_%rest122837%_ _%rbody122829%_)
                                         (_%body122838%_ '()))
                        (let* ((_%rest122839122847%_ _%rest122837%_)
                               (_%else122841122858%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122831%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122831%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122831%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122838%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122855%_ _%_122856%_)
                                     (gx#eval-module _%ctx122855%_))
                                   _%deps122832%_)
                                  _%body122838%_))
                               (_%K122843122870%_
                                (lambda (_%rest122861%_ _%hd122862%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122862%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122833%_ _%hd122862%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122862%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122862%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122832%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122862%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122862%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122833%_
                                             (##unchecked-structure-ref
                                              _%hd122862%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122862%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122832%_
                                                 (##unchecked-structure-ref
                                                  _%hd122862%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122866%_
                                                 (##structure-instance-of?
                                                  _%hd122862%_
                                                  'gx#module-context::t)))
                                            (if _%$e122866%_
                                                _%$e122866%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122807%_
                                                   _%hd122862%_))))))
                                  (_%lp122835%_
                                   _%rest122861%_
                                   (cons _%hd122862%_ _%body122838%_)))))
                          (if (##pair? _%rest122839122847%_)
                              (let ((_%hd122844122873%_
                                     (##car _%rest122839122847%_))
                                    (_%tl122845122875%_
                                     (##cdr _%rest122839122847%_)))
                                (let* ((_%hd122878%_ _%hd122844122873%_)
                                       (_%rest122880%_ _%tl122845122875%_))
                                  (_%K122843122870%_
                                   _%rest122880%_
                                   _%hd122878%_)))
                              (_%else122841122858%_)))))))
                 (_%expanded-import?122817%_
                  (lambda (_%e122821%_)
                    (let ((_%$e122823%_
                           (##structure-direct-instance-of?
                            _%e122821%_
                            'gx#import-set::t)))
                      (if _%$e122823%_
                          _%$e122823%_
                          (let ((_%$e122826%_
                                 (##structure-direct-instance-of?
                                  _%e122821%_
                                  'gx#module-import::t)))
                            (if _%$e122826%_
                                _%$e122826%_
                                (##structure-instance-of?
                                 _%e122821%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122819%_
                 (gx#core-expand-import/export
                  _%stx122807%_
                  _%expanded-import?122817%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122810%_)))
            (if _%internal-expand?122808%_
                (reverse _%rbody122819%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122816%_ _%rbody122819%_))
                 (gx#stx-source _%stx122807%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123146%_)
        (let ((_%internal-expand?123148%_ '#f))
          (gx#core-expand-import%__%
           _%stx123146%_
           _%internal-expand?123148%_))))
    (define gx#core-expand-import%
      (lambda _g125795_
        (let ((_g125794_ (##length _g125795_)))
          (cond ((##fx= _g125794_ 1)
                 (apply (lambda (_%stx123146%_)
                          (gx#core-expand-import%__0 _%stx123146%_))
                        _g125795_))
                ((##fx= _g125794_ 2)
                 (apply (lambda (_%stx123150%_ _%internal-expand?123151%_)
                          (gx#core-expand-import%__%
                           _%stx123150%_
                           _%internal-expand?123151%_))
                        _g125795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125795_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122734%_ _%where122735%_)
        (let* ((_%e122736122743%_ _%spath122734%_)
               (_%E122738122747%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122736122743%_)))
               (_%E122737122802%_
                (lambda ()
                  (if (gx#stx-pair? _%e122736122743%_)
                      (let ((_%e122739122751%_
                             (gx#syntax-e _%e122736122743%_)))
                        (let ((_%hd122740122754%_ (##car _%e122739122751%_))
                              (_%tl122741122756%_ (##cdr _%e122739122751%_)))
                          (let* ((_%origin122759%_ _%hd122740122754%_)
                                 (_%sub122761%_ _%tl122741122756%_))
                            (if '#t
                                (let ((_%origin-ctx122763%_
                                       (if (gx#stx-false? _%origin122759%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122759%_))))
                                  (let _%lp122765%_ ((_%rest122767%_
                                                      _%sub122761%_)
                                                     (_%ctx122768%_
                                                      _%origin-ctx122763%_))
                                    (let* ((_%e122769122776%_ _%rest122767%_)
                                           (_%E122771122780%_
                                            (lambda () _%ctx122768%_))
                                           (_%E122770122798%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122769122776%_)
                                                  (let ((_%e122772122784%_
                                                         (gx#syntax-e
                                                          _%e122769122776%_)))
                                                    (let ((_%hd122773122787%_
                                                           (##car _%e122772122784%_))
                                                          (_%tl122774122789%_
                                                           (##cdr _%e122772122784%_)))
                                                      (let* ((_%id122792%_
                                                              _%hd122773122787%_)
                                                             (_%rest122794%_
                                                              _%tl122774122789%_))
                                                        (if '#t
                                                            (let ((_%bind122796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122792%_
                            '0
                            _%ctx122768%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122796%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122796%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122735%_
                           _%spath122734%_
                           _%id122792%_))
                      (_%lp122765%_
                       _%rest122794%_
                       (##unchecked-structure-ref _%bind122796%_ '4 '#f '#f)))
                    (_%E122771122780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122771122780%_)))))
                                      (_%E122770122798%_))))
                                (_%E122738122747%_)))))
                      (_%E122738122747%_)))))
          (_%E122737122802%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122732%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122732%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122226%_ _%internal-expand?122227%_)
        (letrec* ((_%make-export__125723125724%_
                   (lambda (_%bind122680%_
                            _%phi122681%_
                            _%ctx122682%_
                            _%name122683%_)
                     (let* ((_%key122685%_
                             (##unchecked-structure-ref
                              _%bind122680%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122687%_
                             (if _%name122683%_
                                 (gx#core-identifier-key _%name122683%_)
                                 _%key122685%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122682%_
                        _%key122685%_
                        _%phi122681%_
                        _%export-key122687%_
                        (let ((_%$e122690%_
                               (##structure-instance-of?
                                _%bind122680%_
                                'gx#extern-binding::t)))
                          (if _%$e122690%_
                              _%$e122690%_
                              (##structure-direct-instance-of?
                               _%bind122680%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125725125728%_
                   (lambda (_%bind122696%_)
                     (let* ((_%phi122698%_ (gx#current-export-expander-phi))
                            (_%ctx122700%_ (gx#current-expander-context))
                            (_%name122702%_ '#f))
                       (_%make-export__125723125724%_
                        _%bind122696%_
                        _%phi122698%_
                        _%ctx122700%_
                        _%name122702%_))))
                  (_%make-export__1__125726125729%_
                   (lambda (_%bind122704%_ _%phi122705%_)
                     (let* ((_%ctx122707%_ (gx#current-expander-context))
                            (_%name122709%_ '#f))
                       (_%make-export__125723125724%_
                        _%bind122704%_
                        _%phi122705%_
                        _%ctx122707%_
                        _%name122709%_))))
                  (_%make-export__2__125727125730%_
                   (lambda (_%bind122711%_ _%phi122712%_ _%ctx122713%_)
                     (let ((_%name122715%_ '#f))
                       (_%make-export__125723125724%_
                        _%bind122711%_
                        _%phi122712%_
                        _%ctx122713%_
                        _%name122715%_))))
                  (_%make-export122229%_
                   (lambda _g125797_
                     (let ((_g125796_ (##length _g125797_)))
                       (cond ((##fx= _g125796_ 1)
                              (apply (lambda (_%bind122696%_)
                                       (_%make-export__0__125725125728%_
                                        _%bind122696%_))
                                     _g125797_))
                             ((##fx= _g125796_ 2)
                              (apply (lambda (_%bind122704%_ _%phi122705%_)
                                       (_%make-export__1__125726125729%_
                                        _%bind122704%_
                                        _%phi122705%_))
                                     _g125797_))
                             ((##fx= _g125796_ 3)
                              (apply (lambda (_%bind122711%_
                                              _%phi122712%_
                                              _%ctx122713%_)
                                       (_%make-export__2__125727125730%_
                                        _%bind122711%_
                                        _%phi122712%_
                                        _%ctx122713%_))
                                     _g125797_))
                             ((##fx= _g125796_ 4)
                              (apply (lambda (_%bind122717%_
                                              _%phi122718%_
                                              _%ctx122719%_
                                              _%name122720%_)
                                       (_%make-export__125723125724%_
                                        _%bind122717%_
                                        _%phi122718%_
                                        _%ctx122719%_
                                        _%name122720%_))
                                     _g125797_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125797_))))))
                  (_%expand1122230%_
                   (lambda (_%hd122385%_
                            _%K122386%_
                            _%rest122387%_
                            _%r122388%_)
                     (let* ((_%e122389122421%_ _%hd122385%_)
                            (_%E122416122425%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122226%_
                                _%hd122385%_)))
                            (_%E122406122509%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122389122421%_)
                                   (let ((_%e122417122429%_
                                          (gx#syntax-e _%e122389122421%_)))
                                     (let ((_%hd122418122432%_
                                            (##car _%e122417122429%_))
                                           (_%tl122419122434%_
                                            (##cdr _%e122417122429%_)))
                                       (if (eq? (gx#stx-e _%hd122418122432%_)
                                                'import:)
                                           (let ((_%in122437%_
                                                  _%tl122419122434%_))
                                             (if (gx#stx-list? _%in122437%_)
                                                 (let _%lp122439%_ ((_%in-rest122441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122437%_)
                            (_%r122442%_ _%r122388%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122443122450%_
                                                           _%in-rest122441%_)
                                                          (_%E122445122454%_
                                                           (lambda ()
                                                             (_%K122386%_
                                                              _%rest122387%_
                                                              _%r122442%_)))
                                                          (_%E122444122505%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122443122450%_)
                         (let ((_%e122446122458%_
                                (gx#syntax-e _%e122443122450%_)))
                           (let ((_%hd122447122461%_ (##car _%e122446122458%_))
                                 (_%tl122448122463%_
                                  (##cdr _%e122446122458%_)))
                             (let* ((_%hd122466%_ _%hd122447122461%_)
                                    (_%in-rest122468%_ _%tl122448122463%_))
                               (if '#t
                                   (let ((_%src122503%_
                                          (if (gx#core-bound-module?
                                               _%hd122466%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd122466%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd122466%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd122466%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122466%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd122466%_)))
                                                      (if (gx#stx-string?
                                                           _%hd122466%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd122466%_
                                                              (gx#stx-source
                                                               _%stx122226%_))))
                                                          (let ()
                                                            (let* ((_%e122474122481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122466%_)
                           (_%E122476122485%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx122226%_
                               _%hd122466%_)))
                           (_%E122475122499%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122474122481%_)
                                  (let ((_%e122477122489%_
                                         (gx#syntax-e _%e122474122481%_)))
                                    (let ((_%hd122478122492%_
                                           (##car _%e122477122489%_))
                                          (_%tl122479122494%_
                                           (##cdr _%e122477122489%_)))
                                      (if (eq? (gx#stx-e _%hd122478122492%_)
                                               'in:)
                                          (let ((_%spath122497%_
                                                 _%tl122479122494%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath122497%_
                                                 _%stx122226%_)
                                                (_%E122476122485%_)))
                                          (_%E122476122485%_))))
                                  (_%E122476122485%_)))))
                      (_%E122475122499%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122439%_
                                      _%in-rest122468%_
                                      (_%export-imports122231%_
                                       _%src122503%_
                                       _%r122442%_)))
                                   (_%E122445122454%_)))))
                         (_%E122445122454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122444122505%_)))
                                                 (_%E122416122425%_)))
                                           (_%E122416122425%_))))
                                   (_%E122416122425%_))))
                            (_%E122393122549%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122389122421%_)
                                   (let ((_%e122407122513%_
                                          (gx#syntax-e _%e122389122421%_)))
                                     (let ((_%hd122408122516%_
                                            (##car _%e122407122513%_))
                                           (_%tl122409122518%_
                                            (##cdr _%e122407122513%_)))
                                       (if (eq? (gx#stx-e _%hd122408122516%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122409122518%_)
                                               (let ((_%e122410122521%_
                                                      (gx#syntax-e
                                                       _%tl122409122518%_)))
                                                 (let ((_%hd122411122524%_
                                                        (##car _%e122410122521%_))
                                                       (_%tl122412122526%_
                                                        (##cdr _%e122410122521%_)))
                                                   (let ((_%id122529%_
                                                          _%hd122411122524%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122412122526%_)
                                                         (let ((_%e122413122531%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122412122526%_)))
                   (let ((_%hd122414122534%_ (##car _%e122413122531%_))
                         (_%tl122415122536%_ (##cdr _%e122413122531%_)))
                     (let ((_%name122539%_ _%hd122414122534%_))
                       (if (gx#stx-null? _%tl122415122536%_)
                           (if '#t
                               (let* ((_%phi122541%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122543%_
                                       (gx#core-resolve-identifier__1
                                        _%id122529%_
                                        _%phi122541%_)))
                                 (if _%$e122543%_
                                     ((lambda (_%bind122546%_)
                                        (_%K122386%_
                                         _%rest122387%_
                                         (cons (_%make-export__125723125724%_
                                                _%bind122546%_
                                                _%phi122541%_
                                                (gx#current-expander-context)
                                                _%name122539%_)
                                               _%r122388%_)))
                                      _%$e122543%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx122226%_
                                        _%hd122385%_
                                        _%id122529%_))))
                               (_%E122406122509%_))
                           (_%E122406122509%_)))))
                 (_%E122406122509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122406122509%_))
                                           (_%E122406122509%_))))
                                   (_%E122406122509%_))))
                            (_%E122392122599%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122389122421%_)
                                   (let ((_%e122394122553%_
                                          (gx#syntax-e _%e122389122421%_)))
                                     (let ((_%hd122395122556%_
                                            (##car _%e122394122553%_))
                                           (_%tl122396122558%_
                                            (##cdr _%e122394122553%_)))
                                       (if (eq? (gx#stx-e _%hd122395122556%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122396122558%_)
                                               (let ((_%e122397122561%_
                                                      (gx#syntax-e
                                                       _%tl122396122558%_)))
                                                 (let ((_%hd122398122564%_
                                                        (##car _%e122397122561%_))
                                                       (_%tl122399122566%_
                                                        (##cdr _%e122397122561%_)))
                                                   (let ((_%phi122569%_
                                                          _%hd122398122564%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122399122566%_)
                                                         (let ((_%e122400122571%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122399122566%_)))
                   (let ((_%hd122401122574%_ (##car _%e122400122571%_))
                         (_%tl122402122576%_ (##cdr _%e122400122571%_)))
                     (let ((_%id122579%_ _%hd122401122574%_))
                       (if (gx#stx-pair? _%tl122402122576%_)
                           (let ((_%e122403122581%_
                                  (gx#syntax-e _%tl122402122576%_)))
                             (let ((_%hd122404122584%_
                                    (##car _%e122403122581%_))
                                   (_%tl122405122586%_
                                    (##cdr _%e122403122581%_)))
                               (let ((_%name122589%_ _%hd122404122584%_))
                                 (if (gx#stx-null? _%tl122405122586%_)
                                     (if (and (gx#stx-fixnum? _%phi122569%_)
                                              (gx#identifier? _%id122579%_)
                                              (gx#identifier? _%name122589%_))
                                         (let* ((_%phi122591%_
                                                 (gx#stx-e _%phi122569%_))
                                                (_%$e122593%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122579%_
                                                  _%phi122591%_)))
                                           (if _%$e122593%_
                                               ((lambda (_%bind122596%_)
                                                  (_%K122386%_
                                                   _%rest122387%_
                                                   (cons (_%make-export__125723125724%_
                                                          _%bind122596%_
                                                          _%phi122591%_
                                                          (gx#current-expander-context)
                                                          _%name122589%_)
                                                         _%r122388%_)))
                                                _%$e122593%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx122226%_
                                                  _%hd122385%_
                                                  _%id122579%_))))
                                         (_%E122393122549%_))
                                     (_%E122393122549%_)))))
                           (_%E122393122549%_)))))
                 (_%E122393122549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122393122549%_))
                                           (_%E122393122549%_))))
                                   (_%E122393122549%_))))
                            (_%E122391122611%_
                             (lambda ()
                               (let ((_%id122603%_ _%e122389122421%_))
                                 (if (gx#identifier? _%id122603%_)
                                     (let ((_%$e122605%_
                                            (gx#core-resolve-identifier__1
                                             _%id122603%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122605%_
                                           ((lambda (_%bind122608%_)
                                              (_%K122386%_
                                               _%rest122387%_
                                               (cons (_%make-export__0__125725125728%_
                                                      _%bind122608%_)
                                                     _%r122388%_)))
                                            _%$e122605%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx122226%_
                                              _%hd122385%_))))
                                     (_%E122392122599%_)))))
                            (_%E122390122675%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122389122421%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122615%_
                                               (gx#current-expander-context))
                                              (_%current-phi122617%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122619%_
                                               (gx#core-context-shift
                                                _%current-ctx122615%_
                                                _%current-phi122617%_))
                                              (_%phi-bind122621%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122619%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122624%_ ((_%bind-rest122626%_
                                                             _%phi-bind122621%_)
                                                            (_%set122627%_
                                                             '()))
                                           (let* ((_%bind-rest122628122638%_
                                                   _%bind-rest122626%_)
                                                  (_%else122630122646%_
                                                   (lambda ()
                                                     (_%K122386%_
                                                      _%rest122387%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122617%_
                                                             _%set122627%_)
                                                            _%r122388%_))))
                                                  (_%K122632122656%_
                                                   (lambda (_%bind-rest122649%_
                                                            _%bind122650%_
                                                            _%key122651%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122650%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122650%_))
                                                         (_%lp122624%_
                                                          _%bind-rest122649%_
                                                          _%set122627%_)
                                                         (_%lp122624%_
                                                          _%bind-rest122649%_
                                                          (cons (_%make-export__2__125727125730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122650%_
                         _%current-phi122617%_
                         _%current-ctx122615%_)
                        _%set122627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122628122638%_)
                                                 (let ((_%hd122633122659%_
                                                        (##car _%bind-rest122628122638%_))
                                                       (_%tl122634122661%_
                                                        (##cdr _%bind-rest122628122638%_)))
                                                   (if (##pair? _%hd122633122659%_)
                                                       (let ((_%hd122635122664%_
                                                              (##car _%hd122633122659%_))
                                                             (_%tl122636122666%_
                                                              (##cdr _%hd122633122659%_)))
                                                         (let* ((_%key122669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122635122664%_)
                        (_%bind122671%_ _%tl122636122666%_)
                        (_%bind-rest122673%_ _%tl122634122661%_))
                   (_%K122632122656%_
                    _%bind-rest122673%_
                    _%bind122671%_
                    _%key122669%_)))
               (_%else122630122646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122630122646%_)))))
                                       (_%E122391122611%_))
                                   (_%E122391122611%_)))))
                       (_%E122390122675%_))))
                  (_%export-imports122231%_
                   (lambda (_%src122261%_ _%r122262%_)
                     (letrec* ((_%current-ctx122264%_
                                (gx#current-expander-context))
                               (_%current-phi122265%_
                                (gx#current-export-expander-phi))
                               (_%import->export122266%_
                                (lambda (_%in122347%_)
                                  (let* ((_%in122348122356%_ _%in122347%_)
                                         (_%E122350122360%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122348122356%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122351122367%_
                                          (lambda (_%phi122363%_
                                                   _%key122364%_
                                                   _%out122365%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122264%_
                                             _%key122364%_
                                             _%phi122363%_
                                             _%key122364%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122348122356%_
                                         'gx#module-import::t)
                                        (let* ((_%e122352122370%_
                                                (##unchecked-structure-ref
                                                 _%in122348122356%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122373%_
                                                _%e122352122370%_)
                                               (_%e122353122375%_
                                                (##unchecked-structure-ref
                                                 _%in122348122356%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122378%_
                                                _%e122353122375%_)
                                               (_%e122354122380%_
                                                (##unchecked-structure-ref
                                                 _%in122348122356%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122383%_
                                                _%e122354122380%_))
                                          (_%K122351122367%_
                                           _%phi122383%_
                                           _%key122378%_
                                           _%out122373%_))
                                        (_%E122350122360%_)))))
                               (_%fold-e122267%_
                                (lambda (_%in122269%_ _%r122270%_)
                                  (let* ((_%in122271122285%_ _%in122269%_)
                                         (_%else122274122293%_
                                          (lambda () _%r122270%_)))
                                    (let ((_%K122280122329%_
                                           (lambda (_%phi122325%_
                                                    _%key122326%_
                                                    _%out122327%_)
                                             (if (and (fx= _%phi122325%_
                                                           _%current-phi122265%_)
                                                      (eq? _%src122261%_
                                                           (##unchecked-structure-ref
                                                            _%out122327%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122266%_
                                                        _%in122269%_)
                                                       _%r122270%_)
                                                 _%r122270%_)))
                                          (_%K122276122304%_
                                           (lambda (_%imports122297%_
                                                    _%phi122298%_
                                                    _%ctx122299%_)
                                             (if (and (fx= _%phi122298%_
                                                           _%current-phi122265%_)
                                                      (eq? _%src122261%_
                                                           _%ctx122299%_))
                                                 (__foldl1
                                                  (lambda (_%in122301%_
                                                           _%r122302%_)
                                                    (cons (_%import->export122266%_
                                                           _%in122301%_)
                                                          _%r122302%_))
                                                  _%r122270%_
                                                  _%imports122297%_)
                                                 _%r122270%_))))
                                      (let ((_%try-match122273122322%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122271122285%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122277122307%_
                                                           (##unchecked-structure-ref
                                                            _%in122271122285%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122278122312%_
                                                           (##unchecked-structure-ref
                                                            _%in122271122285%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122279122317%_
                                                           (##unchecked-structure-ref
                                                            _%in122271122285%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122310%_
                                                            _%e122277122307%_)
                                                           (_%phi122315%_
                                                            _%e122278122312%_)
                                                           (_%imports122320%_
                                                            _%e122279122317%_))
                                                       (_%K122276122304%_
                                                        _%imports122320%_
                                                        _%phi122315%_
                                                        _%ctx122310%_)))
                                                   (_%else122274122293%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122271122285%_
                                             'gx#module-import::t)
                                            (let* ((_%e122281122332%_
                                                    (##unchecked-structure-ref
                                                     _%in122271122285%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122282122337%_
                                                    (##unchecked-structure-ref
                                                     _%in122271122285%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122283122342%_
                                                    (##unchecked-structure-ref
                                                     _%in122271122285%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122335%_
                                                     _%e122281122332%_)
                                                    (_%key122340%_
                                                     _%e122282122337%_)
                                                    (_%phi122345%_
                                                     _%e122283122342%_))
                                                (_%K122280122329%_
                                                 _%phi122345%_
                                                 _%key122340%_
                                                 _%out122335%_)))
                                            (_%try-match122273122322%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122261%_
                              _%current-phi122265%_
                              (__foldl1
                               _%fold-e122267%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122264%_
                                '8
                                '#f
                                '#f)))
                             _%r122262%_))))
                  (_%export!122232%_
                   (lambda (_%rbody122248%_)
                     (letrec* ((_%current-ctx122250%_
                                (gx#current-expander-context))
                               (_%fold-e122251%_
                                (lambda (_%out122255%_ _%r122256%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122255%_
                                       'gx#module-export::t)
                                      (let () (cons _%out122255%_ _%r122256%_))
                                      (if (##structure-direct-instance-of?
                                           _%out122255%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r122256%_
                                             (##unchecked-structure-ref
                                              _%out122255%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r122256%_))))))
                       (let ((_%body122253%_ (reverse _%rbody122248%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122250%_
                          (__foldl1
                           _%fold-e122251%_
                           (##unchecked-structure-ref
                            _%current-ctx122250%_
                            '9
                            '#f
                            '#f)
                           _%body122253%_)
                          '9
                          '#f
                          '#f)
                         _%body122253%_))))
                  (_%expanded-export?122233%_
                   (lambda (_%e122243%_)
                     (let ((_%$e122245%_
                            (##structure-direct-instance-of?
                             _%e122243%_
                             'gx#module-export::t)))
                       (if _%$e122245%_
                           _%$e122245%_
                           (##structure-direct-instance-of?
                            _%e122243%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122227%_)
              (let ((_%rbody122239%_
                     (gx#core-expand-import/export
                      _%stx122226%_
                      _%expanded-export?122233%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122230%_)))
                (if _%internal-expand?122227%_
                    (reverse _%rbody122239%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122232%_ _%rbody122239%_))
                     (gx#stx-source _%stx122226%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx122226%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx122226%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122725%_)
        (let ((_%internal-expand?122727%_ '#f))
          (gx#core-expand-export%__%
           _%stx122725%_
           _%internal-expand?122727%_))))
    (define gx#core-expand-export%
      (lambda _g125799_
        (let ((_g125798_ (##length _g125799_)))
          (cond ((##fx= _g125798_ 1)
                 (apply (lambda (_%stx122725%_)
                          (gx#core-expand-export%__0 _%stx122725%_))
                        _g125799_))
                ((##fx= _g125798_ 2)
                 (apply (lambda (_%stx122729%_ _%internal-expand?122730%_)
                          (gx#core-expand-export%__%
                           _%stx122729%_
                           _%internal-expand?122730%_))
                        _g125799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125799_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122223%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122223%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122193%_)
        (let* ((_%e122194122201%_ _%stx122193%_)
               (_%E122196122205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122194122201%_)))
               (_%E122195122219%_
                (lambda ()
                  (if (gx#stx-pair? _%e122194122201%_)
                      (let ((_%e122197122209%_
                             (gx#syntax-e _%e122194122201%_)))
                        (let ((_%hd122198122212%_ (##car _%e122197122209%_))
                              (_%tl122199122214%_ (##cdr _%e122197122209%_)))
                          (let ((_%body122217%_ _%tl122199122214%_))
                            (if (gx#identifier-list? _%body122217%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122217%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122217%_))
                                   (gx#stx-source _%stx122193%_)))
                                (_%E122196122205%_)))))
                      (_%E122196122205%_)))))
          (_%E122195122219%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122159%_ _%private?122160%_ _%phi122161%_ _%ctx122162%_)
        (gx#core-bind-syntax!__%
         _%id122159%_
         ((if _%private?122160%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122159%_))
         _%private?122160%_
         _%phi122161%_
         _%ctx122162%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122167%_)
        (let* ((_%private?122169%_ '#f)
               (_%phi122171%_ (gx#current-expander-phi))
               (_%ctx122173%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122167%_
           _%private?122169%_
           _%phi122171%_
           _%ctx122173%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122175%_ _%private?122176%_)
        (let* ((_%phi122178%_ (gx#current-expander-phi))
               (_%ctx122180%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122175%_
           _%private?122176%_
           _%phi122178%_
           _%ctx122180%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122182%_ _%private?122183%_ _%phi122184%_)
        (let ((_%ctx122186%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122182%_
           _%private?122183%_
           _%phi122184%_
           _%ctx122186%_))))
    (define gx#core-bind-feature!
      (lambda _g125801_
        (let ((_g125800_ (##length _g125801_)))
          (cond ((##fx= _g125800_ 1)
                 (apply (lambda (_%id122167%_)
                          (gx#core-bind-feature!__0 _%id122167%_))
                        _g125801_))
                ((##fx= _g125800_ 2)
                 (apply (lambda (_%id122175%_ _%private?122176%_)
                          (gx#core-bind-feature!__1
                           _%id122175%_
                           _%private?122176%_))
                        _g125801_))
                ((##fx= _g125800_ 3)
                 (apply (lambda (_%id122182%_ _%private?122183%_ _%phi122184%_)
                          (gx#core-bind-feature!__2
                           _%id122182%_
                           _%private?122183%_
                           _%phi122184%_))
                        _g125801_))
                ((##fx= _g125800_ 4)
                 (apply (lambda (_%id122188%_
                                 _%private?122189%_
                                 _%phi122190%_
                                 _%ctx122191%_)
                          (gx#core-bind-feature!__%
                           _%id122188%_
                           _%private?122189%_
                           _%phi122190%_
                           _%ctx122191%_))
                        _g125801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125801_))))))))
