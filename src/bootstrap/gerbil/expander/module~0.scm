(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712773525)
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
      (lambda _%$args125798%_
        (apply make-instance gx#module-import::t _%$args125798%_)))
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
      (lambda _%$args125795%_
        (apply make-instance gx#module-export::t _%$args125795%_)))
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
      (lambda _%$args125792%_
        (apply make-instance gx#import-set::t _%$args125792%_)))
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
      (lambda _%$args125789%_
        (apply make-instance gx#export-set::t _%$args125789%_)))
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
      (lambda _%$args125786%_
        (apply make-instance gx#import-expander::t _%$args125786%_)))
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
      (lambda _%$args125783%_
        (apply make-instance gx#export-expander::t _%$args125783%_)))
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
      (lambda _%$args125780%_
        (apply make-instance gx#import-export-expander::t _%$args125780%_)))
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
      (lambda (_%path125777%_ _%fun125778%_)
        (call-with-input-file
         (cons 'path: (cons _%path125777%_ gx#source-file-settings))
         _%fun125778%_)))
    (define gx#module-context:::init!
      (lambda (_%self122229125758%_
               _%id125760%_
               _%super125761%_
               _%ns125762%_
               _%path125763%_)
        (let* ((_%self125765%_ _%self122229125758%_)
               (_%self125767%_ _%self125765%_))
          (if (##fx< '11 (##structure-length _%self125767%_))
              (begin
                (##unchecked-structure-set!
                 _%self125767%_
                 _%id125760%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125767%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125767%_
                 _%super125761%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125767%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125767%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125767%_
                 _%ns125762%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125767%_
                 _%path125763%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125767%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125767%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125767%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125767%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125767%_
                     '11
                     (##vector-length _%self125767%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self122230125589%_ _%ctx125591%_ _%root125592%_)
        (let* ((_%self125594%_ _%self122230125589%_)
               (_%self125596%_ _%self125594%_)
               (_%super125612%_
                (let ((_%$e125606%_ _%root125592%_))
                  (if _%$e125606%_
                      _%$e125606%_
                      (let ((_%$e125609%_ (gx#core-context-root__0)))
                        (if _%$e125609%_
                            _%$e125609%_
                            (let ((__obj125842
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor125843
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj125842
                                      ':init!)))
                                (if __constructor125843
                                    (__constructor125843 __obj125842)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj125842)))))))
          (if _%ctx125591%_
              (let ((_%id125615%_
                     (##structure-ref
                      _%ctx125591%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path125616%_
                     (##structure-ref
                      _%ctx125591%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in125617%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx125591%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e125618%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx125591%_)))))
                (if (##fx< '8 (##structure-length _%self125596%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125596%_
                       _%id125615%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125596%_
                       (make-hash-table-eq 'size: (##length _%in125617%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125596%_
                       _%super125612%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125596%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125596%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125596%_
                       _%path125616%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125596%_
                       _%in125617%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125596%_
                       _%e125618%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125596%_
                           '8
                           (##vector-length _%self125596%_)))
                (##for-each
                 (lambda (_%g125619125621%_)
                   (gx#core-bind-weak-import!__%
                    _%g125619125621%_
                    _%self125596%_))
                 _%in125617%_))
              (if (##fx< '8 (##structure-length _%self125596%_))
                  (begin
                    (##unchecked-structure-set! _%self125596%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self125596%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125596%_
                     _%super125612%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125596%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self125596%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self125596%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self125596%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self125596%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self125596%_
                         '8
                         (##vector-length _%self125596%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self122230125627%_ _%ctx125628%_)
        (let ((_%root125630%_ '#f))
          (gx#prelude-context:::init!__%
           _%self122230125627%_
           _%ctx125628%_
           _%root125630%_))))
    (define gx#prelude-context:::init!
      (lambda _g125849_
        (let ((_g125848_ (##length _g125849_)))
          (cond ((##fx= _g125848_ 2)
                 (apply gx#prelude-context:::init!__0 _g125849_))
                ((##fx= _g125848_ 3)
                 (apply gx#prelude-context:::init!__% _g125849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125849_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125463%_ _%e125464%_)
        (if (##fx< '3 (##structure-length _%self125463%_))
            (begin
              (##unchecked-structure-set!
               _%self125463%_
               _%e125464%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125463%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125463%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125463%_
                   '3
                   (##vector-length _%self125463%_)))))
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
      (lambda (_%g125089125092%_ _%g125090125094%_)
        (gx#core-apply-user-expander__%
         _%g125089125092%_
         _%g125090125094%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124960124963%_ _%g124961124965%_)
        (gx#core-apply-user-expander__%
         _%g124960124963%_
         _%g124961124965%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124831%_)
        (let* ((_%path124833%_
                (##structure-ref _%ctx124831%_ '7 gx#module-context::t '#f))
               (_%path124835%_
                (if (pair? _%path124833%_)
                    (last _%path124833%_)
                    _%path124833%_)))
          (if (string? _%path124835%_) _%path124835%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124807%_ _%reload?124808%_ _%eval?124809%_)
        (let ((_%ctx124811%_
               ((gx#current-expander-module-import)
                _%path124807%_
                _%reload?124808%_)))
          (if (and _%ctx124811%_ _%eval?124809%_)
              (gx#eval-module _%ctx124811%_)
              '#!void)
          _%ctx124811%_)))
    (define gx#import-module__0
      (lambda (_%path124816%_)
        (let* ((_%reload?124818%_ '#f) (_%eval?124820%_ '#f))
          (gx#import-module__%
           _%path124816%_
           _%reload?124818%_
           _%eval?124820%_))))
    (define gx#import-module__1
      (lambda (_%path124822%_ _%reload?124823%_)
        (let ((_%eval?124825%_ '#f))
          (gx#import-module__%
           _%path124822%_
           _%reload?124823%_
           _%eval?124825%_))))
    (define gx#import-module
      (lambda _g125851_
        (let ((_g125850_ (##length _g125851_)))
          (cond ((##fx= _g125850_ 1) (apply gx#import-module__0 _g125851_))
                ((##fx= _g125850_ 2) (apply gx#import-module__1 _g125851_))
                ((##fx= _g125850_ 3) (apply gx#import-module__% _g125851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125851_))))))
    (define gx#eval-module
      (lambda (_%mod124804%_)
        ((gx#current-expander-module-eval) _%mod124804%_)))
    (define gx#core-eval-module
      (lambda (_%obj124784%_)
        (letrec ((_%force-e124786%_
                  (lambda (_%getf124800%_ _%e124801%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124800%_ _%e124801%_)))
                     gx#current-expander-context
                     _%e124801%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124788%_ ((_%e124790%_ _%obj124784%_))
            (if (##structure-instance-of? _%e124790%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124793%_
                         (gx#core-context-prelude__% _%e124790%_)))
                    (if _%$e124793%_ (_%recur124788%_ _%$e124793%_) '#!void))
                  (_%force-e124786%_ gx#module-context-e _%e124790%_))
                (if (##structure-instance-of?
                     _%e124790%_
                     'gx#prelude-context::t)
                    (_%force-e124786%_ gx#prelude-context-e _%e124790%_)
                    (if (gx#stx-string? _%e124790%_)
                        (_%recur124788%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e124790%_)))
                        (if (gx#core-library-module-path? _%e124790%_)
                            (_%recur124788%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e124790%_)))
                            (error '"cannot eval module" _%obj124784%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124764%_)
        (let _%lp124766%_ ((_%e124768%_ _%ctx124764%_))
          (if (or (##structure-instance-of? _%e124768%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124768%_ 'gx#local-context::t))
              (_%lp124766%_ (##unchecked-structure-ref _%e124768%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e124768%_ 'gx#prelude-context::t)
                  _%e124768%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124780%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124780%_))))
    (define gx#core-context-prelude
      (lambda _g125853_
        (let ((_g125852_ (##length _g125853_)))
          (cond ((##fx= _g125852_ 0)
                 (apply gx#core-context-prelude__0 _g125853_))
                ((##fx= _g125852_ 1)
                 (apply gx#core-context-prelude__% _g125853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125853_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124755%_)
        (let ((_%$e124757%_ (hash-get gx#__module-registry _%ctx124755%_)))
          (if _%$e124757%_
              _%$e124757%_
              (let ((_%pre124761%_
                     (let ((__obj125844
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
                       (gx#prelude-context:::init! __obj125844 _%ctx124755%_)
                       __obj125844)))
                (hash-put! gx#__module-registry _%ctx124755%_ _%pre124761%_)
                _%pre124761%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124627%_ _%reload?124628%_)
        (letrec ((_%import-source124630%_
                  (lambda (_%path124719%_)
                    (if (member _%path124719%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124719%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125854_ (gx#core-read-module _%path124719%_)))
                         (begin
                           (let ((_g125855_
                                  (if (##values? _g125854_)
                                      (##vector-length _g125854_)
                                      1)))
                             (if (not (##fx= _g125855_ 4))
                                 (error "Context expects 4 values" _g125855_)))
                           (let ((_%pre124722%_ (##vector-ref _g125854_ 0))
                                 (_%id124723%_ (##vector-ref _g125854_ 1))
                                 (_%ns124724%_ (##vector-ref _g125854_ 2))
                                 (_%body124725%_ (##vector-ref _g125854_ 3)))
                             (let* ((_%prelude124735%_
                                     (if (##structure-instance-of?
                                          _%pre124722%_
                                          'gx#prelude-context::t)
                                         _%pre124722%_
                                         (if (##structure-instance-of?
                                              _%pre124722%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre124722%_)
                                             (if (string? _%pre124722%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre124722%_))
                                                 (if (not _%pre124722%_)
                                                     (let ((_%$e124731%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124731%_
                                                           _%$e124731%_
                                                           (let ((__obj125845
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
                     (gx#prelude-context:::init! __obj125845 '#f)
                     __obj125845)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath124627%_
                                                            _%pre124722%_))))))
                                    (_%ctx124737%_
                                     (let ((__obj125846
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
                                        __obj125846
                                        _%id124723%_
                                        _%prelude124735%_
                                        _%ns124724%_
                                        _%path124719%_)
                                       __obj125846))
                                    (_%body124739%_
                                     (gx#core-expand-module-begin
                                      _%body124725%_
                                      _%ctx124737%_))
                                    (_%body124741%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124739%_)
                                      _%path124719%_
                                      _%ctx124737%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124737%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124741%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124737%_
                                _%body124741%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124719%_
                                _%ctx124737%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124723%_
                                _%ctx124737%_)
                               _%ctx124737%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124719%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124631%_
                  (lambda (_%rpath124647%_)
                    (let* ((_%rpath124648124655%_ _%rpath124647%_)
                           (_%E124650124659%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124648124655%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124651124707%_
                            (lambda (_%refs124662%_ _%origin124663%_)
                              (let ((_%ctx124665%_
                                     (if _%origin124663%_
                                         (gx#core-import-module__%
                                          _%origin124663%_
                                          _%reload?124628%_)
                                         (gx#current-expander-context))))
                                (let _%lp124667%_ ((_%rest124669%_
                                                    _%refs124662%_)
                                                   (_%ctx124670%_
                                                    _%ctx124665%_))
                                  (let* ((_%rest124671124679%_ _%rest124669%_)
                                         (_%else124673124687%_
                                          (lambda () _%ctx124670%_))
                                         (_%K124675124695%_
                                          (lambda (_%rest124690%_ _%id124691%_)
                                            (let ((_%bind124693%_
                                                   (gx#resolve-identifier__%
                                                    _%id124691%_
                                                    '0
                                                    _%ctx124670%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124693%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124693%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124667%_
                                                   _%rest124690%_
                                                   (##unchecked-structure-ref
                                                    _%bind124693%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124647%_
                                                         _%id124691%_
                                                         _%bind124693%_))))))
                                    (if (##pair? _%rest124671124679%_)
                                        (let ((_%hd124676124698%_
                                               (##car _%rest124671124679%_))
                                              (_%tl124677124700%_
                                               (##cdr _%rest124671124679%_)))
                                          (let* ((_%id124703%_
                                                  _%hd124676124698%_)
                                                 (_%rest124705%_
                                                  _%tl124677124700%_))
                                            (_%K124675124695%_
                                             _%rest124705%_
                                             _%id124703%_)))
                                        (_%else124673124687%_))))))))
                      (if (##pair? _%rpath124648124655%_)
                          (let ((_%hd124652124710%_
                                 (##car _%rpath124648124655%_))
                                (_%tl124653124712%_
                                 (##cdr _%rpath124648124655%_)))
                            (let* ((_%origin124715%_ _%hd124652124710%_)
                                   (_%refs124717%_ _%tl124653124712%_))
                              (_%K124651124707%_
                               _%refs124717%_
                               _%origin124715%_)))
                          (_%E124650124659%_))))))
          (let ((_%$e124633%_
                 (if (not _%reload?124628%_)
                     (hash-get gx#__module-registry _%rpath124627%_)
                     '#f)))
            (if _%$e124633%_
                _%$e124633%_
                (if (list? _%rpath124627%_)
                    (_%import-submodule124631%_ _%rpath124627%_)
                    (if (gx#core-library-module-path? _%rpath124627%_)
                        (let ((_%ctx124638%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124627%_)
                                _%reload?124628%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124627%_
                           _%ctx124638%_)
                          _%ctx124638%_)
                        (let* ((_%npath124641%_
                                (path-normalize _%rpath124627%_))
                               (_%$e124643%_
                                (if (not _%reload?124628%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath124641%_)
                                    '#f)))
                          (if _%$e124643%_
                              _%$e124643%_
                              (_%import-source124630%_
                               _%npath124641%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124748%_)
        (let ((_%reload?124750%_ '#f))
          (gx#core-import-module__% _%rpath124748%_ _%reload?124750%_))))
    (define gx#core-import-module
      (lambda _g125857_
        (let ((_g125856_ (##length _g125857_)))
          (cond ((##fx= _g125856_ 1)
                 (apply gx#core-import-module__0 _g125857_))
                ((##fx= _g125856_ 2)
                 (apply gx#core-import-module__% _g125857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125857_))))))
    (define gx#core-read-module
      (lambda (_%path124616%_)
        (__with-catch
         (lambda (_%exn124618%_)
           (if (and (datum-parsing-exception? _%exn124618%_)
                    (eq? (datum-parsing-exception-filepos _%exn124618%_) '0))
               (gx#core-read-module/lang _%path124616%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124616%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124620124622%_)
                      (display-exception _%exn124618%_ _%g124620124622%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124616%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124468%_)
        (let _%lp124470%_ ((_%body124472%_
                            (read-syntax-from-file _%path124468%_))
                           (_%pre124473%_ '#f)
                           (_%ns124474%_ '#f)
                           (_%pkg124475%_ '#f))
          (let* ((_%e124476124500%_ _%body124472%_)
                 (_%E124492124526%_
                  (lambda ()
                    (let ((_g125858_
                           (if _%pkg124475%_
                               (values _%pre124473%_
                                       _%ns124474%_
                                       _%pkg124475%_)
                               (gx#core-read-module-package
                                _%path124468%_
                                _%pre124473%_
                                _%ns124474%_))))
                      (begin
                        (let ((_g125859_
                               (if (##values? _g125858_)
                                   (##vector-length _g125858_)
                                   1)))
                          (if (not (##fx= _g125859_ 3))
                              (error "Context expects 3 values" _g125859_)))
                        (let ((_%pre124504%_ (##vector-ref _g125858_ 0))
                              (_%ns124505%_ (##vector-ref _g125858_ 1))
                              (_%pkg124506%_ (##vector-ref _g125858_ 2)))
                          (let* ((_%prelude124512%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124504%_)
                                      (gx#syntax-local-e__0 _%pre124504%_)
                                      (if (gx#core-library-module-path?
                                           _%pre124504%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre124504%_)
                                          (if (gx#stx-string? _%pre124504%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre124504%_
                                               _%path124468%_)
                                              (gx#stx-e _%pre124504%_)))))
                                 (_%path-id124514%_
                                  (gx#core-module-path->namespace
                                   _%path124468%_))
                                 (_%pkg-id124516%_
                                  (if _%pkg124506%_
                                      (##string-append
                                       _%pkg124506%_
                                       '"/"
                                       _%path-id124514%_)
                                      _%path-id124514%_))
                                 (_%module-id124518%_
                                  (##string->symbol _%pkg-id124516%_))
                                 (_%module-ns124523%_
                                  (if (eq? _%ns124505%_ '#!void)
                                      '#f
                                      (let ((_%$e124520%_ _%ns124505%_))
                                        (if _%$e124520%_
                                            _%$e124520%_
                                            _%pkg-id124516%_)))))
                            (values _%prelude124512%_
                                    _%module-id124518%_
                                    _%module-ns124523%_
                                    _%body124472%_)))))))
                 (_%E124485124558%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124476124500%_)
                        (let ((_%e124493124530%_
                               (gx#syntax-e _%e124476124500%_)))
                          (let ((_%hd124494124533%_ (##car _%e124493124530%_))
                                (_%tl124495124535%_ (##cdr _%e124493124530%_)))
                            (if (eq? (gx#stx-e _%hd124494124533%_) 'package:)
                                (if (gx#stx-pair? _%tl124495124535%_)
                                    (let ((_%e124496124538%_
                                           (gx#syntax-e _%tl124495124535%_)))
                                      (let ((_%hd124497124541%_
                                             (##car _%e124496124538%_))
                                            (_%tl124498124543%_
                                             (##cdr _%e124496124538%_)))
                                        (let* ((_%pkg124546%_
                                                _%hd124497124541%_)
                                               (_%rest124548%_
                                                _%tl124498124543%_))
                                          (if '#t
                                              (let ((_%pkg124556%_
                                                     (if (gx#identifier?
                                                          _%pkg124546%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg124546%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124546%_)
                         (gx#stx-false? _%pkg124546%_))
                     (gx#stx-e _%pkg124546%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg124546%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124470%_
                                                 _%rest124548%_
                                                 _%pre124473%_
                                                 _%ns124474%_
                                                 _%pkg124556%_))
                                              (_%E124492124526%_)))))
                                    (_%E124492124526%_))
                                (_%E124492124526%_))))
                        (_%E124492124526%_))))
                 (_%E124478124588%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124476124500%_)
                        (let ((_%e124486124562%_
                               (gx#syntax-e _%e124476124500%_)))
                          (let ((_%hd124487124565%_ (##car _%e124486124562%_))
                                (_%tl124488124567%_ (##cdr _%e124486124562%_)))
                            (if (eq? (gx#stx-e _%hd124487124565%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124488124567%_)
                                    (let ((_%e124489124570%_
                                           (gx#syntax-e _%tl124488124567%_)))
                                      (let ((_%hd124490124573%_
                                             (##car _%e124489124570%_))
                                            (_%tl124491124575%_
                                             (##cdr _%e124489124570%_)))
                                        (let* ((_%ns124578%_
                                                _%hd124490124573%_)
                                               (_%rest124580%_
                                                _%tl124491124575%_))
                                          (if '#t
                                              (let ((_%ns124586%_
                                                     (if (gx#identifier?
                                                          _%ns124578%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns124578%_))
                                                         (if (gx#stx-string?
                                                              _%ns124578%_)
                                                             (gx#stx-e
                                                              _%ns124578%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124578%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns124578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124470%_
                                                 _%rest124580%_
                                                 _%pre124473%_
                                                 _%ns124586%_
                                                 _%pkg124475%_))
                                              (_%E124485124558%_)))))
                                    (_%E124485124558%_))
                                (_%E124485124558%_))))
                        (_%E124485124558%_))))
                 (_%E124477124612%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124476124500%_)
                        (let ((_%e124479124592%_
                               (gx#syntax-e _%e124476124500%_)))
                          (let ((_%hd124480124595%_ (##car _%e124479124592%_))
                                (_%tl124481124597%_ (##cdr _%e124479124592%_)))
                            (if (eq? (gx#stx-e _%hd124480124595%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124481124597%_)
                                    (let ((_%e124482124600%_
                                           (gx#syntax-e _%tl124481124597%_)))
                                      (let ((_%hd124483124603%_
                                             (##car _%e124482124600%_))
                                            (_%tl124484124605%_
                                             (##cdr _%e124482124600%_)))
                                        (let* ((_%prelude124608%_
                                                _%hd124483124603%_)
                                               (_%rest124610%_
                                                _%tl124484124605%_))
                                          (if '#t
                                              (_%lp124470%_
                                               _%rest124610%_
                                               _%prelude124608%_
                                               _%ns124474%_
                                               _%pkg124475%_)
                                              (_%E124478124588%_)))))
                                    (_%E124478124588%_))
                                (_%E124478124588%_))))
                        (_%E124478124588%_)))))
            (_%E124477124612%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124290%_)
        (letrec ((_%default-read-module-body124292%_
                  (lambda (_%inp124460%_)
                    (let _%lp124462%_ ((_%body124464%_ '()))
                      (let ((_%next124466%_ (read-syntax__% _%inp124460%_)))
                        (if (eof-object? _%next124466%_)
                            (reverse _%body124464%_)
                            (_%lp124462%_
                             (cons _%next124466%_ _%body124464%_)))))))
                 (_%read-body124293%_
                  (lambda (_%inp124378%_
                           _%pre124379%_
                           _%ns124380%_
                           _%pkg124381%_
                           _%args124382%_)
                    (let ((_g125860_
                           (if _%pkg124381%_
                               (values _%pre124379%_
                                       _%ns124380%_
                                       _%pkg124381%_)
                               (gx#core-read-module-package
                                _%path124290%_
                                _%pre124379%_
                                _%ns124380%_))))
                      (begin
                        (let ((_g125861_
                               (if (##values? _g125860_)
                                   (##vector-length _g125860_)
                                   1)))
                          (if (not (##fx= _g125861_ 3))
                              (error "Context expects 3 values" _g125861_)))
                        (let ((_%pre124384%_ (##vector-ref _g125860_ 0))
                              (_%ns124385%_ (##vector-ref _g125860_ 1))
                              (_%pkg124386%_ (##vector-ref _g125860_ 2)))
                          (let* ((_%prelude124388%_
                                  (gx#import-module__0 _%pre124384%_))
                                 (_%read-module-body124443%_
                                  (let ((_%$e124434%_
                                         (__find (lambda (_%e124389124391%_)
                                                   (let* ((_%g124393124403%_
                                                           _%e124389124391%_)
                                                          (_%else124395124411%_
                                                           (lambda () '#f))
                                                          (_%K124397124415%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124393124403%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124398124418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124393124403%_
                          '1
                          '#f
                          '#f))
                        (_%e124399124421%_
                         (##unchecked-structure-ref
                          _%g124393124403%_
                          '2
                          '#f
                          '#f))
                        (_%e124400124424%_
                         (##unchecked-structure-ref
                          _%g124393124403%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124400124424%_ '1)
                       (let ((_%e124401124427%_
                              (##unchecked-structure-ref
                               _%g124393124403%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124429124431%_)
                                (eq? _%g124429124431%_ 'read-module-body))
                              _%e124401124427%_)
                             (_%K124397124415%_)
                             (_%else124395124411%_)))
                       (_%else124395124411%_)))
                 (_%else124395124411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124388%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124434%_
                                        ((lambda (_%xport124437%_)
                                           (let ((_%proc124440%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124437%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124440%_)
                                                 _%proc124440%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124290%_
                                                  _%pre124384%_
                                                  _%proc124440%_))))
                                         _%$e124434%_)
                                        _%default-read-module-body124292%_)))
                                 (_%path-id124445%_
                                  (gx#core-module-path->namespace
                                   _%path124290%_))
                                 (_%pkg-id124447%_
                                  (if _%pkg124386%_
                                      (##string-append
                                       _%pkg124386%_
                                       '"/"
                                       _%path-id124445%_)
                                      _%path-id124445%_))
                                 (_%module-id124449%_
                                  (##string->symbol _%pkg-id124447%_))
                                 (_%module-ns124454%_
                                  (let ((_%$e124451%_ _%ns124385%_))
                                    (if _%$e124451%_
                                        _%$e124451%_
                                        _%pkg-id124447%_)))
                                 (_%body124457%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124443%_
                                      _%inp124378%_))
                                   gx#current-module-reader-path
                                   _%path124290%_
                                   gx#current-module-reader-args
                                   _%args124382%_)))
                            (values _%prelude124388%_
                                    _%module-id124449%_
                                    _%module-ns124454%_
                                    _%body124457%_)))))))
                 (_%string-e124294%_
                  (lambda (_%obj124372%_ _%what124373%_)
                    (if (string? _%obj124372%_)
                        _%obj124372%_
                        (if (symbol? _%obj124372%_)
                            (symbol->string _%obj124372%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what124373%_)
                             _%path124290%_
                             _%obj124372%_)))))
                 (_%read-lang-args124295%_
                  (lambda (_%inp124327%_ _%args124328%_)
                    (let* ((_%args124329124337%_ _%args124328%_)
                           (_%else124331124345%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124290%_)))
                           (_%K124333124360%_
                            (lambda (_%args124348%_ _%prelude124349%_)
                              (let* ((_%pkg124351%_
                                      (pgetq__0 'package: _%args124348%_))
                                     (_%pkg124353%_
                                      (if _%pkg124351%_
                                          (_%string-e124294%_
                                           _%pkg124351%_
                                           '"package")
                                          '#f))
                                     (_%ns124355%_
                                      (pgetq__0 'namespace: _%args124348%_))
                                     (_%ns124357%_
                                      (if _%ns124355%_
                                          (_%string-e124294%_
                                           _%ns124355%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124293%_
                                 _%inp124327%_
                                 _%prelude124349%_
                                 _%ns124357%_
                                 _%pkg124353%_
                                 _%args124348%_)))))
                      (if (##pair? _%args124329124337%_)
                          (let ((_%hd124334124363%_
                                 (##car _%args124329124337%_))
                                (_%tl124335124365%_
                                 (##cdr _%args124329124337%_)))
                            (let* ((_%prelude124368%_ _%hd124334124363%_)
                                   (_%args124370%_ _%tl124335124365%_))
                              (_%K124333124360%_
                               _%args124370%_
                               _%prelude124368%_)))
                          (_%else124331124345%_)))))
                 (_%read-lang124296%_
                  (lambda (_%inp124301%_)
                    (let* ((_%head124303%_ (read-line _%inp124301%_))
                           (_%$e124305%_
                            (string-index__0 _%head124303%_ '#\space)))
                      (if _%$e124305%_
                          ((lambda (_%ix124308%_)
                             (let ((_%lang124310%_
                                    (substring
                                     _%head124303%_
                                     '0
                                     _%ix124308%_)))
                               (if (equal? _%lang124310%_ '"#lang")
                                   (let* ((_%rest124312%_
                                           (substring
                                            _%head124303%_
                                            (##fx+ _%ix124308%_ '1)
                                            (string-length _%head124303%_)))
                                          (_%args124323%_
                                           (__with-catch
                                            (lambda (_%g124313124315%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124290%_
                                               _%g124313124315%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124312%_
                                               (lambda (_%g124318124320%_)
                                                 (read-all
                                                  _%g124318124320%_
                                                  read)))))))
                                     (_%read-lang-args124295%_
                                      _%inp124301%_
                                      _%args124323%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124290%_))))
                           _%$e124305%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path124290%_)))))
                 (_%read-e124297%_
                  (lambda (_%inp124299%_)
                    (if (eq? (peek-char _%inp124299%_) '#\#)
                        (_%read-lang124296%_ _%inp124299%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124290%_)))))
          (gx#call-with-input-source-file _%path124290%_ _%read-e124297%_))))
    (define gx#core-read-module-package
      (lambda (_%path124238%_ _%pre124239%_ _%ns124240%_)
        (letrec ((_%string-e124242%_
                  (lambda (_%e124285%_)
                    (if (symbol? _%e124285%_)
                        (symbol->string _%e124285%_)
                        (if (string? _%e124285%_)
                            _%e124285%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e124285%_))))))
          (let _%lp124244%_ ((_%dir124246%_ (path-directory _%path124238%_))
                             (_%pkg-path124247%_ '()))
            (let ((_%gerbil.pkg124249%_
                   (path-expand '"gerbil.pkg" _%dir124246%_)))
              (if (##file-exists? _%gerbil.pkg124249%_)
                  (let ((_%plist124251%_
                         (gx#core-library-package-plist__% _%dir124246%_ '#t)))
                    (if (null? _%plist124251%_)
                        (let ((_%pkg124254%_
                               (if (not (null? _%pkg-path124247%_))
                                   (string-join _%pkg-path124247%_ '"/")
                                   '#f)))
                          (values _%pre124239%_ _%ns124240%_ _%pkg124254%_))
                        (if (list? _%plist124251%_)
                            (let* ((_%root124257%_
                                    (pgetq__0 'package: _%plist124251%_))
                                   (_%pkg124261%_
                                    (let ((_%pkg-path124259%_
                                           (if _%root124257%_
                                               (cons (_%string-e124242%_
                                                      _%root124257%_)
                                                     _%pkg-path124247%_)
                                               _%pkg-path124247%_)))
                                      (if (not (null? _%pkg-path124259%_))
                                          (string-join _%pkg-path124259%_ '"/")
                                          '#f)))
                                   (_%ns124268%_
                                    (let ((_%ns124266%_
                                           (let ((_%$e124263%_ _%ns124240%_))
                                             (if _%$e124263%_
                                                 _%$e124263%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist124251%_)))))
                                      (if _%ns124266%_
                                          (_%string-e124242%_ _%ns124266%_)
                                          '#f)))
                                   (_%pre124273%_
                                    (let ((_%$e124270%_ _%pre124239%_))
                                      (if _%$e124270%_
                                          _%$e124270%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist124251%_)))))
                              (values _%pre124273%_
                                      _%ns124268%_
                                      _%pkg124261%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist124251%_))))
                  (let ((_%dir*124277%_
                         (path-strip-trailing-directory-separator
                          _%dir124246%_)))
                    (if (or (__string-empty? _%dir*124277%_)
                            (equal? _%dir124246%_ _%dir*124277%_))
                        (values _%pre124239%_ _%ns124240%_ '#f)
                        (let ((_%xpath124282%_
                               (path-strip-directory _%dir*124277%_))
                              (_%xdir124283%_ (path-directory _%dir*124277%_)))
                          (_%lp124244%_
                           _%xdir124283%_
                           (cons _%xpath124282%_ _%pkg-path124247%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124236%_)
        (path-strip-extension (path-strip-directory _%path124236%_))))
    (define gx#core-module-path->id
      (lambda (_%path124234%_)
        (##string->symbol (gx#core-module-path->namespace _%path124234%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124213%_ _%rel124214%_)
        (let* ((_%path124216%_ (gx#stx-e _%stx-path124213%_))
               (_%path124218%_
                (if (__string-empty? (path-extension _%path124216%_))
                    (##string-append _%path124216%_ '".ss")
                    _%path124216%_)))
          (gx#core-resolve-path__%
           _%path124218%_
           (let ((_%$e124221%_ (gx#stx-source _%stx-path124213%_)))
             (if _%$e124221%_ _%$e124221%_ _%rel124214%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124227%_)
        (let ((_%rel124229%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124227%_ _%rel124229%_))))
    (define gx#core-resolve-module-path
      (lambda _g125863_
        (let ((_g125862_ (##length _g125863_)))
          (cond ((##fx= _g125862_ 1)
                 (apply gx#core-resolve-module-path__0 _g125863_))
                ((##fx= _g125862_ 2)
                 (apply gx#core-resolve-module-path__% _g125863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125863_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath124098%_)
        (let* ((_%spath124100%_ (symbol->string (gx#stx-e _%libpath124098%_)))
               (_%spath124102%_
                (substring
                 _%spath124100%_
                 '1
                 (##string-length _%spath124100%_)))
               (_%ext124104%_ (path-extension _%spath124102%_))
               (_%ssi124106%_
                (if (__string-empty? _%ext124104%_)
                    (##string-append _%spath124102%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath124102%_)
                     '".ssi")))
               (_%srcs124110%_
                (if (__string-empty? _%ext124104%_)
                    (##map (lambda (_%ext124108%_)
                             (string-append _%spath124102%_ _%ext124108%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath124102%_ '()))))
          (let _%lp124113%_ ((_%rest124115%_ (load-path)))
            (let* ((_%rest124116124125%_ _%rest124115%_)
                   (_%E124119124129%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest124116124125%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K124121124200%_
                     (lambda (_%rest124140%_ _%dir124141%_)
                       (letrec ((_%resolve124143%_
                                 (lambda (_%ssi124156%_ _%srcs124157%_)
                                   (let ((_%compiled-path124159%_
                                          (path-expand
                                           _%ssi124156%_
                                           _%dir124141%_)))
                                     (if (##file-exists?
                                          _%compiled-path124159%_)
                                         (path-normalize
                                          _%compiled-path124159%_)
                                         (let _%lpr124161%_ ((_%rest-src124163%_
                                                              _%srcs124157%_))
                                           (let* ((_%rest-src124164124172%_
                                                   _%rest-src124163%_)
                                                  (_%else124166124180%_
                                                   (lambda ()
                                                     (_%lp124113%_
                                                      _%rest124140%_)))
                                                  (_%K124168124188%_
                                                   (lambda (_%rest-src124183%_
                                                            _%src124184%_)
                                                     (let ((_%src-path124186%_
                                                            (path-expand
                                                             _%src124184%_
                                                             _%dir124141%_)))
                                                       (if (##file-exists?
                                                            _%src-path124186%_)
                                                           (path-normalize
                                                            _%src-path124186%_)
                                                           (_%lpr124161%_
                                                            _%rest-src124183%_))))))
                                             (if (##pair? _%rest-src124164124172%_)
                                                 (let ((_%hd124169124191%_
                                                        (##car _%rest-src124164124172%_))
                                                       (_%tl124170124193%_
                                                        (##cdr _%rest-src124164124172%_)))
                                                   (let* ((_%src124196%_
                                                           _%hd124169124191%_)
                                                          (_%rest-src124198%_
                                                           _%tl124170124193%_))
                                                     (_%K124168124188%_
                                                      _%rest-src124198%_
                                                      _%src124196%_)))
                                                 (_%else124166124180%_)))))))))
                         (let ((_%$e124145%_
                                (gx#core-library-package-path-prefix
                                 _%dir124141%_)))
                           (if _%$e124145%_
                               ((lambda (_%prefix124148%_)
                                  (if (string-prefix?
                                       _%prefix124148%_
                                       _%spath124102%_)
                                      (let ((_%ssi124152%_
                                             (substring
                                              _%ssi124106%_
                                              (string-length _%prefix124148%_)
                                              (##string-length _%ssi124106%_)))
                                            (_%srcs124153%_
                                             (##map (lambda (_%src124150%_)
                                                      (substring
                                                       _%src124150%_
                                                       (string-length
                                                        _%prefix124148%_)
                                                       (string-length
                                                        _%src124150%_)))
                                                    _%srcs124110%_)))
                                        (_%resolve124143%_
                                         _%ssi124152%_
                                         _%srcs124153%_))
                                      (_%lp124113%_ _%rest124140%_)))
                                _%$e124145%_)
                               (_%resolve124143%_
                                _%ssi124106%_
                                _%srcs124110%_))))))
                    (_%K124120124134%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath124098%_))))
                (let ((_%try-match124118124137%_
                       (lambda ()
                         (if (##null? _%rest124116124125%_)
                             (_%K124120124134%_)
                             (_%E124119124129%_)))))
                  (if (##pair? _%rest124116124125%_)
                      (let ((_%tl124123124205%_ (##cdr _%rest124116124125%_))
                            (_%hd124122124203%_ (##car _%rest124116124125%_)))
                        (let ((_%dir124208%_ _%hd124122124203%_)
                              (_%rest124210%_ _%tl124123124205%_))
                          (_%K124121124200%_ _%rest124210%_ _%dir124208%_)))
                      (_%try-match124118124137%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath124066%_)
        (letrec ((_%resolve124068%_
                  (lambda (_%path124089%_ _%base124090%_)
                    (let ((_%$e124092%_
                           (string-rindex__0 _%base124090%_ '#\/)))
                      (if _%$e124092%_
                          ((lambda (_%idx124095%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base124090%_ '0 _%idx124095%_)
                                '"/"
                                _%path124089%_))))
                           _%$e124092%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path124089%_))))))))
          (let ((_%spath124070%_ (symbol->string (gx#stx-e _%modpath124066%_)))
                (_%mod124071%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod124071%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath124066%_))
            (let ((_%mpath124073%_
                   (symbol->string
                    (##structure-ref
                     _%mod124071%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp124075%_ ((_%spath124077%_ _%spath124070%_)
                                 (_%mpath124078%_ _%mpath124073%_))
                (if (string-prefix? '"../" _%spath124077%_)
                    (let ((_%$e124081%_
                           (string-rindex__0 _%mpath124078%_ '#\/)))
                      (if _%$e124081%_
                          ((lambda (_%idx124084%_)
                             (_%lp124075%_
                              (substring
                               _%spath124077%_
                               '3
                               (string-length _%spath124077%_))
                              (substring _%mpath124078%_ '0 _%idx124084%_)))
                           _%$e124081%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath124066%_)))
                    (if (string-prefix? '"./" _%spath124077%_)
                        (_%lp124075%_
                         (substring
                          _%spath124077%_
                          '2
                          (string-length _%spath124077%_))
                         _%mpath124078%_)
                        (_%resolve124068%_
                         _%spath124077%_
                         _%mpath124078%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir124058%_)
        (let ((_%$e124060%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir124058%_))))
          (if _%$e124060%_
              ((lambda (_%pkg124063%_)
                 (##string-append (symbol->string _%pkg124063%_) '"/"))
               _%$e124060%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir124028%_ _%exists?124029%_)
        (let ((_%$e124031%_ (hash-get gx#__module-pkg-cache _%dir124028%_)))
          (if _%$e124031%_
              (values _%$e124031%_)
              (let* ((_%gerbil.pkg124035%_
                      (path-expand '"gerbil.pkg" _%dir124028%_))
                     (_%plist124045%_
                      (if (or _%exists?124029%_
                              (##file-exists? _%gerbil.pkg124035%_))
                          (let ((_%e124040%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg124035%_
                                  read)))
                            (if (eof-object? _%e124040%_)
                                '()
                                (if (list? _%e124040%_)
                                    _%e124040%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg124035%_
                                     _%e124040%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir124028%_ _%plist124045%_)
                _%plist124045%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir124051%_)
        (let ((_%exists?124053%_ '#f))
          (gx#core-library-package-plist__% _%dir124051%_ _%exists?124053%_))))
    (define gx#core-library-package-plist
      (lambda _g125865_
        (let ((_g125864_ (##length _g125865_)))
          (cond ((##fx= _g125864_ 1)
                 (apply gx#core-library-package-plist__0 _g125865_))
                ((##fx= _g125864_ 2)
                 (apply gx#core-library-package-plist__% _g125865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125865_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx124025%_)
        (gx#core-special-module-path? _%stx124025%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx124023%_)
        (gx#core-special-module-path? _%stx124023%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx124018%_ _%char124019%_)
        (if (gx#identifier? _%stx124018%_)
            (if (interned-symbol? (gx#stx-e _%stx124018%_))
                (let ((_%str124021%_
                       (symbol->string (gx#stx-e _%stx124018%_))))
                  (if (##fx> (##string-length _%str124021%_) '1)
                      (eq? (string-ref _%str124021%_ '0) _%char124019%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx124012%_)
        (gx#core-bound-identifier?__%
         _%stx124012%_
         (lambda (_%g124013124015%_)
           (gx#expander-binding?__% _%g124013124015%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx124006%_)
        (gx#core-bound-identifier?__%
         _%stx124006%_
         (lambda (_%g124007124009%_)
           (gx#expander-binding?__% _%g124007124009%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123993%_)
        (letrec ((_%module-prelude?123995%_
                  (lambda (_%e124001%_)
                    (let ((_%$e124003%_
                           (##structure-instance-of?
                            _%e124001%_
                            'gx#module-context::t)))
                      (if _%$e124003%_
                          _%$e124003%_
                          (##structure-instance-of?
                           _%e124001%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123993%_
           (lambda (_%g123996123998%_)
             (gx#expander-binding?__%
              _%g123996123998%_
              _%module-prelude?123995%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123923%_ _%ctx123924%_ _%force-weak?123925%_)
        (let* ((_%in123926123935%_ _%in123923%_)
               (_%E123928123939%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123926123935%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123929123952%_
                (lambda (_%weak?123942%_
                         _%phi123943%_
                         _%key123944%_
                         _%source123945%_)
                  (gx#core-bind!__%
                   _%key123944%_
                   (let ((_%e123947%_
                          (gx#core-resolve-module-export _%source123945%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123947%_ '1 '#f '#f)
                      _%key123944%_
                      _%phi123943%_
                      _%e123947%_
                      (##unchecked-structure-ref _%source123945%_ '1 '#f '#f)
                      (let ((_%$e123949%_ _%force-weak?123925%_))
                        (if _%$e123949%_ _%$e123949%_ _%weak?123942%_))))
                   gx#core-context-rebind?
                   _%phi123943%_
                   _%ctx123924%_))))
          (if (##structure-direct-instance-of?
               _%in123926123935%_
               'gx#module-import::t)
              (let* ((_%e123930123955%_
                      (##unchecked-structure-ref
                       _%in123926123935%_
                       '1
                       '#f
                       '#f))
                     (_%source123958%_ _%e123930123955%_)
                     (_%e123931123960%_
                      (##unchecked-structure-ref
                       _%in123926123935%_
                       '2
                       '#f
                       '#f))
                     (_%key123963%_ _%e123931123960%_)
                     (_%e123932123965%_
                      (##unchecked-structure-ref
                       _%in123926123935%_
                       '3
                       '#f
                       '#f))
                     (_%phi123968%_ _%e123932123965%_)
                     (_%e123933123970%_
                      (##unchecked-structure-ref
                       _%in123926123935%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123973%_ _%e123933123970%_))
                (_%K123929123952%_
                 _%weak?123973%_
                 _%phi123968%_
                 _%key123963%_
                 _%source123958%_))
              (_%E123928123939%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123978%_)
        (let* ((_%ctx123980%_ (gx#current-expander-context))
               (_%force-weak?123982%_ '#f))
          (gx#core-bind-import!__%
           _%in123978%_
           _%ctx123980%_
           _%force-weak?123982%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123984%_ _%ctx123985%_)
        (let ((_%force-weak?123987%_ '#f))
          (gx#core-bind-import!__%
           _%in123984%_
           _%ctx123985%_
           _%force-weak?123987%_))))
    (define gx#core-bind-import!
      (lambda _g125867_
        (let ((_g125866_ (##length _g125867_)))
          (cond ((##fx= _g125866_ 1) (apply gx#core-bind-import!__0 _g125867_))
                ((##fx= _g125866_ 2) (apply gx#core-bind-import!__1 _g125867_))
                ((##fx= _g125866_ 3) (apply gx#core-bind-import!__% _g125867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125867_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123909%_ _%ctx123910%_)
        (gx#core-bind-import!__% _%in123909%_ _%ctx123910%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123915%_)
        (let ((_%ctx123917%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123915%_ _%ctx123917%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125869_
        (let ((_g125868_ (##length _g125869_)))
          (cond ((##fx= _g125868_ 1)
                 (apply gx#core-bind-weak-import!__0 _g125869_))
                ((##fx= _g125868_ 2)
                 (apply gx#core-bind-weak-import!__% _g125869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125869_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123800%_)
        (letrec ((_%subst123802%_
                  (lambda (_%key123848%_)
                    (let* ((_%key123849123857%_ _%key123848%_)
                           (_%else123851123865%_ (lambda () _%key123848%_))
                           (_%K123853123896%_
                            (lambda (_%mark123868%_ _%id123869%_)
                              (let* ((_%mark123870123876%_ _%mark123868%_)
                                     (_%E123872123880%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123870123876%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123873123888%_
                                      (lambda (_%subst123883%_)
                                        (let ((_%$e123885%_
                                               (if _%subst123883%_
                                                   (hash-get
                                                    _%subst123883%_
                                                    _%id123869%_)
                                                   '#f)))
                                          (if _%$e123885%_
                                              _%$e123885%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123848%_))))))
                                (if (##structure-instance-of?
                                     _%mark123870123876%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123874123891%_
                                            (##unchecked-structure-ref
                                             _%mark123870123876%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123894%_ _%e123874123891%_))
                                      (_%K123873123888%_ _%subst123894%_))
                                    (_%E123872123880%_))))))
                      (if (##pair? _%key123849123857%_)
                          (let ((_%hd123854123899%_
                                 (##car _%key123849123857%_))
                                (_%tl123855123901%_
                                 (##cdr _%key123849123857%_)))
                            (let* ((_%id123904%_ _%hd123854123899%_)
                                   (_%mark123906%_ _%tl123855123901%_))
                              (_%K123853123896%_ _%mark123906%_ _%id123904%_)))
                          (_%else123851123865%_))))))
          (let* ((_%out123803123813%_ _%out123800%_)
                 (_%E123805123817%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123803123813%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123806123824%_
                  (lambda (_%phi123820%_ _%key123821%_ _%ctx123822%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123822%_ _%phi123820%_)
                     (_%subst123802%_ _%key123821%_)))))
            (if (##structure-direct-instance-of?
                 _%out123803123813%_
                 'gx#module-export::t)
                (let* ((_%e123807123827%_
                        (##unchecked-structure-ref
                         _%out123803123813%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123830%_ _%e123807123827%_)
                       (_%e123808123832%_
                        (##unchecked-structure-ref
                         _%out123803123813%_
                         '2
                         '#f
                         '#f))
                       (_%key123835%_ _%e123808123832%_)
                       (_%e123809123837%_
                        (##unchecked-structure-ref
                         _%out123803123813%_
                         '3
                         '#f
                         '#f))
                       (_%phi123840%_ _%e123809123837%_)
                       (_%e123810123842%_
                        (##unchecked-structure-ref
                         _%out123803123813%_
                         '4
                         '#f
                         '#f))
                       (_%e123811123845%_
                        (##unchecked-structure-ref
                         _%out123803123813%_
                         '5
                         '#f
                         '#f)))
                  (_%K123806123824%_
                   _%phi123840%_
                   _%key123835%_
                   _%ctx123830%_))
                (_%E123805123817%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123725%_ _%rename123726%_ _%dphi123727%_)
        (let* ((_%out123728123738%_ _%out123725%_)
               (_%E123730123742%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123728123738%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123731123754%_
                (lambda (_%weak?123745%_
                         _%name123746%_
                         _%phi123747%_
                         _%key123748%_
                         _%ctx123749%_)
                  (##structure
                   gx#module-import::t
                   _%out123725%_
                   (let ((_%$e123751%_ _%rename123726%_))
                     (if _%$e123751%_ _%$e123751%_ _%name123746%_))
                   (fx+ _%phi123747%_ _%dphi123727%_)
                   _%weak?123745%_))))
          (if (##structure-direct-instance-of?
               _%out123728123738%_
               'gx#module-export::t)
              (let* ((_%e123732123757%_
                      (##unchecked-structure-ref
                       _%out123728123738%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123760%_ _%e123732123757%_)
                     (_%e123733123762%_
                      (##unchecked-structure-ref
                       _%out123728123738%_
                       '2
                       '#f
                       '#f))
                     (_%key123765%_ _%e123733123762%_)
                     (_%e123734123767%_
                      (##unchecked-structure-ref
                       _%out123728123738%_
                       '3
                       '#f
                       '#f))
                     (_%phi123770%_ _%e123734123767%_)
                     (_%e123735123772%_
                      (##unchecked-structure-ref
                       _%out123728123738%_
                       '4
                       '#f
                       '#f))
                     (_%name123775%_ _%e123735123772%_)
                     (_%e123736123777%_
                      (##unchecked-structure-ref
                       _%out123728123738%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123780%_ _%e123736123777%_))
                (_%K123731123754%_
                 _%weak?123780%_
                 _%name123775%_
                 _%phi123770%_
                 _%key123765%_
                 _%ctx123760%_))
              (_%E123730123742%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123785%_)
        (let* ((_%rename123787%_ '#f) (_%dphi123789%_ '0))
          (gx#core-module-export->import__%
           _%out123785%_
           _%rename123787%_
           _%dphi123789%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123791%_ _%rename123792%_)
        (let ((_%dphi123794%_ '0))
          (gx#core-module-export->import__%
           _%out123791%_
           _%rename123792%_
           _%dphi123794%_))))
    (define gx#core-module-export->import
      (lambda _g125871_
        (let ((_g125870_ (##length _g125871_)))
          (cond ((##fx= _g125870_ 1)
                 (apply gx#core-module-export->import__0 _g125871_))
                ((##fx= _g125870_ 2)
                 (apply gx#core-module-export->import__1 _g125871_))
                ((##fx= _g125870_ 3)
                 (apply gx#core-module-export->import__% _g125871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125871_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123624%_)
        (letrec ((_%make-context123626%_
                  (lambda (_%id123703%_)
                    (let* ((_%super123705%_ (gx#current-expander-context))
                           (_%bind-id123707%_ (gx#stx-e _%id123703%_))
                           (_%mod-id123709%_
                            (if (##structure-instance-of?
                                 _%super123705%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123705%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123707%_)
                                _%bind-id123707%_))
                           (_%ns123711%_ (symbol->string _%mod-id123709%_))
                           (_%path123721%_
                            (if (##structure-instance-of?
                                 _%super123705%_
                                 'gx#module-context::t)
                                (let ((_%path123713%_
                                       (##unchecked-structure-ref
                                        _%super123705%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123713%_)
                                          (null? _%path123713%_))
                                      (cons _%bind-id123707%_ _%path123713%_)
                                      (if (not _%path123713%_)
                                          _%bind-id123707%_
                                          (cons _%bind-id123707%_
                                                (cons _%path123713%_ '())))))
                                _%bind-id123707%_))
                           (__obj125847
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
                       __obj125847
                       _%mod-id123709%_
                       _%super123705%_
                       _%ns123711%_
                       _%path123721%_)
                      __obj125847)))
                 (_%valid-module-id?123627%_
                  (lambda (_%id123678%_)
                    (let* ((_%str123680%_ (symbol->string _%id123678%_))
                           (_%len123682%_ (##string-length _%str123680%_)))
                      (if (##fx>= _%len123682%_ '1)
                          (let _%loop123685%_ ((_%index123687%_
                                                (##fx- (##string-length
                                                        _%str123680%_)
                                                       '1)))
                            (if (##fx>= _%index123687%_ '0)
                                (let ((_%c123689%_
                                       (string-ref
                                        _%str123680%_
                                        _%index123687%_)))
                                  (if (or (and (##char>=? _%c123689%_ '#\a)
                                               (##char<=? _%c123689%_ '#\z))
                                          (and (##char>=? _%c123689%_ '#\A)
                                               (##char<=? _%c123689%_ '#\Z))
                                          (and (##char>=? _%c123689%_ '#\0)
                                               (##char<=? _%c123689%_ '#\9))
                                          (##char=? _%c123689%_ '#\_)
                                          (##char=? _%c123689%_ '#\-))
                                      (_%loop123685%_
                                       (##fx- _%index123687%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123628123638%_ _%stx123624%_)
                 (_%E123630123642%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123628123638%_)))
                 (_%E123629123674%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123628123638%_)
                        (let ((_%e123631123646%_
                               (gx#syntax-e _%e123628123638%_)))
                          (let ((_%hd123632123649%_ (##car _%e123631123646%_))
                                (_%tl123633123651%_ (##cdr _%e123631123646%_)))
                            (if (gx#stx-pair? _%tl123633123651%_)
                                (let ((_%e123634123654%_
                                       (gx#syntax-e _%tl123633123651%_)))
                                  (let ((_%hd123635123657%_
                                         (##car _%e123634123654%_))
                                        (_%tl123636123659%_
                                         (##cdr _%e123634123654%_)))
                                    (let* ((_%id123662%_ _%hd123635123657%_)
                                           (_%body123664%_ _%tl123636123659%_))
                                      (if (and (gx#identifier? _%id123662%_)
                                               (gx#stx-list? _%body123664%_))
                                          (if (_%valid-module-id?123627%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123666%_
                                                      (_%make-context123626%_
                                                       _%id123662%_))
                                                     (_%body123668%_
                                                      (gx#core-expand-module-begin
                                                       _%body123664%_
                                                       _%ctx123666%_))
                                                     (_%body123670%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123668%_)
                                                       (gx#stx-source
                                                        _%stx123624%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123666%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123670%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123666%_
                                                 _%body123670%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123662%_
                                                 _%ctx123666%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123662%_)
                                                  _%body123670%_)
                                                 (gx#stx-source
                                                  _%stx123624%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123624%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123630123642%_)))))
                                (_%E123630123642%_))))
                        (_%E123630123642%_)))))
            (_%E123629123674%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123590%_ _%ctx123591%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123594%_
                   (gx#core-expand-head (cons '%%begin-module _%body123590%_)))
                  (_%e123595123602%_ _%stx123594%_)
                  (_%E123597123606%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123594%_)))
                  (_%E123596123620%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123595123602%_)
                         (let ((_%e123598123610%_
                                (gx#syntax-e _%e123595123602%_)))
                           (let ((_%hd123599123613%_ (##car _%e123598123610%_))
                                 (_%tl123600123615%_
                                  (##cdr _%e123598123610%_)))
                             (if (and (gx#identifier? _%hd123599123613%_)
                                      (gx#core-identifier=?
                                       _%hd123599123613%_
                                       '%#begin-module))
                                 (let ((_%body123618%_ _%tl123600123615%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123594%_)
                                           _%body123618%_
                                           (gx#core-expand-module-body
                                            _%body123618%_))
                                       (_%E123597123606%_)))
                                 (_%E123597123606%_))))
                         (_%E123597123606%_)))))
             (_%E123596123620%_)))
         gx#current-expander-context
         _%ctx123591%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123386%_)
        (letrec ((_%expand-special123388%_
                  (lambda (_%hd123517%_ _%K123518%_ _%rest123519%_ _%r123520%_)
                    (let* ((_%e123521123538%_ _%hd123517%_)
                           (_%E123533123542%_
                            (lambda ()
                              (_%K123518%_
                               _%rest123519%_
                               (cons (gx#core-expand-top _%hd123517%_)
                                     _%r123520%_))))
                           (_%E123523123554%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123521123538%_)
                                  (let ((_%e123534123546%_
                                         (gx#syntax-e _%e123521123538%_)))
                                    (let ((_%hd123535123549%_
                                           (##car _%e123534123546%_))
                                          (_%tl123536123551%_
                                           (##cdr _%e123534123546%_)))
                                      (if (and (gx#identifier?
                                                _%hd123535123549%_)
                                               (gx#core-identifier=?
                                                _%hd123535123549%_
                                                '%#export))
                                          (if '#t
                                              (_%K123518%_
                                               _%rest123519%_
                                               (cons _%hd123517%_ _%r123520%_))
                                              (_%E123533123542%_))
                                          (_%E123533123542%_))))
                                  (_%E123533123542%_))))
                           (_%E123522123586%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123521123538%_)
                                  (let ((_%e123524123558%_
                                         (gx#syntax-e _%e123521123538%_)))
                                    (let ((_%hd123525123561%_
                                           (##car _%e123524123558%_))
                                          (_%tl123526123563%_
                                           (##cdr _%e123524123558%_)))
                                      (if (and (gx#identifier?
                                                _%hd123525123561%_)
                                               (gx#core-identifier=?
                                                _%hd123525123561%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123526123563%_)
                                              (let ((_%e123527123566%_
                                                     (gx#syntax-e
                                                      _%tl123526123563%_)))
                                                (let ((_%hd123528123569%_
                                                       (##car _%e123527123566%_))
                                                      (_%tl123529123571%_
                                                       (##cdr _%e123527123566%_)))
                                                  (let ((_%hd-bind123574%_
                                                         _%hd123528123569%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123529123571%_)
                                                        (let ((_%e123530123576%_
                                                               (gx#syntax-e
                                                                _%tl123529123571%_)))
                                                          (let ((_%hd123531123579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123530123576%_))
                        (_%tl123532123581%_ (##cdr _%e123530123576%_)))
                    (let ((_%expr123584%_ _%hd123531123579%_))
                      (if (gx#stx-null? _%tl123532123581%_)
                          (if (gx#core-bind-values? _%hd-bind123574%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123574%_)
                                (_%K123518%_
                                 _%rest123519%_
                                 (cons _%hd123517%_ _%r123520%_)))
                              (_%E123523123554%_))
                          (_%E123523123554%_)))))
                (_%E123523123554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123523123554%_))
                                          (_%E123523123554%_))))
                                  (_%E123523123554%_)))))
                      (_%E123522123586%_))))
                 (_%expand-body123389%_
                  (lambda (_%rbody123391%_)
                    (let _%lp123393%_ ((_%rest123395%_ _%rbody123391%_)
                                       (_%body123396%_ '()))
                      (let* ((_%rest123397123405%_ _%rest123395%_)
                             (_%else123399123413%_ (lambda () _%body123396%_))
                             (_%K123401123505%_
                              (lambda (_%rest123416%_ _%hd123417%_)
                                (let* ((_%e123418123439%_ _%hd123417%_)
                                       (_%E123434123443%_
                                        (lambda ()
                                          (_%lp123393%_
                                           _%rest123416%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123417%_)
                                                 _%body123396%_))))
                                       (_%E123430123457%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123418123439%_)
                                              (let ((_%e123435123447%_
                                                     (gx#syntax-e
                                                      _%e123418123439%_)))
                                                (let ((_%hd123436123450%_
                                                       (##car _%e123435123447%_))
                                                      (_%tl123437123452%_
                                                       (##cdr _%e123435123447%_)))
                                                  (let ((_%form123455%_
                                                         _%hd123436123450%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123455%_
                                                         gx#special-form-binding?)
                                                        (_%lp123393%_
                                                         _%rest123416%_
                                                         (cons _%hd123417%_
                                                               _%body123396%_))
                                                        (_%E123434123443%_)))))
                                              (_%E123434123443%_))))
                                       (_%E123420123469%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123418123439%_)
                                              (let ((_%e123431123461%_
                                                     (gx#syntax-e
                                                      _%e123418123439%_)))
                                                (let ((_%hd123432123464%_
                                                       (##car _%e123431123461%_))
                                                      (_%tl123433123466%_
                                                       (##cdr _%e123431123461%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123432123464%_)
                                                           (gx#core-identifier=?
                                                            _%hd123432123464%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123393%_
                                                           _%rest123416%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123417%_)
                         _%body123396%_))
                  (_%E123430123457%_))
              (_%E123430123457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123430123457%_))))
                                       (_%E123419123501%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123418123439%_)
                                              (let ((_%e123421123473%_
                                                     (gx#syntax-e
                                                      _%e123418123439%_)))
                                                (let ((_%hd123422123476%_
                                                       (##car _%e123421123473%_))
                                                      (_%tl123423123478%_
                                                       (##cdr _%e123421123473%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123422123476%_)
                                                           (gx#core-identifier=?
                                                            _%hd123422123476%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123423123478%_)
                                                          (let ((_%e123424123481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123423123478%_)))
                    (let ((_%hd123425123484%_ (##car _%e123424123481%_))
                          (_%tl123426123486%_ (##cdr _%e123424123481%_)))
                      (let ((_%hd-bind123489%_ _%hd123425123484%_))
                        (if (gx#stx-pair? _%tl123426123486%_)
                            (let ((_%e123427123491%_
                                   (gx#syntax-e _%tl123426123486%_)))
                              (let ((_%hd123428123494%_
                                     (##car _%e123427123491%_))
                                    (_%tl123429123496%_
                                     (##cdr _%e123427123491%_)))
                                (let ((_%expr123499%_ _%hd123428123494%_))
                                  (if (gx#stx-null? _%tl123429123496%_)
                                      (if '#t
                                          (_%lp123393%_
                                           _%rest123416%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123489%_)
                                                   (gx#core-expand-expression
                                                    _%expr123499%_))
                                                  (gx#stx-source _%hd123417%_))
                                                 _%body123396%_))
                                          (_%E123420123469%_))
                                      (_%E123420123469%_)))))
                            (_%E123420123469%_)))))
                  (_%E123420123469%_))
              (_%E123420123469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123420123469%_)))))
                                  (_%E123419123501%_)))))
                        (if (##pair? _%rest123397123405%_)
                            (let ((_%hd123402123508%_
                                   (##car _%rest123397123405%_))
                                  (_%tl123403123510%_
                                   (##cdr _%rest123397123405%_)))
                              (let* ((_%hd123513%_ _%hd123402123508%_)
                                     (_%rest123515%_ _%tl123403123510%_))
                                (_%K123401123505%_
                                 _%rest123515%_
                                 _%hd123513%_)))
                            (_%else123399123413%_)))))))
          (_%expand-body123389%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123386%_)
            _%expand-special123388%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123227%_
               _%expanded?123228%_
               _%method123229%_
               _%current-phi123230%_
               _%expand1123231%_)
        (letrec ((_%K123233%_
                  (lambda (_%rest123353%_ _%r123354%_)
                    (let* ((_%e123355123362%_ _%rest123353%_)
                           (_%E123357123366%_ (lambda () _%r123354%_))
                           (_%E123356123382%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123355123362%_)
                                  (let ((_%e123358123370%_
                                         (gx#syntax-e _%e123355123362%_)))
                                    (let ((_%hd123359123373%_
                                           (##car _%e123358123370%_))
                                          (_%tl123360123375%_
                                           (##cdr _%e123358123370%_)))
                                      (let* ((_%hd123378%_ _%hd123359123373%_)
                                             (_%rest123380%_
                                              _%tl123360123375%_))
                                        (if '#t
                                            (_%step123234%_
                                             _%hd123378%_
                                             _%rest123380%_
                                             _%r123354%_)
                                            (_%E123357123366%_)))))
                                  (_%E123357123366%_)))))
                      (_%E123356123382%_))))
                 (_%step123234%_
                  (lambda (_%hd123267%_ _%rest123268%_ _%r123269%_)
                    (let* ((_%e123270123288%_ _%hd123267%_)
                           (_%E123283123292%_
                            (lambda ()
                              (if (_%expanded?123228%_ (gx#stx-e _%hd123267%_))
                                  (_%K123233%_
                                   _%rest123268%_
                                   (cons (gx#stx-e _%hd123267%_) _%r123269%_))
                                  (_%expand1123231%_
                                   _%hd123267%_
                                   _%K123233%_
                                   _%rest123268%_
                                   _%r123269%_))))
                           (_%E123279123308%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123288%_)
                                  (let ((_%e123284123296%_
                                         (gx#syntax-e _%e123270123288%_)))
                                    (let ((_%hd123285123299%_
                                           (##car _%e123284123296%_))
                                          (_%tl123286123301%_
                                           (##cdr _%e123284123296%_)))
                                      (let* ((_%macro123304%_
                                              _%hd123285123299%_)
                                             (_%body123306%_
                                              _%tl123286123301%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123304%_
                                             gx#syntax-binding?)
                                            (_%K123233%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123304%_)
                                                    _%hd123267%_
                                                    _%method123229%_)
                                                   _%rest123268%_)
                                             _%r123269%_)
                                            (_%E123283123292%_)))))
                                  (_%E123283123292%_))))
                           (_%E123272123322%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123288%_)
                                  (let ((_%e123280123312%_
                                         (gx#syntax-e _%e123270123288%_)))
                                    (let ((_%hd123281123315%_
                                           (##car _%e123280123312%_))
                                          (_%tl123282123317%_
                                           (##cdr _%e123280123312%_)))
                                      (if (eq? (gx#stx-e _%hd123281123315%_)
                                               'begin:)
                                          (let ((_%body123320%_
                                                 _%tl123282123317%_))
                                            (if '#t
                                                (_%K123233%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123268%_
                                                  _%body123320%_)
                                                 _%r123269%_)
                                                (_%E123279123308%_)))
                                          (_%E123279123308%_))))
                                  (_%E123279123308%_))))
                           (_%E123271123349%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123288%_)
                                  (let ((_%e123273123326%_
                                         (gx#syntax-e _%e123270123288%_)))
                                    (let ((_%hd123274123329%_
                                           (##car _%e123273123326%_))
                                          (_%tl123275123331%_
                                           (##cdr _%e123273123326%_)))
                                      (if (eq? (gx#stx-e _%hd123274123329%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123275123331%_)
                                              (let ((_%e123276123334%_
                                                     (gx#syntax-e
                                                      _%tl123275123331%_)))
                                                (let ((_%hd123277123337%_
                                                       (##car _%e123276123334%_))
                                                      (_%tl123278123339%_
                                                       (##cdr _%e123276123334%_)))
                                                  (let* ((_%dphi123342%_
                                                          _%hd123277123337%_)
                                                         (_%body123344%_
                                                          _%tl123278123339%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123342%_)
                                                        (let ((_%rbody123347%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123233%_ _%body123344%_ '()))
                        _%current-phi123230%_
                        (fx+ (gx#stx-e _%dphi123342%_)
                             (_%current-phi123230%_)))))
                  (_%K123233%_
                   _%rest123268%_
                   (__foldr1 cons _%r123269%_ _%rbody123347%_)))
                (_%E123272123322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123272123322%_))
                                          (_%E123272123322%_))))
                                  (_%E123272123322%_)))))
                      (_%E123271123349%_)))))
          (let* ((_%e123235123242%_ _%stx123227%_)
                 (_%E123237123246%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123235123242%_)))
                 (_%E123236123263%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123235123242%_)
                        (let ((_%e123238123250%_
                               (gx#syntax-e _%e123235123242%_)))
                          (let ((_%hd123239123253%_ (##car _%e123238123250%_))
                                (_%tl123240123255%_ (##cdr _%e123238123250%_)))
                            (let ((_%body123258%_ _%tl123240123255%_))
                              (if '#t
                                  (if (_%current-phi123230%_)
                                      (_%K123233%_ _%body123258%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K123233%_ _%body123258%_ '()))
                                       _%current-phi123230%_
                                       (gx#current-expander-phi)))
                                  (_%E123237123246%_)))))
                        (_%E123237123246%_)))))
            (_%E123236123263%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122881%_ _%internal-expand?122882%_)
        (letrec ((_%expand1122884%_
                  (lambda (_%hd123199%_ _%K123200%_ _%rest123201%_ _%r123202%_)
                    (if (gx#core-bound-module? _%hd123199%_)
                        (_%import1122885%_
                         (gx#syntax-local-e__0 _%hd123199%_)
                         _%K123200%_
                         _%rest123201%_
                         _%r123202%_)
                        (if (gx#core-library-module-path? _%hd123199%_)
                            (_%import1122885%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd123199%_))
                             _%K123200%_
                             _%rest123201%_
                             _%r123202%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd123199%_)
                                (_%import1122885%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd123199%_))
                                 _%K123200%_
                                 _%rest123201%_
                                 _%r123202%_)
                                (let ((_%e123208%_ (gx#stx-e _%hd123199%_)))
                                  (if (pair? _%e123208%_)
                                      (let ((_%$e123211%_
                                             (gx#stx-e (car _%e123208%_))))
                                        (if (eq? 'spec: _%$e123211%_)
                                            (_%import-spec122888%_
                                             _%hd123199%_
                                             _%K123200%_
                                             _%rest123201%_
                                             _%r123202%_)
                                            (if (eq? 'in: _%$e123211%_)
                                                (_%import-submodule122886%_
                                                 _%hd123199%_
                                                 _%K123200%_
                                                 _%rest123201%_
                                                 _%r123202%_)
                                                (if (eq? 'runtime:
                                                         _%$e123211%_)
                                                    (_%import-runtime122887%_
                                                     _%hd123199%_
                                                     _%K123200%_
                                                     _%rest123201%_
                                                     _%r123202%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122881%_
                                                     _%hd123199%_)))))
                                      (if (string? _%e123208%_)
                                          (_%import1122885%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd123199%_
                                             (gx#stx-source _%stx122881%_)))
                                           _%K123200%_
                                           _%rest123201%_
                                           _%r123202%_)
                                          (if (##structure-instance-of?
                                               _%e123208%_
                                               'gx#module-context::t)
                                              (_%K123200%_
                                               _%rest123201%_
                                               (cons _%e123208%_ _%r123202%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx122881%_
                                               _%hd123199%_))))))))))
                 (_%import1122885%_
                  (lambda (_%ctx123188%_
                           _%K123189%_
                           _%rest123190%_
                           _%r123191%_)
                    (let ((_%dphi123193%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123189%_
                       _%rest123190%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123188%_
                              _%dphi123193%_
                              (map (lambda (_%g123194123196%_)
                                     (gx#core-module-export->import__%
                                      _%g123194123196%_
                                      '#f
                                      _%dphi123193%_))
                                   (##unchecked-structure-ref
                                    _%ctx123188%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123191%_)))))
                 (_%import-submodule122886%_
                  (lambda (_%hd123155%_ _%K123156%_ _%rest123157%_ _%r123158%_)
                    (let* ((_%e123159123166%_ _%hd123155%_)
                           (_%E123161123170%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123159123166%_)))
                           (_%E123160123184%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123159123166%_)
                                  (let ((_%e123162123174%_
                                         (gx#syntax-e _%e123159123166%_)))
                                    (let ((_%hd123163123177%_
                                           (##car _%e123162123174%_))
                                          (_%tl123164123179%_
                                           (##cdr _%e123162123174%_)))
                                      (let ((_%spath123182%_
                                             _%tl123164123179%_))
                                        (if '#t
                                            (_%import1122885%_
                                             (_%import-spec-source122889%_
                                              _%spath123182%_)
                                             _%K123156%_
                                             _%rest123157%_
                                             _%r123158%_)
                                            (_%E123161123170%_)))))
                                  (_%E123161123170%_)))))
                      (_%E123160123184%_))))
                 (_%import-runtime122887%_
                  (lambda (_%hd123122%_ _%K123123%_ _%rest123124%_ _%r123125%_)
                    (let* ((_%e123126123133%_ _%hd123122%_)
                           (_%E123128123137%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123126123133%_)))
                           (_%E123127123151%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123126123133%_)
                                  (let ((_%e123129123141%_
                                         (gx#syntax-e _%e123126123133%_)))
                                    (let ((_%hd123130123144%_
                                           (##car _%e123129123141%_))
                                          (_%tl123131123146%_
                                           (##cdr _%e123129123141%_)))
                                      (let ((_%spath123149%_
                                             _%tl123131123146%_))
                                        (if '#t
                                            (_%K123123%_
                                             _%rest123124%_
                                             (cons (_%import-spec-source122889%_
                                                    _%spath123149%_)
                                                   _%r123125%_))
                                            (_%E123128123137%_)))))
                                  (_%E123128123137%_)))))
                      (_%E123127123151%_))))
                 (_%import-spec122888%_
                  (lambda (_%hd122960%_ _%K122961%_ _%rest122962%_ _%r122963%_)
                    (let* ((_%e122964122981%_ _%hd122960%_)
                           (_%E122973122985%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122964122981%_)))
                           (_%E122966123096%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122964122981%_)
                                  (let ((_%e122974122989%_
                                         (gx#syntax-e _%e122964122981%_)))
                                    (let ((_%hd122975122992%_
                                           (##car _%e122974122989%_))
                                          (_%tl122976122994%_
                                           (##cdr _%e122974122989%_)))
                                      (if (gx#stx-pair? _%tl122976122994%_)
                                          (let ((_%e122977122997%_
                                                 (gx#syntax-e
                                                  _%tl122976122994%_)))
                                            (let ((_%hd122978123000%_
                                                   (##car _%e122977122997%_))
                                                  (_%tl122979123002%_
                                                   (##cdr _%e122977122997%_)))
                                              (let* ((_%path123005%_
                                                      _%hd122978123000%_)
                                                     (_%specs123007%_
                                                      _%tl122979123002%_))
                                                (if '#t
                                                    (let ((_%src-ctx123009%_
                                                           (_%import-spec-source122889%_
                                                            _%path123005%_))
                                                          (_%exports123010%_
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
                                                          (_%specs123011%_
                                                           (gx#syntax->list
                                                            _%specs123007%_)))
                                                      (for-each
                                                       (lambda (_%out123013%_)
                                                         (hash-put!
                                                          _%exports123010%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out123013%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out123013%_ '4 '#f '#f))
                  _%out123013%_))
               (##unchecked-structure-ref _%src-ctx123009%_ '9 '#f '#f))
              (_%K122961%_
               _%rest122962%_
               (__foldl1
                (lambda (_%spec123015%_ _%r123016%_)
                  (let* ((_%e123017123033%_ _%spec123015%_)
                         (_%E123019123037%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e123017123033%_)))
                         (_%E123018123092%_
                          (lambda ()
                            (if (gx#stx-pair? _%e123017123033%_)
                                (let ((_%e123020123041%_
                                       (gx#syntax-e _%e123017123033%_)))
                                  (let ((_%hd123021123044%_
                                         (##car _%e123020123041%_))
                                        (_%tl123022123046%_
                                         (##cdr _%e123020123041%_)))
                                    (let ((_%phi123049%_ _%hd123021123044%_))
                                      (if (gx#stx-pair? _%tl123022123046%_)
                                          (let ((_%e123023123051%_
                                                 (gx#syntax-e
                                                  _%tl123022123046%_)))
                                            (let ((_%hd123024123054%_
                                                   (##car _%e123023123051%_))
                                                  (_%tl123025123056%_
                                                   (##cdr _%e123023123051%_)))
                                              (let ((_%name123059%_
                                                     _%hd123024123054%_))
                                                (if (gx#stx-pair?
                                                     _%tl123025123056%_)
                                                    (let ((_%e123026123061%_
                                                           (gx#syntax-e
                                                            _%tl123025123056%_)))
                                                      (let ((_%hd123027123064%_
                                                             (##car _%e123026123061%_))
                                                            (_%tl123028123066%_
                                                             (##cdr _%e123026123061%_)))
                                                        (let ((_%src-phi123069%_
                                                               _%hd123027123064%_))
                                                          (if (gx#stx-pair?
                                                               _%tl123028123066%_)
                                                              (let ((_%e123029123071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl123028123066%_)))
                        (let ((_%hd123030123074%_ (##car _%e123029123071%_))
                              (_%tl123031123076%_ (##cdr _%e123029123071%_)))
                          (let ((_%src-name123079%_ _%hd123030123074%_))
                            (if (gx#stx-null? _%tl123031123076%_)
                                (if (and (gx#stx-fixnum? _%src-phi123069%_)
                                         (gx#identifier? _%src-name123079%_)
                                         (gx#stx-fixnum? _%phi123049%_)
                                         (gx#identifier? _%name123059%_))
                                    (let ((_%src-phi123081%_
                                           (gx#stx-e _%src-phi123069%_))
                                          (_%src-name123082%_
                                           (gx#core-identifier-key
                                            _%src-name123079%_))
                                          (_%phi123083%_
                                           (gx#stx-e _%phi123049%_))
                                          (_%name123084%_
                                           (gx#core-identifier-key
                                            _%name123059%_)))
                                      (let ((_%$e123086%_
                                             (hash-get
                                              _%exports123010%_
                                              (cons _%src-phi123081%_
                                                    _%src-name123082%_))))
                                        (if _%$e123086%_
                                            ((lambda (_%out123089%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out123089%_
                                                      _%name123084%_
                                                      (fx- _%phi123083%_
                                                           _%src-phi123081%_))
                                                     _%r123016%_))
                                             _%$e123086%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx122881%_
                                             _%hd122960%_))))
                                    (_%E123019123037%_))
                                (_%E123019123037%_)))))
                      (_%E123019123037%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E123019123037%_)))))
                                          (_%E123019123037%_)))))
                                (_%E123019123037%_)))))
                    (_%E123018123092%_)))
                _%r122963%_
                _%specs123011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122973122985%_)))))
                                          (_%E122973122985%_))))
                                  (_%E122973122985%_))))
                           (_%E122965123118%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122964122981%_)
                                  (let ((_%e122967123100%_
                                         (gx#syntax-e _%e122964122981%_)))
                                    (let ((_%hd122968123103%_
                                           (##car _%e122967123100%_))
                                          (_%tl122969123105%_
                                           (##cdr _%e122967123100%_)))
                                      (if (gx#stx-pair? _%tl122969123105%_)
                                          (let ((_%e122970123108%_
                                                 (gx#syntax-e
                                                  _%tl122969123105%_)))
                                            (let ((_%hd122971123111%_
                                                   (##car _%e122970123108%_))
                                                  (_%tl122972123113%_
                                                   (##cdr _%e122970123108%_)))
                                              (let ((_%path123116%_
                                                     _%hd122971123111%_))
                                                (if (gx#stx-null?
                                                     _%tl122972123113%_)
                                                    (if '#t
                                                        (_%K122961%_
                                                         _%rest122962%_
                                                         (cons (_%import-spec-source122889%_
                                                                _%path123116%_)
                                                               _%r122963%_))
                                                        (_%E122966123096%_))
                                                    (_%E122966123096%_)))))
                                          (_%E122966123096%_))))
                                  (_%E122966123096%_)))))
                      (_%E122965123118%_))))
                 (_%import-spec-source122889%_
                  (lambda (_%spath122958%_)
                    (gx#core-import-nested-module
                     _%spath122958%_
                     _%stx122881%_)))
                 (_%import!122890%_
                  (lambda (_%rbody122903%_)
                    (letrec* ((_%current-ctx122905%_
                               (gx#current-expander-context))
                              (_%deps122906%_ (make-hash-table-eq))
                              (_%bind!122907%_
                               (lambda (_%hd122956%_)
                                 (gx#core-bind-import!__1
                                  _%hd122956%_
                                  _%current-ctx122905%_))))
                      (let _%lp122909%_ ((_%rest122911%_ _%rbody122903%_)
                                         (_%body122912%_ '()))
                        (let* ((_%rest122913122921%_ _%rest122911%_)
                               (_%else122915122932%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122905%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122905%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122905%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122912%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122929%_ _%_122930%_)
                                     (gx#eval-module _%ctx122929%_))
                                   _%deps122906%_)
                                  _%body122912%_))
                               (_%K122917122944%_
                                (lambda (_%rest122935%_ _%hd122936%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122936%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122907%_ _%hd122936%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122936%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122936%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122906%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122936%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122936%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122907%_
                                             (##unchecked-structure-ref
                                              _%hd122936%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122936%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122906%_
                                                 (##unchecked-structure-ref
                                                  _%hd122936%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122940%_
                                                 (##structure-instance-of?
                                                  _%hd122936%_
                                                  'gx#module-context::t)))
                                            (if _%$e122940%_
                                                _%$e122940%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx122881%_
                                                 _%hd122936%_)))))
                                  (_%lp122909%_
                                   _%rest122935%_
                                   (cons _%hd122936%_ _%body122912%_)))))
                          (if (##pair? _%rest122913122921%_)
                              (let ((_%hd122918122947%_
                                     (##car _%rest122913122921%_))
                                    (_%tl122919122949%_
                                     (##cdr _%rest122913122921%_)))
                                (let* ((_%hd122952%_ _%hd122918122947%_)
                                       (_%rest122954%_ _%tl122919122949%_))
                                  (_%K122917122944%_
                                   _%rest122954%_
                                   _%hd122952%_)))
                              (_%else122915122932%_)))))))
                 (_%expanded-import?122891%_
                  (lambda (_%e122895%_)
                    (let ((_%$e122897%_
                           (##structure-direct-instance-of?
                            _%e122895%_
                            'gx#import-set::t)))
                      (if _%$e122897%_
                          _%$e122897%_
                          (let ((_%$e122900%_
                                 (##structure-direct-instance-of?
                                  _%e122895%_
                                  'gx#module-import::t)))
                            (if _%$e122900%_
                                _%$e122900%_
                                (##structure-instance-of?
                                 _%e122895%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122893%_
                 (gx#core-expand-import/export
                  _%stx122881%_
                  _%expanded-import?122891%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122884%_)))
            (if _%internal-expand?122882%_
                (reverse _%rbody122893%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122890%_ _%rbody122893%_))
                 (gx#stx-source _%stx122881%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123220%_)
        (let ((_%internal-expand?123222%_ '#f))
          (gx#core-expand-import%__%
           _%stx123220%_
           _%internal-expand?123222%_))))
    (define gx#core-expand-import%
      (lambda _g125873_
        (let ((_g125872_ (##length _g125873_)))
          (cond ((##fx= _g125872_ 1)
                 (apply gx#core-expand-import%__0 _g125873_))
                ((##fx= _g125872_ 2)
                 (apply gx#core-expand-import%__% _g125873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125873_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122808%_ _%where122809%_)
        (let* ((_%e122810122817%_ _%spath122808%_)
               (_%E122812122821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122810122817%_)))
               (_%E122811122876%_
                (lambda ()
                  (if (gx#stx-pair? _%e122810122817%_)
                      (let ((_%e122813122825%_
                             (gx#syntax-e _%e122810122817%_)))
                        (let ((_%hd122814122828%_ (##car _%e122813122825%_))
                              (_%tl122815122830%_ (##cdr _%e122813122825%_)))
                          (let* ((_%origin122833%_ _%hd122814122828%_)
                                 (_%sub122835%_ _%tl122815122830%_))
                            (if '#t
                                (let ((_%origin-ctx122837%_
                                       (if (gx#stx-false? _%origin122833%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122833%_))))
                                  (let _%lp122839%_ ((_%rest122841%_
                                                      _%sub122835%_)
                                                     (_%ctx122842%_
                                                      _%origin-ctx122837%_))
                                    (let* ((_%e122843122850%_ _%rest122841%_)
                                           (_%E122845122854%_
                                            (lambda () _%ctx122842%_))
                                           (_%E122844122872%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122843122850%_)
                                                  (let ((_%e122846122858%_
                                                         (gx#syntax-e
                                                          _%e122843122850%_)))
                                                    (let ((_%hd122847122861%_
                                                           (##car _%e122846122858%_))
                                                          (_%tl122848122863%_
                                                           (##cdr _%e122846122858%_)))
                                                      (let* ((_%id122866%_
                                                              _%hd122847122861%_)
                                                             (_%rest122868%_
                                                              _%tl122848122863%_))
                                                        (if '#t
                                                            (let ((_%bind122870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122866%_
                            '0
                            _%ctx122842%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122870%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122870%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122809%_
                           _%spath122808%_
                           _%id122866%_))
                      (_%lp122839%_
                       _%rest122868%_
                       (##unchecked-structure-ref _%bind122870%_ '4 '#f '#f)))
                    (_%E122845122854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122845122854%_)))))
                                      (_%E122844122872%_))))
                                (_%E122812122821%_)))))
                      (_%E122812122821%_)))))
          (_%E122811122876%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122806%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122806%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122300%_ _%internal-expand?122301%_)
        (letrec* ((_%make-export__125801125802%_
                   (lambda (_%bind122754%_
                            _%phi122755%_
                            _%ctx122756%_
                            _%name122757%_)
                     (let* ((_%key122759%_
                             (##unchecked-structure-ref
                              _%bind122754%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122761%_
                             (if _%name122757%_
                                 (gx#core-identifier-key _%name122757%_)
                                 _%key122759%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122756%_
                        _%key122759%_
                        _%phi122755%_
                        _%export-key122761%_
                        (let ((_%$e122764%_
                               (##structure-instance-of?
                                _%bind122754%_
                                'gx#extern-binding::t)))
                          (if _%$e122764%_
                              _%$e122764%_
                              (##structure-direct-instance-of?
                               _%bind122754%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125803125806%_
                   (lambda (_%bind122770%_)
                     (let* ((_%phi122772%_ (gx#current-export-expander-phi))
                            (_%ctx122774%_ (gx#current-expander-context))
                            (_%name122776%_ '#f))
                       (_%make-export__125801125802%_
                        _%bind122770%_
                        _%phi122772%_
                        _%ctx122774%_
                        _%name122776%_))))
                  (_%make-export__1__125804125807%_
                   (lambda (_%bind122778%_ _%phi122779%_)
                     (let* ((_%ctx122781%_ (gx#current-expander-context))
                            (_%name122783%_ '#f))
                       (_%make-export__125801125802%_
                        _%bind122778%_
                        _%phi122779%_
                        _%ctx122781%_
                        _%name122783%_))))
                  (_%make-export__2__125805125808%_
                   (lambda (_%bind122785%_ _%phi122786%_ _%ctx122787%_)
                     (let ((_%name122789%_ '#f))
                       (_%make-export__125801125802%_
                        _%bind122785%_
                        _%phi122786%_
                        _%ctx122787%_
                        _%name122789%_))))
                  (_%make-export122303%_
                   (lambda _g125875_
                     (let ((_g125874_ (##length _g125875_)))
                       (cond ((##fx= _g125874_ 1)
                              (apply _%make-export__0__125803125806%_
                                     _g125875_))
                             ((##fx= _g125874_ 2)
                              (apply _%make-export__1__125804125807%_
                                     _g125875_))
                             ((##fx= _g125874_ 3)
                              (apply _%make-export__2__125805125808%_
                                     _g125875_))
                             ((##fx= _g125874_ 4)
                              (apply _%make-export__125801125802%_ _g125875_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125875_))))))
                  (_%expand1122304%_
                   (lambda (_%hd122459%_
                            _%K122460%_
                            _%rest122461%_
                            _%r122462%_)
                     (let* ((_%e122463122495%_ _%hd122459%_)
                            (_%E122490122499%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122300%_
                                _%hd122459%_)))
                            (_%E122480122583%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122463122495%_)
                                   (let ((_%e122491122503%_
                                          (gx#syntax-e _%e122463122495%_)))
                                     (let ((_%hd122492122506%_
                                            (##car _%e122491122503%_))
                                           (_%tl122493122508%_
                                            (##cdr _%e122491122503%_)))
                                       (if (eq? (gx#stx-e _%hd122492122506%_)
                                                'import:)
                                           (let ((_%in122511%_
                                                  _%tl122493122508%_))
                                             (if (gx#stx-list? _%in122511%_)
                                                 (let _%lp122513%_ ((_%in-rest122515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122511%_)
                            (_%r122516%_ _%r122462%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122517122524%_
                                                           _%in-rest122515%_)
                                                          (_%E122519122528%_
                                                           (lambda ()
                                                             (_%K122460%_
                                                              _%rest122461%_
                                                              _%r122516%_)))
                                                          (_%E122518122579%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122517122524%_)
                         (let ((_%e122520122532%_
                                (gx#syntax-e _%e122517122524%_)))
                           (let ((_%hd122521122535%_ (##car _%e122520122532%_))
                                 (_%tl122522122537%_
                                  (##cdr _%e122520122532%_)))
                             (let* ((_%hd122540%_ _%hd122521122535%_)
                                    (_%in-rest122542%_ _%tl122522122537%_))
                               (if '#t
                                   (let ((_%src122577%_
                                          (if (gx#core-bound-module?
                                               _%hd122540%_)
                                              (gx#syntax-local-e__0
                                               _%hd122540%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd122540%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd122540%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122540%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd122540%_))
                                                      (if (gx#stx-string?
                                                           _%hd122540%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd122540%_
                                                            (gx#stx-source
                                                             _%stx122300%_)))
                                                          (let* ((_%e122548122555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122540%_)
                         (_%E122550122559%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx122300%_
                             _%hd122540%_)))
                         (_%E122549122573%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122548122555%_)
                                (let ((_%e122551122563%_
                                       (gx#syntax-e _%e122548122555%_)))
                                  (let ((_%hd122552122566%_
                                         (##car _%e122551122563%_))
                                        (_%tl122553122568%_
                                         (##cdr _%e122551122563%_)))
                                    (if (eq? (gx#stx-e _%hd122552122566%_)
                                             'in:)
                                        (let ((_%spath122571%_
                                               _%tl122553122568%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath122571%_
                                               _%stx122300%_)
                                              (_%E122550122559%_)))
                                        (_%E122550122559%_))))
                                (_%E122550122559%_)))))
                    (_%E122549122573%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122513%_
                                      _%in-rest122542%_
                                      (_%export-imports122305%_
                                       _%src122577%_
                                       _%r122516%_)))
                                   (_%E122519122528%_)))))
                         (_%E122519122528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122518122579%_)))
                                                 (_%E122490122499%_)))
                                           (_%E122490122499%_))))
                                   (_%E122490122499%_))))
                            (_%E122467122623%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122463122495%_)
                                   (let ((_%e122481122587%_
                                          (gx#syntax-e _%e122463122495%_)))
                                     (let ((_%hd122482122590%_
                                            (##car _%e122481122587%_))
                                           (_%tl122483122592%_
                                            (##cdr _%e122481122587%_)))
                                       (if (eq? (gx#stx-e _%hd122482122590%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122483122592%_)
                                               (let ((_%e122484122595%_
                                                      (gx#syntax-e
                                                       _%tl122483122592%_)))
                                                 (let ((_%hd122485122598%_
                                                        (##car _%e122484122595%_))
                                                       (_%tl122486122600%_
                                                        (##cdr _%e122484122595%_)))
                                                   (let ((_%id122603%_
                                                          _%hd122485122598%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122486122600%_)
                                                         (let ((_%e122487122605%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122486122600%_)))
                   (let ((_%hd122488122608%_ (##car _%e122487122605%_))
                         (_%tl122489122610%_ (##cdr _%e122487122605%_)))
                     (let ((_%name122613%_ _%hd122488122608%_))
                       (if (gx#stx-null? _%tl122489122610%_)
                           (if '#t
                               (let* ((_%phi122615%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122617%_
                                       (gx#core-resolve-identifier__1
                                        _%id122603%_
                                        _%phi122615%_)))
                                 (if _%$e122617%_
                                     ((lambda (_%bind122620%_)
                                        (_%K122460%_
                                         _%rest122461%_
                                         (cons (_%make-export__125801125802%_
                                                _%bind122620%_
                                                _%phi122615%_
                                                (gx#current-expander-context)
                                                _%name122613%_)
                                               _%r122462%_)))
                                      _%$e122617%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx122300%_
                                      _%hd122459%_
                                      _%id122603%_)))
                               (_%E122480122583%_))
                           (_%E122480122583%_)))))
                 (_%E122480122583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122480122583%_))
                                           (_%E122480122583%_))))
                                   (_%E122480122583%_))))
                            (_%E122466122673%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122463122495%_)
                                   (let ((_%e122468122627%_
                                          (gx#syntax-e _%e122463122495%_)))
                                     (let ((_%hd122469122630%_
                                            (##car _%e122468122627%_))
                                           (_%tl122470122632%_
                                            (##cdr _%e122468122627%_)))
                                       (if (eq? (gx#stx-e _%hd122469122630%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122470122632%_)
                                               (let ((_%e122471122635%_
                                                      (gx#syntax-e
                                                       _%tl122470122632%_)))
                                                 (let ((_%hd122472122638%_
                                                        (##car _%e122471122635%_))
                                                       (_%tl122473122640%_
                                                        (##cdr _%e122471122635%_)))
                                                   (let ((_%phi122643%_
                                                          _%hd122472122638%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122473122640%_)
                                                         (let ((_%e122474122645%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122473122640%_)))
                   (let ((_%hd122475122648%_ (##car _%e122474122645%_))
                         (_%tl122476122650%_ (##cdr _%e122474122645%_)))
                     (let ((_%id122653%_ _%hd122475122648%_))
                       (if (gx#stx-pair? _%tl122476122650%_)
                           (let ((_%e122477122655%_
                                  (gx#syntax-e _%tl122476122650%_)))
                             (let ((_%hd122478122658%_
                                    (##car _%e122477122655%_))
                                   (_%tl122479122660%_
                                    (##cdr _%e122477122655%_)))
                               (let ((_%name122663%_ _%hd122478122658%_))
                                 (if (gx#stx-null? _%tl122479122660%_)
                                     (if (and (gx#stx-fixnum? _%phi122643%_)
                                              (gx#identifier? _%id122653%_)
                                              (gx#identifier? _%name122663%_))
                                         (let* ((_%phi122665%_
                                                 (gx#stx-e _%phi122643%_))
                                                (_%$e122667%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122653%_
                                                  _%phi122665%_)))
                                           (if _%$e122667%_
                                               ((lambda (_%bind122670%_)
                                                  (_%K122460%_
                                                   _%rest122461%_
                                                   (cons (_%make-export__125801125802%_
                                                          _%bind122670%_
                                                          _%phi122665%_
                                                          (gx#current-expander-context)
                                                          _%name122663%_)
                                                         _%r122462%_)))
                                                _%$e122667%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx122300%_
                                                _%hd122459%_
                                                _%id122653%_)))
                                         (_%E122467122623%_))
                                     (_%E122467122623%_)))))
                           (_%E122467122623%_)))))
                 (_%E122467122623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122467122623%_))
                                           (_%E122467122623%_))))
                                   (_%E122467122623%_))))
                            (_%E122465122685%_
                             (lambda ()
                               (let ((_%id122677%_ _%e122463122495%_))
                                 (if (gx#identifier? _%id122677%_)
                                     (let ((_%$e122679%_
                                            (gx#core-resolve-identifier__1
                                             _%id122677%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122679%_
                                           ((lambda (_%bind122682%_)
                                              (_%K122460%_
                                               _%rest122461%_
                                               (cons (_%make-export__0__125803125806%_
                                                      _%bind122682%_)
                                                     _%r122462%_)))
                                            _%$e122679%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx122300%_
                                            _%hd122459%_)))
                                     (_%E122466122673%_)))))
                            (_%E122464122749%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122463122495%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122689%_
                                               (gx#current-expander-context))
                                              (_%current-phi122691%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122693%_
                                               (gx#core-context-shift
                                                _%current-ctx122689%_
                                                _%current-phi122691%_))
                                              (_%phi-bind122695%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122693%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122698%_ ((_%bind-rest122700%_
                                                             _%phi-bind122695%_)
                                                            (_%set122701%_
                                                             '()))
                                           (let* ((_%bind-rest122702122712%_
                                                   _%bind-rest122700%_)
                                                  (_%else122704122720%_
                                                   (lambda ()
                                                     (_%K122460%_
                                                      _%rest122461%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122691%_
                                                             _%set122701%_)
                                                            _%r122462%_))))
                                                  (_%K122706122730%_
                                                   (lambda (_%bind-rest122723%_
                                                            _%bind122724%_
                                                            _%key122725%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122724%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122724%_))
                                                         (_%lp122698%_
                                                          _%bind-rest122723%_
                                                          _%set122701%_)
                                                         (_%lp122698%_
                                                          _%bind-rest122723%_
                                                          (cons (_%make-export__2__125805125808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122724%_
                         _%current-phi122691%_
                         _%current-ctx122689%_)
                        _%set122701%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122702122712%_)
                                                 (let ((_%hd122707122733%_
                                                        (##car _%bind-rest122702122712%_))
                                                       (_%tl122708122735%_
                                                        (##cdr _%bind-rest122702122712%_)))
                                                   (if (##pair? _%hd122707122733%_)
                                                       (let ((_%hd122709122738%_
                                                              (##car _%hd122707122733%_))
                                                             (_%tl122710122740%_
                                                              (##cdr _%hd122707122733%_)))
                                                         (let* ((_%key122743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122709122738%_)
                        (_%bind122745%_ _%tl122710122740%_)
                        (_%bind-rest122747%_ _%tl122708122735%_))
                   (_%K122706122730%_
                    _%bind-rest122747%_
                    _%bind122745%_
                    _%key122743%_)))
               (_%else122704122720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122704122720%_)))))
                                       (_%E122465122685%_))
                                   (_%E122465122685%_)))))
                       (_%E122464122749%_))))
                  (_%export-imports122305%_
                   (lambda (_%src122335%_ _%r122336%_)
                     (letrec* ((_%current-ctx122338%_
                                (gx#current-expander-context))
                               (_%current-phi122339%_
                                (gx#current-export-expander-phi))
                               (_%import->export122340%_
                                (lambda (_%in122421%_)
                                  (let* ((_%in122422122430%_ _%in122421%_)
                                         (_%E122424122434%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122422122430%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122425122441%_
                                          (lambda (_%phi122437%_
                                                   _%key122438%_
                                                   _%out122439%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122338%_
                                             _%key122438%_
                                             _%phi122437%_
                                             _%key122438%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122422122430%_
                                         'gx#module-import::t)
                                        (let* ((_%e122426122444%_
                                                (##unchecked-structure-ref
                                                 _%in122422122430%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122447%_
                                                _%e122426122444%_)
                                               (_%e122427122449%_
                                                (##unchecked-structure-ref
                                                 _%in122422122430%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122452%_
                                                _%e122427122449%_)
                                               (_%e122428122454%_
                                                (##unchecked-structure-ref
                                                 _%in122422122430%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122457%_
                                                _%e122428122454%_))
                                          (_%K122425122441%_
                                           _%phi122457%_
                                           _%key122452%_
                                           _%out122447%_))
                                        (_%E122424122434%_)))))
                               (_%fold-e122341%_
                                (lambda (_%in122343%_ _%r122344%_)
                                  (let* ((_%in122345122359%_ _%in122343%_)
                                         (_%else122348122367%_
                                          (lambda () _%r122344%_)))
                                    (let ((_%K122354122403%_
                                           (lambda (_%phi122399%_
                                                    _%key122400%_
                                                    _%out122401%_)
                                             (if (and (fx= _%phi122399%_
                                                           _%current-phi122339%_)
                                                      (eq? _%src122335%_
                                                           (##unchecked-structure-ref
                                                            _%out122401%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122340%_
                                                        _%in122343%_)
                                                       _%r122344%_)
                                                 _%r122344%_)))
                                          (_%K122350122378%_
                                           (lambda (_%imports122371%_
                                                    _%phi122372%_
                                                    _%ctx122373%_)
                                             (if (and (fx= _%phi122372%_
                                                           _%current-phi122339%_)
                                                      (eq? _%src122335%_
                                                           _%ctx122373%_))
                                                 (__foldl1
                                                  (lambda (_%in122375%_
                                                           _%r122376%_)
                                                    (cons (_%import->export122340%_
                                                           _%in122375%_)
                                                          _%r122376%_))
                                                  _%r122344%_
                                                  _%imports122371%_)
                                                 _%r122344%_))))
                                      (let ((_%try-match122347122396%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122345122359%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122351122381%_
                                                           (##unchecked-structure-ref
                                                            _%in122345122359%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122352122386%_
                                                           (##unchecked-structure-ref
                                                            _%in122345122359%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122353122391%_
                                                           (##unchecked-structure-ref
                                                            _%in122345122359%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122384%_
                                                            _%e122351122381%_)
                                                           (_%phi122389%_
                                                            _%e122352122386%_)
                                                           (_%imports122394%_
                                                            _%e122353122391%_))
                                                       (_%K122350122378%_
                                                        _%imports122394%_
                                                        _%phi122389%_
                                                        _%ctx122384%_)))
                                                   (_%else122348122367%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122345122359%_
                                             'gx#module-import::t)
                                            (let* ((_%e122355122406%_
                                                    (##unchecked-structure-ref
                                                     _%in122345122359%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122356122411%_
                                                    (##unchecked-structure-ref
                                                     _%in122345122359%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122357122416%_
                                                    (##unchecked-structure-ref
                                                     _%in122345122359%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122409%_
                                                     _%e122355122406%_)
                                                    (_%key122414%_
                                                     _%e122356122411%_)
                                                    (_%phi122419%_
                                                     _%e122357122416%_))
                                                (_%K122354122403%_
                                                 _%phi122419%_
                                                 _%key122414%_
                                                 _%out122409%_)))
                                            (_%try-match122347122396%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122335%_
                              _%current-phi122339%_
                              (__foldl1
                               _%fold-e122341%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122338%_
                                '8
                                '#f
                                '#f)))
                             _%r122336%_))))
                  (_%export!122306%_
                   (lambda (_%rbody122322%_)
                     (letrec* ((_%current-ctx122324%_
                                (gx#current-expander-context))
                               (_%fold-e122325%_
                                (lambda (_%out122329%_ _%r122330%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122329%_
                                       'gx#module-export::t)
                                      (cons _%out122329%_ _%r122330%_)
                                      (if (##structure-direct-instance-of?
                                           _%out122329%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r122330%_
                                           (##unchecked-structure-ref
                                            _%out122329%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r122330%_)))))
                       (let ((_%body122327%_ (reverse _%rbody122322%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122324%_
                          (__foldl1
                           _%fold-e122325%_
                           (##unchecked-structure-ref
                            _%current-ctx122324%_
                            '9
                            '#f
                            '#f)
                           _%body122327%_)
                          '9
                          '#f
                          '#f)
                         _%body122327%_))))
                  (_%expanded-export?122307%_
                   (lambda (_%e122317%_)
                     (let ((_%$e122319%_
                            (##structure-direct-instance-of?
                             _%e122317%_
                             'gx#module-export::t)))
                       (if _%$e122319%_
                           _%$e122319%_
                           (##structure-direct-instance-of?
                            _%e122317%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122301%_)
              (let ((_%rbody122313%_
                     (gx#core-expand-import/export
                      _%stx122300%_
                      _%expanded-export?122307%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122304%_)))
                (if _%internal-expand?122301%_
                    (reverse _%rbody122313%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122306%_ _%rbody122313%_))
                     (gx#stx-source _%stx122300%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx122300%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx122300%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122799%_)
        (let ((_%internal-expand?122801%_ '#f))
          (gx#core-expand-export%__%
           _%stx122799%_
           _%internal-expand?122801%_))))
    (define gx#core-expand-export%
      (lambda _g125877_
        (let ((_g125876_ (##length _g125877_)))
          (cond ((##fx= _g125876_ 1)
                 (apply gx#core-expand-export%__0 _g125877_))
                ((##fx= _g125876_ 2)
                 (apply gx#core-expand-export%__% _g125877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125877_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122297%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122297%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122267%_)
        (let* ((_%e122268122275%_ _%stx122267%_)
               (_%E122270122279%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122268122275%_)))
               (_%E122269122293%_
                (lambda ()
                  (if (gx#stx-pair? _%e122268122275%_)
                      (let ((_%e122271122283%_
                             (gx#syntax-e _%e122268122275%_)))
                        (let ((_%hd122272122286%_ (##car _%e122271122283%_))
                              (_%tl122273122288%_ (##cdr _%e122271122283%_)))
                          (let ((_%body122291%_ _%tl122273122288%_))
                            (if (gx#identifier-list? _%body122291%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122291%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122291%_))
                                   (gx#stx-source _%stx122267%_)))
                                (_%E122270122279%_)))))
                      (_%E122270122279%_)))))
          (_%E122269122293%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122233%_ _%private?122234%_ _%phi122235%_ _%ctx122236%_)
        (gx#core-bind-syntax!__%
         _%id122233%_
         ((if _%private?122234%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122233%_))
         _%private?122234%_
         _%phi122235%_
         _%ctx122236%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122241%_)
        (let* ((_%private?122243%_ '#f)
               (_%phi122245%_ (gx#current-expander-phi))
               (_%ctx122247%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122241%_
           _%private?122243%_
           _%phi122245%_
           _%ctx122247%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122249%_ _%private?122250%_)
        (let* ((_%phi122252%_ (gx#current-expander-phi))
               (_%ctx122254%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122249%_
           _%private?122250%_
           _%phi122252%_
           _%ctx122254%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122256%_ _%private?122257%_ _%phi122258%_)
        (let ((_%ctx122260%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122256%_
           _%private?122257%_
           _%phi122258%_
           _%ctx122260%_))))
    (define gx#core-bind-feature!
      (lambda _g125879_
        (let ((_g125878_ (##length _g125879_)))
          (cond ((##fx= _g125878_ 1)
                 (apply gx#core-bind-feature!__0 _g125879_))
                ((##fx= _g125878_ 2)
                 (apply gx#core-bind-feature!__1 _g125879_))
                ((##fx= _g125878_ 3)
                 (apply gx#core-bind-feature!__2 _g125879_))
                ((##fx= _g125878_ 4)
                 (apply gx#core-bind-feature!__% _g125879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125879_))))))))
