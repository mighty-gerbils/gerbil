(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712269046)
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
      (lambda _%$args125654%_
        (apply make-instance gx#module-import::t _%$args125654%_)))
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
      (lambda _%$args125651%_
        (apply make-instance gx#module-export::t _%$args125651%_)))
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
      (lambda _%$args125648%_
        (apply make-instance gx#import-set::t _%$args125648%_)))
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
      (lambda _%$args125645%_
        (apply make-instance gx#export-set::t _%$args125645%_)))
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
      (lambda _%$args125642%_
        (apply make-instance gx#import-expander::t _%$args125642%_)))
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
      (lambda _%$args125639%_
        (apply make-instance gx#export-expander::t _%$args125639%_)))
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
      (lambda _%$args125636%_
        (apply make-instance gx#import-export-expander::t _%$args125636%_)))
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
      (lambda (_%path125633%_ _%fun125634%_)
        (call-with-input-file
         (cons 'path: (cons _%path125633%_ gx#source-file-settings))
         _%fun125634%_)))
    (define gx#module-context:::init!
      (lambda (_%self125616%_
               _%id125617%_
               _%super125618%_
               _%ns125619%_
               _%path125620%_)
        (let ((_%self125623%_ _%self125616%_))
          (if (##fx< '11 (##structure-length _%self125623%_))
              (begin
                (##unchecked-structure-set!
                 _%self125623%_
                 _%id125617%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125623%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125623%_
                 _%super125618%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125623%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125623%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125623%_
                 _%ns125619%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125623%_
                 _%path125620%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125623%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125623%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125623%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125623%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125623%_
                     '11
                     (##vector-length _%self125623%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125449%_ _%ctx125450%_ _%root125451%_)
        (let ()
          (let* ((_%self125454%_ _%self125449%_)
                 (_%super125470%_
                  (let ((_%$e125464%_ _%root125451%_))
                    (if _%$e125464%_
                        _%$e125464%_
                        (let ((_%$e125467%_ (gx#core-context-root__0)))
                          (if _%$e125467%_
                              _%$e125467%_
                              (let ((__obj125698
                                     (##structure gx#root-context::t '#f '#f)))
                                (let ((__constructor125699
                                       (direct-method-ref
                                        gx#root-context::t
                                        __obj125698
                                        ':init!)))
                                  (if __constructor125699
                                      (__constructor125699 __obj125698)
                                      (error '"missing constructor method implementation"
                                             'class:
                                             gx#root-context::t
                                             'method:
                                             ':init!)))
                                __obj125698)))))))
            (if _%ctx125450%_
                (let ((_%id125473%_
                       (##structure-ref
                        _%ctx125450%_
                        '1
                        gx#expander-context::t
                        '#f))
                      (_%path125474%_
                       (##structure-ref
                        _%ctx125450%_
                        '7
                        gx#module-context::t
                        '#f))
                      (_%in125475%_
                       (map gx#core-module-export->import
                            (##structure-ref
                             _%ctx125450%_
                             '9
                             gx#module-context::t
                             '#f)))
                      (_%e125476%_
                       (__make-promise
                        (lambda () (gx#eval-module _%ctx125450%_)))))
                  (if (##fx< '8 (##structure-length _%self125454%_))
                      (begin
                        (##unchecked-structure-set!
                         _%self125454%_
                         _%id125473%_
                         '1
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125454%_
                         (make-hash-table-eq 'size: (##length _%in125475%_))
                         '2
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125454%_
                         _%super125470%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125454%_
                         '#f
                         '4
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125454%_
                         '#f
                         '5
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125454%_
                         _%path125474%_
                         '6
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125454%_
                         _%in125475%_
                         '7
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125454%_
                         _%e125476%_
                         '8
                         '#f
                         '#f)
                        '#!void)
                      (error '"struct-instance-init!: too many arguments for struct"
                             _%self125454%_
                             '8
                             (##vector-length _%self125454%_)))
                  (##for-each
                   (lambda (_%g125477125479%_)
                     (gx#core-bind-weak-import!__%
                      _%g125477125479%_
                      _%self125454%_))
                   _%in125475%_))
                (if (##fx< '8 (##structure-length _%self125454%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125454%_
                       '#f
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125454%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125454%_
                       _%super125470%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125454%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125454%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125454%_
                       '#f
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125454%_
                       '()
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125454%_
                       '#f
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125454%_
                           '8
                           (##vector-length _%self125454%_))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125485%_ _%ctx125486%_)
        (let ((_%root125488%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125485%_
           _%ctx125486%_
           _%root125488%_))))
    (define gx#prelude-context:::init!
      (lambda _g125705_
        (let ((_g125704_ (##length _g125705_)))
          (cond ((##fx= _g125704_ 2)
                 (apply (lambda (_%self125485%_ _%ctx125486%_)
                          (gx#prelude-context:::init!__0
                           _%self125485%_
                           _%ctx125486%_))
                        _g125705_))
                ((##fx= _g125704_ 3)
                 (apply (lambda (_%self125490%_ _%ctx125491%_ _%root125492%_)
                          (gx#prelude-context:::init!__%
                           _%self125490%_
                           _%ctx125491%_
                           _%root125492%_))
                        _g125705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125705_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125323%_ _%e125324%_)
        (if (##fx< '3 (##structure-length _%self125323%_))
            (begin
              (##unchecked-structure-set!
               _%self125323%_
               _%e125324%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125323%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125323%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125323%_
                   '3
                   (##vector-length _%self125323%_)))))
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
      (lambda (_%g124949124952%_ _%g124950124954%_)
        (gx#core-apply-user-expander__%
         _%g124949124952%_
         _%g124950124954%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124820124823%_ _%g124821124825%_)
        (gx#core-apply-user-expander__%
         _%g124820124823%_
         _%g124821124825%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124691%_)
        (let* ((_%path124693%_
                (##structure-ref _%ctx124691%_ '7 gx#module-context::t '#f))
               (_%path124695%_
                (if (pair? _%path124693%_)
                    (last _%path124693%_)
                    _%path124693%_)))
          (if (string? _%path124695%_) _%path124695%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124667%_ _%reload?124668%_ _%eval?124669%_)
        (let ((_%ctx124671%_
               ((gx#current-expander-module-import)
                _%path124667%_
                _%reload?124668%_)))
          (if (and _%ctx124671%_ _%eval?124669%_)
              (gx#eval-module _%ctx124671%_)
              '#!void)
          _%ctx124671%_)))
    (define gx#import-module__0
      (lambda (_%path124676%_)
        (let* ((_%reload?124678%_ '#f) (_%eval?124680%_ '#f))
          (gx#import-module__%
           _%path124676%_
           _%reload?124678%_
           _%eval?124680%_))))
    (define gx#import-module__1
      (lambda (_%path124682%_ _%reload?124683%_)
        (let ((_%eval?124685%_ '#f))
          (gx#import-module__%
           _%path124682%_
           _%reload?124683%_
           _%eval?124685%_))))
    (define gx#import-module
      (lambda _g125707_
        (let ((_g125706_ (##length _g125707_)))
          (cond ((##fx= _g125706_ 1)
                 (apply (lambda (_%path124676%_)
                          (gx#import-module__0 _%path124676%_))
                        _g125707_))
                ((##fx= _g125706_ 2)
                 (apply (lambda (_%path124682%_ _%reload?124683%_)
                          (gx#import-module__1
                           _%path124682%_
                           _%reload?124683%_))
                        _g125707_))
                ((##fx= _g125706_ 3)
                 (apply (lambda (_%path124687%_
                                 _%reload?124688%_
                                 _%eval?124689%_)
                          (gx#import-module__%
                           _%path124687%_
                           _%reload?124688%_
                           _%eval?124689%_))
                        _g125707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125707_))))))
    (define gx#eval-module
      (lambda (_%mod124664%_)
        ((gx#current-expander-module-eval) _%mod124664%_)))
    (define gx#core-eval-module
      (lambda (_%obj124644%_)
        (letrec ((_%force-e124646%_
                  (lambda (_%getf124660%_ _%e124661%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124660%_ _%e124661%_)))
                     gx#current-expander-context
                     _%e124661%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124648%_ ((_%e124650%_ _%obj124644%_))
            (if (##structure-instance-of? _%e124650%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124653%_
                         (gx#core-context-prelude__% _%e124650%_)))
                    (if _%$e124653%_ (_%recur124648%_ _%$e124653%_) '#!void))
                  (_%force-e124646%_ gx#module-context-e _%e124650%_))
                (if (##structure-instance-of?
                     _%e124650%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124646%_ gx#prelude-context-e _%e124650%_))
                    (if (gx#stx-string? _%e124650%_)
                        (let ()
                          (_%recur124648%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124650%_))))
                        (if (gx#core-library-module-path? _%e124650%_)
                            (let ()
                              (_%recur124648%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124650%_))))
                            (let ()
                              (error '"cannot eval module"
                                     _%obj124644%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124624%_)
        (let _%lp124626%_ ((_%e124628%_ _%ctx124624%_))
          (if (or (##structure-instance-of? _%e124628%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124628%_ 'gx#local-context::t))
              (let ()
                (_%lp124626%_
                 (##unchecked-structure-ref _%e124628%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124628%_ 'gx#prelude-context::t)
                  (let () _%e124628%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124640%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124640%_))))
    (define gx#core-context-prelude
      (lambda _g125709_
        (let ((_g125708_ (##length _g125709_)))
          (cond ((##fx= _g125708_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125709_))
                ((##fx= _g125708_ 1)
                 (apply (lambda (_%ctx124642%_)
                          (gx#core-context-prelude__% _%ctx124642%_))
                        _g125709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125709_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124615%_)
        (let ((_%$e124617%_ (hash-get gx#__module-registry _%ctx124615%_)))
          (if _%$e124617%_
              _%$e124617%_
              (let ((_%pre124621%_
                     (let ((__obj125700
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
                       (gx#prelude-context:::init! __obj125700 _%ctx124615%_)
                       __obj125700)))
                (hash-put! gx#__module-registry _%ctx124615%_ _%pre124621%_)
                _%pre124621%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124487%_ _%reload?124488%_)
        (letrec ((_%import-source124490%_
                  (lambda (_%path124579%_)
                    (if (member _%path124579%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124579%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125710_ (gx#core-read-module _%path124579%_)))
                         (begin
                           (let ((_g125711_
                                  (if (##values? _g125710_)
                                      (##vector-length _g125710_)
                                      1)))
                             (if (not (##fx= _g125711_ 4))
                                 (error "Context expects 4 values" _g125711_)))
                           (let ((_%pre124582%_ (##vector-ref _g125710_ 0))
                                 (_%id124583%_ (##vector-ref _g125710_ 1))
                                 (_%ns124584%_ (##vector-ref _g125710_ 2))
                                 (_%body124585%_ (##vector-ref _g125710_ 3)))
                             (let* ((_%prelude124595%_
                                     (if (##structure-instance-of?
                                          _%pre124582%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124582%_)
                                         (if (##structure-instance-of?
                                              _%pre124582%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124582%_))
                                             (if (string? _%pre124582%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124582%_)))
                                                 (if (not _%pre124582%_)
                                                     (let ((_%$e124591%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124591%_
                                                           _%$e124591%_
                                                           (let ((__obj125701
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
                     (gx#prelude-context:::init! __obj125701 '#f)
                     __obj125701)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"cannot import module; unknown prelude"
                                                              _%rpath124487%_
                                                              _%pre124582%_)))))))
                                    (_%ctx124597%_
                                     (let ((__obj125702
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
                                        __obj125702
                                        _%id124583%_
                                        _%prelude124595%_
                                        _%ns124584%_
                                        _%path124579%_)
                                       __obj125702))
                                    (_%body124599%_
                                     (gx#core-expand-module-begin
                                      _%body124585%_
                                      _%ctx124597%_))
                                    (_%body124601%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124599%_)
                                      _%path124579%_
                                      _%ctx124597%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124597%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124601%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124597%_
                                _%body124601%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124579%_
                                _%ctx124597%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124583%_
                                _%ctx124597%_)
                               _%ctx124597%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124579%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124491%_
                  (lambda (_%rpath124507%_)
                    (let* ((_%rpath124508124515%_ _%rpath124507%_)
                           (_%E124510124519%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124508124515%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124511124567%_
                            (lambda (_%refs124522%_ _%origin124523%_)
                              (let ((_%ctx124525%_
                                     (if _%origin124523%_
                                         (gx#core-import-module__%
                                          _%origin124523%_
                                          _%reload?124488%_)
                                         (gx#current-expander-context))))
                                (let _%lp124527%_ ((_%rest124529%_
                                                    _%refs124522%_)
                                                   (_%ctx124530%_
                                                    _%ctx124525%_))
                                  (let* ((_%rest124531124539%_ _%rest124529%_)
                                         (_%else124533124547%_
                                          (lambda () _%ctx124530%_))
                                         (_%K124535124555%_
                                          (lambda (_%rest124550%_ _%id124551%_)
                                            (let ((_%bind124553%_
                                                   (gx#resolve-identifier__%
                                                    _%id124551%_
                                                    '0
                                                    _%ctx124530%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124553%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124553%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124527%_
                                                   _%rest124550%_
                                                   (##unchecked-structure-ref
                                                    _%bind124553%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124507%_
                                                         _%id124551%_
                                                         _%bind124553%_))))))
                                    (if (##pair? _%rest124531124539%_)
                                        (let ((_%hd124536124558%_
                                               (##car _%rest124531124539%_))
                                              (_%tl124537124560%_
                                               (##cdr _%rest124531124539%_)))
                                          (let* ((_%id124563%_
                                                  _%hd124536124558%_)
                                                 (_%rest124565%_
                                                  _%tl124537124560%_))
                                            (_%K124535124555%_
                                             _%rest124565%_
                                             _%id124563%_)))
                                        (_%else124533124547%_))))))))
                      (if (##pair? _%rpath124508124515%_)
                          (let ((_%hd124512124570%_
                                 (##car _%rpath124508124515%_))
                                (_%tl124513124572%_
                                 (##cdr _%rpath124508124515%_)))
                            (let* ((_%origin124575%_ _%hd124512124570%_)
                                   (_%refs124577%_ _%tl124513124572%_))
                              (_%K124511124567%_
                               _%refs124577%_
                               _%origin124575%_)))
                          (_%E124510124519%_))))))
          (let ((_%$e124493%_
                 (if (not _%reload?124488%_)
                     (hash-get gx#__module-registry _%rpath124487%_)
                     '#f)))
            (if _%$e124493%_
                _%$e124493%_
                (if (list? _%rpath124487%_)
                    (let () (_%import-submodule124491%_ _%rpath124487%_))
                    (if (gx#core-library-module-path? _%rpath124487%_)
                        (let ((_%ctx124498%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124487%_)
                                _%reload?124488%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124487%_
                           _%ctx124498%_)
                          _%ctx124498%_)
                        (let ()
                          (let* ((_%npath124501%_
                                  (path-normalize _%rpath124487%_))
                                 (_%$e124503%_
                                  (if (not _%reload?124488%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath124501%_)
                                      '#f)))
                            (if _%$e124503%_
                                _%$e124503%_
                                (let ()
                                  (_%import-source124490%_
                                   _%npath124501%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124608%_)
        (let ((_%reload?124610%_ '#f))
          (gx#core-import-module__% _%rpath124608%_ _%reload?124610%_))))
    (define gx#core-import-module
      (lambda _g125713_
        (let ((_g125712_ (##length _g125713_)))
          (cond ((##fx= _g125712_ 1)
                 (apply (lambda (_%rpath124608%_)
                          (gx#core-import-module__0 _%rpath124608%_))
                        _g125713_))
                ((##fx= _g125712_ 2)
                 (apply (lambda (_%rpath124612%_ _%reload?124613%_)
                          (gx#core-import-module__%
                           _%rpath124612%_
                           _%reload?124613%_))
                        _g125713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125713_))))))
    (define gx#core-read-module
      (lambda (_%path124476%_)
        (__with-catch
         (lambda (_%exn124478%_)
           (if (and (datum-parsing-exception? _%exn124478%_)
                    (eq? (datum-parsing-exception-filepos _%exn124478%_) '0))
               (gx#core-read-module/lang _%path124476%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124476%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124480124482%_)
                      (display-exception _%exn124478%_ _%g124480124482%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124476%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124328%_)
        (let _%lp124330%_ ((_%body124332%_
                            (read-syntax-from-file _%path124328%_))
                           (_%pre124333%_ '#f)
                           (_%ns124334%_ '#f)
                           (_%pkg124335%_ '#f))
          (let* ((_%e124336124360%_ _%body124332%_)
                 (_%E124352124386%_
                  (lambda ()
                    (let ((_g125714_
                           (if _%pkg124335%_
                               (values _%pre124333%_
                                       _%ns124334%_
                                       _%pkg124335%_)
                               (gx#core-read-module-package
                                _%path124328%_
                                _%pre124333%_
                                _%ns124334%_))))
                      (begin
                        (let ((_g125715_
                               (if (##values? _g125714_)
                                   (##vector-length _g125714_)
                                   1)))
                          (if (not (##fx= _g125715_ 3))
                              (error "Context expects 3 values" _g125715_)))
                        (let ((_%pre124364%_ (##vector-ref _g125714_ 0))
                              (_%ns124365%_ (##vector-ref _g125714_ 1))
                              (_%pkg124366%_ (##vector-ref _g125714_ 2)))
                          (let* ((_%prelude124372%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124364%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre124364%_))
                                      (if (gx#core-library-module-path?
                                           _%pre124364%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre124364%_))
                                          (if (gx#stx-string? _%pre124364%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre124364%_
                                                 _%path124328%_))
                                              (let ()
                                                (gx#stx-e _%pre124364%_))))))
                                 (_%path-id124374%_
                                  (gx#core-module-path->namespace
                                   _%path124328%_))
                                 (_%pkg-id124376%_
                                  (if _%pkg124366%_
                                      (string-append
                                       _%pkg124366%_
                                       '"/"
                                       _%path-id124374%_)
                                      _%path-id124374%_))
                                 (_%module-id124378%_
                                  (string->symbol _%pkg-id124376%_))
                                 (_%module-ns124383%_
                                  (if (eq? _%ns124365%_ '#!void)
                                      '#f
                                      (let ((_%$e124380%_ _%ns124365%_))
                                        (if _%$e124380%_
                                            _%$e124380%_
                                            _%pkg-id124376%_)))))
                            (values _%prelude124372%_
                                    _%module-id124378%_
                                    _%module-ns124383%_
                                    _%body124332%_)))))))
                 (_%E124345124418%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124336124360%_)
                        (let ((_%e124353124390%_
                               (gx#syntax-e _%e124336124360%_)))
                          (let ((_%hd124354124393%_ (##car _%e124353124390%_))
                                (_%tl124355124395%_ (##cdr _%e124353124390%_)))
                            (if (eq? (gx#stx-e _%hd124354124393%_) 'package:)
                                (if (gx#stx-pair? _%tl124355124395%_)
                                    (let ((_%e124356124398%_
                                           (gx#syntax-e _%tl124355124395%_)))
                                      (let ((_%hd124357124401%_
                                             (##car _%e124356124398%_))
                                            (_%tl124358124403%_
                                             (##cdr _%e124356124398%_)))
                                        (let* ((_%pkg124406%_
                                                _%hd124357124401%_)
                                               (_%rest124408%_
                                                _%tl124358124403%_))
                                          (if '#t
                                              (let ((_%pkg124416%_
                                                     (if (gx#identifier?
                                                          _%pkg124406%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg124406%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124406%_)
                         (gx#stx-false? _%pkg124406%_))
                     (let () (gx#stx-e _%pkg124406%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg124406%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124330%_
                                                 _%rest124408%_
                                                 _%pre124333%_
                                                 _%ns124334%_
                                                 _%pkg124416%_))
                                              (_%E124352124386%_)))))
                                    (_%E124352124386%_))
                                (_%E124352124386%_))))
                        (_%E124352124386%_))))
                 (_%E124338124448%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124336124360%_)
                        (let ((_%e124346124422%_
                               (gx#syntax-e _%e124336124360%_)))
                          (let ((_%hd124347124425%_ (##car _%e124346124422%_))
                                (_%tl124348124427%_ (##cdr _%e124346124422%_)))
                            (if (eq? (gx#stx-e _%hd124347124425%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124348124427%_)
                                    (let ((_%e124349124430%_
                                           (gx#syntax-e _%tl124348124427%_)))
                                      (let ((_%hd124350124433%_
                                             (##car _%e124349124430%_))
                                            (_%tl124351124435%_
                                             (##cdr _%e124349124430%_)))
                                        (let* ((_%ns124438%_
                                                _%hd124350124433%_)
                                               (_%rest124440%_
                                                _%tl124351124435%_))
                                          (if '#t
                                              (let ((_%ns124446%_
                                                     (if (gx#identifier?
                                                          _%ns124438%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns124438%_)))
                                                         (if (gx#stx-string?
                                                              _%ns124438%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns124438%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124438%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns124438%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124330%_
                                                 _%rest124440%_
                                                 _%pre124333%_
                                                 _%ns124446%_
                                                 _%pkg124335%_))
                                              (_%E124345124418%_)))))
                                    (_%E124345124418%_))
                                (_%E124345124418%_))))
                        (_%E124345124418%_))))
                 (_%E124337124472%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124336124360%_)
                        (let ((_%e124339124452%_
                               (gx#syntax-e _%e124336124360%_)))
                          (let ((_%hd124340124455%_ (##car _%e124339124452%_))
                                (_%tl124341124457%_ (##cdr _%e124339124452%_)))
                            (if (eq? (gx#stx-e _%hd124340124455%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124341124457%_)
                                    (let ((_%e124342124460%_
                                           (gx#syntax-e _%tl124341124457%_)))
                                      (let ((_%hd124343124463%_
                                             (##car _%e124342124460%_))
                                            (_%tl124344124465%_
                                             (##cdr _%e124342124460%_)))
                                        (let* ((_%prelude124468%_
                                                _%hd124343124463%_)
                                               (_%rest124470%_
                                                _%tl124344124465%_))
                                          (if '#t
                                              (_%lp124330%_
                                               _%rest124470%_
                                               _%prelude124468%_
                                               _%ns124334%_
                                               _%pkg124335%_)
                                              (_%E124338124448%_)))))
                                    (_%E124338124448%_))
                                (_%E124338124448%_))))
                        (_%E124338124448%_)))))
            (_%E124337124472%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124150%_)
        (letrec ((_%default-read-module-body124152%_
                  (lambda (_%inp124320%_)
                    (let _%lp124322%_ ((_%body124324%_ '()))
                      (let ((_%next124326%_ (read-syntax__% _%inp124320%_)))
                        (if (eof-object? _%next124326%_)
                            (reverse _%body124324%_)
                            (_%lp124322%_
                             (cons _%next124326%_ _%body124324%_)))))))
                 (_%read-body124153%_
                  (lambda (_%inp124238%_
                           _%pre124239%_
                           _%ns124240%_
                           _%pkg124241%_
                           _%args124242%_)
                    (let ((_g125716_
                           (if _%pkg124241%_
                               (values _%pre124239%_
                                       _%ns124240%_
                                       _%pkg124241%_)
                               (gx#core-read-module-package
                                _%path124150%_
                                _%pre124239%_
                                _%ns124240%_))))
                      (begin
                        (let ((_g125717_
                               (if (##values? _g125716_)
                                   (##vector-length _g125716_)
                                   1)))
                          (if (not (##fx= _g125717_ 3))
                              (error "Context expects 3 values" _g125717_)))
                        (let ((_%pre124244%_ (##vector-ref _g125716_ 0))
                              (_%ns124245%_ (##vector-ref _g125716_ 1))
                              (_%pkg124246%_ (##vector-ref _g125716_ 2)))
                          (let* ((_%prelude124248%_
                                  (gx#import-module__0 _%pre124244%_))
                                 (_%read-module-body124303%_
                                  (let ((_%$e124294%_
                                         (__find (lambda (_%e124249124251%_)
                                                   (let* ((_%g124253124263%_
                                                           _%e124249124251%_)
                                                          (_%else124255124271%_
                                                           (lambda () '#f))
                                                          (_%K124257124275%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124253124263%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124258124278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124253124263%_
                          '1
                          '#f
                          '#f))
                        (_%e124259124281%_
                         (##unchecked-structure-ref
                          _%g124253124263%_
                          '2
                          '#f
                          '#f))
                        (_%e124260124284%_
                         (##unchecked-structure-ref
                          _%g124253124263%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124260124284%_ '1)
                       (let ((_%e124261124287%_
                              (##unchecked-structure-ref
                               _%g124253124263%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124289124291%_)
                                (eq? _%g124289124291%_ 'read-module-body))
                              _%e124261124287%_)
                             (_%K124257124275%_)
                             (_%else124255124271%_)))
                       (_%else124255124271%_)))
                 (_%else124255124271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124248%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124294%_
                                        ((lambda (_%xport124297%_)
                                           (let ((_%proc124300%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124297%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124300%_)
                                                 _%proc124300%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124150%_
                                                  _%pre124244%_
                                                  _%proc124300%_))))
                                         _%$e124294%_)
                                        (let ()
                                          _%default-read-module-body124152%_))))
                                 (_%path-id124305%_
                                  (gx#core-module-path->namespace
                                   _%path124150%_))
                                 (_%pkg-id124307%_
                                  (if _%pkg124246%_
                                      (string-append
                                       _%pkg124246%_
                                       '"/"
                                       _%path-id124305%_)
                                      _%path-id124305%_))
                                 (_%module-id124309%_
                                  (string->symbol _%pkg-id124307%_))
                                 (_%module-ns124314%_
                                  (let ((_%$e124311%_ _%ns124245%_))
                                    (if _%$e124311%_
                                        _%$e124311%_
                                        _%pkg-id124307%_)))
                                 (_%body124317%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124303%_
                                      _%inp124238%_))
                                   gx#current-module-reader-path
                                   _%path124150%_
                                   gx#current-module-reader-args
                                   _%args124242%_)))
                            (values _%prelude124248%_
                                    _%module-id124309%_
                                    _%module-ns124314%_
                                    _%body124317%_)))))))
                 (_%string-e124154%_
                  (lambda (_%obj124232%_ _%what124233%_)
                    (if (string? _%obj124232%_)
                        (let () _%obj124232%_)
                        (if (symbol? _%obj124232%_)
                            (let () (symbol->string _%obj124232%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what124233%_)
                               _%path124150%_
                               _%obj124232%_))))))
                 (_%read-lang-args124155%_
                  (lambda (_%inp124187%_ _%args124188%_)
                    (let* ((_%args124189124197%_ _%args124188%_)
                           (_%else124191124205%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124150%_)))
                           (_%K124193124220%_
                            (lambda (_%args124208%_ _%prelude124209%_)
                              (let* ((_%pkg124211%_
                                      (pgetq__0 'package: _%args124208%_))
                                     (_%pkg124213%_
                                      (if _%pkg124211%_
                                          (_%string-e124154%_
                                           _%pkg124211%_
                                           '"package")
                                          '#f))
                                     (_%ns124215%_
                                      (pgetq__0 'namespace: _%args124208%_))
                                     (_%ns124217%_
                                      (if _%ns124215%_
                                          (_%string-e124154%_
                                           _%ns124215%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124153%_
                                 _%inp124187%_
                                 _%prelude124209%_
                                 _%ns124217%_
                                 _%pkg124213%_
                                 _%args124208%_)))))
                      (if (##pair? _%args124189124197%_)
                          (let ((_%hd124194124223%_
                                 (##car _%args124189124197%_))
                                (_%tl124195124225%_
                                 (##cdr _%args124189124197%_)))
                            (let* ((_%prelude124228%_ _%hd124194124223%_)
                                   (_%args124230%_ _%tl124195124225%_))
                              (_%K124193124220%_
                               _%args124230%_
                               _%prelude124228%_)))
                          (_%else124191124205%_)))))
                 (_%read-lang124156%_
                  (lambda (_%inp124161%_)
                    (let* ((_%head124163%_ (read-line _%inp124161%_))
                           (_%$e124165%_
                            (string-index__0 _%head124163%_ '#\space)))
                      (if _%$e124165%_
                          ((lambda (_%ix124168%_)
                             (let ((_%lang124170%_
                                    (substring
                                     _%head124163%_
                                     '0
                                     _%ix124168%_)))
                               (if (equal? _%lang124170%_ '"#lang")
                                   (let* ((_%rest124172%_
                                           (substring
                                            _%head124163%_
                                            (##fx+ _%ix124168%_ '1)
                                            (string-length _%head124163%_)))
                                          (_%args124183%_
                                           (__with-catch
                                            (lambda (_%g124173124175%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124150%_
                                               _%g124173124175%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124172%_
                                               (lambda (_%g124178124180%_)
                                                 (read-all
                                                  _%g124178124180%_
                                                  read)))))))
                                     (_%read-lang-args124155%_
                                      _%inp124161%_
                                      _%args124183%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124150%_))))
                           _%$e124165%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path124150%_))))))
                 (_%read-e124157%_
                  (lambda (_%inp124159%_)
                    (if (eq? (peek-char _%inp124159%_) '#\#)
                        (_%read-lang124156%_ _%inp124159%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124150%_)))))
          (gx#call-with-input-source-file _%path124150%_ _%read-e124157%_))))
    (define gx#core-read-module-package
      (lambda (_%path124098%_ _%pre124099%_ _%ns124100%_)
        (letrec ((_%string-e124102%_
                  (lambda (_%e124145%_)
                    (if (symbol? _%e124145%_)
                        (let () (symbol->string _%e124145%_))
                        (if (string? _%e124145%_)
                            (let () _%e124145%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e124145%_)))))))
          (let _%lp124104%_ ((_%dir124106%_ (path-directory _%path124098%_))
                             (_%pkg-path124107%_ '()))
            (let ((_%gerbil.pkg124109%_
                   (path-expand '"gerbil.pkg" _%dir124106%_)))
              (if (##file-exists? _%gerbil.pkg124109%_)
                  (let ((_%plist124111%_
                         (gx#core-library-package-plist__% _%dir124106%_ '#t)))
                    (if (null? _%plist124111%_)
                        (let ((_%pkg124114%_
                               (if (not (null? _%pkg-path124107%_))
                                   (string-join _%pkg-path124107%_ '"/")
                                   '#f)))
                          (values _%pre124099%_ _%ns124100%_ _%pkg124114%_))
                        (if (list? _%plist124111%_)
                            (let ()
                              (let* ((_%root124117%_
                                      (pgetq__0 'package: _%plist124111%_))
                                     (_%pkg124121%_
                                      (let ((_%pkg-path124119%_
                                             (if _%root124117%_
                                                 (cons (_%string-e124102%_
                                                        _%root124117%_)
                                                       _%pkg-path124107%_)
                                                 _%pkg-path124107%_)))
                                        (if (not (null? _%pkg-path124119%_))
                                            (string-join
                                             _%pkg-path124119%_
                                             '"/")
                                            '#f)))
                                     (_%ns124128%_
                                      (let ((_%ns124126%_
                                             (let ((_%$e124123%_ _%ns124100%_))
                                               (if _%$e124123%_
                                                   _%$e124123%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist124111%_)))))
                                        (if _%ns124126%_
                                            (_%string-e124102%_ _%ns124126%_)
                                            '#f)))
                                     (_%pre124133%_
                                      (let ((_%$e124130%_ _%pre124099%_))
                                        (if _%$e124130%_
                                            _%$e124130%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist124111%_)))))
                                (values _%pre124133%_
                                        _%ns124128%_
                                        _%pkg124121%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist124111%_)))))
                  (let ((_%dir*124137%_
                         (path-strip-trailing-directory-separator
                          _%dir124106%_)))
                    (if (or (__string-empty? _%dir*124137%_)
                            (equal? _%dir124106%_ _%dir*124137%_))
                        (values _%pre124099%_ _%ns124100%_ '#f)
                        (let ((_%xpath124142%_
                               (path-strip-directory _%dir*124137%_))
                              (_%xdir124143%_ (path-directory _%dir*124137%_)))
                          (_%lp124104%_
                           _%xdir124143%_
                           (cons _%xpath124142%_ _%pkg-path124107%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124096%_)
        (path-strip-extension (path-strip-directory _%path124096%_))))
    (define gx#core-module-path->id
      (lambda (_%path124094%_)
        (##string->symbol (gx#core-module-path->namespace _%path124094%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124073%_ _%rel124074%_)
        (let* ((_%path124076%_ (gx#stx-e _%stx-path124073%_))
               (_%path124078%_
                (if (__string-empty? (path-extension _%path124076%_))
                    (##string-append _%path124076%_ '".ss")
                    _%path124076%_)))
          (gx#core-resolve-path__%
           _%path124078%_
           (let ((_%$e124081%_ (gx#stx-source _%stx-path124073%_)))
             (if _%$e124081%_ _%$e124081%_ _%rel124074%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124087%_)
        (let ((_%rel124089%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124087%_ _%rel124089%_))))
    (define gx#core-resolve-module-path
      (lambda _g125719_
        (let ((_g125718_ (##length _g125719_)))
          (cond ((##fx= _g125718_ 1)
                 (apply (lambda (_%stx-path124087%_)
                          (gx#core-resolve-module-path__0 _%stx-path124087%_))
                        _g125719_))
                ((##fx= _g125718_ 2)
                 (apply (lambda (_%stx-path124091%_ _%rel124092%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path124091%_
                           _%rel124092%_))
                        _g125719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125719_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123958%_)
        (let* ((_%spath123960%_ (symbol->string (gx#stx-e _%libpath123958%_)))
               (_%spath123962%_
                (substring
                 _%spath123960%_
                 '1
                 (##string-length _%spath123960%_)))
               (_%ext123964%_ (path-extension _%spath123962%_))
               (_%ssi123966%_
                (if (__string-empty? _%ext123964%_)
                    (##string-append _%spath123962%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123962%_)
                     '".ssi")))
               (_%srcs123970%_
                (if (__string-empty? _%ext123964%_)
                    (##map (lambda (_%ext123968%_)
                             (string-append _%spath123962%_ _%ext123968%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123962%_ '()))))
          (let _%lp123973%_ ((_%rest123975%_ (load-path)))
            (let* ((_%rest123976123985%_ _%rest123975%_)
                   (_%E123979123989%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123976123985%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123981124060%_
                     (lambda (_%rest124000%_ _%dir124001%_)
                       (letrec ((_%resolve124003%_
                                 (lambda (_%ssi124016%_ _%srcs124017%_)
                                   (let ((_%compiled-path124019%_
                                          (path-expand
                                           _%ssi124016%_
                                           _%dir124001%_)))
                                     (if (##file-exists?
                                          _%compiled-path124019%_)
                                         (path-normalize
                                          _%compiled-path124019%_)
                                         (let _%lpr124021%_ ((_%rest-src124023%_
                                                              _%srcs124017%_))
                                           (let* ((_%rest-src124024124032%_
                                                   _%rest-src124023%_)
                                                  (_%else124026124040%_
                                                   (lambda ()
                                                     (_%lp123973%_
                                                      _%rest124000%_)))
                                                  (_%K124028124048%_
                                                   (lambda (_%rest-src124043%_
                                                            _%src124044%_)
                                                     (let ((_%src-path124046%_
                                                            (path-expand
                                                             _%src124044%_
                                                             _%dir124001%_)))
                                                       (if (##file-exists?
                                                            _%src-path124046%_)
                                                           (path-normalize
                                                            _%src-path124046%_)
                                                           (_%lpr124021%_
                                                            _%rest-src124043%_))))))
                                             (if (##pair? _%rest-src124024124032%_)
                                                 (let ((_%hd124029124051%_
                                                        (##car _%rest-src124024124032%_))
                                                       (_%tl124030124053%_
                                                        (##cdr _%rest-src124024124032%_)))
                                                   (let* ((_%src124056%_
                                                           _%hd124029124051%_)
                                                          (_%rest-src124058%_
                                                           _%tl124030124053%_))
                                                     (_%K124028124048%_
                                                      _%rest-src124058%_
                                                      _%src124056%_)))
                                                 (_%else124026124040%_)))))))))
                         (let ((_%$e124005%_
                                (gx#core-library-package-path-prefix
                                 _%dir124001%_)))
                           (if _%$e124005%_
                               ((lambda (_%prefix124008%_)
                                  (if (string-prefix?
                                       _%prefix124008%_
                                       _%spath123962%_)
                                      (let ((_%ssi124012%_
                                             (substring
                                              _%ssi123966%_
                                              (string-length _%prefix124008%_)
                                              (##string-length _%ssi123966%_)))
                                            (_%srcs124013%_
                                             (##map (lambda (_%src124010%_)
                                                      (substring
                                                       _%src124010%_
                                                       (string-length
                                                        _%prefix124008%_)
                                                       (string-length
                                                        _%src124010%_)))
                                                    _%srcs123970%_)))
                                        (_%resolve124003%_
                                         _%ssi124012%_
                                         _%srcs124013%_))
                                      (_%lp123973%_ _%rest124000%_)))
                                _%$e124005%_)
                               (let ()
                                 (_%resolve124003%_
                                  _%ssi123966%_
                                  _%srcs123970%_)))))))
                    (_%K123980123994%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123958%_))))
                (let ((_%try-match123978123997%_
                       (lambda ()
                         (if (##null? _%rest123976123985%_)
                             (_%K123980123994%_)
                             (_%E123979123989%_)))))
                  (if (##pair? _%rest123976123985%_)
                      (let ((_%tl123983124065%_ (##cdr _%rest123976123985%_))
                            (_%hd123982124063%_ (##car _%rest123976123985%_)))
                        (let ((_%dir124068%_ _%hd123982124063%_)
                              (_%rest124070%_ _%tl123983124065%_))
                          (_%K123981124060%_ _%rest124070%_ _%dir124068%_)))
                      (_%try-match123978123997%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123926%_)
        (letrec ((_%resolve123928%_
                  (lambda (_%path123949%_ _%base123950%_)
                    (let ((_%$e123952%_
                           (string-rindex__0 _%base123950%_ '#\/)))
                      (if _%$e123952%_
                          ((lambda (_%idx123955%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123950%_ '0 _%idx123955%_)
                                '"/"
                                _%path123949%_))))
                           _%$e123952%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123949%_)))))))))
          (let ((_%spath123930%_ (symbol->string (gx#stx-e _%modpath123926%_)))
                (_%mod123931%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123931%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123926%_))
            (let ((_%mpath123933%_
                   (symbol->string
                    (##structure-ref
                     _%mod123931%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123935%_ ((_%spath123937%_ _%spath123930%_)
                                 (_%mpath123938%_ _%mpath123933%_))
                (if (string-prefix? '"../" _%spath123937%_)
                    (let ((_%$e123941%_
                           (string-rindex__0 _%mpath123938%_ '#\/)))
                      (if _%$e123941%_
                          ((lambda (_%idx123944%_)
                             (_%lp123935%_
                              (substring
                               _%spath123937%_
                               '3
                               (string-length _%spath123937%_))
                              (substring _%mpath123938%_ '0 _%idx123944%_)))
                           _%$e123941%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"cannot resolve relative module path; illegal traversal"
                             _%modpath123926%_))))
                    (if (string-prefix? '"./" _%spath123937%_)
                        (let ()
                          (_%lp123935%_
                           (substring
                            _%spath123937%_
                            '2
                            (string-length _%spath123937%_))
                           _%mpath123938%_))
                        (let ()
                          (_%resolve123928%_
                           _%spath123937%_
                           _%mpath123938%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123918%_)
        (let ((_%$e123920%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123918%_))))
          (if _%$e123920%_
              ((lambda (_%pkg123923%_)
                 (##string-append (symbol->string _%pkg123923%_) '"/"))
               _%$e123920%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123888%_ _%exists?123889%_)
        (let ((_%$e123891%_ (hash-get gx#__module-pkg-cache _%dir123888%_)))
          (if _%$e123891%_
              (values _%$e123891%_)
              (let ()
                (let* ((_%gerbil.pkg123895%_
                        (path-expand '"gerbil.pkg" _%dir123888%_))
                       (_%plist123905%_
                        (if (or _%exists?123889%_
                                (##file-exists? _%gerbil.pkg123895%_))
                            (let ((_%e123900%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123895%_
                                    read)))
                              (if (eof-object? _%e123900%_)
                                  (let () '())
                                  (if (list? _%e123900%_)
                                      (let () _%e123900%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123895%_
                                         _%e123900%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123888%_
                   _%plist123905%_)
                  _%plist123905%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123911%_)
        (let ((_%exists?123913%_ '#f))
          (gx#core-library-package-plist__% _%dir123911%_ _%exists?123913%_))))
    (define gx#core-library-package-plist
      (lambda _g125721_
        (let ((_g125720_ (##length _g125721_)))
          (cond ((##fx= _g125720_ 1)
                 (apply (lambda (_%dir123911%_)
                          (gx#core-library-package-plist__0 _%dir123911%_))
                        _g125721_))
                ((##fx= _g125720_ 2)
                 (apply (lambda (_%dir123915%_ _%exists?123916%_)
                          (gx#core-library-package-plist__%
                           _%dir123915%_
                           _%exists?123916%_))
                        _g125721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125721_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123885%_)
        (gx#core-special-module-path? _%stx123885%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123883%_)
        (gx#core-special-module-path? _%stx123883%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123878%_ _%char123879%_)
        (if (gx#identifier? _%stx123878%_)
            (if (interned-symbol? (gx#stx-e _%stx123878%_))
                (let ((_%str123881%_
                       (symbol->string (gx#stx-e _%stx123878%_))))
                  (if (##fx> (##string-length _%str123881%_) '1)
                      (eq? (string-ref _%str123881%_ '0) _%char123879%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123872%_)
        (gx#core-bound-identifier?__%
         _%stx123872%_
         (lambda (_%g123873123875%_)
           (gx#expander-binding?__% _%g123873123875%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123866%_)
        (gx#core-bound-identifier?__%
         _%stx123866%_
         (lambda (_%g123867123869%_)
           (gx#expander-binding?__% _%g123867123869%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123853%_)
        (letrec ((_%module-prelude?123855%_
                  (lambda (_%e123861%_)
                    (let ((_%$e123863%_
                           (##structure-instance-of?
                            _%e123861%_
                            'gx#module-context::t)))
                      (if _%$e123863%_
                          _%$e123863%_
                          (##structure-instance-of?
                           _%e123861%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123853%_
           (lambda (_%g123856123858%_)
             (gx#expander-binding?__%
              _%g123856123858%_
              _%module-prelude?123855%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123783%_ _%ctx123784%_ _%force-weak?123785%_)
        (let* ((_%in123786123795%_ _%in123783%_)
               (_%E123788123799%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123786123795%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123789123812%_
                (lambda (_%weak?123802%_
                         _%phi123803%_
                         _%key123804%_
                         _%source123805%_)
                  (gx#core-bind!__%
                   _%key123804%_
                   (let ((_%e123807%_
                          (gx#core-resolve-module-export _%source123805%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123807%_ '1 '#f '#f)
                      _%key123804%_
                      _%phi123803%_
                      _%e123807%_
                      (##unchecked-structure-ref _%source123805%_ '1 '#f '#f)
                      (let ((_%$e123809%_ _%force-weak?123785%_))
                        (if _%$e123809%_ _%$e123809%_ _%weak?123802%_))))
                   gx#core-context-rebind?
                   _%phi123803%_
                   _%ctx123784%_))))
          (if (##structure-direct-instance-of?
               _%in123786123795%_
               'gx#module-import::t)
              (let* ((_%e123790123815%_
                      (##unchecked-structure-ref
                       _%in123786123795%_
                       '1
                       '#f
                       '#f))
                     (_%source123818%_ _%e123790123815%_)
                     (_%e123791123820%_
                      (##unchecked-structure-ref
                       _%in123786123795%_
                       '2
                       '#f
                       '#f))
                     (_%key123823%_ _%e123791123820%_)
                     (_%e123792123825%_
                      (##unchecked-structure-ref
                       _%in123786123795%_
                       '3
                       '#f
                       '#f))
                     (_%phi123828%_ _%e123792123825%_)
                     (_%e123793123830%_
                      (##unchecked-structure-ref
                       _%in123786123795%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123833%_ _%e123793123830%_))
                (_%K123789123812%_
                 _%weak?123833%_
                 _%phi123828%_
                 _%key123823%_
                 _%source123818%_))
              (_%E123788123799%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123838%_)
        (let* ((_%ctx123840%_ (gx#current-expander-context))
               (_%force-weak?123842%_ '#f))
          (gx#core-bind-import!__%
           _%in123838%_
           _%ctx123840%_
           _%force-weak?123842%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123844%_ _%ctx123845%_)
        (let ((_%force-weak?123847%_ '#f))
          (gx#core-bind-import!__%
           _%in123844%_
           _%ctx123845%_
           _%force-weak?123847%_))))
    (define gx#core-bind-import!
      (lambda _g125723_
        (let ((_g125722_ (##length _g125723_)))
          (cond ((##fx= _g125722_ 1)
                 (apply (lambda (_%in123838%_)
                          (gx#core-bind-import!__0 _%in123838%_))
                        _g125723_))
                ((##fx= _g125722_ 2)
                 (apply (lambda (_%in123844%_ _%ctx123845%_)
                          (gx#core-bind-import!__1 _%in123844%_ _%ctx123845%_))
                        _g125723_))
                ((##fx= _g125722_ 3)
                 (apply (lambda (_%in123849%_
                                 _%ctx123850%_
                                 _%force-weak?123851%_)
                          (gx#core-bind-import!__%
                           _%in123849%_
                           _%ctx123850%_
                           _%force-weak?123851%_))
                        _g125723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125723_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123769%_ _%ctx123770%_)
        (gx#core-bind-import!__% _%in123769%_ _%ctx123770%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123775%_)
        (let ((_%ctx123777%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123775%_ _%ctx123777%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125725_
        (let ((_g125724_ (##length _g125725_)))
          (cond ((##fx= _g125724_ 1)
                 (apply (lambda (_%in123775%_)
                          (gx#core-bind-weak-import!__0 _%in123775%_))
                        _g125725_))
                ((##fx= _g125724_ 2)
                 (apply (lambda (_%in123779%_ _%ctx123780%_)
                          (gx#core-bind-weak-import!__%
                           _%in123779%_
                           _%ctx123780%_))
                        _g125725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125725_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123660%_)
        (letrec ((_%subst123662%_
                  (lambda (_%key123708%_)
                    (let* ((_%key123709123717%_ _%key123708%_)
                           (_%else123711123725%_ (lambda () _%key123708%_))
                           (_%K123713123756%_
                            (lambda (_%mark123728%_ _%id123729%_)
                              (let* ((_%mark123730123736%_ _%mark123728%_)
                                     (_%E123732123740%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123730123736%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123733123748%_
                                      (lambda (_%subst123743%_)
                                        (let ((_%$e123745%_
                                               (if _%subst123743%_
                                                   (hash-get
                                                    _%subst123743%_
                                                    _%id123729%_)
                                                   '#f)))
                                          (if _%$e123745%_
                                              _%$e123745%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123708%_))))))
                                (if (##structure-instance-of?
                                     _%mark123730123736%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123734123751%_
                                            (##unchecked-structure-ref
                                             _%mark123730123736%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123754%_ _%e123734123751%_))
                                      (_%K123733123748%_ _%subst123754%_))
                                    (_%E123732123740%_))))))
                      (if (##pair? _%key123709123717%_)
                          (let ((_%hd123714123759%_
                                 (##car _%key123709123717%_))
                                (_%tl123715123761%_
                                 (##cdr _%key123709123717%_)))
                            (let* ((_%id123764%_ _%hd123714123759%_)
                                   (_%mark123766%_ _%tl123715123761%_))
                              (_%K123713123756%_ _%mark123766%_ _%id123764%_)))
                          (_%else123711123725%_))))))
          (let* ((_%out123663123673%_ _%out123660%_)
                 (_%E123665123677%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123663123673%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123666123684%_
                  (lambda (_%phi123680%_ _%key123681%_ _%ctx123682%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123682%_ _%phi123680%_)
                     (_%subst123662%_ _%key123681%_)))))
            (if (##structure-direct-instance-of?
                 _%out123663123673%_
                 'gx#module-export::t)
                (let* ((_%e123667123687%_
                        (##unchecked-structure-ref
                         _%out123663123673%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123690%_ _%e123667123687%_)
                       (_%e123668123692%_
                        (##unchecked-structure-ref
                         _%out123663123673%_
                         '2
                         '#f
                         '#f))
                       (_%key123695%_ _%e123668123692%_)
                       (_%e123669123697%_
                        (##unchecked-structure-ref
                         _%out123663123673%_
                         '3
                         '#f
                         '#f))
                       (_%phi123700%_ _%e123669123697%_)
                       (_%e123670123702%_
                        (##unchecked-structure-ref
                         _%out123663123673%_
                         '4
                         '#f
                         '#f))
                       (_%e123671123705%_
                        (##unchecked-structure-ref
                         _%out123663123673%_
                         '5
                         '#f
                         '#f)))
                  (_%K123666123684%_
                   _%phi123700%_
                   _%key123695%_
                   _%ctx123690%_))
                (_%E123665123677%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123585%_ _%rename123586%_ _%dphi123587%_)
        (let* ((_%out123588123598%_ _%out123585%_)
               (_%E123590123602%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123588123598%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123591123614%_
                (lambda (_%weak?123605%_
                         _%name123606%_
                         _%phi123607%_
                         _%key123608%_
                         _%ctx123609%_)
                  (##structure
                   gx#module-import::t
                   _%out123585%_
                   (let ((_%$e123611%_ _%rename123586%_))
                     (if _%$e123611%_ _%$e123611%_ _%name123606%_))
                   (fx+ _%phi123607%_ _%dphi123587%_)
                   _%weak?123605%_))))
          (if (##structure-direct-instance-of?
               _%out123588123598%_
               'gx#module-export::t)
              (let* ((_%e123592123617%_
                      (##unchecked-structure-ref
                       _%out123588123598%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123620%_ _%e123592123617%_)
                     (_%e123593123622%_
                      (##unchecked-structure-ref
                       _%out123588123598%_
                       '2
                       '#f
                       '#f))
                     (_%key123625%_ _%e123593123622%_)
                     (_%e123594123627%_
                      (##unchecked-structure-ref
                       _%out123588123598%_
                       '3
                       '#f
                       '#f))
                     (_%phi123630%_ _%e123594123627%_)
                     (_%e123595123632%_
                      (##unchecked-structure-ref
                       _%out123588123598%_
                       '4
                       '#f
                       '#f))
                     (_%name123635%_ _%e123595123632%_)
                     (_%e123596123637%_
                      (##unchecked-structure-ref
                       _%out123588123598%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123640%_ _%e123596123637%_))
                (_%K123591123614%_
                 _%weak?123640%_
                 _%name123635%_
                 _%phi123630%_
                 _%key123625%_
                 _%ctx123620%_))
              (_%E123590123602%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123645%_)
        (let* ((_%rename123647%_ '#f) (_%dphi123649%_ '0))
          (gx#core-module-export->import__%
           _%out123645%_
           _%rename123647%_
           _%dphi123649%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123651%_ _%rename123652%_)
        (let ((_%dphi123654%_ '0))
          (gx#core-module-export->import__%
           _%out123651%_
           _%rename123652%_
           _%dphi123654%_))))
    (define gx#core-module-export->import
      (lambda _g125727_
        (let ((_g125726_ (##length _g125727_)))
          (cond ((##fx= _g125726_ 1)
                 (apply (lambda (_%out123645%_)
                          (gx#core-module-export->import__0 _%out123645%_))
                        _g125727_))
                ((##fx= _g125726_ 2)
                 (apply (lambda (_%out123651%_ _%rename123652%_)
                          (gx#core-module-export->import__1
                           _%out123651%_
                           _%rename123652%_))
                        _g125727_))
                ((##fx= _g125726_ 3)
                 (apply (lambda (_%out123656%_ _%rename123657%_ _%dphi123658%_)
                          (gx#core-module-export->import__%
                           _%out123656%_
                           _%rename123657%_
                           _%dphi123658%_))
                        _g125727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125727_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123484%_)
        (letrec ((_%make-context123486%_
                  (lambda (_%id123563%_)
                    (let* ((_%super123565%_ (gx#current-expander-context))
                           (_%bind-id123567%_ (gx#stx-e _%id123563%_))
                           (_%mod-id123569%_
                            (if (##structure-instance-of?
                                 _%super123565%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123565%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123567%_)
                                _%bind-id123567%_))
                           (_%ns123571%_ (symbol->string _%mod-id123569%_))
                           (_%path123581%_
                            (if (##structure-instance-of?
                                 _%super123565%_
                                 'gx#module-context::t)
                                (let ((_%path123573%_
                                       (##unchecked-structure-ref
                                        _%super123565%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123573%_)
                                          (null? _%path123573%_))
                                      (let ()
                                        (cons _%bind-id123567%_
                                              _%path123573%_))
                                      (if (not _%path123573%_)
                                          (let () _%bind-id123567%_)
                                          (let ()
                                            (cons _%bind-id123567%_
                                                  (cons _%path123573%_
                                                        '()))))))
                                _%bind-id123567%_))
                           (__obj125703
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
                       __obj125703
                       _%mod-id123569%_
                       _%super123565%_
                       _%ns123571%_
                       _%path123581%_)
                      __obj125703)))
                 (_%valid-module-id?123487%_
                  (lambda (_%id123538%_)
                    (let* ((_%str123540%_ (symbol->string _%id123538%_))
                           (_%len123542%_ (##string-length _%str123540%_)))
                      (if (##fx>= _%len123542%_ '1)
                          (let _%loop123545%_ ((_%index123547%_
                                                (##fx- (##string-length
                                                        _%str123540%_)
                                                       '1)))
                            (if (##fx>= _%index123547%_ '0)
                                (let ((_%c123549%_
                                       (string-ref
                                        _%str123540%_
                                        _%index123547%_)))
                                  (if (or (and (##char>=? _%c123549%_ '#\a)
                                               (##char<=? _%c123549%_ '#\z))
                                          (and (##char>=? _%c123549%_ '#\A)
                                               (##char<=? _%c123549%_ '#\Z))
                                          (and (##char>=? _%c123549%_ '#\0)
                                               (##char<=? _%c123549%_ '#\9))
                                          (##char=? _%c123549%_ '#\_)
                                          (##char=? _%c123549%_ '#\-))
                                      (_%loop123545%_
                                       (##fx- _%index123547%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123488123498%_ _%stx123484%_)
                 (_%E123490123502%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123488123498%_)))
                 (_%E123489123534%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123488123498%_)
                        (let ((_%e123491123506%_
                               (gx#syntax-e _%e123488123498%_)))
                          (let ((_%hd123492123509%_ (##car _%e123491123506%_))
                                (_%tl123493123511%_ (##cdr _%e123491123506%_)))
                            (if (gx#stx-pair? _%tl123493123511%_)
                                (let ((_%e123494123514%_
                                       (gx#syntax-e _%tl123493123511%_)))
                                  (let ((_%hd123495123517%_
                                         (##car _%e123494123514%_))
                                        (_%tl123496123519%_
                                         (##cdr _%e123494123514%_)))
                                    (let* ((_%id123522%_ _%hd123495123517%_)
                                           (_%body123524%_ _%tl123496123519%_))
                                      (if (and (gx#identifier? _%id123522%_)
                                               (gx#stx-list? _%body123524%_))
                                          (if (_%valid-module-id?123487%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123526%_
                                                      (_%make-context123486%_
                                                       _%id123522%_))
                                                     (_%body123528%_
                                                      (gx#core-expand-module-begin
                                                       _%body123524%_
                                                       _%ctx123526%_))
                                                     (_%body123530%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123528%_)
                                                       (gx#stx-source
                                                        _%stx123484%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123526%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123530%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123526%_
                                                 _%body123530%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123522%_
                                                 _%ctx123526%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123522%_)
                                                  _%body123530%_)
                                                 (gx#stx-source
                                                  _%stx123484%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123484%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123490123502%_)))))
                                (_%E123490123502%_))))
                        (_%E123490123502%_)))))
            (_%E123489123534%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123450%_ _%ctx123451%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123454%_
                   (gx#core-expand-head (cons '%%begin-module _%body123450%_)))
                  (_%e123455123462%_ _%stx123454%_)
                  (_%E123457123466%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123454%_)))
                  (_%E123456123480%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123455123462%_)
                         (let ((_%e123458123470%_
                                (gx#syntax-e _%e123455123462%_)))
                           (let ((_%hd123459123473%_ (##car _%e123458123470%_))
                                 (_%tl123460123475%_
                                  (##cdr _%e123458123470%_)))
                             (if (and (gx#identifier? _%hd123459123473%_)
                                      (gx#core-identifier=?
                                       _%hd123459123473%_
                                       '%#begin-module))
                                 (let ((_%body123478%_ _%tl123460123475%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123454%_)
                                           _%body123478%_
                                           (gx#core-expand-module-body
                                            _%body123478%_))
                                       (_%E123457123466%_)))
                                 (_%E123457123466%_))))
                         (_%E123457123466%_)))))
             (_%E123456123480%_)))
         gx#current-expander-context
         _%ctx123451%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123246%_)
        (letrec ((_%expand-special123248%_
                  (lambda (_%hd123377%_ _%K123378%_ _%rest123379%_ _%r123380%_)
                    (let* ((_%e123381123398%_ _%hd123377%_)
                           (_%E123393123402%_
                            (lambda ()
                              (_%K123378%_
                               _%rest123379%_
                               (cons (gx#core-expand-top _%hd123377%_)
                                     _%r123380%_))))
                           (_%E123383123414%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123381123398%_)
                                  (let ((_%e123394123406%_
                                         (gx#syntax-e _%e123381123398%_)))
                                    (let ((_%hd123395123409%_
                                           (##car _%e123394123406%_))
                                          (_%tl123396123411%_
                                           (##cdr _%e123394123406%_)))
                                      (if (and (gx#identifier?
                                                _%hd123395123409%_)
                                               (gx#core-identifier=?
                                                _%hd123395123409%_
                                                '%#export))
                                          (if '#t
                                              (_%K123378%_
                                               _%rest123379%_
                                               (cons _%hd123377%_ _%r123380%_))
                                              (_%E123393123402%_))
                                          (_%E123393123402%_))))
                                  (_%E123393123402%_))))
                           (_%E123382123446%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123381123398%_)
                                  (let ((_%e123384123418%_
                                         (gx#syntax-e _%e123381123398%_)))
                                    (let ((_%hd123385123421%_
                                           (##car _%e123384123418%_))
                                          (_%tl123386123423%_
                                           (##cdr _%e123384123418%_)))
                                      (if (and (gx#identifier?
                                                _%hd123385123421%_)
                                               (gx#core-identifier=?
                                                _%hd123385123421%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123386123423%_)
                                              (let ((_%e123387123426%_
                                                     (gx#syntax-e
                                                      _%tl123386123423%_)))
                                                (let ((_%hd123388123429%_
                                                       (##car _%e123387123426%_))
                                                      (_%tl123389123431%_
                                                       (##cdr _%e123387123426%_)))
                                                  (let ((_%hd-bind123434%_
                                                         _%hd123388123429%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123389123431%_)
                                                        (let ((_%e123390123436%_
                                                               (gx#syntax-e
                                                                _%tl123389123431%_)))
                                                          (let ((_%hd123391123439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123390123436%_))
                        (_%tl123392123441%_ (##cdr _%e123390123436%_)))
                    (let ((_%expr123444%_ _%hd123391123439%_))
                      (if (gx#stx-null? _%tl123392123441%_)
                          (if (gx#core-bind-values? _%hd-bind123434%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123434%_)
                                (_%K123378%_
                                 _%rest123379%_
                                 (cons _%hd123377%_ _%r123380%_)))
                              (_%E123383123414%_))
                          (_%E123383123414%_)))))
                (_%E123383123414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123383123414%_))
                                          (_%E123383123414%_))))
                                  (_%E123383123414%_)))))
                      (_%E123382123446%_))))
                 (_%expand-body123249%_
                  (lambda (_%rbody123251%_)
                    (let _%lp123253%_ ((_%rest123255%_ _%rbody123251%_)
                                       (_%body123256%_ '()))
                      (let* ((_%rest123257123265%_ _%rest123255%_)
                             (_%else123259123273%_ (lambda () _%body123256%_))
                             (_%K123261123365%_
                              (lambda (_%rest123276%_ _%hd123277%_)
                                (let* ((_%e123278123299%_ _%hd123277%_)
                                       (_%E123294123303%_
                                        (lambda ()
                                          (_%lp123253%_
                                           _%rest123276%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123277%_)
                                                 _%body123256%_))))
                                       (_%E123290123317%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123278123299%_)
                                              (let ((_%e123295123307%_
                                                     (gx#syntax-e
                                                      _%e123278123299%_)))
                                                (let ((_%hd123296123310%_
                                                       (##car _%e123295123307%_))
                                                      (_%tl123297123312%_
                                                       (##cdr _%e123295123307%_)))
                                                  (let ((_%form123315%_
                                                         _%hd123296123310%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123315%_
                                                         gx#special-form-binding?)
                                                        (_%lp123253%_
                                                         _%rest123276%_
                                                         (cons _%hd123277%_
                                                               _%body123256%_))
                                                        (_%E123294123303%_)))))
                                              (_%E123294123303%_))))
                                       (_%E123280123329%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123278123299%_)
                                              (let ((_%e123291123321%_
                                                     (gx#syntax-e
                                                      _%e123278123299%_)))
                                                (let ((_%hd123292123324%_
                                                       (##car _%e123291123321%_))
                                                      (_%tl123293123326%_
                                                       (##cdr _%e123291123321%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123292123324%_)
                                                           (gx#core-identifier=?
                                                            _%hd123292123324%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123253%_
                                                           _%rest123276%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123277%_)
                         _%body123256%_))
                  (_%E123290123317%_))
              (_%E123290123317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123290123317%_))))
                                       (_%E123279123361%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123278123299%_)
                                              (let ((_%e123281123333%_
                                                     (gx#syntax-e
                                                      _%e123278123299%_)))
                                                (let ((_%hd123282123336%_
                                                       (##car _%e123281123333%_))
                                                      (_%tl123283123338%_
                                                       (##cdr _%e123281123333%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123282123336%_)
                                                           (gx#core-identifier=?
                                                            _%hd123282123336%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123283123338%_)
                                                          (let ((_%e123284123341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123283123338%_)))
                    (let ((_%hd123285123344%_ (##car _%e123284123341%_))
                          (_%tl123286123346%_ (##cdr _%e123284123341%_)))
                      (let ((_%hd-bind123349%_ _%hd123285123344%_))
                        (if (gx#stx-pair? _%tl123286123346%_)
                            (let ((_%e123287123351%_
                                   (gx#syntax-e _%tl123286123346%_)))
                              (let ((_%hd123288123354%_
                                     (##car _%e123287123351%_))
                                    (_%tl123289123356%_
                                     (##cdr _%e123287123351%_)))
                                (let ((_%expr123359%_ _%hd123288123354%_))
                                  (if (gx#stx-null? _%tl123289123356%_)
                                      (if '#t
                                          (_%lp123253%_
                                           _%rest123276%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123349%_)
                                                   (gx#core-expand-expression
                                                    _%expr123359%_))
                                                  (gx#stx-source _%hd123277%_))
                                                 _%body123256%_))
                                          (_%E123280123329%_))
                                      (_%E123280123329%_)))))
                            (_%E123280123329%_)))))
                  (_%E123280123329%_))
              (_%E123280123329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123280123329%_)))))
                                  (_%E123279123361%_)))))
                        (if (##pair? _%rest123257123265%_)
                            (let ((_%hd123262123368%_
                                   (##car _%rest123257123265%_))
                                  (_%tl123263123370%_
                                   (##cdr _%rest123257123265%_)))
                              (let* ((_%hd123373%_ _%hd123262123368%_)
                                     (_%rest123375%_ _%tl123263123370%_))
                                (_%K123261123365%_
                                 _%rest123375%_
                                 _%hd123373%_)))
                            (_%else123259123273%_)))))))
          (_%expand-body123249%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123246%_)
            _%expand-special123248%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123087%_
               _%expanded?123088%_
               _%method123089%_
               _%current-phi123090%_
               _%expand1123091%_)
        (letrec ((_%K123093%_
                  (lambda (_%rest123213%_ _%r123214%_)
                    (let* ((_%e123215123222%_ _%rest123213%_)
                           (_%E123217123226%_ (lambda () _%r123214%_))
                           (_%E123216123242%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123215123222%_)
                                  (let ((_%e123218123230%_
                                         (gx#syntax-e _%e123215123222%_)))
                                    (let ((_%hd123219123233%_
                                           (##car _%e123218123230%_))
                                          (_%tl123220123235%_
                                           (##cdr _%e123218123230%_)))
                                      (let* ((_%hd123238%_ _%hd123219123233%_)
                                             (_%rest123240%_
                                              _%tl123220123235%_))
                                        (if '#t
                                            (_%step123094%_
                                             _%hd123238%_
                                             _%rest123240%_
                                             _%r123214%_)
                                            (_%E123217123226%_)))))
                                  (_%E123217123226%_)))))
                      (_%E123216123242%_))))
                 (_%step123094%_
                  (lambda (_%hd123127%_ _%rest123128%_ _%r123129%_)
                    (let* ((_%e123130123148%_ _%hd123127%_)
                           (_%E123143123152%_
                            (lambda ()
                              (if (_%expanded?123088%_ (gx#stx-e _%hd123127%_))
                                  (_%K123093%_
                                   _%rest123128%_
                                   (cons (gx#stx-e _%hd123127%_) _%r123129%_))
                                  (_%expand1123091%_
                                   _%hd123127%_
                                   _%K123093%_
                                   _%rest123128%_
                                   _%r123129%_))))
                           (_%E123139123168%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123130123148%_)
                                  (let ((_%e123144123156%_
                                         (gx#syntax-e _%e123130123148%_)))
                                    (let ((_%hd123145123159%_
                                           (##car _%e123144123156%_))
                                          (_%tl123146123161%_
                                           (##cdr _%e123144123156%_)))
                                      (let* ((_%macro123164%_
                                              _%hd123145123159%_)
                                             (_%body123166%_
                                              _%tl123146123161%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123164%_
                                             gx#syntax-binding?)
                                            (_%K123093%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123164%_)
                                                    _%hd123127%_
                                                    _%method123089%_)
                                                   _%rest123128%_)
                                             _%r123129%_)
                                            (_%E123143123152%_)))))
                                  (_%E123143123152%_))))
                           (_%E123132123182%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123130123148%_)
                                  (let ((_%e123140123172%_
                                         (gx#syntax-e _%e123130123148%_)))
                                    (let ((_%hd123141123175%_
                                           (##car _%e123140123172%_))
                                          (_%tl123142123177%_
                                           (##cdr _%e123140123172%_)))
                                      (if (eq? (gx#stx-e _%hd123141123175%_)
                                               'begin:)
                                          (let ((_%body123180%_
                                                 _%tl123142123177%_))
                                            (if '#t
                                                (_%K123093%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123128%_
                                                  _%body123180%_)
                                                 _%r123129%_)
                                                (_%E123139123168%_)))
                                          (_%E123139123168%_))))
                                  (_%E123139123168%_))))
                           (_%E123131123209%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123130123148%_)
                                  (let ((_%e123133123186%_
                                         (gx#syntax-e _%e123130123148%_)))
                                    (let ((_%hd123134123189%_
                                           (##car _%e123133123186%_))
                                          (_%tl123135123191%_
                                           (##cdr _%e123133123186%_)))
                                      (if (eq? (gx#stx-e _%hd123134123189%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123135123191%_)
                                              (let ((_%e123136123194%_
                                                     (gx#syntax-e
                                                      _%tl123135123191%_)))
                                                (let ((_%hd123137123197%_
                                                       (##car _%e123136123194%_))
                                                      (_%tl123138123199%_
                                                       (##cdr _%e123136123194%_)))
                                                  (let* ((_%dphi123202%_
                                                          _%hd123137123197%_)
                                                         (_%body123204%_
                                                          _%tl123138123199%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123202%_)
                                                        (let ((_%rbody123207%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123093%_ _%body123204%_ '()))
                        _%current-phi123090%_
                        (fx+ (gx#stx-e _%dphi123202%_)
                             (_%current-phi123090%_)))))
                  (_%K123093%_
                   _%rest123128%_
                   (__foldr1 cons _%r123129%_ _%rbody123207%_)))
                (_%E123132123182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123132123182%_))
                                          (_%E123132123182%_))))
                                  (_%E123132123182%_)))))
                      (_%E123131123209%_)))))
          (let* ((_%e123095123102%_ _%stx123087%_)
                 (_%E123097123106%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123095123102%_)))
                 (_%E123096123123%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123095123102%_)
                        (let ((_%e123098123110%_
                               (gx#syntax-e _%e123095123102%_)))
                          (let ((_%hd123099123113%_ (##car _%e123098123110%_))
                                (_%tl123100123115%_ (##cdr _%e123098123110%_)))
                            (let ((_%body123118%_ _%tl123100123115%_))
                              (if '#t
                                  (if (_%current-phi123090%_)
                                      (let () (_%K123093%_ _%body123118%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K123093%_ _%body123118%_ '()))
                                         _%current-phi123090%_
                                         (gx#current-expander-phi))))
                                  (_%E123097123106%_)))))
                        (_%E123097123106%_)))))
            (_%E123096123123%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122741%_ _%internal-expand?122742%_)
        (letrec ((_%expand1122744%_
                  (lambda (_%hd123059%_ _%K123060%_ _%rest123061%_ _%r123062%_)
                    (if (gx#core-bound-module? _%hd123059%_)
                        (let ()
                          (_%import1122745%_
                           (gx#syntax-local-e__0 _%hd123059%_)
                           _%K123060%_
                           _%rest123061%_
                           _%r123062%_))
                        (if (gx#core-library-module-path? _%hd123059%_)
                            (let ()
                              (_%import1122745%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd123059%_))
                               _%K123060%_
                               _%rest123061%_
                               _%r123062%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd123059%_)
                                (let ()
                                  (_%import1122745%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd123059%_))
                                   _%K123060%_
                                   _%rest123061%_
                                   _%r123062%_))
                                (let ((_%e123068%_ (gx#stx-e _%hd123059%_)))
                                  (if (pair? _%e123068%_)
                                      (let ((_%$e123071%_
                                             (gx#stx-e (car _%e123068%_))))
                                        (if (eq? 'spec: _%$e123071%_)
                                            (_%import-spec122748%_
                                             _%hd123059%_
                                             _%K123060%_
                                             _%rest123061%_
                                             _%r123062%_)
                                            (if (eq? 'in: _%$e123071%_)
                                                (_%import-submodule122746%_
                                                 _%hd123059%_
                                                 _%K123060%_
                                                 _%rest123061%_
                                                 _%r123062%_)
                                                (if (eq? 'runtime:
                                                         _%$e123071%_)
                                                    (_%import-runtime122747%_
                                                     _%hd123059%_
                                                     _%K123060%_
                                                     _%rest123061%_
                                                     _%r123062%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122741%_
                                                     _%hd123059%_)))))
                                      (if (string? _%e123068%_)
                                          (let ()
                                            (_%import1122745%_
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__%
                                               _%hd123059%_
                                               (gx#stx-source _%stx122741%_)))
                                             _%K123060%_
                                             _%rest123061%_
                                             _%r123062%_))
                                          (if (##structure-instance-of?
                                               _%e123068%_
                                               'gx#module-context::t)
                                              (let ()
                                                (_%K123060%_
                                                 _%rest123061%_
                                                 (cons _%e123068%_
                                                       _%r123062%_)))
                                              (let ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _%stx122741%_
                                                 _%hd123059%_)))))))))))
                 (_%import1122745%_
                  (lambda (_%ctx123048%_
                           _%K123049%_
                           _%rest123050%_
                           _%r123051%_)
                    (let ((_%dphi123053%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123049%_
                       _%rest123050%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123048%_
                              _%dphi123053%_
                              (map (lambda (_%g123054123056%_)
                                     (gx#core-module-export->import__%
                                      _%g123054123056%_
                                      '#f
                                      _%dphi123053%_))
                                   (##unchecked-structure-ref
                                    _%ctx123048%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123051%_)))))
                 (_%import-submodule122746%_
                  (lambda (_%hd123015%_ _%K123016%_ _%rest123017%_ _%r123018%_)
                    (let* ((_%e123019123026%_ _%hd123015%_)
                           (_%E123021123030%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123019123026%_)))
                           (_%E123020123044%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123019123026%_)
                                  (let ((_%e123022123034%_
                                         (gx#syntax-e _%e123019123026%_)))
                                    (let ((_%hd123023123037%_
                                           (##car _%e123022123034%_))
                                          (_%tl123024123039%_
                                           (##cdr _%e123022123034%_)))
                                      (let ((_%spath123042%_
                                             _%tl123024123039%_))
                                        (if '#t
                                            (_%import1122745%_
                                             (_%import-spec-source122749%_
                                              _%spath123042%_)
                                             _%K123016%_
                                             _%rest123017%_
                                             _%r123018%_)
                                            (_%E123021123030%_)))))
                                  (_%E123021123030%_)))))
                      (_%E123020123044%_))))
                 (_%import-runtime122747%_
                  (lambda (_%hd122982%_ _%K122983%_ _%rest122984%_ _%r122985%_)
                    (let* ((_%e122986122993%_ _%hd122982%_)
                           (_%E122988122997%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122986122993%_)))
                           (_%E122987123011%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122986122993%_)
                                  (let ((_%e122989123001%_
                                         (gx#syntax-e _%e122986122993%_)))
                                    (let ((_%hd122990123004%_
                                           (##car _%e122989123001%_))
                                          (_%tl122991123006%_
                                           (##cdr _%e122989123001%_)))
                                      (let ((_%spath123009%_
                                             _%tl122991123006%_))
                                        (if '#t
                                            (_%K122983%_
                                             _%rest122984%_
                                             (cons (_%import-spec-source122749%_
                                                    _%spath123009%_)
                                                   _%r122985%_))
                                            (_%E122988122997%_)))))
                                  (_%E122988122997%_)))))
                      (_%E122987123011%_))))
                 (_%import-spec122748%_
                  (lambda (_%hd122820%_ _%K122821%_ _%rest122822%_ _%r122823%_)
                    (let* ((_%e122824122841%_ _%hd122820%_)
                           (_%E122833122845%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122824122841%_)))
                           (_%E122826122956%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122824122841%_)
                                  (let ((_%e122834122849%_
                                         (gx#syntax-e _%e122824122841%_)))
                                    (let ((_%hd122835122852%_
                                           (##car _%e122834122849%_))
                                          (_%tl122836122854%_
                                           (##cdr _%e122834122849%_)))
                                      (if (gx#stx-pair? _%tl122836122854%_)
                                          (let ((_%e122837122857%_
                                                 (gx#syntax-e
                                                  _%tl122836122854%_)))
                                            (let ((_%hd122838122860%_
                                                   (##car _%e122837122857%_))
                                                  (_%tl122839122862%_
                                                   (##cdr _%e122837122857%_)))
                                              (let* ((_%path122865%_
                                                      _%hd122838122860%_)
                                                     (_%specs122867%_
                                                      _%tl122839122862%_))
                                                (if '#t
                                                    (let ((_%src-ctx122869%_
                                                           (_%import-spec-source122749%_
                                                            _%path122865%_))
                                                          (_%exports122870%_
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
                                                          (_%specs122871%_
                                                           (gx#syntax->list
                                                            _%specs122867%_)))
                                                      (for-each
                                                       (lambda (_%out122873%_)
                                                         (hash-put!
                                                          _%exports122870%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122873%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122873%_ '4 '#f '#f))
                  _%out122873%_))
               (##unchecked-structure-ref _%src-ctx122869%_ '9 '#f '#f))
              (_%K122821%_
               _%rest122822%_
               (__foldl1
                (lambda (_%spec122875%_ _%r122876%_)
                  (let* ((_%e122877122893%_ _%spec122875%_)
                         (_%E122879122897%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122877122893%_)))
                         (_%E122878122952%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122877122893%_)
                                (let ((_%e122880122901%_
                                       (gx#syntax-e _%e122877122893%_)))
                                  (let ((_%hd122881122904%_
                                         (##car _%e122880122901%_))
                                        (_%tl122882122906%_
                                         (##cdr _%e122880122901%_)))
                                    (let ((_%phi122909%_ _%hd122881122904%_))
                                      (if (gx#stx-pair? _%tl122882122906%_)
                                          (let ((_%e122883122911%_
                                                 (gx#syntax-e
                                                  _%tl122882122906%_)))
                                            (let ((_%hd122884122914%_
                                                   (##car _%e122883122911%_))
                                                  (_%tl122885122916%_
                                                   (##cdr _%e122883122911%_)))
                                              (let ((_%name122919%_
                                                     _%hd122884122914%_))
                                                (if (gx#stx-pair?
                                                     _%tl122885122916%_)
                                                    (let ((_%e122886122921%_
                                                           (gx#syntax-e
                                                            _%tl122885122916%_)))
                                                      (let ((_%hd122887122924%_
                                                             (##car _%e122886122921%_))
                                                            (_%tl122888122926%_
                                                             (##cdr _%e122886122921%_)))
                                                        (let ((_%src-phi122929%_
                                                               _%hd122887122924%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122888122926%_)
                                                              (let ((_%e122889122931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122888122926%_)))
                        (let ((_%hd122890122934%_ (##car _%e122889122931%_))
                              (_%tl122891122936%_ (##cdr _%e122889122931%_)))
                          (let ((_%src-name122939%_ _%hd122890122934%_))
                            (if (gx#stx-null? _%tl122891122936%_)
                                (if (and (gx#stx-fixnum? _%src-phi122929%_)
                                         (gx#identifier? _%src-name122939%_)
                                         (gx#stx-fixnum? _%phi122909%_)
                                         (gx#identifier? _%name122919%_))
                                    (let ((_%src-phi122941%_
                                           (gx#stx-e _%src-phi122929%_))
                                          (_%src-name122942%_
                                           (gx#core-identifier-key
                                            _%src-name122939%_))
                                          (_%phi122943%_
                                           (gx#stx-e _%phi122909%_))
                                          (_%name122944%_
                                           (gx#core-identifier-key
                                            _%name122919%_)))
                                      (let ((_%$e122946%_
                                             (hash-get
                                              _%exports122870%_
                                              (cons _%src-phi122941%_
                                                    _%src-name122942%_))))
                                        (if _%$e122946%_
                                            ((lambda (_%out122949%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122949%_
                                                      _%name122944%_
                                                      (fx- _%phi122943%_
                                                           _%src-phi122941%_))
                                                     _%r122876%_))
                                             _%$e122946%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122741%_
                                               _%hd122820%_)))))
                                    (_%E122879122897%_))
                                (_%E122879122897%_)))))
                      (_%E122879122897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122879122897%_)))))
                                          (_%E122879122897%_)))))
                                (_%E122879122897%_)))))
                    (_%E122878122952%_)))
                _%r122823%_
                _%specs122871%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122833122845%_)))))
                                          (_%E122833122845%_))))
                                  (_%E122833122845%_))))
                           (_%E122825122978%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122824122841%_)
                                  (let ((_%e122827122960%_
                                         (gx#syntax-e _%e122824122841%_)))
                                    (let ((_%hd122828122963%_
                                           (##car _%e122827122960%_))
                                          (_%tl122829122965%_
                                           (##cdr _%e122827122960%_)))
                                      (if (gx#stx-pair? _%tl122829122965%_)
                                          (let ((_%e122830122968%_
                                                 (gx#syntax-e
                                                  _%tl122829122965%_)))
                                            (let ((_%hd122831122971%_
                                                   (##car _%e122830122968%_))
                                                  (_%tl122832122973%_
                                                   (##cdr _%e122830122968%_)))
                                              (let ((_%path122976%_
                                                     _%hd122831122971%_))
                                                (if (gx#stx-null?
                                                     _%tl122832122973%_)
                                                    (if '#t
                                                        (_%K122821%_
                                                         _%rest122822%_
                                                         (cons (_%import-spec-source122749%_
                                                                _%path122976%_)
                                                               _%r122823%_))
                                                        (_%E122826122956%_))
                                                    (_%E122826122956%_)))))
                                          (_%E122826122956%_))))
                                  (_%E122826122956%_)))))
                      (_%E122825122978%_))))
                 (_%import-spec-source122749%_
                  (lambda (_%spath122818%_)
                    (gx#core-import-nested-module
                     _%spath122818%_
                     _%stx122741%_)))
                 (_%import!122750%_
                  (lambda (_%rbody122763%_)
                    (letrec* ((_%current-ctx122765%_
                               (gx#current-expander-context))
                              (_%deps122766%_ (make-hash-table-eq))
                              (_%bind!122767%_
                               (lambda (_%hd122816%_)
                                 (gx#core-bind-import!__1
                                  _%hd122816%_
                                  _%current-ctx122765%_))))
                      (let _%lp122769%_ ((_%rest122771%_ _%rbody122763%_)
                                         (_%body122772%_ '()))
                        (let* ((_%rest122773122781%_ _%rest122771%_)
                               (_%else122775122792%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122765%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122765%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122765%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122772%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122789%_ _%_122790%_)
                                     (gx#eval-module _%ctx122789%_))
                                   _%deps122766%_)
                                  _%body122772%_))
                               (_%K122777122804%_
                                (lambda (_%rest122795%_ _%hd122796%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122796%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122767%_ _%hd122796%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122796%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122796%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122766%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122796%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122796%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122767%_
                                             (##unchecked-structure-ref
                                              _%hd122796%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122796%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122766%_
                                                 (##unchecked-structure-ref
                                                  _%hd122796%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122800%_
                                                 (##structure-instance-of?
                                                  _%hd122796%_
                                                  'gx#module-context::t)))
                                            (if _%$e122800%_
                                                _%$e122800%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122741%_
                                                   _%hd122796%_))))))
                                  (_%lp122769%_
                                   _%rest122795%_
                                   (cons _%hd122796%_ _%body122772%_)))))
                          (if (##pair? _%rest122773122781%_)
                              (let ((_%hd122778122807%_
                                     (##car _%rest122773122781%_))
                                    (_%tl122779122809%_
                                     (##cdr _%rest122773122781%_)))
                                (let* ((_%hd122812%_ _%hd122778122807%_)
                                       (_%rest122814%_ _%tl122779122809%_))
                                  (_%K122777122804%_
                                   _%rest122814%_
                                   _%hd122812%_)))
                              (_%else122775122792%_)))))))
                 (_%expanded-import?122751%_
                  (lambda (_%e122755%_)
                    (let ((_%$e122757%_
                           (##structure-direct-instance-of?
                            _%e122755%_
                            'gx#import-set::t)))
                      (if _%$e122757%_
                          _%$e122757%_
                          (let ((_%$e122760%_
                                 (##structure-direct-instance-of?
                                  _%e122755%_
                                  'gx#module-import::t)))
                            (if _%$e122760%_
                                _%$e122760%_
                                (##structure-instance-of?
                                 _%e122755%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122753%_
                 (gx#core-expand-import/export
                  _%stx122741%_
                  _%expanded-import?122751%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122744%_)))
            (if _%internal-expand?122742%_
                (reverse _%rbody122753%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122750%_ _%rbody122753%_))
                 (gx#stx-source _%stx122741%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123080%_)
        (let ((_%internal-expand?123082%_ '#f))
          (gx#core-expand-import%__%
           _%stx123080%_
           _%internal-expand?123082%_))))
    (define gx#core-expand-import%
      (lambda _g125729_
        (let ((_g125728_ (##length _g125729_)))
          (cond ((##fx= _g125728_ 1)
                 (apply (lambda (_%stx123080%_)
                          (gx#core-expand-import%__0 _%stx123080%_))
                        _g125729_))
                ((##fx= _g125728_ 2)
                 (apply (lambda (_%stx123084%_ _%internal-expand?123085%_)
                          (gx#core-expand-import%__%
                           _%stx123084%_
                           _%internal-expand?123085%_))
                        _g125729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125729_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122668%_ _%where122669%_)
        (let* ((_%e122670122677%_ _%spath122668%_)
               (_%E122672122681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122670122677%_)))
               (_%E122671122736%_
                (lambda ()
                  (if (gx#stx-pair? _%e122670122677%_)
                      (let ((_%e122673122685%_
                             (gx#syntax-e _%e122670122677%_)))
                        (let ((_%hd122674122688%_ (##car _%e122673122685%_))
                              (_%tl122675122690%_ (##cdr _%e122673122685%_)))
                          (let* ((_%origin122693%_ _%hd122674122688%_)
                                 (_%sub122695%_ _%tl122675122690%_))
                            (if '#t
                                (let ((_%origin-ctx122697%_
                                       (if (gx#stx-false? _%origin122693%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122693%_))))
                                  (let _%lp122699%_ ((_%rest122701%_
                                                      _%sub122695%_)
                                                     (_%ctx122702%_
                                                      _%origin-ctx122697%_))
                                    (let* ((_%e122703122710%_ _%rest122701%_)
                                           (_%E122705122714%_
                                            (lambda () _%ctx122702%_))
                                           (_%E122704122732%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122703122710%_)
                                                  (let ((_%e122706122718%_
                                                         (gx#syntax-e
                                                          _%e122703122710%_)))
                                                    (let ((_%hd122707122721%_
                                                           (##car _%e122706122718%_))
                                                          (_%tl122708122723%_
                                                           (##cdr _%e122706122718%_)))
                                                      (let* ((_%id122726%_
                                                              _%hd122707122721%_)
                                                             (_%rest122728%_
                                                              _%tl122708122723%_))
                                                        (if '#t
                                                            (let ((_%bind122730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122726%_
                            '0
                            _%ctx122702%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122730%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122730%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122669%_
                           _%spath122668%_
                           _%id122726%_))
                      (_%lp122699%_
                       _%rest122728%_
                       (##unchecked-structure-ref _%bind122730%_ '4 '#f '#f)))
                    (_%E122705122714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122705122714%_)))))
                                      (_%E122704122732%_))))
                                (_%E122672122681%_)))))
                      (_%E122672122681%_)))))
          (_%E122671122736%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122666%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122666%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122160%_ _%internal-expand?122161%_)
        (letrec* ((_%make-export__125657125658%_
                   (lambda (_%bind122614%_
                            _%phi122615%_
                            _%ctx122616%_
                            _%name122617%_)
                     (let* ((_%key122619%_
                             (##unchecked-structure-ref
                              _%bind122614%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122621%_
                             (if _%name122617%_
                                 (gx#core-identifier-key _%name122617%_)
                                 _%key122619%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122616%_
                        _%key122619%_
                        _%phi122615%_
                        _%export-key122621%_
                        (let ((_%$e122624%_
                               (##structure-instance-of?
                                _%bind122614%_
                                'gx#extern-binding::t)))
                          (if _%$e122624%_
                              _%$e122624%_
                              (##structure-direct-instance-of?
                               _%bind122614%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125659125662%_
                   (lambda (_%bind122630%_)
                     (let* ((_%phi122632%_ (gx#current-export-expander-phi))
                            (_%ctx122634%_ (gx#current-expander-context))
                            (_%name122636%_ '#f))
                       (_%make-export__125657125658%_
                        _%bind122630%_
                        _%phi122632%_
                        _%ctx122634%_
                        _%name122636%_))))
                  (_%make-export__1__125660125663%_
                   (lambda (_%bind122638%_ _%phi122639%_)
                     (let* ((_%ctx122641%_ (gx#current-expander-context))
                            (_%name122643%_ '#f))
                       (_%make-export__125657125658%_
                        _%bind122638%_
                        _%phi122639%_
                        _%ctx122641%_
                        _%name122643%_))))
                  (_%make-export__2__125661125664%_
                   (lambda (_%bind122645%_ _%phi122646%_ _%ctx122647%_)
                     (let ((_%name122649%_ '#f))
                       (_%make-export__125657125658%_
                        _%bind122645%_
                        _%phi122646%_
                        _%ctx122647%_
                        _%name122649%_))))
                  (_%make-export122163%_
                   (lambda _g125731_
                     (let ((_g125730_ (##length _g125731_)))
                       (cond ((##fx= _g125730_ 1)
                              (apply (lambda (_%bind122630%_)
                                       (_%make-export__0__125659125662%_
                                        _%bind122630%_))
                                     _g125731_))
                             ((##fx= _g125730_ 2)
                              (apply (lambda (_%bind122638%_ _%phi122639%_)
                                       (_%make-export__1__125660125663%_
                                        _%bind122638%_
                                        _%phi122639%_))
                                     _g125731_))
                             ((##fx= _g125730_ 3)
                              (apply (lambda (_%bind122645%_
                                              _%phi122646%_
                                              _%ctx122647%_)
                                       (_%make-export__2__125661125664%_
                                        _%bind122645%_
                                        _%phi122646%_
                                        _%ctx122647%_))
                                     _g125731_))
                             ((##fx= _g125730_ 4)
                              (apply (lambda (_%bind122651%_
                                              _%phi122652%_
                                              _%ctx122653%_
                                              _%name122654%_)
                                       (_%make-export__125657125658%_
                                        _%bind122651%_
                                        _%phi122652%_
                                        _%ctx122653%_
                                        _%name122654%_))
                                     _g125731_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125731_))))))
                  (_%expand1122164%_
                   (lambda (_%hd122319%_
                            _%K122320%_
                            _%rest122321%_
                            _%r122322%_)
                     (let* ((_%e122323122355%_ _%hd122319%_)
                            (_%E122350122359%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122160%_
                                _%hd122319%_)))
                            (_%E122340122443%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122323122355%_)
                                   (let ((_%e122351122363%_
                                          (gx#syntax-e _%e122323122355%_)))
                                     (let ((_%hd122352122366%_
                                            (##car _%e122351122363%_))
                                           (_%tl122353122368%_
                                            (##cdr _%e122351122363%_)))
                                       (if (eq? (gx#stx-e _%hd122352122366%_)
                                                'import:)
                                           (let ((_%in122371%_
                                                  _%tl122353122368%_))
                                             (if (gx#stx-list? _%in122371%_)
                                                 (let _%lp122373%_ ((_%in-rest122375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122371%_)
                            (_%r122376%_ _%r122322%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122377122384%_
                                                           _%in-rest122375%_)
                                                          (_%E122379122388%_
                                                           (lambda ()
                                                             (_%K122320%_
                                                              _%rest122321%_
                                                              _%r122376%_)))
                                                          (_%E122378122439%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122377122384%_)
                         (let ((_%e122380122392%_
                                (gx#syntax-e _%e122377122384%_)))
                           (let ((_%hd122381122395%_ (##car _%e122380122392%_))
                                 (_%tl122382122397%_
                                  (##cdr _%e122380122392%_)))
                             (let* ((_%hd122400%_ _%hd122381122395%_)
                                    (_%in-rest122402%_ _%tl122382122397%_))
                               (if '#t
                                   (let ((_%src122437%_
                                          (if (gx#core-bound-module?
                                               _%hd122400%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd122400%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd122400%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd122400%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122400%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd122400%_)))
                                                      (if (gx#stx-string?
                                                           _%hd122400%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd122400%_
                                                              (gx#stx-source
                                                               _%stx122160%_))))
                                                          (let ()
                                                            (let* ((_%e122408122415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122400%_)
                           (_%E122410122419%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx122160%_
                               _%hd122400%_)))
                           (_%E122409122433%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122408122415%_)
                                  (let ((_%e122411122423%_
                                         (gx#syntax-e _%e122408122415%_)))
                                    (let ((_%hd122412122426%_
                                           (##car _%e122411122423%_))
                                          (_%tl122413122428%_
                                           (##cdr _%e122411122423%_)))
                                      (if (eq? (gx#stx-e _%hd122412122426%_)
                                               'in:)
                                          (let ((_%spath122431%_
                                                 _%tl122413122428%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath122431%_
                                                 _%stx122160%_)
                                                (_%E122410122419%_)))
                                          (_%E122410122419%_))))
                                  (_%E122410122419%_)))))
                      (_%E122409122433%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122373%_
                                      _%in-rest122402%_
                                      (_%export-imports122165%_
                                       _%src122437%_
                                       _%r122376%_)))
                                   (_%E122379122388%_)))))
                         (_%E122379122388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122378122439%_)))
                                                 (_%E122350122359%_)))
                                           (_%E122350122359%_))))
                                   (_%E122350122359%_))))
                            (_%E122327122483%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122323122355%_)
                                   (let ((_%e122341122447%_
                                          (gx#syntax-e _%e122323122355%_)))
                                     (let ((_%hd122342122450%_
                                            (##car _%e122341122447%_))
                                           (_%tl122343122452%_
                                            (##cdr _%e122341122447%_)))
                                       (if (eq? (gx#stx-e _%hd122342122450%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122343122452%_)
                                               (let ((_%e122344122455%_
                                                      (gx#syntax-e
                                                       _%tl122343122452%_)))
                                                 (let ((_%hd122345122458%_
                                                        (##car _%e122344122455%_))
                                                       (_%tl122346122460%_
                                                        (##cdr _%e122344122455%_)))
                                                   (let ((_%id122463%_
                                                          _%hd122345122458%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122346122460%_)
                                                         (let ((_%e122347122465%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122346122460%_)))
                   (let ((_%hd122348122468%_ (##car _%e122347122465%_))
                         (_%tl122349122470%_ (##cdr _%e122347122465%_)))
                     (let ((_%name122473%_ _%hd122348122468%_))
                       (if (gx#stx-null? _%tl122349122470%_)
                           (if '#t
                               (let* ((_%phi122475%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122477%_
                                       (gx#core-resolve-identifier__1
                                        _%id122463%_
                                        _%phi122475%_)))
                                 (if _%$e122477%_
                                     ((lambda (_%bind122480%_)
                                        (_%K122320%_
                                         _%rest122321%_
                                         (cons (_%make-export__125657125658%_
                                                _%bind122480%_
                                                _%phi122475%_
                                                (gx#current-expander-context)
                                                _%name122473%_)
                                               _%r122322%_)))
                                      _%$e122477%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx122160%_
                                        _%hd122319%_
                                        _%id122463%_))))
                               (_%E122340122443%_))
                           (_%E122340122443%_)))))
                 (_%E122340122443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122340122443%_))
                                           (_%E122340122443%_))))
                                   (_%E122340122443%_))))
                            (_%E122326122533%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122323122355%_)
                                   (let ((_%e122328122487%_
                                          (gx#syntax-e _%e122323122355%_)))
                                     (let ((_%hd122329122490%_
                                            (##car _%e122328122487%_))
                                           (_%tl122330122492%_
                                            (##cdr _%e122328122487%_)))
                                       (if (eq? (gx#stx-e _%hd122329122490%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122330122492%_)
                                               (let ((_%e122331122495%_
                                                      (gx#syntax-e
                                                       _%tl122330122492%_)))
                                                 (let ((_%hd122332122498%_
                                                        (##car _%e122331122495%_))
                                                       (_%tl122333122500%_
                                                        (##cdr _%e122331122495%_)))
                                                   (let ((_%phi122503%_
                                                          _%hd122332122498%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122333122500%_)
                                                         (let ((_%e122334122505%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122333122500%_)))
                   (let ((_%hd122335122508%_ (##car _%e122334122505%_))
                         (_%tl122336122510%_ (##cdr _%e122334122505%_)))
                     (let ((_%id122513%_ _%hd122335122508%_))
                       (if (gx#stx-pair? _%tl122336122510%_)
                           (let ((_%e122337122515%_
                                  (gx#syntax-e _%tl122336122510%_)))
                             (let ((_%hd122338122518%_
                                    (##car _%e122337122515%_))
                                   (_%tl122339122520%_
                                    (##cdr _%e122337122515%_)))
                               (let ((_%name122523%_ _%hd122338122518%_))
                                 (if (gx#stx-null? _%tl122339122520%_)
                                     (if (and (gx#stx-fixnum? _%phi122503%_)
                                              (gx#identifier? _%id122513%_)
                                              (gx#identifier? _%name122523%_))
                                         (let* ((_%phi122525%_
                                                 (gx#stx-e _%phi122503%_))
                                                (_%$e122527%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122513%_
                                                  _%phi122525%_)))
                                           (if _%$e122527%_
                                               ((lambda (_%bind122530%_)
                                                  (_%K122320%_
                                                   _%rest122321%_
                                                   (cons (_%make-export__125657125658%_
                                                          _%bind122530%_
                                                          _%phi122525%_
                                                          (gx#current-expander-context)
                                                          _%name122523%_)
                                                         _%r122322%_)))
                                                _%$e122527%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx122160%_
                                                  _%hd122319%_
                                                  _%id122513%_))))
                                         (_%E122327122483%_))
                                     (_%E122327122483%_)))))
                           (_%E122327122483%_)))))
                 (_%E122327122483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122327122483%_))
                                           (_%E122327122483%_))))
                                   (_%E122327122483%_))))
                            (_%E122325122545%_
                             (lambda ()
                               (let ((_%id122537%_ _%e122323122355%_))
                                 (if (gx#identifier? _%id122537%_)
                                     (let ((_%$e122539%_
                                            (gx#core-resolve-identifier__1
                                             _%id122537%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122539%_
                                           ((lambda (_%bind122542%_)
                                              (_%K122320%_
                                               _%rest122321%_
                                               (cons (_%make-export__0__125659125662%_
                                                      _%bind122542%_)
                                                     _%r122322%_)))
                                            _%$e122539%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx122160%_
                                              _%hd122319%_))))
                                     (_%E122326122533%_)))))
                            (_%E122324122609%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122323122355%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122549%_
                                               (gx#current-expander-context))
                                              (_%current-phi122551%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122553%_
                                               (gx#core-context-shift
                                                _%current-ctx122549%_
                                                _%current-phi122551%_))
                                              (_%phi-bind122555%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122553%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122558%_ ((_%bind-rest122560%_
                                                             _%phi-bind122555%_)
                                                            (_%set122561%_
                                                             '()))
                                           (let* ((_%bind-rest122562122572%_
                                                   _%bind-rest122560%_)
                                                  (_%else122564122580%_
                                                   (lambda ()
                                                     (_%K122320%_
                                                      _%rest122321%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122551%_
                                                             _%set122561%_)
                                                            _%r122322%_))))
                                                  (_%K122566122590%_
                                                   (lambda (_%bind-rest122583%_
                                                            _%bind122584%_
                                                            _%key122585%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122584%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122584%_))
                                                         (_%lp122558%_
                                                          _%bind-rest122583%_
                                                          _%set122561%_)
                                                         (_%lp122558%_
                                                          _%bind-rest122583%_
                                                          (cons (_%make-export__2__125661125664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122584%_
                         _%current-phi122551%_
                         _%current-ctx122549%_)
                        _%set122561%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122562122572%_)
                                                 (let ((_%hd122567122593%_
                                                        (##car _%bind-rest122562122572%_))
                                                       (_%tl122568122595%_
                                                        (##cdr _%bind-rest122562122572%_)))
                                                   (if (##pair? _%hd122567122593%_)
                                                       (let ((_%hd122569122598%_
                                                              (##car _%hd122567122593%_))
                                                             (_%tl122570122600%_
                                                              (##cdr _%hd122567122593%_)))
                                                         (let* ((_%key122603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122569122598%_)
                        (_%bind122605%_ _%tl122570122600%_)
                        (_%bind-rest122607%_ _%tl122568122595%_))
                   (_%K122566122590%_
                    _%bind-rest122607%_
                    _%bind122605%_
                    _%key122603%_)))
               (_%else122564122580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122564122580%_)))))
                                       (_%E122325122545%_))
                                   (_%E122325122545%_)))))
                       (_%E122324122609%_))))
                  (_%export-imports122165%_
                   (lambda (_%src122195%_ _%r122196%_)
                     (letrec* ((_%current-ctx122198%_
                                (gx#current-expander-context))
                               (_%current-phi122199%_
                                (gx#current-export-expander-phi))
                               (_%import->export122200%_
                                (lambda (_%in122281%_)
                                  (let* ((_%in122282122290%_ _%in122281%_)
                                         (_%E122284122294%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122282122290%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122285122301%_
                                          (lambda (_%phi122297%_
                                                   _%key122298%_
                                                   _%out122299%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122198%_
                                             _%key122298%_
                                             _%phi122297%_
                                             _%key122298%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122282122290%_
                                         'gx#module-import::t)
                                        (let* ((_%e122286122304%_
                                                (##unchecked-structure-ref
                                                 _%in122282122290%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122307%_
                                                _%e122286122304%_)
                                               (_%e122287122309%_
                                                (##unchecked-structure-ref
                                                 _%in122282122290%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122312%_
                                                _%e122287122309%_)
                                               (_%e122288122314%_
                                                (##unchecked-structure-ref
                                                 _%in122282122290%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122317%_
                                                _%e122288122314%_))
                                          (_%K122285122301%_
                                           _%phi122317%_
                                           _%key122312%_
                                           _%out122307%_))
                                        (_%E122284122294%_)))))
                               (_%fold-e122201%_
                                (lambda (_%in122203%_ _%r122204%_)
                                  (let* ((_%in122205122219%_ _%in122203%_)
                                         (_%else122208122227%_
                                          (lambda () _%r122204%_)))
                                    (let ((_%K122214122263%_
                                           (lambda (_%phi122259%_
                                                    _%key122260%_
                                                    _%out122261%_)
                                             (if (and (fx= _%phi122259%_
                                                           _%current-phi122199%_)
                                                      (eq? _%src122195%_
                                                           (##unchecked-structure-ref
                                                            _%out122261%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122200%_
                                                        _%in122203%_)
                                                       _%r122204%_)
                                                 _%r122204%_)))
                                          (_%K122210122238%_
                                           (lambda (_%imports122231%_
                                                    _%phi122232%_
                                                    _%ctx122233%_)
                                             (if (and (fx= _%phi122232%_
                                                           _%current-phi122199%_)
                                                      (eq? _%src122195%_
                                                           _%ctx122233%_))
                                                 (__foldl1
                                                  (lambda (_%in122235%_
                                                           _%r122236%_)
                                                    (cons (_%import->export122200%_
                                                           _%in122235%_)
                                                          _%r122236%_))
                                                  _%r122204%_
                                                  _%imports122231%_)
                                                 _%r122204%_))))
                                      (let ((_%try-match122207122256%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122205122219%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122211122241%_
                                                           (##unchecked-structure-ref
                                                            _%in122205122219%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122212122246%_
                                                           (##unchecked-structure-ref
                                                            _%in122205122219%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122213122251%_
                                                           (##unchecked-structure-ref
                                                            _%in122205122219%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122244%_
                                                            _%e122211122241%_)
                                                           (_%phi122249%_
                                                            _%e122212122246%_)
                                                           (_%imports122254%_
                                                            _%e122213122251%_))
                                                       (_%K122210122238%_
                                                        _%imports122254%_
                                                        _%phi122249%_
                                                        _%ctx122244%_)))
                                                   (_%else122208122227%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122205122219%_
                                             'gx#module-import::t)
                                            (let* ((_%e122215122266%_
                                                    (##unchecked-structure-ref
                                                     _%in122205122219%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122216122271%_
                                                    (##unchecked-structure-ref
                                                     _%in122205122219%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122217122276%_
                                                    (##unchecked-structure-ref
                                                     _%in122205122219%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122269%_
                                                     _%e122215122266%_)
                                                    (_%key122274%_
                                                     _%e122216122271%_)
                                                    (_%phi122279%_
                                                     _%e122217122276%_))
                                                (_%K122214122263%_
                                                 _%phi122279%_
                                                 _%key122274%_
                                                 _%out122269%_)))
                                            (_%try-match122207122256%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122195%_
                              _%current-phi122199%_
                              (__foldl1
                               _%fold-e122201%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122198%_
                                '8
                                '#f
                                '#f)))
                             _%r122196%_))))
                  (_%export!122166%_
                   (lambda (_%rbody122182%_)
                     (letrec* ((_%current-ctx122184%_
                                (gx#current-expander-context))
                               (_%fold-e122185%_
                                (lambda (_%out122189%_ _%r122190%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122189%_
                                       'gx#module-export::t)
                                      (let () (cons _%out122189%_ _%r122190%_))
                                      (if (##structure-direct-instance-of?
                                           _%out122189%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r122190%_
                                             (##unchecked-structure-ref
                                              _%out122189%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r122190%_))))))
                       (let ((_%body122187%_ (reverse _%rbody122182%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122184%_
                          (__foldl1
                           _%fold-e122185%_
                           (##unchecked-structure-ref
                            _%current-ctx122184%_
                            '9
                            '#f
                            '#f)
                           _%body122187%_)
                          '9
                          '#f
                          '#f)
                         _%body122187%_))))
                  (_%expanded-export?122167%_
                   (lambda (_%e122177%_)
                     (let ((_%$e122179%_
                            (##structure-direct-instance-of?
                             _%e122177%_
                             'gx#module-export::t)))
                       (if _%$e122179%_
                           _%$e122179%_
                           (##structure-direct-instance-of?
                            _%e122177%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122161%_)
              (let ((_%rbody122173%_
                     (gx#core-expand-import/export
                      _%stx122160%_
                      _%expanded-export?122167%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122164%_)))
                (if _%internal-expand?122161%_
                    (reverse _%rbody122173%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122166%_ _%rbody122173%_))
                     (gx#stx-source _%stx122160%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx122160%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx122160%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122659%_)
        (let ((_%internal-expand?122661%_ '#f))
          (gx#core-expand-export%__%
           _%stx122659%_
           _%internal-expand?122661%_))))
    (define gx#core-expand-export%
      (lambda _g125733_
        (let ((_g125732_ (##length _g125733_)))
          (cond ((##fx= _g125732_ 1)
                 (apply (lambda (_%stx122659%_)
                          (gx#core-expand-export%__0 _%stx122659%_))
                        _g125733_))
                ((##fx= _g125732_ 2)
                 (apply (lambda (_%stx122663%_ _%internal-expand?122664%_)
                          (gx#core-expand-export%__%
                           _%stx122663%_
                           _%internal-expand?122664%_))
                        _g125733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125733_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122157%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122157%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122127%_)
        (let* ((_%e122128122135%_ _%stx122127%_)
               (_%E122130122139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122128122135%_)))
               (_%E122129122153%_
                (lambda ()
                  (if (gx#stx-pair? _%e122128122135%_)
                      (let ((_%e122131122143%_
                             (gx#syntax-e _%e122128122135%_)))
                        (let ((_%hd122132122146%_ (##car _%e122131122143%_))
                              (_%tl122133122148%_ (##cdr _%e122131122143%_)))
                          (let ((_%body122151%_ _%tl122133122148%_))
                            (if (gx#identifier-list? _%body122151%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122151%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122151%_))
                                   (gx#stx-source _%stx122127%_)))
                                (_%E122130122139%_)))))
                      (_%E122130122139%_)))))
          (_%E122129122153%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122093%_ _%private?122094%_ _%phi122095%_ _%ctx122096%_)
        (gx#core-bind-syntax!__%
         _%id122093%_
         ((if _%private?122094%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122093%_))
         _%private?122094%_
         _%phi122095%_
         _%ctx122096%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122101%_)
        (let* ((_%private?122103%_ '#f)
               (_%phi122105%_ (gx#current-expander-phi))
               (_%ctx122107%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122101%_
           _%private?122103%_
           _%phi122105%_
           _%ctx122107%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122109%_ _%private?122110%_)
        (let* ((_%phi122112%_ (gx#current-expander-phi))
               (_%ctx122114%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122109%_
           _%private?122110%_
           _%phi122112%_
           _%ctx122114%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122116%_ _%private?122117%_ _%phi122118%_)
        (let ((_%ctx122120%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122116%_
           _%private?122117%_
           _%phi122118%_
           _%ctx122120%_))))
    (define gx#core-bind-feature!
      (lambda _g125735_
        (let ((_g125734_ (##length _g125735_)))
          (cond ((##fx= _g125734_ 1)
                 (apply (lambda (_%id122101%_)
                          (gx#core-bind-feature!__0 _%id122101%_))
                        _g125735_))
                ((##fx= _g125734_ 2)
                 (apply (lambda (_%id122109%_ _%private?122110%_)
                          (gx#core-bind-feature!__1
                           _%id122109%_
                           _%private?122110%_))
                        _g125735_))
                ((##fx= _g125734_ 3)
                 (apply (lambda (_%id122116%_ _%private?122117%_ _%phi122118%_)
                          (gx#core-bind-feature!__2
                           _%id122116%_
                           _%private?122117%_
                           _%phi122118%_))
                        _g125735_))
                ((##fx= _g125734_ 4)
                 (apply (lambda (_%id122122%_
                                 _%private?122123%_
                                 _%phi122124%_
                                 _%ctx122125%_)
                          (gx#core-bind-feature!__%
                           _%id122122%_
                           _%private?122123%_
                           _%phi122124%_
                           _%ctx122125%_))
                        _g125735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125735_))))))))
