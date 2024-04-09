(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712696213)
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
      (lambda _%$args125680%_
        (apply make-instance gx#module-import::t _%$args125680%_)))
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
      (lambda _%$args125677%_
        (apply make-instance gx#module-export::t _%$args125677%_)))
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
      (lambda _%$args125674%_
        (apply make-instance gx#import-set::t _%$args125674%_)))
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
      (lambda _%$args125671%_
        (apply make-instance gx#export-set::t _%$args125671%_)))
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
      (lambda _%$args125668%_
        (apply make-instance gx#import-expander::t _%$args125668%_)))
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
      (lambda _%$args125665%_
        (apply make-instance gx#export-expander::t _%$args125665%_)))
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
      (lambda _%$args125662%_
        (apply make-instance gx#import-export-expander::t _%$args125662%_)))
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
      (lambda (_%path125659%_ _%fun125660%_)
        (call-with-input-file
         (cons 'path: (cons _%path125659%_ gx#source-file-settings))
         _%fun125660%_)))
    (define gx#module-context:::init!
      (lambda (_%self125642%_
               _%id125643%_
               _%super125644%_
               _%ns125645%_
               _%path125646%_)
        (let ((_%self125649%_ _%self125642%_))
          (if (##fx< '11 (##structure-length _%self125649%_))
              (begin
                (##unchecked-structure-set!
                 _%self125649%_
                 _%id125643%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125649%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125649%_
                 _%super125644%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125649%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125649%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125649%_
                 _%ns125645%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125649%_
                 _%path125646%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125649%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125649%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125649%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125649%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125649%_
                     '11
                     (##vector-length _%self125649%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125475%_ _%ctx125476%_ _%root125477%_)
        (let ()
          (let* ((_%self125480%_ _%self125475%_)
                 (_%super125496%_
                  (let ((_%$e125490%_ _%root125477%_))
                    (if _%$e125490%_
                        _%$e125490%_
                        (let ((_%$e125493%_ (gx#core-context-root__0)))
                          (if _%$e125493%_
                              _%$e125493%_
                              (let ((__obj125724
                                     (##structure gx#root-context::t '#f '#f)))
                                (let ((__constructor125725
                                       (direct-method-ref
                                        gx#root-context::t
                                        __obj125724
                                        ':init!)))
                                  (if __constructor125725
                                      (__constructor125725 __obj125724)
                                      (error '"missing constructor method implementation"
                                             'class:
                                             gx#root-context::t
                                             'method:
                                             ':init!)))
                                __obj125724)))))))
            (if _%ctx125476%_
                (let ((_%id125499%_
                       (##structure-ref
                        _%ctx125476%_
                        '1
                        gx#expander-context::t
                        '#f))
                      (_%path125500%_
                       (##structure-ref
                        _%ctx125476%_
                        '7
                        gx#module-context::t
                        '#f))
                      (_%in125501%_
                       (map gx#core-module-export->import
                            (##structure-ref
                             _%ctx125476%_
                             '9
                             gx#module-context::t
                             '#f)))
                      (_%e125502%_
                       (__make-promise
                        (lambda () (gx#eval-module _%ctx125476%_)))))
                  (if (##fx< '8 (##structure-length _%self125480%_))
                      (begin
                        (##unchecked-structure-set!
                         _%self125480%_
                         _%id125499%_
                         '1
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125480%_
                         (make-hash-table-eq 'size: (##length _%in125501%_))
                         '2
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125480%_
                         _%super125496%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125480%_
                         '#f
                         '4
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125480%_
                         '#f
                         '5
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125480%_
                         _%path125500%_
                         '6
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125480%_
                         _%in125501%_
                         '7
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125480%_
                         _%e125502%_
                         '8
                         '#f
                         '#f)
                        '#!void)
                      (error '"struct-instance-init!: too many arguments for struct"
                             _%self125480%_
                             '8
                             (##vector-length _%self125480%_)))
                  (##for-each
                   (lambda (_%g125503125505%_)
                     (gx#core-bind-weak-import!__%
                      _%g125503125505%_
                      _%self125480%_))
                   _%in125501%_))
                (if (##fx< '8 (##structure-length _%self125480%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125480%_
                       '#f
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125480%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125480%_
                       _%super125496%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125480%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125480%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125480%_
                       '#f
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125480%_
                       '()
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125480%_
                       '#f
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125480%_
                           '8
                           (##vector-length _%self125480%_))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125511%_ _%ctx125512%_)
        (let ((_%root125514%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125511%_
           _%ctx125512%_
           _%root125514%_))))
    (define gx#prelude-context:::init!
      (lambda _g125731_
        (let ((_g125730_ (##length _g125731_)))
          (cond ((##fx= _g125730_ 2)
                 (apply (lambda (_%self125511%_ _%ctx125512%_)
                          (gx#prelude-context:::init!__0
                           _%self125511%_
                           _%ctx125512%_))
                        _g125731_))
                ((##fx= _g125730_ 3)
                 (apply (lambda (_%self125516%_ _%ctx125517%_ _%root125518%_)
                          (gx#prelude-context:::init!__%
                           _%self125516%_
                           _%ctx125517%_
                           _%root125518%_))
                        _g125731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125731_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125349%_ _%e125350%_)
        (if (##fx< '3 (##structure-length _%self125349%_))
            (begin
              (##unchecked-structure-set!
               _%self125349%_
               _%e125350%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125349%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125349%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125349%_
                   '3
                   (##vector-length _%self125349%_)))))
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
      (lambda (_%g124975124978%_ _%g124976124980%_)
        (gx#core-apply-user-expander__%
         _%g124975124978%_
         _%g124976124980%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124846124849%_ _%g124847124851%_)
        (gx#core-apply-user-expander__%
         _%g124846124849%_
         _%g124847124851%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124717%_)
        (let* ((_%path124719%_
                (##structure-ref _%ctx124717%_ '7 gx#module-context::t '#f))
               (_%path124721%_
                (if (pair? _%path124719%_)
                    (last _%path124719%_)
                    _%path124719%_)))
          (if (string? _%path124721%_) _%path124721%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124693%_ _%reload?124694%_ _%eval?124695%_)
        (let ((_%ctx124697%_
               ((gx#current-expander-module-import)
                _%path124693%_
                _%reload?124694%_)))
          (if (and _%ctx124697%_ _%eval?124695%_)
              (gx#eval-module _%ctx124697%_)
              '#!void)
          _%ctx124697%_)))
    (define gx#import-module__0
      (lambda (_%path124702%_)
        (let* ((_%reload?124704%_ '#f) (_%eval?124706%_ '#f))
          (gx#import-module__%
           _%path124702%_
           _%reload?124704%_
           _%eval?124706%_))))
    (define gx#import-module__1
      (lambda (_%path124708%_ _%reload?124709%_)
        (let ((_%eval?124711%_ '#f))
          (gx#import-module__%
           _%path124708%_
           _%reload?124709%_
           _%eval?124711%_))))
    (define gx#import-module
      (lambda _g125733_
        (let ((_g125732_ (##length _g125733_)))
          (cond ((##fx= _g125732_ 1)
                 (apply (lambda (_%path124702%_)
                          (gx#import-module__0 _%path124702%_))
                        _g125733_))
                ((##fx= _g125732_ 2)
                 (apply (lambda (_%path124708%_ _%reload?124709%_)
                          (gx#import-module__1
                           _%path124708%_
                           _%reload?124709%_))
                        _g125733_))
                ((##fx= _g125732_ 3)
                 (apply (lambda (_%path124713%_
                                 _%reload?124714%_
                                 _%eval?124715%_)
                          (gx#import-module__%
                           _%path124713%_
                           _%reload?124714%_
                           _%eval?124715%_))
                        _g125733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125733_))))))
    (define gx#eval-module
      (lambda (_%mod124690%_)
        ((gx#current-expander-module-eval) _%mod124690%_)))
    (define gx#core-eval-module
      (lambda (_%obj124670%_)
        (letrec ((_%force-e124672%_
                  (lambda (_%getf124686%_ _%e124687%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124686%_ _%e124687%_)))
                     gx#current-expander-context
                     _%e124687%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124674%_ ((_%e124676%_ _%obj124670%_))
            (if (##structure-instance-of? _%e124676%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124679%_
                         (gx#core-context-prelude__% _%e124676%_)))
                    (if _%$e124679%_ (_%recur124674%_ _%$e124679%_) '#!void))
                  (_%force-e124672%_ gx#module-context-e _%e124676%_))
                (if (##structure-instance-of?
                     _%e124676%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124672%_ gx#prelude-context-e _%e124676%_))
                    (if (gx#stx-string? _%e124676%_)
                        (let ()
                          (_%recur124674%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124676%_))))
                        (if (gx#core-library-module-path? _%e124676%_)
                            (let ()
                              (_%recur124674%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124676%_))))
                            (let ()
                              (error '"cannot eval module"
                                     _%obj124670%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124650%_)
        (let _%lp124652%_ ((_%e124654%_ _%ctx124650%_))
          (if (or (##structure-instance-of? _%e124654%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124654%_ 'gx#local-context::t))
              (let ()
                (_%lp124652%_
                 (##unchecked-structure-ref _%e124654%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124654%_ 'gx#prelude-context::t)
                  (let () _%e124654%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124666%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124666%_))))
    (define gx#core-context-prelude
      (lambda _g125735_
        (let ((_g125734_ (##length _g125735_)))
          (cond ((##fx= _g125734_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125735_))
                ((##fx= _g125734_ 1)
                 (apply (lambda (_%ctx124668%_)
                          (gx#core-context-prelude__% _%ctx124668%_))
                        _g125735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125735_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124641%_)
        (let ((_%$e124643%_ (hash-get gx#__module-registry _%ctx124641%_)))
          (if _%$e124643%_
              _%$e124643%_
              (let ((_%pre124647%_
                     (let ((__obj125726
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
                       (gx#prelude-context:::init! __obj125726 _%ctx124641%_)
                       __obj125726)))
                (hash-put! gx#__module-registry _%ctx124641%_ _%pre124647%_)
                _%pre124647%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124513%_ _%reload?124514%_)
        (letrec ((_%import-source124516%_
                  (lambda (_%path124605%_)
                    (if (member _%path124605%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124605%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125736_ (gx#core-read-module _%path124605%_)))
                         (begin
                           (let ((_g125737_
                                  (if (##values? _g125736_)
                                      (##vector-length _g125736_)
                                      1)))
                             (if (not (##fx= _g125737_ 4))
                                 (error "Context expects 4 values" _g125737_)))
                           (let ((_%pre124608%_ (##vector-ref _g125736_ 0))
                                 (_%id124609%_ (##vector-ref _g125736_ 1))
                                 (_%ns124610%_ (##vector-ref _g125736_ 2))
                                 (_%body124611%_ (##vector-ref _g125736_ 3)))
                             (let* ((_%prelude124621%_
                                     (if (##structure-instance-of?
                                          _%pre124608%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124608%_)
                                         (if (##structure-instance-of?
                                              _%pre124608%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124608%_))
                                             (if (string? _%pre124608%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124608%_)))
                                                 (if (not _%pre124608%_)
                                                     (let ((_%$e124617%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124617%_
                                                           _%$e124617%_
                                                           (let ((__obj125727
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
                     (gx#prelude-context:::init! __obj125727 '#f)
                     __obj125727)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"cannot import module; unknown prelude"
                                                              _%rpath124513%_
                                                              _%pre124608%_)))))))
                                    (_%ctx124623%_
                                     (let ((__obj125728
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
                                        __obj125728
                                        _%id124609%_
                                        _%prelude124621%_
                                        _%ns124610%_
                                        _%path124605%_)
                                       __obj125728))
                                    (_%body124625%_
                                     (gx#core-expand-module-begin
                                      _%body124611%_
                                      _%ctx124623%_))
                                    (_%body124627%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124625%_)
                                      _%path124605%_
                                      _%ctx124623%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124623%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124627%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124623%_
                                _%body124627%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124605%_
                                _%ctx124623%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124609%_
                                _%ctx124623%_)
                               _%ctx124623%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124605%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124517%_
                  (lambda (_%rpath124533%_)
                    (let* ((_%rpath124534124541%_ _%rpath124533%_)
                           (_%E124536124545%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124534124541%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124537124593%_
                            (lambda (_%refs124548%_ _%origin124549%_)
                              (let ((_%ctx124551%_
                                     (if _%origin124549%_
                                         (gx#core-import-module__%
                                          _%origin124549%_
                                          _%reload?124514%_)
                                         (gx#current-expander-context))))
                                (let _%lp124553%_ ((_%rest124555%_
                                                    _%refs124548%_)
                                                   (_%ctx124556%_
                                                    _%ctx124551%_))
                                  (let* ((_%rest124557124565%_ _%rest124555%_)
                                         (_%else124559124573%_
                                          (lambda () _%ctx124556%_))
                                         (_%K124561124581%_
                                          (lambda (_%rest124576%_ _%id124577%_)
                                            (let ((_%bind124579%_
                                                   (gx#resolve-identifier__%
                                                    _%id124577%_
                                                    '0
                                                    _%ctx124556%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124579%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124579%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124553%_
                                                   _%rest124576%_
                                                   (##unchecked-structure-ref
                                                    _%bind124579%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124533%_
                                                         _%id124577%_
                                                         _%bind124579%_))))))
                                    (if (##pair? _%rest124557124565%_)
                                        (let ((_%hd124562124584%_
                                               (##car _%rest124557124565%_))
                                              (_%tl124563124586%_
                                               (##cdr _%rest124557124565%_)))
                                          (let* ((_%id124589%_
                                                  _%hd124562124584%_)
                                                 (_%rest124591%_
                                                  _%tl124563124586%_))
                                            (_%K124561124581%_
                                             _%rest124591%_
                                             _%id124589%_)))
                                        (_%else124559124573%_))))))))
                      (if (##pair? _%rpath124534124541%_)
                          (let ((_%hd124538124596%_
                                 (##car _%rpath124534124541%_))
                                (_%tl124539124598%_
                                 (##cdr _%rpath124534124541%_)))
                            (let* ((_%origin124601%_ _%hd124538124596%_)
                                   (_%refs124603%_ _%tl124539124598%_))
                              (_%K124537124593%_
                               _%refs124603%_
                               _%origin124601%_)))
                          (_%E124536124545%_))))))
          (let ((_%$e124519%_
                 (if (not _%reload?124514%_)
                     (hash-get gx#__module-registry _%rpath124513%_)
                     '#f)))
            (if _%$e124519%_
                _%$e124519%_
                (if (list? _%rpath124513%_)
                    (let () (_%import-submodule124517%_ _%rpath124513%_))
                    (if (gx#core-library-module-path? _%rpath124513%_)
                        (let ((_%ctx124524%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124513%_)
                                _%reload?124514%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124513%_
                           _%ctx124524%_)
                          _%ctx124524%_)
                        (let ()
                          (let* ((_%npath124527%_
                                  (path-normalize _%rpath124513%_))
                                 (_%$e124529%_
                                  (if (not _%reload?124514%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath124527%_)
                                      '#f)))
                            (if _%$e124529%_
                                _%$e124529%_
                                (let ()
                                  (_%import-source124516%_
                                   _%npath124527%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124634%_)
        (let ((_%reload?124636%_ '#f))
          (gx#core-import-module__% _%rpath124634%_ _%reload?124636%_))))
    (define gx#core-import-module
      (lambda _g125739_
        (let ((_g125738_ (##length _g125739_)))
          (cond ((##fx= _g125738_ 1)
                 (apply (lambda (_%rpath124634%_)
                          (gx#core-import-module__0 _%rpath124634%_))
                        _g125739_))
                ((##fx= _g125738_ 2)
                 (apply (lambda (_%rpath124638%_ _%reload?124639%_)
                          (gx#core-import-module__%
                           _%rpath124638%_
                           _%reload?124639%_))
                        _g125739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125739_))))))
    (define gx#core-read-module
      (lambda (_%path124502%_)
        (__with-catch
         (lambda (_%exn124504%_)
           (if (and (datum-parsing-exception? _%exn124504%_)
                    (eq? (datum-parsing-exception-filepos _%exn124504%_) '0))
               (gx#core-read-module/lang _%path124502%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124502%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124506124508%_)
                      (display-exception _%exn124504%_ _%g124506124508%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124502%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124354%_)
        (let _%lp124356%_ ((_%body124358%_
                            (read-syntax-from-file _%path124354%_))
                           (_%pre124359%_ '#f)
                           (_%ns124360%_ '#f)
                           (_%pkg124361%_ '#f))
          (let* ((_%e124362124386%_ _%body124358%_)
                 (_%E124378124412%_
                  (lambda ()
                    (let ((_g125740_
                           (if _%pkg124361%_
                               (values _%pre124359%_
                                       _%ns124360%_
                                       _%pkg124361%_)
                               (gx#core-read-module-package
                                _%path124354%_
                                _%pre124359%_
                                _%ns124360%_))))
                      (begin
                        (let ((_g125741_
                               (if (##values? _g125740_)
                                   (##vector-length _g125740_)
                                   1)))
                          (if (not (##fx= _g125741_ 3))
                              (error "Context expects 3 values" _g125741_)))
                        (let ((_%pre124390%_ (##vector-ref _g125740_ 0))
                              (_%ns124391%_ (##vector-ref _g125740_ 1))
                              (_%pkg124392%_ (##vector-ref _g125740_ 2)))
                          (let* ((_%prelude124398%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124390%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre124390%_))
                                      (if (gx#core-library-module-path?
                                           _%pre124390%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre124390%_))
                                          (if (gx#stx-string? _%pre124390%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre124390%_
                                                 _%path124354%_))
                                              (let ()
                                                (gx#stx-e _%pre124390%_))))))
                                 (_%path-id124400%_
                                  (gx#core-module-path->namespace
                                   _%path124354%_))
                                 (_%pkg-id124402%_
                                  (if _%pkg124392%_
                                      (string-append
                                       _%pkg124392%_
                                       '"/"
                                       _%path-id124400%_)
                                      _%path-id124400%_))
                                 (_%module-id124404%_
                                  (string->symbol _%pkg-id124402%_))
                                 (_%module-ns124409%_
                                  (if (eq? _%ns124391%_ '#!void)
                                      '#f
                                      (let ((_%$e124406%_ _%ns124391%_))
                                        (if _%$e124406%_
                                            _%$e124406%_
                                            _%pkg-id124402%_)))))
                            (values _%prelude124398%_
                                    _%module-id124404%_
                                    _%module-ns124409%_
                                    _%body124358%_)))))))
                 (_%E124371124444%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124362124386%_)
                        (let ((_%e124379124416%_
                               (gx#syntax-e _%e124362124386%_)))
                          (let ((_%hd124380124419%_ (##car _%e124379124416%_))
                                (_%tl124381124421%_ (##cdr _%e124379124416%_)))
                            (if (eq? (gx#stx-e _%hd124380124419%_) 'package:)
                                (if (gx#stx-pair? _%tl124381124421%_)
                                    (let ((_%e124382124424%_
                                           (gx#syntax-e _%tl124381124421%_)))
                                      (let ((_%hd124383124427%_
                                             (##car _%e124382124424%_))
                                            (_%tl124384124429%_
                                             (##cdr _%e124382124424%_)))
                                        (let* ((_%pkg124432%_
                                                _%hd124383124427%_)
                                               (_%rest124434%_
                                                _%tl124384124429%_))
                                          (if '#t
                                              (let ((_%pkg124442%_
                                                     (if (gx#identifier?
                                                          _%pkg124432%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg124432%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124432%_)
                         (gx#stx-false? _%pkg124432%_))
                     (let () (gx#stx-e _%pkg124432%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg124432%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124356%_
                                                 _%rest124434%_
                                                 _%pre124359%_
                                                 _%ns124360%_
                                                 _%pkg124442%_))
                                              (_%E124378124412%_)))))
                                    (_%E124378124412%_))
                                (_%E124378124412%_))))
                        (_%E124378124412%_))))
                 (_%E124364124474%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124362124386%_)
                        (let ((_%e124372124448%_
                               (gx#syntax-e _%e124362124386%_)))
                          (let ((_%hd124373124451%_ (##car _%e124372124448%_))
                                (_%tl124374124453%_ (##cdr _%e124372124448%_)))
                            (if (eq? (gx#stx-e _%hd124373124451%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124374124453%_)
                                    (let ((_%e124375124456%_
                                           (gx#syntax-e _%tl124374124453%_)))
                                      (let ((_%hd124376124459%_
                                             (##car _%e124375124456%_))
                                            (_%tl124377124461%_
                                             (##cdr _%e124375124456%_)))
                                        (let* ((_%ns124464%_
                                                _%hd124376124459%_)
                                               (_%rest124466%_
                                                _%tl124377124461%_))
                                          (if '#t
                                              (let ((_%ns124472%_
                                                     (if (gx#identifier?
                                                          _%ns124464%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns124464%_)))
                                                         (if (gx#stx-string?
                                                              _%ns124464%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns124464%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124464%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns124464%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124356%_
                                                 _%rest124466%_
                                                 _%pre124359%_
                                                 _%ns124472%_
                                                 _%pkg124361%_))
                                              (_%E124371124444%_)))))
                                    (_%E124371124444%_))
                                (_%E124371124444%_))))
                        (_%E124371124444%_))))
                 (_%E124363124498%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124362124386%_)
                        (let ((_%e124365124478%_
                               (gx#syntax-e _%e124362124386%_)))
                          (let ((_%hd124366124481%_ (##car _%e124365124478%_))
                                (_%tl124367124483%_ (##cdr _%e124365124478%_)))
                            (if (eq? (gx#stx-e _%hd124366124481%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124367124483%_)
                                    (let ((_%e124368124486%_
                                           (gx#syntax-e _%tl124367124483%_)))
                                      (let ((_%hd124369124489%_
                                             (##car _%e124368124486%_))
                                            (_%tl124370124491%_
                                             (##cdr _%e124368124486%_)))
                                        (let* ((_%prelude124494%_
                                                _%hd124369124489%_)
                                               (_%rest124496%_
                                                _%tl124370124491%_))
                                          (if '#t
                                              (_%lp124356%_
                                               _%rest124496%_
                                               _%prelude124494%_
                                               _%ns124360%_
                                               _%pkg124361%_)
                                              (_%E124364124474%_)))))
                                    (_%E124364124474%_))
                                (_%E124364124474%_))))
                        (_%E124364124474%_)))))
            (_%E124363124498%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124176%_)
        (letrec ((_%default-read-module-body124178%_
                  (lambda (_%inp124346%_)
                    (let _%lp124348%_ ((_%body124350%_ '()))
                      (let ((_%next124352%_ (read-syntax__% _%inp124346%_)))
                        (if (eof-object? _%next124352%_)
                            (reverse _%body124350%_)
                            (_%lp124348%_
                             (cons _%next124352%_ _%body124350%_)))))))
                 (_%read-body124179%_
                  (lambda (_%inp124264%_
                           _%pre124265%_
                           _%ns124266%_
                           _%pkg124267%_
                           _%args124268%_)
                    (let ((_g125742_
                           (if _%pkg124267%_
                               (values _%pre124265%_
                                       _%ns124266%_
                                       _%pkg124267%_)
                               (gx#core-read-module-package
                                _%path124176%_
                                _%pre124265%_
                                _%ns124266%_))))
                      (begin
                        (let ((_g125743_
                               (if (##values? _g125742_)
                                   (##vector-length _g125742_)
                                   1)))
                          (if (not (##fx= _g125743_ 3))
                              (error "Context expects 3 values" _g125743_)))
                        (let ((_%pre124270%_ (##vector-ref _g125742_ 0))
                              (_%ns124271%_ (##vector-ref _g125742_ 1))
                              (_%pkg124272%_ (##vector-ref _g125742_ 2)))
                          (let* ((_%prelude124274%_
                                  (gx#import-module__0 _%pre124270%_))
                                 (_%read-module-body124329%_
                                  (let ((_%$e124320%_
                                         (__find (lambda (_%e124275124277%_)
                                                   (let* ((_%g124279124289%_
                                                           _%e124275124277%_)
                                                          (_%else124281124297%_
                                                           (lambda () '#f))
                                                          (_%K124283124301%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124279124289%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124284124304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124279124289%_
                          '1
                          '#f
                          '#f))
                        (_%e124285124307%_
                         (##unchecked-structure-ref
                          _%g124279124289%_
                          '2
                          '#f
                          '#f))
                        (_%e124286124310%_
                         (##unchecked-structure-ref
                          _%g124279124289%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124286124310%_ '1)
                       (let ((_%e124287124313%_
                              (##unchecked-structure-ref
                               _%g124279124289%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124315124317%_)
                                (eq? _%g124315124317%_ 'read-module-body))
                              _%e124287124313%_)
                             (_%K124283124301%_)
                             (_%else124281124297%_)))
                       (_%else124281124297%_)))
                 (_%else124281124297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124274%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124320%_
                                        ((lambda (_%xport124323%_)
                                           (let ((_%proc124326%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124323%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124326%_)
                                                 _%proc124326%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124176%_
                                                  _%pre124270%_
                                                  _%proc124326%_))))
                                         _%$e124320%_)
                                        (let ()
                                          _%default-read-module-body124178%_))))
                                 (_%path-id124331%_
                                  (gx#core-module-path->namespace
                                   _%path124176%_))
                                 (_%pkg-id124333%_
                                  (if _%pkg124272%_
                                      (string-append
                                       _%pkg124272%_
                                       '"/"
                                       _%path-id124331%_)
                                      _%path-id124331%_))
                                 (_%module-id124335%_
                                  (string->symbol _%pkg-id124333%_))
                                 (_%module-ns124340%_
                                  (let ((_%$e124337%_ _%ns124271%_))
                                    (if _%$e124337%_
                                        _%$e124337%_
                                        _%pkg-id124333%_)))
                                 (_%body124343%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124329%_
                                      _%inp124264%_))
                                   gx#current-module-reader-path
                                   _%path124176%_
                                   gx#current-module-reader-args
                                   _%args124268%_)))
                            (values _%prelude124274%_
                                    _%module-id124335%_
                                    _%module-ns124340%_
                                    _%body124343%_)))))))
                 (_%string-e124180%_
                  (lambda (_%obj124258%_ _%what124259%_)
                    (if (string? _%obj124258%_)
                        (let () _%obj124258%_)
                        (if (symbol? _%obj124258%_)
                            (let () (symbol->string _%obj124258%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what124259%_)
                               _%path124176%_
                               _%obj124258%_))))))
                 (_%read-lang-args124181%_
                  (lambda (_%inp124213%_ _%args124214%_)
                    (let* ((_%args124215124223%_ _%args124214%_)
                           (_%else124217124231%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124176%_)))
                           (_%K124219124246%_
                            (lambda (_%args124234%_ _%prelude124235%_)
                              (let* ((_%pkg124237%_
                                      (pgetq__0 'package: _%args124234%_))
                                     (_%pkg124239%_
                                      (if _%pkg124237%_
                                          (_%string-e124180%_
                                           _%pkg124237%_
                                           '"package")
                                          '#f))
                                     (_%ns124241%_
                                      (pgetq__0 'namespace: _%args124234%_))
                                     (_%ns124243%_
                                      (if _%ns124241%_
                                          (_%string-e124180%_
                                           _%ns124241%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124179%_
                                 _%inp124213%_
                                 _%prelude124235%_
                                 _%ns124243%_
                                 _%pkg124239%_
                                 _%args124234%_)))))
                      (if (##pair? _%args124215124223%_)
                          (let ((_%hd124220124249%_
                                 (##car _%args124215124223%_))
                                (_%tl124221124251%_
                                 (##cdr _%args124215124223%_)))
                            (let* ((_%prelude124254%_ _%hd124220124249%_)
                                   (_%args124256%_ _%tl124221124251%_))
                              (_%K124219124246%_
                               _%args124256%_
                               _%prelude124254%_)))
                          (_%else124217124231%_)))))
                 (_%read-lang124182%_
                  (lambda (_%inp124187%_)
                    (let* ((_%head124189%_ (read-line _%inp124187%_))
                           (_%$e124191%_
                            (string-index__0 _%head124189%_ '#\space)))
                      (if _%$e124191%_
                          ((lambda (_%ix124194%_)
                             (let ((_%lang124196%_
                                    (substring
                                     _%head124189%_
                                     '0
                                     _%ix124194%_)))
                               (if (equal? _%lang124196%_ '"#lang")
                                   (let* ((_%rest124198%_
                                           (substring
                                            _%head124189%_
                                            (##fx+ _%ix124194%_ '1)
                                            (string-length _%head124189%_)))
                                          (_%args124209%_
                                           (__with-catch
                                            (lambda (_%g124199124201%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124176%_
                                               _%g124199124201%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124198%_
                                               (lambda (_%g124204124206%_)
                                                 (read-all
                                                  _%g124204124206%_
                                                  read)))))))
                                     (_%read-lang-args124181%_
                                      _%inp124187%_
                                      _%args124209%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124176%_))))
                           _%$e124191%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path124176%_))))))
                 (_%read-e124183%_
                  (lambda (_%inp124185%_)
                    (if (eq? (peek-char _%inp124185%_) '#\#)
                        (_%read-lang124182%_ _%inp124185%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124176%_)))))
          (gx#call-with-input-source-file _%path124176%_ _%read-e124183%_))))
    (define gx#core-read-module-package
      (lambda (_%path124124%_ _%pre124125%_ _%ns124126%_)
        (letrec ((_%string-e124128%_
                  (lambda (_%e124171%_)
                    (if (symbol? _%e124171%_)
                        (let () (symbol->string _%e124171%_))
                        (if (string? _%e124171%_)
                            (let () _%e124171%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e124171%_)))))))
          (let _%lp124130%_ ((_%dir124132%_ (path-directory _%path124124%_))
                             (_%pkg-path124133%_ '()))
            (let ((_%gerbil.pkg124135%_
                   (path-expand '"gerbil.pkg" _%dir124132%_)))
              (if (##file-exists? _%gerbil.pkg124135%_)
                  (let ((_%plist124137%_
                         (gx#core-library-package-plist__% _%dir124132%_ '#t)))
                    (if (null? _%plist124137%_)
                        (let ((_%pkg124140%_
                               (if (not (null? _%pkg-path124133%_))
                                   (string-join _%pkg-path124133%_ '"/")
                                   '#f)))
                          (values _%pre124125%_ _%ns124126%_ _%pkg124140%_))
                        (if (list? _%plist124137%_)
                            (let ()
                              (let* ((_%root124143%_
                                      (pgetq__0 'package: _%plist124137%_))
                                     (_%pkg124147%_
                                      (let ((_%pkg-path124145%_
                                             (if _%root124143%_
                                                 (cons (_%string-e124128%_
                                                        _%root124143%_)
                                                       _%pkg-path124133%_)
                                                 _%pkg-path124133%_)))
                                        (if (not (null? _%pkg-path124145%_))
                                            (string-join
                                             _%pkg-path124145%_
                                             '"/")
                                            '#f)))
                                     (_%ns124154%_
                                      (let ((_%ns124152%_
                                             (let ((_%$e124149%_ _%ns124126%_))
                                               (if _%$e124149%_
                                                   _%$e124149%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist124137%_)))))
                                        (if _%ns124152%_
                                            (_%string-e124128%_ _%ns124152%_)
                                            '#f)))
                                     (_%pre124159%_
                                      (let ((_%$e124156%_ _%pre124125%_))
                                        (if _%$e124156%_
                                            _%$e124156%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist124137%_)))))
                                (values _%pre124159%_
                                        _%ns124154%_
                                        _%pkg124147%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist124137%_)))))
                  (let ((_%dir*124163%_
                         (path-strip-trailing-directory-separator
                          _%dir124132%_)))
                    (if (or (__string-empty? _%dir*124163%_)
                            (equal? _%dir124132%_ _%dir*124163%_))
                        (values _%pre124125%_ _%ns124126%_ '#f)
                        (let ((_%xpath124168%_
                               (path-strip-directory _%dir*124163%_))
                              (_%xdir124169%_ (path-directory _%dir*124163%_)))
                          (_%lp124130%_
                           _%xdir124169%_
                           (cons _%xpath124168%_ _%pkg-path124133%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124122%_)
        (path-strip-extension (path-strip-directory _%path124122%_))))
    (define gx#core-module-path->id
      (lambda (_%path124120%_)
        (##string->symbol (gx#core-module-path->namespace _%path124120%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124099%_ _%rel124100%_)
        (let* ((_%path124102%_ (gx#stx-e _%stx-path124099%_))
               (_%path124104%_
                (if (__string-empty? (path-extension _%path124102%_))
                    (##string-append _%path124102%_ '".ss")
                    _%path124102%_)))
          (gx#core-resolve-path__%
           _%path124104%_
           (let ((_%$e124107%_ (gx#stx-source _%stx-path124099%_)))
             (if _%$e124107%_ _%$e124107%_ _%rel124100%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124113%_)
        (let ((_%rel124115%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124113%_ _%rel124115%_))))
    (define gx#core-resolve-module-path
      (lambda _g125745_
        (let ((_g125744_ (##length _g125745_)))
          (cond ((##fx= _g125744_ 1)
                 (apply (lambda (_%stx-path124113%_)
                          (gx#core-resolve-module-path__0 _%stx-path124113%_))
                        _g125745_))
                ((##fx= _g125744_ 2)
                 (apply (lambda (_%stx-path124117%_ _%rel124118%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path124117%_
                           _%rel124118%_))
                        _g125745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125745_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123984%_)
        (let* ((_%spath123986%_ (symbol->string (gx#stx-e _%libpath123984%_)))
               (_%spath123988%_
                (substring
                 _%spath123986%_
                 '1
                 (##string-length _%spath123986%_)))
               (_%ext123990%_ (path-extension _%spath123988%_))
               (_%ssi123992%_
                (if (__string-empty? _%ext123990%_)
                    (##string-append _%spath123988%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123988%_)
                     '".ssi")))
               (_%srcs123996%_
                (if (__string-empty? _%ext123990%_)
                    (##map (lambda (_%ext123994%_)
                             (string-append _%spath123988%_ _%ext123994%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123988%_ '()))))
          (let _%lp123999%_ ((_%rest124001%_ (load-path)))
            (let* ((_%rest124002124011%_ _%rest124001%_)
                   (_%E124005124015%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest124002124011%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K124007124086%_
                     (lambda (_%rest124026%_ _%dir124027%_)
                       (letrec ((_%resolve124029%_
                                 (lambda (_%ssi124042%_ _%srcs124043%_)
                                   (let ((_%compiled-path124045%_
                                          (path-expand
                                           _%ssi124042%_
                                           _%dir124027%_)))
                                     (if (##file-exists?
                                          _%compiled-path124045%_)
                                         (path-normalize
                                          _%compiled-path124045%_)
                                         (let _%lpr124047%_ ((_%rest-src124049%_
                                                              _%srcs124043%_))
                                           (let* ((_%rest-src124050124058%_
                                                   _%rest-src124049%_)
                                                  (_%else124052124066%_
                                                   (lambda ()
                                                     (_%lp123999%_
                                                      _%rest124026%_)))
                                                  (_%K124054124074%_
                                                   (lambda (_%rest-src124069%_
                                                            _%src124070%_)
                                                     (let ((_%src-path124072%_
                                                            (path-expand
                                                             _%src124070%_
                                                             _%dir124027%_)))
                                                       (if (##file-exists?
                                                            _%src-path124072%_)
                                                           (path-normalize
                                                            _%src-path124072%_)
                                                           (_%lpr124047%_
                                                            _%rest-src124069%_))))))
                                             (if (##pair? _%rest-src124050124058%_)
                                                 (let ((_%hd124055124077%_
                                                        (##car _%rest-src124050124058%_))
                                                       (_%tl124056124079%_
                                                        (##cdr _%rest-src124050124058%_)))
                                                   (let* ((_%src124082%_
                                                           _%hd124055124077%_)
                                                          (_%rest-src124084%_
                                                           _%tl124056124079%_))
                                                     (_%K124054124074%_
                                                      _%rest-src124084%_
                                                      _%src124082%_)))
                                                 (_%else124052124066%_)))))))))
                         (let ((_%$e124031%_
                                (gx#core-library-package-path-prefix
                                 _%dir124027%_)))
                           (if _%$e124031%_
                               ((lambda (_%prefix124034%_)
                                  (if (string-prefix?
                                       _%prefix124034%_
                                       _%spath123988%_)
                                      (let ((_%ssi124038%_
                                             (substring
                                              _%ssi123992%_
                                              (string-length _%prefix124034%_)
                                              (##string-length _%ssi123992%_)))
                                            (_%srcs124039%_
                                             (##map (lambda (_%src124036%_)
                                                      (substring
                                                       _%src124036%_
                                                       (string-length
                                                        _%prefix124034%_)
                                                       (string-length
                                                        _%src124036%_)))
                                                    _%srcs123996%_)))
                                        (_%resolve124029%_
                                         _%ssi124038%_
                                         _%srcs124039%_))
                                      (_%lp123999%_ _%rest124026%_)))
                                _%$e124031%_)
                               (let ()
                                 (_%resolve124029%_
                                  _%ssi123992%_
                                  _%srcs123996%_)))))))
                    (_%K124006124020%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123984%_))))
                (let ((_%try-match124004124023%_
                       (lambda ()
                         (if (##null? _%rest124002124011%_)
                             (_%K124006124020%_)
                             (_%E124005124015%_)))))
                  (if (##pair? _%rest124002124011%_)
                      (let ((_%tl124009124091%_ (##cdr _%rest124002124011%_))
                            (_%hd124008124089%_ (##car _%rest124002124011%_)))
                        (let ((_%dir124094%_ _%hd124008124089%_)
                              (_%rest124096%_ _%tl124009124091%_))
                          (_%K124007124086%_ _%rest124096%_ _%dir124094%_)))
                      (_%try-match124004124023%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123952%_)
        (letrec ((_%resolve123954%_
                  (lambda (_%path123975%_ _%base123976%_)
                    (let ((_%$e123978%_
                           (string-rindex__0 _%base123976%_ '#\/)))
                      (if _%$e123978%_
                          ((lambda (_%idx123981%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123976%_ '0 _%idx123981%_)
                                '"/"
                                _%path123975%_))))
                           _%$e123978%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123975%_)))))))))
          (let ((_%spath123956%_ (symbol->string (gx#stx-e _%modpath123952%_)))
                (_%mod123957%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123957%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123952%_))
            (let ((_%mpath123959%_
                   (symbol->string
                    (##structure-ref
                     _%mod123957%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123961%_ ((_%spath123963%_ _%spath123956%_)
                                 (_%mpath123964%_ _%mpath123959%_))
                (if (string-prefix? '"../" _%spath123963%_)
                    (let ((_%$e123967%_
                           (string-rindex__0 _%mpath123964%_ '#\/)))
                      (if _%$e123967%_
                          ((lambda (_%idx123970%_)
                             (_%lp123961%_
                              (substring
                               _%spath123963%_
                               '3
                               (string-length _%spath123963%_))
                              (substring _%mpath123964%_ '0 _%idx123970%_)))
                           _%$e123967%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"cannot resolve relative module path; illegal traversal"
                             _%modpath123952%_))))
                    (if (string-prefix? '"./" _%spath123963%_)
                        (let ()
                          (_%lp123961%_
                           (substring
                            _%spath123963%_
                            '2
                            (string-length _%spath123963%_))
                           _%mpath123964%_))
                        (let ()
                          (_%resolve123954%_
                           _%spath123963%_
                           _%mpath123964%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123944%_)
        (let ((_%$e123946%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123944%_))))
          (if _%$e123946%_
              ((lambda (_%pkg123949%_)
                 (##string-append (symbol->string _%pkg123949%_) '"/"))
               _%$e123946%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123914%_ _%exists?123915%_)
        (let ((_%$e123917%_ (hash-get gx#__module-pkg-cache _%dir123914%_)))
          (if _%$e123917%_
              (values _%$e123917%_)
              (let ()
                (let* ((_%gerbil.pkg123921%_
                        (path-expand '"gerbil.pkg" _%dir123914%_))
                       (_%plist123931%_
                        (if (or _%exists?123915%_
                                (##file-exists? _%gerbil.pkg123921%_))
                            (let ((_%e123926%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123921%_
                                    read)))
                              (if (eof-object? _%e123926%_)
                                  (let () '())
                                  (if (list? _%e123926%_)
                                      (let () _%e123926%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123921%_
                                         _%e123926%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123914%_
                   _%plist123931%_)
                  _%plist123931%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123937%_)
        (let ((_%exists?123939%_ '#f))
          (gx#core-library-package-plist__% _%dir123937%_ _%exists?123939%_))))
    (define gx#core-library-package-plist
      (lambda _g125747_
        (let ((_g125746_ (##length _g125747_)))
          (cond ((##fx= _g125746_ 1)
                 (apply (lambda (_%dir123937%_)
                          (gx#core-library-package-plist__0 _%dir123937%_))
                        _g125747_))
                ((##fx= _g125746_ 2)
                 (apply (lambda (_%dir123941%_ _%exists?123942%_)
                          (gx#core-library-package-plist__%
                           _%dir123941%_
                           _%exists?123942%_))
                        _g125747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125747_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123911%_)
        (gx#core-special-module-path? _%stx123911%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123909%_)
        (gx#core-special-module-path? _%stx123909%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123904%_ _%char123905%_)
        (if (gx#identifier? _%stx123904%_)
            (if (interned-symbol? (gx#stx-e _%stx123904%_))
                (let ((_%str123907%_
                       (symbol->string (gx#stx-e _%stx123904%_))))
                  (if (##fx> (##string-length _%str123907%_) '1)
                      (eq? (string-ref _%str123907%_ '0) _%char123905%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123898%_)
        (gx#core-bound-identifier?__%
         _%stx123898%_
         (lambda (_%g123899123901%_)
           (gx#expander-binding?__% _%g123899123901%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123892%_)
        (gx#core-bound-identifier?__%
         _%stx123892%_
         (lambda (_%g123893123895%_)
           (gx#expander-binding?__% _%g123893123895%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123879%_)
        (letrec ((_%module-prelude?123881%_
                  (lambda (_%e123887%_)
                    (let ((_%$e123889%_
                           (##structure-instance-of?
                            _%e123887%_
                            'gx#module-context::t)))
                      (if _%$e123889%_
                          _%$e123889%_
                          (##structure-instance-of?
                           _%e123887%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123879%_
           (lambda (_%g123882123884%_)
             (gx#expander-binding?__%
              _%g123882123884%_
              _%module-prelude?123881%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123809%_ _%ctx123810%_ _%force-weak?123811%_)
        (let* ((_%in123812123821%_ _%in123809%_)
               (_%E123814123825%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123812123821%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123815123838%_
                (lambda (_%weak?123828%_
                         _%phi123829%_
                         _%key123830%_
                         _%source123831%_)
                  (gx#core-bind!__%
                   _%key123830%_
                   (let ((_%e123833%_
                          (gx#core-resolve-module-export _%source123831%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123833%_ '1 '#f '#f)
                      _%key123830%_
                      _%phi123829%_
                      _%e123833%_
                      (##unchecked-structure-ref _%source123831%_ '1 '#f '#f)
                      (let ((_%$e123835%_ _%force-weak?123811%_))
                        (if _%$e123835%_ _%$e123835%_ _%weak?123828%_))))
                   gx#core-context-rebind?
                   _%phi123829%_
                   _%ctx123810%_))))
          (if (##structure-direct-instance-of?
               _%in123812123821%_
               'gx#module-import::t)
              (let* ((_%e123816123841%_
                      (##unchecked-structure-ref
                       _%in123812123821%_
                       '1
                       '#f
                       '#f))
                     (_%source123844%_ _%e123816123841%_)
                     (_%e123817123846%_
                      (##unchecked-structure-ref
                       _%in123812123821%_
                       '2
                       '#f
                       '#f))
                     (_%key123849%_ _%e123817123846%_)
                     (_%e123818123851%_
                      (##unchecked-structure-ref
                       _%in123812123821%_
                       '3
                       '#f
                       '#f))
                     (_%phi123854%_ _%e123818123851%_)
                     (_%e123819123856%_
                      (##unchecked-structure-ref
                       _%in123812123821%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123859%_ _%e123819123856%_))
                (_%K123815123838%_
                 _%weak?123859%_
                 _%phi123854%_
                 _%key123849%_
                 _%source123844%_))
              (_%E123814123825%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123864%_)
        (let* ((_%ctx123866%_ (gx#current-expander-context))
               (_%force-weak?123868%_ '#f))
          (gx#core-bind-import!__%
           _%in123864%_
           _%ctx123866%_
           _%force-weak?123868%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123870%_ _%ctx123871%_)
        (let ((_%force-weak?123873%_ '#f))
          (gx#core-bind-import!__%
           _%in123870%_
           _%ctx123871%_
           _%force-weak?123873%_))))
    (define gx#core-bind-import!
      (lambda _g125749_
        (let ((_g125748_ (##length _g125749_)))
          (cond ((##fx= _g125748_ 1)
                 (apply (lambda (_%in123864%_)
                          (gx#core-bind-import!__0 _%in123864%_))
                        _g125749_))
                ((##fx= _g125748_ 2)
                 (apply (lambda (_%in123870%_ _%ctx123871%_)
                          (gx#core-bind-import!__1 _%in123870%_ _%ctx123871%_))
                        _g125749_))
                ((##fx= _g125748_ 3)
                 (apply (lambda (_%in123875%_
                                 _%ctx123876%_
                                 _%force-weak?123877%_)
                          (gx#core-bind-import!__%
                           _%in123875%_
                           _%ctx123876%_
                           _%force-weak?123877%_))
                        _g125749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125749_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123795%_ _%ctx123796%_)
        (gx#core-bind-import!__% _%in123795%_ _%ctx123796%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123801%_)
        (let ((_%ctx123803%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123801%_ _%ctx123803%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125751_
        (let ((_g125750_ (##length _g125751_)))
          (cond ((##fx= _g125750_ 1)
                 (apply (lambda (_%in123801%_)
                          (gx#core-bind-weak-import!__0 _%in123801%_))
                        _g125751_))
                ((##fx= _g125750_ 2)
                 (apply (lambda (_%in123805%_ _%ctx123806%_)
                          (gx#core-bind-weak-import!__%
                           _%in123805%_
                           _%ctx123806%_))
                        _g125751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125751_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123686%_)
        (letrec ((_%subst123688%_
                  (lambda (_%key123734%_)
                    (let* ((_%key123735123743%_ _%key123734%_)
                           (_%else123737123751%_ (lambda () _%key123734%_))
                           (_%K123739123782%_
                            (lambda (_%mark123754%_ _%id123755%_)
                              (let* ((_%mark123756123762%_ _%mark123754%_)
                                     (_%E123758123766%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123756123762%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123759123774%_
                                      (lambda (_%subst123769%_)
                                        (let ((_%$e123771%_
                                               (if _%subst123769%_
                                                   (hash-get
                                                    _%subst123769%_
                                                    _%id123755%_)
                                                   '#f)))
                                          (if _%$e123771%_
                                              _%$e123771%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123734%_))))))
                                (if (##structure-instance-of?
                                     _%mark123756123762%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123760123777%_
                                            (##unchecked-structure-ref
                                             _%mark123756123762%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123780%_ _%e123760123777%_))
                                      (_%K123759123774%_ _%subst123780%_))
                                    (_%E123758123766%_))))))
                      (if (##pair? _%key123735123743%_)
                          (let ((_%hd123740123785%_
                                 (##car _%key123735123743%_))
                                (_%tl123741123787%_
                                 (##cdr _%key123735123743%_)))
                            (let* ((_%id123790%_ _%hd123740123785%_)
                                   (_%mark123792%_ _%tl123741123787%_))
                              (_%K123739123782%_ _%mark123792%_ _%id123790%_)))
                          (_%else123737123751%_))))))
          (let* ((_%out123689123699%_ _%out123686%_)
                 (_%E123691123703%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123689123699%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123692123710%_
                  (lambda (_%phi123706%_ _%key123707%_ _%ctx123708%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123708%_ _%phi123706%_)
                     (_%subst123688%_ _%key123707%_)))))
            (if (##structure-direct-instance-of?
                 _%out123689123699%_
                 'gx#module-export::t)
                (let* ((_%e123693123713%_
                        (##unchecked-structure-ref
                         _%out123689123699%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123716%_ _%e123693123713%_)
                       (_%e123694123718%_
                        (##unchecked-structure-ref
                         _%out123689123699%_
                         '2
                         '#f
                         '#f))
                       (_%key123721%_ _%e123694123718%_)
                       (_%e123695123723%_
                        (##unchecked-structure-ref
                         _%out123689123699%_
                         '3
                         '#f
                         '#f))
                       (_%phi123726%_ _%e123695123723%_)
                       (_%e123696123728%_
                        (##unchecked-structure-ref
                         _%out123689123699%_
                         '4
                         '#f
                         '#f))
                       (_%e123697123731%_
                        (##unchecked-structure-ref
                         _%out123689123699%_
                         '5
                         '#f
                         '#f)))
                  (_%K123692123710%_
                   _%phi123726%_
                   _%key123721%_
                   _%ctx123716%_))
                (_%E123691123703%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123611%_ _%rename123612%_ _%dphi123613%_)
        (let* ((_%out123614123624%_ _%out123611%_)
               (_%E123616123628%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123614123624%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123617123640%_
                (lambda (_%weak?123631%_
                         _%name123632%_
                         _%phi123633%_
                         _%key123634%_
                         _%ctx123635%_)
                  (##structure
                   gx#module-import::t
                   _%out123611%_
                   (let ((_%$e123637%_ _%rename123612%_))
                     (if _%$e123637%_ _%$e123637%_ _%name123632%_))
                   (fx+ _%phi123633%_ _%dphi123613%_)
                   _%weak?123631%_))))
          (if (##structure-direct-instance-of?
               _%out123614123624%_
               'gx#module-export::t)
              (let* ((_%e123618123643%_
                      (##unchecked-structure-ref
                       _%out123614123624%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123646%_ _%e123618123643%_)
                     (_%e123619123648%_
                      (##unchecked-structure-ref
                       _%out123614123624%_
                       '2
                       '#f
                       '#f))
                     (_%key123651%_ _%e123619123648%_)
                     (_%e123620123653%_
                      (##unchecked-structure-ref
                       _%out123614123624%_
                       '3
                       '#f
                       '#f))
                     (_%phi123656%_ _%e123620123653%_)
                     (_%e123621123658%_
                      (##unchecked-structure-ref
                       _%out123614123624%_
                       '4
                       '#f
                       '#f))
                     (_%name123661%_ _%e123621123658%_)
                     (_%e123622123663%_
                      (##unchecked-structure-ref
                       _%out123614123624%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123666%_ _%e123622123663%_))
                (_%K123617123640%_
                 _%weak?123666%_
                 _%name123661%_
                 _%phi123656%_
                 _%key123651%_
                 _%ctx123646%_))
              (_%E123616123628%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123671%_)
        (let* ((_%rename123673%_ '#f) (_%dphi123675%_ '0))
          (gx#core-module-export->import__%
           _%out123671%_
           _%rename123673%_
           _%dphi123675%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123677%_ _%rename123678%_)
        (let ((_%dphi123680%_ '0))
          (gx#core-module-export->import__%
           _%out123677%_
           _%rename123678%_
           _%dphi123680%_))))
    (define gx#core-module-export->import
      (lambda _g125753_
        (let ((_g125752_ (##length _g125753_)))
          (cond ((##fx= _g125752_ 1)
                 (apply (lambda (_%out123671%_)
                          (gx#core-module-export->import__0 _%out123671%_))
                        _g125753_))
                ((##fx= _g125752_ 2)
                 (apply (lambda (_%out123677%_ _%rename123678%_)
                          (gx#core-module-export->import__1
                           _%out123677%_
                           _%rename123678%_))
                        _g125753_))
                ((##fx= _g125752_ 3)
                 (apply (lambda (_%out123682%_ _%rename123683%_ _%dphi123684%_)
                          (gx#core-module-export->import__%
                           _%out123682%_
                           _%rename123683%_
                           _%dphi123684%_))
                        _g125753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125753_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123510%_)
        (letrec ((_%make-context123512%_
                  (lambda (_%id123589%_)
                    (let* ((_%super123591%_ (gx#current-expander-context))
                           (_%bind-id123593%_ (gx#stx-e _%id123589%_))
                           (_%mod-id123595%_
                            (if (##structure-instance-of?
                                 _%super123591%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123591%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123593%_)
                                _%bind-id123593%_))
                           (_%ns123597%_ (symbol->string _%mod-id123595%_))
                           (_%path123607%_
                            (if (##structure-instance-of?
                                 _%super123591%_
                                 'gx#module-context::t)
                                (let ((_%path123599%_
                                       (##unchecked-structure-ref
                                        _%super123591%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123599%_)
                                          (null? _%path123599%_))
                                      (let ()
                                        (cons _%bind-id123593%_
                                              _%path123599%_))
                                      (if (not _%path123599%_)
                                          (let () _%bind-id123593%_)
                                          (let ()
                                            (cons _%bind-id123593%_
                                                  (cons _%path123599%_
                                                        '()))))))
                                _%bind-id123593%_))
                           (__obj125729
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
                       __obj125729
                       _%mod-id123595%_
                       _%super123591%_
                       _%ns123597%_
                       _%path123607%_)
                      __obj125729)))
                 (_%valid-module-id?123513%_
                  (lambda (_%id123564%_)
                    (let* ((_%str123566%_ (symbol->string _%id123564%_))
                           (_%len123568%_ (##string-length _%str123566%_)))
                      (if (##fx>= _%len123568%_ '1)
                          (let _%loop123571%_ ((_%index123573%_
                                                (##fx- (##string-length
                                                        _%str123566%_)
                                                       '1)))
                            (if (##fx>= _%index123573%_ '0)
                                (let ((_%c123575%_
                                       (string-ref
                                        _%str123566%_
                                        _%index123573%_)))
                                  (if (or (and (##char>=? _%c123575%_ '#\a)
                                               (##char<=? _%c123575%_ '#\z))
                                          (and (##char>=? _%c123575%_ '#\A)
                                               (##char<=? _%c123575%_ '#\Z))
                                          (and (##char>=? _%c123575%_ '#\0)
                                               (##char<=? _%c123575%_ '#\9))
                                          (##char=? _%c123575%_ '#\_)
                                          (##char=? _%c123575%_ '#\-))
                                      (_%loop123571%_
                                       (##fx- _%index123573%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123514123524%_ _%stx123510%_)
                 (_%E123516123528%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123514123524%_)))
                 (_%E123515123560%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123514123524%_)
                        (let ((_%e123517123532%_
                               (gx#syntax-e _%e123514123524%_)))
                          (let ((_%hd123518123535%_ (##car _%e123517123532%_))
                                (_%tl123519123537%_ (##cdr _%e123517123532%_)))
                            (if (gx#stx-pair? _%tl123519123537%_)
                                (let ((_%e123520123540%_
                                       (gx#syntax-e _%tl123519123537%_)))
                                  (let ((_%hd123521123543%_
                                         (##car _%e123520123540%_))
                                        (_%tl123522123545%_
                                         (##cdr _%e123520123540%_)))
                                    (let* ((_%id123548%_ _%hd123521123543%_)
                                           (_%body123550%_ _%tl123522123545%_))
                                      (if (and (gx#identifier? _%id123548%_)
                                               (gx#stx-list? _%body123550%_))
                                          (if (_%valid-module-id?123513%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123552%_
                                                      (_%make-context123512%_
                                                       _%id123548%_))
                                                     (_%body123554%_
                                                      (gx#core-expand-module-begin
                                                       _%body123550%_
                                                       _%ctx123552%_))
                                                     (_%body123556%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123554%_)
                                                       (gx#stx-source
                                                        _%stx123510%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123552%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123556%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123552%_
                                                 _%body123556%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123548%_
                                                 _%ctx123552%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123548%_)
                                                  _%body123556%_)
                                                 (gx#stx-source
                                                  _%stx123510%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123510%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123516123528%_)))))
                                (_%E123516123528%_))))
                        (_%E123516123528%_)))))
            (_%E123515123560%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123476%_ _%ctx123477%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123480%_
                   (gx#core-expand-head (cons '%%begin-module _%body123476%_)))
                  (_%e123481123488%_ _%stx123480%_)
                  (_%E123483123492%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123480%_)))
                  (_%E123482123506%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123481123488%_)
                         (let ((_%e123484123496%_
                                (gx#syntax-e _%e123481123488%_)))
                           (let ((_%hd123485123499%_ (##car _%e123484123496%_))
                                 (_%tl123486123501%_
                                  (##cdr _%e123484123496%_)))
                             (if (and (gx#identifier? _%hd123485123499%_)
                                      (gx#core-identifier=?
                                       _%hd123485123499%_
                                       '%#begin-module))
                                 (let ((_%body123504%_ _%tl123486123501%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123480%_)
                                           _%body123504%_
                                           (gx#core-expand-module-body
                                            _%body123504%_))
                                       (_%E123483123492%_)))
                                 (_%E123483123492%_))))
                         (_%E123483123492%_)))))
             (_%E123482123506%_)))
         gx#current-expander-context
         _%ctx123477%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123272%_)
        (letrec ((_%expand-special123274%_
                  (lambda (_%hd123403%_ _%K123404%_ _%rest123405%_ _%r123406%_)
                    (let* ((_%e123407123424%_ _%hd123403%_)
                           (_%E123419123428%_
                            (lambda ()
                              (_%K123404%_
                               _%rest123405%_
                               (cons (gx#core-expand-top _%hd123403%_)
                                     _%r123406%_))))
                           (_%E123409123440%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123407123424%_)
                                  (let ((_%e123420123432%_
                                         (gx#syntax-e _%e123407123424%_)))
                                    (let ((_%hd123421123435%_
                                           (##car _%e123420123432%_))
                                          (_%tl123422123437%_
                                           (##cdr _%e123420123432%_)))
                                      (if (and (gx#identifier?
                                                _%hd123421123435%_)
                                               (gx#core-identifier=?
                                                _%hd123421123435%_
                                                '%#export))
                                          (if '#t
                                              (_%K123404%_
                                               _%rest123405%_
                                               (cons _%hd123403%_ _%r123406%_))
                                              (_%E123419123428%_))
                                          (_%E123419123428%_))))
                                  (_%E123419123428%_))))
                           (_%E123408123472%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123407123424%_)
                                  (let ((_%e123410123444%_
                                         (gx#syntax-e _%e123407123424%_)))
                                    (let ((_%hd123411123447%_
                                           (##car _%e123410123444%_))
                                          (_%tl123412123449%_
                                           (##cdr _%e123410123444%_)))
                                      (if (and (gx#identifier?
                                                _%hd123411123447%_)
                                               (gx#core-identifier=?
                                                _%hd123411123447%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123412123449%_)
                                              (let ((_%e123413123452%_
                                                     (gx#syntax-e
                                                      _%tl123412123449%_)))
                                                (let ((_%hd123414123455%_
                                                       (##car _%e123413123452%_))
                                                      (_%tl123415123457%_
                                                       (##cdr _%e123413123452%_)))
                                                  (let ((_%hd-bind123460%_
                                                         _%hd123414123455%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123415123457%_)
                                                        (let ((_%e123416123462%_
                                                               (gx#syntax-e
                                                                _%tl123415123457%_)))
                                                          (let ((_%hd123417123465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123416123462%_))
                        (_%tl123418123467%_ (##cdr _%e123416123462%_)))
                    (let ((_%expr123470%_ _%hd123417123465%_))
                      (if (gx#stx-null? _%tl123418123467%_)
                          (if (gx#core-bind-values? _%hd-bind123460%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123460%_)
                                (_%K123404%_
                                 _%rest123405%_
                                 (cons _%hd123403%_ _%r123406%_)))
                              (_%E123409123440%_))
                          (_%E123409123440%_)))))
                (_%E123409123440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123409123440%_))
                                          (_%E123409123440%_))))
                                  (_%E123409123440%_)))))
                      (_%E123408123472%_))))
                 (_%expand-body123275%_
                  (lambda (_%rbody123277%_)
                    (let _%lp123279%_ ((_%rest123281%_ _%rbody123277%_)
                                       (_%body123282%_ '()))
                      (let* ((_%rest123283123291%_ _%rest123281%_)
                             (_%else123285123299%_ (lambda () _%body123282%_))
                             (_%K123287123391%_
                              (lambda (_%rest123302%_ _%hd123303%_)
                                (let* ((_%e123304123325%_ _%hd123303%_)
                                       (_%E123320123329%_
                                        (lambda ()
                                          (_%lp123279%_
                                           _%rest123302%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123303%_)
                                                 _%body123282%_))))
                                       (_%E123316123343%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123304123325%_)
                                              (let ((_%e123321123333%_
                                                     (gx#syntax-e
                                                      _%e123304123325%_)))
                                                (let ((_%hd123322123336%_
                                                       (##car _%e123321123333%_))
                                                      (_%tl123323123338%_
                                                       (##cdr _%e123321123333%_)))
                                                  (let ((_%form123341%_
                                                         _%hd123322123336%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123341%_
                                                         gx#special-form-binding?)
                                                        (_%lp123279%_
                                                         _%rest123302%_
                                                         (cons _%hd123303%_
                                                               _%body123282%_))
                                                        (_%E123320123329%_)))))
                                              (_%E123320123329%_))))
                                       (_%E123306123355%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123304123325%_)
                                              (let ((_%e123317123347%_
                                                     (gx#syntax-e
                                                      _%e123304123325%_)))
                                                (let ((_%hd123318123350%_
                                                       (##car _%e123317123347%_))
                                                      (_%tl123319123352%_
                                                       (##cdr _%e123317123347%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123318123350%_)
                                                           (gx#core-identifier=?
                                                            _%hd123318123350%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123279%_
                                                           _%rest123302%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123303%_)
                         _%body123282%_))
                  (_%E123316123343%_))
              (_%E123316123343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123316123343%_))))
                                       (_%E123305123387%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123304123325%_)
                                              (let ((_%e123307123359%_
                                                     (gx#syntax-e
                                                      _%e123304123325%_)))
                                                (let ((_%hd123308123362%_
                                                       (##car _%e123307123359%_))
                                                      (_%tl123309123364%_
                                                       (##cdr _%e123307123359%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123308123362%_)
                                                           (gx#core-identifier=?
                                                            _%hd123308123362%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123309123364%_)
                                                          (let ((_%e123310123367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123309123364%_)))
                    (let ((_%hd123311123370%_ (##car _%e123310123367%_))
                          (_%tl123312123372%_ (##cdr _%e123310123367%_)))
                      (let ((_%hd-bind123375%_ _%hd123311123370%_))
                        (if (gx#stx-pair? _%tl123312123372%_)
                            (let ((_%e123313123377%_
                                   (gx#syntax-e _%tl123312123372%_)))
                              (let ((_%hd123314123380%_
                                     (##car _%e123313123377%_))
                                    (_%tl123315123382%_
                                     (##cdr _%e123313123377%_)))
                                (let ((_%expr123385%_ _%hd123314123380%_))
                                  (if (gx#stx-null? _%tl123315123382%_)
                                      (if '#t
                                          (_%lp123279%_
                                           _%rest123302%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123375%_)
                                                   (gx#core-expand-expression
                                                    _%expr123385%_))
                                                  (gx#stx-source _%hd123303%_))
                                                 _%body123282%_))
                                          (_%E123306123355%_))
                                      (_%E123306123355%_)))))
                            (_%E123306123355%_)))))
                  (_%E123306123355%_))
              (_%E123306123355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123306123355%_)))))
                                  (_%E123305123387%_)))))
                        (if (##pair? _%rest123283123291%_)
                            (let ((_%hd123288123394%_
                                   (##car _%rest123283123291%_))
                                  (_%tl123289123396%_
                                   (##cdr _%rest123283123291%_)))
                              (let* ((_%hd123399%_ _%hd123288123394%_)
                                     (_%rest123401%_ _%tl123289123396%_))
                                (_%K123287123391%_
                                 _%rest123401%_
                                 _%hd123399%_)))
                            (_%else123285123299%_)))))))
          (_%expand-body123275%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123272%_)
            _%expand-special123274%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123113%_
               _%expanded?123114%_
               _%method123115%_
               _%current-phi123116%_
               _%expand1123117%_)
        (letrec ((_%K123119%_
                  (lambda (_%rest123239%_ _%r123240%_)
                    (let* ((_%e123241123248%_ _%rest123239%_)
                           (_%E123243123252%_ (lambda () _%r123240%_))
                           (_%E123242123268%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123241123248%_)
                                  (let ((_%e123244123256%_
                                         (gx#syntax-e _%e123241123248%_)))
                                    (let ((_%hd123245123259%_
                                           (##car _%e123244123256%_))
                                          (_%tl123246123261%_
                                           (##cdr _%e123244123256%_)))
                                      (let* ((_%hd123264%_ _%hd123245123259%_)
                                             (_%rest123266%_
                                              _%tl123246123261%_))
                                        (if '#t
                                            (_%step123120%_
                                             _%hd123264%_
                                             _%rest123266%_
                                             _%r123240%_)
                                            (_%E123243123252%_)))))
                                  (_%E123243123252%_)))))
                      (_%E123242123268%_))))
                 (_%step123120%_
                  (lambda (_%hd123153%_ _%rest123154%_ _%r123155%_)
                    (let* ((_%e123156123174%_ _%hd123153%_)
                           (_%E123169123178%_
                            (lambda ()
                              (if (_%expanded?123114%_ (gx#stx-e _%hd123153%_))
                                  (_%K123119%_
                                   _%rest123154%_
                                   (cons (gx#stx-e _%hd123153%_) _%r123155%_))
                                  (_%expand1123117%_
                                   _%hd123153%_
                                   _%K123119%_
                                   _%rest123154%_
                                   _%r123155%_))))
                           (_%E123165123194%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123156123174%_)
                                  (let ((_%e123170123182%_
                                         (gx#syntax-e _%e123156123174%_)))
                                    (let ((_%hd123171123185%_
                                           (##car _%e123170123182%_))
                                          (_%tl123172123187%_
                                           (##cdr _%e123170123182%_)))
                                      (let* ((_%macro123190%_
                                              _%hd123171123185%_)
                                             (_%body123192%_
                                              _%tl123172123187%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123190%_
                                             gx#syntax-binding?)
                                            (_%K123119%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123190%_)
                                                    _%hd123153%_
                                                    _%method123115%_)
                                                   _%rest123154%_)
                                             _%r123155%_)
                                            (_%E123169123178%_)))))
                                  (_%E123169123178%_))))
                           (_%E123158123208%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123156123174%_)
                                  (let ((_%e123166123198%_
                                         (gx#syntax-e _%e123156123174%_)))
                                    (let ((_%hd123167123201%_
                                           (##car _%e123166123198%_))
                                          (_%tl123168123203%_
                                           (##cdr _%e123166123198%_)))
                                      (if (eq? (gx#stx-e _%hd123167123201%_)
                                               'begin:)
                                          (let ((_%body123206%_
                                                 _%tl123168123203%_))
                                            (if '#t
                                                (_%K123119%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123154%_
                                                  _%body123206%_)
                                                 _%r123155%_)
                                                (_%E123165123194%_)))
                                          (_%E123165123194%_))))
                                  (_%E123165123194%_))))
                           (_%E123157123235%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123156123174%_)
                                  (let ((_%e123159123212%_
                                         (gx#syntax-e _%e123156123174%_)))
                                    (let ((_%hd123160123215%_
                                           (##car _%e123159123212%_))
                                          (_%tl123161123217%_
                                           (##cdr _%e123159123212%_)))
                                      (if (eq? (gx#stx-e _%hd123160123215%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123161123217%_)
                                              (let ((_%e123162123220%_
                                                     (gx#syntax-e
                                                      _%tl123161123217%_)))
                                                (let ((_%hd123163123223%_
                                                       (##car _%e123162123220%_))
                                                      (_%tl123164123225%_
                                                       (##cdr _%e123162123220%_)))
                                                  (let* ((_%dphi123228%_
                                                          _%hd123163123223%_)
                                                         (_%body123230%_
                                                          _%tl123164123225%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123228%_)
                                                        (let ((_%rbody123233%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123119%_ _%body123230%_ '()))
                        _%current-phi123116%_
                        (fx+ (gx#stx-e _%dphi123228%_)
                             (_%current-phi123116%_)))))
                  (_%K123119%_
                   _%rest123154%_
                   (__foldr1 cons _%r123155%_ _%rbody123233%_)))
                (_%E123158123208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123158123208%_))
                                          (_%E123158123208%_))))
                                  (_%E123158123208%_)))))
                      (_%E123157123235%_)))))
          (let* ((_%e123121123128%_ _%stx123113%_)
                 (_%E123123123132%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123121123128%_)))
                 (_%E123122123149%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123121123128%_)
                        (let ((_%e123124123136%_
                               (gx#syntax-e _%e123121123128%_)))
                          (let ((_%hd123125123139%_ (##car _%e123124123136%_))
                                (_%tl123126123141%_ (##cdr _%e123124123136%_)))
                            (let ((_%body123144%_ _%tl123126123141%_))
                              (if '#t
                                  (if (_%current-phi123116%_)
                                      (let () (_%K123119%_ _%body123144%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K123119%_ _%body123144%_ '()))
                                         _%current-phi123116%_
                                         (gx#current-expander-phi))))
                                  (_%E123123123132%_)))))
                        (_%E123123123132%_)))))
            (_%E123122123149%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122767%_ _%internal-expand?122768%_)
        (letrec ((_%expand1122770%_
                  (lambda (_%hd123085%_ _%K123086%_ _%rest123087%_ _%r123088%_)
                    (if (gx#core-bound-module? _%hd123085%_)
                        (let ()
                          (_%import1122771%_
                           (gx#syntax-local-e__0 _%hd123085%_)
                           _%K123086%_
                           _%rest123087%_
                           _%r123088%_))
                        (if (gx#core-library-module-path? _%hd123085%_)
                            (let ()
                              (_%import1122771%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd123085%_))
                               _%K123086%_
                               _%rest123087%_
                               _%r123088%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd123085%_)
                                (let ()
                                  (_%import1122771%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd123085%_))
                                   _%K123086%_
                                   _%rest123087%_
                                   _%r123088%_))
                                (let ((_%e123094%_ (gx#stx-e _%hd123085%_)))
                                  (if (pair? _%e123094%_)
                                      (let ((_%$e123097%_
                                             (gx#stx-e (car _%e123094%_))))
                                        (if (eq? 'spec: _%$e123097%_)
                                            (_%import-spec122774%_
                                             _%hd123085%_
                                             _%K123086%_
                                             _%rest123087%_
                                             _%r123088%_)
                                            (if (eq? 'in: _%$e123097%_)
                                                (_%import-submodule122772%_
                                                 _%hd123085%_
                                                 _%K123086%_
                                                 _%rest123087%_
                                                 _%r123088%_)
                                                (if (eq? 'runtime:
                                                         _%$e123097%_)
                                                    (_%import-runtime122773%_
                                                     _%hd123085%_
                                                     _%K123086%_
                                                     _%rest123087%_
                                                     _%r123088%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122767%_
                                                     _%hd123085%_)))))
                                      (if (string? _%e123094%_)
                                          (let ()
                                            (_%import1122771%_
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__%
                                               _%hd123085%_
                                               (gx#stx-source _%stx122767%_)))
                                             _%K123086%_
                                             _%rest123087%_
                                             _%r123088%_))
                                          (if (##structure-instance-of?
                                               _%e123094%_
                                               'gx#module-context::t)
                                              (let ()
                                                (_%K123086%_
                                                 _%rest123087%_
                                                 (cons _%e123094%_
                                                       _%r123088%_)))
                                              (let ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _%stx122767%_
                                                 _%hd123085%_)))))))))))
                 (_%import1122771%_
                  (lambda (_%ctx123074%_
                           _%K123075%_
                           _%rest123076%_
                           _%r123077%_)
                    (let ((_%dphi123079%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123075%_
                       _%rest123076%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123074%_
                              _%dphi123079%_
                              (map (lambda (_%g123080123082%_)
                                     (gx#core-module-export->import__%
                                      _%g123080123082%_
                                      '#f
                                      _%dphi123079%_))
                                   (##unchecked-structure-ref
                                    _%ctx123074%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123077%_)))))
                 (_%import-submodule122772%_
                  (lambda (_%hd123041%_ _%K123042%_ _%rest123043%_ _%r123044%_)
                    (let* ((_%e123045123052%_ _%hd123041%_)
                           (_%E123047123056%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123045123052%_)))
                           (_%E123046123070%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123045123052%_)
                                  (let ((_%e123048123060%_
                                         (gx#syntax-e _%e123045123052%_)))
                                    (let ((_%hd123049123063%_
                                           (##car _%e123048123060%_))
                                          (_%tl123050123065%_
                                           (##cdr _%e123048123060%_)))
                                      (let ((_%spath123068%_
                                             _%tl123050123065%_))
                                        (if '#t
                                            (_%import1122771%_
                                             (_%import-spec-source122775%_
                                              _%spath123068%_)
                                             _%K123042%_
                                             _%rest123043%_
                                             _%r123044%_)
                                            (_%E123047123056%_)))))
                                  (_%E123047123056%_)))))
                      (_%E123046123070%_))))
                 (_%import-runtime122773%_
                  (lambda (_%hd123008%_ _%K123009%_ _%rest123010%_ _%r123011%_)
                    (let* ((_%e123012123019%_ _%hd123008%_)
                           (_%E123014123023%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123012123019%_)))
                           (_%E123013123037%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123012123019%_)
                                  (let ((_%e123015123027%_
                                         (gx#syntax-e _%e123012123019%_)))
                                    (let ((_%hd123016123030%_
                                           (##car _%e123015123027%_))
                                          (_%tl123017123032%_
                                           (##cdr _%e123015123027%_)))
                                      (let ((_%spath123035%_
                                             _%tl123017123032%_))
                                        (if '#t
                                            (_%K123009%_
                                             _%rest123010%_
                                             (cons (_%import-spec-source122775%_
                                                    _%spath123035%_)
                                                   _%r123011%_))
                                            (_%E123014123023%_)))))
                                  (_%E123014123023%_)))))
                      (_%E123013123037%_))))
                 (_%import-spec122774%_
                  (lambda (_%hd122846%_ _%K122847%_ _%rest122848%_ _%r122849%_)
                    (let* ((_%e122850122867%_ _%hd122846%_)
                           (_%E122859122871%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122850122867%_)))
                           (_%E122852122982%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122850122867%_)
                                  (let ((_%e122860122875%_
                                         (gx#syntax-e _%e122850122867%_)))
                                    (let ((_%hd122861122878%_
                                           (##car _%e122860122875%_))
                                          (_%tl122862122880%_
                                           (##cdr _%e122860122875%_)))
                                      (if (gx#stx-pair? _%tl122862122880%_)
                                          (let ((_%e122863122883%_
                                                 (gx#syntax-e
                                                  _%tl122862122880%_)))
                                            (let ((_%hd122864122886%_
                                                   (##car _%e122863122883%_))
                                                  (_%tl122865122888%_
                                                   (##cdr _%e122863122883%_)))
                                              (let* ((_%path122891%_
                                                      _%hd122864122886%_)
                                                     (_%specs122893%_
                                                      _%tl122865122888%_))
                                                (if '#t
                                                    (let ((_%src-ctx122895%_
                                                           (_%import-spec-source122775%_
                                                            _%path122891%_))
                                                          (_%exports122896%_
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
                                                          (_%specs122897%_
                                                           (gx#syntax->list
                                                            _%specs122893%_)))
                                                      (for-each
                                                       (lambda (_%out122899%_)
                                                         (hash-put!
                                                          _%exports122896%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122899%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122899%_ '4 '#f '#f))
                  _%out122899%_))
               (##unchecked-structure-ref _%src-ctx122895%_ '9 '#f '#f))
              (_%K122847%_
               _%rest122848%_
               (__foldl1
                (lambda (_%spec122901%_ _%r122902%_)
                  (let* ((_%e122903122919%_ _%spec122901%_)
                         (_%E122905122923%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122903122919%_)))
                         (_%E122904122978%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122903122919%_)
                                (let ((_%e122906122927%_
                                       (gx#syntax-e _%e122903122919%_)))
                                  (let ((_%hd122907122930%_
                                         (##car _%e122906122927%_))
                                        (_%tl122908122932%_
                                         (##cdr _%e122906122927%_)))
                                    (let ((_%phi122935%_ _%hd122907122930%_))
                                      (if (gx#stx-pair? _%tl122908122932%_)
                                          (let ((_%e122909122937%_
                                                 (gx#syntax-e
                                                  _%tl122908122932%_)))
                                            (let ((_%hd122910122940%_
                                                   (##car _%e122909122937%_))
                                                  (_%tl122911122942%_
                                                   (##cdr _%e122909122937%_)))
                                              (let ((_%name122945%_
                                                     _%hd122910122940%_))
                                                (if (gx#stx-pair?
                                                     _%tl122911122942%_)
                                                    (let ((_%e122912122947%_
                                                           (gx#syntax-e
                                                            _%tl122911122942%_)))
                                                      (let ((_%hd122913122950%_
                                                             (##car _%e122912122947%_))
                                                            (_%tl122914122952%_
                                                             (##cdr _%e122912122947%_)))
                                                        (let ((_%src-phi122955%_
                                                               _%hd122913122950%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122914122952%_)
                                                              (let ((_%e122915122957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122914122952%_)))
                        (let ((_%hd122916122960%_ (##car _%e122915122957%_))
                              (_%tl122917122962%_ (##cdr _%e122915122957%_)))
                          (let ((_%src-name122965%_ _%hd122916122960%_))
                            (if (gx#stx-null? _%tl122917122962%_)
                                (if (and (gx#stx-fixnum? _%src-phi122955%_)
                                         (gx#identifier? _%src-name122965%_)
                                         (gx#stx-fixnum? _%phi122935%_)
                                         (gx#identifier? _%name122945%_))
                                    (let ((_%src-phi122967%_
                                           (gx#stx-e _%src-phi122955%_))
                                          (_%src-name122968%_
                                           (gx#core-identifier-key
                                            _%src-name122965%_))
                                          (_%phi122969%_
                                           (gx#stx-e _%phi122935%_))
                                          (_%name122970%_
                                           (gx#core-identifier-key
                                            _%name122945%_)))
                                      (let ((_%$e122972%_
                                             (hash-get
                                              _%exports122896%_
                                              (cons _%src-phi122967%_
                                                    _%src-name122968%_))))
                                        (if _%$e122972%_
                                            ((lambda (_%out122975%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122975%_
                                                      _%name122970%_
                                                      (fx- _%phi122969%_
                                                           _%src-phi122967%_))
                                                     _%r122902%_))
                                             _%$e122972%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122767%_
                                               _%hd122846%_)))))
                                    (_%E122905122923%_))
                                (_%E122905122923%_)))))
                      (_%E122905122923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122905122923%_)))))
                                          (_%E122905122923%_)))))
                                (_%E122905122923%_)))))
                    (_%E122904122978%_)))
                _%r122849%_
                _%specs122897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122859122871%_)))))
                                          (_%E122859122871%_))))
                                  (_%E122859122871%_))))
                           (_%E122851123004%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122850122867%_)
                                  (let ((_%e122853122986%_
                                         (gx#syntax-e _%e122850122867%_)))
                                    (let ((_%hd122854122989%_
                                           (##car _%e122853122986%_))
                                          (_%tl122855122991%_
                                           (##cdr _%e122853122986%_)))
                                      (if (gx#stx-pair? _%tl122855122991%_)
                                          (let ((_%e122856122994%_
                                                 (gx#syntax-e
                                                  _%tl122855122991%_)))
                                            (let ((_%hd122857122997%_
                                                   (##car _%e122856122994%_))
                                                  (_%tl122858122999%_
                                                   (##cdr _%e122856122994%_)))
                                              (let ((_%path123002%_
                                                     _%hd122857122997%_))
                                                (if (gx#stx-null?
                                                     _%tl122858122999%_)
                                                    (if '#t
                                                        (_%K122847%_
                                                         _%rest122848%_
                                                         (cons (_%import-spec-source122775%_
                                                                _%path123002%_)
                                                               _%r122849%_))
                                                        (_%E122852122982%_))
                                                    (_%E122852122982%_)))))
                                          (_%E122852122982%_))))
                                  (_%E122852122982%_)))))
                      (_%E122851123004%_))))
                 (_%import-spec-source122775%_
                  (lambda (_%spath122844%_)
                    (gx#core-import-nested-module
                     _%spath122844%_
                     _%stx122767%_)))
                 (_%import!122776%_
                  (lambda (_%rbody122789%_)
                    (letrec* ((_%current-ctx122791%_
                               (gx#current-expander-context))
                              (_%deps122792%_ (make-hash-table-eq))
                              (_%bind!122793%_
                               (lambda (_%hd122842%_)
                                 (gx#core-bind-import!__1
                                  _%hd122842%_
                                  _%current-ctx122791%_))))
                      (let _%lp122795%_ ((_%rest122797%_ _%rbody122789%_)
                                         (_%body122798%_ '()))
                        (let* ((_%rest122799122807%_ _%rest122797%_)
                               (_%else122801122818%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122791%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122791%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122791%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122798%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122815%_ _%_122816%_)
                                     (gx#eval-module _%ctx122815%_))
                                   _%deps122792%_)
                                  _%body122798%_))
                               (_%K122803122830%_
                                (lambda (_%rest122821%_ _%hd122822%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122822%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122793%_ _%hd122822%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122822%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122822%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122792%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122822%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122822%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122793%_
                                             (##unchecked-structure-ref
                                              _%hd122822%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122822%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122792%_
                                                 (##unchecked-structure-ref
                                                  _%hd122822%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122826%_
                                                 (##structure-instance-of?
                                                  _%hd122822%_
                                                  'gx#module-context::t)))
                                            (if _%$e122826%_
                                                _%$e122826%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122767%_
                                                   _%hd122822%_))))))
                                  (_%lp122795%_
                                   _%rest122821%_
                                   (cons _%hd122822%_ _%body122798%_)))))
                          (if (##pair? _%rest122799122807%_)
                              (let ((_%hd122804122833%_
                                     (##car _%rest122799122807%_))
                                    (_%tl122805122835%_
                                     (##cdr _%rest122799122807%_)))
                                (let* ((_%hd122838%_ _%hd122804122833%_)
                                       (_%rest122840%_ _%tl122805122835%_))
                                  (_%K122803122830%_
                                   _%rest122840%_
                                   _%hd122838%_)))
                              (_%else122801122818%_)))))))
                 (_%expanded-import?122777%_
                  (lambda (_%e122781%_)
                    (let ((_%$e122783%_
                           (##structure-direct-instance-of?
                            _%e122781%_
                            'gx#import-set::t)))
                      (if _%$e122783%_
                          _%$e122783%_
                          (let ((_%$e122786%_
                                 (##structure-direct-instance-of?
                                  _%e122781%_
                                  'gx#module-import::t)))
                            (if _%$e122786%_
                                _%$e122786%_
                                (##structure-instance-of?
                                 _%e122781%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122779%_
                 (gx#core-expand-import/export
                  _%stx122767%_
                  _%expanded-import?122777%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122770%_)))
            (if _%internal-expand?122768%_
                (reverse _%rbody122779%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122776%_ _%rbody122779%_))
                 (gx#stx-source _%stx122767%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123106%_)
        (let ((_%internal-expand?123108%_ '#f))
          (gx#core-expand-import%__%
           _%stx123106%_
           _%internal-expand?123108%_))))
    (define gx#core-expand-import%
      (lambda _g125755_
        (let ((_g125754_ (##length _g125755_)))
          (cond ((##fx= _g125754_ 1)
                 (apply (lambda (_%stx123106%_)
                          (gx#core-expand-import%__0 _%stx123106%_))
                        _g125755_))
                ((##fx= _g125754_ 2)
                 (apply (lambda (_%stx123110%_ _%internal-expand?123111%_)
                          (gx#core-expand-import%__%
                           _%stx123110%_
                           _%internal-expand?123111%_))
                        _g125755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125755_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122694%_ _%where122695%_)
        (let* ((_%e122696122703%_ _%spath122694%_)
               (_%E122698122707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122696122703%_)))
               (_%E122697122762%_
                (lambda ()
                  (if (gx#stx-pair? _%e122696122703%_)
                      (let ((_%e122699122711%_
                             (gx#syntax-e _%e122696122703%_)))
                        (let ((_%hd122700122714%_ (##car _%e122699122711%_))
                              (_%tl122701122716%_ (##cdr _%e122699122711%_)))
                          (let* ((_%origin122719%_ _%hd122700122714%_)
                                 (_%sub122721%_ _%tl122701122716%_))
                            (if '#t
                                (let ((_%origin-ctx122723%_
                                       (if (gx#stx-false? _%origin122719%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122719%_))))
                                  (let _%lp122725%_ ((_%rest122727%_
                                                      _%sub122721%_)
                                                     (_%ctx122728%_
                                                      _%origin-ctx122723%_))
                                    (let* ((_%e122729122736%_ _%rest122727%_)
                                           (_%E122731122740%_
                                            (lambda () _%ctx122728%_))
                                           (_%E122730122758%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122729122736%_)
                                                  (let ((_%e122732122744%_
                                                         (gx#syntax-e
                                                          _%e122729122736%_)))
                                                    (let ((_%hd122733122747%_
                                                           (##car _%e122732122744%_))
                                                          (_%tl122734122749%_
                                                           (##cdr _%e122732122744%_)))
                                                      (let* ((_%id122752%_
                                                              _%hd122733122747%_)
                                                             (_%rest122754%_
                                                              _%tl122734122749%_))
                                                        (if '#t
                                                            (let ((_%bind122756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122752%_
                            '0
                            _%ctx122728%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122756%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122756%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122695%_
                           _%spath122694%_
                           _%id122752%_))
                      (_%lp122725%_
                       _%rest122754%_
                       (##unchecked-structure-ref _%bind122756%_ '4 '#f '#f)))
                    (_%E122731122740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122731122740%_)))))
                                      (_%E122730122758%_))))
                                (_%E122698122707%_)))))
                      (_%E122698122707%_)))))
          (_%E122697122762%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122692%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122692%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122186%_ _%internal-expand?122187%_)
        (letrec* ((_%make-export__125683125684%_
                   (lambda (_%bind122640%_
                            _%phi122641%_
                            _%ctx122642%_
                            _%name122643%_)
                     (let* ((_%key122645%_
                             (##unchecked-structure-ref
                              _%bind122640%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122647%_
                             (if _%name122643%_
                                 (gx#core-identifier-key _%name122643%_)
                                 _%key122645%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122642%_
                        _%key122645%_
                        _%phi122641%_
                        _%export-key122647%_
                        (let ((_%$e122650%_
                               (##structure-instance-of?
                                _%bind122640%_
                                'gx#extern-binding::t)))
                          (if _%$e122650%_
                              _%$e122650%_
                              (##structure-direct-instance-of?
                               _%bind122640%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125685125688%_
                   (lambda (_%bind122656%_)
                     (let* ((_%phi122658%_ (gx#current-export-expander-phi))
                            (_%ctx122660%_ (gx#current-expander-context))
                            (_%name122662%_ '#f))
                       (_%make-export__125683125684%_
                        _%bind122656%_
                        _%phi122658%_
                        _%ctx122660%_
                        _%name122662%_))))
                  (_%make-export__1__125686125689%_
                   (lambda (_%bind122664%_ _%phi122665%_)
                     (let* ((_%ctx122667%_ (gx#current-expander-context))
                            (_%name122669%_ '#f))
                       (_%make-export__125683125684%_
                        _%bind122664%_
                        _%phi122665%_
                        _%ctx122667%_
                        _%name122669%_))))
                  (_%make-export__2__125687125690%_
                   (lambda (_%bind122671%_ _%phi122672%_ _%ctx122673%_)
                     (let ((_%name122675%_ '#f))
                       (_%make-export__125683125684%_
                        _%bind122671%_
                        _%phi122672%_
                        _%ctx122673%_
                        _%name122675%_))))
                  (_%make-export122189%_
                   (lambda _g125757_
                     (let ((_g125756_ (##length _g125757_)))
                       (cond ((##fx= _g125756_ 1)
                              (apply (lambda (_%bind122656%_)
                                       (_%make-export__0__125685125688%_
                                        _%bind122656%_))
                                     _g125757_))
                             ((##fx= _g125756_ 2)
                              (apply (lambda (_%bind122664%_ _%phi122665%_)
                                       (_%make-export__1__125686125689%_
                                        _%bind122664%_
                                        _%phi122665%_))
                                     _g125757_))
                             ((##fx= _g125756_ 3)
                              (apply (lambda (_%bind122671%_
                                              _%phi122672%_
                                              _%ctx122673%_)
                                       (_%make-export__2__125687125690%_
                                        _%bind122671%_
                                        _%phi122672%_
                                        _%ctx122673%_))
                                     _g125757_))
                             ((##fx= _g125756_ 4)
                              (apply (lambda (_%bind122677%_
                                              _%phi122678%_
                                              _%ctx122679%_
                                              _%name122680%_)
                                       (_%make-export__125683125684%_
                                        _%bind122677%_
                                        _%phi122678%_
                                        _%ctx122679%_
                                        _%name122680%_))
                                     _g125757_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125757_))))))
                  (_%expand1122190%_
                   (lambda (_%hd122345%_
                            _%K122346%_
                            _%rest122347%_
                            _%r122348%_)
                     (let* ((_%e122349122381%_ _%hd122345%_)
                            (_%E122376122385%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122186%_
                                _%hd122345%_)))
                            (_%E122366122469%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122349122381%_)
                                   (let ((_%e122377122389%_
                                          (gx#syntax-e _%e122349122381%_)))
                                     (let ((_%hd122378122392%_
                                            (##car _%e122377122389%_))
                                           (_%tl122379122394%_
                                            (##cdr _%e122377122389%_)))
                                       (if (eq? (gx#stx-e _%hd122378122392%_)
                                                'import:)
                                           (let ((_%in122397%_
                                                  _%tl122379122394%_))
                                             (if (gx#stx-list? _%in122397%_)
                                                 (let _%lp122399%_ ((_%in-rest122401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122397%_)
                            (_%r122402%_ _%r122348%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122403122410%_
                                                           _%in-rest122401%_)
                                                          (_%E122405122414%_
                                                           (lambda ()
                                                             (_%K122346%_
                                                              _%rest122347%_
                                                              _%r122402%_)))
                                                          (_%E122404122465%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122403122410%_)
                         (let ((_%e122406122418%_
                                (gx#syntax-e _%e122403122410%_)))
                           (let ((_%hd122407122421%_ (##car _%e122406122418%_))
                                 (_%tl122408122423%_
                                  (##cdr _%e122406122418%_)))
                             (let* ((_%hd122426%_ _%hd122407122421%_)
                                    (_%in-rest122428%_ _%tl122408122423%_))
                               (if '#t
                                   (let ((_%src122463%_
                                          (if (gx#core-bound-module?
                                               _%hd122426%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd122426%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd122426%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd122426%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122426%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd122426%_)))
                                                      (if (gx#stx-string?
                                                           _%hd122426%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd122426%_
                                                              (gx#stx-source
                                                               _%stx122186%_))))
                                                          (let ()
                                                            (let* ((_%e122434122441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122426%_)
                           (_%E122436122445%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx122186%_
                               _%hd122426%_)))
                           (_%E122435122459%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122434122441%_)
                                  (let ((_%e122437122449%_
                                         (gx#syntax-e _%e122434122441%_)))
                                    (let ((_%hd122438122452%_
                                           (##car _%e122437122449%_))
                                          (_%tl122439122454%_
                                           (##cdr _%e122437122449%_)))
                                      (if (eq? (gx#stx-e _%hd122438122452%_)
                                               'in:)
                                          (let ((_%spath122457%_
                                                 _%tl122439122454%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath122457%_
                                                 _%stx122186%_)
                                                (_%E122436122445%_)))
                                          (_%E122436122445%_))))
                                  (_%E122436122445%_)))))
                      (_%E122435122459%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122399%_
                                      _%in-rest122428%_
                                      (_%export-imports122191%_
                                       _%src122463%_
                                       _%r122402%_)))
                                   (_%E122405122414%_)))))
                         (_%E122405122414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122404122465%_)))
                                                 (_%E122376122385%_)))
                                           (_%E122376122385%_))))
                                   (_%E122376122385%_))))
                            (_%E122353122509%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122349122381%_)
                                   (let ((_%e122367122473%_
                                          (gx#syntax-e _%e122349122381%_)))
                                     (let ((_%hd122368122476%_
                                            (##car _%e122367122473%_))
                                           (_%tl122369122478%_
                                            (##cdr _%e122367122473%_)))
                                       (if (eq? (gx#stx-e _%hd122368122476%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122369122478%_)
                                               (let ((_%e122370122481%_
                                                      (gx#syntax-e
                                                       _%tl122369122478%_)))
                                                 (let ((_%hd122371122484%_
                                                        (##car _%e122370122481%_))
                                                       (_%tl122372122486%_
                                                        (##cdr _%e122370122481%_)))
                                                   (let ((_%id122489%_
                                                          _%hd122371122484%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122372122486%_)
                                                         (let ((_%e122373122491%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122372122486%_)))
                   (let ((_%hd122374122494%_ (##car _%e122373122491%_))
                         (_%tl122375122496%_ (##cdr _%e122373122491%_)))
                     (let ((_%name122499%_ _%hd122374122494%_))
                       (if (gx#stx-null? _%tl122375122496%_)
                           (if '#t
                               (let* ((_%phi122501%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122503%_
                                       (gx#core-resolve-identifier__1
                                        _%id122489%_
                                        _%phi122501%_)))
                                 (if _%$e122503%_
                                     ((lambda (_%bind122506%_)
                                        (_%K122346%_
                                         _%rest122347%_
                                         (cons (_%make-export__125683125684%_
                                                _%bind122506%_
                                                _%phi122501%_
                                                (gx#current-expander-context)
                                                _%name122499%_)
                                               _%r122348%_)))
                                      _%$e122503%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx122186%_
                                        _%hd122345%_
                                        _%id122489%_))))
                               (_%E122366122469%_))
                           (_%E122366122469%_)))))
                 (_%E122366122469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122366122469%_))
                                           (_%E122366122469%_))))
                                   (_%E122366122469%_))))
                            (_%E122352122559%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122349122381%_)
                                   (let ((_%e122354122513%_
                                          (gx#syntax-e _%e122349122381%_)))
                                     (let ((_%hd122355122516%_
                                            (##car _%e122354122513%_))
                                           (_%tl122356122518%_
                                            (##cdr _%e122354122513%_)))
                                       (if (eq? (gx#stx-e _%hd122355122516%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122356122518%_)
                                               (let ((_%e122357122521%_
                                                      (gx#syntax-e
                                                       _%tl122356122518%_)))
                                                 (let ((_%hd122358122524%_
                                                        (##car _%e122357122521%_))
                                                       (_%tl122359122526%_
                                                        (##cdr _%e122357122521%_)))
                                                   (let ((_%phi122529%_
                                                          _%hd122358122524%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122359122526%_)
                                                         (let ((_%e122360122531%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122359122526%_)))
                   (let ((_%hd122361122534%_ (##car _%e122360122531%_))
                         (_%tl122362122536%_ (##cdr _%e122360122531%_)))
                     (let ((_%id122539%_ _%hd122361122534%_))
                       (if (gx#stx-pair? _%tl122362122536%_)
                           (let ((_%e122363122541%_
                                  (gx#syntax-e _%tl122362122536%_)))
                             (let ((_%hd122364122544%_
                                    (##car _%e122363122541%_))
                                   (_%tl122365122546%_
                                    (##cdr _%e122363122541%_)))
                               (let ((_%name122549%_ _%hd122364122544%_))
                                 (if (gx#stx-null? _%tl122365122546%_)
                                     (if (and (gx#stx-fixnum? _%phi122529%_)
                                              (gx#identifier? _%id122539%_)
                                              (gx#identifier? _%name122549%_))
                                         (let* ((_%phi122551%_
                                                 (gx#stx-e _%phi122529%_))
                                                (_%$e122553%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122539%_
                                                  _%phi122551%_)))
                                           (if _%$e122553%_
                                               ((lambda (_%bind122556%_)
                                                  (_%K122346%_
                                                   _%rest122347%_
                                                   (cons (_%make-export__125683125684%_
                                                          _%bind122556%_
                                                          _%phi122551%_
                                                          (gx#current-expander-context)
                                                          _%name122549%_)
                                                         _%r122348%_)))
                                                _%$e122553%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx122186%_
                                                  _%hd122345%_
                                                  _%id122539%_))))
                                         (_%E122353122509%_))
                                     (_%E122353122509%_)))))
                           (_%E122353122509%_)))))
                 (_%E122353122509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122353122509%_))
                                           (_%E122353122509%_))))
                                   (_%E122353122509%_))))
                            (_%E122351122571%_
                             (lambda ()
                               (let ((_%id122563%_ _%e122349122381%_))
                                 (if (gx#identifier? _%id122563%_)
                                     (let ((_%$e122565%_
                                            (gx#core-resolve-identifier__1
                                             _%id122563%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122565%_
                                           ((lambda (_%bind122568%_)
                                              (_%K122346%_
                                               _%rest122347%_
                                               (cons (_%make-export__0__125685125688%_
                                                      _%bind122568%_)
                                                     _%r122348%_)))
                                            _%$e122565%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx122186%_
                                              _%hd122345%_))))
                                     (_%E122352122559%_)))))
                            (_%E122350122635%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122349122381%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122575%_
                                               (gx#current-expander-context))
                                              (_%current-phi122577%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122579%_
                                               (gx#core-context-shift
                                                _%current-ctx122575%_
                                                _%current-phi122577%_))
                                              (_%phi-bind122581%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122579%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122584%_ ((_%bind-rest122586%_
                                                             _%phi-bind122581%_)
                                                            (_%set122587%_
                                                             '()))
                                           (let* ((_%bind-rest122588122598%_
                                                   _%bind-rest122586%_)
                                                  (_%else122590122606%_
                                                   (lambda ()
                                                     (_%K122346%_
                                                      _%rest122347%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122577%_
                                                             _%set122587%_)
                                                            _%r122348%_))))
                                                  (_%K122592122616%_
                                                   (lambda (_%bind-rest122609%_
                                                            _%bind122610%_
                                                            _%key122611%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122610%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122610%_))
                                                         (_%lp122584%_
                                                          _%bind-rest122609%_
                                                          _%set122587%_)
                                                         (_%lp122584%_
                                                          _%bind-rest122609%_
                                                          (cons (_%make-export__2__125687125690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122610%_
                         _%current-phi122577%_
                         _%current-ctx122575%_)
                        _%set122587%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122588122598%_)
                                                 (let ((_%hd122593122619%_
                                                        (##car _%bind-rest122588122598%_))
                                                       (_%tl122594122621%_
                                                        (##cdr _%bind-rest122588122598%_)))
                                                   (if (##pair? _%hd122593122619%_)
                                                       (let ((_%hd122595122624%_
                                                              (##car _%hd122593122619%_))
                                                             (_%tl122596122626%_
                                                              (##cdr _%hd122593122619%_)))
                                                         (let* ((_%key122629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122595122624%_)
                        (_%bind122631%_ _%tl122596122626%_)
                        (_%bind-rest122633%_ _%tl122594122621%_))
                   (_%K122592122616%_
                    _%bind-rest122633%_
                    _%bind122631%_
                    _%key122629%_)))
               (_%else122590122606%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122590122606%_)))))
                                       (_%E122351122571%_))
                                   (_%E122351122571%_)))))
                       (_%E122350122635%_))))
                  (_%export-imports122191%_
                   (lambda (_%src122221%_ _%r122222%_)
                     (letrec* ((_%current-ctx122224%_
                                (gx#current-expander-context))
                               (_%current-phi122225%_
                                (gx#current-export-expander-phi))
                               (_%import->export122226%_
                                (lambda (_%in122307%_)
                                  (let* ((_%in122308122316%_ _%in122307%_)
                                         (_%E122310122320%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122308122316%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122311122327%_
                                          (lambda (_%phi122323%_
                                                   _%key122324%_
                                                   _%out122325%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122224%_
                                             _%key122324%_
                                             _%phi122323%_
                                             _%key122324%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122308122316%_
                                         'gx#module-import::t)
                                        (let* ((_%e122312122330%_
                                                (##unchecked-structure-ref
                                                 _%in122308122316%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122333%_
                                                _%e122312122330%_)
                                               (_%e122313122335%_
                                                (##unchecked-structure-ref
                                                 _%in122308122316%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122338%_
                                                _%e122313122335%_)
                                               (_%e122314122340%_
                                                (##unchecked-structure-ref
                                                 _%in122308122316%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122343%_
                                                _%e122314122340%_))
                                          (_%K122311122327%_
                                           _%phi122343%_
                                           _%key122338%_
                                           _%out122333%_))
                                        (_%E122310122320%_)))))
                               (_%fold-e122227%_
                                (lambda (_%in122229%_ _%r122230%_)
                                  (let* ((_%in122231122245%_ _%in122229%_)
                                         (_%else122234122253%_
                                          (lambda () _%r122230%_)))
                                    (let ((_%K122240122289%_
                                           (lambda (_%phi122285%_
                                                    _%key122286%_
                                                    _%out122287%_)
                                             (if (and (fx= _%phi122285%_
                                                           _%current-phi122225%_)
                                                      (eq? _%src122221%_
                                                           (##unchecked-structure-ref
                                                            _%out122287%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122226%_
                                                        _%in122229%_)
                                                       _%r122230%_)
                                                 _%r122230%_)))
                                          (_%K122236122264%_
                                           (lambda (_%imports122257%_
                                                    _%phi122258%_
                                                    _%ctx122259%_)
                                             (if (and (fx= _%phi122258%_
                                                           _%current-phi122225%_)
                                                      (eq? _%src122221%_
                                                           _%ctx122259%_))
                                                 (__foldl1
                                                  (lambda (_%in122261%_
                                                           _%r122262%_)
                                                    (cons (_%import->export122226%_
                                                           _%in122261%_)
                                                          _%r122262%_))
                                                  _%r122230%_
                                                  _%imports122257%_)
                                                 _%r122230%_))))
                                      (let ((_%try-match122233122282%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122231122245%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122237122267%_
                                                           (##unchecked-structure-ref
                                                            _%in122231122245%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122238122272%_
                                                           (##unchecked-structure-ref
                                                            _%in122231122245%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122239122277%_
                                                           (##unchecked-structure-ref
                                                            _%in122231122245%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122270%_
                                                            _%e122237122267%_)
                                                           (_%phi122275%_
                                                            _%e122238122272%_)
                                                           (_%imports122280%_
                                                            _%e122239122277%_))
                                                       (_%K122236122264%_
                                                        _%imports122280%_
                                                        _%phi122275%_
                                                        _%ctx122270%_)))
                                                   (_%else122234122253%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122231122245%_
                                             'gx#module-import::t)
                                            (let* ((_%e122241122292%_
                                                    (##unchecked-structure-ref
                                                     _%in122231122245%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122242122297%_
                                                    (##unchecked-structure-ref
                                                     _%in122231122245%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122243122302%_
                                                    (##unchecked-structure-ref
                                                     _%in122231122245%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122295%_
                                                     _%e122241122292%_)
                                                    (_%key122300%_
                                                     _%e122242122297%_)
                                                    (_%phi122305%_
                                                     _%e122243122302%_))
                                                (_%K122240122289%_
                                                 _%phi122305%_
                                                 _%key122300%_
                                                 _%out122295%_)))
                                            (_%try-match122233122282%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122221%_
                              _%current-phi122225%_
                              (__foldl1
                               _%fold-e122227%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122224%_
                                '8
                                '#f
                                '#f)))
                             _%r122222%_))))
                  (_%export!122192%_
                   (lambda (_%rbody122208%_)
                     (letrec* ((_%current-ctx122210%_
                                (gx#current-expander-context))
                               (_%fold-e122211%_
                                (lambda (_%out122215%_ _%r122216%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122215%_
                                       'gx#module-export::t)
                                      (let () (cons _%out122215%_ _%r122216%_))
                                      (if (##structure-direct-instance-of?
                                           _%out122215%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r122216%_
                                             (##unchecked-structure-ref
                                              _%out122215%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r122216%_))))))
                       (let ((_%body122213%_ (reverse _%rbody122208%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122210%_
                          (__foldl1
                           _%fold-e122211%_
                           (##unchecked-structure-ref
                            _%current-ctx122210%_
                            '9
                            '#f
                            '#f)
                           _%body122213%_)
                          '9
                          '#f
                          '#f)
                         _%body122213%_))))
                  (_%expanded-export?122193%_
                   (lambda (_%e122203%_)
                     (let ((_%$e122205%_
                            (##structure-direct-instance-of?
                             _%e122203%_
                             'gx#module-export::t)))
                       (if _%$e122205%_
                           _%$e122205%_
                           (##structure-direct-instance-of?
                            _%e122203%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122187%_)
              (let ((_%rbody122199%_
                     (gx#core-expand-import/export
                      _%stx122186%_
                      _%expanded-export?122193%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122190%_)))
                (if _%internal-expand?122187%_
                    (reverse _%rbody122199%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122192%_ _%rbody122199%_))
                     (gx#stx-source _%stx122186%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx122186%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx122186%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122685%_)
        (let ((_%internal-expand?122687%_ '#f))
          (gx#core-expand-export%__%
           _%stx122685%_
           _%internal-expand?122687%_))))
    (define gx#core-expand-export%
      (lambda _g125759_
        (let ((_g125758_ (##length _g125759_)))
          (cond ((##fx= _g125758_ 1)
                 (apply (lambda (_%stx122685%_)
                          (gx#core-expand-export%__0 _%stx122685%_))
                        _g125759_))
                ((##fx= _g125758_ 2)
                 (apply (lambda (_%stx122689%_ _%internal-expand?122690%_)
                          (gx#core-expand-export%__%
                           _%stx122689%_
                           _%internal-expand?122690%_))
                        _g125759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125759_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122183%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122183%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122153%_)
        (let* ((_%e122154122161%_ _%stx122153%_)
               (_%E122156122165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122154122161%_)))
               (_%E122155122179%_
                (lambda ()
                  (if (gx#stx-pair? _%e122154122161%_)
                      (let ((_%e122157122169%_
                             (gx#syntax-e _%e122154122161%_)))
                        (let ((_%hd122158122172%_ (##car _%e122157122169%_))
                              (_%tl122159122174%_ (##cdr _%e122157122169%_)))
                          (let ((_%body122177%_ _%tl122159122174%_))
                            (if (gx#identifier-list? _%body122177%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122177%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122177%_))
                                   (gx#stx-source _%stx122153%_)))
                                (_%E122156122165%_)))))
                      (_%E122156122165%_)))))
          (_%E122155122179%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122119%_ _%private?122120%_ _%phi122121%_ _%ctx122122%_)
        (gx#core-bind-syntax!__%
         _%id122119%_
         ((if _%private?122120%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122119%_))
         _%private?122120%_
         _%phi122121%_
         _%ctx122122%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122127%_)
        (let* ((_%private?122129%_ '#f)
               (_%phi122131%_ (gx#current-expander-phi))
               (_%ctx122133%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122127%_
           _%private?122129%_
           _%phi122131%_
           _%ctx122133%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122135%_ _%private?122136%_)
        (let* ((_%phi122138%_ (gx#current-expander-phi))
               (_%ctx122140%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122135%_
           _%private?122136%_
           _%phi122138%_
           _%ctx122140%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122142%_ _%private?122143%_ _%phi122144%_)
        (let ((_%ctx122146%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122142%_
           _%private?122143%_
           _%phi122144%_
           _%ctx122146%_))))
    (define gx#core-bind-feature!
      (lambda _g125761_
        (let ((_g125760_ (##length _g125761_)))
          (cond ((##fx= _g125760_ 1)
                 (apply (lambda (_%id122127%_)
                          (gx#core-bind-feature!__0 _%id122127%_))
                        _g125761_))
                ((##fx= _g125760_ 2)
                 (apply (lambda (_%id122135%_ _%private?122136%_)
                          (gx#core-bind-feature!__1
                           _%id122135%_
                           _%private?122136%_))
                        _g125761_))
                ((##fx= _g125760_ 3)
                 (apply (lambda (_%id122142%_ _%private?122143%_ _%phi122144%_)
                          (gx#core-bind-feature!__2
                           _%id122142%_
                           _%private?122143%_
                           _%phi122144%_))
                        _g125761_))
                ((##fx= _g125760_ 4)
                 (apply (lambda (_%id122148%_
                                 _%private?122149%_
                                 _%phi122150%_
                                 _%ctx122151%_)
                          (gx#core-bind-feature!__%
                           _%id122148%_
                           _%private?122149%_
                           _%phi122150%_
                           _%ctx122151%_))
                        _g125761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125761_))))))))
